; ModuleID = './app/plug-in/gimppluginprocedure.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GimpPlugInProcedureClass = type { %struct._GimpProcedureClass, i8* (%struct._GimpPlugInProcedure*)*, void (%struct._GimpPlugInProcedure*, i8*)* }
%struct._GimpProcedureClass = type { %struct._GimpObjectClass, %struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)*, void (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GimpObject*)* }
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
%struct._GimpProcedure = type { %struct._GimpObject, i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, %struct._GParamSpec**, i32, %struct._GParamSpec**, %struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* }
%struct._Gimp = type { %struct._GimpObject, %struct._GimpCoreConfig*, %struct._GimpCoreConfig*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct._GimpGui, i32, i32, i32, %struct._GList*, i32, %struct._GimpParasiteList*, %struct._GimpContainer*, %struct._GimpPaintInfo*, %struct._GimpModuleDB*, i32, %struct._GimpPlugInManager*, %struct._GimpContainer*, i32, i32, %struct._GimpIdTable*, %struct._GimpIdTable*, %struct._GimpContainer*, i32, %struct._GList*, %struct._GimpBuffer*, %struct._GimpContainer*, %struct._GimpContainer*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpTagCache*, %struct._GimpPDB*, %struct._GimpContainer*, %struct._GimpToolInfo*, %struct._GimpContainer*, %struct._GimpContainer*, %struct._GimpTemplate*, %struct._GList*, %struct._GimpContext*, %struct._GimpContext* }
%struct._GimpCoreConfig = type opaque
%struct._GimpGui = type { void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*, %struct._GObject*, i32, i8*, i8*)*, void (%struct._Gimp*, %struct._GimpProgress*, i8*, i8*)*, i8* (%struct._Gimp*)*, i8* (%struct._Gimp*, i32, i32*)*, i32 (%struct._Gimp*)*, i8* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*, i32)*, i32 (%struct._GimpObject*)*, i32 (%struct._GimpObject*)*, %struct._GimpObject* (%struct._Gimp*, %struct._GimpImage*, i32, double)*, void (%struct._GimpObject*)*, void (%struct._Gimp*, %struct._GimpImage*, %struct._GimpImage*)*, %struct._GimpProgress* (%struct._Gimp*, %struct._GimpObject*)*, void (%struct._Gimp*, %struct._GimpProgress*)*, i32 (%struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GimpContainer*, i8*, i8*, i8*, %struct.__va_list_tag*)*, i32 (%struct._Gimp*, %struct._GimpContainer*, i8*, i8*, %struct.__va_list_tag*)*, i32 (%struct._Gimp*, %struct._GimpContainer*, i8*)*, i32 (%struct._Gimp*, i8*, i8*)*, void (%struct._Gimp*)* }
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
%struct._GimpProgress = type opaque
%struct._GValueArray = type { i32, %struct._GValue*, i32 }
%struct._GError = type { i32, i32, i8* }
%struct._GimpPlugInProcedure = type { %struct._GimpProcedure, i8*, i32, i32, i8*, %struct._GList*, i8*, i32, i32, i8*, i8*, i32, i64, i32, i32, i8*, i8*, i8*, i8*, %struct._GSList*, %struct._GSList*, %struct._GSList*, i8* }
%struct._GdkPixbuf = type opaque
%struct._GimpDrawable = type { %struct._GimpItem, %struct._GimpDrawablePrivate* }
%struct._GimpItem = type { %struct._GimpViewable }
%struct._GimpViewable = type { %struct._GimpObject }
%struct._GimpDrawablePrivate = type opaque
%struct._GSignalInvocationHint = type { i32, i32, i32 }
%struct._GClosure = type { i32, {}*, i8*, %struct._GClosureNotifyData* }
%struct._GClosureNotifyData = type { i8*, void (i8*, %struct._GClosure*)* }

@gimp_plug_in_procedure_get_type.g_define_type_id__volatile = internal global i64 0, align 8
@.str = private unnamed_addr constant [20 x i8] c"GimpPlugInProcedure\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"Gimp-Plug-In\00", align 1
@__func__.gimp_plug_in_procedure_new = private unnamed_addr constant [27 x i8] c"gimp_plug_in_procedure_new\00", align 1
@.str.2 = private unnamed_addr constant [56 x i8] c"proc_type == GIMP_PLUGIN || proc_type == GIMP_EXTENSION\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"prog != NULL\00", align 1
@__func__.gimp_plug_in_procedure_get_progname = private unnamed_addr constant [36 x i8] c"gimp_plug_in_procedure_get_progname\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"GIMP_IS_PLUG_IN_PROCEDURE (proc)\00", align 1
@__func__.gimp_plug_in_procedure_set_locale_domain = private unnamed_addr constant [41 x i8] c"gimp_plug_in_procedure_set_locale_domain\00", align 1
@__func__.gimp_plug_in_procedure_get_locale_domain = private unnamed_addr constant [41 x i8] c"gimp_plug_in_procedure_get_locale_domain\00", align 1
@__func__.gimp_plug_in_procedure_set_help_domain = private unnamed_addr constant [39 x i8] c"gimp_plug_in_procedure_set_help_domain\00", align 1
@__func__.gimp_plug_in_procedure_get_help_domain = private unnamed_addr constant [39 x i8] c"gimp_plug_in_procedure_get_help_domain\00", align 1
@__func__.gimp_plug_in_procedure_add_menu_path = private unnamed_addr constant [37 x i8] c"gimp_plug_in_procedure_add_menu_path\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"menu_path != NULL\00", align 1
@.str.6 = private unnamed_addr constant [32 x i8] c"error == NULL || *error == NULL\00", align 1
@.str.7 = private unnamed_addr constant [164 x i8] c"Plug-In \22%s\22\0A(%s)\0Aattempted to install procedure \22%s\22\0Ain the invalid menu location \22%s\22.\0AThe menu path must look like either \22<Prefix>\22 or \22<Prefix>/path/to/item\22.\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"<Toolbox>\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"<Image>\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"INT32\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"<Layers>\00", align 1
@.str.12 = private unnamed_addr constant [33 x i8] c"INT32, IMAGE, (LAYER | DRAWABLE)\00", align 1
@.str.13 = private unnamed_addr constant [11 x i8] c"<Channels>\00", align 1
@.str.14 = private unnamed_addr constant [35 x i8] c"INT32, IMAGE, (CHANNEL | DRAWABLE)\00", align 1
@.str.15 = private unnamed_addr constant [10 x i8] c"<Vectors>\00", align 1
@.str.16 = private unnamed_addr constant [22 x i8] c"INT32, IMAGE, VECTORS\00", align 1
@.str.17 = private unnamed_addr constant [11 x i8] c"<Colormap>\00", align 1
@.str.18 = private unnamed_addr constant [13 x i8] c"INT32, IMAGE\00", align 1
@.str.19 = private unnamed_addr constant [7 x i8] c"<Load>\00", align 1
@g_param_spec_types = external global i64*, align 8
@.str.20 = private unnamed_addr constant [22 x i8] c"INT32, STRING, STRING\00", align 1
@.str.21 = private unnamed_addr constant [6 x i8] c"IMAGE\00", align 1
@.str.22 = private unnamed_addr constant [7 x i8] c"<Save>\00", align 1
@.str.23 = private unnamed_addr constant [39 x i8] c"INT32, IMAGE, DRAWABLE, STRING, STRING\00", align 1
@.str.24 = private unnamed_addr constant [10 x i8] c"<Brushes>\00", align 1
@.str.25 = private unnamed_addr constant [11 x i8] c"<Dynamics>\00", align 1
@.str.26 = private unnamed_addr constant [12 x i8] c"<Gradients>\00", align 1
@.str.27 = private unnamed_addr constant [11 x i8] c"<Palettes>\00", align 1
@.str.28 = private unnamed_addr constant [11 x i8] c"<Patterns>\00", align 1
@.str.29 = private unnamed_addr constant [14 x i8] c"<ToolPresets>\00", align 1
@.str.30 = private unnamed_addr constant [8 x i8] c"<Fonts>\00", align 1
@.str.31 = private unnamed_addr constant [10 x i8] c"<Buffers>\00", align 1
@.str.32 = private unnamed_addr constant [277 x i8] c"Plug-In \22%s\22\0A(%s)\0Aattempted to install procedure \22%s\22 in the invalid menu location \22%s\22.\0AUse either \22<Image>\22, \22<Layers>\22, \22<Channels>\22, \22<Vectors>\22, \22<Colormap>\22, \22<Brushes>\22, \22<Dynamics>\22, \22<Gradients>\22, \22<Palettes>\22, \22<Patterns>\22, \22<ToolPresets>\22, \22<Fonts>\22 or \22<Buffers>\22.\00", align 1
@gimp_plug_in_procedure_signals = internal global [1 x i32] zeroinitializer, align 4
@.str.33 = private unnamed_addr constant [119 x i8] c"Plug-In \22%s\22\0A(%s)\0A\0Aattempted to install %s procedure \22%s\22 which does not take the standard %s Plug-In arguments: (%s).\00", align 1
@__func__.gimp_plug_in_procedure_get_label = private unnamed_addr constant [33 x i8] c"gimp_plug_in_procedure_get_label\00", align 1
@.str.34 = private unnamed_addr constant [4 x i8] c"...\00", align 1
@.str.35 = private unnamed_addr constant [4 x i8] c"\E2\80\A6\00", align 1
@__func__.gimp_plug_in_procedure_get_blurb = private unnamed_addr constant [33 x i8] c"gimp_plug_in_procedure_get_blurb\00", align 1
@__func__.gimp_plug_in_procedure_set_icon = private unnamed_addr constant [32 x i8] c"gimp_plug_in_procedure_set_icon\00", align 1
@.str.36 = private unnamed_addr constant [37 x i8] c"icon_type == -1 || icon_data != NULL\00", align 1
@.str.37 = private unnamed_addr constant [40 x i8] c"icon_type == -1 || icon_data_length > 0\00", align 1
@__func__.gimp_plug_in_procedure_get_stock_id = private unnamed_addr constant [36 x i8] c"gimp_plug_in_procedure_get_stock_id\00", align 1
@__func__.gimp_plug_in_procedure_get_pixbuf = private unnamed_addr constant [34 x i8] c"gimp_plug_in_procedure_get_pixbuf\00", align 1
@.str.38 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@__func__.gimp_plug_in_procedure_get_help_id = private unnamed_addr constant [35 x i8] c"gimp_plug_in_procedure_get_help_id\00", align 1
@.str.39 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@__func__.gimp_plug_in_procedure_get_sensitive = private unnamed_addr constant [37 x i8] c"gimp_plug_in_procedure_get_sensitive\00", align 1
@.str.40 = private unnamed_addr constant [48 x i8] c"drawable == NULL || GIMP_IS_DRAWABLE (drawable)\00", align 1
@__func__.gimp_plug_in_procedure_set_image_types = private unnamed_addr constant [39 x i8] c"gimp_plug_in_procedure_set_image_types\00", align 1
@__func__.gimp_plug_in_procedure_set_file_proc = private unnamed_addr constant [37 x i8] c"gimp_plug_in_procedure_set_file_proc\00", align 1
@.str.41 = private unnamed_addr constant [6 x i8] c"file:\00", align 1
@__func__.gimp_plug_in_procedure_set_mime_type = private unnamed_addr constant [37 x i8] c"gimp_plug_in_procedure_set_mime_type\00", align 1
@__func__.gimp_plug_in_procedure_set_thumb_loader = private unnamed_addr constant [40 x i8] c"gimp_plug_in_procedure_set_thumb_loader\00", align 1
@__func__.gimp_plug_in_procedure_handle_return_values = private unnamed_addr constant [44 x i8] c"gimp_plug_in_procedure_handle_return_values\00", align 1
@.str.42 = private unnamed_addr constant [20 x i8] c"return_vals != NULL\00", align 1
@.str.43 = private unnamed_addr constant [27 x i8] c"Calling error for '%s':\0A%s\00", align 1
@.str.44 = private unnamed_addr constant [29 x i8] c"Execution error for '%s':\0A%s\00", align 1
@gimp_plug_in_procedure_parent_class = internal global i8* null, align 8
@GimpPlugInProcedure_private_offset = internal global i32 0, align 4
@.str.45 = private unnamed_addr constant [16 x i8] c"menu-path-added\00", align 1
@.str.46 = private unnamed_addr constant [5 x i8] c"RGBA\00", align 1
@.str.47 = private unnamed_addr constant [5 x i8] c"RGB*\00", align 1
@.str.48 = private unnamed_addr constant [4 x i8] c"RGB\00", align 1
@.str.49 = private unnamed_addr constant [6 x i8] c"GRAYA\00", align 1
@.str.50 = private unnamed_addr constant [6 x i8] c"GRAY*\00", align 1
@.str.51 = private unnamed_addr constant [5 x i8] c"GRAY\00", align 1
@.str.52 = private unnamed_addr constant [9 x i8] c"INDEXEDA\00", align 1
@.str.53 = private unnamed_addr constant [9 x i8] c"INDEXED*\00", align 1
@.str.54 = private unnamed_addr constant [8 x i8] c"INDEXED\00", align 1
@.str.55 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@.str.56 = private unnamed_addr constant [51 x i8] c"%s: image-type contains unrecognizable parts:'%s'\0A\00", align 1
@.str.57 = private unnamed_addr constant [4 x i8] c" \09,\00", align 1

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_plug_in_procedure_get_type() #0 {
entry:
  %tmp = alloca i32, align 4
  %tmp1 = alloca i8*, align 8
  %g_define_type_id = alloca i64, align 8
  fence seq_cst
  %0 = load volatile i64, i64* @gimp_plug_in_procedure_get_type.g_define_type_id__volatile, align 8
  %1 = inttoptr i64 %0 to i8*
  store i8* %1, i8** %tmp1
  %2 = load i8*, i8** %tmp1
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call = call i32 @g_once_init_enter(i8* bitcast (i64* @gimp_plug_in_procedure_get_type.g_define_type_id__volatile to i8*))
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
  %call5 = call i64 @gimp_procedure_get_type() #6
  %call6 = call i8* @g_intern_static_string(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0))
  %call7 = call i64 @g_type_register_static_simple(i64 %call5, i8* %call6, i32 192, void (i8*, i8*)* bitcast (void (i8*)* @gimp_plug_in_procedure_class_intern_init to void (i8*, i8*)*), i32 288, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._GimpPlugInProcedure*)* @gimp_plug_in_procedure_init to void (%struct._GTypeInstance*, i8*)*), i32 0)
  store i64 %call7, i64* %g_define_type_id, align 8
  %5 = load i64, i64* %g_define_type_id, align 8
  call void @g_once_init_leave(i8* bitcast (i64* @gimp_plug_in_procedure_get_type.g_define_type_id__volatile to i8*), i64 %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end
  %6 = load volatile i64, i64* @gimp_plug_in_procedure_get_type.g_define_type_id__volatile, align 8
  ret i64 %6
}

declare i32 @g_once_init_enter(i8*) #1

declare i64 @g_type_register_static_simple(i64, i8*, i32, void (i8*, i8*)*, i32, void (%struct._GTypeInstance*, i8*)*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_procedure_get_type() #2

declare i8* @g_intern_static_string(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_plug_in_procedure_class_intern_init(i8* %klass) #3 {
entry:
  %klass.addr = alloca i8*, align 8
  store i8* %klass, i8** %klass.addr, align 8
  %0 = load i8*, i8** %klass.addr, align 8
  %call = call i8* @g_type_class_peek_parent(i8* %0)
  store i8* %call, i8** @gimp_plug_in_procedure_parent_class, align 8
  %1 = load i32, i32* @GimpPlugInProcedure_private_offset, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %klass.addr, align 8
  call void @g_type_class_adjust_private_offset(i8* %2, i32* @GimpPlugInProcedure_private_offset)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %klass.addr, align 8
  %4 = bitcast i8* %3 to %struct._GimpPlugInProcedureClass*
  call void @gimp_plug_in_procedure_class_init(%struct._GimpPlugInProcedureClass* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_plug_in_procedure_init(%struct._GimpPlugInProcedure* %proc) #3 {
entry:
  %proc.addr = alloca %struct._GimpPlugInProcedure*, align 8
  store %struct._GimpPlugInProcedure* %proc, %struct._GimpPlugInProcedure** %proc.addr, align 8
  %0 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %proc.addr, align 8
  %1 = bitcast %struct._GimpPlugInProcedure* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_procedure_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpProcedure*
  %proc_type = getelementptr inbounds %struct._GimpProcedure, %struct._GimpProcedure* %2, i32 0, i32 1
  store i32 1, i32* %proc_type, align 4
  %3 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %proc.addr, align 8
  %label = getelementptr inbounds %struct._GimpPlugInProcedure, %struct._GimpPlugInProcedure* %3, i32 0, i32 6
  store i8* null, i8** %label, align 8
  %4 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %proc.addr, align 8
  %icon_data_length = getelementptr inbounds %struct._GimpPlugInProcedure, %struct._GimpPlugInProcedure* %4, i32 0, i32 8
  store i32 -1, i32* %icon_data_length, align 4
  ret void
}

declare void @g_once_init_leave(i8*, i64) #1

; Function Attrs: nounwind uwtable
define i8* @gimp_plug_in_procedure_real_get_progname(%struct._GimpPlugInProcedure* %procedure) #3 {
entry:
  %procedure.addr = alloca %struct._GimpPlugInProcedure*, align 8
  store %struct._GimpPlugInProcedure* %procedure, %struct._GimpPlugInProcedure** %procedure.addr, align 8
  %0 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %procedure.addr, align 8
  %prog = getelementptr inbounds %struct._GimpPlugInProcedure, %struct._GimpPlugInProcedure* %0, i32 0, i32 1
  %1 = load i8*, i8** %prog, align 8
  ret i8* %1
}

; Function Attrs: nounwind uwtable
define %struct._GimpProcedure* @gimp_plug_in_procedure_new(i32 %proc_type, i8* %prog) #3 {
entry:
  %retval = alloca %struct._GimpProcedure*, align 8
  %proc_type.addr = alloca i32, align 4
  %prog.addr = alloca i8*, align 8
  %proc = alloca %struct._GimpPlugInProcedure*, align 8
  store i32 %proc_type, i32* %proc_type.addr, align 4
  store i8* %prog, i8** %prog.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load i32, i32* %proc_type.addr, align 4
  %cmp = icmp eq i32 %0, 1
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.body
  %1 = load i32, i32* %proc_type.addr, align 4
  %cmp1 = icmp eq i32 %1, 2
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %do.body
  br label %if.end

if.else:                                          ; preds = %lor.lhs.false
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.gimp_plug_in_procedure_new, i32 0, i32 0), i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.2, i32 0, i32 0))
  store %struct._GimpProcedure* null, %struct._GimpProcedure** %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %do.body.2

do.body.2:                                        ; preds = %do.end
  %2 = load i8*, i8** %prog.addr, align 8
  %cmp3 = icmp ne i8* %2, null
  br i1 %cmp3, label %if.then.4, label %if.else.5

if.then.4:                                        ; preds = %do.body.2
  br label %if.end.6

if.else.5:                                        ; preds = %do.body.2
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.gimp_plug_in_procedure_new, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i32 0, i32 0))
  store %struct._GimpProcedure* null, %struct._GimpProcedure** %retval
  br label %return

if.end.6:                                         ; preds = %if.then.4
  br label %do.end.7

do.end.7:                                         ; preds = %if.end.6
  %call = call i64 @gimp_plug_in_procedure_get_type() #6
  %call8 = call i8* (i64, i8*, ...) @g_object_new(i64 %call, i8* null)
  %3 = bitcast i8* %call8 to %struct._GimpPlugInProcedure*
  store %struct._GimpPlugInProcedure* %3, %struct._GimpPlugInProcedure** %proc, align 8
  %4 = load i8*, i8** %prog.addr, align 8
  %call9 = call noalias i8* @g_strdup(i8* %4)
  %5 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %proc, align 8
  %prog10 = getelementptr inbounds %struct._GimpPlugInProcedure, %struct._GimpPlugInProcedure* %5, i32 0, i32 1
  store i8* %call9, i8** %prog10, align 8
  %6 = load i32, i32* %proc_type.addr, align 4
  %7 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %proc, align 8
  %8 = bitcast %struct._GimpPlugInProcedure* %7 to %struct._GTypeInstance*
  %call11 = call i64 @gimp_procedure_get_type() #6
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %8, i64 %call11)
  %9 = bitcast %struct._GTypeInstance* %call12 to %struct._GimpProcedure*
  %proc_type13 = getelementptr inbounds %struct._GimpProcedure, %struct._GimpProcedure* %9, i32 0, i32 1
  store i32 %6, i32* %proc_type13, align 4
  %10 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %proc, align 8
  %11 = bitcast %struct._GimpPlugInProcedure* %10 to %struct._GTypeInstance*
  %call14 = call i64 @gimp_procedure_get_type() #6
  %call15 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %11, i64 %call14)
  %12 = bitcast %struct._GTypeInstance* %call15 to %struct._GimpProcedure*
  store %struct._GimpProcedure* %12, %struct._GimpProcedure** %retval
  br label %return

return:                                           ; preds = %do.end.7, %if.else.5, %if.else
  %13 = load %struct._GimpProcedure*, %struct._GimpProcedure** %retval
  ret %struct._GimpProcedure* %13
}

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

declare i8* @g_object_new(i64, i8*, ...) #1

declare noalias i8* @g_strdup(i8*) #1

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

; Function Attrs: nounwind uwtable
define %struct._GimpPlugInProcedure* @gimp_plug_in_procedure_find(%struct._GSList* %list, i8* %proc_name) #3 {
entry:
  %retval = alloca %struct._GimpPlugInProcedure*, align 8
  %list.addr = alloca %struct._GSList*, align 8
  %proc_name.addr = alloca i8*, align 8
  %l = alloca %struct._GSList*, align 8
  %object = alloca %struct._GimpObject*, align 8
  store %struct._GSList* %list, %struct._GSList** %list.addr, align 8
  store i8* %proc_name, i8** %proc_name.addr, align 8
  %0 = load %struct._GSList*, %struct._GSList** %list.addr, align 8
  store %struct._GSList* %0, %struct._GSList** %l, align 8
  br label %for.cond

for.cond:                                         ; preds = %cond.end, %entry
  %1 = load %struct._GSList*, %struct._GSList** %l, align 8
  %tobool = icmp ne %struct._GSList* %1, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load %struct._GSList*, %struct._GSList** %l, align 8
  %data = getelementptr inbounds %struct._GSList, %struct._GSList* %2, i32 0, i32 0
  %3 = load i8*, i8** %data, align 8
  %4 = bitcast i8* %3 to %struct._GimpObject*
  store %struct._GimpObject* %4, %struct._GimpObject** %object, align 8
  %5 = load i8*, i8** %proc_name.addr, align 8
  %6 = load %struct._GimpObject*, %struct._GimpObject** %object, align 8
  %7 = bitcast %struct._GimpObject* %6 to i8*
  %call = call i8* @gimp_object_get_name(i8* %7)
  %call1 = call i32 @strcmp(i8* %5, i8* %call) #7
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %if.end, label %if.then

if.then:                                          ; preds = %for.body
  %8 = load %struct._GimpObject*, %struct._GimpObject** %object, align 8
  %9 = bitcast %struct._GimpObject* %8 to %struct._GTypeInstance*
  %call3 = call i64 @gimp_plug_in_procedure_get_type() #6
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %9, i64 %call3)
  %10 = bitcast %struct._GTypeInstance* %call4 to %struct._GimpPlugInProcedure*
  store %struct._GimpPlugInProcedure* %10, %struct._GimpPlugInProcedure** %retval
  br label %return

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %11 = load %struct._GSList*, %struct._GSList** %l, align 8
  %tobool5 = icmp ne %struct._GSList* %11, null
  br i1 %tobool5, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.inc
  %12 = load %struct._GSList*, %struct._GSList** %l, align 8
  %next = getelementptr inbounds %struct._GSList, %struct._GSList* %12, i32 0, i32 1
  %13 = load %struct._GSList*, %struct._GSList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.inc
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GSList* [ %13, %cond.true ], [ null, %cond.false ]
  store %struct._GSList* %cond, %struct._GSList** %l, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store %struct._GimpPlugInProcedure* null, %struct._GimpPlugInProcedure** %retval
  br label %return

return:                                           ; preds = %for.end, %if.then
  %14 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %retval
  ret %struct._GimpPlugInProcedure* %14
}

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #4

declare i8* @gimp_object_get_name(i8*) #1

; Function Attrs: nounwind uwtable
define i8* @gimp_plug_in_procedure_get_progname(%struct._GimpPlugInProcedure* %proc) #3 {
entry:
  %retval = alloca i8*, align 8
  %proc.addr = alloca %struct._GimpPlugInProcedure*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpPlugInProcedure* %proc, %struct._GimpPlugInProcedure** %proc.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %proc.addr, align 8
  %1 = bitcast %struct._GimpPlugInProcedure* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_plug_in_procedure_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__func__.gimp_plug_in_procedure_get_progname, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i32 0, i32 0))
  store i8* null, i8** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %proc.addr, align 8
  %14 = bitcast %struct._GimpPlugInProcedure* %13 to %struct._GTypeInstance*
  %g_class11 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %14, i32 0, i32 0
  %15 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class11, align 8
  %16 = bitcast %struct._GTypeClass* %15 to %struct._GimpPlugInProcedureClass*
  %get_progname = getelementptr inbounds %struct._GimpPlugInProcedureClass, %struct._GimpPlugInProcedureClass* %16, i32 0, i32 1
  %17 = load i8* (%struct._GimpPlugInProcedure*)*, i8* (%struct._GimpPlugInProcedure*)** %get_progname, align 8
  %18 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %proc.addr, align 8
  %call12 = call i8* %17(%struct._GimpPlugInProcedure* %18)
  store i8* %call12, i8** %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %19 = load i8*, i8** %retval
  ret i8* %19
}

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #4

; Function Attrs: nounwind uwtable
define void @gimp_plug_in_procedure_set_locale_domain(%struct._GimpPlugInProcedure* %proc, i8* %locale_domain) #3 {
entry:
  %proc.addr = alloca %struct._GimpPlugInProcedure*, align 8
  %locale_domain.addr = alloca i8*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpPlugInProcedure* %proc, %struct._GimpPlugInProcedure** %proc.addr, align 8
  store i8* %locale_domain, i8** %locale_domain.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %proc.addr, align 8
  %1 = bitcast %struct._GimpPlugInProcedure* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_plug_in_procedure_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @__func__.gimp_plug_in_procedure_set_locale_domain, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load i8*, i8** %locale_domain.addr, align 8
  %tobool11 = icmp ne i8* %13, null
  br i1 %tobool11, label %cond.true, label %cond.false

cond.true:                                        ; preds = %do.end
  %14 = load i8*, i8** %locale_domain.addr, align 8
  %call12 = call i32 @g_quark_from_string(i8* %14)
  br label %cond.end

cond.false:                                       ; preds = %do.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call12, %cond.true ], [ 0, %cond.false ]
  %15 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %proc.addr, align 8
  %locale_domain13 = getelementptr inbounds %struct._GimpPlugInProcedure, %struct._GimpPlugInProcedure* %15, i32 0, i32 2
  store i32 %cond, i32* %locale_domain13, align 4
  br label %return

return:                                           ; preds = %cond.end, %if.else.9
  ret void
}

declare i32 @g_quark_from_string(i8*) #1

; Function Attrs: nounwind uwtable
define i8* @gimp_plug_in_procedure_get_locale_domain(%struct._GimpPlugInProcedure* %proc) #3 {
entry:
  %retval = alloca i8*, align 8
  %proc.addr = alloca %struct._GimpPlugInProcedure*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpPlugInProcedure* %proc, %struct._GimpPlugInProcedure** %proc.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %proc.addr, align 8
  %1 = bitcast %struct._GimpPlugInProcedure* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_plug_in_procedure_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @__func__.gimp_plug_in_procedure_get_locale_domain, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i32 0, i32 0))
  store i8* null, i8** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %proc.addr, align 8
  %locale_domain = getelementptr inbounds %struct._GimpPlugInProcedure, %struct._GimpPlugInProcedure* %13, i32 0, i32 2
  %14 = load i32, i32* %locale_domain, align 4
  %call11 = call i8* @g_quark_to_string(i32 %14) #6
  store i8* %call11, i8** %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %15 = load i8*, i8** %retval
  ret i8* %15
}

; Function Attrs: nounwind readnone
declare i8* @g_quark_to_string(i32) #2

; Function Attrs: nounwind uwtable
define void @gimp_plug_in_procedure_set_help_domain(%struct._GimpPlugInProcedure* %proc, i8* %help_domain) #3 {
entry:
  %proc.addr = alloca %struct._GimpPlugInProcedure*, align 8
  %help_domain.addr = alloca i8*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpPlugInProcedure* %proc, %struct._GimpPlugInProcedure** %proc.addr, align 8
  store i8* %help_domain, i8** %help_domain.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %proc.addr, align 8
  %1 = bitcast %struct._GimpPlugInProcedure* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_plug_in_procedure_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @__func__.gimp_plug_in_procedure_set_help_domain, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load i8*, i8** %help_domain.addr, align 8
  %tobool11 = icmp ne i8* %13, null
  br i1 %tobool11, label %cond.true, label %cond.false

cond.true:                                        ; preds = %do.end
  %14 = load i8*, i8** %help_domain.addr, align 8
  %call12 = call i32 @g_quark_from_string(i8* %14)
  br label %cond.end

cond.false:                                       ; preds = %do.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call12, %cond.true ], [ 0, %cond.false ]
  %15 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %proc.addr, align 8
  %help_domain13 = getelementptr inbounds %struct._GimpPlugInProcedure, %struct._GimpPlugInProcedure* %15, i32 0, i32 3
  store i32 %cond, i32* %help_domain13, align 4
  br label %return

return:                                           ; preds = %cond.end, %if.else.9
  ret void
}

; Function Attrs: nounwind uwtable
define i8* @gimp_plug_in_procedure_get_help_domain(%struct._GimpPlugInProcedure* %proc) #3 {
entry:
  %retval = alloca i8*, align 8
  %proc.addr = alloca %struct._GimpPlugInProcedure*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpPlugInProcedure* %proc, %struct._GimpPlugInProcedure** %proc.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %proc.addr, align 8
  %1 = bitcast %struct._GimpPlugInProcedure* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_plug_in_procedure_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @__func__.gimp_plug_in_procedure_get_help_domain, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i32 0, i32 0))
  store i8* null, i8** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %proc.addr, align 8
  %help_domain = getelementptr inbounds %struct._GimpPlugInProcedure, %struct._GimpPlugInProcedure* %13, i32 0, i32 3
  %14 = load i32, i32* %help_domain, align 4
  %call11 = call i8* @g_quark_to_string(i32 %14) #6
  store i8* %call11, i8** %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %15 = load i8*, i8** %retval
  ret i8* %15
}

; Function Attrs: nounwind uwtable
define i32 @gimp_plug_in_procedure_add_menu_path(%struct._GimpPlugInProcedure* %proc, i8* %menu_path, %struct._GError** %error) #3 {
entry:
  %retval = alloca i32, align 4
  %proc.addr = alloca %struct._GimpPlugInProcedure*, align 8
  %menu_path.addr = alloca i8*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %procedure = alloca %struct._GimpProcedure*, align 8
  %basename = alloca i8*, align 8
  %required = alloca i8*, align 8
  %p = alloca i8*, align 8
  %mapped_path = alloca i8*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst51 = alloca %struct._GTypeInstance*, align 8
  %__t53 = alloca i64, align 8
  %__r56 = alloca i32, align 4
  %tmp72 = alloca i32, align 4
  %__inst85 = alloca %struct._GTypeInstance*, align 8
  %__t89 = alloca i64, align 8
  %__r92 = alloca i32, align 4
  %tmp108 = alloca i32, align 4
  %__inst112 = alloca %struct._GTypeInstance*, align 8
  %__t116 = alloca i64, align 8
  %__r119 = alloca i32, align 4
  %tmp135 = alloca i32, align 4
  %__inst164 = alloca %struct._GTypeInstance*, align 8
  %__t168 = alloca i64, align 8
  %__r171 = alloca i32, align 4
  %tmp187 = alloca i32, align 4
  %__inst191 = alloca %struct._GTypeInstance*, align 8
  %__t195 = alloca i64, align 8
  %__r198 = alloca i32, align 4
  %tmp214 = alloca i32, align 4
  %__inst243 = alloca %struct._GTypeInstance*, align 8
  %__t247 = alloca i64, align 8
  %__r250 = alloca i32, align 4
  %tmp266 = alloca i32, align 4
  %__inst270 = alloca %struct._GTypeInstance*, align 8
  %__t274 = alloca i64, align 8
  %__r277 = alloca i32, align 4
  %tmp293 = alloca i32, align 4
  %__inst297 = alloca %struct._GTypeInstance*, align 8
  %__t301 = alloca i64, align 8
  %__r304 = alloca i32, align 4
  %tmp320 = alloca i32, align 4
  %__inst333 = alloca %struct._GTypeInstance*, align 8
  %__t337 = alloca i64, align 8
  %__r340 = alloca i32, align 4
  %tmp356 = alloca i32, align 4
  %__inst360 = alloca %struct._GTypeInstance*, align 8
  %__t364 = alloca i64, align 8
  %__r367 = alloca i32, align 4
  %tmp383 = alloca i32, align 4
  %__inst396 = alloca %struct._GTypeInstance*, align 8
  %__t400 = alloca i64, align 8
  %__r403 = alloca i32, align 4
  %tmp419 = alloca i32, align 4
  %__inst423 = alloca %struct._GTypeInstance*, align 8
  %__t427 = alloca i64, align 8
  %__r430 = alloca i32, align 4
  %tmp446 = alloca i32, align 4
  %__inst450 = alloca %struct._GTypeInstance*, align 8
  %__t454 = alloca i64, align 8
  %__r457 = alloca i32, align 4
  %tmp473 = alloca i32, align 4
  %__inst481 = alloca %struct._GTypeInstance*, align 8
  %__t484 = alloca i64, align 8
  %__r487 = alloca i32, align 4
  %tmp503 = alloca i32, align 4
  %__inst516 = alloca %struct._GTypeInstance*, align 8
  %__t520 = alloca i64, align 8
  %__r523 = alloca i32, align 4
  %tmp539 = alloca i32, align 4
  %__inst543 = alloca %struct._GTypeInstance*, align 8
  %__t547 = alloca i64, align 8
  %__r550 = alloca i32, align 4
  %tmp566 = alloca i32, align 4
  %__inst570 = alloca %struct._GTypeInstance*, align 8
  %__t574 = alloca i64, align 8
  %__r577 = alloca i32, align 4
  %tmp593 = alloca i32, align 4
  %__inst597 = alloca %struct._GTypeInstance*, align 8
  %__t601 = alloca i64, align 8
  %__r604 = alloca i32, align 4
  %tmp620 = alloca i32, align 4
  %__inst624 = alloca %struct._GTypeInstance*, align 8
  %__t628 = alloca i64, align 8
  %__r631 = alloca i32, align 4
  %tmp647 = alloca i32, align 4
  %__inst681 = alloca %struct._GTypeInstance*, align 8
  %__t685 = alloca i64, align 8
  %__r688 = alloca i32, align 4
  %tmp704 = alloca i32, align 4
  %prefix = alloca i8*, align 8
  store %struct._GimpPlugInProcedure* %proc, %struct._GimpPlugInProcedure** %proc.addr, align 8
  store i8* %menu_path, i8** %menu_path.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store i8* null, i8** %basename, align 8
  store i8* null, i8** %required, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %proc.addr, align 8
  %1 = bitcast %struct._GimpPlugInProcedure* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_plug_in_procedure_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__func__.gimp_plug_in_procedure_add_menu_path, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load i8*, i8** %menu_path.addr, align 8
  %cmp12 = icmp ne i8* %13, null
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %do.body.11
  br label %if.end.15

if.else.14:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__func__.gimp_plug_in_procedure_add_menu_path, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i32 0, i32 0))
  store i32 0, i32* %retval
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__func__.gimp_plug_in_procedure_add_menu_path, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.22:                                        ; preds = %if.then.20
  br label %do.end.23

do.end.23:                                        ; preds = %if.end.22
  %17 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %proc.addr, align 8
  %18 = bitcast %struct._GimpPlugInProcedure* %17 to %struct._GTypeInstance*
  %call24 = call i64 @gimp_procedure_get_type() #6
  %call25 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %18, i64 %call24)
  %19 = bitcast %struct._GTypeInstance* %call25 to %struct._GimpProcedure*
  store %struct._GimpProcedure* %19, %struct._GimpProcedure** %procedure, align 8
  %20 = load i8*, i8** %menu_path.addr, align 8
  %call26 = call i8* @strchr(i8* %20, i32 62) #7
  store i8* %call26, i8** %p, align 8
  %21 = load i8*, i8** %p, align 8
  %cmp27 = icmp eq i8* %21, null
  br i1 %cmp27, label %if.then.34, label %lor.lhs.false.28

lor.lhs.false.28:                                 ; preds = %do.end.23
  %22 = load i8*, i8** %p, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %22, i32 1
  store i8* %incdec.ptr, i8** %p, align 8
  %23 = load i8, i8* %incdec.ptr, align 1
  %conv = sext i8 %23 to i32
  %tobool29 = icmp ne i32 %conv, 0
  br i1 %tobool29, label %land.lhs.true.30, label %if.end.40

land.lhs.true.30:                                 ; preds = %lor.lhs.false.28
  %24 = load i8*, i8** %p, align 8
  %25 = load i8, i8* %24, align 1
  %conv31 = sext i8 %25 to i32
  %cmp32 = icmp ne i32 %conv31, 47
  br i1 %cmp32, label %if.then.34, label %if.end.40

if.then.34:                                       ; preds = %land.lhs.true.30, %do.end.23
  %26 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %proc.addr, align 8
  %prog = getelementptr inbounds %struct._GimpPlugInProcedure, %struct._GimpPlugInProcedure* %26, i32 0, i32 1
  %27 = load i8*, i8** %prog, align 8
  %call35 = call noalias i8* @g_filename_display_basename(i8* %27)
  store i8* %call35, i8** %basename, align 8
  %28 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call36 = call i32 @gimp_plug_in_error_quark() #6
  %29 = load i8*, i8** %basename, align 8
  %30 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %proc.addr, align 8
  %prog37 = getelementptr inbounds %struct._GimpPlugInProcedure, %struct._GimpPlugInProcedure* %30, i32 0, i32 1
  %31 = load i8*, i8** %prog37, align 8
  %call38 = call i8* @gimp_filename_to_utf8(i8* %31)
  %32 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %proc.addr, align 8
  %33 = bitcast %struct._GimpPlugInProcedure* %32 to i8*
  %call39 = call i8* @gimp_object_get_name(i8* %33)
  %34 = load i8*, i8** %menu_path.addr, align 8
  call void (%struct._GError**, i32, i32, i8*, ...) @g_set_error(%struct._GError** %28, i32 %call36, i32 0, i8* getelementptr inbounds ([164 x i8], [164 x i8]* @.str.7, i32 0, i32 0), i8* %29, i8* %call38, i8* %call39, i8* %34)
  br label %failure

if.end.40:                                        ; preds = %land.lhs.true.30, %lor.lhs.false.28
  %35 = load i8*, i8** %menu_path.addr, align 8
  %call41 = call i32 @g_str_has_prefix(i8* %35, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i32 0, i32 0))
  %tobool42 = icmp ne i32 %call41, 0
  br i1 %tobool42, label %if.then.46, label %lor.lhs.false.43

lor.lhs.false.43:                                 ; preds = %if.end.40
  %36 = load i8*, i8** %menu_path.addr, align 8
  %call44 = call i32 @g_str_has_prefix(i8* %36, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i32 0, i32 0))
  %tobool45 = icmp ne i32 %call44, 0
  br i1 %tobool45, label %if.then.46, label %if.else.76

if.then.46:                                       ; preds = %lor.lhs.false.43, %if.end.40
  %37 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %num_args = getelementptr inbounds %struct._GimpProcedure, %struct._GimpProcedure* %37, i32 0, i32 10
  %38 = load i32, i32* %num_args, align 4
  %cmp47 = icmp slt i32 %38, 1
  br i1 %cmp47, label %if.then.74, label %lor.lhs.false.49

lor.lhs.false.49:                                 ; preds = %if.then.46
  %39 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %args = getelementptr inbounds %struct._GimpProcedure, %struct._GimpProcedure* %39, i32 0, i32 11
  %40 = load %struct._GParamSpec**, %struct._GParamSpec*** %args, align 8
  %arrayidx = getelementptr inbounds %struct._GParamSpec*, %struct._GParamSpec** %40, i64 0
  %41 = load %struct._GParamSpec*, %struct._GParamSpec** %arrayidx, align 8
  %42 = bitcast %struct._GParamSpec* %41 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %42, %struct._GTypeInstance** %__inst51, align 8
  %call54 = call i64 @gimp_param_int32_get_type() #6
  store i64 %call54, i64* %__t53, align 8
  %43 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst51, align 8
  %tobool57 = icmp ne %struct._GTypeInstance* %43, null
  br i1 %tobool57, label %if.else.59, label %if.then.58

if.then.58:                                       ; preds = %lor.lhs.false.49
  store i32 0, i32* %__r56, align 4
  br label %if.end.71

if.else.59:                                       ; preds = %lor.lhs.false.49
  %44 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst51, align 8
  %g_class60 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %44, i32 0, i32 0
  %45 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class60, align 8
  %tobool61 = icmp ne %struct._GTypeClass* %45, null
  br i1 %tobool61, label %land.lhs.true.62, label %if.else.68

land.lhs.true.62:                                 ; preds = %if.else.59
  %46 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst51, align 8
  %g_class63 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %46, i32 0, i32 0
  %47 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class63, align 8
  %g_type64 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %47, i32 0, i32 0
  %48 = load i64, i64* %g_type64, align 8
  %49 = load i64, i64* %__t53, align 8
  %cmp65 = icmp eq i64 %48, %49
  br i1 %cmp65, label %if.then.67, label %if.else.68

if.then.67:                                       ; preds = %land.lhs.true.62
  store i32 1, i32* %__r56, align 4
  br label %if.end.70

if.else.68:                                       ; preds = %land.lhs.true.62, %if.else.59
  %50 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst51, align 8
  %51 = load i64, i64* %__t53, align 8
  %call69 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %50, i64 %51) #7
  store i32 %call69, i32* %__r56, align 4
  br label %if.end.70

if.end.70:                                        ; preds = %if.else.68, %if.then.67
  br label %if.end.71

if.end.71:                                        ; preds = %if.end.70, %if.then.58
  %52 = load i32, i32* %__r56, align 4
  store i32 %52, i32* %tmp72
  %53 = load i32, i32* %tmp72
  %tobool73 = icmp ne i32 %53, 0
  br i1 %tobool73, label %if.end.75, label %if.then.74

if.then.74:                                       ; preds = %if.end.71, %if.then.46
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i32 0, i32 0), i8** %required, align 8
  br label %failure

if.end.75:                                        ; preds = %if.end.71
  br label %if.end.722

if.else.76:                                       ; preds = %lor.lhs.false.43
  %54 = load i8*, i8** %menu_path.addr, align 8
  %call77 = call i32 @g_str_has_prefix(i8* %54, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i32 0, i32 0))
  %tobool78 = icmp ne i32 %call77, 0
  br i1 %tobool78, label %if.then.79, label %if.else.155

if.then.79:                                       ; preds = %if.else.76
  %55 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %num_args80 = getelementptr inbounds %struct._GimpProcedure, %struct._GimpProcedure* %55, i32 0, i32 10
  %56 = load i32, i32* %num_args80, align 4
  %cmp81 = icmp slt i32 %56, 3
  br i1 %cmp81, label %if.then.153, label %lor.lhs.false.83

lor.lhs.false.83:                                 ; preds = %if.then.79
  %57 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %args86 = getelementptr inbounds %struct._GimpProcedure, %struct._GimpProcedure* %57, i32 0, i32 11
  %58 = load %struct._GParamSpec**, %struct._GParamSpec*** %args86, align 8
  %arrayidx87 = getelementptr inbounds %struct._GParamSpec*, %struct._GParamSpec** %58, i64 0
  %59 = load %struct._GParamSpec*, %struct._GParamSpec** %arrayidx87, align 8
  %60 = bitcast %struct._GParamSpec* %59 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %60, %struct._GTypeInstance** %__inst85, align 8
  %call90 = call i64 @gimp_param_int32_get_type() #6
  store i64 %call90, i64* %__t89, align 8
  %61 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst85, align 8
  %tobool93 = icmp ne %struct._GTypeInstance* %61, null
  br i1 %tobool93, label %if.else.95, label %if.then.94

if.then.94:                                       ; preds = %lor.lhs.false.83
  store i32 0, i32* %__r92, align 4
  br label %if.end.107

if.else.95:                                       ; preds = %lor.lhs.false.83
  %62 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst85, align 8
  %g_class96 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %62, i32 0, i32 0
  %63 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class96, align 8
  %tobool97 = icmp ne %struct._GTypeClass* %63, null
  br i1 %tobool97, label %land.lhs.true.98, label %if.else.104

land.lhs.true.98:                                 ; preds = %if.else.95
  %64 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst85, align 8
  %g_class99 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %64, i32 0, i32 0
  %65 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class99, align 8
  %g_type100 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %65, i32 0, i32 0
  %66 = load i64, i64* %g_type100, align 8
  %67 = load i64, i64* %__t89, align 8
  %cmp101 = icmp eq i64 %66, %67
  br i1 %cmp101, label %if.then.103, label %if.else.104

if.then.103:                                      ; preds = %land.lhs.true.98
  store i32 1, i32* %__r92, align 4
  br label %if.end.106

if.else.104:                                      ; preds = %land.lhs.true.98, %if.else.95
  %68 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst85, align 8
  %69 = load i64, i64* %__t89, align 8
  %call105 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %68, i64 %69) #7
  store i32 %call105, i32* %__r92, align 4
  br label %if.end.106

if.end.106:                                       ; preds = %if.else.104, %if.then.103
  br label %if.end.107

if.end.107:                                       ; preds = %if.end.106, %if.then.94
  %70 = load i32, i32* %__r92, align 4
  store i32 %70, i32* %tmp108
  %71 = load i32, i32* %tmp108
  %tobool109 = icmp ne i32 %71, 0
  br i1 %tobool109, label %lor.lhs.false.110, label %if.then.153

lor.lhs.false.110:                                ; preds = %if.end.107
  %72 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %args113 = getelementptr inbounds %struct._GimpProcedure, %struct._GimpProcedure* %72, i32 0, i32 11
  %73 = load %struct._GParamSpec**, %struct._GParamSpec*** %args113, align 8
  %arrayidx114 = getelementptr inbounds %struct._GParamSpec*, %struct._GParamSpec** %73, i64 1
  %74 = load %struct._GParamSpec*, %struct._GParamSpec** %arrayidx114, align 8
  %75 = bitcast %struct._GParamSpec* %74 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %75, %struct._GTypeInstance** %__inst112, align 8
  %call117 = call i64 @gimp_param_image_id_get_type() #6
  store i64 %call117, i64* %__t116, align 8
  %76 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst112, align 8
  %tobool120 = icmp ne %struct._GTypeInstance* %76, null
  br i1 %tobool120, label %if.else.122, label %if.then.121

if.then.121:                                      ; preds = %lor.lhs.false.110
  store i32 0, i32* %__r119, align 4
  br label %if.end.134

if.else.122:                                      ; preds = %lor.lhs.false.110
  %77 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst112, align 8
  %g_class123 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %77, i32 0, i32 0
  %78 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class123, align 8
  %tobool124 = icmp ne %struct._GTypeClass* %78, null
  br i1 %tobool124, label %land.lhs.true.125, label %if.else.131

land.lhs.true.125:                                ; preds = %if.else.122
  %79 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst112, align 8
  %g_class126 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %79, i32 0, i32 0
  %80 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class126, align 8
  %g_type127 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %80, i32 0, i32 0
  %81 = load i64, i64* %g_type127, align 8
  %82 = load i64, i64* %__t116, align 8
  %cmp128 = icmp eq i64 %81, %82
  br i1 %cmp128, label %if.then.130, label %if.else.131

if.then.130:                                      ; preds = %land.lhs.true.125
  store i32 1, i32* %__r119, align 4
  br label %if.end.133

if.else.131:                                      ; preds = %land.lhs.true.125, %if.else.122
  %83 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst112, align 8
  %84 = load i64, i64* %__t116, align 8
  %call132 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %83, i64 %84) #7
  store i32 %call132, i32* %__r119, align 4
  br label %if.end.133

if.end.133:                                       ; preds = %if.else.131, %if.then.130
  br label %if.end.134

if.end.134:                                       ; preds = %if.end.133, %if.then.121
  %85 = load i32, i32* %__r119, align 4
  store i32 %85, i32* %tmp135
  %86 = load i32, i32* %tmp135
  %tobool136 = icmp ne i32 %86, 0
  br i1 %tobool136, label %lor.lhs.false.137, label %if.then.153

lor.lhs.false.137:                                ; preds = %if.end.134
  %87 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %args138 = getelementptr inbounds %struct._GimpProcedure, %struct._GimpProcedure* %87, i32 0, i32 11
  %88 = load %struct._GParamSpec**, %struct._GParamSpec*** %args138, align 8
  %arrayidx139 = getelementptr inbounds %struct._GParamSpec*, %struct._GParamSpec** %88, i64 2
  %89 = load %struct._GParamSpec*, %struct._GParamSpec** %arrayidx139, align 8
  %90 = bitcast %struct._GParamSpec* %89 to %struct._GTypeInstance*
  %g_class140 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %90, i32 0, i32 0
  %91 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class140, align 8
  %g_type141 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %91, i32 0, i32 0
  %92 = load i64, i64* %g_type141, align 8
  %call142 = call i64 @gimp_param_layer_id_get_type() #6
  %cmp143 = icmp eq i64 %92, %call142
  br i1 %cmp143, label %if.end.154, label %lor.lhs.false.145

lor.lhs.false.145:                                ; preds = %lor.lhs.false.137
  %93 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %args146 = getelementptr inbounds %struct._GimpProcedure, %struct._GimpProcedure* %93, i32 0, i32 11
  %94 = load %struct._GParamSpec**, %struct._GParamSpec*** %args146, align 8
  %arrayidx147 = getelementptr inbounds %struct._GParamSpec*, %struct._GParamSpec** %94, i64 2
  %95 = load %struct._GParamSpec*, %struct._GParamSpec** %arrayidx147, align 8
  %96 = bitcast %struct._GParamSpec* %95 to %struct._GTypeInstance*
  %g_class148 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %96, i32 0, i32 0
  %97 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class148, align 8
  %g_type149 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %97, i32 0, i32 0
  %98 = load i64, i64* %g_type149, align 8
  %call150 = call i64 @gimp_param_drawable_id_get_type() #6
  %cmp151 = icmp eq i64 %98, %call150
  br i1 %cmp151, label %if.end.154, label %if.then.153

if.then.153:                                      ; preds = %lor.lhs.false.145, %if.end.134, %if.end.107, %if.then.79
  store i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.12, i32 0, i32 0), i8** %required, align 8
  br label %failure

if.end.154:                                       ; preds = %lor.lhs.false.145, %lor.lhs.false.137
  br label %if.end.721

if.else.155:                                      ; preds = %if.else.76
  %99 = load i8*, i8** %menu_path.addr, align 8
  %call156 = call i32 @g_str_has_prefix(i8* %99, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i32 0, i32 0))
  %tobool157 = icmp ne i32 %call156, 0
  br i1 %tobool157, label %if.then.158, label %if.else.234

if.then.158:                                      ; preds = %if.else.155
  %100 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %num_args159 = getelementptr inbounds %struct._GimpProcedure, %struct._GimpProcedure* %100, i32 0, i32 10
  %101 = load i32, i32* %num_args159, align 4
  %cmp160 = icmp slt i32 %101, 3
  br i1 %cmp160, label %if.then.232, label %lor.lhs.false.162

lor.lhs.false.162:                                ; preds = %if.then.158
  %102 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %args165 = getelementptr inbounds %struct._GimpProcedure, %struct._GimpProcedure* %102, i32 0, i32 11
  %103 = load %struct._GParamSpec**, %struct._GParamSpec*** %args165, align 8
  %arrayidx166 = getelementptr inbounds %struct._GParamSpec*, %struct._GParamSpec** %103, i64 0
  %104 = load %struct._GParamSpec*, %struct._GParamSpec** %arrayidx166, align 8
  %105 = bitcast %struct._GParamSpec* %104 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %105, %struct._GTypeInstance** %__inst164, align 8
  %call169 = call i64 @gimp_param_int32_get_type() #6
  store i64 %call169, i64* %__t168, align 8
  %106 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst164, align 8
  %tobool172 = icmp ne %struct._GTypeInstance* %106, null
  br i1 %tobool172, label %if.else.174, label %if.then.173

if.then.173:                                      ; preds = %lor.lhs.false.162
  store i32 0, i32* %__r171, align 4
  br label %if.end.186

if.else.174:                                      ; preds = %lor.lhs.false.162
  %107 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst164, align 8
  %g_class175 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %107, i32 0, i32 0
  %108 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class175, align 8
  %tobool176 = icmp ne %struct._GTypeClass* %108, null
  br i1 %tobool176, label %land.lhs.true.177, label %if.else.183

land.lhs.true.177:                                ; preds = %if.else.174
  %109 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst164, align 8
  %g_class178 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %109, i32 0, i32 0
  %110 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class178, align 8
  %g_type179 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %110, i32 0, i32 0
  %111 = load i64, i64* %g_type179, align 8
  %112 = load i64, i64* %__t168, align 8
  %cmp180 = icmp eq i64 %111, %112
  br i1 %cmp180, label %if.then.182, label %if.else.183

if.then.182:                                      ; preds = %land.lhs.true.177
  store i32 1, i32* %__r171, align 4
  br label %if.end.185

if.else.183:                                      ; preds = %land.lhs.true.177, %if.else.174
  %113 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst164, align 8
  %114 = load i64, i64* %__t168, align 8
  %call184 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %113, i64 %114) #7
  store i32 %call184, i32* %__r171, align 4
  br label %if.end.185

if.end.185:                                       ; preds = %if.else.183, %if.then.182
  br label %if.end.186

if.end.186:                                       ; preds = %if.end.185, %if.then.173
  %115 = load i32, i32* %__r171, align 4
  store i32 %115, i32* %tmp187
  %116 = load i32, i32* %tmp187
  %tobool188 = icmp ne i32 %116, 0
  br i1 %tobool188, label %lor.lhs.false.189, label %if.then.232

lor.lhs.false.189:                                ; preds = %if.end.186
  %117 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %args192 = getelementptr inbounds %struct._GimpProcedure, %struct._GimpProcedure* %117, i32 0, i32 11
  %118 = load %struct._GParamSpec**, %struct._GParamSpec*** %args192, align 8
  %arrayidx193 = getelementptr inbounds %struct._GParamSpec*, %struct._GParamSpec** %118, i64 1
  %119 = load %struct._GParamSpec*, %struct._GParamSpec** %arrayidx193, align 8
  %120 = bitcast %struct._GParamSpec* %119 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %120, %struct._GTypeInstance** %__inst191, align 8
  %call196 = call i64 @gimp_param_image_id_get_type() #6
  store i64 %call196, i64* %__t195, align 8
  %121 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst191, align 8
  %tobool199 = icmp ne %struct._GTypeInstance* %121, null
  br i1 %tobool199, label %if.else.201, label %if.then.200

if.then.200:                                      ; preds = %lor.lhs.false.189
  store i32 0, i32* %__r198, align 4
  br label %if.end.213

if.else.201:                                      ; preds = %lor.lhs.false.189
  %122 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst191, align 8
  %g_class202 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %122, i32 0, i32 0
  %123 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class202, align 8
  %tobool203 = icmp ne %struct._GTypeClass* %123, null
  br i1 %tobool203, label %land.lhs.true.204, label %if.else.210

land.lhs.true.204:                                ; preds = %if.else.201
  %124 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst191, align 8
  %g_class205 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %124, i32 0, i32 0
  %125 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class205, align 8
  %g_type206 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %125, i32 0, i32 0
  %126 = load i64, i64* %g_type206, align 8
  %127 = load i64, i64* %__t195, align 8
  %cmp207 = icmp eq i64 %126, %127
  br i1 %cmp207, label %if.then.209, label %if.else.210

if.then.209:                                      ; preds = %land.lhs.true.204
  store i32 1, i32* %__r198, align 4
  br label %if.end.212

if.else.210:                                      ; preds = %land.lhs.true.204, %if.else.201
  %128 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst191, align 8
  %129 = load i64, i64* %__t195, align 8
  %call211 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %128, i64 %129) #7
  store i32 %call211, i32* %__r198, align 4
  br label %if.end.212

if.end.212:                                       ; preds = %if.else.210, %if.then.209
  br label %if.end.213

if.end.213:                                       ; preds = %if.end.212, %if.then.200
  %130 = load i32, i32* %__r198, align 4
  store i32 %130, i32* %tmp214
  %131 = load i32, i32* %tmp214
  %tobool215 = icmp ne i32 %131, 0
  br i1 %tobool215, label %lor.lhs.false.216, label %if.then.232

lor.lhs.false.216:                                ; preds = %if.end.213
  %132 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %args217 = getelementptr inbounds %struct._GimpProcedure, %struct._GimpProcedure* %132, i32 0, i32 11
  %133 = load %struct._GParamSpec**, %struct._GParamSpec*** %args217, align 8
  %arrayidx218 = getelementptr inbounds %struct._GParamSpec*, %struct._GParamSpec** %133, i64 2
  %134 = load %struct._GParamSpec*, %struct._GParamSpec** %arrayidx218, align 8
  %135 = bitcast %struct._GParamSpec* %134 to %struct._GTypeInstance*
  %g_class219 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %135, i32 0, i32 0
  %136 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class219, align 8
  %g_type220 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %136, i32 0, i32 0
  %137 = load i64, i64* %g_type220, align 8
  %call221 = call i64 @gimp_param_channel_id_get_type() #6
  %cmp222 = icmp eq i64 %137, %call221
  br i1 %cmp222, label %if.end.233, label %lor.lhs.false.224

lor.lhs.false.224:                                ; preds = %lor.lhs.false.216
  %138 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %args225 = getelementptr inbounds %struct._GimpProcedure, %struct._GimpProcedure* %138, i32 0, i32 11
  %139 = load %struct._GParamSpec**, %struct._GParamSpec*** %args225, align 8
  %arrayidx226 = getelementptr inbounds %struct._GParamSpec*, %struct._GParamSpec** %139, i64 2
  %140 = load %struct._GParamSpec*, %struct._GParamSpec** %arrayidx226, align 8
  %141 = bitcast %struct._GParamSpec* %140 to %struct._GTypeInstance*
  %g_class227 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %141, i32 0, i32 0
  %142 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class227, align 8
  %g_type228 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %142, i32 0, i32 0
  %143 = load i64, i64* %g_type228, align 8
  %call229 = call i64 @gimp_param_drawable_id_get_type() #6
  %cmp230 = icmp eq i64 %143, %call229
  br i1 %cmp230, label %if.end.233, label %if.then.232

if.then.232:                                      ; preds = %lor.lhs.false.224, %if.end.213, %if.end.186, %if.then.158
  store i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.14, i32 0, i32 0), i8** %required, align 8
  br label %failure

if.end.233:                                       ; preds = %lor.lhs.false.224, %lor.lhs.false.216
  br label %if.end.720

if.else.234:                                      ; preds = %if.else.155
  %144 = load i8*, i8** %menu_path.addr, align 8
  %call235 = call i32 @g_str_has_prefix(i8* %144, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.15, i32 0, i32 0))
  %tobool236 = icmp ne i32 %call235, 0
  br i1 %tobool236, label %if.then.237, label %if.else.324

if.then.237:                                      ; preds = %if.else.234
  %145 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %num_args238 = getelementptr inbounds %struct._GimpProcedure, %struct._GimpProcedure* %145, i32 0, i32 10
  %146 = load i32, i32* %num_args238, align 4
  %cmp239 = icmp slt i32 %146, 3
  br i1 %cmp239, label %if.then.322, label %lor.lhs.false.241

lor.lhs.false.241:                                ; preds = %if.then.237
  %147 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %args244 = getelementptr inbounds %struct._GimpProcedure, %struct._GimpProcedure* %147, i32 0, i32 11
  %148 = load %struct._GParamSpec**, %struct._GParamSpec*** %args244, align 8
  %arrayidx245 = getelementptr inbounds %struct._GParamSpec*, %struct._GParamSpec** %148, i64 0
  %149 = load %struct._GParamSpec*, %struct._GParamSpec** %arrayidx245, align 8
  %150 = bitcast %struct._GParamSpec* %149 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %150, %struct._GTypeInstance** %__inst243, align 8
  %call248 = call i64 @gimp_param_int32_get_type() #6
  store i64 %call248, i64* %__t247, align 8
  %151 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst243, align 8
  %tobool251 = icmp ne %struct._GTypeInstance* %151, null
  br i1 %tobool251, label %if.else.253, label %if.then.252

if.then.252:                                      ; preds = %lor.lhs.false.241
  store i32 0, i32* %__r250, align 4
  br label %if.end.265

if.else.253:                                      ; preds = %lor.lhs.false.241
  %152 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst243, align 8
  %g_class254 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %152, i32 0, i32 0
  %153 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class254, align 8
  %tobool255 = icmp ne %struct._GTypeClass* %153, null
  br i1 %tobool255, label %land.lhs.true.256, label %if.else.262

land.lhs.true.256:                                ; preds = %if.else.253
  %154 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst243, align 8
  %g_class257 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %154, i32 0, i32 0
  %155 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class257, align 8
  %g_type258 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %155, i32 0, i32 0
  %156 = load i64, i64* %g_type258, align 8
  %157 = load i64, i64* %__t247, align 8
  %cmp259 = icmp eq i64 %156, %157
  br i1 %cmp259, label %if.then.261, label %if.else.262

if.then.261:                                      ; preds = %land.lhs.true.256
  store i32 1, i32* %__r250, align 4
  br label %if.end.264

if.else.262:                                      ; preds = %land.lhs.true.256, %if.else.253
  %158 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst243, align 8
  %159 = load i64, i64* %__t247, align 8
  %call263 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %158, i64 %159) #7
  store i32 %call263, i32* %__r250, align 4
  br label %if.end.264

if.end.264:                                       ; preds = %if.else.262, %if.then.261
  br label %if.end.265

if.end.265:                                       ; preds = %if.end.264, %if.then.252
  %160 = load i32, i32* %__r250, align 4
  store i32 %160, i32* %tmp266
  %161 = load i32, i32* %tmp266
  %tobool267 = icmp ne i32 %161, 0
  br i1 %tobool267, label %lor.lhs.false.268, label %if.then.322

lor.lhs.false.268:                                ; preds = %if.end.265
  %162 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %args271 = getelementptr inbounds %struct._GimpProcedure, %struct._GimpProcedure* %162, i32 0, i32 11
  %163 = load %struct._GParamSpec**, %struct._GParamSpec*** %args271, align 8
  %arrayidx272 = getelementptr inbounds %struct._GParamSpec*, %struct._GParamSpec** %163, i64 1
  %164 = load %struct._GParamSpec*, %struct._GParamSpec** %arrayidx272, align 8
  %165 = bitcast %struct._GParamSpec* %164 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %165, %struct._GTypeInstance** %__inst270, align 8
  %call275 = call i64 @gimp_param_image_id_get_type() #6
  store i64 %call275, i64* %__t274, align 8
  %166 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst270, align 8
  %tobool278 = icmp ne %struct._GTypeInstance* %166, null
  br i1 %tobool278, label %if.else.280, label %if.then.279

if.then.279:                                      ; preds = %lor.lhs.false.268
  store i32 0, i32* %__r277, align 4
  br label %if.end.292

if.else.280:                                      ; preds = %lor.lhs.false.268
  %167 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst270, align 8
  %g_class281 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %167, i32 0, i32 0
  %168 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class281, align 8
  %tobool282 = icmp ne %struct._GTypeClass* %168, null
  br i1 %tobool282, label %land.lhs.true.283, label %if.else.289

land.lhs.true.283:                                ; preds = %if.else.280
  %169 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst270, align 8
  %g_class284 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %169, i32 0, i32 0
  %170 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class284, align 8
  %g_type285 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %170, i32 0, i32 0
  %171 = load i64, i64* %g_type285, align 8
  %172 = load i64, i64* %__t274, align 8
  %cmp286 = icmp eq i64 %171, %172
  br i1 %cmp286, label %if.then.288, label %if.else.289

if.then.288:                                      ; preds = %land.lhs.true.283
  store i32 1, i32* %__r277, align 4
  br label %if.end.291

if.else.289:                                      ; preds = %land.lhs.true.283, %if.else.280
  %173 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst270, align 8
  %174 = load i64, i64* %__t274, align 8
  %call290 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %173, i64 %174) #7
  store i32 %call290, i32* %__r277, align 4
  br label %if.end.291

if.end.291:                                       ; preds = %if.else.289, %if.then.288
  br label %if.end.292

if.end.292:                                       ; preds = %if.end.291, %if.then.279
  %175 = load i32, i32* %__r277, align 4
  store i32 %175, i32* %tmp293
  %176 = load i32, i32* %tmp293
  %tobool294 = icmp ne i32 %176, 0
  br i1 %tobool294, label %lor.lhs.false.295, label %if.then.322

lor.lhs.false.295:                                ; preds = %if.end.292
  %177 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %args298 = getelementptr inbounds %struct._GimpProcedure, %struct._GimpProcedure* %177, i32 0, i32 11
  %178 = load %struct._GParamSpec**, %struct._GParamSpec*** %args298, align 8
  %arrayidx299 = getelementptr inbounds %struct._GParamSpec*, %struct._GParamSpec** %178, i64 2
  %179 = load %struct._GParamSpec*, %struct._GParamSpec** %arrayidx299, align 8
  %180 = bitcast %struct._GParamSpec* %179 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %180, %struct._GTypeInstance** %__inst297, align 8
  %call302 = call i64 @gimp_param_vectors_id_get_type() #6
  store i64 %call302, i64* %__t301, align 8
  %181 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst297, align 8
  %tobool305 = icmp ne %struct._GTypeInstance* %181, null
  br i1 %tobool305, label %if.else.307, label %if.then.306

if.then.306:                                      ; preds = %lor.lhs.false.295
  store i32 0, i32* %__r304, align 4
  br label %if.end.319

if.else.307:                                      ; preds = %lor.lhs.false.295
  %182 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst297, align 8
  %g_class308 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %182, i32 0, i32 0
  %183 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class308, align 8
  %tobool309 = icmp ne %struct._GTypeClass* %183, null
  br i1 %tobool309, label %land.lhs.true.310, label %if.else.316

land.lhs.true.310:                                ; preds = %if.else.307
  %184 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst297, align 8
  %g_class311 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %184, i32 0, i32 0
  %185 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class311, align 8
  %g_type312 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %185, i32 0, i32 0
  %186 = load i64, i64* %g_type312, align 8
  %187 = load i64, i64* %__t301, align 8
  %cmp313 = icmp eq i64 %186, %187
  br i1 %cmp313, label %if.then.315, label %if.else.316

if.then.315:                                      ; preds = %land.lhs.true.310
  store i32 1, i32* %__r304, align 4
  br label %if.end.318

if.else.316:                                      ; preds = %land.lhs.true.310, %if.else.307
  %188 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst297, align 8
  %189 = load i64, i64* %__t301, align 8
  %call317 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %188, i64 %189) #7
  store i32 %call317, i32* %__r304, align 4
  br label %if.end.318

if.end.318:                                       ; preds = %if.else.316, %if.then.315
  br label %if.end.319

if.end.319:                                       ; preds = %if.end.318, %if.then.306
  %190 = load i32, i32* %__r304, align 4
  store i32 %190, i32* %tmp320
  %191 = load i32, i32* %tmp320
  %tobool321 = icmp ne i32 %191, 0
  br i1 %tobool321, label %if.end.323, label %if.then.322

if.then.322:                                      ; preds = %if.end.319, %if.end.292, %if.end.265, %if.then.237
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i32 0, i32 0), i8** %required, align 8
  br label %failure

if.end.323:                                       ; preds = %if.end.319
  br label %if.end.719

if.else.324:                                      ; preds = %if.else.234
  %192 = load i8*, i8** %menu_path.addr, align 8
  %call325 = call i32 @g_str_has_prefix(i8* %192, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.17, i32 0, i32 0))
  %tobool326 = icmp ne i32 %call325, 0
  br i1 %tobool326, label %if.then.327, label %if.else.387

if.then.327:                                      ; preds = %if.else.324
  %193 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %num_args328 = getelementptr inbounds %struct._GimpProcedure, %struct._GimpProcedure* %193, i32 0, i32 10
  %194 = load i32, i32* %num_args328, align 4
  %cmp329 = icmp slt i32 %194, 2
  br i1 %cmp329, label %if.then.385, label %lor.lhs.false.331

lor.lhs.false.331:                                ; preds = %if.then.327
  %195 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %args334 = getelementptr inbounds %struct._GimpProcedure, %struct._GimpProcedure* %195, i32 0, i32 11
  %196 = load %struct._GParamSpec**, %struct._GParamSpec*** %args334, align 8
  %arrayidx335 = getelementptr inbounds %struct._GParamSpec*, %struct._GParamSpec** %196, i64 0
  %197 = load %struct._GParamSpec*, %struct._GParamSpec** %arrayidx335, align 8
  %198 = bitcast %struct._GParamSpec* %197 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %198, %struct._GTypeInstance** %__inst333, align 8
  %call338 = call i64 @gimp_param_int32_get_type() #6
  store i64 %call338, i64* %__t337, align 8
  %199 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst333, align 8
  %tobool341 = icmp ne %struct._GTypeInstance* %199, null
  br i1 %tobool341, label %if.else.343, label %if.then.342

if.then.342:                                      ; preds = %lor.lhs.false.331
  store i32 0, i32* %__r340, align 4
  br label %if.end.355

if.else.343:                                      ; preds = %lor.lhs.false.331
  %200 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst333, align 8
  %g_class344 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %200, i32 0, i32 0
  %201 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class344, align 8
  %tobool345 = icmp ne %struct._GTypeClass* %201, null
  br i1 %tobool345, label %land.lhs.true.346, label %if.else.352

land.lhs.true.346:                                ; preds = %if.else.343
  %202 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst333, align 8
  %g_class347 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %202, i32 0, i32 0
  %203 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class347, align 8
  %g_type348 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %203, i32 0, i32 0
  %204 = load i64, i64* %g_type348, align 8
  %205 = load i64, i64* %__t337, align 8
  %cmp349 = icmp eq i64 %204, %205
  br i1 %cmp349, label %if.then.351, label %if.else.352

if.then.351:                                      ; preds = %land.lhs.true.346
  store i32 1, i32* %__r340, align 4
  br label %if.end.354

if.else.352:                                      ; preds = %land.lhs.true.346, %if.else.343
  %206 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst333, align 8
  %207 = load i64, i64* %__t337, align 8
  %call353 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %206, i64 %207) #7
  store i32 %call353, i32* %__r340, align 4
  br label %if.end.354

if.end.354:                                       ; preds = %if.else.352, %if.then.351
  br label %if.end.355

if.end.355:                                       ; preds = %if.end.354, %if.then.342
  %208 = load i32, i32* %__r340, align 4
  store i32 %208, i32* %tmp356
  %209 = load i32, i32* %tmp356
  %tobool357 = icmp ne i32 %209, 0
  br i1 %tobool357, label %lor.lhs.false.358, label %if.then.385

lor.lhs.false.358:                                ; preds = %if.end.355
  %210 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %args361 = getelementptr inbounds %struct._GimpProcedure, %struct._GimpProcedure* %210, i32 0, i32 11
  %211 = load %struct._GParamSpec**, %struct._GParamSpec*** %args361, align 8
  %arrayidx362 = getelementptr inbounds %struct._GParamSpec*, %struct._GParamSpec** %211, i64 1
  %212 = load %struct._GParamSpec*, %struct._GParamSpec** %arrayidx362, align 8
  %213 = bitcast %struct._GParamSpec* %212 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %213, %struct._GTypeInstance** %__inst360, align 8
  %call365 = call i64 @gimp_param_image_id_get_type() #6
  store i64 %call365, i64* %__t364, align 8
  %214 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst360, align 8
  %tobool368 = icmp ne %struct._GTypeInstance* %214, null
  br i1 %tobool368, label %if.else.370, label %if.then.369

if.then.369:                                      ; preds = %lor.lhs.false.358
  store i32 0, i32* %__r367, align 4
  br label %if.end.382

if.else.370:                                      ; preds = %lor.lhs.false.358
  %215 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst360, align 8
  %g_class371 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %215, i32 0, i32 0
  %216 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class371, align 8
  %tobool372 = icmp ne %struct._GTypeClass* %216, null
  br i1 %tobool372, label %land.lhs.true.373, label %if.else.379

land.lhs.true.373:                                ; preds = %if.else.370
  %217 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst360, align 8
  %g_class374 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %217, i32 0, i32 0
  %218 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class374, align 8
  %g_type375 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %218, i32 0, i32 0
  %219 = load i64, i64* %g_type375, align 8
  %220 = load i64, i64* %__t364, align 8
  %cmp376 = icmp eq i64 %219, %220
  br i1 %cmp376, label %if.then.378, label %if.else.379

if.then.378:                                      ; preds = %land.lhs.true.373
  store i32 1, i32* %__r367, align 4
  br label %if.end.381

if.else.379:                                      ; preds = %land.lhs.true.373, %if.else.370
  %221 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst360, align 8
  %222 = load i64, i64* %__t364, align 8
  %call380 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %221, i64 %222) #7
  store i32 %call380, i32* %__r367, align 4
  br label %if.end.381

if.end.381:                                       ; preds = %if.else.379, %if.then.378
  br label %if.end.382

if.end.382:                                       ; preds = %if.end.381, %if.then.369
  %223 = load i32, i32* %__r367, align 4
  store i32 %223, i32* %tmp383
  %224 = load i32, i32* %tmp383
  %tobool384 = icmp ne i32 %224, 0
  br i1 %tobool384, label %if.end.386, label %if.then.385

if.then.385:                                      ; preds = %if.end.382, %if.end.355, %if.then.327
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.18, i32 0, i32 0), i8** %required, align 8
  br label %failure

if.end.386:                                       ; preds = %if.end.382
  br label %if.end.718

if.else.387:                                      ; preds = %if.else.324
  %225 = load i8*, i8** %menu_path.addr, align 8
  %call388 = call i32 @g_str_has_prefix(i8* %225, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.19, i32 0, i32 0))
  %tobool389 = icmp ne i32 %call388, 0
  br i1 %tobool389, label %if.then.390, label %if.else.507

if.then.390:                                      ; preds = %if.else.387
  %226 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %num_args391 = getelementptr inbounds %struct._GimpProcedure, %struct._GimpProcedure* %226, i32 0, i32 10
  %227 = load i32, i32* %num_args391, align 4
  %cmp392 = icmp slt i32 %227, 3
  br i1 %cmp392, label %if.then.475, label %lor.lhs.false.394

lor.lhs.false.394:                                ; preds = %if.then.390
  %228 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %args397 = getelementptr inbounds %struct._GimpProcedure, %struct._GimpProcedure* %228, i32 0, i32 11
  %229 = load %struct._GParamSpec**, %struct._GParamSpec*** %args397, align 8
  %arrayidx398 = getelementptr inbounds %struct._GParamSpec*, %struct._GParamSpec** %229, i64 0
  %230 = load %struct._GParamSpec*, %struct._GParamSpec** %arrayidx398, align 8
  %231 = bitcast %struct._GParamSpec* %230 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %231, %struct._GTypeInstance** %__inst396, align 8
  %call401 = call i64 @gimp_param_int32_get_type() #6
  store i64 %call401, i64* %__t400, align 8
  %232 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst396, align 8
  %tobool404 = icmp ne %struct._GTypeInstance* %232, null
  br i1 %tobool404, label %if.else.406, label %if.then.405

if.then.405:                                      ; preds = %lor.lhs.false.394
  store i32 0, i32* %__r403, align 4
  br label %if.end.418

if.else.406:                                      ; preds = %lor.lhs.false.394
  %233 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst396, align 8
  %g_class407 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %233, i32 0, i32 0
  %234 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class407, align 8
  %tobool408 = icmp ne %struct._GTypeClass* %234, null
  br i1 %tobool408, label %land.lhs.true.409, label %if.else.415

land.lhs.true.409:                                ; preds = %if.else.406
  %235 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst396, align 8
  %g_class410 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %235, i32 0, i32 0
  %236 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class410, align 8
  %g_type411 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %236, i32 0, i32 0
  %237 = load i64, i64* %g_type411, align 8
  %238 = load i64, i64* %__t400, align 8
  %cmp412 = icmp eq i64 %237, %238
  br i1 %cmp412, label %if.then.414, label %if.else.415

if.then.414:                                      ; preds = %land.lhs.true.409
  store i32 1, i32* %__r403, align 4
  br label %if.end.417

if.else.415:                                      ; preds = %land.lhs.true.409, %if.else.406
  %239 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst396, align 8
  %240 = load i64, i64* %__t400, align 8
  %call416 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %239, i64 %240) #7
  store i32 %call416, i32* %__r403, align 4
  br label %if.end.417

if.end.417:                                       ; preds = %if.else.415, %if.then.414
  br label %if.end.418

if.end.418:                                       ; preds = %if.end.417, %if.then.405
  %241 = load i32, i32* %__r403, align 4
  store i32 %241, i32* %tmp419
  %242 = load i32, i32* %tmp419
  %tobool420 = icmp ne i32 %242, 0
  br i1 %tobool420, label %lor.lhs.false.421, label %if.then.475

lor.lhs.false.421:                                ; preds = %if.end.418
  %243 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %args424 = getelementptr inbounds %struct._GimpProcedure, %struct._GimpProcedure* %243, i32 0, i32 11
  %244 = load %struct._GParamSpec**, %struct._GParamSpec*** %args424, align 8
  %arrayidx425 = getelementptr inbounds %struct._GParamSpec*, %struct._GParamSpec** %244, i64 1
  %245 = load %struct._GParamSpec*, %struct._GParamSpec** %arrayidx425, align 8
  %246 = bitcast %struct._GParamSpec* %245 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %246, %struct._GTypeInstance** %__inst423, align 8
  %247 = load i64*, i64** @g_param_spec_types, align 8
  %arrayidx428 = getelementptr inbounds i64, i64* %247, i64 14
  %248 = load i64, i64* %arrayidx428, align 8
  store i64 %248, i64* %__t427, align 8
  %249 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst423, align 8
  %tobool431 = icmp ne %struct._GTypeInstance* %249, null
  br i1 %tobool431, label %if.else.433, label %if.then.432

if.then.432:                                      ; preds = %lor.lhs.false.421
  store i32 0, i32* %__r430, align 4
  br label %if.end.445

if.else.433:                                      ; preds = %lor.lhs.false.421
  %250 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst423, align 8
  %g_class434 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %250, i32 0, i32 0
  %251 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class434, align 8
  %tobool435 = icmp ne %struct._GTypeClass* %251, null
  br i1 %tobool435, label %land.lhs.true.436, label %if.else.442

land.lhs.true.436:                                ; preds = %if.else.433
  %252 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst423, align 8
  %g_class437 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %252, i32 0, i32 0
  %253 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class437, align 8
  %g_type438 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %253, i32 0, i32 0
  %254 = load i64, i64* %g_type438, align 8
  %255 = load i64, i64* %__t427, align 8
  %cmp439 = icmp eq i64 %254, %255
  br i1 %cmp439, label %if.then.441, label %if.else.442

if.then.441:                                      ; preds = %land.lhs.true.436
  store i32 1, i32* %__r430, align 4
  br label %if.end.444

if.else.442:                                      ; preds = %land.lhs.true.436, %if.else.433
  %256 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst423, align 8
  %257 = load i64, i64* %__t427, align 8
  %call443 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %256, i64 %257) #7
  store i32 %call443, i32* %__r430, align 4
  br label %if.end.444

if.end.444:                                       ; preds = %if.else.442, %if.then.441
  br label %if.end.445

if.end.445:                                       ; preds = %if.end.444, %if.then.432
  %258 = load i32, i32* %__r430, align 4
  store i32 %258, i32* %tmp446
  %259 = load i32, i32* %tmp446
  %tobool447 = icmp ne i32 %259, 0
  br i1 %tobool447, label %lor.lhs.false.448, label %if.then.475

lor.lhs.false.448:                                ; preds = %if.end.445
  %260 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %args451 = getelementptr inbounds %struct._GimpProcedure, %struct._GimpProcedure* %260, i32 0, i32 11
  %261 = load %struct._GParamSpec**, %struct._GParamSpec*** %args451, align 8
  %arrayidx452 = getelementptr inbounds %struct._GParamSpec*, %struct._GParamSpec** %261, i64 2
  %262 = load %struct._GParamSpec*, %struct._GParamSpec** %arrayidx452, align 8
  %263 = bitcast %struct._GParamSpec* %262 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %263, %struct._GTypeInstance** %__inst450, align 8
  %264 = load i64*, i64** @g_param_spec_types, align 8
  %arrayidx455 = getelementptr inbounds i64, i64* %264, i64 14
  %265 = load i64, i64* %arrayidx455, align 8
  store i64 %265, i64* %__t454, align 8
  %266 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst450, align 8
  %tobool458 = icmp ne %struct._GTypeInstance* %266, null
  br i1 %tobool458, label %if.else.460, label %if.then.459

if.then.459:                                      ; preds = %lor.lhs.false.448
  store i32 0, i32* %__r457, align 4
  br label %if.end.472

if.else.460:                                      ; preds = %lor.lhs.false.448
  %267 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst450, align 8
  %g_class461 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %267, i32 0, i32 0
  %268 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class461, align 8
  %tobool462 = icmp ne %struct._GTypeClass* %268, null
  br i1 %tobool462, label %land.lhs.true.463, label %if.else.469

land.lhs.true.463:                                ; preds = %if.else.460
  %269 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst450, align 8
  %g_class464 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %269, i32 0, i32 0
  %270 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class464, align 8
  %g_type465 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %270, i32 0, i32 0
  %271 = load i64, i64* %g_type465, align 8
  %272 = load i64, i64* %__t454, align 8
  %cmp466 = icmp eq i64 %271, %272
  br i1 %cmp466, label %if.then.468, label %if.else.469

if.then.468:                                      ; preds = %land.lhs.true.463
  store i32 1, i32* %__r457, align 4
  br label %if.end.471

if.else.469:                                      ; preds = %land.lhs.true.463, %if.else.460
  %273 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst450, align 8
  %274 = load i64, i64* %__t454, align 8
  %call470 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %273, i64 %274) #7
  store i32 %call470, i32* %__r457, align 4
  br label %if.end.471

if.end.471:                                       ; preds = %if.else.469, %if.then.468
  br label %if.end.472

if.end.472:                                       ; preds = %if.end.471, %if.then.459
  %275 = load i32, i32* %__r457, align 4
  store i32 %275, i32* %tmp473
  %276 = load i32, i32* %tmp473
  %tobool474 = icmp ne i32 %276, 0
  br i1 %tobool474, label %if.end.476, label %if.then.475

if.then.475:                                      ; preds = %if.end.472, %if.end.445, %if.end.418, %if.then.390
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.20, i32 0, i32 0), i8** %required, align 8
  br label %failure

if.end.476:                                       ; preds = %if.end.472
  %277 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %num_values = getelementptr inbounds %struct._GimpProcedure, %struct._GimpProcedure* %277, i32 0, i32 12
  %278 = load i32, i32* %num_values, align 4
  %cmp477 = icmp slt i32 %278, 1
  br i1 %cmp477, label %if.then.505, label %lor.lhs.false.479

lor.lhs.false.479:                                ; preds = %if.end.476
  %279 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %values = getelementptr inbounds %struct._GimpProcedure, %struct._GimpProcedure* %279, i32 0, i32 13
  %280 = load %struct._GParamSpec**, %struct._GParamSpec*** %values, align 8
  %arrayidx482 = getelementptr inbounds %struct._GParamSpec*, %struct._GParamSpec** %280, i64 0
  %281 = load %struct._GParamSpec*, %struct._GParamSpec** %arrayidx482, align 8
  %282 = bitcast %struct._GParamSpec* %281 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %282, %struct._GTypeInstance** %__inst481, align 8
  %call485 = call i64 @gimp_param_image_id_get_type() #6
  store i64 %call485, i64* %__t484, align 8
  %283 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst481, align 8
  %tobool488 = icmp ne %struct._GTypeInstance* %283, null
  br i1 %tobool488, label %if.else.490, label %if.then.489

if.then.489:                                      ; preds = %lor.lhs.false.479
  store i32 0, i32* %__r487, align 4
  br label %if.end.502

if.else.490:                                      ; preds = %lor.lhs.false.479
  %284 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst481, align 8
  %g_class491 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %284, i32 0, i32 0
  %285 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class491, align 8
  %tobool492 = icmp ne %struct._GTypeClass* %285, null
  br i1 %tobool492, label %land.lhs.true.493, label %if.else.499

land.lhs.true.493:                                ; preds = %if.else.490
  %286 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst481, align 8
  %g_class494 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %286, i32 0, i32 0
  %287 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class494, align 8
  %g_type495 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %287, i32 0, i32 0
  %288 = load i64, i64* %g_type495, align 8
  %289 = load i64, i64* %__t484, align 8
  %cmp496 = icmp eq i64 %288, %289
  br i1 %cmp496, label %if.then.498, label %if.else.499

if.then.498:                                      ; preds = %land.lhs.true.493
  store i32 1, i32* %__r487, align 4
  br label %if.end.501

if.else.499:                                      ; preds = %land.lhs.true.493, %if.else.490
  %290 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst481, align 8
  %291 = load i64, i64* %__t484, align 8
  %call500 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %290, i64 %291) #7
  store i32 %call500, i32* %__r487, align 4
  br label %if.end.501

if.end.501:                                       ; preds = %if.else.499, %if.then.498
  br label %if.end.502

if.end.502:                                       ; preds = %if.end.501, %if.then.489
  %292 = load i32, i32* %__r487, align 4
  store i32 %292, i32* %tmp503
  %293 = load i32, i32* %tmp503
  %tobool504 = icmp ne i32 %293, 0
  br i1 %tobool504, label %if.end.506, label %if.then.505

if.then.505:                                      ; preds = %if.end.502, %if.end.476
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.21, i32 0, i32 0), i8** %required, align 8
  br label %failure

if.end.506:                                       ; preds = %if.end.502
  br label %if.end.717

if.else.507:                                      ; preds = %if.else.387
  %294 = load i8*, i8** %menu_path.addr, align 8
  %call508 = call i32 @g_str_has_prefix(i8* %294, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.22, i32 0, i32 0))
  %tobool509 = icmp ne i32 %call508, 0
  br i1 %tobool509, label %if.then.510, label %if.else.651

if.then.510:                                      ; preds = %if.else.507
  %295 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %num_args511 = getelementptr inbounds %struct._GimpProcedure, %struct._GimpProcedure* %295, i32 0, i32 10
  %296 = load i32, i32* %num_args511, align 4
  %cmp512 = icmp slt i32 %296, 5
  br i1 %cmp512, label %if.then.649, label %lor.lhs.false.514

lor.lhs.false.514:                                ; preds = %if.then.510
  %297 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %args517 = getelementptr inbounds %struct._GimpProcedure, %struct._GimpProcedure* %297, i32 0, i32 11
  %298 = load %struct._GParamSpec**, %struct._GParamSpec*** %args517, align 8
  %arrayidx518 = getelementptr inbounds %struct._GParamSpec*, %struct._GParamSpec** %298, i64 0
  %299 = load %struct._GParamSpec*, %struct._GParamSpec** %arrayidx518, align 8
  %300 = bitcast %struct._GParamSpec* %299 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %300, %struct._GTypeInstance** %__inst516, align 8
  %call521 = call i64 @gimp_param_int32_get_type() #6
  store i64 %call521, i64* %__t520, align 8
  %301 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst516, align 8
  %tobool524 = icmp ne %struct._GTypeInstance* %301, null
  br i1 %tobool524, label %if.else.526, label %if.then.525

if.then.525:                                      ; preds = %lor.lhs.false.514
  store i32 0, i32* %__r523, align 4
  br label %if.end.538

if.else.526:                                      ; preds = %lor.lhs.false.514
  %302 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst516, align 8
  %g_class527 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %302, i32 0, i32 0
  %303 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class527, align 8
  %tobool528 = icmp ne %struct._GTypeClass* %303, null
  br i1 %tobool528, label %land.lhs.true.529, label %if.else.535

land.lhs.true.529:                                ; preds = %if.else.526
  %304 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst516, align 8
  %g_class530 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %304, i32 0, i32 0
  %305 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class530, align 8
  %g_type531 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %305, i32 0, i32 0
  %306 = load i64, i64* %g_type531, align 8
  %307 = load i64, i64* %__t520, align 8
  %cmp532 = icmp eq i64 %306, %307
  br i1 %cmp532, label %if.then.534, label %if.else.535

if.then.534:                                      ; preds = %land.lhs.true.529
  store i32 1, i32* %__r523, align 4
  br label %if.end.537

if.else.535:                                      ; preds = %land.lhs.true.529, %if.else.526
  %308 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst516, align 8
  %309 = load i64, i64* %__t520, align 8
  %call536 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %308, i64 %309) #7
  store i32 %call536, i32* %__r523, align 4
  br label %if.end.537

if.end.537:                                       ; preds = %if.else.535, %if.then.534
  br label %if.end.538

if.end.538:                                       ; preds = %if.end.537, %if.then.525
  %310 = load i32, i32* %__r523, align 4
  store i32 %310, i32* %tmp539
  %311 = load i32, i32* %tmp539
  %tobool540 = icmp ne i32 %311, 0
  br i1 %tobool540, label %lor.lhs.false.541, label %if.then.649

lor.lhs.false.541:                                ; preds = %if.end.538
  %312 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %args544 = getelementptr inbounds %struct._GimpProcedure, %struct._GimpProcedure* %312, i32 0, i32 11
  %313 = load %struct._GParamSpec**, %struct._GParamSpec*** %args544, align 8
  %arrayidx545 = getelementptr inbounds %struct._GParamSpec*, %struct._GParamSpec** %313, i64 1
  %314 = load %struct._GParamSpec*, %struct._GParamSpec** %arrayidx545, align 8
  %315 = bitcast %struct._GParamSpec* %314 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %315, %struct._GTypeInstance** %__inst543, align 8
  %call548 = call i64 @gimp_param_image_id_get_type() #6
  store i64 %call548, i64* %__t547, align 8
  %316 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst543, align 8
  %tobool551 = icmp ne %struct._GTypeInstance* %316, null
  br i1 %tobool551, label %if.else.553, label %if.then.552

if.then.552:                                      ; preds = %lor.lhs.false.541
  store i32 0, i32* %__r550, align 4
  br label %if.end.565

if.else.553:                                      ; preds = %lor.lhs.false.541
  %317 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst543, align 8
  %g_class554 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %317, i32 0, i32 0
  %318 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class554, align 8
  %tobool555 = icmp ne %struct._GTypeClass* %318, null
  br i1 %tobool555, label %land.lhs.true.556, label %if.else.562

land.lhs.true.556:                                ; preds = %if.else.553
  %319 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst543, align 8
  %g_class557 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %319, i32 0, i32 0
  %320 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class557, align 8
  %g_type558 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %320, i32 0, i32 0
  %321 = load i64, i64* %g_type558, align 8
  %322 = load i64, i64* %__t547, align 8
  %cmp559 = icmp eq i64 %321, %322
  br i1 %cmp559, label %if.then.561, label %if.else.562

if.then.561:                                      ; preds = %land.lhs.true.556
  store i32 1, i32* %__r550, align 4
  br label %if.end.564

if.else.562:                                      ; preds = %land.lhs.true.556, %if.else.553
  %323 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst543, align 8
  %324 = load i64, i64* %__t547, align 8
  %call563 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %323, i64 %324) #7
  store i32 %call563, i32* %__r550, align 4
  br label %if.end.564

if.end.564:                                       ; preds = %if.else.562, %if.then.561
  br label %if.end.565

if.end.565:                                       ; preds = %if.end.564, %if.then.552
  %325 = load i32, i32* %__r550, align 4
  store i32 %325, i32* %tmp566
  %326 = load i32, i32* %tmp566
  %tobool567 = icmp ne i32 %326, 0
  br i1 %tobool567, label %lor.lhs.false.568, label %if.then.649

lor.lhs.false.568:                                ; preds = %if.end.565
  %327 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %args571 = getelementptr inbounds %struct._GimpProcedure, %struct._GimpProcedure* %327, i32 0, i32 11
  %328 = load %struct._GParamSpec**, %struct._GParamSpec*** %args571, align 8
  %arrayidx572 = getelementptr inbounds %struct._GParamSpec*, %struct._GParamSpec** %328, i64 2
  %329 = load %struct._GParamSpec*, %struct._GParamSpec** %arrayidx572, align 8
  %330 = bitcast %struct._GParamSpec* %329 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %330, %struct._GTypeInstance** %__inst570, align 8
  %call575 = call i64 @gimp_param_drawable_id_get_type() #6
  store i64 %call575, i64* %__t574, align 8
  %331 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst570, align 8
  %tobool578 = icmp ne %struct._GTypeInstance* %331, null
  br i1 %tobool578, label %if.else.580, label %if.then.579

if.then.579:                                      ; preds = %lor.lhs.false.568
  store i32 0, i32* %__r577, align 4
  br label %if.end.592

if.else.580:                                      ; preds = %lor.lhs.false.568
  %332 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst570, align 8
  %g_class581 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %332, i32 0, i32 0
  %333 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class581, align 8
  %tobool582 = icmp ne %struct._GTypeClass* %333, null
  br i1 %tobool582, label %land.lhs.true.583, label %if.else.589

land.lhs.true.583:                                ; preds = %if.else.580
  %334 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst570, align 8
  %g_class584 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %334, i32 0, i32 0
  %335 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class584, align 8
  %g_type585 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %335, i32 0, i32 0
  %336 = load i64, i64* %g_type585, align 8
  %337 = load i64, i64* %__t574, align 8
  %cmp586 = icmp eq i64 %336, %337
  br i1 %cmp586, label %if.then.588, label %if.else.589

if.then.588:                                      ; preds = %land.lhs.true.583
  store i32 1, i32* %__r577, align 4
  br label %if.end.591

if.else.589:                                      ; preds = %land.lhs.true.583, %if.else.580
  %338 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst570, align 8
  %339 = load i64, i64* %__t574, align 8
  %call590 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %338, i64 %339) #7
  store i32 %call590, i32* %__r577, align 4
  br label %if.end.591

if.end.591:                                       ; preds = %if.else.589, %if.then.588
  br label %if.end.592

if.end.592:                                       ; preds = %if.end.591, %if.then.579
  %340 = load i32, i32* %__r577, align 4
  store i32 %340, i32* %tmp593
  %341 = load i32, i32* %tmp593
  %tobool594 = icmp ne i32 %341, 0
  br i1 %tobool594, label %lor.lhs.false.595, label %if.then.649

lor.lhs.false.595:                                ; preds = %if.end.592
  %342 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %args598 = getelementptr inbounds %struct._GimpProcedure, %struct._GimpProcedure* %342, i32 0, i32 11
  %343 = load %struct._GParamSpec**, %struct._GParamSpec*** %args598, align 8
  %arrayidx599 = getelementptr inbounds %struct._GParamSpec*, %struct._GParamSpec** %343, i64 3
  %344 = load %struct._GParamSpec*, %struct._GParamSpec** %arrayidx599, align 8
  %345 = bitcast %struct._GParamSpec* %344 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %345, %struct._GTypeInstance** %__inst597, align 8
  %346 = load i64*, i64** @g_param_spec_types, align 8
  %arrayidx602 = getelementptr inbounds i64, i64* %346, i64 14
  %347 = load i64, i64* %arrayidx602, align 8
  store i64 %347, i64* %__t601, align 8
  %348 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst597, align 8
  %tobool605 = icmp ne %struct._GTypeInstance* %348, null
  br i1 %tobool605, label %if.else.607, label %if.then.606

if.then.606:                                      ; preds = %lor.lhs.false.595
  store i32 0, i32* %__r604, align 4
  br label %if.end.619

if.else.607:                                      ; preds = %lor.lhs.false.595
  %349 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst597, align 8
  %g_class608 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %349, i32 0, i32 0
  %350 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class608, align 8
  %tobool609 = icmp ne %struct._GTypeClass* %350, null
  br i1 %tobool609, label %land.lhs.true.610, label %if.else.616

land.lhs.true.610:                                ; preds = %if.else.607
  %351 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst597, align 8
  %g_class611 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %351, i32 0, i32 0
  %352 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class611, align 8
  %g_type612 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %352, i32 0, i32 0
  %353 = load i64, i64* %g_type612, align 8
  %354 = load i64, i64* %__t601, align 8
  %cmp613 = icmp eq i64 %353, %354
  br i1 %cmp613, label %if.then.615, label %if.else.616

if.then.615:                                      ; preds = %land.lhs.true.610
  store i32 1, i32* %__r604, align 4
  br label %if.end.618

if.else.616:                                      ; preds = %land.lhs.true.610, %if.else.607
  %355 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst597, align 8
  %356 = load i64, i64* %__t601, align 8
  %call617 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %355, i64 %356) #7
  store i32 %call617, i32* %__r604, align 4
  br label %if.end.618

if.end.618:                                       ; preds = %if.else.616, %if.then.615
  br label %if.end.619

if.end.619:                                       ; preds = %if.end.618, %if.then.606
  %357 = load i32, i32* %__r604, align 4
  store i32 %357, i32* %tmp620
  %358 = load i32, i32* %tmp620
  %tobool621 = icmp ne i32 %358, 0
  br i1 %tobool621, label %lor.lhs.false.622, label %if.then.649

lor.lhs.false.622:                                ; preds = %if.end.619
  %359 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %args625 = getelementptr inbounds %struct._GimpProcedure, %struct._GimpProcedure* %359, i32 0, i32 11
  %360 = load %struct._GParamSpec**, %struct._GParamSpec*** %args625, align 8
  %arrayidx626 = getelementptr inbounds %struct._GParamSpec*, %struct._GParamSpec** %360, i64 4
  %361 = load %struct._GParamSpec*, %struct._GParamSpec** %arrayidx626, align 8
  %362 = bitcast %struct._GParamSpec* %361 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %362, %struct._GTypeInstance** %__inst624, align 8
  %363 = load i64*, i64** @g_param_spec_types, align 8
  %arrayidx629 = getelementptr inbounds i64, i64* %363, i64 14
  %364 = load i64, i64* %arrayidx629, align 8
  store i64 %364, i64* %__t628, align 8
  %365 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst624, align 8
  %tobool632 = icmp ne %struct._GTypeInstance* %365, null
  br i1 %tobool632, label %if.else.634, label %if.then.633

if.then.633:                                      ; preds = %lor.lhs.false.622
  store i32 0, i32* %__r631, align 4
  br label %if.end.646

if.else.634:                                      ; preds = %lor.lhs.false.622
  %366 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst624, align 8
  %g_class635 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %366, i32 0, i32 0
  %367 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class635, align 8
  %tobool636 = icmp ne %struct._GTypeClass* %367, null
  br i1 %tobool636, label %land.lhs.true.637, label %if.else.643

land.lhs.true.637:                                ; preds = %if.else.634
  %368 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst624, align 8
  %g_class638 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %368, i32 0, i32 0
  %369 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class638, align 8
  %g_type639 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %369, i32 0, i32 0
  %370 = load i64, i64* %g_type639, align 8
  %371 = load i64, i64* %__t628, align 8
  %cmp640 = icmp eq i64 %370, %371
  br i1 %cmp640, label %if.then.642, label %if.else.643

if.then.642:                                      ; preds = %land.lhs.true.637
  store i32 1, i32* %__r631, align 4
  br label %if.end.645

if.else.643:                                      ; preds = %land.lhs.true.637, %if.else.634
  %372 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst624, align 8
  %373 = load i64, i64* %__t628, align 8
  %call644 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %372, i64 %373) #7
  store i32 %call644, i32* %__r631, align 4
  br label %if.end.645

if.end.645:                                       ; preds = %if.else.643, %if.then.642
  br label %if.end.646

if.end.646:                                       ; preds = %if.end.645, %if.then.633
  %374 = load i32, i32* %__r631, align 4
  store i32 %374, i32* %tmp647
  %375 = load i32, i32* %tmp647
  %tobool648 = icmp ne i32 %375, 0
  br i1 %tobool648, label %if.end.650, label %if.then.649

if.then.649:                                      ; preds = %if.end.646, %if.end.619, %if.end.592, %if.end.565, %if.end.538, %if.then.510
  store i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.23, i32 0, i32 0), i8** %required, align 8
  br label %failure

if.end.650:                                       ; preds = %if.end.646
  br label %if.end.716

if.else.651:                                      ; preds = %if.else.507
  %376 = load i8*, i8** %menu_path.addr, align 8
  %call652 = call i32 @g_str_has_prefix(i8* %376, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.24, i32 0, i32 0))
  %tobool653 = icmp ne i32 %call652, 0
  br i1 %tobool653, label %if.then.675, label %lor.lhs.false.654

lor.lhs.false.654:                                ; preds = %if.else.651
  %377 = load i8*, i8** %menu_path.addr, align 8
  %call655 = call i32 @g_str_has_prefix(i8* %377, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.25, i32 0, i32 0))
  %tobool656 = icmp ne i32 %call655, 0
  br i1 %tobool656, label %if.then.675, label %lor.lhs.false.657

lor.lhs.false.657:                                ; preds = %lor.lhs.false.654
  %378 = load i8*, i8** %menu_path.addr, align 8
  %call658 = call i32 @g_str_has_prefix(i8* %378, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.26, i32 0, i32 0))
  %tobool659 = icmp ne i32 %call658, 0
  br i1 %tobool659, label %if.then.675, label %lor.lhs.false.660

lor.lhs.false.660:                                ; preds = %lor.lhs.false.657
  %379 = load i8*, i8** %menu_path.addr, align 8
  %call661 = call i32 @g_str_has_prefix(i8* %379, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.27, i32 0, i32 0))
  %tobool662 = icmp ne i32 %call661, 0
  br i1 %tobool662, label %if.then.675, label %lor.lhs.false.663

lor.lhs.false.663:                                ; preds = %lor.lhs.false.660
  %380 = load i8*, i8** %menu_path.addr, align 8
  %call664 = call i32 @g_str_has_prefix(i8* %380, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.28, i32 0, i32 0))
  %tobool665 = icmp ne i32 %call664, 0
  br i1 %tobool665, label %if.then.675, label %lor.lhs.false.666

lor.lhs.false.666:                                ; preds = %lor.lhs.false.663
  %381 = load i8*, i8** %menu_path.addr, align 8
  %call667 = call i32 @g_str_has_prefix(i8* %381, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.29, i32 0, i32 0))
  %tobool668 = icmp ne i32 %call667, 0
  br i1 %tobool668, label %if.then.675, label %lor.lhs.false.669

lor.lhs.false.669:                                ; preds = %lor.lhs.false.666
  %382 = load i8*, i8** %menu_path.addr, align 8
  %call670 = call i32 @g_str_has_prefix(i8* %382, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.30, i32 0, i32 0))
  %tobool671 = icmp ne i32 %call670, 0
  br i1 %tobool671, label %if.then.675, label %lor.lhs.false.672

lor.lhs.false.672:                                ; preds = %lor.lhs.false.669
  %383 = load i8*, i8** %menu_path.addr, align 8
  %call673 = call i32 @g_str_has_prefix(i8* %383, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.31, i32 0, i32 0))
  %tobool674 = icmp ne i32 %call673, 0
  br i1 %tobool674, label %if.then.675, label %if.else.708

if.then.675:                                      ; preds = %lor.lhs.false.672, %lor.lhs.false.669, %lor.lhs.false.666, %lor.lhs.false.663, %lor.lhs.false.660, %lor.lhs.false.657, %lor.lhs.false.654, %if.else.651
  %384 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %num_args676 = getelementptr inbounds %struct._GimpProcedure, %struct._GimpProcedure* %384, i32 0, i32 10
  %385 = load i32, i32* %num_args676, align 4
  %cmp677 = icmp slt i32 %385, 1
  br i1 %cmp677, label %if.then.706, label %lor.lhs.false.679

lor.lhs.false.679:                                ; preds = %if.then.675
  %386 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %args682 = getelementptr inbounds %struct._GimpProcedure, %struct._GimpProcedure* %386, i32 0, i32 11
  %387 = load %struct._GParamSpec**, %struct._GParamSpec*** %args682, align 8
  %arrayidx683 = getelementptr inbounds %struct._GParamSpec*, %struct._GParamSpec** %387, i64 0
  %388 = load %struct._GParamSpec*, %struct._GParamSpec** %arrayidx683, align 8
  %389 = bitcast %struct._GParamSpec* %388 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %389, %struct._GTypeInstance** %__inst681, align 8
  %call686 = call i64 @gimp_param_int32_get_type() #6
  store i64 %call686, i64* %__t685, align 8
  %390 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst681, align 8
  %tobool689 = icmp ne %struct._GTypeInstance* %390, null
  br i1 %tobool689, label %if.else.691, label %if.then.690

if.then.690:                                      ; preds = %lor.lhs.false.679
  store i32 0, i32* %__r688, align 4
  br label %if.end.703

if.else.691:                                      ; preds = %lor.lhs.false.679
  %391 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst681, align 8
  %g_class692 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %391, i32 0, i32 0
  %392 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class692, align 8
  %tobool693 = icmp ne %struct._GTypeClass* %392, null
  br i1 %tobool693, label %land.lhs.true.694, label %if.else.700

land.lhs.true.694:                                ; preds = %if.else.691
  %393 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst681, align 8
  %g_class695 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %393, i32 0, i32 0
  %394 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class695, align 8
  %g_type696 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %394, i32 0, i32 0
  %395 = load i64, i64* %g_type696, align 8
  %396 = load i64, i64* %__t685, align 8
  %cmp697 = icmp eq i64 %395, %396
  br i1 %cmp697, label %if.then.699, label %if.else.700

if.then.699:                                      ; preds = %land.lhs.true.694
  store i32 1, i32* %__r688, align 4
  br label %if.end.702

if.else.700:                                      ; preds = %land.lhs.true.694, %if.else.691
  %397 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst681, align 8
  %398 = load i64, i64* %__t685, align 8
  %call701 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %397, i64 %398) #7
  store i32 %call701, i32* %__r688, align 4
  br label %if.end.702

if.end.702:                                       ; preds = %if.else.700, %if.then.699
  br label %if.end.703

if.end.703:                                       ; preds = %if.end.702, %if.then.690
  %399 = load i32, i32* %__r688, align 4
  store i32 %399, i32* %tmp704
  %400 = load i32, i32* %tmp704
  %tobool705 = icmp ne i32 %400, 0
  br i1 %tobool705, label %if.end.707, label %if.then.706

if.then.706:                                      ; preds = %if.end.703, %if.then.675
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i32 0, i32 0), i8** %required, align 8
  br label %failure

if.end.707:                                       ; preds = %if.end.703
  br label %if.end.715

if.else.708:                                      ; preds = %lor.lhs.false.672
  %401 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %proc.addr, align 8
  %prog709 = getelementptr inbounds %struct._GimpPlugInProcedure, %struct._GimpPlugInProcedure* %401, i32 0, i32 1
  %402 = load i8*, i8** %prog709, align 8
  %call710 = call noalias i8* @g_filename_display_basename(i8* %402)
  store i8* %call710, i8** %basename, align 8
  %403 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call711 = call i32 @gimp_plug_in_error_quark() #6
  %404 = load i8*, i8** %basename, align 8
  %405 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %proc.addr, align 8
  %prog712 = getelementptr inbounds %struct._GimpPlugInProcedure, %struct._GimpPlugInProcedure* %405, i32 0, i32 1
  %406 = load i8*, i8** %prog712, align 8
  %call713 = call i8* @gimp_filename_to_utf8(i8* %406)
  %407 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %proc.addr, align 8
  %408 = bitcast %struct._GimpPlugInProcedure* %407 to i8*
  %call714 = call i8* @gimp_object_get_name(i8* %408)
  %409 = load i8*, i8** %menu_path.addr, align 8
  call void (%struct._GError**, i32, i32, i8*, ...) @g_set_error(%struct._GError** %403, i32 %call711, i32 0, i8* getelementptr inbounds ([277 x i8], [277 x i8]* @.str.32, i32 0, i32 0), i8* %404, i8* %call713, i8* %call714, i8* %409)
  br label %failure

if.end.715:                                       ; preds = %if.end.707
  br label %if.end.716

if.end.716:                                       ; preds = %if.end.715, %if.end.650
  br label %if.end.717

if.end.717:                                       ; preds = %if.end.716, %if.end.506
  br label %if.end.718

if.end.718:                                       ; preds = %if.end.717, %if.end.386
  br label %if.end.719

if.end.719:                                       ; preds = %if.end.718, %if.end.323
  br label %if.end.720

if.end.720:                                       ; preds = %if.end.719, %if.end.233
  br label %if.end.721

if.end.721:                                       ; preds = %if.end.720, %if.end.154
  br label %if.end.722

if.end.722:                                       ; preds = %if.end.721, %if.end.75
  %410 = load i8*, i8** %basename, align 8
  call void @g_free(i8* %410)
  %411 = load i8*, i8** %menu_path.addr, align 8
  %call723 = call i8* @plug_in_menu_path_map(i8* %411, i8* null)
  store i8* %call723, i8** %mapped_path, align 8
  %412 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %proc.addr, align 8
  %menu_paths = getelementptr inbounds %struct._GimpPlugInProcedure, %struct._GimpPlugInProcedure* %412, i32 0, i32 5
  %413 = load %struct._GList*, %struct._GList** %menu_paths, align 8
  %414 = load i8*, i8** %mapped_path, align 8
  %call724 = call %struct._GList* @g_list_append(%struct._GList* %413, i8* %414)
  %415 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %proc.addr, align 8
  %menu_paths725 = getelementptr inbounds %struct._GimpPlugInProcedure, %struct._GimpPlugInProcedure* %415, i32 0, i32 5
  store %struct._GList* %call724, %struct._GList** %menu_paths725, align 8
  %416 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %proc.addr, align 8
  %417 = bitcast %struct._GimpPlugInProcedure* %416 to i8*
  %418 = load i32, i32* getelementptr inbounds ([1 x i32], [1 x i32]* @gimp_plug_in_procedure_signals, i32 0, i64 0), align 4
  %419 = load i8*, i8** %mapped_path, align 8
  call void (i8*, i32, i32, ...) @g_signal_emit(i8* %417, i32 %418, i32 0, i8* %419)
  store i32 1, i32* %retval
  br label %return

failure:                                          ; preds = %if.else.708, %if.then.706, %if.then.649, %if.then.505, %if.then.475, %if.then.385, %if.then.322, %if.then.232, %if.then.153, %if.then.74, %if.then.34
  %420 = load i8*, i8** %required, align 8
  %tobool726 = icmp ne i8* %420, null
  br i1 %tobool726, label %if.then.727, label %if.end.737

if.then.727:                                      ; preds = %failure
  %421 = load i8*, i8** %menu_path.addr, align 8
  %call729 = call noalias i8* @g_strdup(i8* %421)
  store i8* %call729, i8** %prefix, align 8
  %422 = load i8*, i8** %prefix, align 8
  %call730 = call i8* @strchr(i8* %422, i32 62) #7
  %add.ptr = getelementptr inbounds i8, i8* %call730, i64 1
  store i8* %add.ptr, i8** %p, align 8
  %423 = load i8*, i8** %p, align 8
  store i8 0, i8* %423, align 1
  %424 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %proc.addr, align 8
  %prog731 = getelementptr inbounds %struct._GimpPlugInProcedure, %struct._GimpPlugInProcedure* %424, i32 0, i32 1
  %425 = load i8*, i8** %prog731, align 8
  %call732 = call noalias i8* @g_filename_display_basename(i8* %425)
  store i8* %call732, i8** %basename, align 8
  %426 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call733 = call i32 @gimp_plug_in_error_quark() #6
  %427 = load i8*, i8** %basename, align 8
  %428 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %proc.addr, align 8
  %prog734 = getelementptr inbounds %struct._GimpPlugInProcedure, %struct._GimpPlugInProcedure* %428, i32 0, i32 1
  %429 = load i8*, i8** %prog734, align 8
  %call735 = call i8* @gimp_filename_to_utf8(i8* %429)
  %430 = load i8*, i8** %prefix, align 8
  %431 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %proc.addr, align 8
  %432 = bitcast %struct._GimpPlugInProcedure* %431 to i8*
  %call736 = call i8* @gimp_object_get_name(i8* %432)
  %433 = load i8*, i8** %prefix, align 8
  %434 = load i8*, i8** %required, align 8
  call void (%struct._GError**, i32, i32, i8*, ...) @g_set_error(%struct._GError** %426, i32 %call733, i32 0, i8* getelementptr inbounds ([119 x i8], [119 x i8]* @.str.33, i32 0, i32 0), i8* %427, i8* %call735, i8* %430, i8* %call736, i8* %433, i8* %434)
  %435 = load i8*, i8** %prefix, align 8
  call void @g_free(i8* %435)
  br label %if.end.737

if.end.737:                                       ; preds = %if.then.727, %failure
  %436 = load i8*, i8** %basename, align 8
  call void @g_free(i8* %436)
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.737, %if.end.722, %if.else.21, %if.else.14, %if.else.9
  %437 = load i32, i32* %retval
  ret i32 %437
}

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) #4

declare noalias i8* @g_filename_display_basename(i8*) #1

declare void @g_set_error(%struct._GError**, i32, i32, i8*, ...) #1

; Function Attrs: nounwind readnone
declare i32 @gimp_plug_in_error_quark() #2

declare i8* @gimp_filename_to_utf8(i8*) #1

declare i32 @g_str_has_prefix(i8*, i8*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_param_int32_get_type() #2

; Function Attrs: nounwind readnone
declare i64 @gimp_param_image_id_get_type() #2

; Function Attrs: nounwind readnone
declare i64 @gimp_param_layer_id_get_type() #2

; Function Attrs: nounwind readnone
declare i64 @gimp_param_drawable_id_get_type() #2

; Function Attrs: nounwind readnone
declare i64 @gimp_param_channel_id_get_type() #2

; Function Attrs: nounwind readnone
declare i64 @gimp_param_vectors_id_get_type() #2

declare void @g_free(i8*) #1

declare i8* @plug_in_menu_path_map(i8*, i8*) #1

declare %struct._GList* @g_list_append(%struct._GList*, i8*) #1

declare void @g_signal_emit(i8*, i32, i32, ...) #1

; Function Attrs: nounwind uwtable
define i8* @gimp_plug_in_procedure_get_label(%struct._GimpPlugInProcedure* %proc) #3 {
entry:
  %retval = alloca i8*, align 8
  %proc.addr = alloca %struct._GimpPlugInProcedure*, align 8
  %path = alloca i8*, align 8
  %stripped = alloca i8*, align 8
  %ellipsis = alloca i8*, align 8
  %label = alloca i8*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpPlugInProcedure* %proc, %struct._GimpPlugInProcedure** %proc.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %proc.addr, align 8
  %1 = bitcast %struct._GimpPlugInProcedure* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_plug_in_procedure_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__func__.gimp_plug_in_procedure_get_label, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i32 0, i32 0))
  store i8* null, i8** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %proc.addr, align 8
  %label11 = getelementptr inbounds %struct._GimpPlugInProcedure, %struct._GimpPlugInProcedure* %13, i32 0, i32 6
  %14 = load i8*, i8** %label11, align 8
  %tobool12 = icmp ne i8* %14, null
  br i1 %tobool12, label %if.then.13, label %if.end.15

if.then.13:                                       ; preds = %do.end
  %15 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %proc.addr, align 8
  %label14 = getelementptr inbounds %struct._GimpPlugInProcedure, %struct._GimpPlugInProcedure* %15, i32 0, i32 6
  %16 = load i8*, i8** %label14, align 8
  store i8* %16, i8** %retval
  br label %return

if.end.15:                                        ; preds = %do.end
  %17 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %proc.addr, align 8
  %menu_label = getelementptr inbounds %struct._GimpPlugInProcedure, %struct._GimpPlugInProcedure* %17, i32 0, i32 4
  %18 = load i8*, i8** %menu_label, align 8
  %tobool16 = icmp ne i8* %18, null
  br i1 %tobool16, label %if.then.17, label %if.else.21

if.then.17:                                       ; preds = %if.end.15
  %19 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %proc.addr, align 8
  %call18 = call i8* @gimp_plug_in_procedure_get_locale_domain(%struct._GimpPlugInProcedure* %19)
  %20 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %proc.addr, align 8
  %menu_label19 = getelementptr inbounds %struct._GimpPlugInProcedure, %struct._GimpPlugInProcedure* %20, i32 0, i32 4
  %21 = load i8*, i8** %menu_label19, align 8
  %call20 = call i8* @dgettext(i8* %call18, i8* %21) #8
  store i8* %call20, i8** %path, align 8
  br label %if.end.29

if.else.21:                                       ; preds = %if.end.15
  %22 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %proc.addr, align 8
  %menu_paths = getelementptr inbounds %struct._GimpPlugInProcedure, %struct._GimpPlugInProcedure* %22, i32 0, i32 5
  %23 = load %struct._GList*, %struct._GList** %menu_paths, align 8
  %tobool22 = icmp ne %struct._GList* %23, null
  br i1 %tobool22, label %if.then.23, label %if.else.27

if.then.23:                                       ; preds = %if.else.21
  %24 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %proc.addr, align 8
  %call24 = call i8* @gimp_plug_in_procedure_get_locale_domain(%struct._GimpPlugInProcedure* %24)
  %25 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %proc.addr, align 8
  %menu_paths25 = getelementptr inbounds %struct._GimpPlugInProcedure, %struct._GimpPlugInProcedure* %25, i32 0, i32 5
  %26 = load %struct._GList*, %struct._GList** %menu_paths25, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %26, i32 0, i32 0
  %27 = load i8*, i8** %data, align 8
  %call26 = call i8* @dgettext(i8* %call24, i8* %27) #8
  store i8* %call26, i8** %path, align 8
  br label %if.end.28

if.else.27:                                       ; preds = %if.else.21
  store i8* null, i8** %retval
  br label %return

if.end.28:                                        ; preds = %if.then.23
  br label %if.end.29

if.end.29:                                        ; preds = %if.end.28, %if.then.17
  %28 = load i8*, i8** %path, align 8
  %call30 = call noalias i8* @gimp_strip_uline(i8* %28)
  store i8* %call30, i8** %stripped, align 8
  %29 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %proc.addr, align 8
  %menu_label31 = getelementptr inbounds %struct._GimpPlugInProcedure, %struct._GimpPlugInProcedure* %29, i32 0, i32 4
  %30 = load i8*, i8** %menu_label31, align 8
  %tobool32 = icmp ne i8* %30, null
  br i1 %tobool32, label %if.then.33, label %if.else.35

if.then.33:                                       ; preds = %if.end.29
  %31 = load i8*, i8** %stripped, align 8
  %call34 = call noalias i8* @g_strdup(i8* %31)
  store i8* %call34, i8** %label, align 8
  br label %if.end.37

if.else.35:                                       ; preds = %if.end.29
  %32 = load i8*, i8** %stripped, align 8
  %call36 = call noalias i8* @g_path_get_basename(i8* %32)
  store i8* %call36, i8** %label, align 8
  br label %if.end.37

if.end.37:                                        ; preds = %if.else.35, %if.then.33
  %33 = load i8*, i8** %stripped, align 8
  call void @g_free(i8* %33)
  %34 = load i8*, i8** %label, align 8
  %call38 = call i8* @strstr(i8* %34, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.34, i32 0, i32 0)) #7
  store i8* %call38, i8** %ellipsis, align 8
  %35 = load i8*, i8** %ellipsis, align 8
  %tobool39 = icmp ne i8* %35, null
  br i1 %tobool39, label %if.end.42, label %if.then.40

if.then.40:                                       ; preds = %if.end.37
  %36 = load i8*, i8** %label, align 8
  %call41 = call i8* @strstr(i8* %36, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.35, i32 0, i32 0)) #7
  store i8* %call41, i8** %ellipsis, align 8
  br label %if.end.42

if.end.42:                                        ; preds = %if.then.40, %if.end.37
  %37 = load i8*, i8** %ellipsis, align 8
  %tobool43 = icmp ne i8* %37, null
  br i1 %tobool43, label %land.lhs.true.44, label %if.end.49

land.lhs.true.44:                                 ; preds = %if.end.42
  %38 = load i8*, i8** %ellipsis, align 8
  %39 = load i8*, i8** %label, align 8
  %40 = load i8*, i8** %label, align 8
  %call45 = call i64 @strlen(i8* %40) #7
  %add.ptr = getelementptr inbounds i8, i8* %39, i64 %call45
  %add.ptr46 = getelementptr inbounds i8, i8* %add.ptr, i64 -3
  %cmp47 = icmp eq i8* %38, %add.ptr46
  br i1 %cmp47, label %if.then.48, label %if.end.49

if.then.48:                                       ; preds = %land.lhs.true.44
  %41 = load i8*, i8** %ellipsis, align 8
  store i8 0, i8* %41, align 1
  br label %if.end.49

if.end.49:                                        ; preds = %if.then.48, %land.lhs.true.44, %if.end.42
  %42 = load i8*, i8** %label, align 8
  %43 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %proc.addr, align 8
  %label50 = getelementptr inbounds %struct._GimpPlugInProcedure, %struct._GimpPlugInProcedure* %43, i32 0, i32 6
  store i8* %42, i8** %label50, align 8
  %44 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %proc.addr, align 8
  %label51 = getelementptr inbounds %struct._GimpPlugInProcedure, %struct._GimpPlugInProcedure* %44, i32 0, i32 6
  %45 = load i8*, i8** %label51, align 8
  store i8* %45, i8** %retval
  br label %return

return:                                           ; preds = %if.end.49, %if.else.27, %if.then.13, %if.else.9
  %46 = load i8*, i8** %retval
  ret i8* %46
}

; Function Attrs: nounwind
declare i8* @dgettext(i8*, i8*) #5

declare noalias i8* @gimp_strip_uline(i8*) #1

declare noalias i8* @g_path_get_basename(i8*) #1

; Function Attrs: nounwind readonly
declare i8* @strstr(i8*, i8*) #4

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #4

; Function Attrs: nounwind uwtable
define i8* @gimp_plug_in_procedure_get_blurb(%struct._GimpPlugInProcedure* %proc) #3 {
entry:
  %retval = alloca i8*, align 8
  %proc.addr = alloca %struct._GimpPlugInProcedure*, align 8
  %procedure = alloca %struct._GimpProcedure*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpPlugInProcedure* %proc, %struct._GimpPlugInProcedure** %proc.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %proc.addr, align 8
  %1 = bitcast %struct._GimpPlugInProcedure* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_plug_in_procedure_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__func__.gimp_plug_in_procedure_get_blurb, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i32 0, i32 0))
  store i8* null, i8** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %proc.addr, align 8
  %14 = bitcast %struct._GimpPlugInProcedure* %13 to %struct._GTypeInstance*
  %call11 = call i64 @gimp_procedure_get_type() #6
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 %call11)
  %15 = bitcast %struct._GTypeInstance* %call12 to %struct._GimpProcedure*
  store %struct._GimpProcedure* %15, %struct._GimpProcedure** %procedure, align 8
  %16 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %blurb = getelementptr inbounds %struct._GimpProcedure, %struct._GimpProcedure* %16, i32 0, i32 4
  %17 = load i8*, i8** %blurb, align 8
  %tobool13 = icmp ne i8* %17, null
  br i1 %tobool13, label %land.lhs.true.14, label %if.end.22

land.lhs.true.14:                                 ; preds = %do.end
  %18 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %blurb15 = getelementptr inbounds %struct._GimpProcedure, %struct._GimpProcedure* %18, i32 0, i32 4
  %19 = load i8*, i8** %blurb15, align 8
  %call16 = call i64 @strlen(i8* %19) #7
  %tobool17 = icmp ne i64 %call16, 0
  br i1 %tobool17, label %if.then.18, label %if.end.22

if.then.18:                                       ; preds = %land.lhs.true.14
  %20 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %proc.addr, align 8
  %call19 = call i8* @gimp_plug_in_procedure_get_locale_domain(%struct._GimpPlugInProcedure* %20)
  %21 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %blurb20 = getelementptr inbounds %struct._GimpProcedure, %struct._GimpProcedure* %21, i32 0, i32 4
  %22 = load i8*, i8** %blurb20, align 8
  %call21 = call i8* @dgettext(i8* %call19, i8* %22) #8
  store i8* %call21, i8** %retval
  br label %return

if.end.22:                                        ; preds = %land.lhs.true.14, %do.end
  store i8* null, i8** %retval
  br label %return

return:                                           ; preds = %if.end.22, %if.then.18, %if.else.9
  %23 = load i8*, i8** %retval
  ret i8* %23
}

; Function Attrs: nounwind uwtable
define void @gimp_plug_in_procedure_set_icon(%struct._GimpPlugInProcedure* %proc, i32 %icon_type, i8* %icon_data, i32 %icon_data_length) #3 {
entry:
  %proc.addr = alloca %struct._GimpPlugInProcedure*, align 8
  %icon_type.addr = alloca i32, align 4
  %icon_data.addr = alloca i8*, align 8
  %icon_data_length.addr = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpPlugInProcedure* %proc, %struct._GimpPlugInProcedure** %proc.addr, align 8
  store i32 %icon_type, i32* %icon_type.addr, align 4
  store i8* %icon_data, i8** %icon_data.addr, align 8
  store i32 %icon_data_length, i32* %icon_data_length.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %proc.addr, align 8
  %1 = bitcast %struct._GimpPlugInProcedure* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_plug_in_procedure_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__func__.gimp_plug_in_procedure_set_icon, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i32 0, i32 0))
  br label %sw.epilog

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load i32, i32* %icon_type.addr, align 4
  %cmp12 = icmp eq i32 %13, -1
  br i1 %cmp12, label %if.then.14, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.body.11
  %14 = load i8*, i8** %icon_data.addr, align 8
  %cmp13 = icmp ne i8* %14, null
  br i1 %cmp13, label %if.then.14, label %if.else.15

if.then.14:                                       ; preds = %lor.lhs.false, %do.body.11
  br label %if.end.16

if.else.15:                                       ; preds = %lor.lhs.false
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__func__.gimp_plug_in_procedure_set_icon, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.36, i32 0, i32 0))
  br label %sw.epilog

if.end.16:                                        ; preds = %if.then.14
  br label %do.end.17

do.end.17:                                        ; preds = %if.end.16
  br label %do.body.18

do.body.18:                                       ; preds = %do.end.17
  %15 = load i32, i32* %icon_type.addr, align 4
  %cmp19 = icmp eq i32 %15, -1
  br i1 %cmp19, label %if.then.22, label %lor.lhs.false.20

lor.lhs.false.20:                                 ; preds = %do.body.18
  %16 = load i32, i32* %icon_data_length.addr, align 4
  %cmp21 = icmp sgt i32 %16, 0
  br i1 %cmp21, label %if.then.22, label %if.else.23

if.then.22:                                       ; preds = %lor.lhs.false.20, %do.body.18
  br label %if.end.24

if.else.23:                                       ; preds = %lor.lhs.false.20
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__func__.gimp_plug_in_procedure_set_icon, i32 0, i32 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.37, i32 0, i32 0))
  br label %sw.epilog

if.end.24:                                        ; preds = %if.then.22
  br label %do.end.25

do.end.25:                                        ; preds = %if.end.24
  %17 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %proc.addr, align 8
  %icon_data26 = getelementptr inbounds %struct._GimpPlugInProcedure, %struct._GimpPlugInProcedure* %17, i32 0, i32 9
  %18 = load i8*, i8** %icon_data26, align 8
  %tobool27 = icmp ne i8* %18, null
  br i1 %tobool27, label %if.then.28, label %if.end.32

if.then.28:                                       ; preds = %do.end.25
  %19 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %proc.addr, align 8
  %icon_data29 = getelementptr inbounds %struct._GimpPlugInProcedure, %struct._GimpPlugInProcedure* %19, i32 0, i32 9
  %20 = load i8*, i8** %icon_data29, align 8
  call void @g_free(i8* %20)
  %21 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %proc.addr, align 8
  %icon_data_length30 = getelementptr inbounds %struct._GimpPlugInProcedure, %struct._GimpPlugInProcedure* %21, i32 0, i32 8
  store i32 -1, i32* %icon_data_length30, align 4
  %22 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %proc.addr, align 8
  %icon_data31 = getelementptr inbounds %struct._GimpPlugInProcedure, %struct._GimpPlugInProcedure* %22, i32 0, i32 9
  store i8* null, i8** %icon_data31, align 8
  br label %if.end.32

if.end.32:                                        ; preds = %if.then.28, %do.end.25
  %23 = load i32, i32* %icon_type.addr, align 4
  %24 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %proc.addr, align 8
  %icon_type33 = getelementptr inbounds %struct._GimpPlugInProcedure, %struct._GimpPlugInProcedure* %24, i32 0, i32 7
  store i32 %23, i32* %icon_type33, align 4
  %25 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %proc.addr, align 8
  %icon_type34 = getelementptr inbounds %struct._GimpPlugInProcedure, %struct._GimpPlugInProcedure* %25, i32 0, i32 7
  %26 = load i32, i32* %icon_type34, align 4
  switch i32 %26, label %sw.epilog [
    i32 0, label %sw.bb
    i32 2, label %sw.bb
    i32 1, label %sw.bb.38
  ]

sw.bb:                                            ; preds = %if.end.32, %if.end.32
  %27 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %proc.addr, align 8
  %icon_data_length35 = getelementptr inbounds %struct._GimpPlugInProcedure, %struct._GimpPlugInProcedure* %27, i32 0, i32 8
  store i32 -1, i32* %icon_data_length35, align 4
  %28 = load i8*, i8** %icon_data.addr, align 8
  %call36 = call noalias i8* @g_strdup(i8* %28)
  %29 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %proc.addr, align 8
  %icon_data37 = getelementptr inbounds %struct._GimpPlugInProcedure, %struct._GimpPlugInProcedure* %29, i32 0, i32 9
  store i8* %call36, i8** %icon_data37, align 8
  br label %sw.epilog

sw.bb.38:                                         ; preds = %if.end.32
  %30 = load i32, i32* %icon_data_length.addr, align 4
  %31 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %proc.addr, align 8
  %icon_data_length39 = getelementptr inbounds %struct._GimpPlugInProcedure, %struct._GimpPlugInProcedure* %31, i32 0, i32 8
  store i32 %30, i32* %icon_data_length39, align 4
  %32 = load i8*, i8** %icon_data.addr, align 8
  %33 = load i32, i32* %icon_data_length.addr, align 4
  %call40 = call noalias i8* @g_memdup(i8* %32, i32 %33)
  %34 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %proc.addr, align 8
  %icon_data41 = getelementptr inbounds %struct._GimpPlugInProcedure, %struct._GimpPlugInProcedure* %34, i32 0, i32 9
  store i8* %call40, i8** %icon_data41, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.else.9, %if.else.15, %if.else.23, %if.end.32, %sw.bb.38, %sw.bb
  ret void
}

declare noalias i8* @g_memdup(i8*, i32) #1

; Function Attrs: nounwind uwtable
define i8* @gimp_plug_in_procedure_get_stock_id(%struct._GimpPlugInProcedure* %proc) #3 {
entry:
  %retval = alloca i8*, align 8
  %proc.addr = alloca %struct._GimpPlugInProcedure*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpPlugInProcedure* %proc, %struct._GimpPlugInProcedure** %proc.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %proc.addr, align 8
  %1 = bitcast %struct._GimpPlugInProcedure* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_plug_in_procedure_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__func__.gimp_plug_in_procedure_get_stock_id, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i32 0, i32 0))
  store i8* null, i8** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %proc.addr, align 8
  %icon_type = getelementptr inbounds %struct._GimpPlugInProcedure, %struct._GimpPlugInProcedure* %13, i32 0, i32 7
  %14 = load i32, i32* %icon_type, align 4
  switch i32 %14, label %sw.default [
    i32 0, label %sw.bb
  ]

sw.bb:                                            ; preds = %do.end
  %15 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %proc.addr, align 8
  %icon_data = getelementptr inbounds %struct._GimpPlugInProcedure, %struct._GimpPlugInProcedure* %15, i32 0, i32 9
  %16 = load i8*, i8** %icon_data, align 8
  store i8* %16, i8** %retval
  br label %return

sw.default:                                       ; preds = %do.end
  store i8* null, i8** %retval
  br label %return

return:                                           ; preds = %sw.default, %sw.bb, %if.else.9
  %17 = load i8*, i8** %retval
  ret i8* %17
}

; Function Attrs: nounwind uwtable
define %struct._GdkPixbuf* @gimp_plug_in_procedure_get_pixbuf(%struct._GimpPlugInProcedure* %proc) #3 {
entry:
  %retval = alloca %struct._GdkPixbuf*, align 8
  %proc.addr = alloca %struct._GimpPlugInProcedure*, align 8
  %pixbuf = alloca %struct._GdkPixbuf*, align 8
  %error = alloca %struct._GError*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpPlugInProcedure* %proc, %struct._GimpPlugInProcedure** %proc.addr, align 8
  store %struct._GdkPixbuf* null, %struct._GdkPixbuf** %pixbuf, align 8
  store %struct._GError* null, %struct._GError** %error, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %proc.addr, align 8
  %1 = bitcast %struct._GimpPlugInProcedure* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_plug_in_procedure_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__func__.gimp_plug_in_procedure_get_pixbuf, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i32 0, i32 0))
  store %struct._GdkPixbuf* null, %struct._GdkPixbuf** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %proc.addr, align 8
  %icon_type = getelementptr inbounds %struct._GimpPlugInProcedure, %struct._GimpPlugInProcedure* %13, i32 0, i32 7
  %14 = load i32, i32* %icon_type, align 4
  switch i32 %14, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.12
  ]

sw.bb:                                            ; preds = %do.end
  %15 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %proc.addr, align 8
  %icon_data_length = getelementptr inbounds %struct._GimpPlugInProcedure, %struct._GimpPlugInProcedure* %15, i32 0, i32 8
  %16 = load i32, i32* %icon_data_length, align 4
  %17 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %proc.addr, align 8
  %icon_data = getelementptr inbounds %struct._GimpPlugInProcedure, %struct._GimpPlugInProcedure* %17, i32 0, i32 9
  %18 = load i8*, i8** %icon_data, align 8
  %call11 = call %struct._GdkPixbuf* @gdk_pixbuf_new_from_inline(i32 %16, i8* %18, i32 1, %struct._GError** %error)
  store %struct._GdkPixbuf* %call11, %struct._GdkPixbuf** %pixbuf, align 8
  br label %sw.epilog

sw.bb.12:                                         ; preds = %do.end
  %19 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %proc.addr, align 8
  %icon_data13 = getelementptr inbounds %struct._GimpPlugInProcedure, %struct._GimpPlugInProcedure* %19, i32 0, i32 9
  %20 = load i8*, i8** %icon_data13, align 8
  %call14 = call %struct._GdkPixbuf* @gdk_pixbuf_new_from_file(i8* %20, %struct._GError** %error)
  store %struct._GdkPixbuf* %call14, %struct._GdkPixbuf** %pixbuf, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %do.end
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.12, %sw.bb
  %21 = load %struct._GdkPixbuf*, %struct._GdkPixbuf** %pixbuf, align 8
  %tobool15 = icmp ne %struct._GdkPixbuf* %21, null
  br i1 %tobool15, label %if.end.19, label %land.lhs.true.16

land.lhs.true.16:                                 ; preds = %sw.epilog
  %22 = load %struct._GError*, %struct._GError** %error, align 8
  %tobool17 = icmp ne %struct._GError* %22, null
  br i1 %tobool17, label %if.then.18, label %if.end.19

if.then.18:                                       ; preds = %land.lhs.true.16
  %23 = load %struct._GError*, %struct._GError** %error, align 8
  %message = getelementptr inbounds %struct._GError, %struct._GError* %23, i32 0, i32 2
  %24 = load i8*, i8** %message, align 8
  call void (i8*, ...) @g_printerr(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.38, i32 0, i32 0), i8* %24)
  call void @g_clear_error(%struct._GError** %error)
  br label %if.end.19

if.end.19:                                        ; preds = %if.then.18, %land.lhs.true.16, %sw.epilog
  %25 = load %struct._GdkPixbuf*, %struct._GdkPixbuf** %pixbuf, align 8
  store %struct._GdkPixbuf* %25, %struct._GdkPixbuf** %retval
  br label %return

return:                                           ; preds = %if.end.19, %if.else.9
  %26 = load %struct._GdkPixbuf*, %struct._GdkPixbuf** %retval
  ret %struct._GdkPixbuf* %26
}

declare %struct._GdkPixbuf* @gdk_pixbuf_new_from_inline(i32, i8*, i32, %struct._GError**) #1

declare %struct._GdkPixbuf* @gdk_pixbuf_new_from_file(i8*, %struct._GError**) #1

declare void @g_printerr(i8*, ...) #1

declare void @g_clear_error(%struct._GError**) #1

; Function Attrs: nounwind uwtable
define i8* @gimp_plug_in_procedure_get_help_id(%struct._GimpPlugInProcedure* %proc) #3 {
entry:
  %retval = alloca i8*, align 8
  %proc.addr = alloca %struct._GimpPlugInProcedure*, align 8
  %domain = alloca i8*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpPlugInProcedure* %proc, %struct._GimpPlugInProcedure** %proc.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %proc.addr, align 8
  %1 = bitcast %struct._GimpPlugInProcedure* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_plug_in_procedure_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__func__.gimp_plug_in_procedure_get_help_id, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i32 0, i32 0))
  store i8* null, i8** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %proc.addr, align 8
  %call11 = call i8* @gimp_plug_in_procedure_get_help_domain(%struct._GimpPlugInProcedure* %13)
  store i8* %call11, i8** %domain, align 8
  %14 = load i8*, i8** %domain, align 8
  %tobool12 = icmp ne i8* %14, null
  br i1 %tobool12, label %if.then.13, label %if.end.16

if.then.13:                                       ; preds = %do.end
  %15 = load i8*, i8** %domain, align 8
  %16 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %proc.addr, align 8
  %17 = bitcast %struct._GimpPlugInProcedure* %16 to i8*
  %call14 = call i8* @gimp_object_get_name(i8* %17)
  %call15 = call noalias i8* (i8*, ...) @g_strconcat(i8* %15, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.39, i32 0, i32 0), i8* %call14, i8* null)
  store i8* %call15, i8** %retval
  br label %return

if.end.16:                                        ; preds = %do.end
  %18 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %proc.addr, align 8
  %19 = bitcast %struct._GimpPlugInProcedure* %18 to i8*
  %call17 = call i8* @gimp_object_get_name(i8* %19)
  %call18 = call noalias i8* @g_strdup(i8* %call17)
  store i8* %call18, i8** %retval
  br label %return

return:                                           ; preds = %if.end.16, %if.then.13, %if.else.9
  %20 = load i8*, i8** %retval
  ret i8* %20
}

declare noalias i8* @g_strconcat(i8*, ...) #1

; Function Attrs: nounwind uwtable
define i32 @gimp_plug_in_procedure_get_sensitive(%struct._GimpPlugInProcedure* %proc, %struct._GimpDrawable* %drawable) #3 {
entry:
  %retval = alloca i32, align 4
  %proc.addr = alloca %struct._GimpPlugInProcedure*, align 8
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %image_type = alloca i32, align 4
  %sensitive = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst14 = alloca %struct._GTypeInstance*, align 8
  %__t16 = alloca i64, align 8
  %__r19 = alloca i32, align 4
  %tmp34 = alloca i32, align 4
  store %struct._GimpPlugInProcedure* %proc, %struct._GimpPlugInProcedure** %proc.addr, align 8
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  store i32 -1, i32* %image_type, align 4
  store i32 0, i32* %sensitive, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %proc.addr, align 8
  %1 = bitcast %struct._GimpPlugInProcedure* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_plug_in_procedure_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__func__.gimp_plug_in_procedure_get_sensitive, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %cmp12 = icmp eq %struct._GimpDrawable* %13, null
  br i1 %cmp12, label %if.then.36, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.body.11
  %14 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %15 = bitcast %struct._GimpDrawable* %14 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %15, %struct._GTypeInstance** %__inst14, align 8
  %call17 = call i64 @gimp_drawable_get_type() #6
  store i64 %call17, i64* %__t16, align 8
  %16 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst14, align 8
  %tobool20 = icmp ne %struct._GTypeInstance* %16, null
  br i1 %tobool20, label %if.else.22, label %if.then.21

if.then.21:                                       ; preds = %lor.lhs.false
  store i32 0, i32* %__r19, align 4
  br label %if.end.33

if.else.22:                                       ; preds = %lor.lhs.false
  %17 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst14, align 8
  %g_class23 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %17, i32 0, i32 0
  %18 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class23, align 8
  %tobool24 = icmp ne %struct._GTypeClass* %18, null
  br i1 %tobool24, label %land.lhs.true.25, label %if.else.30

land.lhs.true.25:                                 ; preds = %if.else.22
  %19 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst14, align 8
  %g_class26 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %19, i32 0, i32 0
  %20 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class26, align 8
  %g_type27 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %20, i32 0, i32 0
  %21 = load i64, i64* %g_type27, align 8
  %22 = load i64, i64* %__t16, align 8
  %cmp28 = icmp eq i64 %21, %22
  br i1 %cmp28, label %if.then.29, label %if.else.30

if.then.29:                                       ; preds = %land.lhs.true.25
  store i32 1, i32* %__r19, align 4
  br label %if.end.32

if.else.30:                                       ; preds = %land.lhs.true.25, %if.else.22
  %23 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst14, align 8
  %24 = load i64, i64* %__t16, align 8
  %call31 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %23, i64 %24) #7
  store i32 %call31, i32* %__r19, align 4
  br label %if.end.32

if.end.32:                                        ; preds = %if.else.30, %if.then.29
  br label %if.end.33

if.end.33:                                        ; preds = %if.end.32, %if.then.21
  %25 = load i32, i32* %__r19, align 4
  store i32 %25, i32* %tmp34
  %26 = load i32, i32* %tmp34
  %tobool35 = icmp ne i32 %26, 0
  br i1 %tobool35, label %if.then.36, label %if.else.37

if.then.36:                                       ; preds = %if.end.33, %do.body.11
  br label %if.end.38

if.else.37:                                       ; preds = %if.end.33
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__func__.gimp_plug_in_procedure_get_sensitive, i32 0, i32 0), i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.40, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.38:                                        ; preds = %if.then.36
  br label %do.end.39

do.end.39:                                        ; preds = %if.end.38
  %27 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %tobool40 = icmp ne %struct._GimpDrawable* %27, null
  br i1 %tobool40, label %if.then.41, label %if.end.43

if.then.41:                                       ; preds = %do.end.39
  %28 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %call42 = call i32 @gimp_drawable_type(%struct._GimpDrawable* %28)
  store i32 %call42, i32* %image_type, align 4
  br label %if.end.43

if.end.43:                                        ; preds = %if.then.41, %do.end.39
  %29 = load i32, i32* %image_type, align 4
  switch i32 %29, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.44
    i32 2, label %sw.bb.47
    i32 3, label %sw.bb.50
    i32 4, label %sw.bb.53
    i32 5, label %sw.bb.56
  ]

sw.bb:                                            ; preds = %if.end.43
  %30 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %proc.addr, align 8
  %image_types_val = getelementptr inbounds %struct._GimpPlugInProcedure, %struct._GimpPlugInProcedure* %30, i32 0, i32 11
  %31 = load i32, i32* %image_types_val, align 4
  %and = and i32 %31, 1
  store i32 %and, i32* %sensitive, align 4
  br label %sw.epilog

sw.bb.44:                                         ; preds = %if.end.43
  %32 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %proc.addr, align 8
  %image_types_val45 = getelementptr inbounds %struct._GimpPlugInProcedure, %struct._GimpPlugInProcedure* %32, i32 0, i32 11
  %33 = load i32, i32* %image_types_val45, align 4
  %and46 = and i32 %33, 8
  store i32 %and46, i32* %sensitive, align 4
  br label %sw.epilog

sw.bb.47:                                         ; preds = %if.end.43
  %34 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %proc.addr, align 8
  %image_types_val48 = getelementptr inbounds %struct._GimpPlugInProcedure, %struct._GimpPlugInProcedure* %34, i32 0, i32 11
  %35 = load i32, i32* %image_types_val48, align 4
  %and49 = and i32 %35, 2
  store i32 %and49, i32* %sensitive, align 4
  br label %sw.epilog

sw.bb.50:                                         ; preds = %if.end.43
  %36 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %proc.addr, align 8
  %image_types_val51 = getelementptr inbounds %struct._GimpPlugInProcedure, %struct._GimpPlugInProcedure* %36, i32 0, i32 11
  %37 = load i32, i32* %image_types_val51, align 4
  %and52 = and i32 %37, 16
  store i32 %and52, i32* %sensitive, align 4
  br label %sw.epilog

sw.bb.53:                                         ; preds = %if.end.43
  %38 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %proc.addr, align 8
  %image_types_val54 = getelementptr inbounds %struct._GimpPlugInProcedure, %struct._GimpPlugInProcedure* %38, i32 0, i32 11
  %39 = load i32, i32* %image_types_val54, align 4
  %and55 = and i32 %39, 4
  store i32 %and55, i32* %sensitive, align 4
  br label %sw.epilog

sw.bb.56:                                         ; preds = %if.end.43
  %40 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %proc.addr, align 8
  %image_types_val57 = getelementptr inbounds %struct._GimpPlugInProcedure, %struct._GimpPlugInProcedure* %40, i32 0, i32 11
  %41 = load i32, i32* %image_types_val57, align 4
  %and58 = and i32 %41, 32
  store i32 %and58, i32* %sensitive, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %if.end.43
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.56, %sw.bb.53, %sw.bb.50, %sw.bb.47, %sw.bb.44, %sw.bb
  %42 = load i32, i32* %sensitive, align 4
  %tobool59 = icmp ne i32 %42, 0
  %cond = select i1 %tobool59, i32 1, i32 0
  store i32 %cond, i32* %retval
  br label %return

return:                                           ; preds = %sw.epilog, %if.else.37, %if.else.9
  %43 = load i32, i32* %retval
  ret i32 %43
}

; Function Attrs: nounwind readnone
declare i64 @gimp_drawable_get_type() #2

declare i32 @gimp_drawable_type(%struct._GimpDrawable*) #1

; Function Attrs: nounwind uwtable
define void @gimp_plug_in_procedure_set_image_types(%struct._GimpPlugInProcedure* %proc, i8* %image_types) #3 {
entry:
  %proc.addr = alloca %struct._GimpPlugInProcedure*, align 8
  %image_types.addr = alloca i8*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpPlugInProcedure* %proc, %struct._GimpPlugInProcedure** %proc.addr, align 8
  store i8* %image_types, i8** %image_types.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %proc.addr, align 8
  %1 = bitcast %struct._GimpPlugInProcedure* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_plug_in_procedure_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @__func__.gimp_plug_in_procedure_set_image_types, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %proc.addr, align 8
  %image_types11 = getelementptr inbounds %struct._GimpPlugInProcedure, %struct._GimpPlugInProcedure* %13, i32 0, i32 10
  %14 = load i8*, i8** %image_types11, align 8
  %tobool12 = icmp ne i8* %14, null
  br i1 %tobool12, label %if.then.13, label %if.end.15

if.then.13:                                       ; preds = %do.end
  %15 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %proc.addr, align 8
  %image_types14 = getelementptr inbounds %struct._GimpPlugInProcedure, %struct._GimpPlugInProcedure* %15, i32 0, i32 10
  %16 = load i8*, i8** %image_types14, align 8
  call void @g_free(i8* %16)
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.13, %do.end
  %17 = load i8*, i8** %image_types.addr, align 8
  %call16 = call noalias i8* @g_strdup(i8* %17)
  %18 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %proc.addr, align 8
  %image_types17 = getelementptr inbounds %struct._GimpPlugInProcedure, %struct._GimpPlugInProcedure* %18, i32 0, i32 10
  store i8* %call16, i8** %image_types17, align 8
  %19 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %proc.addr, align 8
  %20 = bitcast %struct._GimpPlugInProcedure* %19 to i8*
  %call18 = call i8* @gimp_object_get_name(i8* %20)
  %21 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %proc.addr, align 8
  %image_types19 = getelementptr inbounds %struct._GimpPlugInProcedure, %struct._GimpPlugInProcedure* %21, i32 0, i32 10
  %22 = load i8*, i8** %image_types19, align 8
  %call20 = call i32 @image_types_parse(i8* %call18, i8* %22)
  %23 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %proc.addr, align 8
  %image_types_val = getelementptr inbounds %struct._GimpPlugInProcedure, %struct._GimpPlugInProcedure* %23, i32 0, i32 11
  store i32 %call20, i32* %image_types_val, align 4
  br label %return

return:                                           ; preds = %if.end.15, %if.else.9
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @image_types_parse(i8* %name, i8* %image_types) #3 {
entry:
  %retval = alloca i32, align 4
  %name.addr = alloca i8*, align 8
  %image_types.addr = alloca i8*, align 8
  %type_spec = alloca i8*, align 8
  %types = alloca i32, align 4
  store i8* %name, i8** %name.addr, align 8
  store i8* %image_types, i8** %image_types.addr, align 8
  %0 = load i8*, i8** %image_types.addr, align 8
  store i8* %0, i8** %type_spec, align 8
  store i32 0, i32* %types, align 4
  %1 = load i8*, i8** %image_types.addr, align 8
  %tobool = icmp ne i8* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %types, align 4
  store i32 %2, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  br label %while.cond

while.cond:                                       ; preds = %if.end.101, %if.end
  %3 = load i8*, i8** %image_types.addr, align 8
  %4 = load i8, i8* %3, align 1
  %tobool1 = icmp ne i8 %4, 0
  br i1 %tobool1, label %while.body, label %while.end.102

while.body:                                       ; preds = %while.cond
  br label %while.cond.2

while.cond.2:                                     ; preds = %while.body.12, %while.body
  %5 = load i8*, i8** %image_types.addr, align 8
  %6 = load i8, i8* %5, align 1
  %conv = sext i8 %6 to i32
  %tobool3 = icmp ne i32 %conv, 0
  br i1 %tobool3, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond.2
  %7 = load i8*, i8** %image_types.addr, align 8
  %8 = load i8, i8* %7, align 1
  %conv4 = sext i8 %8 to i32
  %cmp = icmp eq i32 %conv4, 32
  br i1 %cmp, label %lor.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.rhs
  %9 = load i8*, i8** %image_types.addr, align 8
  %10 = load i8, i8* %9, align 1
  %conv6 = sext i8 %10 to i32
  %cmp7 = icmp eq i32 %conv6, 9
  br i1 %cmp7, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %lor.lhs.false
  %11 = load i8*, i8** %image_types.addr, align 8
  %12 = load i8, i8* %11, align 1
  %conv9 = sext i8 %12 to i32
  %cmp10 = icmp eq i32 %conv9, 44
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false, %land.rhs
  %13 = phi i1 [ true, %lor.lhs.false ], [ true, %land.rhs ], [ %cmp10, %lor.rhs ]
  br label %land.end

land.end:                                         ; preds = %lor.end, %while.cond.2
  %14 = phi i1 [ false, %while.cond.2 ], [ %13, %lor.end ]
  br i1 %14, label %while.body.12, label %while.end

while.body.12:                                    ; preds = %land.end
  %15 = load i8*, i8** %image_types.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %15, i32 1
  store i8* %incdec.ptr, i8** %image_types.addr, align 8
  br label %while.cond.2

while.end:                                        ; preds = %land.end
  %16 = load i8*, i8** %image_types.addr, align 8
  %17 = load i8, i8* %16, align 1
  %tobool13 = icmp ne i8 %17, 0
  br i1 %tobool13, label %if.then.14, label %if.end.101

if.then.14:                                       ; preds = %while.end
  %18 = load i8*, i8** %image_types.addr, align 8
  %call = call i32 @g_str_has_prefix(i8* %18, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.46, i32 0, i32 0))
  %tobool15 = icmp ne i32 %call, 0
  br i1 %tobool15, label %if.then.16, label %if.else

if.then.16:                                       ; preds = %if.then.14
  %19 = load i32, i32* %types, align 4
  %or = or i32 %19, 8
  store i32 %or, i32* %types, align 4
  %20 = load i8*, i8** %image_types.addr, align 8
  %add.ptr = getelementptr inbounds i8, i8* %20, i64 4
  store i8* %add.ptr, i8** %image_types.addr, align 8
  br label %if.end.100

if.else:                                          ; preds = %if.then.14
  %21 = load i8*, i8** %image_types.addr, align 8
  %call17 = call i32 @g_str_has_prefix(i8* %21, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.47, i32 0, i32 0))
  %tobool18 = icmp ne i32 %call17, 0
  br i1 %tobool18, label %if.then.19, label %if.else.22

if.then.19:                                       ; preds = %if.else
  %22 = load i32, i32* %types, align 4
  %or20 = or i32 %22, 9
  store i32 %or20, i32* %types, align 4
  %23 = load i8*, i8** %image_types.addr, align 8
  %add.ptr21 = getelementptr inbounds i8, i8* %23, i64 4
  store i8* %add.ptr21, i8** %image_types.addr, align 8
  br label %if.end.99

if.else.22:                                       ; preds = %if.else
  %24 = load i8*, i8** %image_types.addr, align 8
  %call23 = call i32 @g_str_has_prefix(i8* %24, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.48, i32 0, i32 0))
  %tobool24 = icmp ne i32 %call23, 0
  br i1 %tobool24, label %if.then.25, label %if.else.28

if.then.25:                                       ; preds = %if.else.22
  %25 = load i32, i32* %types, align 4
  %or26 = or i32 %25, 1
  store i32 %or26, i32* %types, align 4
  %26 = load i8*, i8** %image_types.addr, align 8
  %add.ptr27 = getelementptr inbounds i8, i8* %26, i64 3
  store i8* %add.ptr27, i8** %image_types.addr, align 8
  br label %if.end.98

if.else.28:                                       ; preds = %if.else.22
  %27 = load i8*, i8** %image_types.addr, align 8
  %call29 = call i32 @g_str_has_prefix(i8* %27, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.49, i32 0, i32 0))
  %tobool30 = icmp ne i32 %call29, 0
  br i1 %tobool30, label %if.then.31, label %if.else.34

if.then.31:                                       ; preds = %if.else.28
  %28 = load i32, i32* %types, align 4
  %or32 = or i32 %28, 16
  store i32 %or32, i32* %types, align 4
  %29 = load i8*, i8** %image_types.addr, align 8
  %add.ptr33 = getelementptr inbounds i8, i8* %29, i64 5
  store i8* %add.ptr33, i8** %image_types.addr, align 8
  br label %if.end.97

if.else.34:                                       ; preds = %if.else.28
  %30 = load i8*, i8** %image_types.addr, align 8
  %call35 = call i32 @g_str_has_prefix(i8* %30, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.50, i32 0, i32 0))
  %tobool36 = icmp ne i32 %call35, 0
  br i1 %tobool36, label %if.then.37, label %if.else.40

if.then.37:                                       ; preds = %if.else.34
  %31 = load i32, i32* %types, align 4
  %or38 = or i32 %31, 18
  store i32 %or38, i32* %types, align 4
  %32 = load i8*, i8** %image_types.addr, align 8
  %add.ptr39 = getelementptr inbounds i8, i8* %32, i64 5
  store i8* %add.ptr39, i8** %image_types.addr, align 8
  br label %if.end.96

if.else.40:                                       ; preds = %if.else.34
  %33 = load i8*, i8** %image_types.addr, align 8
  %call41 = call i32 @g_str_has_prefix(i8* %33, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.51, i32 0, i32 0))
  %tobool42 = icmp ne i32 %call41, 0
  br i1 %tobool42, label %if.then.43, label %if.else.46

if.then.43:                                       ; preds = %if.else.40
  %34 = load i32, i32* %types, align 4
  %or44 = or i32 %34, 2
  store i32 %or44, i32* %types, align 4
  %35 = load i8*, i8** %image_types.addr, align 8
  %add.ptr45 = getelementptr inbounds i8, i8* %35, i64 4
  store i8* %add.ptr45, i8** %image_types.addr, align 8
  br label %if.end.95

if.else.46:                                       ; preds = %if.else.40
  %36 = load i8*, i8** %image_types.addr, align 8
  %call47 = call i32 @g_str_has_prefix(i8* %36, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.52, i32 0, i32 0))
  %tobool48 = icmp ne i32 %call47, 0
  br i1 %tobool48, label %if.then.49, label %if.else.52

if.then.49:                                       ; preds = %if.else.46
  %37 = load i32, i32* %types, align 4
  %or50 = or i32 %37, 32
  store i32 %or50, i32* %types, align 4
  %38 = load i8*, i8** %image_types.addr, align 8
  %add.ptr51 = getelementptr inbounds i8, i8* %38, i64 8
  store i8* %add.ptr51, i8** %image_types.addr, align 8
  br label %if.end.94

if.else.52:                                       ; preds = %if.else.46
  %39 = load i8*, i8** %image_types.addr, align 8
  %call53 = call i32 @g_str_has_prefix(i8* %39, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.53, i32 0, i32 0))
  %tobool54 = icmp ne i32 %call53, 0
  br i1 %tobool54, label %if.then.55, label %if.else.58

if.then.55:                                       ; preds = %if.else.52
  %40 = load i32, i32* %types, align 4
  %or56 = or i32 %40, 36
  store i32 %or56, i32* %types, align 4
  %41 = load i8*, i8** %image_types.addr, align 8
  %add.ptr57 = getelementptr inbounds i8, i8* %41, i64 8
  store i8* %add.ptr57, i8** %image_types.addr, align 8
  br label %if.end.93

if.else.58:                                       ; preds = %if.else.52
  %42 = load i8*, i8** %image_types.addr, align 8
  %call59 = call i32 @g_str_has_prefix(i8* %42, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.54, i32 0, i32 0))
  %tobool60 = icmp ne i32 %call59, 0
  br i1 %tobool60, label %if.then.61, label %if.else.64

if.then.61:                                       ; preds = %if.else.58
  %43 = load i32, i32* %types, align 4
  %or62 = or i32 %43, 4
  store i32 %or62, i32* %types, align 4
  %44 = load i8*, i8** %image_types.addr, align 8
  %add.ptr63 = getelementptr inbounds i8, i8* %44, i64 7
  store i8* %add.ptr63, i8** %image_types.addr, align 8
  br label %if.end.92

if.else.64:                                       ; preds = %if.else.58
  %45 = load i8*, i8** %image_types.addr, align 8
  %call65 = call i32 @g_str_has_prefix(i8* %45, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.55, i32 0, i32 0))
  %tobool66 = icmp ne i32 %call65, 0
  br i1 %tobool66, label %if.then.67, label %if.else.70

if.then.67:                                       ; preds = %if.else.64
  %46 = load i32, i32* %types, align 4
  %or68 = or i32 %46, 63
  store i32 %or68, i32* %types, align 4
  %47 = load i8*, i8** %image_types.addr, align 8
  %add.ptr69 = getelementptr inbounds i8, i8* %47, i64 1
  store i8* %add.ptr69, i8** %image_types.addr, align 8
  br label %if.end.91

if.else.70:                                       ; preds = %if.else.64
  %48 = load i8*, i8** %name.addr, align 8
  %49 = load i8*, i8** %type_spec, align 8
  call void (i8*, ...) @g_printerr(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.56, i32 0, i32 0), i8* %48, i8* %49)
  br label %while.cond.71

while.cond.71:                                    ; preds = %while.body.88, %if.else.70
  %50 = load i8*, i8** %image_types.addr, align 8
  %51 = load i8, i8* %50, align 1
  %conv72 = sext i8 %51 to i32
  %tobool73 = icmp ne i32 %conv72, 0
  br i1 %tobool73, label %land.rhs.74, label %land.end.87

land.rhs.74:                                      ; preds = %while.cond.71
  %52 = load i8*, i8** %image_types.addr, align 8
  %53 = load i8, i8* %52, align 1
  %conv75 = sext i8 %53 to i32
  %cmp76 = icmp ne i32 %conv75, 32
  br i1 %cmp76, label %lor.end.86, label %lor.lhs.false.78

lor.lhs.false.78:                                 ; preds = %land.rhs.74
  %54 = load i8*, i8** %image_types.addr, align 8
  %55 = load i8, i8* %54, align 1
  %conv79 = sext i8 %55 to i32
  %cmp80 = icmp ne i32 %conv79, 9
  br i1 %cmp80, label %lor.end.86, label %lor.rhs.82

lor.rhs.82:                                       ; preds = %lor.lhs.false.78
  %56 = load i8*, i8** %image_types.addr, align 8
  %57 = load i8, i8* %56, align 1
  %conv83 = sext i8 %57 to i32
  %cmp84 = icmp ne i32 %conv83, 44
  br label %lor.end.86

lor.end.86:                                       ; preds = %lor.rhs.82, %lor.lhs.false.78, %land.rhs.74
  %58 = phi i1 [ true, %lor.lhs.false.78 ], [ true, %land.rhs.74 ], [ %cmp84, %lor.rhs.82 ]
  br label %land.end.87

land.end.87:                                      ; preds = %lor.end.86, %while.cond.71
  %59 = phi i1 [ false, %while.cond.71 ], [ %58, %lor.end.86 ]
  br i1 %59, label %while.body.88, label %while.end.90

while.body.88:                                    ; preds = %land.end.87
  %60 = load i8*, i8** %image_types.addr, align 8
  %incdec.ptr89 = getelementptr inbounds i8, i8* %60, i32 1
  store i8* %incdec.ptr89, i8** %image_types.addr, align 8
  br label %while.cond.71

while.end.90:                                     ; preds = %land.end.87
  br label %if.end.91

if.end.91:                                        ; preds = %while.end.90, %if.then.67
  br label %if.end.92

if.end.92:                                        ; preds = %if.end.91, %if.then.61
  br label %if.end.93

if.end.93:                                        ; preds = %if.end.92, %if.then.55
  br label %if.end.94

if.end.94:                                        ; preds = %if.end.93, %if.then.49
  br label %if.end.95

if.end.95:                                        ; preds = %if.end.94, %if.then.43
  br label %if.end.96

if.end.96:                                        ; preds = %if.end.95, %if.then.37
  br label %if.end.97

if.end.97:                                        ; preds = %if.end.96, %if.then.31
  br label %if.end.98

if.end.98:                                        ; preds = %if.end.97, %if.then.25
  br label %if.end.99

if.end.99:                                        ; preds = %if.end.98, %if.then.19
  br label %if.end.100

if.end.100:                                       ; preds = %if.end.99, %if.then.16
  br label %if.end.101

if.end.101:                                       ; preds = %if.end.100, %while.end
  br label %while.cond

while.end.102:                                    ; preds = %while.cond
  %61 = load i32, i32* %types, align 4
  store i32 %61, i32* %retval
  br label %return

return:                                           ; preds = %while.end.102, %if.then
  %62 = load i32, i32* %retval
  ret i32 %62
}

; Function Attrs: nounwind uwtable
define void @gimp_plug_in_procedure_set_file_proc(%struct._GimpPlugInProcedure* %proc, i8* %extensions, i8* %prefixes, i8* %magics) #3 {
entry:
  %proc.addr = alloca %struct._GimpPlugInProcedure*, align 8
  %extensions.addr = alloca i8*, align 8
  %prefixes.addr = alloca i8*, align 8
  %magics.addr = alloca i8*, align 8
  %list = alloca %struct._GSList*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %prefix = alloca i8*, align 8
  store %struct._GimpPlugInProcedure* %proc, %struct._GimpPlugInProcedure** %proc.addr, align 8
  store i8* %extensions, i8** %extensions.addr, align 8
  store i8* %prefixes, i8** %prefixes.addr, align 8
  store i8* %magics, i8** %magics.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %proc.addr, align 8
  %1 = bitcast %struct._GimpPlugInProcedure* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_plug_in_procedure_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__func__.gimp_plug_in_procedure_set_file_proc, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %proc.addr, align 8
  %file_proc = getelementptr inbounds %struct._GimpPlugInProcedure, %struct._GimpPlugInProcedure* %13, i32 0, i32 14
  store i32 1, i32* %file_proc, align 4
  %14 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %proc.addr, align 8
  %extensions11 = getelementptr inbounds %struct._GimpPlugInProcedure, %struct._GimpPlugInProcedure* %14, i32 0, i32 15
  %15 = load i8*, i8** %extensions11, align 8
  %16 = load i8*, i8** %extensions.addr, align 8
  %cmp12 = icmp ne i8* %15, %16
  br i1 %cmp12, label %if.then.13, label %if.end.21

if.then.13:                                       ; preds = %do.end
  %17 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %proc.addr, align 8
  %extensions14 = getelementptr inbounds %struct._GimpPlugInProcedure, %struct._GimpPlugInProcedure* %17, i32 0, i32 15
  %18 = load i8*, i8** %extensions14, align 8
  %tobool15 = icmp ne i8* %18, null
  br i1 %tobool15, label %if.then.16, label %if.end.18

if.then.16:                                       ; preds = %if.then.13
  %19 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %proc.addr, align 8
  %extensions17 = getelementptr inbounds %struct._GimpPlugInProcedure, %struct._GimpPlugInProcedure* %19, i32 0, i32 15
  %20 = load i8*, i8** %extensions17, align 8
  call void @g_free(i8* %20)
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.16, %if.then.13
  %21 = load i8*, i8** %extensions.addr, align 8
  %call19 = call noalias i8* @g_strdup(i8* %21)
  %22 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %proc.addr, align 8
  %extensions20 = getelementptr inbounds %struct._GimpPlugInProcedure, %struct._GimpPlugInProcedure* %22, i32 0, i32 15
  store i8* %call19, i8** %extensions20, align 8
  br label %if.end.21

if.end.21:                                        ; preds = %if.end.18, %do.end
  %23 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %proc.addr, align 8
  %extensions_list = getelementptr inbounds %struct._GimpPlugInProcedure, %struct._GimpPlugInProcedure* %23, i32 0, i32 19
  %24 = load %struct._GSList*, %struct._GSList** %extensions_list, align 8
  %tobool22 = icmp ne %struct._GSList* %24, null
  br i1 %tobool22, label %if.then.23, label %if.end.25

if.then.23:                                       ; preds = %if.end.21
  %25 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %proc.addr, align 8
  %extensions_list24 = getelementptr inbounds %struct._GimpPlugInProcedure, %struct._GimpPlugInProcedure* %25, i32 0, i32 19
  %26 = load %struct._GSList*, %struct._GSList** %extensions_list24, align 8
  call void @g_slist_free_full(%struct._GSList* %26, void (i8*)* @g_free)
  br label %if.end.25

if.end.25:                                        ; preds = %if.then.23, %if.end.21
  %27 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %proc.addr, align 8
  %extensions26 = getelementptr inbounds %struct._GimpPlugInProcedure, %struct._GimpPlugInProcedure* %27, i32 0, i32 15
  %28 = load i8*, i8** %extensions26, align 8
  %call27 = call %struct._GSList* @extensions_parse(i8* %28)
  %29 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %proc.addr, align 8
  %extensions_list28 = getelementptr inbounds %struct._GimpPlugInProcedure, %struct._GimpPlugInProcedure* %29, i32 0, i32 19
  store %struct._GSList* %call27, %struct._GSList** %extensions_list28, align 8
  %30 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %proc.addr, align 8
  %prefixes29 = getelementptr inbounds %struct._GimpPlugInProcedure, %struct._GimpPlugInProcedure* %30, i32 0, i32 16
  %31 = load i8*, i8** %prefixes29, align 8
  %32 = load i8*, i8** %prefixes.addr, align 8
  %cmp30 = icmp ne i8* %31, %32
  br i1 %cmp30, label %if.then.31, label %if.end.39

if.then.31:                                       ; preds = %if.end.25
  %33 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %proc.addr, align 8
  %prefixes32 = getelementptr inbounds %struct._GimpPlugInProcedure, %struct._GimpPlugInProcedure* %33, i32 0, i32 16
  %34 = load i8*, i8** %prefixes32, align 8
  %tobool33 = icmp ne i8* %34, null
  br i1 %tobool33, label %if.then.34, label %if.end.36

if.then.34:                                       ; preds = %if.then.31
  %35 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %proc.addr, align 8
  %prefixes35 = getelementptr inbounds %struct._GimpPlugInProcedure, %struct._GimpPlugInProcedure* %35, i32 0, i32 16
  %36 = load i8*, i8** %prefixes35, align 8
  call void @g_free(i8* %36)
  br label %if.end.36

if.end.36:                                        ; preds = %if.then.34, %if.then.31
  %37 = load i8*, i8** %prefixes.addr, align 8
  %call37 = call noalias i8* @g_strdup(i8* %37)
  %38 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %proc.addr, align 8
  %prefixes38 = getelementptr inbounds %struct._GimpPlugInProcedure, %struct._GimpPlugInProcedure* %38, i32 0, i32 16
  store i8* %call37, i8** %prefixes38, align 8
  br label %if.end.39

if.end.39:                                        ; preds = %if.end.36, %if.end.25
  %39 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %proc.addr, align 8
  %prefixes_list = getelementptr inbounds %struct._GimpPlugInProcedure, %struct._GimpPlugInProcedure* %39, i32 0, i32 20
  %40 = load %struct._GSList*, %struct._GSList** %prefixes_list, align 8
  %tobool40 = icmp ne %struct._GSList* %40, null
  br i1 %tobool40, label %if.then.41, label %if.end.43

if.then.41:                                       ; preds = %if.end.39
  %41 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %proc.addr, align 8
  %prefixes_list42 = getelementptr inbounds %struct._GimpPlugInProcedure, %struct._GimpPlugInProcedure* %41, i32 0, i32 20
  %42 = load %struct._GSList*, %struct._GSList** %prefixes_list42, align 8
  call void @g_slist_free_full(%struct._GSList* %42, void (i8*)* @g_free)
  br label %if.end.43

if.end.43:                                        ; preds = %if.then.41, %if.end.39
  %43 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %proc.addr, align 8
  %prefixes44 = getelementptr inbounds %struct._GimpPlugInProcedure, %struct._GimpPlugInProcedure* %43, i32 0, i32 16
  %44 = load i8*, i8** %prefixes44, align 8
  %call45 = call %struct._GSList* @extensions_parse(i8* %44)
  %45 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %proc.addr, align 8
  %prefixes_list46 = getelementptr inbounds %struct._GimpPlugInProcedure, %struct._GimpPlugInProcedure* %45, i32 0, i32 20
  store %struct._GSList* %call45, %struct._GSList** %prefixes_list46, align 8
  %46 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %proc.addr, align 8
  %prefixes_list47 = getelementptr inbounds %struct._GimpPlugInProcedure, %struct._GimpPlugInProcedure* %46, i32 0, i32 20
  %47 = load %struct._GSList*, %struct._GSList** %prefixes_list47, align 8
  store %struct._GSList* %47, %struct._GSList** %list, align 8
  br label %for.cond

for.cond:                                         ; preds = %cond.end, %if.end.43
  %48 = load %struct._GSList*, %struct._GSList** %list, align 8
  %tobool48 = icmp ne %struct._GSList* %48, null
  br i1 %tobool48, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %49 = load %struct._GSList*, %struct._GSList** %list, align 8
  %data = getelementptr inbounds %struct._GSList, %struct._GSList* %49, i32 0, i32 0
  %50 = load i8*, i8** %data, align 8
  store i8* %50, i8** %prefix, align 8
  %51 = load i8*, i8** %prefix, align 8
  %tobool50 = icmp ne i8* %51, null
  br i1 %tobool50, label %land.lhs.true.51, label %if.end.59

land.lhs.true.51:                                 ; preds = %for.body
  %52 = load i8*, i8** %prefix, align 8
  %call52 = call i32 @strcmp(i8* %52, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.41, i32 0, i32 0)) #7
  %cmp53 = icmp eq i32 %call52, 0
  br i1 %cmp53, label %if.then.54, label %if.end.59

if.then.54:                                       ; preds = %land.lhs.true.51
  %53 = load %struct._GSList*, %struct._GSList** %list, align 8
  %data55 = getelementptr inbounds %struct._GSList, %struct._GSList* %53, i32 0, i32 0
  %54 = load i8*, i8** %data55, align 8
  call void @g_free(i8* %54)
  %55 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %proc.addr, align 8
  %prefixes_list56 = getelementptr inbounds %struct._GimpPlugInProcedure, %struct._GimpPlugInProcedure* %55, i32 0, i32 20
  %56 = load %struct._GSList*, %struct._GSList** %prefixes_list56, align 8
  %57 = load %struct._GSList*, %struct._GSList** %list, align 8
  %call57 = call %struct._GSList* @g_slist_delete_link(%struct._GSList* %56, %struct._GSList* %57)
  %58 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %proc.addr, align 8
  %prefixes_list58 = getelementptr inbounds %struct._GimpPlugInProcedure, %struct._GimpPlugInProcedure* %58, i32 0, i32 20
  store %struct._GSList* %call57, %struct._GSList** %prefixes_list58, align 8
  br label %for.end

if.end.59:                                        ; preds = %land.lhs.true.51, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.59
  %59 = load %struct._GSList*, %struct._GSList** %list, align 8
  %tobool60 = icmp ne %struct._GSList* %59, null
  br i1 %tobool60, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.inc
  %60 = load %struct._GSList*, %struct._GSList** %list, align 8
  %next = getelementptr inbounds %struct._GSList, %struct._GSList* %60, i32 0, i32 1
  %61 = load %struct._GSList*, %struct._GSList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.inc
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GSList* [ %61, %cond.true ], [ null, %cond.false ]
  store %struct._GSList* %cond, %struct._GSList** %list, align 8
  br label %for.cond

for.end:                                          ; preds = %if.then.54, %for.cond
  %62 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %proc.addr, align 8
  %magics61 = getelementptr inbounds %struct._GimpPlugInProcedure, %struct._GimpPlugInProcedure* %62, i32 0, i32 17
  %63 = load i8*, i8** %magics61, align 8
  %64 = load i8*, i8** %magics.addr, align 8
  %cmp62 = icmp ne i8* %63, %64
  br i1 %cmp62, label %if.then.63, label %if.end.71

if.then.63:                                       ; preds = %for.end
  %65 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %proc.addr, align 8
  %magics64 = getelementptr inbounds %struct._GimpPlugInProcedure, %struct._GimpPlugInProcedure* %65, i32 0, i32 17
  %66 = load i8*, i8** %magics64, align 8
  %tobool65 = icmp ne i8* %66, null
  br i1 %tobool65, label %if.then.66, label %if.end.68

if.then.66:                                       ; preds = %if.then.63
  %67 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %proc.addr, align 8
  %magics67 = getelementptr inbounds %struct._GimpPlugInProcedure, %struct._GimpPlugInProcedure* %67, i32 0, i32 17
  %68 = load i8*, i8** %magics67, align 8
  call void @g_free(i8* %68)
  br label %if.end.68

if.end.68:                                        ; preds = %if.then.66, %if.then.63
  %69 = load i8*, i8** %magics.addr, align 8
  %call69 = call noalias i8* @g_strdup(i8* %69)
  %70 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %proc.addr, align 8
  %magics70 = getelementptr inbounds %struct._GimpPlugInProcedure, %struct._GimpPlugInProcedure* %70, i32 0, i32 17
  store i8* %call69, i8** %magics70, align 8
  br label %if.end.71

if.end.71:                                        ; preds = %if.end.68, %for.end
  %71 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %proc.addr, align 8
  %magics_list = getelementptr inbounds %struct._GimpPlugInProcedure, %struct._GimpPlugInProcedure* %71, i32 0, i32 21
  %72 = load %struct._GSList*, %struct._GSList** %magics_list, align 8
  %tobool72 = icmp ne %struct._GSList* %72, null
  br i1 %tobool72, label %if.then.73, label %if.end.75

if.then.73:                                       ; preds = %if.end.71
  %73 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %proc.addr, align 8
  %magics_list74 = getelementptr inbounds %struct._GimpPlugInProcedure, %struct._GimpPlugInProcedure* %73, i32 0, i32 21
  %74 = load %struct._GSList*, %struct._GSList** %magics_list74, align 8
  call void @g_slist_free_full(%struct._GSList* %74, void (i8*)* @g_free)
  br label %if.end.75

if.end.75:                                        ; preds = %if.then.73, %if.end.71
  %75 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %proc.addr, align 8
  %magics76 = getelementptr inbounds %struct._GimpPlugInProcedure, %struct._GimpPlugInProcedure* %75, i32 0, i32 17
  %76 = load i8*, i8** %magics76, align 8
  %call77 = call %struct._GSList* @extensions_parse(i8* %76)
  %77 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %proc.addr, align 8
  %magics_list78 = getelementptr inbounds %struct._GimpPlugInProcedure, %struct._GimpPlugInProcedure* %77, i32 0, i32 21
  store %struct._GSList* %call77, %struct._GSList** %magics_list78, align 8
  br label %return

return:                                           ; preds = %if.end.75, %if.else.9
  ret void
}

declare void @g_slist_free_full(%struct._GSList*, void (i8*)*) #1

; Function Attrs: nounwind uwtable
define internal %struct._GSList* @extensions_parse(i8* %extensions) #3 {
entry:
  %extensions.addr = alloca i8*, align 8
  %list = alloca %struct._GSList*, align 8
  %extension = alloca i8*, align 8
  %next_token = alloca i8*, align 8
  store i8* %extensions, i8** %extensions.addr, align 8
  store %struct._GSList* null, %struct._GSList** %list, align 8
  %0 = load i8*, i8** %extensions.addr, align 8
  %tobool = icmp ne i8* %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %extensions.addr, align 8
  %call = call noalias i8* @g_strdup(i8* %1)
  store i8* %call, i8** %extensions.addr, align 8
  %2 = load i8*, i8** %extensions.addr, align 8
  store i8* %2, i8** %next_token, align 8
  %3 = load i8*, i8** %next_token, align 8
  %call1 = call i8* @strtok(i8* %3, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.57, i32 0, i32 0)) #8
  store i8* %call1, i8** %extension, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then
  %4 = load i8*, i8** %extension, align 8
  %tobool2 = icmp ne i8* %4, null
  br i1 %tobool2, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %5 = load %struct._GSList*, %struct._GSList** %list, align 8
  %6 = load i8*, i8** %extension, align 8
  %call3 = call noalias i8* @g_strdup(i8* %6)
  %call4 = call %struct._GSList* @g_slist_prepend(%struct._GSList* %5, i8* %call3)
  store %struct._GSList* %call4, %struct._GSList** %list, align 8
  %call5 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.57, i32 0, i32 0)) #8
  store i8* %call5, i8** %extension, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %7 = load i8*, i8** %extensions.addr, align 8
  call void @g_free(i8* %7)
  br label %if.end

if.end:                                           ; preds = %while.end, %entry
  %8 = load %struct._GSList*, %struct._GSList** %list, align 8
  %call6 = call %struct._GSList* @g_slist_reverse(%struct._GSList* %8)
  ret %struct._GSList* %call6
}

declare %struct._GSList* @g_slist_delete_link(%struct._GSList*, %struct._GSList*) #1

; Function Attrs: nounwind uwtable
define void @gimp_plug_in_procedure_set_mime_type(%struct._GimpPlugInProcedure* %proc, i8* %mime_type) #3 {
entry:
  %proc.addr = alloca %struct._GimpPlugInProcedure*, align 8
  %mime_type.addr = alloca i8*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpPlugInProcedure* %proc, %struct._GimpPlugInProcedure** %proc.addr, align 8
  store i8* %mime_type, i8** %mime_type.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %proc.addr, align 8
  %1 = bitcast %struct._GimpPlugInProcedure* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_plug_in_procedure_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__func__.gimp_plug_in_procedure_set_mime_type, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %proc.addr, align 8
  %mime_type11 = getelementptr inbounds %struct._GimpPlugInProcedure, %struct._GimpPlugInProcedure* %13, i32 0, i32 18
  %14 = load i8*, i8** %mime_type11, align 8
  %tobool12 = icmp ne i8* %14, null
  br i1 %tobool12, label %if.then.13, label %if.end.15

if.then.13:                                       ; preds = %do.end
  %15 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %proc.addr, align 8
  %mime_type14 = getelementptr inbounds %struct._GimpPlugInProcedure, %struct._GimpPlugInProcedure* %15, i32 0, i32 18
  %16 = load i8*, i8** %mime_type14, align 8
  call void @g_free(i8* %16)
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.13, %do.end
  %17 = load i8*, i8** %mime_type.addr, align 8
  %call16 = call noalias i8* @g_strdup(i8* %17)
  %18 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %proc.addr, align 8
  %mime_type17 = getelementptr inbounds %struct._GimpPlugInProcedure, %struct._GimpPlugInProcedure* %18, i32 0, i32 18
  store i8* %call16, i8** %mime_type17, align 8
  br label %return

return:                                           ; preds = %if.end.15, %if.else.9
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_plug_in_procedure_set_thumb_loader(%struct._GimpPlugInProcedure* %proc, i8* %thumb_loader) #3 {
entry:
  %proc.addr = alloca %struct._GimpPlugInProcedure*, align 8
  %thumb_loader.addr = alloca i8*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpPlugInProcedure* %proc, %struct._GimpPlugInProcedure** %proc.addr, align 8
  store i8* %thumb_loader, i8** %thumb_loader.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %proc.addr, align 8
  %1 = bitcast %struct._GimpPlugInProcedure* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_plug_in_procedure_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__func__.gimp_plug_in_procedure_set_thumb_loader, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %proc.addr, align 8
  %thumb_loader11 = getelementptr inbounds %struct._GimpPlugInProcedure, %struct._GimpPlugInProcedure* %13, i32 0, i32 22
  %14 = load i8*, i8** %thumb_loader11, align 8
  %tobool12 = icmp ne i8* %14, null
  br i1 %tobool12, label %if.then.13, label %if.end.15

if.then.13:                                       ; preds = %do.end
  %15 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %proc.addr, align 8
  %thumb_loader14 = getelementptr inbounds %struct._GimpPlugInProcedure, %struct._GimpPlugInProcedure* %15, i32 0, i32 22
  %16 = load i8*, i8** %thumb_loader14, align 8
  call void @g_free(i8* %16)
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.13, %do.end
  %17 = load i8*, i8** %thumb_loader.addr, align 8
  %call16 = call noalias i8* @g_strdup(i8* %17)
  %18 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %proc.addr, align 8
  %thumb_loader17 = getelementptr inbounds %struct._GimpPlugInProcedure, %struct._GimpPlugInProcedure* %18, i32 0, i32 22
  store i8* %call16, i8** %thumb_loader17, align 8
  br label %return

return:                                           ; preds = %if.end.15, %if.else.9
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_plug_in_procedure_handle_return_values(%struct._GimpPlugInProcedure* %proc, %struct._Gimp* %gimp, %struct._GimpProgress* %progress, %struct._GValueArray* %return_vals) #3 {
entry:
  %proc.addr = alloca %struct._GimpPlugInProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %return_vals.addr = alloca %struct._GValueArray*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__val = alloca %struct._GValue*, align 8
  %__t35 = alloca i64, align 8
  %__r37 = alloca i32, align 4
  %tmp48 = alloca i32, align 4
  %__val63 = alloca %struct._GValue*, align 8
  %__t67 = alloca i64, align 8
  %__r69 = alloca i32, align 4
  %tmp80 = alloca i32, align 4
  store %struct._GimpPlugInProcedure* %proc, %struct._GimpPlugInProcedure** %proc.addr, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store %struct._GValueArray* %return_vals, %struct._GValueArray** %return_vals.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %proc.addr, align 8
  %1 = bitcast %struct._GimpPlugInProcedure* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_plug_in_procedure_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @__func__.gimp_plug_in_procedure_handle_return_values, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i32 0, i32 0))
  br label %sw.epilog

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GValueArray*, %struct._GValueArray** %return_vals.addr, align 8
  %cmp12 = icmp ne %struct._GValueArray* %13, null
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %do.body.11
  br label %if.end.15

if.else.14:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @__func__.gimp_plug_in_procedure_handle_return_values, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.42, i32 0, i32 0))
  br label %sw.epilog

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  %14 = load %struct._GValueArray*, %struct._GValueArray** %return_vals.addr, align 8
  %n_values = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %14, i32 0, i32 0
  %15 = load i32, i32* %n_values, align 4
  %tobool17 = icmp ne i32 %15, 0
  %lnot = xor i1 %tobool17, true
  %lnot.ext = zext i1 %lnot to i32
  %cmp18 = icmp sgt i32 %lnot.ext, 0
  br i1 %cmp18, label %if.then.22, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.end.16
  %16 = load %struct._GValueArray*, %struct._GValueArray** %return_vals.addr, align 8
  %values = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %16, i32 0, i32 1
  %17 = load %struct._GValue*, %struct._GValue** %values, align 8
  %arrayidx = getelementptr inbounds %struct._GValue, %struct._GValue* %17, i64 0
  %g_type19 = getelementptr inbounds %struct._GValue, %struct._GValue* %arrayidx, i32 0, i32 0
  %18 = load i64, i64* %g_type19, align 8
  %call20 = call i64 @gimp_pdb_status_type_get_type() #6
  %cmp21 = icmp ne i64 %18, %call20
  br i1 %cmp21, label %if.then.22, label %if.end.23

if.then.22:                                       ; preds = %lor.lhs.false, %do.end.16
  br label %sw.epilog

if.end.23:                                        ; preds = %lor.lhs.false
  %19 = load %struct._GValueArray*, %struct._GValueArray** %return_vals.addr, align 8
  %values24 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %19, i32 0, i32 1
  %20 = load %struct._GValue*, %struct._GValue** %values24, align 8
  %arrayidx25 = getelementptr inbounds %struct._GValue, %struct._GValue* %20, i64 0
  %call26 = call i32 @g_value_get_enum(%struct._GValue* %arrayidx25)
  switch i32 %call26, label %sw.epilog [
    i32 3, label %sw.bb
    i32 1, label %sw.bb.27
    i32 0, label %sw.bb.58
  ]

sw.bb:                                            ; preds = %if.end.23
  br label %sw.epilog

sw.bb.27:                                         ; preds = %if.end.23
  %21 = load %struct._GValueArray*, %struct._GValueArray** %return_vals.addr, align 8
  %n_values28 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %21, i32 0, i32 0
  %22 = load i32, i32* %n_values28, align 4
  %cmp29 = icmp ugt i32 %22, 1
  br i1 %cmp29, label %land.lhs.true.30, label %if.end.57

land.lhs.true.30:                                 ; preds = %sw.bb.27
  %23 = load %struct._GValueArray*, %struct._GValueArray** %return_vals.addr, align 8
  %values32 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %23, i32 0, i32 1
  %24 = load %struct._GValue*, %struct._GValue** %values32, align 8
  %arrayidx33 = getelementptr inbounds %struct._GValue, %struct._GValue* %24, i64 1
  store %struct._GValue* %arrayidx33, %struct._GValue** %__val, align 8
  store i64 64, i64* %__t35, align 8
  %25 = load %struct._GValue*, %struct._GValue** %__val, align 8
  %tobool38 = icmp ne %struct._GValue* %25, null
  br i1 %tobool38, label %if.else.40, label %if.then.39

if.then.39:                                       ; preds = %land.lhs.true.30
  store i32 0, i32* %__r37, align 4
  br label %if.end.47

if.else.40:                                       ; preds = %land.lhs.true.30
  %26 = load %struct._GValue*, %struct._GValue** %__val, align 8
  %g_type41 = getelementptr inbounds %struct._GValue, %struct._GValue* %26, i32 0, i32 0
  %27 = load i64, i64* %g_type41, align 8
  %28 = load i64, i64* %__t35, align 8
  %cmp42 = icmp eq i64 %27, %28
  br i1 %cmp42, label %if.then.43, label %if.else.44

if.then.43:                                       ; preds = %if.else.40
  store i32 1, i32* %__r37, align 4
  br label %if.end.46

if.else.44:                                       ; preds = %if.else.40
  %29 = load %struct._GValue*, %struct._GValue** %__val, align 8
  %30 = load i64, i64* %__t35, align 8
  %call45 = call i32 @g_type_check_value_holds(%struct._GValue* %29, i64 %30) #7
  store i32 %call45, i32* %__r37, align 4
  br label %if.end.46

if.end.46:                                        ; preds = %if.else.44, %if.then.43
  br label %if.end.47

if.end.47:                                        ; preds = %if.end.46, %if.then.39
  %31 = load i32, i32* %__r37, align 4
  store i32 %31, i32* %tmp48
  %32 = load i32, i32* %tmp48
  %tobool49 = icmp ne i32 %32, 0
  br i1 %tobool49, label %if.then.50, label %if.end.57

if.then.50:                                       ; preds = %if.end.47
  %33 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %34 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %35 = bitcast %struct._GimpProgress* %34 to %struct._GTypeInstance*
  %call51 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %35, i64 80)
  %36 = bitcast %struct._GTypeInstance* %call51 to %struct._GObject*
  %call52 = call i8* @gettext(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.43, i32 0, i32 0)) #8
  %37 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %proc.addr, align 8
  %call53 = call i8* @gimp_plug_in_procedure_get_label(%struct._GimpPlugInProcedure* %37)
  %38 = load %struct._GValueArray*, %struct._GValueArray** %return_vals.addr, align 8
  %values54 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %38, i32 0, i32 1
  %39 = load %struct._GValue*, %struct._GValue** %values54, align 8
  %arrayidx55 = getelementptr inbounds %struct._GValue, %struct._GValue* %39, i64 1
  %call56 = call i8* @g_value_get_string(%struct._GValue* %arrayidx55)
  call void (%struct._Gimp*, %struct._GObject*, i32, i8*, ...) @gimp_message(%struct._Gimp* %33, %struct._GObject* %36, i32 2, i8* %call52, i8* %call53, i8* %call56)
  br label %if.end.57

if.end.57:                                        ; preds = %if.then.50, %if.end.47, %sw.bb.27
  br label %sw.epilog

sw.bb.58:                                         ; preds = %if.end.23
  %40 = load %struct._GValueArray*, %struct._GValueArray** %return_vals.addr, align 8
  %n_values59 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %40, i32 0, i32 0
  %41 = load i32, i32* %n_values59, align 4
  %cmp60 = icmp ugt i32 %41, 1
  br i1 %cmp60, label %land.lhs.true.61, label %if.end.89

land.lhs.true.61:                                 ; preds = %sw.bb.58
  %42 = load %struct._GValueArray*, %struct._GValueArray** %return_vals.addr, align 8
  %values64 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %42, i32 0, i32 1
  %43 = load %struct._GValue*, %struct._GValue** %values64, align 8
  %arrayidx65 = getelementptr inbounds %struct._GValue, %struct._GValue* %43, i64 1
  store %struct._GValue* %arrayidx65, %struct._GValue** %__val63, align 8
  store i64 64, i64* %__t67, align 8
  %44 = load %struct._GValue*, %struct._GValue** %__val63, align 8
  %tobool70 = icmp ne %struct._GValue* %44, null
  br i1 %tobool70, label %if.else.72, label %if.then.71

if.then.71:                                       ; preds = %land.lhs.true.61
  store i32 0, i32* %__r69, align 4
  br label %if.end.79

if.else.72:                                       ; preds = %land.lhs.true.61
  %45 = load %struct._GValue*, %struct._GValue** %__val63, align 8
  %g_type73 = getelementptr inbounds %struct._GValue, %struct._GValue* %45, i32 0, i32 0
  %46 = load i64, i64* %g_type73, align 8
  %47 = load i64, i64* %__t67, align 8
  %cmp74 = icmp eq i64 %46, %47
  br i1 %cmp74, label %if.then.75, label %if.else.76

if.then.75:                                       ; preds = %if.else.72
  store i32 1, i32* %__r69, align 4
  br label %if.end.78

if.else.76:                                       ; preds = %if.else.72
  %48 = load %struct._GValue*, %struct._GValue** %__val63, align 8
  %49 = load i64, i64* %__t67, align 8
  %call77 = call i32 @g_type_check_value_holds(%struct._GValue* %48, i64 %49) #7
  store i32 %call77, i32* %__r69, align 4
  br label %if.end.78

if.end.78:                                        ; preds = %if.else.76, %if.then.75
  br label %if.end.79

if.end.79:                                        ; preds = %if.end.78, %if.then.71
  %50 = load i32, i32* %__r69, align 4
  store i32 %50, i32* %tmp80
  %51 = load i32, i32* %tmp80
  %tobool81 = icmp ne i32 %51, 0
  br i1 %tobool81, label %if.then.82, label %if.end.89

if.then.82:                                       ; preds = %if.end.79
  %52 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %53 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %54 = bitcast %struct._GimpProgress* %53 to %struct._GTypeInstance*
  %call83 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %54, i64 80)
  %55 = bitcast %struct._GTypeInstance* %call83 to %struct._GObject*
  %call84 = call i8* @gettext(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.44, i32 0, i32 0)) #8
  %56 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %proc.addr, align 8
  %call85 = call i8* @gimp_plug_in_procedure_get_label(%struct._GimpPlugInProcedure* %56)
  %57 = load %struct._GValueArray*, %struct._GValueArray** %return_vals.addr, align 8
  %values86 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %57, i32 0, i32 1
  %58 = load %struct._GValue*, %struct._GValue** %values86, align 8
  %arrayidx87 = getelementptr inbounds %struct._GValue, %struct._GValue* %58, i64 1
  %call88 = call i8* @g_value_get_string(%struct._GValue* %arrayidx87)
  call void (%struct._Gimp*, %struct._GObject*, i32, i8*, ...) @gimp_message(%struct._Gimp* %52, %struct._GObject* %55, i32 2, i8* %call84, i8* %call85, i8* %call88)
  br label %if.end.89

if.end.89:                                        ; preds = %if.then.82, %if.end.79, %sw.bb.58
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.else.9, %if.else.14, %if.then.22, %if.end.23, %if.end.89, %if.end.57, %sw.bb
  ret void
}

; Function Attrs: nounwind readnone
declare i64 @gimp_pdb_status_type_get_type() #2

declare i32 @g_value_get_enum(%struct._GValue*) #1

; Function Attrs: nounwind readonly
declare i32 @g_type_check_value_holds(%struct._GValue*, i64) #4

declare void @gimp_message(%struct._Gimp*, %struct._GObject*, i32, i8*, ...) #1

; Function Attrs: nounwind
declare i8* @gettext(i8*) #5

declare i8* @g_value_get_string(%struct._GValue*) #1

declare i8* @g_type_class_peek_parent(i8*) #1

declare void @g_type_class_adjust_private_offset(i8*, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_plug_in_procedure_class_init(%struct._GimpPlugInProcedureClass* %klass) #3 {
entry:
  %klass.addr = alloca %struct._GimpPlugInProcedureClass*, align 8
  %object_class = alloca %struct._GObjectClass*, align 8
  %gimp_object_class = alloca %struct._GimpObjectClass*, align 8
  %proc_class = alloca %struct._GimpProcedureClass*, align 8
  store %struct._GimpPlugInProcedureClass* %klass, %struct._GimpPlugInProcedureClass** %klass.addr, align 8
  %0 = load %struct._GimpPlugInProcedureClass*, %struct._GimpPlugInProcedureClass** %klass.addr, align 8
  %1 = bitcast %struct._GimpPlugInProcedureClass* %0 to %struct._GTypeClass*
  %call = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 80)
  %2 = bitcast %struct._GTypeClass* %call to %struct._GObjectClass*
  store %struct._GObjectClass* %2, %struct._GObjectClass** %object_class, align 8
  %3 = load %struct._GimpPlugInProcedureClass*, %struct._GimpPlugInProcedureClass** %klass.addr, align 8
  %4 = bitcast %struct._GimpPlugInProcedureClass* %3 to %struct._GTypeClass*
  %call1 = call i64 @gimp_object_get_type() #6
  %call2 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %4, i64 %call1)
  %5 = bitcast %struct._GTypeClass* %call2 to %struct._GimpObjectClass*
  store %struct._GimpObjectClass* %5, %struct._GimpObjectClass** %gimp_object_class, align 8
  %6 = load %struct._GimpPlugInProcedureClass*, %struct._GimpPlugInProcedureClass** %klass.addr, align 8
  %7 = bitcast %struct._GimpPlugInProcedureClass* %6 to %struct._GTypeClass*
  %call3 = call i64 @gimp_procedure_get_type() #6
  %call4 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %7, i64 %call3)
  %8 = bitcast %struct._GTypeClass* %call4 to %struct._GimpProcedureClass*
  store %struct._GimpProcedureClass* %8, %struct._GimpProcedureClass** %proc_class, align 8
  %9 = load %struct._GimpPlugInProcedureClass*, %struct._GimpPlugInProcedureClass** %klass.addr, align 8
  %10 = bitcast %struct._GimpPlugInProcedureClass* %9 to %struct._GTypeClass*
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %10, i32 0, i32 0
  %11 = load i64, i64* %g_type, align 8
  %call5 = call i32 (i8*, i64, i32, i32, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)*, i8*, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i64, i32, ...) @g_signal_new(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.45, i32 0, i32 0), i64 %11, i32 1, i32 184, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)* null, i8* null, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)* @g_cclosure_marshal_VOID__STRING, i64 4, i32 1, i64 64)
  store i32 %call5, i32* getelementptr inbounds ([1 x i32], [1 x i32]* @gimp_plug_in_procedure_signals, i32 0, i64 0), align 4
  %12 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %finalize = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %12, i32 0, i32 6
  store void (%struct._GObject*)* @gimp_plug_in_procedure_finalize, void (%struct._GObject*)** %finalize, align 8
  %13 = load %struct._GimpObjectClass*, %struct._GimpObjectClass** %gimp_object_class, align 8
  %get_memsize = getelementptr inbounds %struct._GimpObjectClass, %struct._GimpObjectClass* %13, i32 0, i32 3
  store i64 (%struct._GimpObject*, i64*)* @gimp_plug_in_procedure_get_memsize, i64 (%struct._GimpObject*, i64*)** %get_memsize, align 8
  %14 = load %struct._GimpProcedureClass*, %struct._GimpProcedureClass** %proc_class, align 8
  %execute = getelementptr inbounds %struct._GimpProcedureClass, %struct._GimpProcedureClass* %14, i32 0, i32 1
  store %struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @gimp_plug_in_procedure_execute, %struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)** %execute, align 8
  %15 = load %struct._GimpProcedureClass*, %struct._GimpProcedureClass** %proc_class, align 8
  %execute_async = getelementptr inbounds %struct._GimpProcedureClass, %struct._GimpProcedureClass* %15, i32 0, i32 2
  store void (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GimpObject*)* @gimp_plug_in_procedure_execute_async, void (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GimpObject*)** %execute_async, align 8
  %16 = load %struct._GimpPlugInProcedureClass*, %struct._GimpPlugInProcedureClass** %klass.addr, align 8
  %get_progname = getelementptr inbounds %struct._GimpPlugInProcedureClass, %struct._GimpPlugInProcedureClass* %16, i32 0, i32 1
  store i8* (%struct._GimpPlugInProcedure*)* @gimp_plug_in_procedure_real_get_progname, i8* (%struct._GimpPlugInProcedure*)** %get_progname, align 8
  %17 = load %struct._GimpPlugInProcedureClass*, %struct._GimpPlugInProcedureClass** %klass.addr, align 8
  %menu_path_added = getelementptr inbounds %struct._GimpPlugInProcedureClass, %struct._GimpPlugInProcedureClass* %17, i32 0, i32 2
  store void (%struct._GimpPlugInProcedure*, i8*)* null, void (%struct._GimpPlugInProcedure*, i8*)** %menu_path_added, align 8
  ret void
}

declare %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_object_get_type() #2

declare i32 @g_signal_new(i8*, i64, i32, i32, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)*, i8*, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i64, i32, ...) #1

declare void @g_cclosure_marshal_VOID__STRING(%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_plug_in_procedure_finalize(%struct._GObject* %object) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %proc = alloca %struct._GimpPlugInProcedure*, align 8
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_plug_in_procedure_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpPlugInProcedure*
  store %struct._GimpPlugInProcedure* %2, %struct._GimpPlugInProcedure** %proc, align 8
  %3 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %proc, align 8
  %prog = getelementptr inbounds %struct._GimpPlugInProcedure, %struct._GimpPlugInProcedure* %3, i32 0, i32 1
  %4 = load i8*, i8** %prog, align 8
  call void @g_free(i8* %4)
  %5 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %proc, align 8
  %menu_label = getelementptr inbounds %struct._GimpPlugInProcedure, %struct._GimpPlugInProcedure* %5, i32 0, i32 4
  %6 = load i8*, i8** %menu_label, align 8
  call void @g_free(i8* %6)
  %7 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %proc, align 8
  %menu_paths = getelementptr inbounds %struct._GimpPlugInProcedure, %struct._GimpPlugInProcedure* %7, i32 0, i32 5
  %8 = load %struct._GList*, %struct._GList** %menu_paths, align 8
  call void @g_list_free_full(%struct._GList* %8, void (i8*)* @g_free)
  %9 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %proc, align 8
  %label = getelementptr inbounds %struct._GimpPlugInProcedure, %struct._GimpPlugInProcedure* %9, i32 0, i32 6
  %10 = load i8*, i8** %label, align 8
  call void @g_free(i8* %10)
  %11 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %proc, align 8
  %icon_data = getelementptr inbounds %struct._GimpPlugInProcedure, %struct._GimpPlugInProcedure* %11, i32 0, i32 9
  %12 = load i8*, i8** %icon_data, align 8
  call void @g_free(i8* %12)
  %13 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %proc, align 8
  %image_types = getelementptr inbounds %struct._GimpPlugInProcedure, %struct._GimpPlugInProcedure* %13, i32 0, i32 10
  %14 = load i8*, i8** %image_types, align 8
  call void @g_free(i8* %14)
  %15 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %proc, align 8
  %extensions = getelementptr inbounds %struct._GimpPlugInProcedure, %struct._GimpPlugInProcedure* %15, i32 0, i32 15
  %16 = load i8*, i8** %extensions, align 8
  call void @g_free(i8* %16)
  %17 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %proc, align 8
  %prefixes = getelementptr inbounds %struct._GimpPlugInProcedure, %struct._GimpPlugInProcedure* %17, i32 0, i32 16
  %18 = load i8*, i8** %prefixes, align 8
  call void @g_free(i8* %18)
  %19 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %proc, align 8
  %magics = getelementptr inbounds %struct._GimpPlugInProcedure, %struct._GimpPlugInProcedure* %19, i32 0, i32 17
  %20 = load i8*, i8** %magics, align 8
  call void @g_free(i8* %20)
  %21 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %proc, align 8
  %mime_type = getelementptr inbounds %struct._GimpPlugInProcedure, %struct._GimpPlugInProcedure* %21, i32 0, i32 18
  %22 = load i8*, i8** %mime_type, align 8
  call void @g_free(i8* %22)
  %23 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %proc, align 8
  %extensions_list = getelementptr inbounds %struct._GimpPlugInProcedure, %struct._GimpPlugInProcedure* %23, i32 0, i32 19
  %24 = load %struct._GSList*, %struct._GSList** %extensions_list, align 8
  call void @g_slist_free_full(%struct._GSList* %24, void (i8*)* @g_free)
  %25 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %proc, align 8
  %prefixes_list = getelementptr inbounds %struct._GimpPlugInProcedure, %struct._GimpPlugInProcedure* %25, i32 0, i32 20
  %26 = load %struct._GSList*, %struct._GSList** %prefixes_list, align 8
  call void @g_slist_free_full(%struct._GSList* %26, void (i8*)* @g_free)
  %27 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %proc, align 8
  %magics_list = getelementptr inbounds %struct._GimpPlugInProcedure, %struct._GimpPlugInProcedure* %27, i32 0, i32 21
  %28 = load %struct._GSList*, %struct._GSList** %magics_list, align 8
  call void @g_slist_free_full(%struct._GSList* %28, void (i8*)* @g_free)
  %29 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %proc, align 8
  %thumb_loader = getelementptr inbounds %struct._GimpPlugInProcedure, %struct._GimpPlugInProcedure* %29, i32 0, i32 22
  %30 = load i8*, i8** %thumb_loader, align 8
  call void @g_free(i8* %30)
  %31 = load i8*, i8** @gimp_plug_in_procedure_parent_class, align 8
  %32 = bitcast i8* %31 to %struct._GTypeClass*
  %call2 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %32, i64 80)
  %33 = bitcast %struct._GTypeClass* %call2 to %struct._GObjectClass*
  %finalize = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %33, i32 0, i32 6
  %34 = load void (%struct._GObject*)*, void (%struct._GObject*)** %finalize, align 8
  %35 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  call void %34(%struct._GObject* %35)
  ret void
}

; Function Attrs: nounwind uwtable
define internal i64 @gimp_plug_in_procedure_get_memsize(%struct._GimpObject* %object, i64* %gui_size) #3 {
entry:
  %object.addr = alloca %struct._GimpObject*, align 8
  %gui_size.addr = alloca i64*, align 8
  %proc = alloca %struct._GimpPlugInProcedure*, align 8
  %memsize = alloca i64, align 8
  %list = alloca %struct._GList*, align 8
  %slist = alloca %struct._GSList*, align 8
  store %struct._GimpObject* %object, %struct._GimpObject** %object.addr, align 8
  store i64* %gui_size, i64** %gui_size.addr, align 8
  %0 = load %struct._GimpObject*, %struct._GimpObject** %object.addr, align 8
  %1 = bitcast %struct._GimpObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_plug_in_procedure_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpPlugInProcedure*
  store %struct._GimpPlugInProcedure* %2, %struct._GimpPlugInProcedure** %proc, align 8
  store i64 0, i64* %memsize, align 8
  %3 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %proc, align 8
  %prog = getelementptr inbounds %struct._GimpPlugInProcedure, %struct._GimpPlugInProcedure* %3, i32 0, i32 1
  %4 = load i8*, i8** %prog, align 8
  %call2 = call i64 @gimp_string_get_memsize(i8* %4)
  %5 = load i64, i64* %memsize, align 8
  %add = add nsw i64 %5, %call2
  store i64 %add, i64* %memsize, align 8
  %6 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %proc, align 8
  %menu_label = getelementptr inbounds %struct._GimpPlugInProcedure, %struct._GimpPlugInProcedure* %6, i32 0, i32 4
  %7 = load i8*, i8** %menu_label, align 8
  %call3 = call i64 @gimp_string_get_memsize(i8* %7)
  %8 = load i64, i64* %memsize, align 8
  %add4 = add nsw i64 %8, %call3
  store i64 %add4, i64* %memsize, align 8
  %9 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %proc, align 8
  %menu_paths = getelementptr inbounds %struct._GimpPlugInProcedure, %struct._GimpPlugInProcedure* %9, i32 0, i32 5
  %10 = load %struct._GList*, %struct._GList** %menu_paths, align 8
  store %struct._GList* %10, %struct._GList** %list, align 8
  br label %for.cond

for.cond:                                         ; preds = %cond.end, %entry
  %11 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool = icmp ne %struct._GList* %11, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %12 = load %struct._GList*, %struct._GList** %list, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %12, i32 0, i32 0
  %13 = load i8*, i8** %data, align 8
  %call5 = call i64 @gimp_string_get_memsize(i8* %13)
  %add6 = add i64 24, %call5
  %14 = load i64, i64* %memsize, align 8
  %add7 = add i64 %14, %add6
  store i64 %add7, i64* %memsize, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %15 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool8 = icmp ne %struct._GList* %15, null
  br i1 %tobool8, label %cond.true, label %cond.false

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
  %18 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %proc, align 8
  %icon_type = getelementptr inbounds %struct._GimpPlugInProcedure, %struct._GimpPlugInProcedure* %18, i32 0, i32 7
  %19 = load i32, i32* %icon_type, align 4
  switch i32 %19, label %sw.epilog [
    i32 0, label %sw.bb
    i32 2, label %sw.bb
    i32 1, label %sw.bb.11
  ]

sw.bb:                                            ; preds = %for.end, %for.end
  %20 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %proc, align 8
  %icon_data = getelementptr inbounds %struct._GimpPlugInProcedure, %struct._GimpPlugInProcedure* %20, i32 0, i32 9
  %21 = load i8*, i8** %icon_data, align 8
  %call9 = call i64 @gimp_string_get_memsize(i8* %21)
  %22 = load i64, i64* %memsize, align 8
  %add10 = add nsw i64 %22, %call9
  store i64 %add10, i64* %memsize, align 8
  br label %sw.epilog

sw.bb.11:                                         ; preds = %for.end
  %23 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %proc, align 8
  %icon_data_length = getelementptr inbounds %struct._GimpPlugInProcedure, %struct._GimpPlugInProcedure* %23, i32 0, i32 8
  %24 = load i32, i32* %icon_data_length, align 4
  %conv = sext i32 %24 to i64
  %25 = load i64, i64* %memsize, align 8
  %add12 = add nsw i64 %25, %conv
  store i64 %add12, i64* %memsize, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %for.end, %sw.bb.11, %sw.bb
  %26 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %proc, align 8
  %extensions = getelementptr inbounds %struct._GimpPlugInProcedure, %struct._GimpPlugInProcedure* %26, i32 0, i32 15
  %27 = load i8*, i8** %extensions, align 8
  %call13 = call i64 @gimp_string_get_memsize(i8* %27)
  %28 = load i64, i64* %memsize, align 8
  %add14 = add nsw i64 %28, %call13
  store i64 %add14, i64* %memsize, align 8
  %29 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %proc, align 8
  %prefixes = getelementptr inbounds %struct._GimpPlugInProcedure, %struct._GimpPlugInProcedure* %29, i32 0, i32 16
  %30 = load i8*, i8** %prefixes, align 8
  %call15 = call i64 @gimp_string_get_memsize(i8* %30)
  %31 = load i64, i64* %memsize, align 8
  %add16 = add nsw i64 %31, %call15
  store i64 %add16, i64* %memsize, align 8
  %32 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %proc, align 8
  %magics = getelementptr inbounds %struct._GimpPlugInProcedure, %struct._GimpPlugInProcedure* %32, i32 0, i32 17
  %33 = load i8*, i8** %magics, align 8
  %call17 = call i64 @gimp_string_get_memsize(i8* %33)
  %34 = load i64, i64* %memsize, align 8
  %add18 = add nsw i64 %34, %call17
  store i64 %add18, i64* %memsize, align 8
  %35 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %proc, align 8
  %mime_type = getelementptr inbounds %struct._GimpPlugInProcedure, %struct._GimpPlugInProcedure* %35, i32 0, i32 18
  %36 = load i8*, i8** %mime_type, align 8
  %call19 = call i64 @gimp_string_get_memsize(i8* %36)
  %37 = load i64, i64* %memsize, align 8
  %add20 = add nsw i64 %37, %call19
  store i64 %add20, i64* %memsize, align 8
  %38 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %proc, align 8
  %thumb_loader = getelementptr inbounds %struct._GimpPlugInProcedure, %struct._GimpPlugInProcedure* %38, i32 0, i32 22
  %39 = load i8*, i8** %thumb_loader, align 8
  %call21 = call i64 @gimp_string_get_memsize(i8* %39)
  %40 = load i64, i64* %memsize, align 8
  %add22 = add nsw i64 %40, %call21
  store i64 %add22, i64* %memsize, align 8
  %41 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %proc, align 8
  %extensions_list = getelementptr inbounds %struct._GimpPlugInProcedure, %struct._GimpPlugInProcedure* %41, i32 0, i32 19
  %42 = load %struct._GSList*, %struct._GSList** %extensions_list, align 8
  store %struct._GSList* %42, %struct._GSList** %slist, align 8
  br label %for.cond.23

for.cond.23:                                      ; preds = %cond.end.35, %sw.epilog
  %43 = load %struct._GSList*, %struct._GSList** %slist, align 8
  %tobool24 = icmp ne %struct._GSList* %43, null
  br i1 %tobool24, label %for.body.25, label %for.end.37

for.body.25:                                      ; preds = %for.cond.23
  %44 = load %struct._GSList*, %struct._GSList** %slist, align 8
  %data26 = getelementptr inbounds %struct._GSList, %struct._GSList* %44, i32 0, i32 0
  %45 = load i8*, i8** %data26, align 8
  %call27 = call i64 @gimp_string_get_memsize(i8* %45)
  %add28 = add i64 16, %call27
  %46 = load i64, i64* %memsize, align 8
  %add29 = add i64 %46, %add28
  store i64 %add29, i64* %memsize, align 8
  br label %for.inc.30

for.inc.30:                                       ; preds = %for.body.25
  %47 = load %struct._GSList*, %struct._GSList** %slist, align 8
  %tobool31 = icmp ne %struct._GSList* %47, null
  br i1 %tobool31, label %cond.true.32, label %cond.false.34

cond.true.32:                                     ; preds = %for.inc.30
  %48 = load %struct._GSList*, %struct._GSList** %slist, align 8
  %next33 = getelementptr inbounds %struct._GSList, %struct._GSList* %48, i32 0, i32 1
  %49 = load %struct._GSList*, %struct._GSList** %next33, align 8
  br label %cond.end.35

cond.false.34:                                    ; preds = %for.inc.30
  br label %cond.end.35

cond.end.35:                                      ; preds = %cond.false.34, %cond.true.32
  %cond36 = phi %struct._GSList* [ %49, %cond.true.32 ], [ null, %cond.false.34 ]
  store %struct._GSList* %cond36, %struct._GSList** %slist, align 8
  br label %for.cond.23

for.end.37:                                       ; preds = %for.cond.23
  %50 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %proc, align 8
  %prefixes_list = getelementptr inbounds %struct._GimpPlugInProcedure, %struct._GimpPlugInProcedure* %50, i32 0, i32 20
  %51 = load %struct._GSList*, %struct._GSList** %prefixes_list, align 8
  store %struct._GSList* %51, %struct._GSList** %slist, align 8
  br label %for.cond.38

for.cond.38:                                      ; preds = %cond.end.50, %for.end.37
  %52 = load %struct._GSList*, %struct._GSList** %slist, align 8
  %tobool39 = icmp ne %struct._GSList* %52, null
  br i1 %tobool39, label %for.body.40, label %for.end.52

for.body.40:                                      ; preds = %for.cond.38
  %53 = load %struct._GSList*, %struct._GSList** %slist, align 8
  %data41 = getelementptr inbounds %struct._GSList, %struct._GSList* %53, i32 0, i32 0
  %54 = load i8*, i8** %data41, align 8
  %call42 = call i64 @gimp_string_get_memsize(i8* %54)
  %add43 = add i64 16, %call42
  %55 = load i64, i64* %memsize, align 8
  %add44 = add i64 %55, %add43
  store i64 %add44, i64* %memsize, align 8
  br label %for.inc.45

for.inc.45:                                       ; preds = %for.body.40
  %56 = load %struct._GSList*, %struct._GSList** %slist, align 8
  %tobool46 = icmp ne %struct._GSList* %56, null
  br i1 %tobool46, label %cond.true.47, label %cond.false.49

cond.true.47:                                     ; preds = %for.inc.45
  %57 = load %struct._GSList*, %struct._GSList** %slist, align 8
  %next48 = getelementptr inbounds %struct._GSList, %struct._GSList* %57, i32 0, i32 1
  %58 = load %struct._GSList*, %struct._GSList** %next48, align 8
  br label %cond.end.50

cond.false.49:                                    ; preds = %for.inc.45
  br label %cond.end.50

cond.end.50:                                      ; preds = %cond.false.49, %cond.true.47
  %cond51 = phi %struct._GSList* [ %58, %cond.true.47 ], [ null, %cond.false.49 ]
  store %struct._GSList* %cond51, %struct._GSList** %slist, align 8
  br label %for.cond.38

for.end.52:                                       ; preds = %for.cond.38
  %59 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %proc, align 8
  %magics_list = getelementptr inbounds %struct._GimpPlugInProcedure, %struct._GimpPlugInProcedure* %59, i32 0, i32 21
  %60 = load %struct._GSList*, %struct._GSList** %magics_list, align 8
  store %struct._GSList* %60, %struct._GSList** %slist, align 8
  br label %for.cond.53

for.cond.53:                                      ; preds = %cond.end.65, %for.end.52
  %61 = load %struct._GSList*, %struct._GSList** %slist, align 8
  %tobool54 = icmp ne %struct._GSList* %61, null
  br i1 %tobool54, label %for.body.55, label %for.end.67

for.body.55:                                      ; preds = %for.cond.53
  %62 = load %struct._GSList*, %struct._GSList** %slist, align 8
  %data56 = getelementptr inbounds %struct._GSList, %struct._GSList* %62, i32 0, i32 0
  %63 = load i8*, i8** %data56, align 8
  %call57 = call i64 @gimp_string_get_memsize(i8* %63)
  %add58 = add i64 16, %call57
  %64 = load i64, i64* %memsize, align 8
  %add59 = add i64 %64, %add58
  store i64 %add59, i64* %memsize, align 8
  br label %for.inc.60

for.inc.60:                                       ; preds = %for.body.55
  %65 = load %struct._GSList*, %struct._GSList** %slist, align 8
  %tobool61 = icmp ne %struct._GSList* %65, null
  br i1 %tobool61, label %cond.true.62, label %cond.false.64

cond.true.62:                                     ; preds = %for.inc.60
  %66 = load %struct._GSList*, %struct._GSList** %slist, align 8
  %next63 = getelementptr inbounds %struct._GSList, %struct._GSList* %66, i32 0, i32 1
  %67 = load %struct._GSList*, %struct._GSList** %next63, align 8
  br label %cond.end.65

cond.false.64:                                    ; preds = %for.inc.60
  br label %cond.end.65

cond.end.65:                                      ; preds = %cond.false.64, %cond.true.62
  %cond66 = phi %struct._GSList* [ %67, %cond.true.62 ], [ null, %cond.false.64 ]
  store %struct._GSList* %cond66, %struct._GSList** %slist, align 8
  br label %for.cond.53

for.end.67:                                       ; preds = %for.cond.53
  %68 = load i64, i64* %memsize, align 8
  %69 = load i8*, i8** @gimp_plug_in_procedure_parent_class, align 8
  %70 = bitcast i8* %69 to %struct._GTypeClass*
  %call68 = call i64 @gimp_object_get_type() #6
  %call69 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %70, i64 %call68)
  %71 = bitcast %struct._GTypeClass* %call69 to %struct._GimpObjectClass*
  %get_memsize = getelementptr inbounds %struct._GimpObjectClass, %struct._GimpObjectClass* %71, i32 0, i32 3
  %72 = load i64 (%struct._GimpObject*, i64*)*, i64 (%struct._GimpObject*, i64*)** %get_memsize, align 8
  %73 = load %struct._GimpObject*, %struct._GimpObject** %object.addr, align 8
  %74 = load i64*, i64** %gui_size.addr, align 8
  %call70 = call i64 %72(%struct._GimpObject* %73, i64* %74)
  %add71 = add nsw i64 %68, %call70
  ret i64 %add71
}

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @gimp_plug_in_procedure_execute(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #3 {
entry:
  %retval = alloca %struct._GValueArray*, align 8
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  store %struct._GimpProcedure* %procedure, %struct._GimpProcedure** %procedure.addr, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store %struct._GValueArray* %args, %struct._GValueArray** %args.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  %0 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %proc_type = getelementptr inbounds %struct._GimpProcedure, %struct._GimpProcedure* %0, i32 0, i32 1
  %1 = load i32, i32* %proc_type, align 4
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** @gimp_plug_in_procedure_parent_class, align 8
  %3 = bitcast i8* %2 to %struct._GTypeClass*
  %call = call i64 @gimp_procedure_get_type() #6
  %call1 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %3, i64 %call)
  %4 = bitcast %struct._GTypeClass* %call1 to %struct._GimpProcedureClass*
  %execute = getelementptr inbounds %struct._GimpProcedureClass, %struct._GimpProcedureClass* %4, i32 0, i32 1
  %5 = load %struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)*, %struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)** %execute, align 8
  %6 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %7 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %8 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %9 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %10 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %11 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call2 = call %struct._GValueArray* %5(%struct._GimpProcedure* %6, %struct._Gimp* %7, %struct._GimpContext* %8, %struct._GimpProgress* %9, %struct._GValueArray* %10, %struct._GError** %11)
  store %struct._GValueArray* %call2, %struct._GValueArray** %retval
  br label %return

if.end:                                           ; preds = %entry
  %12 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %plug_in_manager = getelementptr inbounds %struct._Gimp, %struct._Gimp* %12, i32 0, i32 25
  %13 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %plug_in_manager, align 8
  %14 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %15 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %16 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %17 = bitcast %struct._GimpProcedure* %16 to %struct._GTypeInstance*
  %call3 = call i64 @gimp_plug_in_procedure_get_type() #6
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %17, i64 %call3)
  %18 = bitcast %struct._GTypeInstance* %call4 to %struct._GimpPlugInProcedure*
  %19 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %call5 = call %struct._GValueArray* @gimp_plug_in_manager_call_run(%struct._GimpPlugInManager* %13, %struct._GimpContext* %14, %struct._GimpProgress* %15, %struct._GimpPlugInProcedure* %18, %struct._GValueArray* %19, i32 1, %struct._GimpObject* null)
  store %struct._GValueArray* %call5, %struct._GValueArray** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %20 = load %struct._GValueArray*, %struct._GValueArray** %retval
  ret %struct._GValueArray* %20
}

; Function Attrs: nounwind uwtable
define internal void @gimp_plug_in_procedure_execute_async(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GimpObject* %display) #3 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %display.addr = alloca %struct._GimpObject*, align 8
  %plug_in_procedure = alloca %struct._GimpPlugInProcedure*, align 8
  %return_vals = alloca %struct._GValueArray*, align 8
  store %struct._GimpProcedure* %procedure, %struct._GimpProcedure** %procedure.addr, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store %struct._GValueArray* %args, %struct._GValueArray** %args.addr, align 8
  store %struct._GimpObject* %display, %struct._GimpObject** %display.addr, align 8
  %0 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %1 = bitcast %struct._GimpProcedure* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_plug_in_procedure_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpPlugInProcedure*
  store %struct._GimpPlugInProcedure* %2, %struct._GimpPlugInProcedure** %plug_in_procedure, align 8
  %3 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %plug_in_manager = getelementptr inbounds %struct._Gimp, %struct._Gimp* %3, i32 0, i32 25
  %4 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %plug_in_manager, align 8
  %5 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %6 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %7 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %plug_in_procedure, align 8
  %8 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %9 = load %struct._GimpObject*, %struct._GimpObject** %display.addr, align 8
  %call2 = call %struct._GValueArray* @gimp_plug_in_manager_call_run(%struct._GimpPlugInManager* %4, %struct._GimpContext* %5, %struct._GimpProgress* %6, %struct._GimpPlugInProcedure* %7, %struct._GValueArray* %8, i32 0, %struct._GimpObject* %9)
  store %struct._GValueArray* %call2, %struct._GValueArray** %return_vals, align 8
  %10 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %tobool = icmp ne %struct._GValueArray* %10, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %11 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %plug_in_procedure, align 8
  %12 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %13 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %14 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  call void @gimp_plug_in_procedure_handle_return_values(%struct._GimpPlugInProcedure* %11, %struct._Gimp* %12, %struct._GimpProgress* %13, %struct._GValueArray* %14)
  %15 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  call void @g_value_array_free(%struct._GValueArray* %15)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare void @g_list_free_full(%struct._GList*, void (i8*)*) #1

declare i64 @gimp_string_get_memsize(i8*) #1

declare %struct._GValueArray* @gimp_plug_in_manager_call_run(%struct._GimpPlugInManager*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GimpPlugInProcedure*, %struct._GValueArray*, i32, %struct._GimpObject*) #1

declare void @g_value_array_free(%struct._GValueArray*) #1

; Function Attrs: nounwind
declare i8* @strtok(i8*, i8*) #5

declare %struct._GSList* @g_slist_prepend(%struct._GSList*, i8*) #1

declare %struct._GSList* @g_slist_reverse(%struct._GSList*) #1

attributes #0 = { nounwind readnone uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readnone }
attributes #7 = { nounwind readonly }
attributes #8 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
