; ModuleID = './app/plug-in/gimpplugin.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GimpPlugInClass = type { %struct._GimpObjectClass }
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
%struct._GimpPlugIn = type { %struct._GimpObject, %struct._GimpPlugInManager*, i8*, i32, i8, i32, %struct._GIOChannel*, %struct._GIOChannel*, %struct._GIOChannel*, %struct._GIOChannel*, i32, [512 x i8], i32, %struct._GSList*, %struct._GMainLoop*, %struct._GimpPlugInProcFrame, %struct._GList*, %struct._GimpPlugInDef* }
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
%struct._GimpPDB = type opaque
%struct._GimpToolInfo = type opaque
%struct._GimpContainer = type opaque
%struct._GimpTemplate = type opaque
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
%struct._GimpPlugInShm = type opaque
%struct._GimpInterpreterDB = type { %struct._GObject, %struct._GHashTable*, %struct._GSList*, %struct._GHashTable*, %struct._GHashTable*, %struct._GHashTable* }
%struct._GHashTable = type opaque
%struct._GimpEnvironTable = type { %struct._GObject, %struct._GHashTable*, %struct._GHashTable*, i8** }
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
%struct._GMainLoop = type opaque
%struct._GimpPlugInProcFrame = type { i32, %struct._GimpContext*, %struct._GList*, %struct._GimpProcedure*, %struct._GMainLoop*, %struct._GValueArray*, %struct._GimpProgress*, i32, i64, i32, %struct._GList*, %struct._GList* }
%struct._GimpProcedure = type { %struct._GimpObject, i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, %struct._GParamSpec**, i32, %struct._GParamSpec**, %struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* }
%struct._GValueArray = type { i32, %struct._GValue*, i32 }
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct._GimpPlugInDef = type { %struct._GimpObject, i8*, %struct._GSList*, i8*, i8*, i8*, i8*, i64, i32, i32 }
%struct._GimpPlugInProcedure = type { %struct._GimpProcedure, i8*, i32, i32, i8*, %struct._GList*, i8*, i32, i32, i8*, i8*, i32, i64, i32, i32, i8*, i8*, i8*, i8*, %struct._GSList*, %struct._GSList*, %struct._GSList*, i8* }
%struct._GimpWireMessage = type { i32, i8* }
%struct._GimpTemporaryProcedure = type { %struct._GimpPlugInProcedure, %struct._GimpPlugIn* }

@gimp_plug_in_get_type.g_define_type_id__volatile = internal global i64 0, align 8
@.str = private unnamed_addr constant [11 x i8] c"GimpPlugIn\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"Gimp-Plug-In\00", align 1
@__func__.gimp_plug_in_new = private unnamed_addr constant [17 x i8] c"gimp_plug_in_new\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"GIMP_IS_PLUG_IN_MANAGER (manager)\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"GIMP_IS_PDB_CONTEXT (context)\00", align 1
@.str.4 = private unnamed_addr constant [48 x i8] c"progress == NULL || GIMP_IS_PROGRESS (progress)\00", align 1
@.str.5 = private unnamed_addr constant [59 x i8] c"procedure == NULL || GIMP_IS_PLUG_IN_PROCEDURE (procedure)\00", align 1
@.str.6 = private unnamed_addr constant [42 x i8] c"prog == NULL || g_path_is_absolute (prog)\00", align 1
@.str.7 = private unnamed_addr constant [77 x i8] c"(procedure != NULL || prog != NULL) && ! (procedure != NULL && prog != NULL)\00", align 1
@__func__.gimp_plug_in_open = private unnamed_addr constant [18 x i8] c"gimp_plug_in_open\00", align 1
@.str.8 = private unnamed_addr constant [26 x i8] c"GIMP_IS_PLUG_IN (plug_in)\00", align 1
@.str.9 = private unnamed_addr constant [45 x i8] c"plug_in->call_mode == GIMP_PLUG_IN_CALL_NONE\00", align 1
@.str.10 = private unnamed_addr constant [51 x i8] c"Unable to run plug-in \22%s\22\0A(%s)\0A\0Apipe() failed: %s\00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c"-query\00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"-init\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"-run\00", align 1
@.str.15 = private unnamed_addr constant [13 x i8] c"gimpplugin.c\00", align 1
@.str.16 = private unnamed_addr constant [6 x i8] c"-gimp\00", align 1
@.str.17 = private unnamed_addr constant [36 x i8] c"Unable to run plug-in \22%s\22\0A(%s)\0A\0A%s\00", align 1
@__func__.gimp_plug_in_close = private unnamed_addr constant [19 x i8] c"gimp_plug_in_close\00", align 1
@.str.18 = private unnamed_addr constant [14 x i8] c"plug_in->open\00", align 1
@.str.19 = private unnamed_addr constant [27 x i8] c"Terminating plug-in: '%s'\0A\00", align 1
@__func__.gimp_plug_in_get_proc_frame = private unnamed_addr constant [28 x i8] c"gimp_plug_in_get_proc_frame\00", align 1
@__func__.gimp_plug_in_proc_frame_push = private unnamed_addr constant [29 x i8] c"gimp_plug_in_proc_frame_push\00", align 1
@.str.20 = private unnamed_addr constant [40 x i8] c"GIMP_IS_TEMPORARY_PROCEDURE (procedure)\00", align 1
@__func__.gimp_plug_in_proc_frame_pop = private unnamed_addr constant [28 x i8] c"gimp_plug_in_proc_frame_pop\00", align 1
@.str.21 = private unnamed_addr constant [34 x i8] c"plug_in->temp_proc_frames != NULL\00", align 1
@__func__.gimp_plug_in_main_loop = private unnamed_addr constant [23 x i8] c"gimp_plug_in_main_loop\00", align 1
@.str.22 = private unnamed_addr constant [30 x i8] c"proc_frame->main_loop == NULL\00", align 1
@__func__.gimp_plug_in_main_loop_quit = private unnamed_addr constant [28 x i8] c"gimp_plug_in_main_loop_quit\00", align 1
@.str.23 = private unnamed_addr constant [30 x i8] c"proc_frame->main_loop != NULL\00", align 1
@__func__.gimp_plug_in_get_undo_desc = private unnamed_addr constant [27 x i8] c"gimp_plug_in_get_undo_desc\00", align 1
@__func__.gimp_plug_in_menu_register = private unnamed_addr constant [27 x i8] c"gimp_plug_in_menu_register\00", align 1
@.str.24 = private unnamed_addr constant [18 x i8] c"proc_name != NULL\00", align 1
@.str.25 = private unnamed_addr constant [18 x i8] c"menu_path != NULL\00", align 1
@.str.26 = private unnamed_addr constant [150 x i8] c"Plug-in \22%s\22\0A(%s)\0Aattempted to register the menu item \22%s\22 for the procedure \22%s\22.\0AIt has however not installed that procedure.  This is not allowed.\00", align 1
@.str.27 = private unnamed_addr constant [230 x i8] c"Plug-in \22%s\22\0A(%s)\0Aattempted to register the menu item \22%s\22 for procedure \22%s\22.\0AThe menu label given in gimp_install_procedure() already contained a path.  To make this work, pass just the menu's label to gimp_install_procedure().\00", align 1
@.str.28 = private unnamed_addr constant [131 x i8] c"Plug-in \22%s\22\0A(%s)\0Aattempted to register the procedure \22%s\22 in the menu \22%s\22, but the procedure has no label.  This is not allowed.\00", align 1
@__func__.gimp_plug_in_set_error_handler = private unnamed_addr constant [31 x i8] c"gimp_plug_in_set_error_handler\00", align 1
@__func__.gimp_plug_in_get_error_handler = private unnamed_addr constant [31 x i8] c"gimp_plug_in_get_error_handler\00", align 1
@__func__.gimp_plug_in_add_temp_proc = private unnamed_addr constant [27 x i8] c"gimp_plug_in_add_temp_proc\00", align 1
@.str.29 = private unnamed_addr constant [35 x i8] c"GIMP_IS_TEMPORARY_PROCEDURE (proc)\00", align 1
@__func__.gimp_plug_in_remove_temp_proc = private unnamed_addr constant [30 x i8] c"gimp_plug_in_remove_temp_proc\00", align 1
@gimp_plug_in_parent_class = internal global i8* null, align 8
@GimpPlugIn_private_offset = internal global i32 0, align 4
@.str.30 = private unnamed_addr constant [31 x i8] c"%s: plug_in_flush(): error: %s\00", align 1
@.str.31 = private unnamed_addr constant [27 x i8] c"%s: plug_in_flush(): error\00", align 1
@.str.32 = private unnamed_addr constant [162 x i8] c"Plug-in crashed: \22%s\22\0A(%s)\0A\0AThe dying plug-in may have messed up GIMP's internal state. You may want to save your images and restart GIMP to be on the safe side.\00", align 1

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_plug_in_get_type() #0 {
entry:
  %tmp = alloca i32, align 4
  %tmp1 = alloca i8*, align 8
  %g_define_type_id = alloca i64, align 8
  fence seq_cst
  %0 = load volatile i64, i64* @gimp_plug_in_get_type.g_define_type_id__volatile, align 8
  %1 = inttoptr i64 %0 to i8*
  store i8* %1, i8** %tmp1
  %2 = load i8*, i8** %tmp1
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call = call i32 @g_once_init_enter(i8* bitcast (i64* @gimp_plug_in_get_type.g_define_type_id__volatile to i8*))
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
  %call6 = call i8* @g_intern_static_string(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0))
  %call7 = call i64 @g_type_register_static_simple(i64 %call5, i8* %call6, i32 160, void (i8*, i8*)* bitcast (void (i8*)* @gimp_plug_in_class_intern_init to void (i8*, i8*)*), i32 744, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._GimpPlugIn*)* @gimp_plug_in_init to void (%struct._GTypeInstance*, i8*)*), i32 0)
  store i64 %call7, i64* %g_define_type_id, align 8
  %5 = load i64, i64* %g_define_type_id, align 8
  call void @g_once_init_leave(i8* bitcast (i64* @gimp_plug_in_get_type.g_define_type_id__volatile to i8*), i64 %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end
  %6 = load volatile i64, i64* @gimp_plug_in_get_type.g_define_type_id__volatile, align 8
  ret i64 %6
}

declare i32 @g_once_init_enter(i8*) #1

declare i64 @g_type_register_static_simple(i64, i8*, i32, void (i8*, i8*)*, i32, void (%struct._GTypeInstance*, i8*)*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_object_get_type() #2

declare i8* @g_intern_static_string(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_plug_in_class_intern_init(i8* %klass) #3 {
entry:
  %klass.addr = alloca i8*, align 8
  store i8* %klass, i8** %klass.addr, align 8
  %0 = load i8*, i8** %klass.addr, align 8
  %call = call i8* @g_type_class_peek_parent(i8* %0)
  store i8* %call, i8** @gimp_plug_in_parent_class, align 8
  %1 = load i32, i32* @GimpPlugIn_private_offset, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %klass.addr, align 8
  call void @g_type_class_adjust_private_offset(i8* %2, i32* @GimpPlugIn_private_offset)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %klass.addr, align 8
  %4 = bitcast i8* %3 to %struct._GimpPlugInClass*
  call void @gimp_plug_in_class_init(%struct._GimpPlugInClass* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_plug_in_init(%struct._GimpPlugIn* %plug_in) #3 {
entry:
  %plug_in.addr = alloca %struct._GimpPlugIn*, align 8
  store %struct._GimpPlugIn* %plug_in, %struct._GimpPlugIn** %plug_in.addr, align 8
  %0 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in.addr, align 8
  %manager = getelementptr inbounds %struct._GimpPlugIn, %struct._GimpPlugIn* %0, i32 0, i32 1
  store %struct._GimpPlugInManager* null, %struct._GimpPlugInManager** %manager, align 8
  %1 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in.addr, align 8
  %prog = getelementptr inbounds %struct._GimpPlugIn, %struct._GimpPlugIn* %1, i32 0, i32 2
  store i8* null, i8** %prog, align 8
  %2 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in.addr, align 8
  %call_mode = getelementptr inbounds %struct._GimpPlugIn, %struct._GimpPlugIn* %2, i32 0, i32 3
  store i32 0, i32* %call_mode, align 4
  %3 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in.addr, align 8
  %open = getelementptr inbounds %struct._GimpPlugIn, %struct._GimpPlugIn* %3, i32 0, i32 4
  %bf.load = load i8, i8* %open, align 4
  %bf.clear = and i8 %bf.load, -2
  store i8 %bf.clear, i8* %open, align 4
  %4 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in.addr, align 8
  %hup = getelementptr inbounds %struct._GimpPlugIn, %struct._GimpPlugIn* %4, i32 0, i32 4
  %bf.load1 = load i8, i8* %hup, align 4
  %bf.clear2 = and i8 %bf.load1, -3
  store i8 %bf.clear2, i8* %hup, align 4
  %5 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in.addr, align 8
  %pid = getelementptr inbounds %struct._GimpPlugIn, %struct._GimpPlugIn* %5, i32 0, i32 5
  store i32 0, i32* %pid, align 4
  %6 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in.addr, align 8
  %my_read = getelementptr inbounds %struct._GimpPlugIn, %struct._GimpPlugIn* %6, i32 0, i32 6
  store %struct._GIOChannel* null, %struct._GIOChannel** %my_read, align 8
  %7 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in.addr, align 8
  %my_write = getelementptr inbounds %struct._GimpPlugIn, %struct._GimpPlugIn* %7, i32 0, i32 7
  store %struct._GIOChannel* null, %struct._GIOChannel** %my_write, align 8
  %8 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in.addr, align 8
  %his_read = getelementptr inbounds %struct._GimpPlugIn, %struct._GimpPlugIn* %8, i32 0, i32 8
  store %struct._GIOChannel* null, %struct._GIOChannel** %his_read, align 8
  %9 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in.addr, align 8
  %his_write = getelementptr inbounds %struct._GimpPlugIn, %struct._GimpPlugIn* %9, i32 0, i32 9
  store %struct._GIOChannel* null, %struct._GIOChannel** %his_write, align 8
  %10 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in.addr, align 8
  %input_id = getelementptr inbounds %struct._GimpPlugIn, %struct._GimpPlugIn* %10, i32 0, i32 10
  store i32 0, i32* %input_id, align 4
  %11 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in.addr, align 8
  %write_buffer_index = getelementptr inbounds %struct._GimpPlugIn, %struct._GimpPlugIn* %11, i32 0, i32 12
  store i32 0, i32* %write_buffer_index, align 4
  %12 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in.addr, align 8
  %temp_procedures = getelementptr inbounds %struct._GimpPlugIn, %struct._GimpPlugIn* %12, i32 0, i32 13
  store %struct._GSList* null, %struct._GSList** %temp_procedures, align 8
  %13 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in.addr, align 8
  %ext_main_loop = getelementptr inbounds %struct._GimpPlugIn, %struct._GimpPlugIn* %13, i32 0, i32 14
  store %struct._GMainLoop* null, %struct._GMainLoop** %ext_main_loop, align 8
  %14 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in.addr, align 8
  %temp_proc_frames = getelementptr inbounds %struct._GimpPlugIn, %struct._GimpPlugIn* %14, i32 0, i32 16
  store %struct._GList* null, %struct._GList** %temp_proc_frames, align 8
  %15 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in.addr, align 8
  %plug_in_def = getelementptr inbounds %struct._GimpPlugIn, %struct._GimpPlugIn* %15, i32 0, i32 17
  store %struct._GimpPlugInDef* null, %struct._GimpPlugInDef** %plug_in_def, align 8
  ret void
}

declare void @g_once_init_leave(i8*, i64) #1

; Function Attrs: nounwind uwtable
define %struct._GimpPlugIn* @gimp_plug_in_new(%struct._GimpPlugInManager* %manager, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GimpPlugInProcedure* %procedure, i8* %prog) #3 {
entry:
  %retval = alloca %struct._GimpPlugIn*, align 8
  %manager.addr = alloca %struct._GimpPlugInManager*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %procedure.addr = alloca %struct._GimpPlugInProcedure*, align 8
  %prog.addr = alloca i8*, align 8
  %plug_in = alloca %struct._GimpPlugIn*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst13 = alloca %struct._GTypeInstance*, align 8
  %__t15 = alloca i64, align 8
  %__r18 = alloca i32, align 4
  %tmp33 = alloca i32, align 4
  %__inst42 = alloca %struct._GTypeInstance*, align 8
  %__t44 = alloca i64, align 8
  %__r47 = alloca i32, align 4
  %tmp62 = alloca i32, align 4
  %__inst72 = alloca %struct._GTypeInstance*, align 8
  %__t74 = alloca i64, align 8
  %__r77 = alloca i32, align 4
  %tmp92 = alloca i32, align 4
  store %struct._GimpPlugInManager* %manager, %struct._GimpPlugInManager** %manager.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store %struct._GimpPlugInProcedure* %procedure, %struct._GimpPlugInProcedure** %procedure.addr, align 8
  store i8* %prog, i8** %prog.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %manager.addr, align 8
  %1 = bitcast %struct._GimpPlugInManager* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_plug_in_manager_get_type() #8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.gimp_plug_in_new, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i32 0, i32 0))
  store %struct._GimpPlugIn* null, %struct._GimpPlugIn** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %14 = bitcast %struct._GimpContext* %13 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %14, %struct._GTypeInstance** %__inst13, align 8
  %call16 = call i64 @gimp_pdb_context_get_type() #8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.gimp_plug_in_new, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i32 0, i32 0))
  store %struct._GimpPlugIn* null, %struct._GimpPlugIn** %retval
  br label %return

if.end.37:                                        ; preds = %if.then.35
  br label %do.end.38

do.end.38:                                        ; preds = %if.end.37
  br label %do.body.39

do.body.39:                                       ; preds = %do.end.38
  %26 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %cmp40 = icmp eq %struct._GimpProgress* %26, null
  br i1 %cmp40, label %if.then.64, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.body.39
  %27 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %28 = bitcast %struct._GimpProgress* %27 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %28, %struct._GTypeInstance** %__inst42, align 8
  %call45 = call i64 @gimp_progress_interface_get_type() #8
  store i64 %call45, i64* %__t44, align 8
  %29 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst42, align 8
  %tobool48 = icmp ne %struct._GTypeInstance* %29, null
  br i1 %tobool48, label %if.else.50, label %if.then.49

if.then.49:                                       ; preds = %lor.lhs.false
  store i32 0, i32* %__r47, align 4
  br label %if.end.61

if.else.50:                                       ; preds = %lor.lhs.false
  %30 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst42, align 8
  %g_class51 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %30, i32 0, i32 0
  %31 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class51, align 8
  %tobool52 = icmp ne %struct._GTypeClass* %31, null
  br i1 %tobool52, label %land.lhs.true.53, label %if.else.58

land.lhs.true.53:                                 ; preds = %if.else.50
  %32 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst42, align 8
  %g_class54 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %32, i32 0, i32 0
  %33 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class54, align 8
  %g_type55 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %33, i32 0, i32 0
  %34 = load i64, i64* %g_type55, align 8
  %35 = load i64, i64* %__t44, align 8
  %cmp56 = icmp eq i64 %34, %35
  br i1 %cmp56, label %if.then.57, label %if.else.58

if.then.57:                                       ; preds = %land.lhs.true.53
  store i32 1, i32* %__r47, align 4
  br label %if.end.60

if.else.58:                                       ; preds = %land.lhs.true.53, %if.else.50
  %36 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst42, align 8
  %37 = load i64, i64* %__t44, align 8
  %call59 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %36, i64 %37) #9
  store i32 %call59, i32* %__r47, align 4
  br label %if.end.60

if.end.60:                                        ; preds = %if.else.58, %if.then.57
  br label %if.end.61

if.end.61:                                        ; preds = %if.end.60, %if.then.49
  %38 = load i32, i32* %__r47, align 4
  store i32 %38, i32* %tmp62
  %39 = load i32, i32* %tmp62
  %tobool63 = icmp ne i32 %39, 0
  br i1 %tobool63, label %if.then.64, label %if.else.65

if.then.64:                                       ; preds = %if.end.61, %do.body.39
  br label %if.end.66

if.else.65:                                       ; preds = %if.end.61
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.gimp_plug_in_new, i32 0, i32 0), i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.4, i32 0, i32 0))
  store %struct._GimpPlugIn* null, %struct._GimpPlugIn** %retval
  br label %return

if.end.66:                                        ; preds = %if.then.64
  br label %do.end.67

do.end.67:                                        ; preds = %if.end.66
  br label %do.body.68

do.body.68:                                       ; preds = %do.end.67
  %40 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %procedure.addr, align 8
  %cmp69 = icmp eq %struct._GimpPlugInProcedure* %40, null
  br i1 %cmp69, label %if.then.94, label %lor.lhs.false.70

lor.lhs.false.70:                                 ; preds = %do.body.68
  %41 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %procedure.addr, align 8
  %42 = bitcast %struct._GimpPlugInProcedure* %41 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %42, %struct._GTypeInstance** %__inst72, align 8
  %call75 = call i64 @gimp_plug_in_procedure_get_type() #8
  store i64 %call75, i64* %__t74, align 8
  %43 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst72, align 8
  %tobool78 = icmp ne %struct._GTypeInstance* %43, null
  br i1 %tobool78, label %if.else.80, label %if.then.79

if.then.79:                                       ; preds = %lor.lhs.false.70
  store i32 0, i32* %__r77, align 4
  br label %if.end.91

if.else.80:                                       ; preds = %lor.lhs.false.70
  %44 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst72, align 8
  %g_class81 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %44, i32 0, i32 0
  %45 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class81, align 8
  %tobool82 = icmp ne %struct._GTypeClass* %45, null
  br i1 %tobool82, label %land.lhs.true.83, label %if.else.88

land.lhs.true.83:                                 ; preds = %if.else.80
  %46 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst72, align 8
  %g_class84 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %46, i32 0, i32 0
  %47 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class84, align 8
  %g_type85 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %47, i32 0, i32 0
  %48 = load i64, i64* %g_type85, align 8
  %49 = load i64, i64* %__t74, align 8
  %cmp86 = icmp eq i64 %48, %49
  br i1 %cmp86, label %if.then.87, label %if.else.88

if.then.87:                                       ; preds = %land.lhs.true.83
  store i32 1, i32* %__r77, align 4
  br label %if.end.90

if.else.88:                                       ; preds = %land.lhs.true.83, %if.else.80
  %50 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst72, align 8
  %51 = load i64, i64* %__t74, align 8
  %call89 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %50, i64 %51) #9
  store i32 %call89, i32* %__r77, align 4
  br label %if.end.90

if.end.90:                                        ; preds = %if.else.88, %if.then.87
  br label %if.end.91

if.end.91:                                        ; preds = %if.end.90, %if.then.79
  %52 = load i32, i32* %__r77, align 4
  store i32 %52, i32* %tmp92
  %53 = load i32, i32* %tmp92
  %tobool93 = icmp ne i32 %53, 0
  br i1 %tobool93, label %if.then.94, label %if.else.95

if.then.94:                                       ; preds = %if.end.91, %do.body.68
  br label %if.end.96

if.else.95:                                       ; preds = %if.end.91
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.gimp_plug_in_new, i32 0, i32 0), i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.5, i32 0, i32 0))
  store %struct._GimpPlugIn* null, %struct._GimpPlugIn** %retval
  br label %return

if.end.96:                                        ; preds = %if.then.94
  br label %do.end.97

do.end.97:                                        ; preds = %if.end.96
  br label %do.body.98

do.body.98:                                       ; preds = %do.end.97
  %54 = load i8*, i8** %prog.addr, align 8
  %cmp99 = icmp eq i8* %54, null
  br i1 %cmp99, label %if.then.103, label %lor.lhs.false.100

lor.lhs.false.100:                                ; preds = %do.body.98
  %55 = load i8*, i8** %prog.addr, align 8
  %call101 = call i32 @g_path_is_absolute(i8* %55)
  %tobool102 = icmp ne i32 %call101, 0
  br i1 %tobool102, label %if.then.103, label %if.else.104

if.then.103:                                      ; preds = %lor.lhs.false.100, %do.body.98
  br label %if.end.105

if.else.104:                                      ; preds = %lor.lhs.false.100
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.gimp_plug_in_new, i32 0, i32 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.6, i32 0, i32 0))
  store %struct._GimpPlugIn* null, %struct._GimpPlugIn** %retval
  br label %return

if.end.105:                                       ; preds = %if.then.103
  br label %do.end.106

do.end.106:                                       ; preds = %if.end.105
  br label %do.body.107

do.body.107:                                      ; preds = %do.end.106
  %56 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %procedure.addr, align 8
  %cmp108 = icmp ne %struct._GimpPlugInProcedure* %56, null
  br i1 %cmp108, label %land.lhs.true.111, label %lor.lhs.false.109

lor.lhs.false.109:                                ; preds = %do.body.107
  %57 = load i8*, i8** %prog.addr, align 8
  %cmp110 = icmp ne i8* %57, null
  br i1 %cmp110, label %land.lhs.true.111, label %if.else.116

land.lhs.true.111:                                ; preds = %lor.lhs.false.109, %do.body.107
  %58 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %procedure.addr, align 8
  %cmp112 = icmp ne %struct._GimpPlugInProcedure* %58, null
  br i1 %cmp112, label %land.lhs.true.113, label %if.then.115

land.lhs.true.113:                                ; preds = %land.lhs.true.111
  %59 = load i8*, i8** %prog.addr, align 8
  %cmp114 = icmp ne i8* %59, null
  br i1 %cmp114, label %if.else.116, label %if.then.115

if.then.115:                                      ; preds = %land.lhs.true.113, %land.lhs.true.111
  br label %if.end.117

if.else.116:                                      ; preds = %land.lhs.true.113, %lor.lhs.false.109
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.gimp_plug_in_new, i32 0, i32 0), i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.7, i32 0, i32 0))
  store %struct._GimpPlugIn* null, %struct._GimpPlugIn** %retval
  br label %return

if.end.117:                                       ; preds = %if.then.115
  br label %do.end.118

do.end.118:                                       ; preds = %if.end.117
  %call119 = call i64 @gimp_plug_in_get_type() #8
  %call120 = call i8* (i64, i8*, ...) @g_object_new(i64 %call119, i8* null)
  %60 = bitcast i8* %call120 to %struct._GimpPlugIn*
  store %struct._GimpPlugIn* %60, %struct._GimpPlugIn** %plug_in, align 8
  %61 = load i8*, i8** %prog.addr, align 8
  %tobool121 = icmp ne i8* %61, null
  br i1 %tobool121, label %if.end.124, label %if.then.122

if.then.122:                                      ; preds = %do.end.118
  %62 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %procedure.addr, align 8
  %call123 = call i8* @gimp_plug_in_procedure_get_progname(%struct._GimpPlugInProcedure* %62)
  store i8* %call123, i8** %prog.addr, align 8
  br label %if.end.124

if.end.124:                                       ; preds = %if.then.122, %do.end.118
  %63 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in, align 8
  %64 = bitcast %struct._GimpPlugIn* %63 to %struct._GTypeInstance*
  %call125 = call i64 @gimp_object_get_type() #8
  %call126 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %64, i64 %call125)
  %65 = bitcast %struct._GTypeInstance* %call126 to %struct._GimpObject*
  %66 = load i8*, i8** %prog.addr, align 8
  %call127 = call noalias i8* @g_filename_display_basename(i8* %66)
  call void @gimp_object_take_name(%struct._GimpObject* %65, i8* %call127)
  %67 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %manager.addr, align 8
  %68 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in, align 8
  %manager128 = getelementptr inbounds %struct._GimpPlugIn, %struct._GimpPlugIn* %68, i32 0, i32 1
  store %struct._GimpPlugInManager* %67, %struct._GimpPlugInManager** %manager128, align 8
  %69 = load i8*, i8** %prog.addr, align 8
  %call129 = call noalias i8* @g_strdup(i8* %69)
  %70 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in, align 8
  %prog130 = getelementptr inbounds %struct._GimpPlugIn, %struct._GimpPlugIn* %70, i32 0, i32 2
  store i8* %call129, i8** %prog130, align 8
  %71 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in, align 8
  %main_proc_frame = getelementptr inbounds %struct._GimpPlugIn, %struct._GimpPlugIn* %71, i32 0, i32 15
  %72 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %73 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %74 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %procedure.addr, align 8
  call void @gimp_plug_in_proc_frame_init(%struct._GimpPlugInProcFrame* %main_proc_frame, %struct._GimpContext* %72, %struct._GimpProgress* %73, %struct._GimpPlugInProcedure* %74)
  %75 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in, align 8
  store %struct._GimpPlugIn* %75, %struct._GimpPlugIn** %retval
  br label %return

return:                                           ; preds = %if.end.124, %if.else.116, %if.else.104, %if.else.95, %if.else.65, %if.else.36, %if.else.9
  %76 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %retval
  ret %struct._GimpPlugIn* %76
}

; Function Attrs: nounwind readnone
declare i64 @gimp_plug_in_manager_get_type() #2

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #4

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_pdb_context_get_type() #2

; Function Attrs: nounwind readnone
declare i64 @gimp_progress_interface_get_type() #2

; Function Attrs: nounwind readnone
declare i64 @gimp_plug_in_procedure_get_type() #2

declare i32 @g_path_is_absolute(i8*) #1

declare i8* @g_object_new(i64, i8*, ...) #1

declare i8* @gimp_plug_in_procedure_get_progname(%struct._GimpPlugInProcedure*) #1

declare void @gimp_object_take_name(%struct._GimpObject*, i8*) #1

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

declare noalias i8* @g_filename_display_basename(i8*) #1

declare noalias i8* @g_strdup(i8*) #1

declare void @gimp_plug_in_proc_frame_init(%struct._GimpPlugInProcFrame*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GimpPlugInProcedure*) #1

; Function Attrs: nounwind uwtable
define i32 @gimp_plug_in_open(%struct._GimpPlugIn* %plug_in, i32 %call_mode, i32 %synchronous) #3 {
entry:
  %retval = alloca i32, align 4
  %plug_in.addr = alloca %struct._GimpPlugIn*, align 8
  %call_mode.addr = alloca i32, align 4
  %synchronous.addr = alloca i32, align 4
  %my_read = alloca [2 x i32], align 4
  %my_write = alloca [2 x i32], align 4
  %envp = alloca i8**, align 8
  %args = alloca [9 x i8*], align 16
  %argv = alloca i8**, align 8
  %argc = alloca i32, align 4
  %interp = alloca i8*, align 8
  %interp_arg = alloca i8*, align 8
  %read_fd = alloca i8*, align 8
  %write_fd = alloca i8*, align 8
  %mode = alloca i8*, align 8
  %stm = alloca i8*, align 8
  %error = alloca %struct._GError*, align 8
  %debug = alloca i32, align 4
  %debug_flag = alloca i32, align 4
  %spawn_flags = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %debug_argv = alloca i8**, align 8
  %source = alloca %struct._GSource*, align 8
  store %struct._GimpPlugIn* %plug_in, %struct._GimpPlugIn** %plug_in.addr, align 8
  store i32 %call_mode, i32* %call_mode.addr, align 4
  store i32 %synchronous, i32* %synchronous.addr, align 4
  store %struct._GError* null, %struct._GError** %error, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in.addr, align 8
  %1 = bitcast %struct._GimpPlugIn* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_plug_in_get_type() #8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.gimp_plug_in_open, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in.addr, align 8
  %call_mode12 = getelementptr inbounds %struct._GimpPlugIn, %struct._GimpPlugIn* %13, i32 0, i32 3
  %14 = load i32, i32* %call_mode12, align 4
  %cmp13 = icmp eq i32 %14, 0
  br i1 %cmp13, label %if.then.14, label %if.else.15

if.then.14:                                       ; preds = %do.body.11
  br label %if.end.16

if.else.15:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.gimp_plug_in_open, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.9, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.16:                                        ; preds = %if.then.14
  br label %do.end.17

do.end.17:                                        ; preds = %if.end.16
  %arraydecay = getelementptr inbounds [2 x i32], [2 x i32]* %my_read, i32 0, i32 0
  %call18 = call i32 @pipe(i32* %arraydecay) #7
  %cmp19 = icmp eq i32 %call18, -1
  br i1 %cmp19, label %if.then.23, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.end.17
  %arraydecay20 = getelementptr inbounds [2 x i32], [2 x i32]* %my_write, i32 0, i32 0
  %call21 = call i32 @pipe(i32* %arraydecay20) #7
  %cmp22 = icmp eq i32 %call21, -1
  br i1 %cmp22, label %if.then.23, label %if.end.28

if.then.23:                                       ; preds = %lor.lhs.false, %do.end.17
  %15 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in.addr, align 8
  %manager = getelementptr inbounds %struct._GimpPlugIn, %struct._GimpPlugIn* %15, i32 0, i32 1
  %16 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %manager, align 8
  %gimp = getelementptr inbounds %struct._GimpPlugInManager, %struct._GimpPlugInManager* %16, i32 0, i32 1
  %17 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %18 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in.addr, align 8
  %19 = bitcast %struct._GimpPlugIn* %18 to i8*
  %call24 = call i8* @gimp_object_get_name(i8* %19)
  %20 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in.addr, align 8
  %prog = getelementptr inbounds %struct._GimpPlugIn, %struct._GimpPlugIn* %20, i32 0, i32 2
  %21 = load i8*, i8** %prog, align 8
  %call25 = call i8* @gimp_filename_to_utf8(i8* %21)
  %call26 = call i32* @__errno_location() #8
  %22 = load i32, i32* %call26, align 4
  %call27 = call i8* @g_strerror(i32 %22) #8
  call void (%struct._Gimp*, %struct._GObject*, i32, i8*, ...) @gimp_message(%struct._Gimp* %17, %struct._GObject* null, i32 2, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.10, i32 0, i32 0), i8* %call24, i8* %call25, i8* %call27)
  store i32 0, i32* %retval
  br label %return

if.end.28:                                        ; preds = %lor.lhs.false
  %arrayidx = getelementptr inbounds [2 x i32], [2 x i32]* %my_read, i32 0, i64 0
  %23 = load i32, i32* %arrayidx, align 4
  %call29 = call %struct._GIOChannel* @g_io_channel_unix_new(i32 %23)
  %24 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in.addr, align 8
  %my_read30 = getelementptr inbounds %struct._GimpPlugIn, %struct._GimpPlugIn* %24, i32 0, i32 6
  store %struct._GIOChannel* %call29, %struct._GIOChannel** %my_read30, align 8
  %arrayidx31 = getelementptr inbounds [2 x i32], [2 x i32]* %my_write, i32 0, i64 1
  %25 = load i32, i32* %arrayidx31, align 4
  %call32 = call %struct._GIOChannel* @g_io_channel_unix_new(i32 %25)
  %26 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in.addr, align 8
  %my_write33 = getelementptr inbounds %struct._GimpPlugIn, %struct._GimpPlugIn* %26, i32 0, i32 7
  store %struct._GIOChannel* %call32, %struct._GIOChannel** %my_write33, align 8
  %arrayidx34 = getelementptr inbounds [2 x i32], [2 x i32]* %my_write, i32 0, i64 0
  %27 = load i32, i32* %arrayidx34, align 4
  %call35 = call %struct._GIOChannel* @g_io_channel_unix_new(i32 %27)
  %28 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in.addr, align 8
  %his_read = getelementptr inbounds %struct._GimpPlugIn, %struct._GimpPlugIn* %28, i32 0, i32 8
  store %struct._GIOChannel* %call35, %struct._GIOChannel** %his_read, align 8
  %arrayidx36 = getelementptr inbounds [2 x i32], [2 x i32]* %my_read, i32 0, i64 1
  %29 = load i32, i32* %arrayidx36, align 4
  %call37 = call %struct._GIOChannel* @g_io_channel_unix_new(i32 %29)
  %30 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in.addr, align 8
  %his_write = getelementptr inbounds %struct._GimpPlugIn, %struct._GimpPlugIn* %30, i32 0, i32 9
  store %struct._GIOChannel* %call37, %struct._GIOChannel** %his_write, align 8
  %31 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in.addr, align 8
  %my_read38 = getelementptr inbounds %struct._GimpPlugIn, %struct._GimpPlugIn* %31, i32 0, i32 6
  %32 = load %struct._GIOChannel*, %struct._GIOChannel** %my_read38, align 8
  %call39 = call i32 @g_io_channel_set_encoding(%struct._GIOChannel* %32, i8* null, %struct._GError** null)
  %33 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in.addr, align 8
  %my_write40 = getelementptr inbounds %struct._GimpPlugIn, %struct._GimpPlugIn* %33, i32 0, i32 7
  %34 = load %struct._GIOChannel*, %struct._GIOChannel** %my_write40, align 8
  %call41 = call i32 @g_io_channel_set_encoding(%struct._GIOChannel* %34, i8* null, %struct._GError** null)
  %35 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in.addr, align 8
  %his_read42 = getelementptr inbounds %struct._GimpPlugIn, %struct._GimpPlugIn* %35, i32 0, i32 8
  %36 = load %struct._GIOChannel*, %struct._GIOChannel** %his_read42, align 8
  %call43 = call i32 @g_io_channel_set_encoding(%struct._GIOChannel* %36, i8* null, %struct._GError** null)
  %37 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in.addr, align 8
  %his_write44 = getelementptr inbounds %struct._GimpPlugIn, %struct._GimpPlugIn* %37, i32 0, i32 9
  %38 = load %struct._GIOChannel*, %struct._GIOChannel** %his_write44, align 8
  %call45 = call i32 @g_io_channel_set_encoding(%struct._GIOChannel* %38, i8* null, %struct._GError** null)
  %39 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in.addr, align 8
  %my_read46 = getelementptr inbounds %struct._GimpPlugIn, %struct._GimpPlugIn* %39, i32 0, i32 6
  %40 = load %struct._GIOChannel*, %struct._GIOChannel** %my_read46, align 8
  call void @g_io_channel_set_buffered(%struct._GIOChannel* %40, i32 0)
  %41 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in.addr, align 8
  %my_write47 = getelementptr inbounds %struct._GimpPlugIn, %struct._GimpPlugIn* %41, i32 0, i32 7
  %42 = load %struct._GIOChannel*, %struct._GIOChannel** %my_write47, align 8
  call void @g_io_channel_set_buffered(%struct._GIOChannel* %42, i32 0)
  %43 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in.addr, align 8
  %his_read48 = getelementptr inbounds %struct._GimpPlugIn, %struct._GimpPlugIn* %43, i32 0, i32 8
  %44 = load %struct._GIOChannel*, %struct._GIOChannel** %his_read48, align 8
  call void @g_io_channel_set_buffered(%struct._GIOChannel* %44, i32 0)
  %45 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in.addr, align 8
  %his_write49 = getelementptr inbounds %struct._GimpPlugIn, %struct._GimpPlugIn* %45, i32 0, i32 9
  %46 = load %struct._GIOChannel*, %struct._GIOChannel** %his_write49, align 8
  call void @g_io_channel_set_buffered(%struct._GIOChannel* %46, i32 0)
  %47 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in.addr, align 8
  %my_read50 = getelementptr inbounds %struct._GimpPlugIn, %struct._GimpPlugIn* %47, i32 0, i32 6
  %48 = load %struct._GIOChannel*, %struct._GIOChannel** %my_read50, align 8
  call void @g_io_channel_set_close_on_unref(%struct._GIOChannel* %48, i32 1)
  %49 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in.addr, align 8
  %my_write51 = getelementptr inbounds %struct._GimpPlugIn, %struct._GimpPlugIn* %49, i32 0, i32 7
  %50 = load %struct._GIOChannel*, %struct._GIOChannel** %my_write51, align 8
  call void @g_io_channel_set_close_on_unref(%struct._GIOChannel* %50, i32 1)
  %51 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in.addr, align 8
  %his_read52 = getelementptr inbounds %struct._GimpPlugIn, %struct._GimpPlugIn* %51, i32 0, i32 8
  %52 = load %struct._GIOChannel*, %struct._GIOChannel** %his_read52, align 8
  call void @g_io_channel_set_close_on_unref(%struct._GIOChannel* %52, i32 1)
  %53 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in.addr, align 8
  %his_write53 = getelementptr inbounds %struct._GimpPlugIn, %struct._GimpPlugIn* %53, i32 0, i32 9
  %54 = load %struct._GIOChannel*, %struct._GIOChannel** %his_write53, align 8
  call void @g_io_channel_set_close_on_unref(%struct._GIOChannel* %54, i32 1)
  %55 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in.addr, align 8
  %his_read54 = getelementptr inbounds %struct._GimpPlugIn, %struct._GimpPlugIn* %55, i32 0, i32 8
  %56 = load %struct._GIOChannel*, %struct._GIOChannel** %his_read54, align 8
  %call55 = call i32 @g_io_channel_unix_get_fd(%struct._GIOChannel* %56)
  %call56 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i32 0, i32 0), i32 %call55)
  store i8* %call56, i8** %read_fd, align 8
  %57 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in.addr, align 8
  %his_write57 = getelementptr inbounds %struct._GimpPlugIn, %struct._GimpPlugIn* %57, i32 0, i32 9
  %58 = load %struct._GIOChannel*, %struct._GIOChannel** %his_write57, align 8
  %call58 = call i32 @g_io_channel_unix_get_fd(%struct._GIOChannel* %58)
  %call59 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i32 0, i32 0), i32 %call58)
  store i8* %call59, i8** %write_fd, align 8
  %59 = load i32, i32* %call_mode.addr, align 4
  switch i32 %59, label %sw.default [
    i32 2, label %sw.bb
    i32 3, label %sw.bb.60
    i32 1, label %sw.bb.61
  ]

sw.bb:                                            ; preds = %if.end.28
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i32 0, i32 0), i8** %mode, align 8
  store i32 1, i32* %debug_flag, align 4
  br label %sw.epilog

sw.bb.60:                                         ; preds = %if.end.28
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i32 0, i32 0), i8** %mode, align 8
  store i32 2, i32* %debug_flag, align 4
  br label %sw.epilog

sw.bb.61:                                         ; preds = %if.end.28
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i32 0, i32 0), i8** %mode, align 8
  store i32 4, i32* %debug_flag, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %if.end.28
  br label %do.body.62

do.body.62:                                       ; preds = %sw.default
  call void @g_assertion_message_expr(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.15, i32 0, i32 0), i32 319, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.gimp_plug_in_open, i32 0, i32 0), i8* null) #10
  unreachable

do.end.63:                                        ; No predecessors!
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end.63, %sw.bb.61, %sw.bb.60, %sw.bb
  %60 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in.addr, align 8
  %manager64 = getelementptr inbounds %struct._GimpPlugIn, %struct._GimpPlugIn* %60, i32 0, i32 1
  %61 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %manager64, align 8
  %gimp65 = getelementptr inbounds %struct._GimpPlugInManager, %struct._GimpPlugInManager* %61, i32 0, i32 1
  %62 = load %struct._Gimp*, %struct._Gimp** %gimp65, align 8
  %stack_trace_mode = getelementptr inbounds %struct._Gimp, %struct._Gimp* %62, i32 0, i32 12
  %63 = load i32, i32* %stack_trace_mode, align 4
  %call66 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i32 0, i32 0), i32 %63)
  store i8* %call66, i8** %stm, align 8
  %64 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in.addr, align 8
  %manager67 = getelementptr inbounds %struct._GimpPlugIn, %struct._GimpPlugIn* %64, i32 0, i32 1
  %65 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %manager67, align 8
  %interpreter_db = getelementptr inbounds %struct._GimpPlugInManager, %struct._GimpPlugInManager* %65, i32 0, i32 16
  %66 = load %struct._GimpInterpreterDB*, %struct._GimpInterpreterDB** %interpreter_db, align 8
  %67 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in.addr, align 8
  %prog68 = getelementptr inbounds %struct._GimpPlugIn, %struct._GimpPlugIn* %67, i32 0, i32 2
  %68 = load i8*, i8** %prog68, align 8
  %call69 = call i8* @gimp_interpreter_db_resolve(%struct._GimpInterpreterDB* %66, i8* %68, i8** %interp_arg)
  store i8* %call69, i8** %interp, align 8
  store i32 0, i32* %argc, align 4
  %69 = load i8*, i8** %interp, align 8
  %tobool70 = icmp ne i8* %69, null
  br i1 %tobool70, label %if.then.71, label %if.end.73

if.then.71:                                       ; preds = %sw.epilog
  %70 = load i8*, i8** %interp, align 8
  %71 = load i32, i32* %argc, align 4
  %inc = add nsw i32 %71, 1
  store i32 %inc, i32* %argc, align 4
  %idxprom = sext i32 %71 to i64
  %arrayidx72 = getelementptr inbounds [9 x i8*], [9 x i8*]* %args, i32 0, i64 %idxprom
  store i8* %70, i8** %arrayidx72, align 8
  br label %if.end.73

if.end.73:                                        ; preds = %if.then.71, %sw.epilog
  %72 = load i8*, i8** %interp_arg, align 8
  %tobool74 = icmp ne i8* %72, null
  br i1 %tobool74, label %if.then.75, label %if.end.79

if.then.75:                                       ; preds = %if.end.73
  %73 = load i8*, i8** %interp_arg, align 8
  %74 = load i32, i32* %argc, align 4
  %inc76 = add nsw i32 %74, 1
  store i32 %inc76, i32* %argc, align 4
  %idxprom77 = sext i32 %74 to i64
  %arrayidx78 = getelementptr inbounds [9 x i8*], [9 x i8*]* %args, i32 0, i64 %idxprom77
  store i8* %73, i8** %arrayidx78, align 8
  br label %if.end.79

if.end.79:                                        ; preds = %if.then.75, %if.end.73
  %75 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in.addr, align 8
  %prog80 = getelementptr inbounds %struct._GimpPlugIn, %struct._GimpPlugIn* %75, i32 0, i32 2
  %76 = load i8*, i8** %prog80, align 8
  %77 = load i32, i32* %argc, align 4
  %inc81 = add nsw i32 %77, 1
  store i32 %inc81, i32* %argc, align 4
  %idxprom82 = sext i32 %77 to i64
  %arrayidx83 = getelementptr inbounds [9 x i8*], [9 x i8*]* %args, i32 0, i64 %idxprom82
  store i8* %76, i8** %arrayidx83, align 8
  %78 = load i32, i32* %argc, align 4
  %inc84 = add nsw i32 %78, 1
  store i32 %inc84, i32* %argc, align 4
  %idxprom85 = sext i32 %78 to i64
  %arrayidx86 = getelementptr inbounds [9 x i8*], [9 x i8*]* %args, i32 0, i64 %idxprom85
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i32 0, i32 0), i8** %arrayidx86, align 8
  %79 = load i8*, i8** %read_fd, align 8
  %80 = load i32, i32* %argc, align 4
  %inc87 = add nsw i32 %80, 1
  store i32 %inc87, i32* %argc, align 4
  %idxprom88 = sext i32 %80 to i64
  %arrayidx89 = getelementptr inbounds [9 x i8*], [9 x i8*]* %args, i32 0, i64 %idxprom88
  store i8* %79, i8** %arrayidx89, align 8
  %81 = load i8*, i8** %write_fd, align 8
  %82 = load i32, i32* %argc, align 4
  %inc90 = add nsw i32 %82, 1
  store i32 %inc90, i32* %argc, align 4
  %idxprom91 = sext i32 %82 to i64
  %arrayidx92 = getelementptr inbounds [9 x i8*], [9 x i8*]* %args, i32 0, i64 %idxprom91
  store i8* %81, i8** %arrayidx92, align 8
  %83 = load i8*, i8** %mode, align 8
  %84 = load i32, i32* %argc, align 4
  %inc93 = add nsw i32 %84, 1
  store i32 %inc93, i32* %argc, align 4
  %idxprom94 = sext i32 %84 to i64
  %arrayidx95 = getelementptr inbounds [9 x i8*], [9 x i8*]* %args, i32 0, i64 %idxprom94
  store i8* %83, i8** %arrayidx95, align 8
  %85 = load i8*, i8** %stm, align 8
  %86 = load i32, i32* %argc, align 4
  %inc96 = add nsw i32 %86, 1
  store i32 %inc96, i32* %argc, align 4
  %idxprom97 = sext i32 %86 to i64
  %arrayidx98 = getelementptr inbounds [9 x i8*], [9 x i8*]* %args, i32 0, i64 %idxprom97
  store i8* %85, i8** %arrayidx98, align 8
  %87 = load i32, i32* %argc, align 4
  %inc99 = add nsw i32 %87, 1
  store i32 %inc99, i32* %argc, align 4
  %idxprom100 = sext i32 %87 to i64
  %arrayidx101 = getelementptr inbounds [9 x i8*], [9 x i8*]* %args, i32 0, i64 %idxprom100
  store i8* null, i8** %arrayidx101, align 8
  %arraydecay102 = getelementptr inbounds [9 x i8*], [9 x i8*]* %args, i32 0, i32 0
  store i8** %arraydecay102, i8*** %argv, align 8
  %88 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in.addr, align 8
  %manager103 = getelementptr inbounds %struct._GimpPlugIn, %struct._GimpPlugIn* %88, i32 0, i32 1
  %89 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %manager103, align 8
  %environ_table = getelementptr inbounds %struct._GimpPlugInManager, %struct._GimpPlugInManager* %89, i32 0, i32 17
  %90 = load %struct._GimpEnvironTable*, %struct._GimpEnvironTable** %environ_table, align 8
  %call104 = call i8** @gimp_environ_table_get_envp(%struct._GimpEnvironTable* %90)
  store i8** %call104, i8*** %envp, align 8
  store i32 35, i32* %spawn_flags, align 4
  store i32 0, i32* %debug, align 4
  %91 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in.addr, align 8
  %manager105 = getelementptr inbounds %struct._GimpPlugIn, %struct._GimpPlugIn* %91, i32 0, i32 1
  %92 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %manager105, align 8
  %debug106 = getelementptr inbounds %struct._GimpPlugInManager, %struct._GimpPlugInManager* %92, i32 0, i32 18
  %93 = load %struct._GimpPlugInDebug*, %struct._GimpPlugInDebug** %debug106, align 8
  %tobool107 = icmp ne %struct._GimpPlugInDebug* %93, null
  br i1 %tobool107, label %if.then.108, label %if.end.118

if.then.108:                                      ; preds = %if.end.79
  %94 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in.addr, align 8
  %manager110 = getelementptr inbounds %struct._GimpPlugIn, %struct._GimpPlugIn* %94, i32 0, i32 1
  %95 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %manager110, align 8
  %debug111 = getelementptr inbounds %struct._GimpPlugInManager, %struct._GimpPlugInManager* %95, i32 0, i32 18
  %96 = load %struct._GimpPlugInDebug*, %struct._GimpPlugInDebug** %debug111, align 8
  %97 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in.addr, align 8
  %prog112 = getelementptr inbounds %struct._GimpPlugIn, %struct._GimpPlugIn* %97, i32 0, i32 2
  %98 = load i8*, i8** %prog112, align 8
  %99 = load i32, i32* %debug_flag, align 4
  %arraydecay113 = getelementptr inbounds [9 x i8*], [9 x i8*]* %args, i32 0, i32 0
  %call114 = call i8** @gimp_plug_in_debug_argv(%struct._GimpPlugInDebug* %96, i8* %98, i32 %99, i8** %arraydecay113)
  store i8** %call114, i8*** %debug_argv, align 8
  %100 = load i8**, i8*** %debug_argv, align 8
  %tobool115 = icmp ne i8** %100, null
  br i1 %tobool115, label %if.then.116, label %if.end.117

if.then.116:                                      ; preds = %if.then.108
  store i32 1, i32* %debug, align 4
  %101 = load i8**, i8*** %debug_argv, align 8
  store i8** %101, i8*** %argv, align 8
  %102 = load i32, i32* %spawn_flags, align 4
  %or = or i32 %102, 4
  store i32 %or, i32* %spawn_flags, align 4
  br label %if.end.117

if.end.117:                                       ; preds = %if.then.116, %if.then.108
  br label %if.end.118

if.end.118:                                       ; preds = %if.end.117, %if.end.79
  %103 = load i8**, i8*** %argv, align 8
  %104 = load i8**, i8*** %envp, align 8
  %105 = load i32, i32* %spawn_flags, align 4
  %106 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in.addr, align 8
  %107 = bitcast %struct._GimpPlugIn* %106 to i8*
  %108 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in.addr, align 8
  %pid = getelementptr inbounds %struct._GimpPlugIn, %struct._GimpPlugIn* %108, i32 0, i32 5
  %call119 = call i32 @g_spawn_async(i8* null, i8** %103, i8** %104, i32 %105, void (i8*)* @gimp_plug_in_prep_for_exec, i8* %107, i32* %pid, %struct._GError** %error)
  %tobool120 = icmp ne i32 %call119, 0
  br i1 %tobool120, label %if.end.127, label %if.then.121

if.then.121:                                      ; preds = %if.end.118
  %109 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in.addr, align 8
  %manager122 = getelementptr inbounds %struct._GimpPlugIn, %struct._GimpPlugIn* %109, i32 0, i32 1
  %110 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %manager122, align 8
  %gimp123 = getelementptr inbounds %struct._GimpPlugInManager, %struct._GimpPlugInManager* %110, i32 0, i32 1
  %111 = load %struct._Gimp*, %struct._Gimp** %gimp123, align 8
  %112 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in.addr, align 8
  %113 = bitcast %struct._GimpPlugIn* %112 to i8*
  %call124 = call i8* @gimp_object_get_name(i8* %113)
  %114 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in.addr, align 8
  %prog125 = getelementptr inbounds %struct._GimpPlugIn, %struct._GimpPlugIn* %114, i32 0, i32 2
  %115 = load i8*, i8** %prog125, align 8
  %call126 = call i8* @gimp_filename_to_utf8(i8* %115)
  %116 = load %struct._GError*, %struct._GError** %error, align 8
  %message = getelementptr inbounds %struct._GError, %struct._GError* %116, i32 0, i32 2
  %117 = load i8*, i8** %message, align 8
  call void (%struct._Gimp*, %struct._GObject*, i32, i8*, ...) @gimp_message(%struct._Gimp* %111, %struct._GObject* null, i32 2, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.17, i32 0, i32 0), i8* %call124, i8* %call126, i8* %117)
  %118 = load %struct._GError*, %struct._GError** %error, align 8
  call void @g_error_free(%struct._GError* %118)
  br label %cleanup

if.end.127:                                       ; preds = %if.end.118
  %119 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in.addr, align 8
  %his_read128 = getelementptr inbounds %struct._GimpPlugIn, %struct._GimpPlugIn* %119, i32 0, i32 8
  %120 = load %struct._GIOChannel*, %struct._GIOChannel** %his_read128, align 8
  call void @g_io_channel_unref(%struct._GIOChannel* %120)
  %121 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in.addr, align 8
  %his_read129 = getelementptr inbounds %struct._GimpPlugIn, %struct._GimpPlugIn* %121, i32 0, i32 8
  store %struct._GIOChannel* null, %struct._GIOChannel** %his_read129, align 8
  %122 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in.addr, align 8
  %his_write130 = getelementptr inbounds %struct._GimpPlugIn, %struct._GimpPlugIn* %122, i32 0, i32 9
  %123 = load %struct._GIOChannel*, %struct._GIOChannel** %his_write130, align 8
  call void @g_io_channel_unref(%struct._GIOChannel* %123)
  %124 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in.addr, align 8
  %his_write131 = getelementptr inbounds %struct._GimpPlugIn, %struct._GimpPlugIn* %124, i32 0, i32 9
  store %struct._GIOChannel* null, %struct._GIOChannel** %his_write131, align 8
  %125 = load i32, i32* %synchronous.addr, align 4
  %tobool132 = icmp ne i32 %125, 0
  br i1 %tobool132, label %if.end.138, label %if.then.133

if.then.133:                                      ; preds = %if.end.127
  %126 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in.addr, align 8
  %my_read135 = getelementptr inbounds %struct._GimpPlugIn, %struct._GimpPlugIn* %126, i32 0, i32 6
  %127 = load %struct._GIOChannel*, %struct._GIOChannel** %my_read135, align 8
  %call136 = call %struct._GSource* @g_io_create_watch(%struct._GIOChannel* %127, i32 27)
  store %struct._GSource* %call136, %struct._GSource** %source, align 8
  %128 = load %struct._GSource*, %struct._GSource** %source, align 8
  %129 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in.addr, align 8
  %130 = bitcast %struct._GimpPlugIn* %129 to i8*
  call void @g_source_set_callback(%struct._GSource* %128, i32 (i8*)* bitcast (i32 (%struct._GIOChannel*, i32, i8*)* @gimp_plug_in_recv_message to i32 (i8*)*), i8* %130, void (i8*)* null)
  %131 = load %struct._GSource*, %struct._GSource** %source, align 8
  call void @g_source_set_can_recurse(%struct._GSource* %131, i32 1)
  %132 = load %struct._GSource*, %struct._GSource** %source, align 8
  %call137 = call i32 @g_source_attach(%struct._GSource* %132, %struct._GMainContext* null)
  %133 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in.addr, align 8
  %input_id = getelementptr inbounds %struct._GimpPlugIn, %struct._GimpPlugIn* %133, i32 0, i32 10
  store i32 %call137, i32* %input_id, align 4
  %134 = load %struct._GSource*, %struct._GSource** %source, align 8
  call void @g_source_unref(%struct._GSource* %134)
  br label %if.end.138

if.end.138:                                       ; preds = %if.then.133, %if.end.127
  %135 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in.addr, align 8
  %open = getelementptr inbounds %struct._GimpPlugIn, %struct._GimpPlugIn* %135, i32 0, i32 4
  %bf.load = load i8, i8* %open, align 4
  %bf.clear = and i8 %bf.load, -2
  %bf.set = or i8 %bf.clear, 1
  store i8 %bf.set, i8* %open, align 4
  %136 = load i32, i32* %call_mode.addr, align 4
  %137 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in.addr, align 8
  %call_mode139 = getelementptr inbounds %struct._GimpPlugIn, %struct._GimpPlugIn* %137, i32 0, i32 3
  store i32 %136, i32* %call_mode139, align 4
  %138 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in.addr, align 8
  %manager140 = getelementptr inbounds %struct._GimpPlugIn, %struct._GimpPlugIn* %138, i32 0, i32 1
  %139 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %manager140, align 8
  %140 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in.addr, align 8
  call void @gimp_plug_in_manager_add_open_plug_in(%struct._GimpPlugInManager* %139, %struct._GimpPlugIn* %140)
  br label %cleanup

cleanup:                                          ; preds = %if.end.138, %if.then.121
  %141 = load i32, i32* %debug, align 4
  %tobool141 = icmp ne i32 %141, 0
  br i1 %tobool141, label %if.then.142, label %if.end.143

if.then.142:                                      ; preds = %cleanup
  %142 = load i8**, i8*** %argv, align 8
  %143 = bitcast i8** %142 to i8*
  call void @g_free(i8* %143)
  br label %if.end.143

if.end.143:                                       ; preds = %if.then.142, %cleanup
  %144 = load i8*, i8** %read_fd, align 8
  call void @g_free(i8* %144)
  %145 = load i8*, i8** %write_fd, align 8
  call void @g_free(i8* %145)
  %146 = load i8*, i8** %stm, align 8
  call void @g_free(i8* %146)
  %147 = load i8*, i8** %interp, align 8
  call void @g_free(i8* %147)
  %148 = load i8*, i8** %interp_arg, align 8
  call void @g_free(i8* %148)
  %149 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in.addr, align 8
  %open144 = getelementptr inbounds %struct._GimpPlugIn, %struct._GimpPlugIn* %149, i32 0, i32 4
  %bf.load145 = load i8, i8* %open144, align 4
  %bf.clear146 = and i8 %bf.load145, 1
  %bf.cast = zext i8 %bf.clear146 to i32
  store i32 %bf.cast, i32* %retval
  br label %return

return:                                           ; preds = %if.end.143, %if.then.23, %if.else.15, %if.else.9
  %150 = load i32, i32* %retval
  ret i32 %150
}

; Function Attrs: nounwind
declare i32 @pipe(i32*) #5

declare void @gimp_message(%struct._Gimp*, %struct._GObject*, i32, i8*, ...) #1

declare i8* @gimp_object_get_name(i8*) #1

declare i8* @gimp_filename_to_utf8(i8*) #1

; Function Attrs: nounwind readnone
declare i8* @g_strerror(i32) #2

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #2

declare %struct._GIOChannel* @g_io_channel_unix_new(i32) #1

declare i32 @g_io_channel_set_encoding(%struct._GIOChannel*, i8*, %struct._GError**) #1

declare void @g_io_channel_set_buffered(%struct._GIOChannel*, i32) #1

declare void @g_io_channel_set_close_on_unref(%struct._GIOChannel*, i32) #1

declare noalias i8* @g_strdup_printf(i8*, ...) #1

declare i32 @g_io_channel_unix_get_fd(%struct._GIOChannel*) #1

; Function Attrs: noreturn
declare void @g_assertion_message_expr(i8*, i8*, i32, i8*, i8*) #6

declare i8* @gimp_interpreter_db_resolve(%struct._GimpInterpreterDB*, i8*, i8**) #1

declare i8** @gimp_environ_table_get_envp(%struct._GimpEnvironTable*) #1

declare i8** @gimp_plug_in_debug_argv(%struct._GimpPlugInDebug*, i8*, i32, i8**) #1

declare i32 @g_spawn_async(i8*, i8**, i8**, i32, void (i8*)*, i8*, i32*, %struct._GError**) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_plug_in_prep_for_exec(i8* %data) #3 {
entry:
  %data.addr = alloca i8*, align 8
  %plug_in = alloca %struct._GimpPlugIn*, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = bitcast i8* %0 to %struct._GimpPlugIn*
  store %struct._GimpPlugIn* %1, %struct._GimpPlugIn** %plug_in, align 8
  %2 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in, align 8
  %my_read = getelementptr inbounds %struct._GimpPlugIn, %struct._GimpPlugIn* %2, i32 0, i32 6
  %3 = load %struct._GIOChannel*, %struct._GIOChannel** %my_read, align 8
  call void @g_io_channel_unref(%struct._GIOChannel* %3)
  %4 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in, align 8
  %my_read1 = getelementptr inbounds %struct._GimpPlugIn, %struct._GimpPlugIn* %4, i32 0, i32 6
  store %struct._GIOChannel* null, %struct._GIOChannel** %my_read1, align 8
  %5 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in, align 8
  %my_write = getelementptr inbounds %struct._GimpPlugIn, %struct._GimpPlugIn* %5, i32 0, i32 7
  %6 = load %struct._GIOChannel*, %struct._GIOChannel** %my_write, align 8
  call void @g_io_channel_unref(%struct._GIOChannel* %6)
  %7 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in, align 8
  %my_write2 = getelementptr inbounds %struct._GimpPlugIn, %struct._GimpPlugIn* %7, i32 0, i32 7
  store %struct._GIOChannel* null, %struct._GIOChannel** %my_write2, align 8
  ret void
}

declare void @g_error_free(%struct._GError*) #1

declare void @g_io_channel_unref(%struct._GIOChannel*) #1

declare %struct._GSource* @g_io_create_watch(%struct._GIOChannel*, i32) #1

declare void @g_source_set_callback(%struct._GSource*, i32 (i8*)*, i8*, void (i8*)*) #1

; Function Attrs: nounwind uwtable
define internal i32 @gimp_plug_in_recv_message(%struct._GIOChannel* %channel, i32 %cond, i8* %data) #3 {
entry:
  %retval = alloca i32, align 4
  %channel.addr = alloca %struct._GIOChannel*, align 8
  %cond.addr = alloca i32, align 4
  %data.addr = alloca i8*, align 8
  %plug_in = alloca %struct._GimpPlugIn*, align 8
  %got_message = alloca i32, align 4
  %msg = alloca %struct._GimpWireMessage, align 8
  %frame = alloca %struct._GimpPlugInProcFrame*, align 8
  %progress = alloca %struct._GimpProgress*, align 8
  store %struct._GIOChannel* %channel, %struct._GIOChannel** %channel.addr, align 8
  store i32 %cond, i32* %cond.addr, align 4
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = bitcast i8* %0 to %struct._GimpPlugIn*
  store %struct._GimpPlugIn* %1, %struct._GimpPlugIn** %plug_in, align 8
  store i32 0, i32* %got_message, align 4
  %2 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in, align 8
  %my_read = getelementptr inbounds %struct._GimpPlugIn, %struct._GimpPlugIn* %2, i32 0, i32 6
  %3 = load %struct._GIOChannel*, %struct._GIOChannel** %my_read, align 8
  %cmp = icmp eq %struct._GIOChannel* %3, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %4 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in, align 8
  %5 = bitcast %struct._GimpPlugIn* %4 to i8*
  %call = call i8* @g_object_ref(i8* %5)
  %6 = load i32, i32* %cond.addr, align 4
  %and = and i32 %6, 3
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then.1, label %if.end.7

if.then.1:                                        ; preds = %if.end
  %7 = bitcast %struct._GimpWireMessage* %msg to i8*
  call void @llvm.memset.p0i8.i64(i8* %7, i8 0, i64 16, i32 8, i1 false)
  %8 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in, align 8
  %my_read2 = getelementptr inbounds %struct._GimpPlugIn, %struct._GimpPlugIn* %8, i32 0, i32 6
  %9 = load %struct._GIOChannel*, %struct._GIOChannel** %my_read2, align 8
  %10 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in, align 8
  %11 = bitcast %struct._GimpPlugIn* %10 to i8*
  %call3 = call i32 @gimp_wire_read_msg(%struct._GIOChannel* %9, %struct._GimpWireMessage* %msg, i8* %11)
  %tobool4 = icmp ne i32 %call3, 0
  br i1 %tobool4, label %if.else, label %if.then.5

if.then.5:                                        ; preds = %if.then.1
  %12 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in, align 8
  call void @gimp_plug_in_close(%struct._GimpPlugIn* %12, i32 1)
  br label %if.end.6

if.else:                                          ; preds = %if.then.1
  %13 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in, align 8
  call void @gimp_plug_in_handle_message(%struct._GimpPlugIn* %13, %struct._GimpWireMessage* %msg)
  call void @gimp_wire_destroy(%struct._GimpWireMessage* %msg)
  store i32 1, i32* %got_message, align 4
  br label %if.end.6

if.end.6:                                         ; preds = %if.else, %if.then.5
  br label %if.end.7

if.end.7:                                         ; preds = %if.end.6, %if.end
  %14 = load i32, i32* %cond.addr, align 4
  %and8 = and i32 %14, 24
  %tobool9 = icmp ne i32 %and8, 0
  br i1 %tobool9, label %if.then.10, label %if.end.20

if.then.10:                                       ; preds = %if.end.7
  %15 = load i32, i32* %cond.addr, align 4
  %and11 = and i32 %15, 16
  %tobool12 = icmp ne i32 %and11, 0
  br i1 %tobool12, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %if.then.10
  %16 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in, align 8
  %hup = getelementptr inbounds %struct._GimpPlugIn, %struct._GimpPlugIn* %16, i32 0, i32 4
  %bf.load = load i8, i8* %hup, align 4
  %bf.clear = and i8 %bf.load, -3
  %bf.set = or i8 %bf.clear, 2
  store i8 %bf.set, i8* %hup, align 4
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.13, %if.then.10
  %17 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in, align 8
  %open = getelementptr inbounds %struct._GimpPlugIn, %struct._GimpPlugIn* %17, i32 0, i32 4
  %bf.load15 = load i8, i8* %open, align 4
  %bf.clear16 = and i8 %bf.load15, 1
  %bf.cast = zext i8 %bf.clear16 to i32
  %tobool17 = icmp ne i32 %bf.cast, 0
  br i1 %tobool17, label %if.then.18, label %if.end.19

if.then.18:                                       ; preds = %if.end.14
  %18 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in, align 8
  call void @gimp_plug_in_close(%struct._GimpPlugIn* %18, i32 1)
  br label %if.end.19

if.end.19:                                        ; preds = %if.then.18, %if.end.14
  br label %if.end.20

if.end.20:                                        ; preds = %if.end.19, %if.end.7
  %19 = load i32, i32* %got_message, align 4
  %tobool21 = icmp ne i32 %19, 0
  br i1 %tobool21, label %if.end.31, label %if.then.22

if.then.22:                                       ; preds = %if.end.20
  %20 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in, align 8
  %call23 = call %struct._GimpPlugInProcFrame* @gimp_plug_in_get_proc_frame(%struct._GimpPlugIn* %20)
  store %struct._GimpPlugInProcFrame* %call23, %struct._GimpPlugInProcFrame** %frame, align 8
  %21 = load %struct._GimpPlugInProcFrame*, %struct._GimpPlugInProcFrame** %frame, align 8
  %tobool24 = icmp ne %struct._GimpPlugInProcFrame* %21, null
  br i1 %tobool24, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.22
  %22 = load %struct._GimpPlugInProcFrame*, %struct._GimpPlugInProcFrame** %frame, align 8
  %progress25 = getelementptr inbounds %struct._GimpPlugInProcFrame, %struct._GimpPlugInProcFrame* %22, i32 0, i32 6
  %23 = load %struct._GimpProgress*, %struct._GimpProgress** %progress25, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.then.22
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond26 = phi %struct._GimpProgress* [ %23, %cond.true ], [ null, %cond.false ]
  store %struct._GimpProgress* %cond26, %struct._GimpProgress** %progress, align 8
  %24 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in, align 8
  %manager = getelementptr inbounds %struct._GimpPlugIn, %struct._GimpPlugIn* %24, i32 0, i32 1
  %25 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %manager, align 8
  %gimp = getelementptr inbounds %struct._GimpPlugInManager, %struct._GimpPlugInManager* %25, i32 0, i32 1
  %26 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %27 = load %struct._GimpProgress*, %struct._GimpProgress** %progress, align 8
  %28 = bitcast %struct._GimpProgress* %27 to %struct._GTypeInstance*
  %call27 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %28, i64 80)
  %29 = bitcast %struct._GTypeInstance* %call27 to %struct._GObject*
  %call28 = call i8* @gettext(i8* getelementptr inbounds ([162 x i8], [162 x i8]* @.str.32, i32 0, i32 0)) #7
  %30 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in, align 8
  %31 = bitcast %struct._GimpPlugIn* %30 to i8*
  %call29 = call i8* @gimp_object_get_name(i8* %31)
  %32 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in, align 8
  %prog = getelementptr inbounds %struct._GimpPlugIn, %struct._GimpPlugIn* %32, i32 0, i32 2
  %33 = load i8*, i8** %prog, align 8
  %call30 = call i8* @gimp_filename_to_utf8(i8* %33)
  call void (%struct._Gimp*, %struct._GObject*, i32, i8*, ...) @gimp_message(%struct._Gimp* %26, %struct._GObject* %29, i32 2, i8* %call28, i8* %call29, i8* %call30)
  br label %if.end.31

if.end.31:                                        ; preds = %cond.end, %if.end.20
  %34 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in, align 8
  %35 = bitcast %struct._GimpPlugIn* %34 to i8*
  call void @g_object_unref(i8* %35)
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.31, %if.then
  %36 = load i32, i32* %retval
  ret i32 %36
}

declare void @g_source_set_can_recurse(%struct._GSource*, i32) #1

declare i32 @g_source_attach(%struct._GSource*, %struct._GMainContext*) #1

declare void @g_source_unref(%struct._GSource*) #1

declare void @gimp_plug_in_manager_add_open_plug_in(%struct._GimpPlugInManager*, %struct._GimpPlugIn*) #1

declare void @g_free(i8*) #1

; Function Attrs: nounwind uwtable
define void @gimp_plug_in_close(%struct._GimpPlugIn* %plug_in, i32 %kill_it) #3 {
entry:
  %plug_in.addr = alloca %struct._GimpPlugIn*, align 8
  %kill_it.addr = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %status = alloca i32, align 4
  %proc_frame = alloca %struct._GimpPlugInProcFrame*, align 8
  store %struct._GimpPlugIn* %plug_in, %struct._GimpPlugIn** %plug_in.addr, align 8
  store i32 %kill_it, i32* %kill_it.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in.addr, align 8
  %1 = bitcast %struct._GimpPlugIn* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_plug_in_get_type() #8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.gimp_plug_in_close, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8, i32 0, i32 0))
  br label %return

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
  %tobool12 = icmp ne i32 %bf.cast, 0
  br i1 %tobool12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %do.body.11
  br label %if.end.15

if.else.14:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.gimp_plug_in_close, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.18, i32 0, i32 0))
  br label %return

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  %14 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in.addr, align 8
  %open17 = getelementptr inbounds %struct._GimpPlugIn, %struct._GimpPlugIn* %14, i32 0, i32 4
  %bf.load18 = load i8, i8* %open17, align 4
  %bf.clear19 = and i8 %bf.load18, -2
  store i8 %bf.clear19, i8* %open17, align 4
  %15 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in.addr, align 8
  %pid = getelementptr inbounds %struct._GimpPlugIn, %struct._GimpPlugIn* %15, i32 0, i32 5
  %16 = load i32, i32* %pid, align 4
  %tobool20 = icmp ne i32 %16, 0
  br i1 %tobool20, label %if.then.21, label %if.end.54

if.then.21:                                       ; preds = %do.end.16
  %17 = load i32, i32* %kill_it.addr, align 4
  %tobool23 = icmp ne i32 %17, 0
  br i1 %tobool23, label %land.lhs.true.24, label %if.end.31

land.lhs.true.24:                                 ; preds = %if.then.21
  %18 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in.addr, align 8
  %hup = getelementptr inbounds %struct._GimpPlugIn, %struct._GimpPlugIn* %18, i32 0, i32 4
  %bf.load25 = load i8, i8* %hup, align 4
  %bf.lshr = lshr i8 %bf.load25, 1
  %bf.clear26 = and i8 %bf.lshr, 1
  %bf.cast27 = zext i8 %bf.clear26 to i32
  %tobool28 = icmp ne i32 %bf.cast27, 0
  br i1 %tobool28, label %if.end.31, label %if.then.29

if.then.29:                                       ; preds = %land.lhs.true.24
  %19 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in.addr, align 8
  %my_write = getelementptr inbounds %struct._GimpPlugIn, %struct._GimpPlugIn* %19, i32 0, i32 7
  %20 = load %struct._GIOChannel*, %struct._GIOChannel** %my_write, align 8
  %21 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in.addr, align 8
  %22 = bitcast %struct._GimpPlugIn* %21 to i8*
  %call30 = call i32 @gp_quit_write(%struct._GIOChannel* %20, i8* %22)
  call void @g_usleep(i64 10000)
  br label %if.end.31

if.end.31:                                        ; preds = %if.then.29, %land.lhs.true.24, %if.then.21
  %23 = load i32, i32* %kill_it.addr, align 4
  %tobool32 = icmp ne i32 %23, 0
  br i1 %tobool32, label %if.then.33, label %if.end.49

if.then.33:                                       ; preds = %if.end.31
  %24 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in.addr, align 8
  %manager = getelementptr inbounds %struct._GimpPlugIn, %struct._GimpPlugIn* %24, i32 0, i32 1
  %25 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %manager, align 8
  %gimp = getelementptr inbounds %struct._GimpPlugInManager, %struct._GimpPlugInManager* %25, i32 0, i32 1
  %26 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %be_verbose = getelementptr inbounds %struct._Gimp, %struct._Gimp* %26, i32 0, i32 4
  %27 = load i32, i32* %be_verbose, align 4
  %tobool34 = icmp ne i32 %27, 0
  br i1 %tobool34, label %if.then.35, label %if.end.37

if.then.35:                                       ; preds = %if.then.33
  %28 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in.addr, align 8
  %prog = getelementptr inbounds %struct._GimpPlugIn, %struct._GimpPlugIn* %28, i32 0, i32 2
  %29 = load i8*, i8** %prog, align 8
  %call36 = call i8* @gimp_filename_to_utf8(i8* %29)
  call void (i8*, ...) @g_print(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.19, i32 0, i32 0), i8* %call36)
  br label %if.end.37

if.end.37:                                        ; preds = %if.then.35, %if.then.33
  %call38 = call i32 @getpgid(i32 0) #7
  %30 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in.addr, align 8
  %pid39 = getelementptr inbounds %struct._GimpPlugIn, %struct._GimpPlugIn* %30, i32 0, i32 5
  %31 = load i32, i32* %pid39, align 4
  %call40 = call i32 @getpgid(i32 %31) #7
  %cmp41 = icmp ne i32 %call38, %call40
  br i1 %cmp41, label %if.then.42, label %if.else.45

if.then.42:                                       ; preds = %if.end.37
  %32 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in.addr, align 8
  %pid43 = getelementptr inbounds %struct._GimpPlugIn, %struct._GimpPlugIn* %32, i32 0, i32 5
  %33 = load i32, i32* %pid43, align 4
  %sub = sub nsw i32 0, %33
  %call44 = call i32 @kill(i32 %sub, i32 9) #7
  store i32 %call44, i32* %status, align 4
  br label %if.end.48

if.else.45:                                       ; preds = %if.end.37
  %34 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in.addr, align 8
  %pid46 = getelementptr inbounds %struct._GimpPlugIn, %struct._GimpPlugIn* %34, i32 0, i32 5
  %35 = load i32, i32* %pid46, align 4
  %call47 = call i32 @kill(i32 %35, i32 9) #7
  store i32 %call47, i32* %status, align 4
  br label %if.end.48

if.end.48:                                        ; preds = %if.else.45, %if.then.42
  br label %if.end.49

if.end.49:                                        ; preds = %if.end.48, %if.end.31
  %36 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in.addr, align 8
  %pid50 = getelementptr inbounds %struct._GimpPlugIn, %struct._GimpPlugIn* %36, i32 0, i32 5
  %37 = load i32, i32* %pid50, align 4
  %call51 = call i32 @waitpid(i32 %37, i32* %status, i32 0)
  %38 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in.addr, align 8
  %pid52 = getelementptr inbounds %struct._GimpPlugIn, %struct._GimpPlugIn* %38, i32 0, i32 5
  %39 = load i32, i32* %pid52, align 4
  call void @g_spawn_close_pid(i32 %39)
  %40 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in.addr, align 8
  %pid53 = getelementptr inbounds %struct._GimpPlugIn, %struct._GimpPlugIn* %40, i32 0, i32 5
  store i32 0, i32* %pid53, align 4
  br label %if.end.54

if.end.54:                                        ; preds = %if.end.49, %do.end.16
  %41 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in.addr, align 8
  %input_id = getelementptr inbounds %struct._GimpPlugIn, %struct._GimpPlugIn* %41, i32 0, i32 10
  %42 = load i32, i32* %input_id, align 4
  %tobool55 = icmp ne i32 %42, 0
  br i1 %tobool55, label %if.then.56, label %if.end.60

if.then.56:                                       ; preds = %if.end.54
  %43 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in.addr, align 8
  %input_id57 = getelementptr inbounds %struct._GimpPlugIn, %struct._GimpPlugIn* %43, i32 0, i32 10
  %44 = load i32, i32* %input_id57, align 4
  %call58 = call i32 @g_source_remove(i32 %44)
  %45 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in.addr, align 8
  %input_id59 = getelementptr inbounds %struct._GimpPlugIn, %struct._GimpPlugIn* %45, i32 0, i32 10
  store i32 0, i32* %input_id59, align 4
  br label %if.end.60

if.end.60:                                        ; preds = %if.then.56, %if.end.54
  %46 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in.addr, align 8
  %my_read = getelementptr inbounds %struct._GimpPlugIn, %struct._GimpPlugIn* %46, i32 0, i32 6
  %47 = load %struct._GIOChannel*, %struct._GIOChannel** %my_read, align 8
  %cmp61 = icmp ne %struct._GIOChannel* %47, null
  br i1 %cmp61, label %if.then.62, label %if.end.65

if.then.62:                                       ; preds = %if.end.60
  %48 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in.addr, align 8
  %my_read63 = getelementptr inbounds %struct._GimpPlugIn, %struct._GimpPlugIn* %48, i32 0, i32 6
  %49 = load %struct._GIOChannel*, %struct._GIOChannel** %my_read63, align 8
  call void @g_io_channel_unref(%struct._GIOChannel* %49)
  %50 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in.addr, align 8
  %my_read64 = getelementptr inbounds %struct._GimpPlugIn, %struct._GimpPlugIn* %50, i32 0, i32 6
  store %struct._GIOChannel* null, %struct._GIOChannel** %my_read64, align 8
  br label %if.end.65

if.end.65:                                        ; preds = %if.then.62, %if.end.60
  %51 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in.addr, align 8
  %my_write66 = getelementptr inbounds %struct._GimpPlugIn, %struct._GimpPlugIn* %51, i32 0, i32 7
  %52 = load %struct._GIOChannel*, %struct._GIOChannel** %my_write66, align 8
  %cmp67 = icmp ne %struct._GIOChannel* %52, null
  br i1 %cmp67, label %if.then.68, label %if.end.71

if.then.68:                                       ; preds = %if.end.65
  %53 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in.addr, align 8
  %my_write69 = getelementptr inbounds %struct._GimpPlugIn, %struct._GimpPlugIn* %53, i32 0, i32 7
  %54 = load %struct._GIOChannel*, %struct._GIOChannel** %my_write69, align 8
  call void @g_io_channel_unref(%struct._GIOChannel* %54)
  %55 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in.addr, align 8
  %my_write70 = getelementptr inbounds %struct._GimpPlugIn, %struct._GimpPlugIn* %55, i32 0, i32 7
  store %struct._GIOChannel* null, %struct._GIOChannel** %my_write70, align 8
  br label %if.end.71

if.end.71:                                        ; preds = %if.then.68, %if.end.65
  %56 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in.addr, align 8
  %his_read = getelementptr inbounds %struct._GimpPlugIn, %struct._GimpPlugIn* %56, i32 0, i32 8
  %57 = load %struct._GIOChannel*, %struct._GIOChannel** %his_read, align 8
  %cmp72 = icmp ne %struct._GIOChannel* %57, null
  br i1 %cmp72, label %if.then.73, label %if.end.76

if.then.73:                                       ; preds = %if.end.71
  %58 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in.addr, align 8
  %his_read74 = getelementptr inbounds %struct._GimpPlugIn, %struct._GimpPlugIn* %58, i32 0, i32 8
  %59 = load %struct._GIOChannel*, %struct._GIOChannel** %his_read74, align 8
  call void @g_io_channel_unref(%struct._GIOChannel* %59)
  %60 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in.addr, align 8
  %his_read75 = getelementptr inbounds %struct._GimpPlugIn, %struct._GimpPlugIn* %60, i32 0, i32 8
  store %struct._GIOChannel* null, %struct._GIOChannel** %his_read75, align 8
  br label %if.end.76

if.end.76:                                        ; preds = %if.then.73, %if.end.71
  %61 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in.addr, align 8
  %his_write = getelementptr inbounds %struct._GimpPlugIn, %struct._GimpPlugIn* %61, i32 0, i32 9
  %62 = load %struct._GIOChannel*, %struct._GIOChannel** %his_write, align 8
  %cmp77 = icmp ne %struct._GIOChannel* %62, null
  br i1 %cmp77, label %if.then.78, label %if.end.81

if.then.78:                                       ; preds = %if.end.76
  %63 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in.addr, align 8
  %his_write79 = getelementptr inbounds %struct._GimpPlugIn, %struct._GimpPlugIn* %63, i32 0, i32 9
  %64 = load %struct._GIOChannel*, %struct._GIOChannel** %his_write79, align 8
  call void @g_io_channel_unref(%struct._GIOChannel* %64)
  %65 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in.addr, align 8
  %his_write80 = getelementptr inbounds %struct._GimpPlugIn, %struct._GimpPlugIn* %65, i32 0, i32 9
  store %struct._GIOChannel* null, %struct._GIOChannel** %his_write80, align 8
  br label %if.end.81

if.end.81:                                        ; preds = %if.then.78, %if.end.76
  call void @gimp_wire_clear_error()
  br label %while.cond

while.cond:                                       ; preds = %if.end.92, %if.end.81
  %66 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in.addr, align 8
  %temp_proc_frames = getelementptr inbounds %struct._GimpPlugIn, %struct._GimpPlugIn* %66, i32 0, i32 16
  %67 = load %struct._GList*, %struct._GList** %temp_proc_frames, align 8
  %tobool82 = icmp ne %struct._GList* %67, null
  br i1 %tobool82, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %68 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in.addr, align 8
  %temp_proc_frames84 = getelementptr inbounds %struct._GimpPlugIn, %struct._GimpPlugIn* %68, i32 0, i32 16
  %69 = load %struct._GList*, %struct._GList** %temp_proc_frames84, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %69, i32 0, i32 0
  %70 = load i8*, i8** %data, align 8
  %71 = bitcast i8* %70 to %struct._GimpPlugInProcFrame*
  store %struct._GimpPlugInProcFrame* %71, %struct._GimpPlugInProcFrame** %proc_frame, align 8
  %72 = load %struct._GimpPlugInProcFrame*, %struct._GimpPlugInProcFrame** %proc_frame, align 8
  %main_loop = getelementptr inbounds %struct._GimpPlugInProcFrame, %struct._GimpPlugInProcFrame* %72, i32 0, i32 4
  %73 = load %struct._GMainLoop*, %struct._GMainLoop** %main_loop, align 8
  %tobool85 = icmp ne %struct._GMainLoop* %73, null
  br i1 %tobool85, label %land.lhs.true.86, label %if.end.92

land.lhs.true.86:                                 ; preds = %while.body
  %74 = load %struct._GimpPlugInProcFrame*, %struct._GimpPlugInProcFrame** %proc_frame, align 8
  %main_loop87 = getelementptr inbounds %struct._GimpPlugInProcFrame, %struct._GimpPlugInProcFrame* %74, i32 0, i32 4
  %75 = load %struct._GMainLoop*, %struct._GMainLoop** %main_loop87, align 8
  %call88 = call i32 @g_main_loop_is_running(%struct._GMainLoop* %75)
  %tobool89 = icmp ne i32 %call88, 0
  br i1 %tobool89, label %if.then.90, label %if.end.92

if.then.90:                                       ; preds = %land.lhs.true.86
  %76 = load %struct._GimpPlugInProcFrame*, %struct._GimpPlugInProcFrame** %proc_frame, align 8
  %main_loop91 = getelementptr inbounds %struct._GimpPlugInProcFrame, %struct._GimpPlugInProcFrame* %76, i32 0, i32 4
  %77 = load %struct._GMainLoop*, %struct._GMainLoop** %main_loop91, align 8
  call void @g_main_loop_quit(%struct._GMainLoop* %77)
  br label %if.end.92

if.end.92:                                        ; preds = %if.then.90, %land.lhs.true.86, %while.body
  %78 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in.addr, align 8
  call void @gimp_plug_in_proc_frame_pop(%struct._GimpPlugIn* %78)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %79 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in.addr, align 8
  %main_proc_frame = getelementptr inbounds %struct._GimpPlugIn, %struct._GimpPlugIn* %79, i32 0, i32 15
  %main_loop93 = getelementptr inbounds %struct._GimpPlugInProcFrame, %struct._GimpPlugInProcFrame* %main_proc_frame, i32 0, i32 4
  %80 = load %struct._GMainLoop*, %struct._GMainLoop** %main_loop93, align 8
  %tobool94 = icmp ne %struct._GMainLoop* %80, null
  br i1 %tobool94, label %land.lhs.true.95, label %if.end.103

land.lhs.true.95:                                 ; preds = %while.end
  %81 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in.addr, align 8
  %main_proc_frame96 = getelementptr inbounds %struct._GimpPlugIn, %struct._GimpPlugIn* %81, i32 0, i32 15
  %main_loop97 = getelementptr inbounds %struct._GimpPlugInProcFrame, %struct._GimpPlugInProcFrame* %main_proc_frame96, i32 0, i32 4
  %82 = load %struct._GMainLoop*, %struct._GMainLoop** %main_loop97, align 8
  %call98 = call i32 @g_main_loop_is_running(%struct._GMainLoop* %82)
  %tobool99 = icmp ne i32 %call98, 0
  br i1 %tobool99, label %if.then.100, label %if.end.103

if.then.100:                                      ; preds = %land.lhs.true.95
  %83 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in.addr, align 8
  %main_proc_frame101 = getelementptr inbounds %struct._GimpPlugIn, %struct._GimpPlugIn* %83, i32 0, i32 15
  %main_loop102 = getelementptr inbounds %struct._GimpPlugInProcFrame, %struct._GimpPlugInProcFrame* %main_proc_frame101, i32 0, i32 4
  %84 = load %struct._GMainLoop*, %struct._GMainLoop** %main_loop102, align 8
  call void @g_main_loop_quit(%struct._GMainLoop* %84)
  br label %if.end.103

if.end.103:                                       ; preds = %if.then.100, %land.lhs.true.95, %while.end
  %85 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in.addr, align 8
  %ext_main_loop = getelementptr inbounds %struct._GimpPlugIn, %struct._GimpPlugIn* %85, i32 0, i32 14
  %86 = load %struct._GMainLoop*, %struct._GMainLoop** %ext_main_loop, align 8
  %tobool104 = icmp ne %struct._GMainLoop* %86, null
  br i1 %tobool104, label %land.lhs.true.105, label %if.end.111

land.lhs.true.105:                                ; preds = %if.end.103
  %87 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in.addr, align 8
  %ext_main_loop106 = getelementptr inbounds %struct._GimpPlugIn, %struct._GimpPlugIn* %87, i32 0, i32 14
  %88 = load %struct._GMainLoop*, %struct._GMainLoop** %ext_main_loop106, align 8
  %call107 = call i32 @g_main_loop_is_running(%struct._GMainLoop* %88)
  %tobool108 = icmp ne i32 %call107, 0
  br i1 %tobool108, label %if.then.109, label %if.end.111

if.then.109:                                      ; preds = %land.lhs.true.105
  %89 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in.addr, align 8
  %ext_main_loop110 = getelementptr inbounds %struct._GimpPlugIn, %struct._GimpPlugIn* %89, i32 0, i32 14
  %90 = load %struct._GMainLoop*, %struct._GMainLoop** %ext_main_loop110, align 8
  call void @g_main_loop_quit(%struct._GMainLoop* %90)
  br label %if.end.111

if.end.111:                                       ; preds = %if.then.109, %land.lhs.true.105, %if.end.103
  br label %while.cond.112

while.cond.112:                                   ; preds = %while.body.114, %if.end.111
  %91 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in.addr, align 8
  %temp_procedures = getelementptr inbounds %struct._GimpPlugIn, %struct._GimpPlugIn* %91, i32 0, i32 13
  %92 = load %struct._GSList*, %struct._GSList** %temp_procedures, align 8
  %tobool113 = icmp ne %struct._GSList* %92, null
  br i1 %tobool113, label %while.body.114, label %while.end.117

while.body.114:                                   ; preds = %while.cond.112
  %93 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in.addr, align 8
  %94 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in.addr, align 8
  %temp_procedures115 = getelementptr inbounds %struct._GimpPlugIn, %struct._GimpPlugIn* %94, i32 0, i32 13
  %95 = load %struct._GSList*, %struct._GSList** %temp_procedures115, align 8
  %data116 = getelementptr inbounds %struct._GSList, %struct._GSList* %95, i32 0, i32 0
  %96 = load i8*, i8** %data116, align 8
  %97 = bitcast i8* %96 to %struct._GimpTemporaryProcedure*
  call void @gimp_plug_in_remove_temp_proc(%struct._GimpPlugIn* %93, %struct._GimpTemporaryProcedure* %97)
  br label %while.cond.112

while.end.117:                                    ; preds = %while.cond.112
  %98 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in.addr, align 8
  %manager118 = getelementptr inbounds %struct._GimpPlugIn, %struct._GimpPlugIn* %98, i32 0, i32 1
  %99 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %manager118, align 8
  %100 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in.addr, align 8
  call void @gimp_plug_in_manager_remove_open_plug_in(%struct._GimpPlugInManager* %99, %struct._GimpPlugIn* %100)
  br label %return

return:                                           ; preds = %while.end.117, %if.else.14, %if.else.9
  ret void
}

declare i32 @gp_quit_write(%struct._GIOChannel*, i8*) #1

declare void @g_usleep(i64) #1

declare void @g_print(i8*, ...) #1

; Function Attrs: nounwind
declare i32 @getpgid(i32) #5

; Function Attrs: nounwind
declare i32 @kill(i32, i32) #5

declare i32 @waitpid(i32, i32*, i32) #1

declare void @g_spawn_close_pid(i32) #1

declare i32 @g_source_remove(i32) #1

declare void @gimp_wire_clear_error() #1

declare i32 @g_main_loop_is_running(%struct._GMainLoop*) #1

declare void @g_main_loop_quit(%struct._GMainLoop*) #1

; Function Attrs: nounwind uwtable
define void @gimp_plug_in_proc_frame_pop(%struct._GimpPlugIn* %plug_in) #3 {
entry:
  %plug_in.addr = alloca %struct._GimpPlugIn*, align 8
  %proc_frame = alloca %struct._GimpPlugInProcFrame*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpPlugIn* %plug_in, %struct._GimpPlugIn** %plug_in.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in.addr, align 8
  %1 = bitcast %struct._GimpPlugIn* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_plug_in_get_type() #8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.gimp_plug_in_proc_frame_pop, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in.addr, align 8
  %temp_proc_frames = getelementptr inbounds %struct._GimpPlugIn, %struct._GimpPlugIn* %13, i32 0, i32 16
  %14 = load %struct._GList*, %struct._GList** %temp_proc_frames, align 8
  %cmp12 = icmp ne %struct._GList* %14, null
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %do.body.11
  br label %if.end.15

if.else.14:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.gimp_plug_in_proc_frame_pop, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.21, i32 0, i32 0))
  br label %return

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  %15 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in.addr, align 8
  %temp_proc_frames17 = getelementptr inbounds %struct._GimpPlugIn, %struct._GimpPlugIn* %15, i32 0, i32 16
  %16 = load %struct._GList*, %struct._GList** %temp_proc_frames17, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %16, i32 0, i32 0
  %17 = load i8*, i8** %data, align 8
  %18 = bitcast i8* %17 to %struct._GimpPlugInProcFrame*
  store %struct._GimpPlugInProcFrame* %18, %struct._GimpPlugInProcFrame** %proc_frame, align 8
  %19 = load %struct._GimpPlugInProcFrame*, %struct._GimpPlugInProcFrame** %proc_frame, align 8
  %20 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in.addr, align 8
  call void @gimp_plug_in_proc_frame_unref(%struct._GimpPlugInProcFrame* %19, %struct._GimpPlugIn* %20)
  %21 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in.addr, align 8
  %temp_proc_frames18 = getelementptr inbounds %struct._GimpPlugIn, %struct._GimpPlugIn* %21, i32 0, i32 16
  %22 = load %struct._GList*, %struct._GList** %temp_proc_frames18, align 8
  %23 = load %struct._GimpPlugInProcFrame*, %struct._GimpPlugInProcFrame** %proc_frame, align 8
  %24 = bitcast %struct._GimpPlugInProcFrame* %23 to i8*
  %call19 = call %struct._GList* @g_list_remove(%struct._GList* %22, i8* %24)
  %25 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in.addr, align 8
  %temp_proc_frames20 = getelementptr inbounds %struct._GimpPlugIn, %struct._GimpPlugIn* %25, i32 0, i32 16
  store %struct._GList* %call19, %struct._GList** %temp_proc_frames20, align 8
  br label %return

return:                                           ; preds = %do.end.16, %if.else.14, %if.else.9
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_plug_in_remove_temp_proc(%struct._GimpPlugIn* %plug_in, %struct._GimpTemporaryProcedure* %proc) #3 {
entry:
  %plug_in.addr = alloca %struct._GimpPlugIn*, align 8
  %proc.addr = alloca %struct._GimpTemporaryProcedure*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst13 = alloca %struct._GTypeInstance*, align 8
  %__t15 = alloca i64, align 8
  %__r18 = alloca i32, align 4
  %tmp33 = alloca i32, align 4
  store %struct._GimpPlugIn* %plug_in, %struct._GimpPlugIn** %plug_in.addr, align 8
  store %struct._GimpTemporaryProcedure* %proc, %struct._GimpTemporaryProcedure** %proc.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in.addr, align 8
  %1 = bitcast %struct._GimpPlugIn* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_plug_in_get_type() #8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.gimp_plug_in_remove_temp_proc, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpTemporaryProcedure*, %struct._GimpTemporaryProcedure** %proc.addr, align 8
  %14 = bitcast %struct._GimpTemporaryProcedure* %13 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %14, %struct._GTypeInstance** %__inst13, align 8
  %call16 = call i64 @gimp_temporary_procedure_get_type() #8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.gimp_plug_in_remove_temp_proc, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.29, i32 0, i32 0))
  br label %return

if.end.37:                                        ; preds = %if.then.35
  br label %do.end.38

do.end.38:                                        ; preds = %if.end.37
  %26 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in.addr, align 8
  %temp_procedures = getelementptr inbounds %struct._GimpPlugIn, %struct._GimpPlugIn* %26, i32 0, i32 13
  %27 = load %struct._GSList*, %struct._GSList** %temp_procedures, align 8
  %28 = load %struct._GimpTemporaryProcedure*, %struct._GimpTemporaryProcedure** %proc.addr, align 8
  %29 = bitcast %struct._GimpTemporaryProcedure* %28 to i8*
  %call39 = call %struct._GSList* @g_slist_remove(%struct._GSList* %27, i8* %29)
  %30 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in.addr, align 8
  %temp_procedures40 = getelementptr inbounds %struct._GimpPlugIn, %struct._GimpPlugIn* %30, i32 0, i32 13
  store %struct._GSList* %call39, %struct._GSList** %temp_procedures40, align 8
  %31 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in.addr, align 8
  %manager = getelementptr inbounds %struct._GimpPlugIn, %struct._GimpPlugIn* %31, i32 0, i32 1
  %32 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %manager, align 8
  %33 = load %struct._GimpTemporaryProcedure*, %struct._GimpTemporaryProcedure** %proc.addr, align 8
  call void @gimp_plug_in_manager_remove_temp_proc(%struct._GimpPlugInManager* %32, %struct._GimpTemporaryProcedure* %33)
  %34 = load %struct._GimpTemporaryProcedure*, %struct._GimpTemporaryProcedure** %proc.addr, align 8
  %35 = bitcast %struct._GimpTemporaryProcedure* %34 to i8*
  call void @g_object_unref(i8* %35)
  br label %return

return:                                           ; preds = %do.end.38, %if.else.36, %if.else.9
  ret void
}

declare void @gimp_plug_in_manager_remove_open_plug_in(%struct._GimpPlugInManager*, %struct._GimpPlugIn*) #1

; Function Attrs: nounwind uwtable
define %struct._GimpPlugInProcFrame* @gimp_plug_in_get_proc_frame(%struct._GimpPlugIn* %plug_in) #3 {
entry:
  %retval = alloca %struct._GimpPlugInProcFrame*, align 8
  %plug_in.addr = alloca %struct._GimpPlugIn*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpPlugIn* %plug_in, %struct._GimpPlugIn** %plug_in.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in.addr, align 8
  %1 = bitcast %struct._GimpPlugIn* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_plug_in_get_type() #8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.gimp_plug_in_get_proc_frame, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8, i32 0, i32 0))
  store %struct._GimpPlugInProcFrame* null, %struct._GimpPlugInProcFrame** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in.addr, align 8
  %temp_proc_frames = getelementptr inbounds %struct._GimpPlugIn, %struct._GimpPlugIn* %13, i32 0, i32 16
  %14 = load %struct._GList*, %struct._GList** %temp_proc_frames, align 8
  %tobool11 = icmp ne %struct._GList* %14, null
  br i1 %tobool11, label %if.then.12, label %if.else.14

if.then.12:                                       ; preds = %do.end
  %15 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in.addr, align 8
  %temp_proc_frames13 = getelementptr inbounds %struct._GimpPlugIn, %struct._GimpPlugIn* %15, i32 0, i32 16
  %16 = load %struct._GList*, %struct._GList** %temp_proc_frames13, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %16, i32 0, i32 0
  %17 = load i8*, i8** %data, align 8
  %18 = bitcast i8* %17 to %struct._GimpPlugInProcFrame*
  store %struct._GimpPlugInProcFrame* %18, %struct._GimpPlugInProcFrame** %retval
  br label %return

if.else.14:                                       ; preds = %do.end
  %19 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in.addr, align 8
  %main_proc_frame = getelementptr inbounds %struct._GimpPlugIn, %struct._GimpPlugIn* %19, i32 0, i32 15
  store %struct._GimpPlugInProcFrame* %main_proc_frame, %struct._GimpPlugInProcFrame** %retval
  br label %return

return:                                           ; preds = %if.else.14, %if.then.12, %if.else.9
  %20 = load %struct._GimpPlugInProcFrame*, %struct._GimpPlugInProcFrame** %retval
  ret %struct._GimpPlugInProcFrame* %20
}

; Function Attrs: nounwind uwtable
define %struct._GimpPlugInProcFrame* @gimp_plug_in_proc_frame_push(%struct._GimpPlugIn* %plug_in, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GimpTemporaryProcedure* %procedure) #3 {
entry:
  %retval = alloca %struct._GimpPlugInProcFrame*, align 8
  %plug_in.addr = alloca %struct._GimpPlugIn*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %procedure.addr = alloca %struct._GimpTemporaryProcedure*, align 8
  %proc_frame = alloca %struct._GimpPlugInProcFrame*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst13 = alloca %struct._GTypeInstance*, align 8
  %__t15 = alloca i64, align 8
  %__r18 = alloca i32, align 4
  %tmp33 = alloca i32, align 4
  %__inst42 = alloca %struct._GTypeInstance*, align 8
  %__t44 = alloca i64, align 8
  %__r47 = alloca i32, align 4
  %tmp62 = alloca i32, align 4
  %__inst70 = alloca %struct._GTypeInstance*, align 8
  %__t72 = alloca i64, align 8
  %__r75 = alloca i32, align 4
  %tmp90 = alloca i32, align 4
  store %struct._GimpPlugIn* %plug_in, %struct._GimpPlugIn** %plug_in.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store %struct._GimpTemporaryProcedure* %procedure, %struct._GimpTemporaryProcedure** %procedure.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in.addr, align 8
  %1 = bitcast %struct._GimpPlugIn* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_plug_in_get_type() #8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.gimp_plug_in_proc_frame_push, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8, i32 0, i32 0))
  store %struct._GimpPlugInProcFrame* null, %struct._GimpPlugInProcFrame** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %14 = bitcast %struct._GimpContext* %13 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %14, %struct._GTypeInstance** %__inst13, align 8
  %call16 = call i64 @gimp_pdb_context_get_type() #8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.gimp_plug_in_proc_frame_push, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i32 0, i32 0))
  store %struct._GimpPlugInProcFrame* null, %struct._GimpPlugInProcFrame** %retval
  br label %return

if.end.37:                                        ; preds = %if.then.35
  br label %do.end.38

do.end.38:                                        ; preds = %if.end.37
  br label %do.body.39

do.body.39:                                       ; preds = %do.end.38
  %26 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %cmp40 = icmp eq %struct._GimpProgress* %26, null
  br i1 %cmp40, label %if.then.64, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.body.39
  %27 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %28 = bitcast %struct._GimpProgress* %27 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %28, %struct._GTypeInstance** %__inst42, align 8
  %call45 = call i64 @gimp_progress_interface_get_type() #8
  store i64 %call45, i64* %__t44, align 8
  %29 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst42, align 8
  %tobool48 = icmp ne %struct._GTypeInstance* %29, null
  br i1 %tobool48, label %if.else.50, label %if.then.49

if.then.49:                                       ; preds = %lor.lhs.false
  store i32 0, i32* %__r47, align 4
  br label %if.end.61

if.else.50:                                       ; preds = %lor.lhs.false
  %30 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst42, align 8
  %g_class51 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %30, i32 0, i32 0
  %31 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class51, align 8
  %tobool52 = icmp ne %struct._GTypeClass* %31, null
  br i1 %tobool52, label %land.lhs.true.53, label %if.else.58

land.lhs.true.53:                                 ; preds = %if.else.50
  %32 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst42, align 8
  %g_class54 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %32, i32 0, i32 0
  %33 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class54, align 8
  %g_type55 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %33, i32 0, i32 0
  %34 = load i64, i64* %g_type55, align 8
  %35 = load i64, i64* %__t44, align 8
  %cmp56 = icmp eq i64 %34, %35
  br i1 %cmp56, label %if.then.57, label %if.else.58

if.then.57:                                       ; preds = %land.lhs.true.53
  store i32 1, i32* %__r47, align 4
  br label %if.end.60

if.else.58:                                       ; preds = %land.lhs.true.53, %if.else.50
  %36 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst42, align 8
  %37 = load i64, i64* %__t44, align 8
  %call59 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %36, i64 %37) #9
  store i32 %call59, i32* %__r47, align 4
  br label %if.end.60

if.end.60:                                        ; preds = %if.else.58, %if.then.57
  br label %if.end.61

if.end.61:                                        ; preds = %if.end.60, %if.then.49
  %38 = load i32, i32* %__r47, align 4
  store i32 %38, i32* %tmp62
  %39 = load i32, i32* %tmp62
  %tobool63 = icmp ne i32 %39, 0
  br i1 %tobool63, label %if.then.64, label %if.else.65

if.then.64:                                       ; preds = %if.end.61, %do.body.39
  br label %if.end.66

if.else.65:                                       ; preds = %if.end.61
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.gimp_plug_in_proc_frame_push, i32 0, i32 0), i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.4, i32 0, i32 0))
  store %struct._GimpPlugInProcFrame* null, %struct._GimpPlugInProcFrame** %retval
  br label %return

if.end.66:                                        ; preds = %if.then.64
  br label %do.end.67

do.end.67:                                        ; preds = %if.end.66
  br label %do.body.68

do.body.68:                                       ; preds = %do.end.67
  %40 = load %struct._GimpTemporaryProcedure*, %struct._GimpTemporaryProcedure** %procedure.addr, align 8
  %41 = bitcast %struct._GimpTemporaryProcedure* %40 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %41, %struct._GTypeInstance** %__inst70, align 8
  %call73 = call i64 @gimp_temporary_procedure_get_type() #8
  store i64 %call73, i64* %__t72, align 8
  %42 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst70, align 8
  %tobool76 = icmp ne %struct._GTypeInstance* %42, null
  br i1 %tobool76, label %if.else.78, label %if.then.77

if.then.77:                                       ; preds = %do.body.68
  store i32 0, i32* %__r75, align 4
  br label %if.end.89

if.else.78:                                       ; preds = %do.body.68
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

if.then.92:                                       ; preds = %if.end.89
  br label %if.end.94

if.else.93:                                       ; preds = %if.end.89
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.gimp_plug_in_proc_frame_push, i32 0, i32 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.20, i32 0, i32 0))
  store %struct._GimpPlugInProcFrame* null, %struct._GimpPlugInProcFrame** %retval
  br label %return

if.end.94:                                        ; preds = %if.then.92
  br label %do.end.95

do.end.95:                                        ; preds = %if.end.94
  %53 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %54 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %55 = load %struct._GimpTemporaryProcedure*, %struct._GimpTemporaryProcedure** %procedure.addr, align 8
  %56 = bitcast %struct._GimpTemporaryProcedure* %55 to %struct._GTypeInstance*
  %call96 = call i64 @gimp_plug_in_procedure_get_type() #8
  %call97 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %56, i64 %call96)
  %57 = bitcast %struct._GTypeInstance* %call97 to %struct._GimpPlugInProcedure*
  %call98 = call %struct._GimpPlugInProcFrame* @gimp_plug_in_proc_frame_new(%struct._GimpContext* %53, %struct._GimpProgress* %54, %struct._GimpPlugInProcedure* %57)
  store %struct._GimpPlugInProcFrame* %call98, %struct._GimpPlugInProcFrame** %proc_frame, align 8
  %58 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in.addr, align 8
  %temp_proc_frames = getelementptr inbounds %struct._GimpPlugIn, %struct._GimpPlugIn* %58, i32 0, i32 16
  %59 = load %struct._GList*, %struct._GList** %temp_proc_frames, align 8
  %60 = load %struct._GimpPlugInProcFrame*, %struct._GimpPlugInProcFrame** %proc_frame, align 8
  %61 = bitcast %struct._GimpPlugInProcFrame* %60 to i8*
  %call99 = call %struct._GList* @g_list_prepend(%struct._GList* %59, i8* %61)
  %62 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in.addr, align 8
  %temp_proc_frames100 = getelementptr inbounds %struct._GimpPlugIn, %struct._GimpPlugIn* %62, i32 0, i32 16
  store %struct._GList* %call99, %struct._GList** %temp_proc_frames100, align 8
  %63 = load %struct._GimpPlugInProcFrame*, %struct._GimpPlugInProcFrame** %proc_frame, align 8
  store %struct._GimpPlugInProcFrame* %63, %struct._GimpPlugInProcFrame** %retval
  br label %return

return:                                           ; preds = %do.end.95, %if.else.93, %if.else.65, %if.else.36, %if.else.9
  %64 = load %struct._GimpPlugInProcFrame*, %struct._GimpPlugInProcFrame** %retval
  ret %struct._GimpPlugInProcFrame* %64
}

; Function Attrs: nounwind readnone
declare i64 @gimp_temporary_procedure_get_type() #2

declare %struct._GimpPlugInProcFrame* @gimp_plug_in_proc_frame_new(%struct._GimpContext*, %struct._GimpProgress*, %struct._GimpPlugInProcedure*) #1

declare %struct._GList* @g_list_prepend(%struct._GList*, i8*) #1

declare void @gimp_plug_in_proc_frame_unref(%struct._GimpPlugInProcFrame*, %struct._GimpPlugIn*) #1

declare %struct._GList* @g_list_remove(%struct._GList*, i8*) #1

; Function Attrs: nounwind uwtable
define void @gimp_plug_in_main_loop(%struct._GimpPlugIn* %plug_in) #3 {
entry:
  %plug_in.addr = alloca %struct._GimpPlugIn*, align 8
  %proc_frame = alloca %struct._GimpPlugInProcFrame*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpPlugIn* %plug_in, %struct._GimpPlugIn** %plug_in.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in.addr, align 8
  %1 = bitcast %struct._GimpPlugIn* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_plug_in_get_type() #8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.gimp_plug_in_main_loop, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in.addr, align 8
  %temp_proc_frames = getelementptr inbounds %struct._GimpPlugIn, %struct._GimpPlugIn* %13, i32 0, i32 16
  %14 = load %struct._GList*, %struct._GList** %temp_proc_frames, align 8
  %cmp12 = icmp ne %struct._GList* %14, null
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %do.body.11
  br label %if.end.15

if.else.14:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.gimp_plug_in_main_loop, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.21, i32 0, i32 0))
  br label %return

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  %15 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in.addr, align 8
  %temp_proc_frames17 = getelementptr inbounds %struct._GimpPlugIn, %struct._GimpPlugIn* %15, i32 0, i32 16
  %16 = load %struct._GList*, %struct._GList** %temp_proc_frames17, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %16, i32 0, i32 0
  %17 = load i8*, i8** %data, align 8
  %18 = bitcast i8* %17 to %struct._GimpPlugInProcFrame*
  store %struct._GimpPlugInProcFrame* %18, %struct._GimpPlugInProcFrame** %proc_frame, align 8
  br label %do.body.18

do.body.18:                                       ; preds = %do.end.16
  %19 = load %struct._GimpPlugInProcFrame*, %struct._GimpPlugInProcFrame** %proc_frame, align 8
  %main_loop = getelementptr inbounds %struct._GimpPlugInProcFrame, %struct._GimpPlugInProcFrame* %19, i32 0, i32 4
  %20 = load %struct._GMainLoop*, %struct._GMainLoop** %main_loop, align 8
  %cmp19 = icmp eq %struct._GMainLoop* %20, null
  br i1 %cmp19, label %if.then.20, label %if.else.21

if.then.20:                                       ; preds = %do.body.18
  br label %if.end.22

if.else.21:                                       ; preds = %do.body.18
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.gimp_plug_in_main_loop, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.22, i32 0, i32 0))
  br label %return

if.end.22:                                        ; preds = %if.then.20
  br label %do.end.23

do.end.23:                                        ; preds = %if.end.22
  %call24 = call %struct._GMainLoop* @g_main_loop_new(%struct._GMainContext* null, i32 0)
  %21 = load %struct._GimpPlugInProcFrame*, %struct._GimpPlugInProcFrame** %proc_frame, align 8
  %main_loop25 = getelementptr inbounds %struct._GimpPlugInProcFrame, %struct._GimpPlugInProcFrame* %21, i32 0, i32 4
  store %struct._GMainLoop* %call24, %struct._GMainLoop** %main_loop25, align 8
  %22 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in.addr, align 8
  %manager = getelementptr inbounds %struct._GimpPlugIn, %struct._GimpPlugIn* %22, i32 0, i32 1
  %23 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %manager, align 8
  %gimp = getelementptr inbounds %struct._GimpPlugInManager, %struct._GimpPlugInManager* %23, i32 0, i32 1
  %24 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  call void @gimp_threads_leave(%struct._Gimp* %24)
  %25 = load %struct._GimpPlugInProcFrame*, %struct._GimpPlugInProcFrame** %proc_frame, align 8
  %main_loop26 = getelementptr inbounds %struct._GimpPlugInProcFrame, %struct._GimpPlugInProcFrame* %25, i32 0, i32 4
  %26 = load %struct._GMainLoop*, %struct._GMainLoop** %main_loop26, align 8
  call void @g_main_loop_run(%struct._GMainLoop* %26)
  %27 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in.addr, align 8
  %manager27 = getelementptr inbounds %struct._GimpPlugIn, %struct._GimpPlugIn* %27, i32 0, i32 1
  %28 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %manager27, align 8
  %gimp28 = getelementptr inbounds %struct._GimpPlugInManager, %struct._GimpPlugInManager* %28, i32 0, i32 1
  %29 = load %struct._Gimp*, %struct._Gimp** %gimp28, align 8
  call void @gimp_threads_enter(%struct._Gimp* %29)
  %30 = load %struct._GimpPlugInProcFrame*, %struct._GimpPlugInProcFrame** %proc_frame, align 8
  %main_loop29 = getelementptr inbounds %struct._GimpPlugInProcFrame, %struct._GimpPlugInProcFrame* %30, i32 0, i32 4
  %31 = load %struct._GMainLoop*, %struct._GMainLoop** %main_loop29, align 8
  call void @g_main_loop_unref(%struct._GMainLoop* %31)
  %32 = load %struct._GimpPlugInProcFrame*, %struct._GimpPlugInProcFrame** %proc_frame, align 8
  %main_loop30 = getelementptr inbounds %struct._GimpPlugInProcFrame, %struct._GimpPlugInProcFrame* %32, i32 0, i32 4
  store %struct._GMainLoop* null, %struct._GMainLoop** %main_loop30, align 8
  br label %return

return:                                           ; preds = %do.end.23, %if.else.21, %if.else.14, %if.else.9
  ret void
}

declare %struct._GMainLoop* @g_main_loop_new(%struct._GMainContext*, i32) #1

declare void @gimp_threads_leave(%struct._Gimp*) #1

declare void @g_main_loop_run(%struct._GMainLoop*) #1

declare void @gimp_threads_enter(%struct._Gimp*) #1

declare void @g_main_loop_unref(%struct._GMainLoop*) #1

; Function Attrs: nounwind uwtable
define void @gimp_plug_in_main_loop_quit(%struct._GimpPlugIn* %plug_in) #3 {
entry:
  %plug_in.addr = alloca %struct._GimpPlugIn*, align 8
  %proc_frame = alloca %struct._GimpPlugInProcFrame*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpPlugIn* %plug_in, %struct._GimpPlugIn** %plug_in.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in.addr, align 8
  %1 = bitcast %struct._GimpPlugIn* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_plug_in_get_type() #8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.gimp_plug_in_main_loop_quit, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in.addr, align 8
  %temp_proc_frames = getelementptr inbounds %struct._GimpPlugIn, %struct._GimpPlugIn* %13, i32 0, i32 16
  %14 = load %struct._GList*, %struct._GList** %temp_proc_frames, align 8
  %cmp12 = icmp ne %struct._GList* %14, null
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %do.body.11
  br label %if.end.15

if.else.14:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.gimp_plug_in_main_loop_quit, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.21, i32 0, i32 0))
  br label %return

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  %15 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in.addr, align 8
  %temp_proc_frames17 = getelementptr inbounds %struct._GimpPlugIn, %struct._GimpPlugIn* %15, i32 0, i32 16
  %16 = load %struct._GList*, %struct._GList** %temp_proc_frames17, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %16, i32 0, i32 0
  %17 = load i8*, i8** %data, align 8
  %18 = bitcast i8* %17 to %struct._GimpPlugInProcFrame*
  store %struct._GimpPlugInProcFrame* %18, %struct._GimpPlugInProcFrame** %proc_frame, align 8
  br label %do.body.18

do.body.18:                                       ; preds = %do.end.16
  %19 = load %struct._GimpPlugInProcFrame*, %struct._GimpPlugInProcFrame** %proc_frame, align 8
  %main_loop = getelementptr inbounds %struct._GimpPlugInProcFrame, %struct._GimpPlugInProcFrame* %19, i32 0, i32 4
  %20 = load %struct._GMainLoop*, %struct._GMainLoop** %main_loop, align 8
  %cmp19 = icmp ne %struct._GMainLoop* %20, null
  br i1 %cmp19, label %if.then.20, label %if.else.21

if.then.20:                                       ; preds = %do.body.18
  br label %if.end.22

if.else.21:                                       ; preds = %do.body.18
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.gimp_plug_in_main_loop_quit, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.23, i32 0, i32 0))
  br label %return

if.end.22:                                        ; preds = %if.then.20
  br label %do.end.23

do.end.23:                                        ; preds = %if.end.22
  %21 = load %struct._GimpPlugInProcFrame*, %struct._GimpPlugInProcFrame** %proc_frame, align 8
  %main_loop24 = getelementptr inbounds %struct._GimpPlugInProcFrame, %struct._GimpPlugInProcFrame* %21, i32 0, i32 4
  %22 = load %struct._GMainLoop*, %struct._GMainLoop** %main_loop24, align 8
  call void @g_main_loop_quit(%struct._GMainLoop* %22)
  br label %return

return:                                           ; preds = %do.end.23, %if.else.21, %if.else.14, %if.else.9
  ret void
}

; Function Attrs: nounwind uwtable
define i8* @gimp_plug_in_get_undo_desc(%struct._GimpPlugIn* %plug_in) #3 {
entry:
  %retval = alloca i8*, align 8
  %plug_in.addr = alloca %struct._GimpPlugIn*, align 8
  %proc_frame = alloca %struct._GimpPlugInProcFrame*, align 8
  %undo_desc = alloca i8*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %proc = alloca %struct._GimpPlugInProcedure*, align 8
  store %struct._GimpPlugIn* %plug_in, %struct._GimpPlugIn** %plug_in.addr, align 8
  store i8* null, i8** %undo_desc, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in.addr, align 8
  %1 = bitcast %struct._GimpPlugIn* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_plug_in_get_type() #8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.gimp_plug_in_get_undo_desc, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8, i32 0, i32 0))
  store i8* null, i8** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in.addr, align 8
  %call11 = call %struct._GimpPlugInProcFrame* @gimp_plug_in_get_proc_frame(%struct._GimpPlugIn* %13)
  store %struct._GimpPlugInProcFrame* %call11, %struct._GimpPlugInProcFrame** %proc_frame, align 8
  %14 = load %struct._GimpPlugInProcFrame*, %struct._GimpPlugInProcFrame** %proc_frame, align 8
  %tobool12 = icmp ne %struct._GimpPlugInProcFrame* %14, null
  br i1 %tobool12, label %if.then.13, label %if.end.21

if.then.13:                                       ; preds = %do.end
  %15 = load %struct._GimpPlugInProcFrame*, %struct._GimpPlugInProcFrame** %proc_frame, align 8
  %procedure = getelementptr inbounds %struct._GimpPlugInProcFrame, %struct._GimpPlugInProcFrame* %15, i32 0, i32 3
  %16 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %17 = bitcast %struct._GimpProcedure* %16 to %struct._GTypeInstance*
  %call15 = call i64 @gimp_plug_in_procedure_get_type() #8
  %call16 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %17, i64 %call15)
  %18 = bitcast %struct._GTypeInstance* %call16 to %struct._GimpPlugInProcedure*
  store %struct._GimpPlugInProcedure* %18, %struct._GimpPlugInProcedure** %proc, align 8
  %19 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %proc, align 8
  %tobool17 = icmp ne %struct._GimpPlugInProcedure* %19, null
  br i1 %tobool17, label %if.then.18, label %if.end.20

if.then.18:                                       ; preds = %if.then.13
  %20 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %proc, align 8
  %call19 = call i8* @gimp_plug_in_procedure_get_label(%struct._GimpPlugInProcedure* %20)
  store i8* %call19, i8** %undo_desc, align 8
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.18, %if.then.13
  br label %if.end.21

if.end.21:                                        ; preds = %if.end.20, %do.end
  %21 = load i8*, i8** %undo_desc, align 8
  %tobool22 = icmp ne i8* %21, null
  br i1 %tobool22, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.21
  %22 = load i8*, i8** %undo_desc, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.21
  %23 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in.addr, align 8
  %24 = bitcast %struct._GimpPlugIn* %23 to i8*
  %call23 = call i8* @gimp_object_get_name(i8* %24)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %22, %cond.true ], [ %call23, %cond.false ]
  store i8* %cond, i8** %retval
  br label %return

return:                                           ; preds = %cond.end, %if.else.9
  %25 = load i8*, i8** %retval
  ret i8* %25
}

declare i8* @gimp_plug_in_procedure_get_label(%struct._GimpPlugInProcedure*) #1

; Function Attrs: nounwind uwtable
define i32 @gimp_plug_in_menu_register(%struct._GimpPlugIn* %plug_in, i8* %proc_name, i8* %menu_path) #3 {
entry:
  %retval = alloca i32, align 4
  %plug_in.addr = alloca %struct._GimpPlugIn*, align 8
  %proc_name.addr = alloca i8*, align 8
  %menu_path.addr = alloca i8*, align 8
  %proc = alloca %struct._GimpPlugInProcedure*, align 8
  %error = alloca %struct._GError*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpPlugIn* %plug_in, %struct._GimpPlugIn** %plug_in.addr, align 8
  store i8* %proc_name, i8** %proc_name.addr, align 8
  store i8* %menu_path, i8** %menu_path.addr, align 8
  store %struct._GimpPlugInProcedure* null, %struct._GimpPlugInProcedure** %proc, align 8
  store %struct._GError* null, %struct._GError** %error, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in.addr, align 8
  %1 = bitcast %struct._GimpPlugIn* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_plug_in_get_type() #8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.gimp_plug_in_menu_register, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load i8*, i8** %proc_name.addr, align 8
  %cmp12 = icmp ne i8* %13, null
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %do.body.11
  br label %if.end.15

if.else.14:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.gimp_plug_in_menu_register, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.24, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  br label %do.body.17

do.body.17:                                       ; preds = %do.end.16
  %14 = load i8*, i8** %menu_path.addr, align 8
  %cmp18 = icmp ne i8* %14, null
  br i1 %cmp18, label %if.then.19, label %if.else.20

if.then.19:                                       ; preds = %do.body.17
  br label %if.end.21

if.else.20:                                       ; preds = %do.body.17
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.gimp_plug_in_menu_register, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.25, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.21:                                        ; preds = %if.then.19
  br label %do.end.22

do.end.22:                                        ; preds = %if.end.21
  %15 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in.addr, align 8
  %plug_in_def = getelementptr inbounds %struct._GimpPlugIn, %struct._GimpPlugIn* %15, i32 0, i32 17
  %16 = load %struct._GimpPlugInDef*, %struct._GimpPlugInDef** %plug_in_def, align 8
  %tobool23 = icmp ne %struct._GimpPlugInDef* %16, null
  br i1 %tobool23, label %if.then.24, label %if.end.27

if.then.24:                                       ; preds = %do.end.22
  %17 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in.addr, align 8
  %plug_in_def25 = getelementptr inbounds %struct._GimpPlugIn, %struct._GimpPlugIn* %17, i32 0, i32 17
  %18 = load %struct._GimpPlugInDef*, %struct._GimpPlugInDef** %plug_in_def25, align 8
  %procedures = getelementptr inbounds %struct._GimpPlugInDef, %struct._GimpPlugInDef* %18, i32 0, i32 2
  %19 = load %struct._GSList*, %struct._GSList** %procedures, align 8
  %20 = load i8*, i8** %proc_name.addr, align 8
  %call26 = call %struct._GimpPlugInProcedure* @gimp_plug_in_procedure_find(%struct._GSList* %19, i8* %20)
  store %struct._GimpPlugInProcedure* %call26, %struct._GimpPlugInProcedure** %proc, align 8
  br label %if.end.27

if.end.27:                                        ; preds = %if.then.24, %do.end.22
  %21 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %proc, align 8
  %tobool28 = icmp ne %struct._GimpPlugInProcedure* %21, null
  br i1 %tobool28, label %if.end.31, label %if.then.29

if.then.29:                                       ; preds = %if.end.27
  %22 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in.addr, align 8
  %temp_procedures = getelementptr inbounds %struct._GimpPlugIn, %struct._GimpPlugIn* %22, i32 0, i32 13
  %23 = load %struct._GSList*, %struct._GSList** %temp_procedures, align 8
  %24 = load i8*, i8** %proc_name.addr, align 8
  %call30 = call %struct._GimpPlugInProcedure* @gimp_plug_in_procedure_find(%struct._GSList* %23, i8* %24)
  store %struct._GimpPlugInProcedure* %call30, %struct._GimpPlugInProcedure** %proc, align 8
  br label %if.end.31

if.end.31:                                        ; preds = %if.then.29, %if.end.27
  %25 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %proc, align 8
  %tobool32 = icmp ne %struct._GimpPlugInProcedure* %25, null
  br i1 %tobool32, label %if.end.36, label %if.then.33

if.then.33:                                       ; preds = %if.end.31
  %26 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in.addr, align 8
  %manager = getelementptr inbounds %struct._GimpPlugIn, %struct._GimpPlugIn* %26, i32 0, i32 1
  %27 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %manager, align 8
  %gimp = getelementptr inbounds %struct._GimpPlugInManager, %struct._GimpPlugInManager* %27, i32 0, i32 1
  %28 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %29 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in.addr, align 8
  %30 = bitcast %struct._GimpPlugIn* %29 to i8*
  %call34 = call i8* @gimp_object_get_name(i8* %30)
  %31 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in.addr, align 8
  %prog = getelementptr inbounds %struct._GimpPlugIn, %struct._GimpPlugIn* %31, i32 0, i32 2
  %32 = load i8*, i8** %prog, align 8
  %call35 = call i8* @gimp_filename_to_utf8(i8* %32)
  %33 = load i8*, i8** %menu_path.addr, align 8
  %34 = load i8*, i8** %proc_name.addr, align 8
  call void (%struct._Gimp*, %struct._GObject*, i32, i8*, ...) @gimp_message(%struct._Gimp* %28, %struct._GObject* null, i32 2, i8* getelementptr inbounds ([150 x i8], [150 x i8]* @.str.26, i32 0, i32 0), i8* %call34, i8* %call35, i8* %33, i8* %34)
  store i32 0, i32* %retval
  br label %return

if.end.36:                                        ; preds = %if.end.31
  %35 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %proc, align 8
  %36 = bitcast %struct._GimpPlugInProcedure* %35 to %struct._GTypeInstance*
  %call37 = call i64 @gimp_procedure_get_type() #8
  %call38 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %36, i64 %call37)
  %37 = bitcast %struct._GTypeInstance* %call38 to %struct._GimpProcedure*
  %proc_type = getelementptr inbounds %struct._GimpProcedure, %struct._GimpProcedure* %37, i32 0, i32 1
  %38 = load i32, i32* %proc_type, align 4
  switch i32 %38, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.39
    i32 2, label %sw.bb.39
    i32 3, label %sw.bb.46
  ]

sw.bb:                                            ; preds = %if.end.36
  store i32 0, i32* %retval
  br label %return

sw.bb.39:                                         ; preds = %if.end.36, %if.end.36
  %39 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in.addr, align 8
  %call_mode = getelementptr inbounds %struct._GimpPlugIn, %struct._GimpPlugIn* %39, i32 0, i32 3
  %40 = load i32, i32* %call_mode, align 4
  %cmp40 = icmp ne i32 %40, 2
  br i1 %cmp40, label %land.lhs.true.41, label %if.end.45

land.lhs.true.41:                                 ; preds = %sw.bb.39
  %41 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in.addr, align 8
  %call_mode42 = getelementptr inbounds %struct._GimpPlugIn, %struct._GimpPlugIn* %41, i32 0, i32 3
  %42 = load i32, i32* %call_mode42, align 4
  %cmp43 = icmp ne i32 %42, 3
  br i1 %cmp43, label %if.then.44, label %if.end.45

if.then.44:                                       ; preds = %land.lhs.true.41
  store i32 0, i32* %retval
  br label %return

if.end.45:                                        ; preds = %land.lhs.true.41, %sw.bb.39
  br label %sw.bb.46

sw.bb.46:                                         ; preds = %if.end.36, %if.end.45
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end.36, %sw.bb.46
  %43 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %proc, align 8
  %menu_label = getelementptr inbounds %struct._GimpPlugInProcedure, %struct._GimpPlugInProcedure* %43, i32 0, i32 4
  %44 = load i8*, i8** %menu_label, align 8
  %tobool47 = icmp ne i8* %44, null
  br i1 %tobool47, label %if.end.54, label %if.then.48

if.then.48:                                       ; preds = %sw.epilog
  %45 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in.addr, align 8
  %manager49 = getelementptr inbounds %struct._GimpPlugIn, %struct._GimpPlugIn* %45, i32 0, i32 1
  %46 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %manager49, align 8
  %gimp50 = getelementptr inbounds %struct._GimpPlugInManager, %struct._GimpPlugInManager* %46, i32 0, i32 1
  %47 = load %struct._Gimp*, %struct._Gimp** %gimp50, align 8
  %48 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in.addr, align 8
  %49 = bitcast %struct._GimpPlugIn* %48 to i8*
  %call51 = call i8* @gimp_object_get_name(i8* %49)
  %50 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in.addr, align 8
  %prog52 = getelementptr inbounds %struct._GimpPlugIn, %struct._GimpPlugIn* %50, i32 0, i32 2
  %51 = load i8*, i8** %prog52, align 8
  %call53 = call i8* @gimp_filename_to_utf8(i8* %51)
  %52 = load i8*, i8** %menu_path.addr, align 8
  %53 = load i8*, i8** %proc_name.addr, align 8
  call void (%struct._Gimp*, %struct._GObject*, i32, i8*, ...) @gimp_message(%struct._Gimp* %47, %struct._GObject* null, i32 2, i8* getelementptr inbounds ([230 x i8], [230 x i8]* @.str.27, i32 0, i32 0), i8* %call51, i8* %call53, i8* %52, i8* %53)
  store i32 0, i32* %retval
  br label %return

if.end.54:                                        ; preds = %sw.epilog
  %54 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %proc, align 8
  %menu_label55 = getelementptr inbounds %struct._GimpPlugInProcedure, %struct._GimpPlugInProcedure* %54, i32 0, i32 4
  %55 = load i8*, i8** %menu_label55, align 8
  %call56 = call i64 @strlen(i8* %55) #9
  %tobool57 = icmp ne i64 %call56, 0
  br i1 %tobool57, label %if.end.64, label %if.then.58

if.then.58:                                       ; preds = %if.end.54
  %56 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in.addr, align 8
  %manager59 = getelementptr inbounds %struct._GimpPlugIn, %struct._GimpPlugIn* %56, i32 0, i32 1
  %57 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %manager59, align 8
  %gimp60 = getelementptr inbounds %struct._GimpPlugInManager, %struct._GimpPlugInManager* %57, i32 0, i32 1
  %58 = load %struct._Gimp*, %struct._Gimp** %gimp60, align 8
  %59 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in.addr, align 8
  %60 = bitcast %struct._GimpPlugIn* %59 to i8*
  %call61 = call i8* @gimp_object_get_name(i8* %60)
  %61 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in.addr, align 8
  %prog62 = getelementptr inbounds %struct._GimpPlugIn, %struct._GimpPlugIn* %61, i32 0, i32 2
  %62 = load i8*, i8** %prog62, align 8
  %call63 = call i8* @gimp_filename_to_utf8(i8* %62)
  %63 = load i8*, i8** %proc_name.addr, align 8
  %64 = load i8*, i8** %menu_path.addr, align 8
  call void (%struct._Gimp*, %struct._GObject*, i32, i8*, ...) @gimp_message(%struct._Gimp* %58, %struct._GObject* null, i32 2, i8* getelementptr inbounds ([131 x i8], [131 x i8]* @.str.28, i32 0, i32 0), i8* %call61, i8* %call63, i8* %63, i8* %64)
  store i32 0, i32* %retval
  br label %return

if.end.64:                                        ; preds = %if.end.54
  %65 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %proc, align 8
  %66 = load i8*, i8** %menu_path.addr, align 8
  %call65 = call i32 @gimp_plug_in_procedure_add_menu_path(%struct._GimpPlugInProcedure* %65, i8* %66, %struct._GError** %error)
  %tobool66 = icmp ne i32 %call65, 0
  br i1 %tobool66, label %if.end.70, label %if.then.67

if.then.67:                                       ; preds = %if.end.64
  %67 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in.addr, align 8
  %manager68 = getelementptr inbounds %struct._GimpPlugIn, %struct._GimpPlugIn* %67, i32 0, i32 1
  %68 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %manager68, align 8
  %gimp69 = getelementptr inbounds %struct._GimpPlugInManager, %struct._GimpPlugInManager* %68, i32 0, i32 1
  %69 = load %struct._Gimp*, %struct._Gimp** %gimp69, align 8
  %70 = load %struct._GError*, %struct._GError** %error, align 8
  %message = getelementptr inbounds %struct._GError, %struct._GError* %70, i32 0, i32 2
  %71 = load i8*, i8** %message, align 8
  call void @gimp_message_literal(%struct._Gimp* %69, %struct._GObject* null, i32 2, i8* %71)
  call void @g_clear_error(%struct._GError** %error)
  store i32 0, i32* %retval
  br label %return

if.end.70:                                        ; preds = %if.end.64
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.70, %if.then.67, %if.then.58, %if.then.48, %if.then.44, %sw.bb, %if.then.33, %if.else.20, %if.else.14, %if.else.9
  %72 = load i32, i32* %retval
  ret i32 %72
}

declare %struct._GimpPlugInProcedure* @gimp_plug_in_procedure_find(%struct._GSList*, i8*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_procedure_get_type() #2

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #4

declare i32 @gimp_plug_in_procedure_add_menu_path(%struct._GimpPlugInProcedure*, i8*, %struct._GError**) #1

declare void @gimp_message_literal(%struct._Gimp*, %struct._GObject*, i32, i8*) #1

declare void @g_clear_error(%struct._GError**) #1

; Function Attrs: nounwind uwtable
define void @gimp_plug_in_set_error_handler(%struct._GimpPlugIn* %plug_in, i32 %handler) #3 {
entry:
  %plug_in.addr = alloca %struct._GimpPlugIn*, align 8
  %handler.addr = alloca i32, align 4
  %proc_frame = alloca %struct._GimpPlugInProcFrame*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpPlugIn* %plug_in, %struct._GimpPlugIn** %plug_in.addr, align 8
  store i32 %handler, i32* %handler.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in.addr, align 8
  %1 = bitcast %struct._GimpPlugIn* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_plug_in_get_type() #8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.gimp_plug_in_set_error_handler, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8, i32 0, i32 0))
  br label %if.end.14

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in.addr, align 8
  %call11 = call %struct._GimpPlugInProcFrame* @gimp_plug_in_get_proc_frame(%struct._GimpPlugIn* %13)
  store %struct._GimpPlugInProcFrame* %call11, %struct._GimpPlugInProcFrame** %proc_frame, align 8
  %14 = load %struct._GimpPlugInProcFrame*, %struct._GimpPlugInProcFrame** %proc_frame, align 8
  %tobool12 = icmp ne %struct._GimpPlugInProcFrame* %14, null
  br i1 %tobool12, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %do.end
  %15 = load i32, i32* %handler.addr, align 4
  %16 = load %struct._GimpPlugInProcFrame*, %struct._GimpPlugInProcFrame** %proc_frame, align 8
  %error_handler = getelementptr inbounds %struct._GimpPlugInProcFrame, %struct._GimpPlugInProcFrame* %16, i32 0, i32 9
  store i32 %15, i32* %error_handler, align 4
  br label %if.end.14

if.end.14:                                        ; preds = %if.else.9, %if.then.13, %do.end
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @gimp_plug_in_get_error_handler(%struct._GimpPlugIn* %plug_in) #3 {
entry:
  %retval = alloca i32, align 4
  %plug_in.addr = alloca %struct._GimpPlugIn*, align 8
  %proc_frame = alloca %struct._GimpPlugInProcFrame*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpPlugIn* %plug_in, %struct._GimpPlugIn** %plug_in.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in.addr, align 8
  %1 = bitcast %struct._GimpPlugIn* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_plug_in_get_type() #8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.gimp_plug_in_get_error_handler, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in.addr, align 8
  %call11 = call %struct._GimpPlugInProcFrame* @gimp_plug_in_get_proc_frame(%struct._GimpPlugIn* %13)
  store %struct._GimpPlugInProcFrame* %call11, %struct._GimpPlugInProcFrame** %proc_frame, align 8
  %14 = load %struct._GimpPlugInProcFrame*, %struct._GimpPlugInProcFrame** %proc_frame, align 8
  %tobool12 = icmp ne %struct._GimpPlugInProcFrame* %14, null
  br i1 %tobool12, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %do.end
  %15 = load %struct._GimpPlugInProcFrame*, %struct._GimpPlugInProcFrame** %proc_frame, align 8
  %error_handler = getelementptr inbounds %struct._GimpPlugInProcFrame, %struct._GimpPlugInProcFrame* %15, i32 0, i32 9
  %16 = load i32, i32* %error_handler, align 4
  store i32 %16, i32* %retval
  br label %return

if.end.14:                                        ; preds = %do.end
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.14, %if.then.13, %if.else.9
  %17 = load i32, i32* %retval
  ret i32 %17
}

; Function Attrs: nounwind uwtable
define void @gimp_plug_in_add_temp_proc(%struct._GimpPlugIn* %plug_in, %struct._GimpTemporaryProcedure* %proc) #3 {
entry:
  %plug_in.addr = alloca %struct._GimpPlugIn*, align 8
  %proc.addr = alloca %struct._GimpTemporaryProcedure*, align 8
  %overridden = alloca %struct._GimpPlugInProcedure*, align 8
  %locale_domain = alloca i8*, align 8
  %help_domain = alloca i8*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst13 = alloca %struct._GTypeInstance*, align 8
  %__t15 = alloca i64, align 8
  %__r18 = alloca i32, align 4
  %tmp33 = alloca i32, align 4
  store %struct._GimpPlugIn* %plug_in, %struct._GimpPlugIn** %plug_in.addr, align 8
  store %struct._GimpTemporaryProcedure* %proc, %struct._GimpTemporaryProcedure** %proc.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in.addr, align 8
  %1 = bitcast %struct._GimpPlugIn* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_plug_in_get_type() #8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.gimp_plug_in_add_temp_proc, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpTemporaryProcedure*, %struct._GimpTemporaryProcedure** %proc.addr, align 8
  %14 = bitcast %struct._GimpTemporaryProcedure* %13 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %14, %struct._GTypeInstance** %__inst13, align 8
  %call16 = call i64 @gimp_temporary_procedure_get_type() #8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.gimp_plug_in_add_temp_proc, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.29, i32 0, i32 0))
  br label %return

if.end.37:                                        ; preds = %if.then.35
  br label %do.end.38

do.end.38:                                        ; preds = %if.end.37
  %26 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in.addr, align 8
  %temp_procedures = getelementptr inbounds %struct._GimpPlugIn, %struct._GimpPlugIn* %26, i32 0, i32 13
  %27 = load %struct._GSList*, %struct._GSList** %temp_procedures, align 8
  %28 = load %struct._GimpTemporaryProcedure*, %struct._GimpTemporaryProcedure** %proc.addr, align 8
  %29 = bitcast %struct._GimpTemporaryProcedure* %28 to i8*
  %call39 = call i8* @gimp_object_get_name(i8* %29)
  %call40 = call %struct._GimpPlugInProcedure* @gimp_plug_in_procedure_find(%struct._GSList* %27, i8* %call39)
  store %struct._GimpPlugInProcedure* %call40, %struct._GimpPlugInProcedure** %overridden, align 8
  %30 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %overridden, align 8
  %tobool41 = icmp ne %struct._GimpPlugInProcedure* %30, null
  br i1 %tobool41, label %if.then.42, label %if.end.45

if.then.42:                                       ; preds = %do.end.38
  %31 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in.addr, align 8
  %32 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %overridden, align 8
  %33 = bitcast %struct._GimpPlugInProcedure* %32 to %struct._GTypeInstance*
  %call43 = call i64 @gimp_temporary_procedure_get_type() #8
  %call44 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %33, i64 %call43)
  %34 = bitcast %struct._GTypeInstance* %call44 to %struct._GimpTemporaryProcedure*
  call void @gimp_plug_in_remove_temp_proc(%struct._GimpPlugIn* %31, %struct._GimpTemporaryProcedure* %34)
  br label %if.end.45

if.end.45:                                        ; preds = %if.then.42, %do.end.38
  %35 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in.addr, align 8
  %manager = getelementptr inbounds %struct._GimpPlugIn, %struct._GimpPlugIn* %35, i32 0, i32 1
  %36 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %manager, align 8
  %37 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in.addr, align 8
  %prog = getelementptr inbounds %struct._GimpPlugIn, %struct._GimpPlugIn* %37, i32 0, i32 2
  %38 = load i8*, i8** %prog, align 8
  %call46 = call i8* @gimp_plug_in_manager_get_locale_domain(%struct._GimpPlugInManager* %36, i8* %38, i8** null)
  store i8* %call46, i8** %locale_domain, align 8
  %39 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in.addr, align 8
  %manager47 = getelementptr inbounds %struct._GimpPlugIn, %struct._GimpPlugIn* %39, i32 0, i32 1
  %40 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %manager47, align 8
  %41 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in.addr, align 8
  %prog48 = getelementptr inbounds %struct._GimpPlugIn, %struct._GimpPlugIn* %41, i32 0, i32 2
  %42 = load i8*, i8** %prog48, align 8
  %call49 = call i8* @gimp_plug_in_manager_get_help_domain(%struct._GimpPlugInManager* %40, i8* %42, i8** null)
  store i8* %call49, i8** %help_domain, align 8
  %43 = load %struct._GimpTemporaryProcedure*, %struct._GimpTemporaryProcedure** %proc.addr, align 8
  %44 = bitcast %struct._GimpTemporaryProcedure* %43 to %struct._GTypeInstance*
  %call50 = call i64 @gimp_plug_in_procedure_get_type() #8
  %call51 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %44, i64 %call50)
  %45 = bitcast %struct._GTypeInstance* %call51 to %struct._GimpPlugInProcedure*
  %46 = load i8*, i8** %locale_domain, align 8
  call void @gimp_plug_in_procedure_set_locale_domain(%struct._GimpPlugInProcedure* %45, i8* %46)
  %47 = load %struct._GimpTemporaryProcedure*, %struct._GimpTemporaryProcedure** %proc.addr, align 8
  %48 = bitcast %struct._GimpTemporaryProcedure* %47 to %struct._GTypeInstance*
  %call52 = call i64 @gimp_plug_in_procedure_get_type() #8
  %call53 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %48, i64 %call52)
  %49 = bitcast %struct._GTypeInstance* %call53 to %struct._GimpPlugInProcedure*
  %50 = load i8*, i8** %help_domain, align 8
  call void @gimp_plug_in_procedure_set_help_domain(%struct._GimpPlugInProcedure* %49, i8* %50)
  %51 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in.addr, align 8
  %temp_procedures54 = getelementptr inbounds %struct._GimpPlugIn, %struct._GimpPlugIn* %51, i32 0, i32 13
  %52 = load %struct._GSList*, %struct._GSList** %temp_procedures54, align 8
  %53 = load %struct._GimpTemporaryProcedure*, %struct._GimpTemporaryProcedure** %proc.addr, align 8
  %54 = bitcast %struct._GimpTemporaryProcedure* %53 to i8*
  %call55 = call i8* @g_object_ref(i8* %54)
  %call56 = call %struct._GSList* @g_slist_prepend(%struct._GSList* %52, i8* %call55)
  %55 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in.addr, align 8
  %temp_procedures57 = getelementptr inbounds %struct._GimpPlugIn, %struct._GimpPlugIn* %55, i32 0, i32 13
  store %struct._GSList* %call56, %struct._GSList** %temp_procedures57, align 8
  %56 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in.addr, align 8
  %manager58 = getelementptr inbounds %struct._GimpPlugIn, %struct._GimpPlugIn* %56, i32 0, i32 1
  %57 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %manager58, align 8
  %58 = load %struct._GimpTemporaryProcedure*, %struct._GimpTemporaryProcedure** %proc.addr, align 8
  call void @gimp_plug_in_manager_add_temp_proc(%struct._GimpPlugInManager* %57, %struct._GimpTemporaryProcedure* %58)
  br label %return

return:                                           ; preds = %if.end.45, %if.else.36, %if.else.9
  ret void
}

declare i8* @gimp_plug_in_manager_get_locale_domain(%struct._GimpPlugInManager*, i8*, i8**) #1

declare i8* @gimp_plug_in_manager_get_help_domain(%struct._GimpPlugInManager*, i8*, i8**) #1

declare void @gimp_plug_in_procedure_set_locale_domain(%struct._GimpPlugInProcedure*, i8*) #1

declare void @gimp_plug_in_procedure_set_help_domain(%struct._GimpPlugInProcedure*, i8*) #1

declare %struct._GSList* @g_slist_prepend(%struct._GSList*, i8*) #1

declare i8* @g_object_ref(i8*) #1

declare void @gimp_plug_in_manager_add_temp_proc(%struct._GimpPlugInManager*, %struct._GimpTemporaryProcedure*) #1

declare %struct._GSList* @g_slist_remove(%struct._GSList*, i8*) #1

declare void @gimp_plug_in_manager_remove_temp_proc(%struct._GimpPlugInManager*, %struct._GimpTemporaryProcedure*) #1

declare void @g_object_unref(i8*) #1

declare i8* @g_type_class_peek_parent(i8*) #1

declare void @g_type_class_adjust_private_offset(i8*, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_plug_in_class_init(%struct._GimpPlugInClass* %klass) #3 {
entry:
  %klass.addr = alloca %struct._GimpPlugInClass*, align 8
  %object_class = alloca %struct._GObjectClass*, align 8
  store %struct._GimpPlugInClass* %klass, %struct._GimpPlugInClass** %klass.addr, align 8
  %0 = load %struct._GimpPlugInClass*, %struct._GimpPlugInClass** %klass.addr, align 8
  %1 = bitcast %struct._GimpPlugInClass* %0 to %struct._GTypeClass*
  %call = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 80)
  %2 = bitcast %struct._GTypeClass* %call to %struct._GObjectClass*
  store %struct._GObjectClass* %2, %struct._GObjectClass** %object_class, align 8
  %3 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %finalize = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %3, i32 0, i32 6
  store void (%struct._GObject*)* @gimp_plug_in_finalize, void (%struct._GObject*)** %finalize, align 8
  call void @gp_init()
  call void @gimp_wire_set_writer(i32 (%struct._GIOChannel*, i8*, i64, i8*)* @gimp_plug_in_write)
  call void @gimp_wire_set_flusher(i32 (%struct._GIOChannel*, i8*)* @gimp_plug_in_flush)
  ret void
}

declare %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass*, i64) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_plug_in_finalize(%struct._GObject* %object) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %plug_in = alloca %struct._GimpPlugIn*, align 8
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_plug_in_get_type() #8
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpPlugIn*
  store %struct._GimpPlugIn* %2, %struct._GimpPlugIn** %plug_in, align 8
  %3 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in, align 8
  %prog = getelementptr inbounds %struct._GimpPlugIn, %struct._GimpPlugIn* %3, i32 0, i32 2
  %4 = load i8*, i8** %prog, align 8
  call void @g_free(i8* %4)
  %5 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in, align 8
  %main_proc_frame = getelementptr inbounds %struct._GimpPlugIn, %struct._GimpPlugIn* %5, i32 0, i32 15
  %6 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in, align 8
  call void @gimp_plug_in_proc_frame_dispose(%struct._GimpPlugInProcFrame* %main_proc_frame, %struct._GimpPlugIn* %6)
  %7 = load i8*, i8** @gimp_plug_in_parent_class, align 8
  %8 = bitcast i8* %7 to %struct._GTypeClass*
  %call2 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %8, i64 80)
  %9 = bitcast %struct._GTypeClass* %call2 to %struct._GObjectClass*
  %finalize = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %9, i32 0, i32 6
  %10 = load void (%struct._GObject*)*, void (%struct._GObject*)** %finalize, align 8
  %11 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  call void %10(%struct._GObject* %11)
  ret void
}

declare void @gp_init() #1

declare void @gimp_wire_set_writer(i32 (%struct._GIOChannel*, i8*, i64, i8*)*) #1

; Function Attrs: nounwind uwtable
define internal i32 @gimp_plug_in_write(%struct._GIOChannel* %channel, i8* %buf, i64 %count, i8* %data) #3 {
entry:
  %retval = alloca i32, align 4
  %channel.addr = alloca %struct._GIOChannel*, align 8
  %buf.addr = alloca i8*, align 8
  %count.addr = alloca i64, align 8
  %data.addr = alloca i8*, align 8
  %plug_in = alloca %struct._GimpPlugIn*, align 8
  %bytes = alloca i64, align 8
  store %struct._GIOChannel* %channel, %struct._GIOChannel** %channel.addr, align 8
  store i8* %buf, i8** %buf.addr, align 8
  store i64 %count, i64* %count.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = bitcast i8* %0 to %struct._GimpPlugIn*
  store %struct._GimpPlugIn* %1, %struct._GimpPlugIn** %plug_in, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.19, %entry
  %2 = load i64, i64* %count.addr, align 8
  %cmp = icmp ugt i64 %2, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in, align 8
  %write_buffer_index = getelementptr inbounds %struct._GimpPlugIn, %struct._GimpPlugIn* %3, i32 0, i32 12
  %4 = load i32, i32* %write_buffer_index, align 4
  %conv = sext i32 %4 to i64
  %5 = load i64, i64* %count.addr, align 8
  %add = add i64 %conv, %5
  %cmp1 = icmp uge i64 %add, 512
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  %6 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in, align 8
  %write_buffer_index3 = getelementptr inbounds %struct._GimpPlugIn, %struct._GimpPlugIn* %6, i32 0, i32 12
  %7 = load i32, i32* %write_buffer_index3, align 4
  %sub = sub nsw i32 512, %7
  %conv4 = sext i32 %sub to i64
  store i64 %conv4, i64* %bytes, align 8
  %8 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in, align 8
  %write_buffer_index5 = getelementptr inbounds %struct._GimpPlugIn, %struct._GimpPlugIn* %8, i32 0, i32 12
  %9 = load i32, i32* %write_buffer_index5, align 4
  %idxprom = sext i32 %9 to i64
  %10 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in, align 8
  %write_buffer = getelementptr inbounds %struct._GimpPlugIn, %struct._GimpPlugIn* %10, i32 0, i32 11
  %arrayidx = getelementptr inbounds [512 x i8], [512 x i8]* %write_buffer, i32 0, i64 %idxprom
  %11 = load i8*, i8** %buf.addr, align 8
  %12 = load i64, i64* %bytes, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %arrayidx, i8* %11, i64 %12, i32 1, i1 false)
  %13 = load i64, i64* %bytes, align 8
  %14 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in, align 8
  %write_buffer_index6 = getelementptr inbounds %struct._GimpPlugIn, %struct._GimpPlugIn* %14, i32 0, i32 12
  %15 = load i32, i32* %write_buffer_index6, align 4
  %conv7 = sext i32 %15 to i64
  %add8 = add i64 %conv7, %13
  %conv9 = trunc i64 %add8 to i32
  store i32 %conv9, i32* %write_buffer_index6, align 4
  %16 = load %struct._GIOChannel*, %struct._GIOChannel** %channel.addr, align 8
  %17 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in, align 8
  %18 = bitcast %struct._GimpPlugIn* %17 to i8*
  %call = call i32 @gimp_wire_flush(%struct._GIOChannel* %16, i8* %18)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then.10

if.then.10:                                       ; preds = %if.then
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %if.end.19

if.else:                                          ; preds = %while.body
  %19 = load i64, i64* %count.addr, align 8
  store i64 %19, i64* %bytes, align 8
  %20 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in, align 8
  %write_buffer_index11 = getelementptr inbounds %struct._GimpPlugIn, %struct._GimpPlugIn* %20, i32 0, i32 12
  %21 = load i32, i32* %write_buffer_index11, align 4
  %idxprom12 = sext i32 %21 to i64
  %22 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in, align 8
  %write_buffer13 = getelementptr inbounds %struct._GimpPlugIn, %struct._GimpPlugIn* %22, i32 0, i32 11
  %arrayidx14 = getelementptr inbounds [512 x i8], [512 x i8]* %write_buffer13, i32 0, i64 %idxprom12
  %23 = load i8*, i8** %buf.addr, align 8
  %24 = load i64, i64* %bytes, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %arrayidx14, i8* %23, i64 %24, i32 1, i1 false)
  %25 = load i64, i64* %bytes, align 8
  %26 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in, align 8
  %write_buffer_index15 = getelementptr inbounds %struct._GimpPlugIn, %struct._GimpPlugIn* %26, i32 0, i32 12
  %27 = load i32, i32* %write_buffer_index15, align 4
  %conv16 = sext i32 %27 to i64
  %add17 = add i64 %conv16, %25
  %conv18 = trunc i64 %add17 to i32
  store i32 %conv18, i32* %write_buffer_index15, align 4
  br label %if.end.19

if.end.19:                                        ; preds = %if.else, %if.end
  %28 = load i64, i64* %bytes, align 8
  %29 = load i8*, i8** %buf.addr, align 8
  %add.ptr = getelementptr inbounds i8, i8* %29, i64 %28
  store i8* %add.ptr, i8** %buf.addr, align 8
  %30 = load i64, i64* %bytes, align 8
  %31 = load i64, i64* %count.addr, align 8
  %sub20 = sub i64 %31, %30
  store i64 %sub20, i64* %count.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %while.end, %if.then.10
  %32 = load i32, i32* %retval
  ret i32 %32
}

declare void @gimp_wire_set_flusher(i32 (%struct._GIOChannel*, i8*)*) #1

; Function Attrs: nounwind uwtable
define internal i32 @gimp_plug_in_flush(%struct._GIOChannel* %channel, i8* %data) #3 {
entry:
  %retval = alloca i32, align 4
  %channel.addr = alloca %struct._GIOChannel*, align 8
  %data.addr = alloca i8*, align 8
  %plug_in = alloca %struct._GimpPlugIn*, align 8
  %status = alloca i32, align 4
  %error = alloca %struct._GError*, align 8
  %count = alloca i32, align 4
  %bytes = alloca i64, align 8
  store %struct._GIOChannel* %channel, %struct._GIOChannel** %channel.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = bitcast i8* %0 to %struct._GimpPlugIn*
  store %struct._GimpPlugIn* %1, %struct._GimpPlugIn** %plug_in, align 8
  %2 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in, align 8
  %write_buffer_index = getelementptr inbounds %struct._GimpPlugIn, %struct._GimpPlugIn* %2, i32 0, i32 12
  %3 = load i32, i32* %write_buffer_index, align 4
  %cmp = icmp sgt i32 %3, 0
  br i1 %cmp, label %if.then, label %if.end.18

if.then:                                          ; preds = %entry
  store %struct._GError* null, %struct._GError** %error, align 8
  store i32 0, i32* %count, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end.14, %if.then
  %4 = load i32, i32* %count, align 4
  %5 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in, align 8
  %write_buffer_index1 = getelementptr inbounds %struct._GimpPlugIn, %struct._GimpPlugIn* %5, i32 0, i32 12
  %6 = load i32, i32* %write_buffer_index1, align 4
  %cmp2 = icmp ne i32 %4, %6
  br i1 %cmp2, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  br label %do.body

do.body:                                          ; preds = %do.cond, %while.body
  store i64 0, i64* %bytes, align 8
  %7 = load %struct._GIOChannel*, %struct._GIOChannel** %channel.addr, align 8
  %8 = load i32, i32* %count, align 4
  %idxprom = sext i32 %8 to i64
  %9 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in, align 8
  %write_buffer = getelementptr inbounds %struct._GimpPlugIn, %struct._GimpPlugIn* %9, i32 0, i32 11
  %arrayidx = getelementptr inbounds [512 x i8], [512 x i8]* %write_buffer, i32 0, i64 %idxprom
  %10 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in, align 8
  %write_buffer_index3 = getelementptr inbounds %struct._GimpPlugIn, %struct._GimpPlugIn* %10, i32 0, i32 12
  %11 = load i32, i32* %write_buffer_index3, align 4
  %12 = load i32, i32* %count, align 4
  %sub = sub nsw i32 %11, %12
  %conv = sext i32 %sub to i64
  %call = call i32 @g_io_channel_write_chars(%struct._GIOChannel* %7, i8* %arrayidx, i64 %conv, i64* %bytes, %struct._GError** %error)
  store i32 %call, i32* %status, align 4
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %13 = load i32, i32* %status, align 4
  %cmp4 = icmp eq i32 %13, 3
  br i1 %cmp4, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %14 = load i32, i32* %status, align 4
  %cmp6 = icmp ne i32 %14, 1
  br i1 %cmp6, label %if.then.8, label %if.end.14

if.then.8:                                        ; preds = %do.end
  %15 = load %struct._GError*, %struct._GError** %error, align 8
  %tobool = icmp ne %struct._GError* %15, null
  br i1 %tobool, label %if.then.9, label %if.else

if.then.9:                                        ; preds = %if.then.8
  %call10 = call i8* @g_get_prgname()
  %call11 = call i8* @gimp_filename_to_utf8(i8* %call10)
  %16 = load %struct._GError*, %struct._GError** %error, align 8
  %message = getelementptr inbounds %struct._GError, %struct._GError* %16, i32 0, i32 2
  %17 = load i8*, i8** %message, align 8
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.30, i32 0, i32 0), i8* %call11, i8* %17)
  %18 = load %struct._GError*, %struct._GError** %error, align 8
  call void @g_error_free(%struct._GError* %18)
  br label %if.end

if.else:                                          ; preds = %if.then.8
  %call12 = call i8* @g_get_prgname()
  %call13 = call i8* @gimp_filename_to_utf8(i8* %call12)
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.31, i32 0, i32 0), i8* %call13)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.9
  store i32 0, i32* %retval
  br label %return

if.end.14:                                        ; preds = %do.end
  %19 = load i64, i64* %bytes, align 8
  %20 = load i32, i32* %count, align 4
  %conv15 = sext i32 %20 to i64
  %add = add i64 %conv15, %19
  %conv16 = trunc i64 %add to i32
  store i32 %conv16, i32* %count, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %21 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in, align 8
  %write_buffer_index17 = getelementptr inbounds %struct._GimpPlugIn, %struct._GimpPlugIn* %21, i32 0, i32 12
  store i32 0, i32* %write_buffer_index17, align 4
  br label %if.end.18

if.end.18:                                        ; preds = %while.end, %entry
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.18, %if.end
  %22 = load i32, i32* %retval
  ret i32 %22
}

declare void @gimp_plug_in_proc_frame_dispose(%struct._GimpPlugInProcFrame*, %struct._GimpPlugIn*) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #7

declare i32 @gimp_wire_flush(%struct._GIOChannel*, i8*) #1

declare i32 @g_io_channel_write_chars(%struct._GIOChannel*, i8*, i64, i64*, %struct._GError**) #1

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
  call void @g_logv(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i32 16, i8* %0, %struct.__va_list_tag* %arraydecay2)
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*
  call void @llvm.va_end(i8* %arraydecay34)
  ret void
}

declare i8* @g_get_prgname() #1

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #7

declare void @g_logv(i8*, i32, i8*, %struct.__va_list_tag*) #1

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #7

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #7

declare i32 @gimp_wire_read_msg(%struct._GIOChannel*, %struct._GimpWireMessage*, i8*) #1

declare void @gimp_plug_in_handle_message(%struct._GimpPlugIn*, %struct._GimpWireMessage*) #1

declare void @gimp_wire_destroy(%struct._GimpWireMessage*) #1

; Function Attrs: nounwind
declare i8* @gettext(i8*) #5

attributes #0 = { nounwind readnone uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind }
attributes #8 = { nounwind readnone }
attributes #9 = { nounwind readonly }
attributes #10 = { noreturn }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
