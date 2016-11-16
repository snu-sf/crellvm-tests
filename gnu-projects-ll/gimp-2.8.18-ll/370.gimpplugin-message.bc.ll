; ModuleID = './app/plug-in/gimpplugin-message.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GimpPlugIn = type { %struct._GimpObject, %struct._GimpPlugInManager*, i8*, i32, i8, i32, %struct._GIOChannel*, %struct._GIOChannel*, %struct._GIOChannel*, %struct._GIOChannel*, i32, [512 x i8], i32, %struct._GSList*, %struct._GMainLoop*, %struct._GimpPlugInProcFrame, %struct._GList*, %struct._GimpPlugInDef* }
%struct._GimpObject = type { %struct._GObject, %struct._GimpObjectPrivate* }
%struct._GObject = type { %struct._GTypeInstance, i32, %struct._GData* }
%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GData = type opaque
%struct._GimpObjectPrivate = type opaque
%struct._GimpPlugInManager = type { %struct._GimpObject, %struct._Gimp*, %struct._GSList*, i32, %struct._GSList*, %struct._GSList*, %struct._GSList*, %struct._GSList*, %struct._GSList*, %struct._GSList*, %struct._GSList*, %struct._GimpPlugIn*, %struct._GSList*, %struct._GSList*, %struct._GSList*, %struct._GimpPlugInShm*, %struct._GimpInterpreterDB*, %struct._GimpEnvironTable*, %struct._GimpPlugInDebug*, %struct._GList* }
%struct._Gimp = type { %struct._GimpObject, %struct._GimpCoreConfig*, %struct._GimpCoreConfig*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct._GimpGui, i32, i32, i32, %struct._GList*, i32, %struct._GimpParasiteList*, %struct._GimpContainer*, %struct._GimpPaintInfo*, %struct._GimpModuleDB*, i32, %struct._GimpPlugInManager*, %struct._GimpContainer*, i32, i32, %struct._GimpIdTable*, %struct._GimpIdTable*, %struct._GimpContainer*, i32, %struct._GList*, %struct._GimpBuffer*, %struct._GimpContainer*, %struct._GimpContainer*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpTagCache*, %struct._GimpPDB*, %struct._GimpContainer*, %struct._GimpToolInfo*, %struct._GimpContainer*, %struct._GimpContainer*, %struct._GimpTemplate*, %struct._GList*, %struct._GimpContext*, %struct._GimpContext* }
%struct._GimpCoreConfig = type opaque
%struct._GimpGui = type { void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*, %struct._GObject*, i32, i8*, i8*)*, void (%struct._Gimp*, %struct._GimpProgress*, i8*, i8*)*, i8* (%struct._Gimp*)*, i8* (%struct._Gimp*, i32, i32*)*, i32 (%struct._Gimp*)*, i8* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*, i32)*, i32 (%struct._GimpObject*)*, i32 (%struct._GimpObject*)*, %struct._GimpObject* (%struct._Gimp*, %struct._GimpImage*, i32, double)*, void (%struct._GimpObject*)*, void (%struct._Gimp*, %struct._GimpImage*, %struct._GimpImage*)*, %struct._GimpProgress* (%struct._Gimp*, %struct._GimpObject*)*, void (%struct._Gimp*, %struct._GimpProgress*)*, i32 (%struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GimpContainer*, i8*, i8*, i8*, %struct.__va_list_tag*)*, i32 (%struct._Gimp*, %struct._GimpContainer*, i8*, i8*, %struct.__va_list_tag*)*, i32 (%struct._Gimp*, %struct._GimpContainer*, i8*)*, i32 (%struct._Gimp*, i8*, i8*)*, void (%struct._Gimp*)* }
%struct._GimpProgress = type opaque
%struct._GimpImage = type opaque
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct._GimpParasiteList = type opaque
%struct._GimpPaintInfo = type opaque
%struct._GimpModuleDB = type opaque
%struct._GimpIdTable = type opaque
%struct._GimpBuffer = type opaque
%struct._GimpDataFactory = type opaque
%struct._GimpTagCache = type opaque
%struct._GimpPDB = type { %struct._GimpObject, %struct._Gimp*, %struct._GHashTable*, %struct._GHashTable* }
%struct._GHashTable = type opaque
%struct._GimpToolInfo = type opaque
%struct._GimpContainer = type opaque
%struct._GimpTemplate = type opaque
%struct._GimpContext = type opaque
%struct._GimpPlugInShm = type opaque
%struct._GimpInterpreterDB = type opaque
%struct._GimpEnvironTable = type opaque
%struct._GimpPlugInDebug = type opaque
%struct._GIOChannel = type { i32, %struct._GIOFuncs*, i8*, %struct._GIConv*, %struct._GIConv*, i8*, i32, i64, %struct._GString*, %struct._GString*, %struct._GString*, [6 x i8], i8, i8*, i8* }
%struct._GIOFuncs = type { i32 (%struct._GIOChannel*, i8*, i64, i64*, %struct._GError**)*, i32 (%struct._GIOChannel*, i8*, i64, i64*, %struct._GError**)*, i32 (%struct._GIOChannel*, i64, i32, %struct._GError**)*, i32 (%struct._GIOChannel*, %struct._GError**)*, %struct._GSource* (%struct._GIOChannel*, i32)*, void (%struct._GIOChannel*)*, i32 (%struct._GIOChannel*, i32, %struct._GError**)*, i32 (%struct._GIOChannel*)* }
%struct._GError = type { i32, i32, i8* }
%struct._GSource = type { i8*, %struct._GSourceCallbackFuncs*, %struct._GSourceFuncs*, i32, %struct._GMainContext*, i32, i32, i32, %struct._GSList*, %struct._GSource*, %struct._GSource*, i8*, %struct._GSourcePrivate* }
%struct._GSourceCallbackFuncs = type { void (i8*)*, void (i8*)*, void (i8*, %struct._GSource*, i32 (i8*)**, i8**)* }
%struct._GSourceFuncs = type { i32 (%struct._GSource*, i32*)*, i32 (%struct._GSource*)*, i32 (%struct._GSource*, i32 (i8*)*, i8*)*, void (%struct._GSource*)*, i32 (i8*)*, void ()* }
%struct._GMainContext = type opaque
%struct._GSourcePrivate = type opaque
%struct._GIConv = type opaque
%struct._GString = type { i8*, i64, i64 }
%struct._GSList = type { i8*, %struct._GSList* }
%struct._GMainLoop = type opaque
%struct._GimpPlugInProcFrame = type { i32, %struct._GimpContext*, %struct._GList*, %struct._GimpProcedure*, %struct._GMainLoop*, %struct._GValueArray*, %struct._GimpProgress*, i32, i64, i32, %struct._GList*, %struct._GList* }
%struct._GimpProcedure = type { %struct._GimpObject, i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, %struct._GParamSpec**, i32, %struct._GParamSpec**, %struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* }
%struct._GParamSpec = type { %struct._GTypeInstance, i8*, i32, i64, i64, i8*, i8*, %struct._GData*, i32, i32 }
%struct._GValueArray = type { i32, %struct._GValue*, i32 }
%struct._GValue = type { i64, [2 x %union.anon] }
%union.anon = type { i64 }
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct._GimpPlugInDef = type { %struct._GimpObject, i8*, %struct._GSList*, i8*, i8*, i8*, i8*, i64, i32, i32 }
%struct._GimpWireMessage = type { i32, i8* }
%struct._GPTileReq = type { i32, i32, i32 }
%struct._GPProcRun = type { i8*, i32, %struct._GPParam* }
%struct._GPParam = type { i32, %union.anon.0 }
%union.anon.0 = type { %struct._GimpRGB }
%struct._GimpRGB = type { double, double, double, double }
%struct._GPProcReturn = type { i8*, i32, %struct._GPParam* }
%struct._GPProcInstall = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, %struct._GPParamDef*, %struct._GPParamDef* }
%struct._GPParamDef = type { i32, i8*, i8* }
%struct._GPProcUninstall = type { i8* }
%struct._GimpPlugInProcedure = type { %struct._GimpProcedure, i8*, i32, i32, i8*, %struct._GList*, i8*, i32, i32, i8*, i8*, i32, i64, i32, i32, i8*, i8*, i8*, i8*, %struct._GSList*, %struct._GSList*, %struct._GSList*, i8* }
%struct._GimpTemporaryProcedure = type { %struct._GimpPlugInProcedure, %struct._GimpPlugIn* }
%struct._GPTileData = type { i32, i32, i32, i32, i32, i32, i32, i8* }
%struct._GimpDrawable = type { %struct._GimpItem, %struct._GimpDrawablePrivate* }
%struct._GimpItem = type { %struct._GimpViewable }
%struct._GimpViewable = type { %struct._GimpObject }
%struct._GimpDrawablePrivate = type opaque
%struct._TileManager = type opaque
%struct._Tile = type opaque

@.str = private unnamed_addr constant [13 x i8] c"Gimp-Plug-In\00", align 1
@__func__.gimp_plug_in_handle_message = private unnamed_addr constant [28 x i8] c"gimp_plug_in_handle_message\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"GIMP_IS_PLUG_IN (plug_in)\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"plug_in->open == TRUE\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"msg != NULL\00", align 1
@.str.4 = private unnamed_addr constant [67 x i8] c"Plug-In \22%s\22\0A(%s)\0A\0Asent a CONFIG message.  This should not happen.\00", align 1
@.str.5 = private unnamed_addr constant [69 x i8] c"Plug-In \22%s\22\0A(%s)\0A\0Asent a TILE_ACK message.  This should not happen.\00", align 1
@.str.6 = private unnamed_addr constant [70 x i8] c"Plug-In \22%s\22\0A(%s)\0A\0Asent a TILE_DATA message.  This should not happen.\00", align 1
@.str.7 = private unnamed_addr constant [74 x i8] c"Plug-In \22%s\22\0A(%s)\0A\0Asent a TEMP_PROC_RUN message.  This should not happen.\00", align 1
@__func__.gimp_plug_in_handle_tile_request = private unnamed_addr constant [33 x i8] c"gimp_plug_in_handle_tile_request\00", align 1
@.str.8 = private unnamed_addr constant [16 x i8] c"request != NULL\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"%s: ERROR\00", align 1
@__func__.gimp_plug_in_handle_tile_put = private unnamed_addr constant [29 x i8] c"gimp_plug_in_handle_tile_put\00", align 1
@.str.10 = private unnamed_addr constant [36 x i8] c"expected tile data and received: %d\00", align 1
@.str.11 = private unnamed_addr constant [66 x i8] c"Plug-In \22%s\22\0A(%s)\0A\0Atried writing to invalid drawable %d (killing)\00", align 1
@.str.12 = private unnamed_addr constant [91 x i8] c"Plug-In \22%s\22\0A(%s)\0A\0Atried writing to drawable %d which was removed from the image (killing)\00", align 1
@.str.13 = private unnamed_addr constant [67 x i8] c"Plug-In \22%s\22\0A(%s)\0A\0Atried writing to a locked drawable %d (killing)\00", align 1
@.str.14 = private unnamed_addr constant [63 x i8] c"Plug-In \22%s\22\0A(%s)\0A\0Atried writing to a group layer %d (killing)\00", align 1
@.str.15 = private unnamed_addr constant [52 x i8] c"Plug-In \22%s\22\0A(%s)\0A\0Arequested invalid tile (killing)\00", align 1
@.str.16 = private unnamed_addr constant [68 x i8] c"Plug-In \22%s\22\0A(%s)\0A\0Atried reading from invalid drawable %d (killing)\00", align 1
@.str.17 = private unnamed_addr constant [93 x i8] c"Plug-In \22%s\22\0A(%s)\0A\0Atried reading from drawable %d which was removed from the image (killing)\00", align 1
@__func__.gimp_plug_in_handle_tile_get = private unnamed_addr constant [29 x i8] c"gimp_plug_in_handle_tile_get\00", align 1
@.str.18 = private unnamed_addr constant [35 x i8] c"expected tile ack and received: %d\00", align 1
@__func__.gimp_plug_in_handle_proc_run = private unnamed_addr constant [29 x i8] c"gimp_plug_in_handle_proc_run\00", align 1
@.str.19 = private unnamed_addr constant [17 x i8] c"proc_run != NULL\00", align 1
@.str.20 = private unnamed_addr constant [23 x i8] c"proc_run->name != NULL\00", align 1
@.str.21 = private unnamed_addr constant [81 x i8] c"Plug-In \22%s\22\0A(%s)\0Acalled deprecated procedure '%s'.\0AIt should call '%s' instead!\00", align 1
@.str.22 = private unnamed_addr constant [5 x i8] c"NONE\00", align 1
@.str.23 = private unnamed_addr constant [52 x i8] c"Plug-In \22%s\22\0A(%s)\0Acalled deprecated procedure '%s'.\00", align 1
@.str.24 = private unnamed_addr constant [90 x i8] c"WARNING: Plug-In \22%s\22\0A(%s)\0Acalled deprecated procedure '%s'.\0AIt should call '%s' instead!\00", align 1
@.str.25 = private unnamed_addr constant [37 x i8] c"Calling error for procedure '%s':\0A%s\00", align 1
@.str.26 = private unnamed_addr constant [39 x i8] c"Execution error for procedure '%s':\0A%s\00", align 1
@__func__.gimp_plug_in_handle_proc_return = private unnamed_addr constant [32 x i8] c"gimp_plug_in_handle_proc_return\00", align 1
@.str.27 = private unnamed_addr constant [20 x i8] c"proc_return != NULL\00", align 1
@__func__.gimp_plug_in_handle_temp_proc_return = private unnamed_addr constant [37 x i8] c"gimp_plug_in_handle_temp_proc_return\00", align 1
@.str.28 = private unnamed_addr constant [117 x i8] c"Plug-In \22%s\22\0A(%s)\0A\0Asent a TEMP_PROC_RETURN message while not running a temporary procedure.  This should not happen.\00", align 1
@__func__.gimp_plug_in_handle_proc_install = private unnamed_addr constant [33 x i8] c"gimp_plug_in_handle_proc_install\00", align 1
@.str.29 = private unnamed_addr constant [21 x i8] c"proc_install != NULL\00", align 1
@.str.30 = private unnamed_addr constant [27 x i8] c"proc_install->name != NULL\00", align 1
@.str.31 = private unnamed_addr constant [150 x i8] c"Plug-In \22%s\22\0A(%s)\0A\0Aattempted to install procedure \22%s\22 which fails to comply with the array parameter passing standard.  Argument %d is noncompliant.\00", align 1
@.str.32 = private unnamed_addr constant [73 x i8] c"Plug-In \22%s\22\0A(%s)\0A\0Aattempted to install a procedure NULL parameter name.\00", align 1
@.str.33 = private unnamed_addr constant [80 x i8] c"Plug-In \22%s\22\0A(%s)\0A\0Aattempted to install a procedure with invalid UTF-8 strings.\00", align 1
@__func__.gimp_plug_in_handle_proc_uninstall = private unnamed_addr constant [35 x i8] c"gimp_plug_in_handle_proc_uninstall\00", align 1
@.str.34 = private unnamed_addr constant [23 x i8] c"proc_uninstall != NULL\00", align 1
@.str.35 = private unnamed_addr constant [29 x i8] c"proc_uninstall->name != NULL\00", align 1
@.str.36 = private unnamed_addr constant [115 x i8] c"Plug-In \22%s\22\0A(%s)\0A\0Asent an EXTENSION_ACK message while not being started as an extension.  This should not happen.\00", align 1
@.str.37 = private unnamed_addr constant [91 x i8] c"Plug-In \22%s\22\0A(%s)\0A\0Asent an HAS_INIT message while not in query().  This should not happen.\00", align 1

; Function Attrs: nounwind uwtable
define void @gimp_plug_in_handle_message(%struct._GimpPlugIn* %plug_in, %struct._GimpWireMessage* %msg) #0 {
entry:
  %plug_in.addr = alloca %struct._GimpPlugIn*, align 8
  %msg.addr = alloca %struct._GimpWireMessage*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpPlugIn* %plug_in, %struct._GimpPlugIn** %plug_in.addr, align 8
  store %struct._GimpWireMessage* %msg, %struct._GimpWireMessage** %msg.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in.addr, align 8
  %1 = bitcast %struct._GimpPlugIn* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_plug_in_get_type() #6
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.gimp_plug_in_handle_message, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i32 0, i32 0))
  br label %sw.epilog

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in.addr, align 8
  %open = getelementptr inbounds %struct._GimpPlugIn, %struct._GimpPlugIn* %13, i32 0, i32 4
  %bf.load = load i8, i8* %open, align 4
  %bf.clear = and i8 %bf.load, 1
  %bf.cast = zext i8 %bf.clear to i32
  %cmp12 = icmp eq i32 %bf.cast, 1
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %do.body.11
  br label %if.end.15

if.else.14:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.gimp_plug_in_handle_message, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i32 0, i32 0))
  br label %sw.epilog

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  br label %do.body.17

do.body.17:                                       ; preds = %do.end.16
  %14 = load %struct._GimpWireMessage*, %struct._GimpWireMessage** %msg.addr, align 8
  %cmp18 = icmp ne %struct._GimpWireMessage* %14, null
  br i1 %cmp18, label %if.then.19, label %if.else.20

if.then.19:                                       ; preds = %do.body.17
  br label %if.end.21

if.else.20:                                       ; preds = %do.body.17
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.gimp_plug_in_handle_message, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i32 0, i32 0))
  br label %sw.epilog

if.end.21:                                        ; preds = %if.then.19
  br label %do.end.22

do.end.22:                                        ; preds = %if.end.21
  %15 = load %struct._GimpWireMessage*, %struct._GimpWireMessage** %msg.addr, align 8
  %type = getelementptr inbounds %struct._GimpWireMessage, %struct._GimpWireMessage* %15, i32 0, i32 0
  %16 = load i32, i32* %type, align 4
  switch i32 %16, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.23
    i32 2, label %sw.bb.26
    i32 3, label %sw.bb.27
    i32 4, label %sw.bb.33
    i32 5, label %sw.bb.39
    i32 6, label %sw.bb.41
    i32 7, label %sw.bb.43
    i32 8, label %sw.bb.49
    i32 9, label %sw.bb.51
    i32 10, label %sw.bb.53
    i32 11, label %sw.bb.55
    i32 12, label %sw.bb.56
  ]

sw.bb:                                            ; preds = %do.end.22
  %17 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in.addr, align 8
  call void @gimp_plug_in_handle_quit(%struct._GimpPlugIn* %17)
  br label %sw.epilog

sw.bb.23:                                         ; preds = %do.end.22
  %18 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in.addr, align 8
  %manager = getelementptr inbounds %struct._GimpPlugIn, %struct._GimpPlugIn* %18, i32 0, i32 1
  %19 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %manager, align 8
  %gimp = getelementptr inbounds %struct._GimpPlugInManager, %struct._GimpPlugInManager* %19, i32 0, i32 1
  %20 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %21 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in.addr, align 8
  %22 = bitcast %struct._GimpPlugIn* %21 to i8*
  %call24 = call i8* @gimp_object_get_name(i8* %22)
  %23 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in.addr, align 8
  %prog = getelementptr inbounds %struct._GimpPlugIn, %struct._GimpPlugIn* %23, i32 0, i32 2
  %24 = load i8*, i8** %prog, align 8
  %call25 = call i8* @gimp_filename_to_utf8(i8* %24)
  call void (%struct._Gimp*, %struct._GObject*, i32, i8*, ...) @gimp_message(%struct._Gimp* %20, %struct._GObject* null, i32 2, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.4, i32 0, i32 0), i8* %call24, i8* %call25)
  %25 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in.addr, align 8
  call void @gimp_plug_in_close(%struct._GimpPlugIn* %25, i32 1)
  br label %sw.epilog

sw.bb.26:                                         ; preds = %do.end.22
  %26 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in.addr, align 8
  %27 = load %struct._GimpWireMessage*, %struct._GimpWireMessage** %msg.addr, align 8
  %data = getelementptr inbounds %struct._GimpWireMessage, %struct._GimpWireMessage* %27, i32 0, i32 1
  %28 = load i8*, i8** %data, align 8
  %29 = bitcast i8* %28 to %struct._GPTileReq*
  call void @gimp_plug_in_handle_tile_request(%struct._GimpPlugIn* %26, %struct._GPTileReq* %29)
  br label %sw.epilog

sw.bb.27:                                         ; preds = %do.end.22
  %30 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in.addr, align 8
  %manager28 = getelementptr inbounds %struct._GimpPlugIn, %struct._GimpPlugIn* %30, i32 0, i32 1
  %31 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %manager28, align 8
  %gimp29 = getelementptr inbounds %struct._GimpPlugInManager, %struct._GimpPlugInManager* %31, i32 0, i32 1
  %32 = load %struct._Gimp*, %struct._Gimp** %gimp29, align 8
  %33 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in.addr, align 8
  %34 = bitcast %struct._GimpPlugIn* %33 to i8*
  %call30 = call i8* @gimp_object_get_name(i8* %34)
  %35 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in.addr, align 8
  %prog31 = getelementptr inbounds %struct._GimpPlugIn, %struct._GimpPlugIn* %35, i32 0, i32 2
  %36 = load i8*, i8** %prog31, align 8
  %call32 = call i8* @gimp_filename_to_utf8(i8* %36)
  call void (%struct._Gimp*, %struct._GObject*, i32, i8*, ...) @gimp_message(%struct._Gimp* %32, %struct._GObject* null, i32 2, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.5, i32 0, i32 0), i8* %call30, i8* %call32)
  %37 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in.addr, align 8
  call void @gimp_plug_in_close(%struct._GimpPlugIn* %37, i32 1)
  br label %sw.epilog

sw.bb.33:                                         ; preds = %do.end.22
  %38 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in.addr, align 8
  %manager34 = getelementptr inbounds %struct._GimpPlugIn, %struct._GimpPlugIn* %38, i32 0, i32 1
  %39 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %manager34, align 8
  %gimp35 = getelementptr inbounds %struct._GimpPlugInManager, %struct._GimpPlugInManager* %39, i32 0, i32 1
  %40 = load %struct._Gimp*, %struct._Gimp** %gimp35, align 8
  %41 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in.addr, align 8
  %42 = bitcast %struct._GimpPlugIn* %41 to i8*
  %call36 = call i8* @gimp_object_get_name(i8* %42)
  %43 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in.addr, align 8
  %prog37 = getelementptr inbounds %struct._GimpPlugIn, %struct._GimpPlugIn* %43, i32 0, i32 2
  %44 = load i8*, i8** %prog37, align 8
  %call38 = call i8* @gimp_filename_to_utf8(i8* %44)
  call void (%struct._Gimp*, %struct._GObject*, i32, i8*, ...) @gimp_message(%struct._Gimp* %40, %struct._GObject* null, i32 2, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.6, i32 0, i32 0), i8* %call36, i8* %call38)
  %45 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in.addr, align 8
  call void @gimp_plug_in_close(%struct._GimpPlugIn* %45, i32 1)
  br label %sw.epilog

sw.bb.39:                                         ; preds = %do.end.22
  %46 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in.addr, align 8
  %47 = load %struct._GimpWireMessage*, %struct._GimpWireMessage** %msg.addr, align 8
  %data40 = getelementptr inbounds %struct._GimpWireMessage, %struct._GimpWireMessage* %47, i32 0, i32 1
  %48 = load i8*, i8** %data40, align 8
  %49 = bitcast i8* %48 to %struct._GPProcRun*
  call void @gimp_plug_in_handle_proc_run(%struct._GimpPlugIn* %46, %struct._GPProcRun* %49)
  br label %sw.epilog

sw.bb.41:                                         ; preds = %do.end.22
  %50 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in.addr, align 8
  %51 = load %struct._GimpWireMessage*, %struct._GimpWireMessage** %msg.addr, align 8
  %data42 = getelementptr inbounds %struct._GimpWireMessage, %struct._GimpWireMessage* %51, i32 0, i32 1
  %52 = load i8*, i8** %data42, align 8
  %53 = bitcast i8* %52 to %struct._GPProcReturn*
  call void @gimp_plug_in_handle_proc_return(%struct._GimpPlugIn* %50, %struct._GPProcReturn* %53)
  br label %sw.epilog

sw.bb.43:                                         ; preds = %do.end.22
  %54 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in.addr, align 8
  %manager44 = getelementptr inbounds %struct._GimpPlugIn, %struct._GimpPlugIn* %54, i32 0, i32 1
  %55 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %manager44, align 8
  %gimp45 = getelementptr inbounds %struct._GimpPlugInManager, %struct._GimpPlugInManager* %55, i32 0, i32 1
  %56 = load %struct._Gimp*, %struct._Gimp** %gimp45, align 8
  %57 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in.addr, align 8
  %58 = bitcast %struct._GimpPlugIn* %57 to i8*
  %call46 = call i8* @gimp_object_get_name(i8* %58)
  %59 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in.addr, align 8
  %prog47 = getelementptr inbounds %struct._GimpPlugIn, %struct._GimpPlugIn* %59, i32 0, i32 2
  %60 = load i8*, i8** %prog47, align 8
  %call48 = call i8* @gimp_filename_to_utf8(i8* %60)
  call void (%struct._Gimp*, %struct._GObject*, i32, i8*, ...) @gimp_message(%struct._Gimp* %56, %struct._GObject* null, i32 2, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.7, i32 0, i32 0), i8* %call46, i8* %call48)
  %61 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in.addr, align 8
  call void @gimp_plug_in_close(%struct._GimpPlugIn* %61, i32 1)
  br label %sw.epilog

sw.bb.49:                                         ; preds = %do.end.22
  %62 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in.addr, align 8
  %63 = load %struct._GimpWireMessage*, %struct._GimpWireMessage** %msg.addr, align 8
  %data50 = getelementptr inbounds %struct._GimpWireMessage, %struct._GimpWireMessage* %63, i32 0, i32 1
  %64 = load i8*, i8** %data50, align 8
  %65 = bitcast i8* %64 to %struct._GPProcReturn*
  call void @gimp_plug_in_handle_temp_proc_return(%struct._GimpPlugIn* %62, %struct._GPProcReturn* %65)
  br label %sw.epilog

sw.bb.51:                                         ; preds = %do.end.22
  %66 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in.addr, align 8
  %67 = load %struct._GimpWireMessage*, %struct._GimpWireMessage** %msg.addr, align 8
  %data52 = getelementptr inbounds %struct._GimpWireMessage, %struct._GimpWireMessage* %67, i32 0, i32 1
  %68 = load i8*, i8** %data52, align 8
  %69 = bitcast i8* %68 to %struct._GPProcInstall*
  call void @gimp_plug_in_handle_proc_install(%struct._GimpPlugIn* %66, %struct._GPProcInstall* %69)
  br label %sw.epilog

sw.bb.53:                                         ; preds = %do.end.22
  %70 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in.addr, align 8
  %71 = load %struct._GimpWireMessage*, %struct._GimpWireMessage** %msg.addr, align 8
  %data54 = getelementptr inbounds %struct._GimpWireMessage, %struct._GimpWireMessage* %71, i32 0, i32 1
  %72 = load i8*, i8** %data54, align 8
  %73 = bitcast i8* %72 to %struct._GPProcUninstall*
  call void @gimp_plug_in_handle_proc_uninstall(%struct._GimpPlugIn* %70, %struct._GPProcUninstall* %73)
  br label %sw.epilog

sw.bb.55:                                         ; preds = %do.end.22
  %74 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in.addr, align 8
  call void @gimp_plug_in_handle_extension_ack(%struct._GimpPlugIn* %74)
  br label %sw.epilog

sw.bb.56:                                         ; preds = %do.end.22
  %75 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in.addr, align 8
  call void @gimp_plug_in_handle_has_init(%struct._GimpPlugIn* %75)
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.else.9, %if.else.14, %if.else.20, %do.end.22, %sw.bb.56, %sw.bb.55, %sw.bb.53, %sw.bb.51, %sw.bb.49, %sw.bb.43, %sw.bb.41, %sw.bb.39, %sw.bb.33, %sw.bb.27, %sw.bb.26, %sw.bb.23, %sw.bb
  ret void
}

; Function Attrs: nounwind readnone
declare i64 @gimp_plug_in_get_type() #1

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #2

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #3

; Function Attrs: nounwind uwtable
define internal void @gimp_plug_in_handle_quit(%struct._GimpPlugIn* %plug_in) #0 {
entry:
  %plug_in.addr = alloca %struct._GimpPlugIn*, align 8
  store %struct._GimpPlugIn* %plug_in, %struct._GimpPlugIn** %plug_in.addr, align 8
  %0 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in.addr, align 8
  call void @gimp_plug_in_close(%struct._GimpPlugIn* %0, i32 0)
  ret void
}

declare void @gimp_message(%struct._Gimp*, %struct._GObject*, i32, i8*, ...) #3

declare i8* @gimp_object_get_name(i8*) #3

declare i8* @gimp_filename_to_utf8(i8*) #3

declare void @gimp_plug_in_close(%struct._GimpPlugIn*, i32) #3

; Function Attrs: nounwind uwtable
define internal void @gimp_plug_in_handle_tile_request(%struct._GimpPlugIn* %plug_in, %struct._GPTileReq* %request) #0 {
entry:
  %plug_in.addr = alloca %struct._GimpPlugIn*, align 8
  %request.addr = alloca %struct._GPTileReq*, align 8
  store %struct._GimpPlugIn* %plug_in, %struct._GimpPlugIn** %plug_in.addr, align 8
  store %struct._GPTileReq* %request, %struct._GPTileReq** %request.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GPTileReq*, %struct._GPTileReq** %request.addr, align 8
  %cmp = icmp ne %struct._GPTileReq* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__func__.gimp_plug_in_handle_tile_request, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i32 0, i32 0))
  br label %if.end.4

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %1 = load %struct._GPTileReq*, %struct._GPTileReq** %request.addr, align 8
  %drawable_ID = getelementptr inbounds %struct._GPTileReq, %struct._GPTileReq* %1, i32 0, i32 0
  %2 = load i32, i32* %drawable_ID, align 4
  %cmp1 = icmp eq i32 %2, -1
  br i1 %cmp1, label %if.then.2, label %if.else.3

if.then.2:                                        ; preds = %do.end
  %3 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in.addr, align 8
  %4 = load %struct._GPTileReq*, %struct._GPTileReq** %request.addr, align 8
  call void @gimp_plug_in_handle_tile_put(%struct._GimpPlugIn* %3, %struct._GPTileReq* %4)
  br label %if.end.4

if.else.3:                                        ; preds = %do.end
  %5 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in.addr, align 8
  %6 = load %struct._GPTileReq*, %struct._GPTileReq** %request.addr, align 8
  call void @gimp_plug_in_handle_tile_get(%struct._GimpPlugIn* %5, %struct._GPTileReq* %6)
  br label %if.end.4

if.end.4:                                         ; preds = %if.else, %if.else.3, %if.then.2
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_plug_in_handle_proc_run(%struct._GimpPlugIn* %plug_in, %struct._GPProcRun* %proc_run) #0 {
entry:
  %plug_in.addr = alloca %struct._GimpPlugIn*, align 8
  %proc_run.addr = alloca %struct._GPProcRun*, align 8
  %proc_frame = alloca %struct._GimpPlugInProcFrame*, align 8
  %canonical = alloca i8*, align 8
  %proc_name = alloca i8*, align 8
  %procedure = alloca %struct._GimpProcedure*, align 8
  %args = alloca %struct._GValueArray*, align 8
  %return_vals = alloca %struct._GValueArray*, align 8
  %error = alloca %struct._GError*, align 8
  %proc_return = alloca %struct._GPProcReturn, align 8
  store %struct._GimpPlugIn* %plug_in, %struct._GimpPlugIn** %plug_in.addr, align 8
  store %struct._GPProcRun* %proc_run, %struct._GPProcRun** %proc_run.addr, align 8
  store i8* null, i8** %proc_name, align 8
  store %struct._GValueArray* null, %struct._GValueArray** %args, align 8
  store %struct._GValueArray* null, %struct._GValueArray** %return_vals, align 8
  store %struct._GError* null, %struct._GError** %error, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GPProcRun*, %struct._GPProcRun** %proc_run.addr, align 8
  %cmp = icmp ne %struct._GPProcRun* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.gimp_plug_in_handle_proc_run, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.19, i32 0, i32 0))
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %do.body.1

do.body.1:                                        ; preds = %do.end
  %1 = load %struct._GPProcRun*, %struct._GPProcRun** %proc_run.addr, align 8
  %name = getelementptr inbounds %struct._GPProcRun, %struct._GPProcRun* %1, i32 0, i32 0
  %2 = load i8*, i8** %name, align 8
  %cmp2 = icmp ne i8* %2, null
  br i1 %cmp2, label %if.then.3, label %if.else.4

if.then.3:                                        ; preds = %do.body.1
  br label %if.end.5

if.else.4:                                        ; preds = %do.body.1
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.gimp_plug_in_handle_proc_run, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.20, i32 0, i32 0))
  br label %return

if.end.5:                                         ; preds = %if.then.3
  br label %do.end.6

do.end.6:                                         ; preds = %if.end.5
  %3 = load %struct._GPProcRun*, %struct._GPProcRun** %proc_run.addr, align 8
  %name7 = getelementptr inbounds %struct._GPProcRun, %struct._GPProcRun* %3, i32 0, i32 0
  %4 = load i8*, i8** %name7, align 8
  %call = call noalias i8* @gimp_canonicalize_identifier(i8* %4)
  store i8* %call, i8** %canonical, align 8
  %5 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in.addr, align 8
  %call8 = call %struct._GimpPlugInProcFrame* @gimp_plug_in_get_proc_frame(%struct._GimpPlugIn* %5)
  store %struct._GimpPlugInProcFrame* %call8, %struct._GimpPlugInProcFrame** %proc_frame, align 8
  %6 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in.addr, align 8
  %manager = getelementptr inbounds %struct._GimpPlugIn, %struct._GimpPlugIn* %6, i32 0, i32 1
  %7 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %manager, align 8
  %gimp = getelementptr inbounds %struct._GimpPlugInManager, %struct._GimpPlugInManager* %7, i32 0, i32 1
  %8 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %pdb = getelementptr inbounds %struct._Gimp, %struct._Gimp* %8, i32 0, i32 44
  %9 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb, align 8
  %10 = load i8*, i8** %canonical, align 8
  %call9 = call %struct._GimpProcedure* @gimp_pdb_lookup_procedure(%struct._GimpPDB* %9, i8* %10)
  store %struct._GimpProcedure* %call9, %struct._GimpProcedure** %procedure, align 8
  %11 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %tobool = icmp ne %struct._GimpProcedure* %11, null
  br i1 %tobool, label %if.else.31, label %if.then.10

if.then.10:                                       ; preds = %do.end.6
  %12 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in.addr, align 8
  %manager11 = getelementptr inbounds %struct._GimpPlugIn, %struct._GimpPlugIn* %12, i32 0, i32 1
  %13 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %manager11, align 8
  %gimp12 = getelementptr inbounds %struct._GimpPlugInManager, %struct._GimpPlugInManager* %13, i32 0, i32 1
  %14 = load %struct._Gimp*, %struct._Gimp** %gimp12, align 8
  %pdb13 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %14, i32 0, i32 44
  %15 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb13, align 8
  %16 = load i8*, i8** %canonical, align 8
  %call14 = call i8* @gimp_pdb_lookup_compat_proc_name(%struct._GimpPDB* %15, i8* %16)
  store i8* %call14, i8** %proc_name, align 8
  %17 = load i8*, i8** %proc_name, align 8
  %tobool15 = icmp ne i8* %17, null
  br i1 %tobool15, label %if.then.16, label %if.end.30

if.then.16:                                       ; preds = %if.then.10
  %18 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in.addr, align 8
  %manager17 = getelementptr inbounds %struct._GimpPlugIn, %struct._GimpPlugIn* %18, i32 0, i32 1
  %19 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %manager17, align 8
  %gimp18 = getelementptr inbounds %struct._GimpPlugInManager, %struct._GimpPlugInManager* %19, i32 0, i32 1
  %20 = load %struct._Gimp*, %struct._Gimp** %gimp18, align 8
  %pdb19 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %20, i32 0, i32 44
  %21 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb19, align 8
  %22 = load i8*, i8** %proc_name, align 8
  %call20 = call %struct._GimpProcedure* @gimp_pdb_lookup_procedure(%struct._GimpPDB* %21, i8* %22)
  store %struct._GimpProcedure* %call20, %struct._GimpProcedure** %procedure, align 8
  %23 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in.addr, align 8
  %manager21 = getelementptr inbounds %struct._GimpPlugIn, %struct._GimpPlugIn* %23, i32 0, i32 1
  %24 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %manager21, align 8
  %gimp22 = getelementptr inbounds %struct._GimpPlugInManager, %struct._GimpPlugInManager* %24, i32 0, i32 1
  %25 = load %struct._Gimp*, %struct._Gimp** %gimp22, align 8
  %pdb_compat_mode = getelementptr inbounds %struct._Gimp, %struct._Gimp* %25, i32 0, i32 13
  %26 = load i32, i32* %pdb_compat_mode, align 4
  %cmp23 = icmp eq i32 %26, 2
  br i1 %cmp23, label %if.then.24, label %if.end.29

if.then.24:                                       ; preds = %if.then.16
  %27 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in.addr, align 8
  %manager25 = getelementptr inbounds %struct._GimpPlugIn, %struct._GimpPlugIn* %27, i32 0, i32 1
  %28 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %manager25, align 8
  %gimp26 = getelementptr inbounds %struct._GimpPlugInManager, %struct._GimpPlugInManager* %28, i32 0, i32 1
  %29 = load %struct._Gimp*, %struct._Gimp** %gimp26, align 8
  %30 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in.addr, align 8
  %31 = bitcast %struct._GimpPlugIn* %30 to i8*
  %call27 = call i8* @gimp_object_get_name(i8* %31)
  %32 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in.addr, align 8
  %prog = getelementptr inbounds %struct._GimpPlugIn, %struct._GimpPlugIn* %32, i32 0, i32 2
  %33 = load i8*, i8** %prog, align 8
  %call28 = call i8* @gimp_filename_to_utf8(i8* %33)
  %34 = load i8*, i8** %canonical, align 8
  %35 = load i8*, i8** %proc_name, align 8
  call void (%struct._Gimp*, %struct._GObject*, i32, i8*, ...) @gimp_message(%struct._Gimp* %29, %struct._GObject* null, i32 1, i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.21, i32 0, i32 0), i8* %call27, i8* %call28, i8* %34, i8* %35)
  br label %if.end.29

if.end.29:                                        ; preds = %if.then.24, %if.then.16
  br label %if.end.30

if.end.30:                                        ; preds = %if.end.29, %if.then.10
  br label %if.end.58

if.else.31:                                       ; preds = %do.end.6
  %36 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %deprecated = getelementptr inbounds %struct._GimpProcedure, %struct._GimpProcedure* %36, i32 0, i32 9
  %37 = load i8*, i8** %deprecated, align 8
  %tobool32 = icmp ne i8* %37, null
  br i1 %tobool32, label %if.then.33, label %if.end.57

if.then.33:                                       ; preds = %if.else.31
  %38 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in.addr, align 8
  %manager34 = getelementptr inbounds %struct._GimpPlugIn, %struct._GimpPlugIn* %38, i32 0, i32 1
  %39 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %manager34, align 8
  %gimp35 = getelementptr inbounds %struct._GimpPlugInManager, %struct._GimpPlugInManager* %39, i32 0, i32 1
  %40 = load %struct._Gimp*, %struct._Gimp** %gimp35, align 8
  %pdb_compat_mode36 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %40, i32 0, i32 13
  %41 = load i32, i32* %pdb_compat_mode36, align 4
  %cmp37 = icmp eq i32 %41, 2
  br i1 %cmp37, label %if.then.38, label %if.end.56

if.then.38:                                       ; preds = %if.then.33
  %42 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %deprecated39 = getelementptr inbounds %struct._GimpProcedure, %struct._GimpProcedure* %42, i32 0, i32 9
  %43 = load i8*, i8** %deprecated39, align 8
  %call40 = call i32 @strcmp(i8* %43, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.22, i32 0, i32 0)) #7
  %tobool41 = icmp ne i32 %call40, 0
  br i1 %tobool41, label %if.else.48, label %if.then.42

if.then.42:                                       ; preds = %if.then.38
  %44 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in.addr, align 8
  %manager43 = getelementptr inbounds %struct._GimpPlugIn, %struct._GimpPlugIn* %44, i32 0, i32 1
  %45 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %manager43, align 8
  %gimp44 = getelementptr inbounds %struct._GimpPlugInManager, %struct._GimpPlugInManager* %45, i32 0, i32 1
  %46 = load %struct._Gimp*, %struct._Gimp** %gimp44, align 8
  %47 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in.addr, align 8
  %48 = bitcast %struct._GimpPlugIn* %47 to i8*
  %call45 = call i8* @gimp_object_get_name(i8* %48)
  %49 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in.addr, align 8
  %prog46 = getelementptr inbounds %struct._GimpPlugIn, %struct._GimpPlugIn* %49, i32 0, i32 2
  %50 = load i8*, i8** %prog46, align 8
  %call47 = call i8* @gimp_filename_to_utf8(i8* %50)
  %51 = load i8*, i8** %canonical, align 8
  call void (%struct._Gimp*, %struct._GObject*, i32, i8*, ...) @gimp_message(%struct._Gimp* %46, %struct._GObject* null, i32 1, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.23, i32 0, i32 0), i8* %call45, i8* %call47, i8* %51)
  br label %if.end.55

if.else.48:                                       ; preds = %if.then.38
  %52 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in.addr, align 8
  %manager49 = getelementptr inbounds %struct._GimpPlugIn, %struct._GimpPlugIn* %52, i32 0, i32 1
  %53 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %manager49, align 8
  %gimp50 = getelementptr inbounds %struct._GimpPlugInManager, %struct._GimpPlugInManager* %53, i32 0, i32 1
  %54 = load %struct._Gimp*, %struct._Gimp** %gimp50, align 8
  %55 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in.addr, align 8
  %56 = bitcast %struct._GimpPlugIn* %55 to i8*
  %call51 = call i8* @gimp_object_get_name(i8* %56)
  %57 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in.addr, align 8
  %prog52 = getelementptr inbounds %struct._GimpPlugIn, %struct._GimpPlugIn* %57, i32 0, i32 2
  %58 = load i8*, i8** %prog52, align 8
  %call53 = call i8* @gimp_filename_to_utf8(i8* %58)
  %59 = load i8*, i8** %canonical, align 8
  %60 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %deprecated54 = getelementptr inbounds %struct._GimpProcedure, %struct._GimpProcedure* %60, i32 0, i32 9
  %61 = load i8*, i8** %deprecated54, align 8
  call void (%struct._Gimp*, %struct._GObject*, i32, i8*, ...) @gimp_message(%struct._Gimp* %54, %struct._GObject* null, i32 1, i8* getelementptr inbounds ([90 x i8], [90 x i8]* @.str.24, i32 0, i32 0), i8* %call51, i8* %call53, i8* %59, i8* %61)
  br label %if.end.55

if.end.55:                                        ; preds = %if.else.48, %if.then.42
  br label %if.end.56

if.end.56:                                        ; preds = %if.end.55, %if.then.33
  br label %if.end.57

if.end.57:                                        ; preds = %if.end.56, %if.else.31
  br label %if.end.58

if.end.58:                                        ; preds = %if.end.57, %if.end.30
  %62 = load i8*, i8** %proc_name, align 8
  %tobool59 = icmp ne i8* %62, null
  br i1 %tobool59, label %if.end.61, label %if.then.60

if.then.60:                                       ; preds = %if.end.58
  %63 = load i8*, i8** %canonical, align 8
  store i8* %63, i8** %proc_name, align 8
  br label %if.end.61

if.end.61:                                        ; preds = %if.then.60, %if.end.58
  %64 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %tobool62 = icmp ne %struct._GimpProcedure* %64, null
  br i1 %tobool62, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.61
  %65 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %args63 = getelementptr inbounds %struct._GimpProcedure, %struct._GimpProcedure* %65, i32 0, i32 11
  %66 = load %struct._GParamSpec**, %struct._GParamSpec*** %args63, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.61
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GParamSpec** [ %66, %cond.true ], [ null, %cond.false ]
  %67 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %tobool64 = icmp ne %struct._GimpProcedure* %67, null
  br i1 %tobool64, label %cond.true.65, label %cond.false.66

cond.true.65:                                     ; preds = %cond.end
  %68 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %num_args = getelementptr inbounds %struct._GimpProcedure, %struct._GimpProcedure* %68, i32 0, i32 10
  %69 = load i32, i32* %num_args, align 4
  br label %cond.end.67

cond.false.66:                                    ; preds = %cond.end
  br label %cond.end.67

cond.end.67:                                      ; preds = %cond.false.66, %cond.true.65
  %cond68 = phi i32 [ %69, %cond.true.65 ], [ 0, %cond.false.66 ]
  %70 = load %struct._GPProcRun*, %struct._GPProcRun** %proc_run.addr, align 8
  %params = getelementptr inbounds %struct._GPProcRun, %struct._GPProcRun* %70, i32 0, i32 2
  %71 = load %struct._GPParam*, %struct._GPParam** %params, align 8
  %72 = load %struct._GPProcRun*, %struct._GPProcRun** %proc_run.addr, align 8
  %nparams = getelementptr inbounds %struct._GPProcRun, %struct._GPProcRun* %72, i32 0, i32 1
  %73 = load i32, i32* %nparams, align 4
  %call69 = call %struct._GValueArray* @plug_in_params_to_args(%struct._GParamSpec** %cond, i32 %cond68, %struct._GPParam* %71, i32 %73, i32 0, i32 0)
  store %struct._GValueArray* %call69, %struct._GValueArray** %args, align 8
  %74 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in.addr, align 8
  %manager70 = getelementptr inbounds %struct._GimpPlugIn, %struct._GimpPlugIn* %74, i32 0, i32 1
  %75 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %manager70, align 8
  %76 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in.addr, align 8
  call void @gimp_plug_in_manager_plug_in_push(%struct._GimpPlugInManager* %75, %struct._GimpPlugIn* %76)
  %77 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in.addr, align 8
  %manager71 = getelementptr inbounds %struct._GimpPlugIn, %struct._GimpPlugIn* %77, i32 0, i32 1
  %78 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %manager71, align 8
  %gimp72 = getelementptr inbounds %struct._GimpPlugInManager, %struct._GimpPlugInManager* %78, i32 0, i32 1
  %79 = load %struct._Gimp*, %struct._Gimp** %gimp72, align 8
  %pdb73 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %79, i32 0, i32 44
  %80 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb73, align 8
  %81 = load %struct._GimpPlugInProcFrame*, %struct._GimpPlugInProcFrame** %proc_frame, align 8
  %context_stack = getelementptr inbounds %struct._GimpPlugInProcFrame, %struct._GimpPlugInProcFrame* %81, i32 0, i32 2
  %82 = load %struct._GList*, %struct._GList** %context_stack, align 8
  %tobool74 = icmp ne %struct._GList* %82, null
  br i1 %tobool74, label %cond.true.75, label %cond.false.77

cond.true.75:                                     ; preds = %cond.end.67
  %83 = load %struct._GimpPlugInProcFrame*, %struct._GimpPlugInProcFrame** %proc_frame, align 8
  %context_stack76 = getelementptr inbounds %struct._GimpPlugInProcFrame, %struct._GimpPlugInProcFrame* %83, i32 0, i32 2
  %84 = load %struct._GList*, %struct._GList** %context_stack76, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %84, i32 0, i32 0
  %85 = load i8*, i8** %data, align 8
  br label %cond.end.78

cond.false.77:                                    ; preds = %cond.end.67
  %86 = load %struct._GimpPlugInProcFrame*, %struct._GimpPlugInProcFrame** %proc_frame, align 8
  %main_context = getelementptr inbounds %struct._GimpPlugInProcFrame, %struct._GimpPlugInProcFrame* %86, i32 0, i32 1
  %87 = load %struct._GimpContext*, %struct._GimpContext** %main_context, align 8
  %88 = bitcast %struct._GimpContext* %87 to i8*
  br label %cond.end.78

cond.end.78:                                      ; preds = %cond.false.77, %cond.true.75
  %cond79 = phi i8* [ %85, %cond.true.75 ], [ %88, %cond.false.77 ]
  %89 = bitcast i8* %cond79 to %struct._GimpContext*
  %90 = load %struct._GimpPlugInProcFrame*, %struct._GimpPlugInProcFrame** %proc_frame, align 8
  %progress = getelementptr inbounds %struct._GimpPlugInProcFrame, %struct._GimpPlugInProcFrame* %90, i32 0, i32 6
  %91 = load %struct._GimpProgress*, %struct._GimpProgress** %progress, align 8
  %92 = load i8*, i8** %proc_name, align 8
  %93 = load %struct._GValueArray*, %struct._GValueArray** %args, align 8
  %call80 = call %struct._GValueArray* @gimp_pdb_execute_procedure_by_name_args(%struct._GimpPDB* %80, %struct._GimpContext* %89, %struct._GimpProgress* %91, %struct._GError** %error, i8* %92, %struct._GValueArray* %93)
  store %struct._GValueArray* %call80, %struct._GValueArray** %return_vals, align 8
  %94 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in.addr, align 8
  %manager81 = getelementptr inbounds %struct._GimpPlugIn, %struct._GimpPlugIn* %94, i32 0, i32 1
  %95 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %manager81, align 8
  call void @gimp_plug_in_manager_plug_in_pop(%struct._GimpPlugInManager* %95)
  %96 = load %struct._GValueArray*, %struct._GValueArray** %args, align 8
  call void @g_value_array_free(%struct._GValueArray* %96)
  %97 = load %struct._GError*, %struct._GError** %error, align 8
  %tobool82 = icmp ne %struct._GError* %97, null
  br i1 %tobool82, label %if.then.83, label %if.end.84

if.then.83:                                       ; preds = %cond.end.78
  %98 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in.addr, align 8
  %99 = load %struct._GimpPlugInProcFrame*, %struct._GimpPlugInProcFrame** %proc_frame, align 8
  %100 = load i8*, i8** %canonical, align 8
  %101 = load %struct._GError*, %struct._GError** %error, align 8
  call void @gimp_plug_in_handle_proc_error(%struct._GimpPlugIn* %98, %struct._GimpPlugInProcFrame* %99, i8* %100, %struct._GError* %101)
  %102 = load %struct._GError*, %struct._GError** %error, align 8
  call void @g_error_free(%struct._GError* %102)
  br label %if.end.84

if.end.84:                                        ; preds = %if.then.83, %cond.end.78
  %103 = load i8*, i8** %canonical, align 8
  call void @g_free(i8* %103)
  %104 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in.addr, align 8
  %open = getelementptr inbounds %struct._GimpPlugIn, %struct._GimpPlugIn* %104, i32 0, i32 4
  %bf.load = load i8, i8* %open, align 4
  %bf.clear = and i8 %bf.load, 1
  %bf.cast = zext i8 %bf.clear to i32
  %tobool85 = icmp ne i32 %bf.cast, 0
  br i1 %tobool85, label %if.then.86, label %if.end.99

if.then.86:                                       ; preds = %if.end.84
  %105 = load %struct._GPProcRun*, %struct._GPProcRun** %proc_run.addr, align 8
  %name87 = getelementptr inbounds %struct._GPProcRun, %struct._GPProcRun* %105, i32 0, i32 0
  %106 = load i8*, i8** %name87, align 8
  %name88 = getelementptr inbounds %struct._GPProcReturn, %struct._GPProcReturn* %proc_return, i32 0, i32 0
  store i8* %106, i8** %name88, align 8
  %107 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %n_values = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %107, i32 0, i32 0
  %108 = load i32, i32* %n_values, align 4
  %nparams89 = getelementptr inbounds %struct._GPProcReturn, %struct._GPProcReturn* %proc_return, i32 0, i32 1
  store i32 %108, i32* %nparams89, align 4
  %109 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %call90 = call %struct._GPParam* @plug_in_args_to_params(%struct._GValueArray* %109, i32 0)
  %params91 = getelementptr inbounds %struct._GPProcReturn, %struct._GPProcReturn* %proc_return, i32 0, i32 2
  store %struct._GPParam* %call90, %struct._GPParam** %params91, align 8
  %110 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in.addr, align 8
  %my_write = getelementptr inbounds %struct._GimpPlugIn, %struct._GimpPlugIn* %110, i32 0, i32 7
  %111 = load %struct._GIOChannel*, %struct._GIOChannel** %my_write, align 8
  %112 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in.addr, align 8
  %113 = bitcast %struct._GimpPlugIn* %112 to i8*
  %call92 = call i32 @gp_proc_return_write(%struct._GIOChannel* %111, %struct._GPProcReturn* %proc_return, i8* %113)
  %tobool93 = icmp ne i32 %call92, 0
  br i1 %tobool93, label %if.end.97, label %if.then.94

if.then.94:                                       ; preds = %if.then.86
  %114 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in.addr, align 8
  %manager95 = getelementptr inbounds %struct._GimpPlugIn, %struct._GimpPlugIn* %114, i32 0, i32 1
  %115 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %manager95, align 8
  %gimp96 = getelementptr inbounds %struct._GimpPlugInManager, %struct._GimpPlugInManager* %115, i32 0, i32 1
  %116 = load %struct._Gimp*, %struct._Gimp** %gimp96, align 8
  call void (%struct._Gimp*, %struct._GObject*, i32, i8*, ...) @gimp_message(%struct._Gimp* %116, %struct._GObject* null, i32 2, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.gimp_plug_in_handle_proc_run, i32 0, i32 0))
  %117 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in.addr, align 8
  call void @gimp_plug_in_close(%struct._GimpPlugIn* %117, i32 1)
  br label %if.end.97

if.end.97:                                        ; preds = %if.then.94, %if.then.86
  %params98 = getelementptr inbounds %struct._GPProcReturn, %struct._GPProcReturn* %proc_return, i32 0, i32 2
  %118 = load %struct._GPParam*, %struct._GPParam** %params98, align 8
  %119 = bitcast %struct._GPParam* %118 to i8*
  call void @g_free(i8* %119)
  br label %if.end.99

if.end.99:                                        ; preds = %if.end.97, %if.end.84
  %120 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  call void @g_value_array_free(%struct._GValueArray* %120)
  br label %return

return:                                           ; preds = %if.end.99, %if.else.4, %if.else
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_plug_in_handle_proc_return(%struct._GimpPlugIn* %plug_in, %struct._GPProcReturn* %proc_return) #0 {
entry:
  %plug_in.addr = alloca %struct._GimpPlugIn*, align 8
  %proc_return.addr = alloca %struct._GPProcReturn*, align 8
  %proc_frame = alloca %struct._GimpPlugInProcFrame*, align 8
  store %struct._GimpPlugIn* %plug_in, %struct._GimpPlugIn** %plug_in.addr, align 8
  store %struct._GPProcReturn* %proc_return, %struct._GPProcReturn** %proc_return.addr, align 8
  %0 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in.addr, align 8
  %main_proc_frame = getelementptr inbounds %struct._GimpPlugIn, %struct._GimpPlugIn* %0, i32 0, i32 15
  store %struct._GimpPlugInProcFrame* %main_proc_frame, %struct._GimpPlugInProcFrame** %proc_frame, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %1 = load %struct._GPProcReturn*, %struct._GPProcReturn** %proc_return.addr, align 8
  %cmp = icmp ne %struct._GPProcReturn* %1, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__func__.gimp_plug_in_handle_proc_return, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.27, i32 0, i32 0))
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %2 = load %struct._GimpPlugInProcFrame*, %struct._GimpPlugInProcFrame** %proc_frame, align 8
  %procedure = getelementptr inbounds %struct._GimpPlugInProcFrame, %struct._GimpPlugInProcFrame* %2, i32 0, i32 3
  %3 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %values = getelementptr inbounds %struct._GimpProcedure, %struct._GimpProcedure* %3, i32 0, i32 13
  %4 = load %struct._GParamSpec**, %struct._GParamSpec*** %values, align 8
  %5 = load %struct._GimpPlugInProcFrame*, %struct._GimpPlugInProcFrame** %proc_frame, align 8
  %procedure1 = getelementptr inbounds %struct._GimpPlugInProcFrame, %struct._GimpPlugInProcFrame* %5, i32 0, i32 3
  %6 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure1, align 8
  %num_values = getelementptr inbounds %struct._GimpProcedure, %struct._GimpProcedure* %6, i32 0, i32 12
  %7 = load i32, i32* %num_values, align 4
  %8 = load %struct._GPProcReturn*, %struct._GPProcReturn** %proc_return.addr, align 8
  %params = getelementptr inbounds %struct._GPProcReturn, %struct._GPProcReturn* %8, i32 0, i32 2
  %9 = load %struct._GPParam*, %struct._GPParam** %params, align 8
  %10 = load %struct._GPProcReturn*, %struct._GPProcReturn** %proc_return.addr, align 8
  %nparams = getelementptr inbounds %struct._GPProcReturn, %struct._GPProcReturn* %10, i32 0, i32 1
  %11 = load i32, i32* %nparams, align 4
  %call = call %struct._GValueArray* @plug_in_params_to_args(%struct._GParamSpec** %4, i32 %7, %struct._GPParam* %9, i32 %11, i32 1, i32 1)
  %12 = load %struct._GimpPlugInProcFrame*, %struct._GimpPlugInProcFrame** %proc_frame, align 8
  %return_vals = getelementptr inbounds %struct._GimpPlugInProcFrame, %struct._GimpPlugInProcFrame* %12, i32 0, i32 5
  store %struct._GValueArray* %call, %struct._GValueArray** %return_vals, align 8
  %13 = load %struct._GimpPlugInProcFrame*, %struct._GimpPlugInProcFrame** %proc_frame, align 8
  %main_loop = getelementptr inbounds %struct._GimpPlugInProcFrame, %struct._GimpPlugInProcFrame* %13, i32 0, i32 4
  %14 = load %struct._GMainLoop*, %struct._GMainLoop** %main_loop, align 8
  %tobool = icmp ne %struct._GMainLoop* %14, null
  br i1 %tobool, label %if.then.2, label %if.else.4

if.then.2:                                        ; preds = %do.end
  %15 = load %struct._GimpPlugInProcFrame*, %struct._GimpPlugInProcFrame** %proc_frame, align 8
  %main_loop3 = getelementptr inbounds %struct._GimpPlugInProcFrame, %struct._GimpPlugInProcFrame* %15, i32 0, i32 4
  %16 = load %struct._GMainLoop*, %struct._GMainLoop** %main_loop3, align 8
  call void @g_main_loop_quit(%struct._GMainLoop* %16)
  br label %if.end.9

if.else.4:                                        ; preds = %do.end
  %17 = load %struct._GimpPlugInProcFrame*, %struct._GimpPlugInProcFrame** %proc_frame, align 8
  %procedure5 = getelementptr inbounds %struct._GimpPlugInProcFrame, %struct._GimpPlugInProcFrame* %17, i32 0, i32 3
  %18 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure5, align 8
  %19 = bitcast %struct._GimpProcedure* %18 to %struct._GTypeInstance*
  %call6 = call i64 @gimp_plug_in_procedure_get_type() #6
  %call7 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %19, i64 %call6)
  %20 = bitcast %struct._GTypeInstance* %call7 to %struct._GimpPlugInProcedure*
  %21 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in.addr, align 8
  %manager = getelementptr inbounds %struct._GimpPlugIn, %struct._GimpPlugIn* %21, i32 0, i32 1
  %22 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %manager, align 8
  %gimp = getelementptr inbounds %struct._GimpPlugInManager, %struct._GimpPlugInManager* %22, i32 0, i32 1
  %23 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %24 = load %struct._GimpPlugInProcFrame*, %struct._GimpPlugInProcFrame** %proc_frame, align 8
  %progress = getelementptr inbounds %struct._GimpPlugInProcFrame, %struct._GimpPlugInProcFrame* %24, i32 0, i32 6
  %25 = load %struct._GimpProgress*, %struct._GimpProgress** %progress, align 8
  %26 = load %struct._GimpPlugInProcFrame*, %struct._GimpPlugInProcFrame** %proc_frame, align 8
  %return_vals8 = getelementptr inbounds %struct._GimpPlugInProcFrame, %struct._GimpPlugInProcFrame* %26, i32 0, i32 5
  %27 = load %struct._GValueArray*, %struct._GValueArray** %return_vals8, align 8
  call void @gimp_plug_in_procedure_handle_return_values(%struct._GimpPlugInProcedure* %20, %struct._Gimp* %23, %struct._GimpProgress* %25, %struct._GValueArray* %27)
  br label %if.end.9

if.end.9:                                         ; preds = %if.else.4, %if.then.2
  %28 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in.addr, align 8
  call void @gimp_plug_in_close(%struct._GimpPlugIn* %28, i32 0)
  br label %return

return:                                           ; preds = %if.end.9, %if.else
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_plug_in_handle_temp_proc_return(%struct._GimpPlugIn* %plug_in, %struct._GPProcReturn* %proc_return) #0 {
entry:
  %plug_in.addr = alloca %struct._GimpPlugIn*, align 8
  %proc_return.addr = alloca %struct._GPProcReturn*, align 8
  %proc_frame = alloca %struct._GimpPlugInProcFrame*, align 8
  store %struct._GimpPlugIn* %plug_in, %struct._GimpPlugIn** %plug_in.addr, align 8
  store %struct._GPProcReturn* %proc_return, %struct._GPProcReturn** %proc_return.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GPProcReturn*, %struct._GPProcReturn** %proc_return.addr, align 8
  %cmp = icmp ne %struct._GPProcReturn* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__func__.gimp_plug_in_handle_temp_proc_return, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.27, i32 0, i32 0))
  br label %if.end.7

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %1 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in.addr, align 8
  %temp_proc_frames = getelementptr inbounds %struct._GimpPlugIn, %struct._GimpPlugIn* %1, i32 0, i32 16
  %2 = load %struct._GList*, %struct._GList** %temp_proc_frames, align 8
  %tobool = icmp ne %struct._GList* %2, null
  br i1 %tobool, label %if.then.1, label %if.else.4

if.then.1:                                        ; preds = %do.end
  %3 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in.addr, align 8
  %temp_proc_frames2 = getelementptr inbounds %struct._GimpPlugIn, %struct._GimpPlugIn* %3, i32 0, i32 16
  %4 = load %struct._GList*, %struct._GList** %temp_proc_frames2, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %4, i32 0, i32 0
  %5 = load i8*, i8** %data, align 8
  %6 = bitcast i8* %5 to %struct._GimpPlugInProcFrame*
  store %struct._GimpPlugInProcFrame* %6, %struct._GimpPlugInProcFrame** %proc_frame, align 8
  %7 = load %struct._GimpPlugInProcFrame*, %struct._GimpPlugInProcFrame** %proc_frame, align 8
  %procedure = getelementptr inbounds %struct._GimpPlugInProcFrame, %struct._GimpPlugInProcFrame* %7, i32 0, i32 3
  %8 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %values = getelementptr inbounds %struct._GimpProcedure, %struct._GimpProcedure* %8, i32 0, i32 13
  %9 = load %struct._GParamSpec**, %struct._GParamSpec*** %values, align 8
  %10 = load %struct._GimpPlugInProcFrame*, %struct._GimpPlugInProcFrame** %proc_frame, align 8
  %procedure3 = getelementptr inbounds %struct._GimpPlugInProcFrame, %struct._GimpPlugInProcFrame* %10, i32 0, i32 3
  %11 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure3, align 8
  %num_values = getelementptr inbounds %struct._GimpProcedure, %struct._GimpProcedure* %11, i32 0, i32 12
  %12 = load i32, i32* %num_values, align 4
  %13 = load %struct._GPProcReturn*, %struct._GPProcReturn** %proc_return.addr, align 8
  %params = getelementptr inbounds %struct._GPProcReturn, %struct._GPProcReturn* %13, i32 0, i32 2
  %14 = load %struct._GPParam*, %struct._GPParam** %params, align 8
  %15 = load %struct._GPProcReturn*, %struct._GPProcReturn** %proc_return.addr, align 8
  %nparams = getelementptr inbounds %struct._GPProcReturn, %struct._GPProcReturn* %15, i32 0, i32 1
  %16 = load i32, i32* %nparams, align 4
  %call = call %struct._GValueArray* @plug_in_params_to_args(%struct._GParamSpec** %9, i32 %12, %struct._GPParam* %14, i32 %16, i32 1, i32 1)
  %17 = load %struct._GimpPlugInProcFrame*, %struct._GimpPlugInProcFrame** %proc_frame, align 8
  %return_vals = getelementptr inbounds %struct._GimpPlugInProcFrame, %struct._GimpPlugInProcFrame* %17, i32 0, i32 5
  store %struct._GValueArray* %call, %struct._GValueArray** %return_vals, align 8
  %18 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in.addr, align 8
  call void @gimp_plug_in_main_loop_quit(%struct._GimpPlugIn* %18)
  %19 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in.addr, align 8
  call void @gimp_plug_in_proc_frame_pop(%struct._GimpPlugIn* %19)
  br label %if.end.7

if.else.4:                                        ; preds = %do.end
  %20 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in.addr, align 8
  %manager = getelementptr inbounds %struct._GimpPlugIn, %struct._GimpPlugIn* %20, i32 0, i32 1
  %21 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %manager, align 8
  %gimp = getelementptr inbounds %struct._GimpPlugInManager, %struct._GimpPlugInManager* %21, i32 0, i32 1
  %22 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %23 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in.addr, align 8
  %24 = bitcast %struct._GimpPlugIn* %23 to i8*
  %call5 = call i8* @gimp_object_get_name(i8* %24)
  %25 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in.addr, align 8
  %prog = getelementptr inbounds %struct._GimpPlugIn, %struct._GimpPlugIn* %25, i32 0, i32 2
  %26 = load i8*, i8** %prog, align 8
  %call6 = call i8* @gimp_filename_to_utf8(i8* %26)
  call void (%struct._Gimp*, %struct._GObject*, i32, i8*, ...) @gimp_message(%struct._Gimp* %22, %struct._GObject* null, i32 2, i8* getelementptr inbounds ([117 x i8], [117 x i8]* @.str.28, i32 0, i32 0), i8* %call5, i8* %call6)
  %27 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in.addr, align 8
  call void @gimp_plug_in_close(%struct._GimpPlugIn* %27, i32 1)
  br label %if.end.7

if.end.7:                                         ; preds = %if.else, %if.else.4, %if.then.1
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_plug_in_handle_proc_install(%struct._GimpPlugIn* %plug_in, %struct._GPProcInstall* %proc_install) #0 {
entry:
  %plug_in.addr = alloca %struct._GimpPlugIn*, align 8
  %proc_install.addr = alloca %struct._GPProcInstall*, align 8
  %proc = alloca %struct._GimpPlugInProcedure*, align 8
  %procedure = alloca %struct._GimpProcedure*, align 8
  %canonical = alloca i8*, align 8
  %null_name = alloca i32, align 4
  %valid_utf8 = alloca i32, align 4
  %i = alloca i32, align 4
  %pspec = alloca %struct._GParamSpec*, align 8
  %pspec221 = alloca %struct._GParamSpec*, align 8
  %error = alloca %struct._GError*, align 8
  store %struct._GimpPlugIn* %plug_in, %struct._GimpPlugIn** %plug_in.addr, align 8
  store %struct._GPProcInstall* %proc_install, %struct._GPProcInstall** %proc_install.addr, align 8
  store %struct._GimpPlugInProcedure* null, %struct._GimpPlugInProcedure** %proc, align 8
  store %struct._GimpProcedure* null, %struct._GimpProcedure** %procedure, align 8
  store i32 0, i32* %null_name, align 4
  store i32 0, i32* %valid_utf8, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GPProcInstall*, %struct._GPProcInstall** %proc_install.addr, align 8
  %cmp = icmp ne %struct._GPProcInstall* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__func__.gimp_plug_in_handle_proc_install, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.29, i32 0, i32 0))
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %do.body.1

do.body.1:                                        ; preds = %do.end
  %1 = load %struct._GPProcInstall*, %struct._GPProcInstall** %proc_install.addr, align 8
  %name = getelementptr inbounds %struct._GPProcInstall, %struct._GPProcInstall* %1, i32 0, i32 0
  %2 = load i8*, i8** %name, align 8
  %cmp2 = icmp ne i8* %2, null
  br i1 %cmp2, label %if.then.3, label %if.else.4

if.then.3:                                        ; preds = %do.body.1
  br label %if.end.5

if.else.4:                                        ; preds = %do.body.1
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__func__.gimp_plug_in_handle_proc_install, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.30, i32 0, i32 0))
  br label %return

if.end.5:                                         ; preds = %if.then.3
  br label %do.end.6

do.end.6:                                         ; preds = %if.end.5
  %3 = load %struct._GPProcInstall*, %struct._GPProcInstall** %proc_install.addr, align 8
  %name7 = getelementptr inbounds %struct._GPProcInstall, %struct._GPProcInstall* %3, i32 0, i32 0
  %4 = load i8*, i8** %name7, align 8
  %call = call noalias i8* @gimp_canonicalize_identifier(i8* %4)
  store i8* %call, i8** %canonical, align 8
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.end.6
  %5 = load i32, i32* %i, align 4
  %6 = load %struct._GPProcInstall*, %struct._GPProcInstall** %proc_install.addr, align 8
  %nparams = getelementptr inbounds %struct._GPProcInstall, %struct._GPProcInstall* %6, i32 0, i32 9
  %7 = load i32, i32* %nparams, align 4
  %cmp8 = icmp ult i32 %5, %7
  br i1 %cmp8, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load i32, i32* %i, align 4
  %idxprom = sext i32 %8 to i64
  %9 = load %struct._GPProcInstall*, %struct._GPProcInstall** %proc_install.addr, align 8
  %params = getelementptr inbounds %struct._GPProcInstall, %struct._GPProcInstall* %9, i32 0, i32 11
  %10 = load %struct._GPParamDef*, %struct._GPParamDef** %params, align 8
  %arrayidx = getelementptr inbounds %struct._GPParamDef, %struct._GPParamDef* %10, i64 %idxprom
  %type = getelementptr inbounds %struct._GPParamDef, %struct._GPParamDef* %arrayidx, i32 0, i32 0
  %11 = load i32, i32* %type, align 4
  %cmp9 = icmp eq i32 %11, 5
  br i1 %cmp9, label %land.lhs.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %12 = load i32, i32* %i, align 4
  %idxprom10 = sext i32 %12 to i64
  %13 = load %struct._GPProcInstall*, %struct._GPProcInstall** %proc_install.addr, align 8
  %params11 = getelementptr inbounds %struct._GPProcInstall, %struct._GPProcInstall* %13, i32 0, i32 11
  %14 = load %struct._GPParamDef*, %struct._GPParamDef** %params11, align 8
  %arrayidx12 = getelementptr inbounds %struct._GPParamDef, %struct._GPParamDef* %14, i64 %idxprom10
  %type13 = getelementptr inbounds %struct._GPParamDef, %struct._GPParamDef* %arrayidx12, i32 0, i32 0
  %15 = load i32, i32* %type13, align 4
  %cmp14 = icmp eq i32 %15, 7
  br i1 %cmp14, label %land.lhs.true, label %lor.lhs.false.15

lor.lhs.false.15:                                 ; preds = %lor.lhs.false
  %16 = load i32, i32* %i, align 4
  %idxprom16 = sext i32 %16 to i64
  %17 = load %struct._GPProcInstall*, %struct._GPProcInstall** %proc_install.addr, align 8
  %params17 = getelementptr inbounds %struct._GPProcInstall, %struct._GPProcInstall* %17, i32 0, i32 11
  %18 = load %struct._GPParamDef*, %struct._GPParamDef** %params17, align 8
  %arrayidx18 = getelementptr inbounds %struct._GPParamDef, %struct._GPParamDef* %18, i64 %idxprom16
  %type19 = getelementptr inbounds %struct._GPParamDef, %struct._GPParamDef* %arrayidx18, i32 0, i32 0
  %19 = load i32, i32* %type19, align 4
  %cmp20 = icmp eq i32 %19, 8
  br i1 %cmp20, label %land.lhs.true, label %lor.lhs.false.21

lor.lhs.false.21:                                 ; preds = %lor.lhs.false.15
  %20 = load i32, i32* %i, align 4
  %idxprom22 = sext i32 %20 to i64
  %21 = load %struct._GPProcInstall*, %struct._GPProcInstall** %proc_install.addr, align 8
  %params23 = getelementptr inbounds %struct._GPProcInstall, %struct._GPProcInstall* %21, i32 0, i32 11
  %22 = load %struct._GPParamDef*, %struct._GPParamDef** %params23, align 8
  %arrayidx24 = getelementptr inbounds %struct._GPParamDef, %struct._GPParamDef* %22, i64 %idxprom22
  %type25 = getelementptr inbounds %struct._GPParamDef, %struct._GPParamDef* %arrayidx24, i32 0, i32 0
  %23 = load i32, i32* %type25, align 4
  %cmp26 = icmp eq i32 %23, 9
  br i1 %cmp26, label %land.lhs.true, label %lor.lhs.false.27

lor.lhs.false.27:                                 ; preds = %lor.lhs.false.21
  %24 = load i32, i32* %i, align 4
  %idxprom28 = sext i32 %24 to i64
  %25 = load %struct._GPProcInstall*, %struct._GPProcInstall** %proc_install.addr, align 8
  %params29 = getelementptr inbounds %struct._GPProcInstall, %struct._GPProcInstall* %25, i32 0, i32 11
  %26 = load %struct._GPParamDef*, %struct._GPParamDef** %params29, align 8
  %arrayidx30 = getelementptr inbounds %struct._GPParamDef, %struct._GPParamDef* %26, i64 %idxprom28
  %type31 = getelementptr inbounds %struct._GPParamDef, %struct._GPParamDef* %arrayidx30, i32 0, i32 0
  %27 = load i32, i32* %type31, align 4
  %cmp32 = icmp eq i32 %27, 18
  br i1 %cmp32, label %land.lhs.true, label %if.end.41

land.lhs.true:                                    ; preds = %lor.lhs.false.27, %lor.lhs.false.21, %lor.lhs.false.15, %lor.lhs.false, %for.body
  %28 = load i32, i32* %i, align 4
  %sub = sub nsw i32 %28, 1
  %idxprom33 = sext i32 %sub to i64
  %29 = load %struct._GPProcInstall*, %struct._GPProcInstall** %proc_install.addr, align 8
  %params34 = getelementptr inbounds %struct._GPProcInstall, %struct._GPProcInstall* %29, i32 0, i32 11
  %30 = load %struct._GPParamDef*, %struct._GPParamDef** %params34, align 8
  %arrayidx35 = getelementptr inbounds %struct._GPParamDef, %struct._GPParamDef* %30, i64 %idxprom33
  %type36 = getelementptr inbounds %struct._GPParamDef, %struct._GPParamDef* %arrayidx35, i32 0, i32 0
  %31 = load i32, i32* %type36, align 4
  %cmp37 = icmp ne i32 %31, 0
  br i1 %cmp37, label %if.then.38, label %if.end.41

if.then.38:                                       ; preds = %land.lhs.true
  %32 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in.addr, align 8
  %manager = getelementptr inbounds %struct._GimpPlugIn, %struct._GimpPlugIn* %32, i32 0, i32 1
  %33 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %manager, align 8
  %gimp = getelementptr inbounds %struct._GimpPlugInManager, %struct._GimpPlugInManager* %33, i32 0, i32 1
  %34 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %35 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in.addr, align 8
  %36 = bitcast %struct._GimpPlugIn* %35 to i8*
  %call39 = call i8* @gimp_object_get_name(i8* %36)
  %37 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in.addr, align 8
  %prog = getelementptr inbounds %struct._GimpPlugIn, %struct._GimpPlugIn* %37, i32 0, i32 2
  %38 = load i8*, i8** %prog, align 8
  %call40 = call i8* @gimp_filename_to_utf8(i8* %38)
  %39 = load i8*, i8** %canonical, align 8
  %40 = load i32, i32* %i, align 4
  call void (%struct._Gimp*, %struct._GObject*, i32, i8*, ...) @gimp_message(%struct._Gimp* %34, %struct._GObject* null, i32 2, i8* getelementptr inbounds ([150 x i8], [150 x i8]* @.str.31, i32 0, i32 0), i8* %call39, i8* %call40, i8* %39, i32 %40)
  %41 = load i8*, i8** %canonical, align 8
  call void @g_free(i8* %41)
  br label %return

if.end.41:                                        ; preds = %land.lhs.true, %lor.lhs.false.27
  br label %for.inc

for.inc:                                          ; preds = %if.end.41
  %42 = load i32, i32* %i, align 4
  %inc = add nsw i32 %42, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %43 = load %struct._GPProcInstall*, %struct._GPProcInstall** %proc_install.addr, align 8
  %menu_path = getelementptr inbounds %struct._GPProcInstall, %struct._GPProcInstall* %43, i32 0, i32 6
  %44 = load i8*, i8** %menu_path, align 8
  %cmp42 = icmp eq i8* %44, null
  br i1 %cmp42, label %land.lhs.true.46, label %lor.lhs.false.43

lor.lhs.false.43:                                 ; preds = %for.end
  %45 = load %struct._GPProcInstall*, %struct._GPProcInstall** %proc_install.addr, align 8
  %menu_path44 = getelementptr inbounds %struct._GPProcInstall, %struct._GPProcInstall* %45, i32 0, i32 6
  %46 = load i8*, i8** %menu_path44, align 8
  %call45 = call i32 @g_utf8_validate(i8* %46, i64 -1, i8** null)
  %tobool = icmp ne i32 %call45, 0
  br i1 %tobool, label %land.lhs.true.46, label %if.end.158

land.lhs.true.46:                                 ; preds = %lor.lhs.false.43, %for.end
  %47 = load i8*, i8** %canonical, align 8
  %call47 = call i32 @g_utf8_validate(i8* %47, i64 -1, i8** null)
  %tobool48 = icmp ne i32 %call47, 0
  br i1 %tobool48, label %land.lhs.true.49, label %if.end.158

land.lhs.true.49:                                 ; preds = %land.lhs.true.46
  %48 = load %struct._GPProcInstall*, %struct._GPProcInstall** %proc_install.addr, align 8
  %blurb = getelementptr inbounds %struct._GPProcInstall, %struct._GPProcInstall* %48, i32 0, i32 1
  %49 = load i8*, i8** %blurb, align 8
  %cmp50 = icmp eq i8* %49, null
  br i1 %cmp50, label %land.lhs.true.55, label %lor.lhs.false.51

lor.lhs.false.51:                                 ; preds = %land.lhs.true.49
  %50 = load %struct._GPProcInstall*, %struct._GPProcInstall** %proc_install.addr, align 8
  %blurb52 = getelementptr inbounds %struct._GPProcInstall, %struct._GPProcInstall* %50, i32 0, i32 1
  %51 = load i8*, i8** %blurb52, align 8
  %call53 = call i32 @g_utf8_validate(i8* %51, i64 -1, i8** null)
  %tobool54 = icmp ne i32 %call53, 0
  br i1 %tobool54, label %land.lhs.true.55, label %if.end.158

land.lhs.true.55:                                 ; preds = %lor.lhs.false.51, %land.lhs.true.49
  %52 = load %struct._GPProcInstall*, %struct._GPProcInstall** %proc_install.addr, align 8
  %help = getelementptr inbounds %struct._GPProcInstall, %struct._GPProcInstall* %52, i32 0, i32 2
  %53 = load i8*, i8** %help, align 8
  %cmp56 = icmp eq i8* %53, null
  br i1 %cmp56, label %land.lhs.true.61, label %lor.lhs.false.57

lor.lhs.false.57:                                 ; preds = %land.lhs.true.55
  %54 = load %struct._GPProcInstall*, %struct._GPProcInstall** %proc_install.addr, align 8
  %help58 = getelementptr inbounds %struct._GPProcInstall, %struct._GPProcInstall* %54, i32 0, i32 2
  %55 = load i8*, i8** %help58, align 8
  %call59 = call i32 @g_utf8_validate(i8* %55, i64 -1, i8** null)
  %tobool60 = icmp ne i32 %call59, 0
  br i1 %tobool60, label %land.lhs.true.61, label %if.end.158

land.lhs.true.61:                                 ; preds = %lor.lhs.false.57, %land.lhs.true.55
  %56 = load %struct._GPProcInstall*, %struct._GPProcInstall** %proc_install.addr, align 8
  %author = getelementptr inbounds %struct._GPProcInstall, %struct._GPProcInstall* %56, i32 0, i32 3
  %57 = load i8*, i8** %author, align 8
  %cmp62 = icmp eq i8* %57, null
  br i1 %cmp62, label %land.lhs.true.67, label %lor.lhs.false.63

lor.lhs.false.63:                                 ; preds = %land.lhs.true.61
  %58 = load %struct._GPProcInstall*, %struct._GPProcInstall** %proc_install.addr, align 8
  %author64 = getelementptr inbounds %struct._GPProcInstall, %struct._GPProcInstall* %58, i32 0, i32 3
  %59 = load i8*, i8** %author64, align 8
  %call65 = call i32 @g_utf8_validate(i8* %59, i64 -1, i8** null)
  %tobool66 = icmp ne i32 %call65, 0
  br i1 %tobool66, label %land.lhs.true.67, label %if.end.158

land.lhs.true.67:                                 ; preds = %lor.lhs.false.63, %land.lhs.true.61
  %60 = load %struct._GPProcInstall*, %struct._GPProcInstall** %proc_install.addr, align 8
  %copyright = getelementptr inbounds %struct._GPProcInstall, %struct._GPProcInstall* %60, i32 0, i32 4
  %61 = load i8*, i8** %copyright, align 8
  %cmp68 = icmp eq i8* %61, null
  br i1 %cmp68, label %land.lhs.true.73, label %lor.lhs.false.69

lor.lhs.false.69:                                 ; preds = %land.lhs.true.67
  %62 = load %struct._GPProcInstall*, %struct._GPProcInstall** %proc_install.addr, align 8
  %copyright70 = getelementptr inbounds %struct._GPProcInstall, %struct._GPProcInstall* %62, i32 0, i32 4
  %63 = load i8*, i8** %copyright70, align 8
  %call71 = call i32 @g_utf8_validate(i8* %63, i64 -1, i8** null)
  %tobool72 = icmp ne i32 %call71, 0
  br i1 %tobool72, label %land.lhs.true.73, label %if.end.158

land.lhs.true.73:                                 ; preds = %lor.lhs.false.69, %land.lhs.true.67
  %64 = load %struct._GPProcInstall*, %struct._GPProcInstall** %proc_install.addr, align 8
  %date = getelementptr inbounds %struct._GPProcInstall, %struct._GPProcInstall* %64, i32 0, i32 5
  %65 = load i8*, i8** %date, align 8
  %cmp74 = icmp eq i8* %65, null
  br i1 %cmp74, label %if.then.79, label %lor.lhs.false.75

lor.lhs.false.75:                                 ; preds = %land.lhs.true.73
  %66 = load %struct._GPProcInstall*, %struct._GPProcInstall** %proc_install.addr, align 8
  %date76 = getelementptr inbounds %struct._GPProcInstall, %struct._GPProcInstall* %66, i32 0, i32 5
  %67 = load i8*, i8** %date76, align 8
  %call77 = call i32 @g_utf8_validate(i8* %67, i64 -1, i8** null)
  %tobool78 = icmp ne i32 %call77, 0
  br i1 %tobool78, label %if.then.79, label %if.end.158

if.then.79:                                       ; preds = %lor.lhs.false.75, %land.lhs.true.73
  store i32 0, i32* %null_name, align 4
  store i32 1, i32* %valid_utf8, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.80

for.cond.80:                                      ; preds = %for.inc.115, %if.then.79
  %68 = load i32, i32* %i, align 4
  %69 = load %struct._GPProcInstall*, %struct._GPProcInstall** %proc_install.addr, align 8
  %nparams81 = getelementptr inbounds %struct._GPProcInstall, %struct._GPProcInstall* %69, i32 0, i32 9
  %70 = load i32, i32* %nparams81, align 4
  %cmp82 = icmp ult i32 %68, %70
  br i1 %cmp82, label %land.lhs.true.83, label %land.end

land.lhs.true.83:                                 ; preds = %for.cond.80
  %71 = load i32, i32* %valid_utf8, align 4
  %tobool84 = icmp ne i32 %71, 0
  br i1 %tobool84, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true.83
  %72 = load i32, i32* %null_name, align 4
  %tobool85 = icmp ne i32 %72, 0
  %lnot = xor i1 %tobool85, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true.83, %for.cond.80
  %73 = phi i1 [ false, %land.lhs.true.83 ], [ false, %for.cond.80 ], [ %lnot, %land.rhs ]
  br i1 %73, label %for.body.86, label %for.end.117

for.body.86:                                      ; preds = %land.end
  %74 = load i32, i32* %i, align 4
  %idxprom87 = sext i32 %74 to i64
  %75 = load %struct._GPProcInstall*, %struct._GPProcInstall** %proc_install.addr, align 8
  %params88 = getelementptr inbounds %struct._GPProcInstall, %struct._GPProcInstall* %75, i32 0, i32 11
  %76 = load %struct._GPParamDef*, %struct._GPParamDef** %params88, align 8
  %arrayidx89 = getelementptr inbounds %struct._GPParamDef, %struct._GPParamDef* %76, i64 %idxprom87
  %name90 = getelementptr inbounds %struct._GPParamDef, %struct._GPParamDef* %arrayidx89, i32 0, i32 1
  %77 = load i8*, i8** %name90, align 8
  %tobool91 = icmp ne i8* %77, null
  br i1 %tobool91, label %if.else.93, label %if.then.92

if.then.92:                                       ; preds = %for.body.86
  store i32 1, i32* %null_name, align 4
  br label %if.end.114

if.else.93:                                       ; preds = %for.body.86
  %78 = load i32, i32* %i, align 4
  %idxprom94 = sext i32 %78 to i64
  %79 = load %struct._GPProcInstall*, %struct._GPProcInstall** %proc_install.addr, align 8
  %params95 = getelementptr inbounds %struct._GPProcInstall, %struct._GPProcInstall* %79, i32 0, i32 11
  %80 = load %struct._GPParamDef*, %struct._GPParamDef** %params95, align 8
  %arrayidx96 = getelementptr inbounds %struct._GPParamDef, %struct._GPParamDef* %80, i64 %idxprom94
  %name97 = getelementptr inbounds %struct._GPParamDef, %struct._GPParamDef* %arrayidx96, i32 0, i32 1
  %81 = load i8*, i8** %name97, align 8
  %call98 = call i32 @g_utf8_validate(i8* %81, i64 -1, i8** null)
  %tobool99 = icmp ne i32 %call98, 0
  br i1 %tobool99, label %land.lhs.true.100, label %if.then.112

land.lhs.true.100:                                ; preds = %if.else.93
  %82 = load i32, i32* %i, align 4
  %idxprom101 = sext i32 %82 to i64
  %83 = load %struct._GPProcInstall*, %struct._GPProcInstall** %proc_install.addr, align 8
  %params102 = getelementptr inbounds %struct._GPProcInstall, %struct._GPProcInstall* %83, i32 0, i32 11
  %84 = load %struct._GPParamDef*, %struct._GPParamDef** %params102, align 8
  %arrayidx103 = getelementptr inbounds %struct._GPParamDef, %struct._GPParamDef* %84, i64 %idxprom101
  %description = getelementptr inbounds %struct._GPParamDef, %struct._GPParamDef* %arrayidx103, i32 0, i32 2
  %85 = load i8*, i8** %description, align 8
  %cmp104 = icmp eq i8* %85, null
  br i1 %cmp104, label %if.end.113, label %lor.lhs.false.105

lor.lhs.false.105:                                ; preds = %land.lhs.true.100
  %86 = load i32, i32* %i, align 4
  %idxprom106 = sext i32 %86 to i64
  %87 = load %struct._GPProcInstall*, %struct._GPProcInstall** %proc_install.addr, align 8
  %params107 = getelementptr inbounds %struct._GPProcInstall, %struct._GPProcInstall* %87, i32 0, i32 11
  %88 = load %struct._GPParamDef*, %struct._GPParamDef** %params107, align 8
  %arrayidx108 = getelementptr inbounds %struct._GPParamDef, %struct._GPParamDef* %88, i64 %idxprom106
  %description109 = getelementptr inbounds %struct._GPParamDef, %struct._GPParamDef* %arrayidx108, i32 0, i32 2
  %89 = load i8*, i8** %description109, align 8
  %call110 = call i32 @g_utf8_validate(i8* %89, i64 -1, i8** null)
  %tobool111 = icmp ne i32 %call110, 0
  br i1 %tobool111, label %if.end.113, label %if.then.112

if.then.112:                                      ; preds = %lor.lhs.false.105, %if.else.93
  store i32 0, i32* %valid_utf8, align 4
  br label %if.end.113

if.end.113:                                       ; preds = %if.then.112, %lor.lhs.false.105, %land.lhs.true.100
  br label %if.end.114

if.end.114:                                       ; preds = %if.end.113, %if.then.92
  br label %for.inc.115

for.inc.115:                                      ; preds = %if.end.114
  %90 = load i32, i32* %i, align 4
  %inc116 = add nsw i32 %90, 1
  store i32 %inc116, i32* %i, align 4
  br label %for.cond.80

for.end.117:                                      ; preds = %land.end
  store i32 0, i32* %i, align 4
  br label %for.cond.118

for.cond.118:                                     ; preds = %for.inc.155, %for.end.117
  %91 = load i32, i32* %i, align 4
  %92 = load %struct._GPProcInstall*, %struct._GPProcInstall** %proc_install.addr, align 8
  %nreturn_vals = getelementptr inbounds %struct._GPProcInstall, %struct._GPProcInstall* %92, i32 0, i32 10
  %93 = load i32, i32* %nreturn_vals, align 4
  %cmp119 = icmp ult i32 %91, %93
  br i1 %cmp119, label %land.lhs.true.120, label %land.end.125

land.lhs.true.120:                                ; preds = %for.cond.118
  %94 = load i32, i32* %valid_utf8, align 4
  %tobool121 = icmp ne i32 %94, 0
  br i1 %tobool121, label %land.rhs.122, label %land.end.125

land.rhs.122:                                     ; preds = %land.lhs.true.120
  %95 = load i32, i32* %null_name, align 4
  %tobool123 = icmp ne i32 %95, 0
  %lnot124 = xor i1 %tobool123, true
  br label %land.end.125

land.end.125:                                     ; preds = %land.rhs.122, %land.lhs.true.120, %for.cond.118
  %96 = phi i1 [ false, %land.lhs.true.120 ], [ false, %for.cond.118 ], [ %lnot124, %land.rhs.122 ]
  br i1 %96, label %for.body.126, label %for.end.157

for.body.126:                                     ; preds = %land.end.125
  %97 = load i32, i32* %i, align 4
  %idxprom127 = sext i32 %97 to i64
  %98 = load %struct._GPProcInstall*, %struct._GPProcInstall** %proc_install.addr, align 8
  %return_vals = getelementptr inbounds %struct._GPProcInstall, %struct._GPProcInstall* %98, i32 0, i32 12
  %99 = load %struct._GPParamDef*, %struct._GPParamDef** %return_vals, align 8
  %arrayidx128 = getelementptr inbounds %struct._GPParamDef, %struct._GPParamDef* %99, i64 %idxprom127
  %name129 = getelementptr inbounds %struct._GPParamDef, %struct._GPParamDef* %arrayidx128, i32 0, i32 1
  %100 = load i8*, i8** %name129, align 8
  %tobool130 = icmp ne i8* %100, null
  br i1 %tobool130, label %if.else.132, label %if.then.131

if.then.131:                                      ; preds = %for.body.126
  store i32 1, i32* %null_name, align 4
  br label %if.end.154

if.else.132:                                      ; preds = %for.body.126
  %101 = load i32, i32* %i, align 4
  %idxprom133 = sext i32 %101 to i64
  %102 = load %struct._GPProcInstall*, %struct._GPProcInstall** %proc_install.addr, align 8
  %return_vals134 = getelementptr inbounds %struct._GPProcInstall, %struct._GPProcInstall* %102, i32 0, i32 12
  %103 = load %struct._GPParamDef*, %struct._GPParamDef** %return_vals134, align 8
  %arrayidx135 = getelementptr inbounds %struct._GPParamDef, %struct._GPParamDef* %103, i64 %idxprom133
  %name136 = getelementptr inbounds %struct._GPParamDef, %struct._GPParamDef* %arrayidx135, i32 0, i32 1
  %104 = load i8*, i8** %name136, align 8
  %call137 = call i32 @g_utf8_validate(i8* %104, i64 -1, i8** null)
  %tobool138 = icmp ne i32 %call137, 0
  br i1 %tobool138, label %land.lhs.true.139, label %if.then.152

land.lhs.true.139:                                ; preds = %if.else.132
  %105 = load i32, i32* %i, align 4
  %idxprom140 = sext i32 %105 to i64
  %106 = load %struct._GPProcInstall*, %struct._GPProcInstall** %proc_install.addr, align 8
  %return_vals141 = getelementptr inbounds %struct._GPProcInstall, %struct._GPProcInstall* %106, i32 0, i32 12
  %107 = load %struct._GPParamDef*, %struct._GPParamDef** %return_vals141, align 8
  %arrayidx142 = getelementptr inbounds %struct._GPParamDef, %struct._GPParamDef* %107, i64 %idxprom140
  %description143 = getelementptr inbounds %struct._GPParamDef, %struct._GPParamDef* %arrayidx142, i32 0, i32 2
  %108 = load i8*, i8** %description143, align 8
  %cmp144 = icmp eq i8* %108, null
  br i1 %cmp144, label %if.end.153, label %lor.lhs.false.145

lor.lhs.false.145:                                ; preds = %land.lhs.true.139
  %109 = load i32, i32* %i, align 4
  %idxprom146 = sext i32 %109 to i64
  %110 = load %struct._GPProcInstall*, %struct._GPProcInstall** %proc_install.addr, align 8
  %return_vals147 = getelementptr inbounds %struct._GPProcInstall, %struct._GPProcInstall* %110, i32 0, i32 12
  %111 = load %struct._GPParamDef*, %struct._GPParamDef** %return_vals147, align 8
  %arrayidx148 = getelementptr inbounds %struct._GPParamDef, %struct._GPParamDef* %111, i64 %idxprom146
  %description149 = getelementptr inbounds %struct._GPParamDef, %struct._GPParamDef* %arrayidx148, i32 0, i32 2
  %112 = load i8*, i8** %description149, align 8
  %call150 = call i32 @g_utf8_validate(i8* %112, i64 -1, i8** null)
  %tobool151 = icmp ne i32 %call150, 0
  br i1 %tobool151, label %if.end.153, label %if.then.152

if.then.152:                                      ; preds = %lor.lhs.false.145, %if.else.132
  store i32 0, i32* %valid_utf8, align 4
  br label %if.end.153

if.end.153:                                       ; preds = %if.then.152, %lor.lhs.false.145, %land.lhs.true.139
  br label %if.end.154

if.end.154:                                       ; preds = %if.end.153, %if.then.131
  br label %for.inc.155

for.inc.155:                                      ; preds = %if.end.154
  %113 = load i32, i32* %i, align 4
  %inc156 = add nsw i32 %113, 1
  store i32 %inc156, i32* %i, align 4
  br label %for.cond.118

for.end.157:                                      ; preds = %land.end.125
  br label %if.end.158

if.end.158:                                       ; preds = %for.end.157, %lor.lhs.false.75, %lor.lhs.false.69, %lor.lhs.false.63, %lor.lhs.false.57, %lor.lhs.false.51, %land.lhs.true.46, %lor.lhs.false.43
  %114 = load i32, i32* %null_name, align 4
  %tobool159 = icmp ne i32 %114, 0
  br i1 %tobool159, label %if.then.160, label %if.end.166

if.then.160:                                      ; preds = %if.end.158
  %115 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in.addr, align 8
  %manager161 = getelementptr inbounds %struct._GimpPlugIn, %struct._GimpPlugIn* %115, i32 0, i32 1
  %116 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %manager161, align 8
  %gimp162 = getelementptr inbounds %struct._GimpPlugInManager, %struct._GimpPlugInManager* %116, i32 0, i32 1
  %117 = load %struct._Gimp*, %struct._Gimp** %gimp162, align 8
  %118 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in.addr, align 8
  %119 = bitcast %struct._GimpPlugIn* %118 to i8*
  %call163 = call i8* @gimp_object_get_name(i8* %119)
  %120 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in.addr, align 8
  %prog164 = getelementptr inbounds %struct._GimpPlugIn, %struct._GimpPlugIn* %120, i32 0, i32 2
  %121 = load i8*, i8** %prog164, align 8
  %call165 = call i8* @gimp_filename_to_utf8(i8* %121)
  call void (%struct._Gimp*, %struct._GObject*, i32, i8*, ...) @gimp_message(%struct._Gimp* %117, %struct._GObject* null, i32 2, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.32, i32 0, i32 0), i8* %call163, i8* %call165)
  %122 = load i8*, i8** %canonical, align 8
  call void @g_free(i8* %122)
  br label %return

if.end.166:                                       ; preds = %if.end.158
  %123 = load i32, i32* %valid_utf8, align 4
  %tobool167 = icmp ne i32 %123, 0
  br i1 %tobool167, label %if.end.174, label %if.then.168

if.then.168:                                      ; preds = %if.end.166
  %124 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in.addr, align 8
  %manager169 = getelementptr inbounds %struct._GimpPlugIn, %struct._GimpPlugIn* %124, i32 0, i32 1
  %125 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %manager169, align 8
  %gimp170 = getelementptr inbounds %struct._GimpPlugInManager, %struct._GimpPlugInManager* %125, i32 0, i32 1
  %126 = load %struct._Gimp*, %struct._Gimp** %gimp170, align 8
  %127 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in.addr, align 8
  %128 = bitcast %struct._GimpPlugIn* %127 to i8*
  %call171 = call i8* @gimp_object_get_name(i8* %128)
  %129 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in.addr, align 8
  %prog172 = getelementptr inbounds %struct._GimpPlugIn, %struct._GimpPlugIn* %129, i32 0, i32 2
  %130 = load i8*, i8** %prog172, align 8
  %call173 = call i8* @gimp_filename_to_utf8(i8* %130)
  call void (%struct._Gimp*, %struct._GObject*, i32, i8*, ...) @gimp_message(%struct._Gimp* %126, %struct._GObject* null, i32 2, i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.33, i32 0, i32 0), i8* %call171, i8* %call173)
  %131 = load i8*, i8** %canonical, align 8
  call void @g_free(i8* %131)
  br label %return

if.end.174:                                       ; preds = %if.end.166
  %132 = load %struct._GPProcInstall*, %struct._GPProcInstall** %proc_install.addr, align 8
  %type175 = getelementptr inbounds %struct._GPProcInstall, %struct._GPProcInstall* %132, i32 0, i32 8
  %133 = load i32, i32* %type175, align 4
  switch i32 %133, label %sw.epilog [
    i32 1, label %sw.bb
    i32 2, label %sw.bb
    i32 3, label %sw.bb.179
  ]

sw.bb:                                            ; preds = %if.end.174, %if.end.174
  %134 = load %struct._GPProcInstall*, %struct._GPProcInstall** %proc_install.addr, align 8
  %type176 = getelementptr inbounds %struct._GPProcInstall, %struct._GPProcInstall* %134, i32 0, i32 8
  %135 = load i32, i32* %type176, align 4
  %136 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in.addr, align 8
  %prog177 = getelementptr inbounds %struct._GimpPlugIn, %struct._GimpPlugIn* %136, i32 0, i32 2
  %137 = load i8*, i8** %prog177, align 8
  %call178 = call %struct._GimpProcedure* @gimp_plug_in_procedure_new(i32 %135, i8* %137)
  store %struct._GimpProcedure* %call178, %struct._GimpProcedure** %procedure, align 8
  br label %sw.epilog

sw.bb.179:                                        ; preds = %if.end.174
  %138 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in.addr, align 8
  %call180 = call %struct._GimpProcedure* @gimp_temporary_procedure_new(%struct._GimpPlugIn* %138)
  store %struct._GimpProcedure* %call180, %struct._GimpProcedure** %procedure, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end.174, %sw.bb.179, %sw.bb
  %139 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %140 = bitcast %struct._GimpProcedure* %139 to %struct._GTypeInstance*
  %call181 = call i64 @gimp_plug_in_procedure_get_type() #6
  %call182 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %140, i64 %call181)
  %141 = bitcast %struct._GTypeInstance* %call182 to %struct._GimpPlugInProcedure*
  store %struct._GimpPlugInProcedure* %141, %struct._GimpPlugInProcedure** %proc, align 8
  %call183 = call i64 @time(i64* null) #4
  %142 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %proc, align 8
  %mtime = getelementptr inbounds %struct._GimpPlugInProcedure, %struct._GimpPlugInProcedure* %142, i32 0, i32 12
  store i64 %call183, i64* %mtime, align 8
  %143 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in.addr, align 8
  %call_mode = getelementptr inbounds %struct._GimpPlugIn, %struct._GimpPlugIn* %143, i32 0, i32 3
  %144 = load i32, i32* %call_mode, align 4
  %cmp184 = icmp eq i32 %144, 3
  %conv = zext i1 %cmp184 to i32
  %145 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %proc, align 8
  %installed_during_init = getelementptr inbounds %struct._GimpPlugInProcedure, %struct._GimpPlugInProcedure* %145, i32 0, i32 13
  store i32 %conv, i32* %installed_during_init, align 4
  %146 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %147 = bitcast %struct._GimpProcedure* %146 to %struct._GTypeInstance*
  %call185 = call i64 @gimp_object_get_type() #6
  %call186 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %147, i64 %call185)
  %148 = bitcast %struct._GTypeInstance* %call186 to %struct._GimpObject*
  %149 = load i8*, i8** %canonical, align 8
  call void @gimp_object_take_name(%struct._GimpObject* %148, i8* %149)
  %150 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %151 = load %struct._GPProcInstall*, %struct._GPProcInstall** %proc_install.addr, align 8
  %name187 = getelementptr inbounds %struct._GPProcInstall, %struct._GPProcInstall* %151, i32 0, i32 0
  %152 = load i8*, i8** %name187, align 8
  %153 = load %struct._GPProcInstall*, %struct._GPProcInstall** %proc_install.addr, align 8
  %blurb188 = getelementptr inbounds %struct._GPProcInstall, %struct._GPProcInstall* %153, i32 0, i32 1
  %154 = load i8*, i8** %blurb188, align 8
  %155 = load %struct._GPProcInstall*, %struct._GPProcInstall** %proc_install.addr, align 8
  %help189 = getelementptr inbounds %struct._GPProcInstall, %struct._GPProcInstall* %155, i32 0, i32 2
  %156 = load i8*, i8** %help189, align 8
  %157 = load %struct._GPProcInstall*, %struct._GPProcInstall** %proc_install.addr, align 8
  %author190 = getelementptr inbounds %struct._GPProcInstall, %struct._GPProcInstall* %157, i32 0, i32 3
  %158 = load i8*, i8** %author190, align 8
  %159 = load %struct._GPProcInstall*, %struct._GPProcInstall** %proc_install.addr, align 8
  %copyright191 = getelementptr inbounds %struct._GPProcInstall, %struct._GPProcInstall* %159, i32 0, i32 4
  %160 = load i8*, i8** %copyright191, align 8
  %161 = load %struct._GPProcInstall*, %struct._GPProcInstall** %proc_install.addr, align 8
  %date192 = getelementptr inbounds %struct._GPProcInstall, %struct._GPProcInstall* %161, i32 0, i32 5
  %162 = load i8*, i8** %date192, align 8
  call void @gimp_procedure_set_strings(%struct._GimpProcedure* %150, i8* %152, i8* %154, i8* %156, i8* %158, i8* %160, i8* %162, i8* null)
  %163 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %proc, align 8
  %164 = load %struct._GPProcInstall*, %struct._GPProcInstall** %proc_install.addr, align 8
  %image_types = getelementptr inbounds %struct._GPProcInstall, %struct._GPProcInstall* %164, i32 0, i32 7
  %165 = load i8*, i8** %image_types, align 8
  call void @gimp_plug_in_procedure_set_image_types(%struct._GimpPlugInProcedure* %163, i8* %165)
  store i32 0, i32* %i, align 4
  br label %for.cond.193

for.cond.193:                                     ; preds = %for.inc.213, %sw.epilog
  %166 = load i32, i32* %i, align 4
  %167 = load %struct._GPProcInstall*, %struct._GPProcInstall** %proc_install.addr, align 8
  %nparams194 = getelementptr inbounds %struct._GPProcInstall, %struct._GPProcInstall* %167, i32 0, i32 9
  %168 = load i32, i32* %nparams194, align 4
  %cmp195 = icmp ult i32 %166, %168
  br i1 %cmp195, label %for.body.197, label %for.end.215

for.body.197:                                     ; preds = %for.cond.193
  %169 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in.addr, align 8
  %manager198 = getelementptr inbounds %struct._GimpPlugIn, %struct._GimpPlugIn* %169, i32 0, i32 1
  %170 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %manager198, align 8
  %gimp199 = getelementptr inbounds %struct._GimpPlugInManager, %struct._GimpPlugInManager* %170, i32 0, i32 1
  %171 = load %struct._Gimp*, %struct._Gimp** %gimp199, align 8
  %172 = load i32, i32* %i, align 4
  %idxprom200 = sext i32 %172 to i64
  %173 = load %struct._GPProcInstall*, %struct._GPProcInstall** %proc_install.addr, align 8
  %params201 = getelementptr inbounds %struct._GPProcInstall, %struct._GPProcInstall* %173, i32 0, i32 11
  %174 = load %struct._GPParamDef*, %struct._GPParamDef** %params201, align 8
  %arrayidx202 = getelementptr inbounds %struct._GPParamDef, %struct._GPParamDef* %174, i64 %idxprom200
  %type203 = getelementptr inbounds %struct._GPParamDef, %struct._GPParamDef* %arrayidx202, i32 0, i32 0
  %175 = load i32, i32* %type203, align 4
  %176 = load i32, i32* %i, align 4
  %idxprom204 = sext i32 %176 to i64
  %177 = load %struct._GPProcInstall*, %struct._GPProcInstall** %proc_install.addr, align 8
  %params205 = getelementptr inbounds %struct._GPProcInstall, %struct._GPProcInstall* %177, i32 0, i32 11
  %178 = load %struct._GPParamDef*, %struct._GPParamDef** %params205, align 8
  %arrayidx206 = getelementptr inbounds %struct._GPParamDef, %struct._GPParamDef* %178, i64 %idxprom204
  %name207 = getelementptr inbounds %struct._GPParamDef, %struct._GPParamDef* %arrayidx206, i32 0, i32 1
  %179 = load i8*, i8** %name207, align 8
  %180 = load i32, i32* %i, align 4
  %idxprom208 = sext i32 %180 to i64
  %181 = load %struct._GPProcInstall*, %struct._GPProcInstall** %proc_install.addr, align 8
  %params209 = getelementptr inbounds %struct._GPProcInstall, %struct._GPProcInstall* %181, i32 0, i32 11
  %182 = load %struct._GPParamDef*, %struct._GPParamDef** %params209, align 8
  %arrayidx210 = getelementptr inbounds %struct._GPParamDef, %struct._GPParamDef* %182, i64 %idxprom208
  %description211 = getelementptr inbounds %struct._GPParamDef, %struct._GPParamDef* %arrayidx210, i32 0, i32 2
  %183 = load i8*, i8** %description211, align 8
  %call212 = call %struct._GParamSpec* @gimp_pdb_compat_param_spec(%struct._Gimp* %171, i32 %175, i8* %179, i8* %183)
  store %struct._GParamSpec* %call212, %struct._GParamSpec** %pspec, align 8
  %184 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %185 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec, align 8
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %184, %struct._GParamSpec* %185)
  br label %for.inc.213

for.inc.213:                                      ; preds = %for.body.197
  %186 = load i32, i32* %i, align 4
  %inc214 = add nsw i32 %186, 1
  store i32 %inc214, i32* %i, align 4
  br label %for.cond.193

for.end.215:                                      ; preds = %for.cond.193
  store i32 0, i32* %i, align 4
  br label %for.cond.216

for.cond.216:                                     ; preds = %for.inc.237, %for.end.215
  %187 = load i32, i32* %i, align 4
  %188 = load %struct._GPProcInstall*, %struct._GPProcInstall** %proc_install.addr, align 8
  %nreturn_vals217 = getelementptr inbounds %struct._GPProcInstall, %struct._GPProcInstall* %188, i32 0, i32 10
  %189 = load i32, i32* %nreturn_vals217, align 4
  %cmp218 = icmp ult i32 %187, %189
  br i1 %cmp218, label %for.body.220, label %for.end.239

for.body.220:                                     ; preds = %for.cond.216
  %190 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in.addr, align 8
  %manager222 = getelementptr inbounds %struct._GimpPlugIn, %struct._GimpPlugIn* %190, i32 0, i32 1
  %191 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %manager222, align 8
  %gimp223 = getelementptr inbounds %struct._GimpPlugInManager, %struct._GimpPlugInManager* %191, i32 0, i32 1
  %192 = load %struct._Gimp*, %struct._Gimp** %gimp223, align 8
  %193 = load i32, i32* %i, align 4
  %idxprom224 = sext i32 %193 to i64
  %194 = load %struct._GPProcInstall*, %struct._GPProcInstall** %proc_install.addr, align 8
  %return_vals225 = getelementptr inbounds %struct._GPProcInstall, %struct._GPProcInstall* %194, i32 0, i32 12
  %195 = load %struct._GPParamDef*, %struct._GPParamDef** %return_vals225, align 8
  %arrayidx226 = getelementptr inbounds %struct._GPParamDef, %struct._GPParamDef* %195, i64 %idxprom224
  %type227 = getelementptr inbounds %struct._GPParamDef, %struct._GPParamDef* %arrayidx226, i32 0, i32 0
  %196 = load i32, i32* %type227, align 4
  %197 = load i32, i32* %i, align 4
  %idxprom228 = sext i32 %197 to i64
  %198 = load %struct._GPProcInstall*, %struct._GPProcInstall** %proc_install.addr, align 8
  %return_vals229 = getelementptr inbounds %struct._GPProcInstall, %struct._GPProcInstall* %198, i32 0, i32 12
  %199 = load %struct._GPParamDef*, %struct._GPParamDef** %return_vals229, align 8
  %arrayidx230 = getelementptr inbounds %struct._GPParamDef, %struct._GPParamDef* %199, i64 %idxprom228
  %name231 = getelementptr inbounds %struct._GPParamDef, %struct._GPParamDef* %arrayidx230, i32 0, i32 1
  %200 = load i8*, i8** %name231, align 8
  %201 = load i32, i32* %i, align 4
  %idxprom232 = sext i32 %201 to i64
  %202 = load %struct._GPProcInstall*, %struct._GPProcInstall** %proc_install.addr, align 8
  %return_vals233 = getelementptr inbounds %struct._GPProcInstall, %struct._GPProcInstall* %202, i32 0, i32 12
  %203 = load %struct._GPParamDef*, %struct._GPParamDef** %return_vals233, align 8
  %arrayidx234 = getelementptr inbounds %struct._GPParamDef, %struct._GPParamDef* %203, i64 %idxprom232
  %description235 = getelementptr inbounds %struct._GPParamDef, %struct._GPParamDef* %arrayidx234, i32 0, i32 2
  %204 = load i8*, i8** %description235, align 8
  %call236 = call %struct._GParamSpec* @gimp_pdb_compat_param_spec(%struct._Gimp* %192, i32 %196, i8* %200, i8* %204)
  store %struct._GParamSpec* %call236, %struct._GParamSpec** %pspec221, align 8
  %205 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %206 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec221, align 8
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %205, %struct._GParamSpec* %206)
  br label %for.inc.237

for.inc.237:                                      ; preds = %for.body.220
  %207 = load i32, i32* %i, align 4
  %inc238 = add nsw i32 %207, 1
  store i32 %inc238, i32* %i, align 4
  br label %for.cond.216

for.end.239:                                      ; preds = %for.cond.216
  %208 = load %struct._GPProcInstall*, %struct._GPProcInstall** %proc_install.addr, align 8
  %menu_path240 = getelementptr inbounds %struct._GPProcInstall, %struct._GPProcInstall* %208, i32 0, i32 6
  %209 = load i8*, i8** %menu_path240, align 8
  %tobool241 = icmp ne i8* %209, null
  br i1 %tobool241, label %land.lhs.true.242, label %if.end.264

land.lhs.true.242:                                ; preds = %for.end.239
  %210 = load %struct._GPProcInstall*, %struct._GPProcInstall** %proc_install.addr, align 8
  %menu_path243 = getelementptr inbounds %struct._GPProcInstall, %struct._GPProcInstall* %210, i32 0, i32 6
  %211 = load i8*, i8** %menu_path243, align 8
  %call244 = call i64 @strlen(i8* %211) #7
  %tobool245 = icmp ne i64 %call244, 0
  br i1 %tobool245, label %if.then.246, label %if.end.264

if.then.246:                                      ; preds = %land.lhs.true.242
  %212 = load %struct._GPProcInstall*, %struct._GPProcInstall** %proc_install.addr, align 8
  %menu_path247 = getelementptr inbounds %struct._GPProcInstall, %struct._GPProcInstall* %212, i32 0, i32 6
  %213 = load i8*, i8** %menu_path247, align 8
  %arrayidx248 = getelementptr inbounds i8, i8* %213, i64 0
  %214 = load i8, i8* %arrayidx248, align 1
  %conv249 = sext i8 %214 to i32
  %cmp250 = icmp eq i32 %conv249, 60
  br i1 %cmp250, label %if.then.252, label %if.else.260

if.then.252:                                      ; preds = %if.then.246
  store %struct._GError* null, %struct._GError** %error, align 8
  %215 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %proc, align 8
  %216 = load %struct._GPProcInstall*, %struct._GPProcInstall** %proc_install.addr, align 8
  %menu_path253 = getelementptr inbounds %struct._GPProcInstall, %struct._GPProcInstall* %216, i32 0, i32 6
  %217 = load i8*, i8** %menu_path253, align 8
  %call254 = call i32 @gimp_plug_in_procedure_add_menu_path(%struct._GimpPlugInProcedure* %215, i8* %217, %struct._GError** %error)
  %tobool255 = icmp ne i32 %call254, 0
  br i1 %tobool255, label %if.end.259, label %if.then.256

if.then.256:                                      ; preds = %if.then.252
  %218 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in.addr, align 8
  %manager257 = getelementptr inbounds %struct._GimpPlugIn, %struct._GimpPlugIn* %218, i32 0, i32 1
  %219 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %manager257, align 8
  %gimp258 = getelementptr inbounds %struct._GimpPlugInManager, %struct._GimpPlugInManager* %219, i32 0, i32 1
  %220 = load %struct._Gimp*, %struct._Gimp** %gimp258, align 8
  %221 = load %struct._GError*, %struct._GError** %error, align 8
  %message = getelementptr inbounds %struct._GError, %struct._GError* %221, i32 0, i32 2
  %222 = load i8*, i8** %message, align 8
  call void @gimp_message_literal(%struct._Gimp* %220, %struct._GObject* null, i32 1, i8* %222)
  call void @g_clear_error(%struct._GError** %error)
  br label %if.end.259

if.end.259:                                       ; preds = %if.then.256, %if.then.252
  br label %if.end.263

if.else.260:                                      ; preds = %if.then.246
  %223 = load %struct._GPProcInstall*, %struct._GPProcInstall** %proc_install.addr, align 8
  %menu_path261 = getelementptr inbounds %struct._GPProcInstall, %struct._GPProcInstall* %223, i32 0, i32 6
  %224 = load i8*, i8** %menu_path261, align 8
  %call262 = call noalias i8* @g_strdup(i8* %224)
  %225 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %proc, align 8
  %menu_label = getelementptr inbounds %struct._GimpPlugInProcedure, %struct._GimpPlugInProcedure* %225, i32 0, i32 4
  store i8* %call262, i8** %menu_label, align 8
  br label %if.end.263

if.end.263:                                       ; preds = %if.else.260, %if.end.259
  br label %if.end.264

if.end.264:                                       ; preds = %if.end.263, %land.lhs.true.242, %for.end.239
  %226 = load %struct._GPProcInstall*, %struct._GPProcInstall** %proc_install.addr, align 8
  %type265 = getelementptr inbounds %struct._GPProcInstall, %struct._GPProcInstall* %226, i32 0, i32 8
  %227 = load i32, i32* %type265, align 4
  switch i32 %227, label %sw.epilog.270 [
    i32 1, label %sw.bb.266
    i32 2, label %sw.bb.266
    i32 3, label %sw.bb.267
  ]

sw.bb.266:                                        ; preds = %if.end.264, %if.end.264
  %228 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in.addr, align 8
  %plug_in_def = getelementptr inbounds %struct._GimpPlugIn, %struct._GimpPlugIn* %228, i32 0, i32 17
  %229 = load %struct._GimpPlugInDef*, %struct._GimpPlugInDef** %plug_in_def, align 8
  %230 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %proc, align 8
  call void @gimp_plug_in_def_add_procedure(%struct._GimpPlugInDef* %229, %struct._GimpPlugInProcedure* %230)
  br label %sw.epilog.270

sw.bb.267:                                        ; preds = %if.end.264
  %231 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in.addr, align 8
  %232 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %proc, align 8
  %233 = bitcast %struct._GimpPlugInProcedure* %232 to %struct._GTypeInstance*
  %call268 = call i64 @gimp_temporary_procedure_get_type() #6
  %call269 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %233, i64 %call268)
  %234 = bitcast %struct._GTypeInstance* %call269 to %struct._GimpTemporaryProcedure*
  call void @gimp_plug_in_add_temp_proc(%struct._GimpPlugIn* %231, %struct._GimpTemporaryProcedure* %234)
  br label %sw.epilog.270

sw.epilog.270:                                    ; preds = %if.end.264, %sw.bb.267, %sw.bb.266
  %235 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %proc, align 8
  %236 = bitcast %struct._GimpPlugInProcedure* %235 to i8*
  call void @g_object_unref(i8* %236)
  br label %return

return:                                           ; preds = %sw.epilog.270, %if.then.168, %if.then.160, %if.then.38, %if.else.4, %if.else
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_plug_in_handle_proc_uninstall(%struct._GimpPlugIn* %plug_in, %struct._GPProcUninstall* %proc_uninstall) #0 {
entry:
  %plug_in.addr = alloca %struct._GimpPlugIn*, align 8
  %proc_uninstall.addr = alloca %struct._GPProcUninstall*, align 8
  %proc = alloca %struct._GimpPlugInProcedure*, align 8
  %canonical = alloca i8*, align 8
  store %struct._GimpPlugIn* %plug_in, %struct._GimpPlugIn** %plug_in.addr, align 8
  store %struct._GPProcUninstall* %proc_uninstall, %struct._GPProcUninstall** %proc_uninstall.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GPProcUninstall*, %struct._GPProcUninstall** %proc_uninstall.addr, align 8
  %cmp = icmp ne %struct._GPProcUninstall* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__func__.gimp_plug_in_handle_proc_uninstall, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.34, i32 0, i32 0))
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %do.body.1

do.body.1:                                        ; preds = %do.end
  %1 = load %struct._GPProcUninstall*, %struct._GPProcUninstall** %proc_uninstall.addr, align 8
  %name = getelementptr inbounds %struct._GPProcUninstall, %struct._GPProcUninstall* %1, i32 0, i32 0
  %2 = load i8*, i8** %name, align 8
  %cmp2 = icmp ne i8* %2, null
  br i1 %cmp2, label %if.then.3, label %if.else.4

if.then.3:                                        ; preds = %do.body.1
  br label %if.end.5

if.else.4:                                        ; preds = %do.body.1
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__func__.gimp_plug_in_handle_proc_uninstall, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.35, i32 0, i32 0))
  br label %return

if.end.5:                                         ; preds = %if.then.3
  br label %do.end.6

do.end.6:                                         ; preds = %if.end.5
  %3 = load %struct._GPProcUninstall*, %struct._GPProcUninstall** %proc_uninstall.addr, align 8
  %name7 = getelementptr inbounds %struct._GPProcUninstall, %struct._GPProcUninstall* %3, i32 0, i32 0
  %4 = load i8*, i8** %name7, align 8
  %call = call noalias i8* @gimp_canonicalize_identifier(i8* %4)
  store i8* %call, i8** %canonical, align 8
  %5 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in.addr, align 8
  %temp_procedures = getelementptr inbounds %struct._GimpPlugIn, %struct._GimpPlugIn* %5, i32 0, i32 13
  %6 = load %struct._GSList*, %struct._GSList** %temp_procedures, align 8
  %7 = load i8*, i8** %canonical, align 8
  %call8 = call %struct._GimpPlugInProcedure* @gimp_plug_in_procedure_find(%struct._GSList* %6, i8* %7)
  store %struct._GimpPlugInProcedure* %call8, %struct._GimpPlugInProcedure** %proc, align 8
  %8 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %proc, align 8
  %tobool = icmp ne %struct._GimpPlugInProcedure* %8, null
  br i1 %tobool, label %if.then.9, label %if.end.12

if.then.9:                                        ; preds = %do.end.6
  %9 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in.addr, align 8
  %10 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %proc, align 8
  %11 = bitcast %struct._GimpPlugInProcedure* %10 to %struct._GTypeInstance*
  %call10 = call i64 @gimp_temporary_procedure_get_type() #6
  %call11 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %11, i64 %call10)
  %12 = bitcast %struct._GTypeInstance* %call11 to %struct._GimpTemporaryProcedure*
  call void @gimp_plug_in_remove_temp_proc(%struct._GimpPlugIn* %9, %struct._GimpTemporaryProcedure* %12)
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.9, %do.end.6
  %13 = load i8*, i8** %canonical, align 8
  call void @g_free(i8* %13)
  br label %return

return:                                           ; preds = %if.end.12, %if.else.4, %if.else
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_plug_in_handle_extension_ack(%struct._GimpPlugIn* %plug_in) #0 {
entry:
  %plug_in.addr = alloca %struct._GimpPlugIn*, align 8
  store %struct._GimpPlugIn* %plug_in, %struct._GimpPlugIn** %plug_in.addr, align 8
  %0 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in.addr, align 8
  %ext_main_loop = getelementptr inbounds %struct._GimpPlugIn, %struct._GimpPlugIn* %0, i32 0, i32 14
  %1 = load %struct._GMainLoop*, %struct._GMainLoop** %ext_main_loop, align 8
  %tobool = icmp ne %struct._GMainLoop* %1, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in.addr, align 8
  %ext_main_loop1 = getelementptr inbounds %struct._GimpPlugIn, %struct._GimpPlugIn* %2, i32 0, i32 14
  %3 = load %struct._GMainLoop*, %struct._GMainLoop** %ext_main_loop1, align 8
  call void @g_main_loop_quit(%struct._GMainLoop* %3)
  br label %if.end

if.else:                                          ; preds = %entry
  %4 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in.addr, align 8
  %manager = getelementptr inbounds %struct._GimpPlugIn, %struct._GimpPlugIn* %4, i32 0, i32 1
  %5 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %manager, align 8
  %gimp = getelementptr inbounds %struct._GimpPlugInManager, %struct._GimpPlugInManager* %5, i32 0, i32 1
  %6 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %7 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in.addr, align 8
  %8 = bitcast %struct._GimpPlugIn* %7 to i8*
  %call = call i8* @gimp_object_get_name(i8* %8)
  %9 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in.addr, align 8
  %prog = getelementptr inbounds %struct._GimpPlugIn, %struct._GimpPlugIn* %9, i32 0, i32 2
  %10 = load i8*, i8** %prog, align 8
  %call2 = call i8* @gimp_filename_to_utf8(i8* %10)
  call void (%struct._Gimp*, %struct._GObject*, i32, i8*, ...) @gimp_message(%struct._Gimp* %6, %struct._GObject* null, i32 2, i8* getelementptr inbounds ([115 x i8], [115 x i8]* @.str.36, i32 0, i32 0), i8* %call, i8* %call2)
  %11 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in.addr, align 8
  call void @gimp_plug_in_close(%struct._GimpPlugIn* %11, i32 1)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_plug_in_handle_has_init(%struct._GimpPlugIn* %plug_in) #0 {
entry:
  %plug_in.addr = alloca %struct._GimpPlugIn*, align 8
  store %struct._GimpPlugIn* %plug_in, %struct._GimpPlugIn** %plug_in.addr, align 8
  %0 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in.addr, align 8
  %call_mode = getelementptr inbounds %struct._GimpPlugIn, %struct._GimpPlugIn* %0, i32 0, i32 3
  %1 = load i32, i32* %call_mode, align 4
  %cmp = icmp eq i32 %1, 2
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in.addr, align 8
  %plug_in_def = getelementptr inbounds %struct._GimpPlugIn, %struct._GimpPlugIn* %2, i32 0, i32 17
  %3 = load %struct._GimpPlugInDef*, %struct._GimpPlugInDef** %plug_in_def, align 8
  call void @gimp_plug_in_def_set_has_init(%struct._GimpPlugInDef* %3, i32 1)
  br label %if.end

if.else:                                          ; preds = %entry
  %4 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in.addr, align 8
  %manager = getelementptr inbounds %struct._GimpPlugIn, %struct._GimpPlugIn* %4, i32 0, i32 1
  %5 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %manager, align 8
  %gimp = getelementptr inbounds %struct._GimpPlugInManager, %struct._GimpPlugInManager* %5, i32 0, i32 1
  %6 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %7 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in.addr, align 8
  %8 = bitcast %struct._GimpPlugIn* %7 to i8*
  %call = call i8* @gimp_object_get_name(i8* %8)
  %9 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in.addr, align 8
  %prog = getelementptr inbounds %struct._GimpPlugIn, %struct._GimpPlugIn* %9, i32 0, i32 2
  %10 = load i8*, i8** %prog, align 8
  %call1 = call i8* @gimp_filename_to_utf8(i8* %10)
  call void (%struct._Gimp*, %struct._GObject*, i32, i8*, ...) @gimp_message(%struct._Gimp* %6, %struct._GObject* null, i32 2, i8* getelementptr inbounds ([91 x i8], [91 x i8]* @.str.37, i32 0, i32 0), i8* %call, i8* %call1)
  %11 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in.addr, align 8
  call void @gimp_plug_in_close(%struct._GimpPlugIn* %11, i32 1)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_plug_in_handle_tile_put(%struct._GimpPlugIn* %plug_in, %struct._GPTileReq* %request) #0 {
entry:
  %plug_in.addr = alloca %struct._GimpPlugIn*, align 8
  %request.addr = alloca %struct._GPTileReq*, align 8
  %tile_data = alloca %struct._GPTileData, align 8
  %tile_info = alloca %struct._GPTileData*, align 8
  %msg = alloca %struct._GimpWireMessage, align 8
  %drawable = alloca %struct._GimpDrawable*, align 8
  %tm = alloca %struct._TileManager*, align 8
  %tile = alloca %struct._Tile*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpPlugIn* %plug_in, %struct._GimpPlugIn** %plug_in.addr, align 8
  store %struct._GPTileReq* %request, %struct._GPTileReq** %request.addr, align 8
  %drawable_ID = getelementptr inbounds %struct._GPTileData, %struct._GPTileData* %tile_data, i32 0, i32 0
  store i32 -1, i32* %drawable_ID, align 4
  %tile_num = getelementptr inbounds %struct._GPTileData, %struct._GPTileData* %tile_data, i32 0, i32 1
  store i32 0, i32* %tile_num, align 4
  %shadow = getelementptr inbounds %struct._GPTileData, %struct._GPTileData* %tile_data, i32 0, i32 2
  store i32 0, i32* %shadow, align 4
  %bpp = getelementptr inbounds %struct._GPTileData, %struct._GPTileData* %tile_data, i32 0, i32 3
  store i32 0, i32* %bpp, align 4
  %width = getelementptr inbounds %struct._GPTileData, %struct._GPTileData* %tile_data, i32 0, i32 4
  store i32 0, i32* %width, align 4
  %height = getelementptr inbounds %struct._GPTileData, %struct._GPTileData* %tile_data, i32 0, i32 5
  store i32 0, i32* %height, align 4
  %0 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in.addr, align 8
  %manager = getelementptr inbounds %struct._GimpPlugIn, %struct._GimpPlugIn* %0, i32 0, i32 1
  %1 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %manager, align 8
  %shm = getelementptr inbounds %struct._GimpPlugInManager, %struct._GimpPlugInManager* %1, i32 0, i32 15
  %2 = load %struct._GimpPlugInShm*, %struct._GimpPlugInShm** %shm, align 8
  %cmp = icmp ne %struct._GimpPlugInShm* %2, null
  %conv = zext i1 %cmp to i32
  %use_shm = getelementptr inbounds %struct._GPTileData, %struct._GPTileData* %tile_data, i32 0, i32 6
  store i32 %conv, i32* %use_shm, align 4
  %data = getelementptr inbounds %struct._GPTileData, %struct._GPTileData* %tile_data, i32 0, i32 7
  store i8* null, i8** %data, align 8
  %3 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in.addr, align 8
  %my_write = getelementptr inbounds %struct._GimpPlugIn, %struct._GimpPlugIn* %3, i32 0, i32 7
  %4 = load %struct._GIOChannel*, %struct._GIOChannel** %my_write, align 8
  %5 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in.addr, align 8
  %6 = bitcast %struct._GimpPlugIn* %5 to i8*
  %call = call i32 @gp_tile_data_write(%struct._GIOChannel* %4, %struct._GPTileData* %tile_data, i8* %6)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %7 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in.addr, align 8
  %manager1 = getelementptr inbounds %struct._GimpPlugIn, %struct._GimpPlugIn* %7, i32 0, i32 1
  %8 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %manager1, align 8
  %gimp = getelementptr inbounds %struct._GimpPlugInManager, %struct._GimpPlugInManager* %8, i32 0, i32 1
  %9 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  call void (%struct._Gimp*, %struct._GObject*, i32, i8*, ...) @gimp_message(%struct._Gimp* %9, %struct._GObject* null, i32 2, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.gimp_plug_in_handle_tile_put, i32 0, i32 0))
  %10 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in.addr, align 8
  call void @gimp_plug_in_close(%struct._GimpPlugIn* %10, i32 1)
  br label %if.end.117

if.end:                                           ; preds = %entry
  %11 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in.addr, align 8
  %my_read = getelementptr inbounds %struct._GimpPlugIn, %struct._GimpPlugIn* %11, i32 0, i32 6
  %12 = load %struct._GIOChannel*, %struct._GIOChannel** %my_read, align 8
  %13 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in.addr, align 8
  %14 = bitcast %struct._GimpPlugIn* %13 to i8*
  %call2 = call i32 @gimp_wire_read_msg(%struct._GIOChannel* %12, %struct._GimpWireMessage* %msg, i8* %14)
  %tobool3 = icmp ne i32 %call2, 0
  br i1 %tobool3, label %if.end.7, label %if.then.4

if.then.4:                                        ; preds = %if.end
  %15 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in.addr, align 8
  %manager5 = getelementptr inbounds %struct._GimpPlugIn, %struct._GimpPlugIn* %15, i32 0, i32 1
  %16 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %manager5, align 8
  %gimp6 = getelementptr inbounds %struct._GimpPlugInManager, %struct._GimpPlugInManager* %16, i32 0, i32 1
  %17 = load %struct._Gimp*, %struct._Gimp** %gimp6, align 8
  call void (%struct._Gimp*, %struct._GObject*, i32, i8*, ...) @gimp_message(%struct._Gimp* %17, %struct._GObject* null, i32 2, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.gimp_plug_in_handle_tile_put, i32 0, i32 0))
  %18 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in.addr, align 8
  call void @gimp_plug_in_close(%struct._GimpPlugIn* %18, i32 1)
  br label %if.end.117

if.end.7:                                         ; preds = %if.end
  %type = getelementptr inbounds %struct._GimpWireMessage, %struct._GimpWireMessage* %msg, i32 0, i32 0
  %19 = load i32, i32* %type, align 4
  %cmp8 = icmp ne i32 %19, 4
  br i1 %cmp8, label %if.then.10, label %if.end.14

if.then.10:                                       ; preds = %if.end.7
  %20 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in.addr, align 8
  %manager11 = getelementptr inbounds %struct._GimpPlugIn, %struct._GimpPlugIn* %20, i32 0, i32 1
  %21 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %manager11, align 8
  %gimp12 = getelementptr inbounds %struct._GimpPlugInManager, %struct._GimpPlugInManager* %21, i32 0, i32 1
  %22 = load %struct._Gimp*, %struct._Gimp** %gimp12, align 8
  %type13 = getelementptr inbounds %struct._GimpWireMessage, %struct._GimpWireMessage* %msg, i32 0, i32 0
  %23 = load i32, i32* %type13, align 4
  call void (%struct._Gimp*, %struct._GObject*, i32, i8*, ...) @gimp_message(%struct._Gimp* %22, %struct._GObject* null, i32 2, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.10, i32 0, i32 0), i32 %23)
  %24 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in.addr, align 8
  call void @gimp_plug_in_close(%struct._GimpPlugIn* %24, i32 1)
  br label %if.end.117

if.end.14:                                        ; preds = %if.end.7
  %data15 = getelementptr inbounds %struct._GimpWireMessage, %struct._GimpWireMessage* %msg, i32 0, i32 1
  %25 = load i8*, i8** %data15, align 8
  %26 = bitcast i8* %25 to %struct._GPTileData*
  store %struct._GPTileData* %26, %struct._GPTileData** %tile_info, align 8
  %27 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in.addr, align 8
  %manager16 = getelementptr inbounds %struct._GimpPlugIn, %struct._GimpPlugIn* %27, i32 0, i32 1
  %28 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %manager16, align 8
  %gimp17 = getelementptr inbounds %struct._GimpPlugInManager, %struct._GimpPlugInManager* %28, i32 0, i32 1
  %29 = load %struct._Gimp*, %struct._Gimp** %gimp17, align 8
  %30 = load %struct._GPTileData*, %struct._GPTileData** %tile_info, align 8
  %drawable_ID18 = getelementptr inbounds %struct._GPTileData, %struct._GPTileData* %30, i32 0, i32 0
  %31 = load i32, i32* %drawable_ID18, align 4
  %call19 = call %struct._GimpItem* @gimp_item_get_by_ID(%struct._Gimp* %29, i32 %31)
  %32 = bitcast %struct._GimpItem* %call19 to %struct._GimpDrawable*
  store %struct._GimpDrawable* %32, %struct._GimpDrawable** %drawable, align 8
  %33 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %34 = bitcast %struct._GimpDrawable* %33 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %34, %struct._GTypeInstance** %__inst, align 8
  %call20 = call i64 @gimp_drawable_get_type() #6
  store i64 %call20, i64* %__t, align 8
  %35 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool21 = icmp ne %struct._GTypeInstance* %35, null
  br i1 %tobool21, label %if.else, label %if.then.22

if.then.22:                                       ; preds = %if.end.14
  store i32 0, i32* %__r, align 4
  br label %if.end.31

if.else:                                          ; preds = %if.end.14
  %36 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %36, i32 0, i32 0
  %37 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool23 = icmp ne %struct._GTypeClass* %37, null
  br i1 %tobool23, label %land.lhs.true, label %if.else.28

land.lhs.true:                                    ; preds = %if.else
  %38 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class24 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %38, i32 0, i32 0
  %39 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class24, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %39, i32 0, i32 0
  %40 = load i64, i64* %g_type, align 8
  %41 = load i64, i64* %__t, align 8
  %cmp25 = icmp eq i64 %40, %41
  br i1 %cmp25, label %if.then.27, label %if.else.28

if.then.27:                                       ; preds = %land.lhs.true
  store i32 1, i32* %__r, align 4
  br label %if.end.30

if.else.28:                                       ; preds = %land.lhs.true, %if.else
  %42 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %43 = load i64, i64* %__t, align 8
  %call29 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %42, i64 %43) #7
  store i32 %call29, i32* %__r, align 4
  br label %if.end.30

if.end.30:                                        ; preds = %if.else.28, %if.then.27
  br label %if.end.31

if.end.31:                                        ; preds = %if.end.30, %if.then.22
  %44 = load i32, i32* %__r, align 4
  store i32 %44, i32* %tmp
  %45 = load i32, i32* %tmp
  %tobool32 = icmp ne i32 %45, 0
  br i1 %tobool32, label %if.else.39, label %if.then.33

if.then.33:                                       ; preds = %if.end.31
  %46 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in.addr, align 8
  %manager34 = getelementptr inbounds %struct._GimpPlugIn, %struct._GimpPlugIn* %46, i32 0, i32 1
  %47 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %manager34, align 8
  %gimp35 = getelementptr inbounds %struct._GimpPlugInManager, %struct._GimpPlugInManager* %47, i32 0, i32 1
  %48 = load %struct._Gimp*, %struct._Gimp** %gimp35, align 8
  %49 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in.addr, align 8
  %50 = bitcast %struct._GimpPlugIn* %49 to i8*
  %call36 = call i8* @gimp_object_get_name(i8* %50)
  %51 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in.addr, align 8
  %prog = getelementptr inbounds %struct._GimpPlugIn, %struct._GimpPlugIn* %51, i32 0, i32 2
  %52 = load i8*, i8** %prog, align 8
  %call37 = call i8* @gimp_filename_to_utf8(i8* %52)
  %53 = load %struct._GPTileData*, %struct._GPTileData** %tile_info, align 8
  %drawable_ID38 = getelementptr inbounds %struct._GPTileData, %struct._GPTileData* %53, i32 0, i32 0
  %54 = load i32, i32* %drawable_ID38, align 4
  call void (%struct._Gimp*, %struct._GObject*, i32, i8*, ...) @gimp_message(%struct._Gimp* %48, %struct._GObject* null, i32 2, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.11, i32 0, i32 0), i8* %call36, i8* %call37, i32 %54)
  %55 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in.addr, align 8
  call void @gimp_plug_in_close(%struct._GimpPlugIn* %55, i32 1)
  br label %if.end.117

if.else.39:                                       ; preds = %if.end.31
  %56 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %57 = bitcast %struct._GimpDrawable* %56 to %struct._GTypeInstance*
  %call40 = call i64 @gimp_item_get_type() #6
  %call41 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %57, i64 %call40)
  %58 = bitcast %struct._GTypeInstance* %call41 to %struct._GimpItem*
  %call42 = call i32 @gimp_item_is_removed(%struct._GimpItem* %58)
  %tobool43 = icmp ne i32 %call42, 0
  br i1 %tobool43, label %if.then.44, label %if.end.51

if.then.44:                                       ; preds = %if.else.39
  %59 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in.addr, align 8
  %manager45 = getelementptr inbounds %struct._GimpPlugIn, %struct._GimpPlugIn* %59, i32 0, i32 1
  %60 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %manager45, align 8
  %gimp46 = getelementptr inbounds %struct._GimpPlugInManager, %struct._GimpPlugInManager* %60, i32 0, i32 1
  %61 = load %struct._Gimp*, %struct._Gimp** %gimp46, align 8
  %62 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in.addr, align 8
  %63 = bitcast %struct._GimpPlugIn* %62 to i8*
  %call47 = call i8* @gimp_object_get_name(i8* %63)
  %64 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in.addr, align 8
  %prog48 = getelementptr inbounds %struct._GimpPlugIn, %struct._GimpPlugIn* %64, i32 0, i32 2
  %65 = load i8*, i8** %prog48, align 8
  %call49 = call i8* @gimp_filename_to_utf8(i8* %65)
  %66 = load %struct._GPTileData*, %struct._GPTileData** %tile_info, align 8
  %drawable_ID50 = getelementptr inbounds %struct._GPTileData, %struct._GPTileData* %66, i32 0, i32 0
  %67 = load i32, i32* %drawable_ID50, align 4
  call void (%struct._Gimp*, %struct._GObject*, i32, i8*, ...) @gimp_message(%struct._Gimp* %61, %struct._GObject* null, i32 2, i8* getelementptr inbounds ([91 x i8], [91 x i8]* @.str.12, i32 0, i32 0), i8* %call47, i8* %call49, i32 %67)
  %68 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in.addr, align 8
  call void @gimp_plug_in_close(%struct._GimpPlugIn* %68, i32 1)
  br label %if.end.117

if.end.51:                                        ; preds = %if.else.39
  br label %if.end.52

if.end.52:                                        ; preds = %if.end.51
  %69 = load %struct._GPTileData*, %struct._GPTileData** %tile_info, align 8
  %shadow53 = getelementptr inbounds %struct._GPTileData, %struct._GPTileData* %69, i32 0, i32 2
  %70 = load i32, i32* %shadow53, align 4
  %tobool54 = icmp ne i32 %70, 0
  br i1 %tobool54, label %if.then.55, label %if.else.58

if.then.55:                                       ; preds = %if.end.52
  %71 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %call56 = call %struct._TileManager* @gimp_drawable_get_shadow_tiles(%struct._GimpDrawable* %71)
  store %struct._TileManager* %call56, %struct._TileManager** %tm, align 8
  %72 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in.addr, align 8
  %73 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %call57 = call i32 @gimp_plug_in_cleanup_add_shadow(%struct._GimpPlugIn* %72, %struct._GimpDrawable* %73)
  br label %if.end.85

if.else.58:                                       ; preds = %if.end.52
  %74 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %75 = bitcast %struct._GimpDrawable* %74 to %struct._GTypeInstance*
  %call59 = call i64 @gimp_item_get_type() #6
  %call60 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %75, i64 %call59)
  %76 = bitcast %struct._GTypeInstance* %call60 to %struct._GimpItem*
  %call61 = call i32 @gimp_item_is_content_locked(%struct._GimpItem* %76)
  %tobool62 = icmp ne i32 %call61, 0
  br i1 %tobool62, label %if.then.63, label %if.else.70

if.then.63:                                       ; preds = %if.else.58
  %77 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in.addr, align 8
  %manager64 = getelementptr inbounds %struct._GimpPlugIn, %struct._GimpPlugIn* %77, i32 0, i32 1
  %78 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %manager64, align 8
  %gimp65 = getelementptr inbounds %struct._GimpPlugInManager, %struct._GimpPlugInManager* %78, i32 0, i32 1
  %79 = load %struct._Gimp*, %struct._Gimp** %gimp65, align 8
  %80 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in.addr, align 8
  %81 = bitcast %struct._GimpPlugIn* %80 to i8*
  %call66 = call i8* @gimp_object_get_name(i8* %81)
  %82 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in.addr, align 8
  %prog67 = getelementptr inbounds %struct._GimpPlugIn, %struct._GimpPlugIn* %82, i32 0, i32 2
  %83 = load i8*, i8** %prog67, align 8
  %call68 = call i8* @gimp_filename_to_utf8(i8* %83)
  %84 = load %struct._GPTileData*, %struct._GPTileData** %tile_info, align 8
  %drawable_ID69 = getelementptr inbounds %struct._GPTileData, %struct._GPTileData* %84, i32 0, i32 0
  %85 = load i32, i32* %drawable_ID69, align 4
  call void (%struct._Gimp*, %struct._GObject*, i32, i8*, ...) @gimp_message(%struct._Gimp* %79, %struct._GObject* null, i32 2, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.13, i32 0, i32 0), i8* %call66, i8* %call68, i32 %85)
  %86 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in.addr, align 8
  call void @gimp_plug_in_close(%struct._GimpPlugIn* %86, i32 1)
  br label %if.end.117

if.else.70:                                       ; preds = %if.else.58
  %87 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %88 = bitcast %struct._GimpDrawable* %87 to %struct._GTypeInstance*
  %call71 = call i64 @gimp_viewable_get_type() #6
  %call72 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %88, i64 %call71)
  %89 = bitcast %struct._GTypeInstance* %call72 to %struct._GimpViewable*
  %call73 = call %struct._GimpContainer* @gimp_viewable_get_children(%struct._GimpViewable* %89)
  %tobool74 = icmp ne %struct._GimpContainer* %call73, null
  br i1 %tobool74, label %if.then.75, label %if.end.82

if.then.75:                                       ; preds = %if.else.70
  %90 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in.addr, align 8
  %manager76 = getelementptr inbounds %struct._GimpPlugIn, %struct._GimpPlugIn* %90, i32 0, i32 1
  %91 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %manager76, align 8
  %gimp77 = getelementptr inbounds %struct._GimpPlugInManager, %struct._GimpPlugInManager* %91, i32 0, i32 1
  %92 = load %struct._Gimp*, %struct._Gimp** %gimp77, align 8
  %93 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in.addr, align 8
  %94 = bitcast %struct._GimpPlugIn* %93 to i8*
  %call78 = call i8* @gimp_object_get_name(i8* %94)
  %95 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in.addr, align 8
  %prog79 = getelementptr inbounds %struct._GimpPlugIn, %struct._GimpPlugIn* %95, i32 0, i32 2
  %96 = load i8*, i8** %prog79, align 8
  %call80 = call i8* @gimp_filename_to_utf8(i8* %96)
  %97 = load %struct._GPTileData*, %struct._GPTileData** %tile_info, align 8
  %drawable_ID81 = getelementptr inbounds %struct._GPTileData, %struct._GPTileData* %97, i32 0, i32 0
  %98 = load i32, i32* %drawable_ID81, align 4
  call void (%struct._Gimp*, %struct._GObject*, i32, i8*, ...) @gimp_message(%struct._Gimp* %92, %struct._GObject* null, i32 2, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.14, i32 0, i32 0), i8* %call78, i8* %call80, i32 %98)
  %99 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in.addr, align 8
  call void @gimp_plug_in_close(%struct._GimpPlugIn* %99, i32 1)
  br label %if.end.117

if.end.82:                                        ; preds = %if.else.70
  br label %if.end.83

if.end.83:                                        ; preds = %if.end.82
  %100 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %call84 = call %struct._TileManager* @gimp_drawable_get_tiles(%struct._GimpDrawable* %100)
  store %struct._TileManager* %call84, %struct._TileManager** %tm, align 8
  br label %if.end.85

if.end.85:                                        ; preds = %if.end.83, %if.then.55
  %101 = load %struct._TileManager*, %struct._TileManager** %tm, align 8
  %102 = load %struct._GPTileData*, %struct._GPTileData** %tile_info, align 8
  %tile_num86 = getelementptr inbounds %struct._GPTileData, %struct._GPTileData* %102, i32 0, i32 1
  %103 = load i32, i32* %tile_num86, align 4
  %call87 = call %struct._Tile* @tile_manager_get(%struct._TileManager* %101, i32 %103, i32 1, i32 1)
  store %struct._Tile* %call87, %struct._Tile** %tile, align 8
  %104 = load %struct._Tile*, %struct._Tile** %tile, align 8
  %tobool88 = icmp ne %struct._Tile* %104, null
  br i1 %tobool88, label %if.end.95, label %if.then.89

if.then.89:                                       ; preds = %if.end.85
  %105 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in.addr, align 8
  %manager90 = getelementptr inbounds %struct._GimpPlugIn, %struct._GimpPlugIn* %105, i32 0, i32 1
  %106 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %manager90, align 8
  %gimp91 = getelementptr inbounds %struct._GimpPlugInManager, %struct._GimpPlugInManager* %106, i32 0, i32 1
  %107 = load %struct._Gimp*, %struct._Gimp** %gimp91, align 8
  %108 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in.addr, align 8
  %109 = bitcast %struct._GimpPlugIn* %108 to i8*
  %call92 = call i8* @gimp_object_get_name(i8* %109)
  %110 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in.addr, align 8
  %prog93 = getelementptr inbounds %struct._GimpPlugIn, %struct._GimpPlugIn* %110, i32 0, i32 2
  %111 = load i8*, i8** %prog93, align 8
  %call94 = call i8* @gimp_filename_to_utf8(i8* %111)
  call void (%struct._Gimp*, %struct._GObject*, i32, i8*, ...) @gimp_message(%struct._Gimp* %107, %struct._GObject* null, i32 2, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.15, i32 0, i32 0), i8* %call92, i8* %call94)
  %112 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in.addr, align 8
  call void @gimp_plug_in_close(%struct._GimpPlugIn* %112, i32 1)
  br label %if.end.117

if.end.95:                                        ; preds = %if.end.85
  %use_shm96 = getelementptr inbounds %struct._GPTileData, %struct._GPTileData* %tile_data, i32 0, i32 6
  %113 = load i32, i32* %use_shm96, align 4
  %tobool97 = icmp ne i32 %113, 0
  br i1 %tobool97, label %if.then.98, label %if.else.105

if.then.98:                                       ; preds = %if.end.95
  %114 = load %struct._Tile*, %struct._Tile** %tile, align 8
  %call99 = call i8* @tile_data_pointer(%struct._Tile* %114, i32 0, i32 0)
  %115 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in.addr, align 8
  %manager100 = getelementptr inbounds %struct._GimpPlugIn, %struct._GimpPlugIn* %115, i32 0, i32 1
  %116 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %manager100, align 8
  %shm101 = getelementptr inbounds %struct._GimpPlugInManager, %struct._GimpPlugInManager* %116, i32 0, i32 15
  %117 = load %struct._GimpPlugInShm*, %struct._GimpPlugInShm** %shm101, align 8
  %call102 = call i8* @gimp_plug_in_shm_get_addr(%struct._GimpPlugInShm* %117)
  %118 = load %struct._Tile*, %struct._Tile** %tile, align 8
  %call103 = call i32 @tile_size(%struct._Tile* %118)
  %conv104 = sext i32 %call103 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %call99, i8* %call102, i64 %conv104, i32 1, i1 false)
  br label %if.end.110

if.else.105:                                      ; preds = %if.end.95
  %119 = load %struct._Tile*, %struct._Tile** %tile, align 8
  %call106 = call i8* @tile_data_pointer(%struct._Tile* %119, i32 0, i32 0)
  %120 = load %struct._GPTileData*, %struct._GPTileData** %tile_info, align 8
  %data107 = getelementptr inbounds %struct._GPTileData, %struct._GPTileData* %120, i32 0, i32 7
  %121 = load i8*, i8** %data107, align 8
  %122 = load %struct._Tile*, %struct._Tile** %tile, align 8
  %call108 = call i32 @tile_size(%struct._Tile* %122)
  %conv109 = sext i32 %call108 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %call106, i8* %121, i64 %conv109, i32 1, i1 false)
  br label %if.end.110

if.end.110:                                       ; preds = %if.else.105, %if.then.98
  %123 = load %struct._Tile*, %struct._Tile** %tile, align 8
  call void @tile_release(%struct._Tile* %123, i32 1)
  call void @gimp_wire_destroy(%struct._GimpWireMessage* %msg)
  %124 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in.addr, align 8
  %my_write111 = getelementptr inbounds %struct._GimpPlugIn, %struct._GimpPlugIn* %124, i32 0, i32 7
  %125 = load %struct._GIOChannel*, %struct._GIOChannel** %my_write111, align 8
  %126 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in.addr, align 8
  %127 = bitcast %struct._GimpPlugIn* %126 to i8*
  %call112 = call i32 @gp_tile_ack_write(%struct._GIOChannel* %125, i8* %127)
  %tobool113 = icmp ne i32 %call112, 0
  br i1 %tobool113, label %if.end.117, label %if.then.114

if.then.114:                                      ; preds = %if.end.110
  %128 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in.addr, align 8
  %manager115 = getelementptr inbounds %struct._GimpPlugIn, %struct._GimpPlugIn* %128, i32 0, i32 1
  %129 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %manager115, align 8
  %gimp116 = getelementptr inbounds %struct._GimpPlugInManager, %struct._GimpPlugInManager* %129, i32 0, i32 1
  %130 = load %struct._Gimp*, %struct._Gimp** %gimp116, align 8
  call void (%struct._Gimp*, %struct._GObject*, i32, i8*, ...) @gimp_message(%struct._Gimp* %130, %struct._GObject* null, i32 2, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.gimp_plug_in_handle_tile_put, i32 0, i32 0))
  %131 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in.addr, align 8
  call void @gimp_plug_in_close(%struct._GimpPlugIn* %131, i32 1)
  br label %if.end.117

if.end.117:                                       ; preds = %if.then, %if.then.4, %if.then.10, %if.then.33, %if.then.44, %if.then.63, %if.then.75, %if.then.89, %if.then.114, %if.end.110
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_plug_in_handle_tile_get(%struct._GimpPlugIn* %plug_in, %struct._GPTileReq* %request) #0 {
entry:
  %plug_in.addr = alloca %struct._GimpPlugIn*, align 8
  %request.addr = alloca %struct._GPTileReq*, align 8
  %tile_data = alloca %struct._GPTileData, align 8
  %msg = alloca %struct._GimpWireMessage, align 8
  %drawable = alloca %struct._GimpDrawable*, align 8
  %tm = alloca %struct._TileManager*, align 8
  %tile = alloca %struct._Tile*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpPlugIn* %plug_in, %struct._GimpPlugIn** %plug_in.addr, align 8
  store %struct._GPTileReq* %request, %struct._GPTileReq** %request.addr, align 8
  %0 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in.addr, align 8
  %manager = getelementptr inbounds %struct._GimpPlugIn, %struct._GimpPlugIn* %0, i32 0, i32 1
  %1 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %manager, align 8
  %gimp = getelementptr inbounds %struct._GimpPlugInManager, %struct._GimpPlugInManager* %1, i32 0, i32 1
  %2 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %3 = load %struct._GPTileReq*, %struct._GPTileReq** %request.addr, align 8
  %drawable_ID = getelementptr inbounds %struct._GPTileReq, %struct._GPTileReq* %3, i32 0, i32 0
  %4 = load i32, i32* %drawable_ID, align 4
  %call = call %struct._GimpItem* @gimp_item_get_by_ID(%struct._Gimp* %2, i32 %4)
  %5 = bitcast %struct._GimpItem* %call to %struct._GimpDrawable*
  store %struct._GimpDrawable* %5, %struct._GimpDrawable** %drawable, align 8
  %6 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %7 = bitcast %struct._GimpDrawable* %6 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %7, %struct._GTypeInstance** %__inst, align 8
  %call1 = call i64 @gimp_drawable_get_type() #6
  store i64 %call1, i64* %__t, align 8
  %8 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool = icmp ne %struct._GTypeInstance* %8, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %__r, align 4
  br label %if.end.7

if.else:                                          ; preds = %entry
  %9 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %9, i32 0, i32 0
  %10 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool2 = icmp ne %struct._GTypeClass* %10, null
  br i1 %tobool2, label %land.lhs.true, label %if.else.5

land.lhs.true:                                    ; preds = %if.else
  %11 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class3 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %11, i32 0, i32 0
  %12 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class3, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %12, i32 0, i32 0
  %13 = load i64, i64* %g_type, align 8
  %14 = load i64, i64* %__t, align 8
  %cmp = icmp eq i64 %13, %14
  br i1 %cmp, label %if.then.4, label %if.else.5

if.then.4:                                        ; preds = %land.lhs.true
  store i32 1, i32* %__r, align 4
  br label %if.end

if.else.5:                                        ; preds = %land.lhs.true, %if.else
  %15 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %16 = load i64, i64* %__t, align 8
  %call6 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %15, i64 %16) #7
  store i32 %call6, i32* %__r, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.5, %if.then.4
  br label %if.end.7

if.end.7:                                         ; preds = %if.end, %if.then
  %17 = load i32, i32* %__r, align 4
  store i32 %17, i32* %tmp
  %18 = load i32, i32* %tmp
  %tobool8 = icmp ne i32 %18, 0
  br i1 %tobool8, label %if.else.15, label %if.then.9

if.then.9:                                        ; preds = %if.end.7
  %19 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in.addr, align 8
  %manager10 = getelementptr inbounds %struct._GimpPlugIn, %struct._GimpPlugIn* %19, i32 0, i32 1
  %20 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %manager10, align 8
  %gimp11 = getelementptr inbounds %struct._GimpPlugInManager, %struct._GimpPlugInManager* %20, i32 0, i32 1
  %21 = load %struct._Gimp*, %struct._Gimp** %gimp11, align 8
  %22 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in.addr, align 8
  %23 = bitcast %struct._GimpPlugIn* %22 to i8*
  %call12 = call i8* @gimp_object_get_name(i8* %23)
  %24 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in.addr, align 8
  %prog = getelementptr inbounds %struct._GimpPlugIn, %struct._GimpPlugIn* %24, i32 0, i32 2
  %25 = load i8*, i8** %prog, align 8
  %call13 = call i8* @gimp_filename_to_utf8(i8* %25)
  %26 = load %struct._GPTileReq*, %struct._GPTileReq** %request.addr, align 8
  %drawable_ID14 = getelementptr inbounds %struct._GPTileReq, %struct._GPTileReq* %26, i32 0, i32 0
  %27 = load i32, i32* %drawable_ID14, align 4
  call void (%struct._Gimp*, %struct._GObject*, i32, i8*, ...) @gimp_message(%struct._Gimp* %21, %struct._GObject* null, i32 2, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.16, i32 0, i32 0), i8* %call12, i8* %call13, i32 %27)
  %28 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in.addr, align 8
  call void @gimp_plug_in_close(%struct._GimpPlugIn* %28, i32 1)
  br label %return

if.else.15:                                       ; preds = %if.end.7
  %29 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %30 = bitcast %struct._GimpDrawable* %29 to %struct._GTypeInstance*
  %call16 = call i64 @gimp_item_get_type() #6
  %call17 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %30, i64 %call16)
  %31 = bitcast %struct._GTypeInstance* %call17 to %struct._GimpItem*
  %call18 = call i32 @gimp_item_is_removed(%struct._GimpItem* %31)
  %tobool19 = icmp ne i32 %call18, 0
  br i1 %tobool19, label %if.then.20, label %if.end.27

if.then.20:                                       ; preds = %if.else.15
  %32 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in.addr, align 8
  %manager21 = getelementptr inbounds %struct._GimpPlugIn, %struct._GimpPlugIn* %32, i32 0, i32 1
  %33 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %manager21, align 8
  %gimp22 = getelementptr inbounds %struct._GimpPlugInManager, %struct._GimpPlugInManager* %33, i32 0, i32 1
  %34 = load %struct._Gimp*, %struct._Gimp** %gimp22, align 8
  %35 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in.addr, align 8
  %36 = bitcast %struct._GimpPlugIn* %35 to i8*
  %call23 = call i8* @gimp_object_get_name(i8* %36)
  %37 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in.addr, align 8
  %prog24 = getelementptr inbounds %struct._GimpPlugIn, %struct._GimpPlugIn* %37, i32 0, i32 2
  %38 = load i8*, i8** %prog24, align 8
  %call25 = call i8* @gimp_filename_to_utf8(i8* %38)
  %39 = load %struct._GPTileReq*, %struct._GPTileReq** %request.addr, align 8
  %drawable_ID26 = getelementptr inbounds %struct._GPTileReq, %struct._GPTileReq* %39, i32 0, i32 0
  %40 = load i32, i32* %drawable_ID26, align 4
  call void (%struct._Gimp*, %struct._GObject*, i32, i8*, ...) @gimp_message(%struct._Gimp* %34, %struct._GObject* null, i32 2, i8* getelementptr inbounds ([93 x i8], [93 x i8]* @.str.17, i32 0, i32 0), i8* %call23, i8* %call25, i32 %40)
  %41 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in.addr, align 8
  call void @gimp_plug_in_close(%struct._GimpPlugIn* %41, i32 1)
  br label %return

if.end.27:                                        ; preds = %if.else.15
  br label %if.end.28

if.end.28:                                        ; preds = %if.end.27
  %42 = load %struct._GPTileReq*, %struct._GPTileReq** %request.addr, align 8
  %shadow = getelementptr inbounds %struct._GPTileReq, %struct._GPTileReq* %42, i32 0, i32 2
  %43 = load i32, i32* %shadow, align 4
  %tobool29 = icmp ne i32 %43, 0
  br i1 %tobool29, label %if.then.30, label %if.else.33

if.then.30:                                       ; preds = %if.end.28
  %44 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %call31 = call %struct._TileManager* @gimp_drawable_get_shadow_tiles(%struct._GimpDrawable* %44)
  store %struct._TileManager* %call31, %struct._TileManager** %tm, align 8
  %45 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in.addr, align 8
  %46 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %call32 = call i32 @gimp_plug_in_cleanup_add_shadow(%struct._GimpPlugIn* %45, %struct._GimpDrawable* %46)
  br label %if.end.35

if.else.33:                                       ; preds = %if.end.28
  %47 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %call34 = call %struct._TileManager* @gimp_drawable_get_tiles(%struct._GimpDrawable* %47)
  store %struct._TileManager* %call34, %struct._TileManager** %tm, align 8
  br label %if.end.35

if.end.35:                                        ; preds = %if.else.33, %if.then.30
  %48 = load %struct._TileManager*, %struct._TileManager** %tm, align 8
  %49 = load %struct._GPTileReq*, %struct._GPTileReq** %request.addr, align 8
  %tile_num = getelementptr inbounds %struct._GPTileReq, %struct._GPTileReq* %49, i32 0, i32 1
  %50 = load i32, i32* %tile_num, align 4
  %call36 = call %struct._Tile* @tile_manager_get(%struct._TileManager* %48, i32 %50, i32 1, i32 0)
  store %struct._Tile* %call36, %struct._Tile** %tile, align 8
  %51 = load %struct._Tile*, %struct._Tile** %tile, align 8
  %tobool37 = icmp ne %struct._Tile* %51, null
  br i1 %tobool37, label %if.end.44, label %if.then.38

if.then.38:                                       ; preds = %if.end.35
  %52 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in.addr, align 8
  %manager39 = getelementptr inbounds %struct._GimpPlugIn, %struct._GimpPlugIn* %52, i32 0, i32 1
  %53 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %manager39, align 8
  %gimp40 = getelementptr inbounds %struct._GimpPlugInManager, %struct._GimpPlugInManager* %53, i32 0, i32 1
  %54 = load %struct._Gimp*, %struct._Gimp** %gimp40, align 8
  %55 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in.addr, align 8
  %56 = bitcast %struct._GimpPlugIn* %55 to i8*
  %call41 = call i8* @gimp_object_get_name(i8* %56)
  %57 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in.addr, align 8
  %prog42 = getelementptr inbounds %struct._GimpPlugIn, %struct._GimpPlugIn* %57, i32 0, i32 2
  %58 = load i8*, i8** %prog42, align 8
  %call43 = call i8* @gimp_filename_to_utf8(i8* %58)
  call void (%struct._Gimp*, %struct._GObject*, i32, i8*, ...) @gimp_message(%struct._Gimp* %54, %struct._GObject* null, i32 2, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.15, i32 0, i32 0), i8* %call41, i8* %call43)
  %59 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in.addr, align 8
  call void @gimp_plug_in_close(%struct._GimpPlugIn* %59, i32 1)
  br label %return

if.end.44:                                        ; preds = %if.end.35
  %60 = load %struct._GPTileReq*, %struct._GPTileReq** %request.addr, align 8
  %drawable_ID45 = getelementptr inbounds %struct._GPTileReq, %struct._GPTileReq* %60, i32 0, i32 0
  %61 = load i32, i32* %drawable_ID45, align 4
  %drawable_ID46 = getelementptr inbounds %struct._GPTileData, %struct._GPTileData* %tile_data, i32 0, i32 0
  store i32 %61, i32* %drawable_ID46, align 4
  %62 = load %struct._GPTileReq*, %struct._GPTileReq** %request.addr, align 8
  %tile_num47 = getelementptr inbounds %struct._GPTileReq, %struct._GPTileReq* %62, i32 0, i32 1
  %63 = load i32, i32* %tile_num47, align 4
  %tile_num48 = getelementptr inbounds %struct._GPTileData, %struct._GPTileData* %tile_data, i32 0, i32 1
  store i32 %63, i32* %tile_num48, align 4
  %64 = load %struct._GPTileReq*, %struct._GPTileReq** %request.addr, align 8
  %shadow49 = getelementptr inbounds %struct._GPTileReq, %struct._GPTileReq* %64, i32 0, i32 2
  %65 = load i32, i32* %shadow49, align 4
  %shadow50 = getelementptr inbounds %struct._GPTileData, %struct._GPTileData* %tile_data, i32 0, i32 2
  store i32 %65, i32* %shadow50, align 4
  %66 = load %struct._Tile*, %struct._Tile** %tile, align 8
  %call51 = call i32 @tile_bpp(%struct._Tile* %66)
  %bpp = getelementptr inbounds %struct._GPTileData, %struct._GPTileData* %tile_data, i32 0, i32 3
  store i32 %call51, i32* %bpp, align 4
  %67 = load %struct._Tile*, %struct._Tile** %tile, align 8
  %call52 = call i32 @tile_ewidth(%struct._Tile* %67)
  %width = getelementptr inbounds %struct._GPTileData, %struct._GPTileData* %tile_data, i32 0, i32 4
  store i32 %call52, i32* %width, align 4
  %68 = load %struct._Tile*, %struct._Tile** %tile, align 8
  %call53 = call i32 @tile_eheight(%struct._Tile* %68)
  %height = getelementptr inbounds %struct._GPTileData, %struct._GPTileData* %tile_data, i32 0, i32 5
  store i32 %call53, i32* %height, align 4
  %69 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in.addr, align 8
  %manager54 = getelementptr inbounds %struct._GimpPlugIn, %struct._GimpPlugIn* %69, i32 0, i32 1
  %70 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %manager54, align 8
  %shm = getelementptr inbounds %struct._GimpPlugInManager, %struct._GimpPlugInManager* %70, i32 0, i32 15
  %71 = load %struct._GimpPlugInShm*, %struct._GimpPlugInShm** %shm, align 8
  %cmp55 = icmp ne %struct._GimpPlugInShm* %71, null
  %conv = zext i1 %cmp55 to i32
  %use_shm = getelementptr inbounds %struct._GPTileData, %struct._GPTileData* %tile_data, i32 0, i32 6
  store i32 %conv, i32* %use_shm, align 4
  %use_shm56 = getelementptr inbounds %struct._GPTileData, %struct._GPTileData* %tile_data, i32 0, i32 6
  %72 = load i32, i32* %use_shm56, align 4
  %tobool57 = icmp ne i32 %72, 0
  br i1 %tobool57, label %if.then.58, label %if.else.65

if.then.58:                                       ; preds = %if.end.44
  %73 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in.addr, align 8
  %manager59 = getelementptr inbounds %struct._GimpPlugIn, %struct._GimpPlugIn* %73, i32 0, i32 1
  %74 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %manager59, align 8
  %shm60 = getelementptr inbounds %struct._GimpPlugInManager, %struct._GimpPlugInManager* %74, i32 0, i32 15
  %75 = load %struct._GimpPlugInShm*, %struct._GimpPlugInShm** %shm60, align 8
  %call61 = call i8* @gimp_plug_in_shm_get_addr(%struct._GimpPlugInShm* %75)
  %76 = load %struct._Tile*, %struct._Tile** %tile, align 8
  %call62 = call i8* @tile_data_pointer(%struct._Tile* %76, i32 0, i32 0)
  %77 = load %struct._Tile*, %struct._Tile** %tile, align 8
  %call63 = call i32 @tile_size(%struct._Tile* %77)
  %conv64 = sext i32 %call63 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %call61, i8* %call62, i64 %conv64, i32 1, i1 false)
  br label %if.end.67

if.else.65:                                       ; preds = %if.end.44
  %78 = load %struct._Tile*, %struct._Tile** %tile, align 8
  %call66 = call i8* @tile_data_pointer(%struct._Tile* %78, i32 0, i32 0)
  %data = getelementptr inbounds %struct._GPTileData, %struct._GPTileData* %tile_data, i32 0, i32 7
  store i8* %call66, i8** %data, align 8
  br label %if.end.67

if.end.67:                                        ; preds = %if.else.65, %if.then.58
  %79 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in.addr, align 8
  %my_write = getelementptr inbounds %struct._GimpPlugIn, %struct._GimpPlugIn* %79, i32 0, i32 7
  %80 = load %struct._GIOChannel*, %struct._GIOChannel** %my_write, align 8
  %81 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in.addr, align 8
  %82 = bitcast %struct._GimpPlugIn* %81 to i8*
  %call68 = call i32 @gp_tile_data_write(%struct._GIOChannel* %80, %struct._GPTileData* %tile_data, i8* %82)
  %tobool69 = icmp ne i32 %call68, 0
  br i1 %tobool69, label %if.end.73, label %if.then.70

if.then.70:                                       ; preds = %if.end.67
  %83 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in.addr, align 8
  %manager71 = getelementptr inbounds %struct._GimpPlugIn, %struct._GimpPlugIn* %83, i32 0, i32 1
  %84 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %manager71, align 8
  %gimp72 = getelementptr inbounds %struct._GimpPlugInManager, %struct._GimpPlugInManager* %84, i32 0, i32 1
  %85 = load %struct._Gimp*, %struct._Gimp** %gimp72, align 8
  call void (%struct._Gimp*, %struct._GObject*, i32, i8*, ...) @gimp_message(%struct._Gimp* %85, %struct._GObject* null, i32 2, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.gimp_plug_in_handle_tile_get, i32 0, i32 0))
  %86 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in.addr, align 8
  call void @gimp_plug_in_close(%struct._GimpPlugIn* %86, i32 1)
  br label %return

if.end.73:                                        ; preds = %if.end.67
  %87 = load %struct._Tile*, %struct._Tile** %tile, align 8
  call void @tile_release(%struct._Tile* %87, i32 0)
  %88 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in.addr, align 8
  %my_read = getelementptr inbounds %struct._GimpPlugIn, %struct._GimpPlugIn* %88, i32 0, i32 6
  %89 = load %struct._GIOChannel*, %struct._GIOChannel** %my_read, align 8
  %90 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in.addr, align 8
  %91 = bitcast %struct._GimpPlugIn* %90 to i8*
  %call74 = call i32 @gimp_wire_read_msg(%struct._GIOChannel* %89, %struct._GimpWireMessage* %msg, i8* %91)
  %tobool75 = icmp ne i32 %call74, 0
  br i1 %tobool75, label %if.end.79, label %if.then.76

if.then.76:                                       ; preds = %if.end.73
  %92 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in.addr, align 8
  %manager77 = getelementptr inbounds %struct._GimpPlugIn, %struct._GimpPlugIn* %92, i32 0, i32 1
  %93 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %manager77, align 8
  %gimp78 = getelementptr inbounds %struct._GimpPlugInManager, %struct._GimpPlugInManager* %93, i32 0, i32 1
  %94 = load %struct._Gimp*, %struct._Gimp** %gimp78, align 8
  call void (%struct._Gimp*, %struct._GObject*, i32, i8*, ...) @gimp_message(%struct._Gimp* %94, %struct._GObject* null, i32 2, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.gimp_plug_in_handle_tile_get, i32 0, i32 0))
  %95 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in.addr, align 8
  call void @gimp_plug_in_close(%struct._GimpPlugIn* %95, i32 1)
  br label %return

if.end.79:                                        ; preds = %if.end.73
  %type = getelementptr inbounds %struct._GimpWireMessage, %struct._GimpWireMessage* %msg, i32 0, i32 0
  %96 = load i32, i32* %type, align 4
  %cmp80 = icmp ne i32 %96, 3
  br i1 %cmp80, label %if.then.82, label %if.end.86

if.then.82:                                       ; preds = %if.end.79
  %97 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in.addr, align 8
  %manager83 = getelementptr inbounds %struct._GimpPlugIn, %struct._GimpPlugIn* %97, i32 0, i32 1
  %98 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %manager83, align 8
  %gimp84 = getelementptr inbounds %struct._GimpPlugInManager, %struct._GimpPlugInManager* %98, i32 0, i32 1
  %99 = load %struct._Gimp*, %struct._Gimp** %gimp84, align 8
  %type85 = getelementptr inbounds %struct._GimpWireMessage, %struct._GimpWireMessage* %msg, i32 0, i32 0
  %100 = load i32, i32* %type85, align 4
  call void (%struct._Gimp*, %struct._GObject*, i32, i8*, ...) @gimp_message(%struct._Gimp* %99, %struct._GObject* null, i32 2, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.18, i32 0, i32 0), i32 %100)
  %101 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in.addr, align 8
  call void @gimp_plug_in_close(%struct._GimpPlugIn* %101, i32 1)
  br label %return

if.end.86:                                        ; preds = %if.end.79
  call void @gimp_wire_destroy(%struct._GimpWireMessage* %msg)
  br label %return

return:                                           ; preds = %if.end.86, %if.then.82, %if.then.76, %if.then.70, %if.then.38, %if.then.20, %if.then.9
  ret void
}

declare i32 @gp_tile_data_write(%struct._GIOChannel*, %struct._GPTileData*, i8*) #3

declare i32 @gimp_wire_read_msg(%struct._GIOChannel*, %struct._GimpWireMessage*, i8*) #3

declare %struct._GimpItem* @gimp_item_get_by_ID(%struct._Gimp*, i32) #3

; Function Attrs: nounwind readnone
declare i64 @gimp_drawable_get_type() #1

declare i32 @gimp_item_is_removed(%struct._GimpItem*) #3

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #3

; Function Attrs: nounwind readnone
declare i64 @gimp_item_get_type() #1

declare %struct._TileManager* @gimp_drawable_get_shadow_tiles(%struct._GimpDrawable*) #3

declare i32 @gimp_plug_in_cleanup_add_shadow(%struct._GimpPlugIn*, %struct._GimpDrawable*) #3

declare i32 @gimp_item_is_content_locked(%struct._GimpItem*) #3

declare %struct._GimpContainer* @gimp_viewable_get_children(%struct._GimpViewable*) #3

; Function Attrs: nounwind readnone
declare i64 @gimp_viewable_get_type() #1

declare %struct._TileManager* @gimp_drawable_get_tiles(%struct._GimpDrawable*) #3

declare %struct._Tile* @tile_manager_get(%struct._TileManager*, i32, i32, i32) #3

declare i8* @tile_data_pointer(%struct._Tile*, i32, i32) #3

declare i8* @gimp_plug_in_shm_get_addr(%struct._GimpPlugInShm*) #3

declare i32 @tile_size(%struct._Tile*) #3

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #4

declare void @tile_release(%struct._Tile*, i32) #3

declare void @gimp_wire_destroy(%struct._GimpWireMessage*) #3

declare i32 @gp_tile_ack_write(%struct._GIOChannel*, i8*) #3

declare i32 @tile_bpp(%struct._Tile*) #3

declare i32 @tile_ewidth(%struct._Tile*) #3

declare i32 @tile_eheight(%struct._Tile*) #3

declare noalias i8* @gimp_canonicalize_identifier(i8*) #3

declare %struct._GimpPlugInProcFrame* @gimp_plug_in_get_proc_frame(%struct._GimpPlugIn*) #3

declare %struct._GimpProcedure* @gimp_pdb_lookup_procedure(%struct._GimpPDB*, i8*) #3

declare i8* @gimp_pdb_lookup_compat_proc_name(%struct._GimpPDB*, i8*) #3

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #2

declare %struct._GValueArray* @plug_in_params_to_args(%struct._GParamSpec**, i32, %struct._GPParam*, i32, i32, i32) #3

declare void @gimp_plug_in_manager_plug_in_push(%struct._GimpPlugInManager*, %struct._GimpPlugIn*) #3

declare %struct._GValueArray* @gimp_pdb_execute_procedure_by_name_args(%struct._GimpPDB*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GError**, i8*, %struct._GValueArray*) #3

declare void @gimp_plug_in_manager_plug_in_pop(%struct._GimpPlugInManager*) #3

declare void @g_value_array_free(%struct._GValueArray*) #3

; Function Attrs: nounwind uwtable
define internal void @gimp_plug_in_handle_proc_error(%struct._GimpPlugIn* %plug_in, %struct._GimpPlugInProcFrame* %proc_frame, i8* %name, %struct._GError* %error) #0 {
entry:
  %plug_in.addr = alloca %struct._GimpPlugIn*, align 8
  %proc_frame.addr = alloca %struct._GimpPlugInProcFrame*, align 8
  %name.addr = alloca i8*, align 8
  %error.addr = alloca %struct._GError*, align 8
  store %struct._GimpPlugIn* %plug_in, %struct._GimpPlugIn** %plug_in.addr, align 8
  store %struct._GimpPlugInProcFrame* %proc_frame, %struct._GimpPlugInProcFrame** %proc_frame.addr, align 8
  store i8* %name, i8** %name.addr, align 8
  store %struct._GError* %error, %struct._GError** %error.addr, align 8
  %0 = load %struct._GimpPlugInProcFrame*, %struct._GimpPlugInProcFrame** %proc_frame.addr, align 8
  %error_handler = getelementptr inbounds %struct._GimpPlugInProcFrame, %struct._GimpPlugInProcFrame* %0, i32 0, i32 9
  %1 = load i32, i32* %error_handler, align 4
  switch i32 %1, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.9
  ]

sw.bb:                                            ; preds = %entry
  %2 = load %struct._GError*, %struct._GError** %error.addr, align 8
  %domain = getelementptr inbounds %struct._GError, %struct._GError* %2, i32 0, i32 0
  %3 = load i32, i32* %domain, align 4
  %call = call i32 @gimp_pdb_error_quark() #6
  %cmp = icmp eq i32 %3, %call
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %sw.bb
  %4 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in.addr, align 8
  %manager = getelementptr inbounds %struct._GimpPlugIn, %struct._GimpPlugIn* %4, i32 0, i32 1
  %5 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %manager, align 8
  %gimp = getelementptr inbounds %struct._GimpPlugInManager, %struct._GimpPlugInManager* %5, i32 0, i32 1
  %6 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %7 = load %struct._GimpPlugInProcFrame*, %struct._GimpPlugInProcFrame** %proc_frame.addr, align 8
  %progress = getelementptr inbounds %struct._GimpPlugInProcFrame, %struct._GimpPlugInProcFrame* %7, i32 0, i32 6
  %8 = load %struct._GimpProgress*, %struct._GimpProgress** %progress, align 8
  %9 = bitcast %struct._GimpProgress* %8 to %struct._GTypeInstance*
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %9, i64 80)
  %10 = bitcast %struct._GTypeInstance* %call1 to %struct._GObject*
  %call2 = call i8* @gettext(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.25, i32 0, i32 0)) #4
  %11 = load i8*, i8** %name.addr, align 8
  %12 = load %struct._GError*, %struct._GError** %error.addr, align 8
  %message = getelementptr inbounds %struct._GError, %struct._GError* %12, i32 0, i32 2
  %13 = load i8*, i8** %message, align 8
  call void (%struct._Gimp*, %struct._GObject*, i32, i8*, ...) @gimp_message(%struct._Gimp* %6, %struct._GObject* %10, i32 2, i8* %call2, i8* %11, i8* %13)
  br label %if.end

if.else:                                          ; preds = %sw.bb
  %14 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in.addr, align 8
  %manager3 = getelementptr inbounds %struct._GimpPlugIn, %struct._GimpPlugIn* %14, i32 0, i32 1
  %15 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %manager3, align 8
  %gimp4 = getelementptr inbounds %struct._GimpPlugInManager, %struct._GimpPlugInManager* %15, i32 0, i32 1
  %16 = load %struct._Gimp*, %struct._Gimp** %gimp4, align 8
  %17 = load %struct._GimpPlugInProcFrame*, %struct._GimpPlugInProcFrame** %proc_frame.addr, align 8
  %progress5 = getelementptr inbounds %struct._GimpPlugInProcFrame, %struct._GimpPlugInProcFrame* %17, i32 0, i32 6
  %18 = load %struct._GimpProgress*, %struct._GimpProgress** %progress5, align 8
  %19 = bitcast %struct._GimpProgress* %18 to %struct._GTypeInstance*
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %19, i64 80)
  %20 = bitcast %struct._GTypeInstance* %call6 to %struct._GObject*
  %call7 = call i8* @gettext(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.26, i32 0, i32 0)) #4
  %21 = load i8*, i8** %name.addr, align 8
  %22 = load %struct._GError*, %struct._GError** %error.addr, align 8
  %message8 = getelementptr inbounds %struct._GError, %struct._GError* %22, i32 0, i32 2
  %23 = load i8*, i8** %message8, align 8
  call void (%struct._Gimp*, %struct._GObject*, i32, i8*, ...) @gimp_message(%struct._Gimp* %16, %struct._GObject* %20, i32 2, i8* %call7, i8* %21, i8* %23)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %sw.epilog

sw.bb.9:                                          ; preds = %entry
  br label %sw.epilog

sw.epilog:                                        ; preds = %entry, %sw.bb.9, %if.end
  ret void
}

declare void @g_error_free(%struct._GError*) #3

declare void @g_free(i8*) #3

declare %struct._GPParam* @plug_in_args_to_params(%struct._GValueArray*, i32) #3

declare i32 @gp_proc_return_write(%struct._GIOChannel*, %struct._GPProcReturn*, i8*) #3

; Function Attrs: nounwind readnone
declare i32 @gimp_pdb_error_quark() #1

; Function Attrs: nounwind
declare i8* @gettext(i8*) #5

declare void @g_main_loop_quit(%struct._GMainLoop*) #3

declare void @gimp_plug_in_procedure_handle_return_values(%struct._GimpPlugInProcedure*, %struct._Gimp*, %struct._GimpProgress*, %struct._GValueArray*) #3

; Function Attrs: nounwind readnone
declare i64 @gimp_plug_in_procedure_get_type() #1

declare void @gimp_plug_in_main_loop_quit(%struct._GimpPlugIn*) #3

declare void @gimp_plug_in_proc_frame_pop(%struct._GimpPlugIn*) #3

declare i32 @g_utf8_validate(i8*, i64, i8**) #3

declare %struct._GimpProcedure* @gimp_plug_in_procedure_new(i32, i8*) #3

declare %struct._GimpProcedure* @gimp_temporary_procedure_new(%struct._GimpPlugIn*) #3

; Function Attrs: nounwind
declare i64 @time(i64*) #5

declare void @gimp_object_take_name(%struct._GimpObject*, i8*) #3

; Function Attrs: nounwind readnone
declare i64 @gimp_object_get_type() #1

declare void @gimp_procedure_set_strings(%struct._GimpProcedure*, i8*, i8*, i8*, i8*, i8*, i8*, i8*) #3

declare void @gimp_plug_in_procedure_set_image_types(%struct._GimpPlugInProcedure*, i8*) #3

declare %struct._GParamSpec* @gimp_pdb_compat_param_spec(%struct._Gimp*, i32, i8*, i8*) #3

declare void @gimp_procedure_add_argument(%struct._GimpProcedure*, %struct._GParamSpec*) #3

declare void @gimp_procedure_add_return_value(%struct._GimpProcedure*, %struct._GParamSpec*) #3

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #2

declare i32 @gimp_plug_in_procedure_add_menu_path(%struct._GimpPlugInProcedure*, i8*, %struct._GError**) #3

declare void @gimp_message_literal(%struct._Gimp*, %struct._GObject*, i32, i8*) #3

declare void @g_clear_error(%struct._GError**) #3

declare noalias i8* @g_strdup(i8*) #3

declare void @gimp_plug_in_def_add_procedure(%struct._GimpPlugInDef*, %struct._GimpPlugInProcedure*) #3

declare void @gimp_plug_in_add_temp_proc(%struct._GimpPlugIn*, %struct._GimpTemporaryProcedure*) #3

; Function Attrs: nounwind readnone
declare i64 @gimp_temporary_procedure_get_type() #1

declare void @g_object_unref(i8*) #3

declare %struct._GimpPlugInProcedure* @gimp_plug_in_procedure_find(%struct._GSList*, i8*) #3

declare void @gimp_plug_in_remove_temp_proc(%struct._GimpPlugIn*, %struct._GimpTemporaryProcedure*) #3

declare void @gimp_plug_in_def_set_has_init(%struct._GimpPlugInDef*, i32) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readnone }
attributes #7 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
