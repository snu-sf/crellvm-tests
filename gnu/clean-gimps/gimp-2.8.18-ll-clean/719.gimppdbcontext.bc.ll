; ModuleID = './app/pdb/gimppdbcontext.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GimpPDBContextClass = type { %struct._GimpContextClass }
%struct._GimpContextClass = type { %struct._GimpViewableClass, void (%struct._GimpContext*, %struct._GimpImage*)*, void (%struct._GimpContext*, i8*)*, void (%struct._GimpContext*, %struct._GimpToolInfo*)*, void (%struct._GimpContext*, %struct._GimpPaintInfo*)*, void (%struct._GimpContext*, %struct._GimpRGB*)*, void (%struct._GimpContext*, %struct._GimpRGB*)*, void (%struct._GimpContext*, double)*, void (%struct._GimpContext*, i32)*, void (%struct._GimpContext*, %struct._GimpBrush*)*, void (%struct._GimpContext*, %struct._GimpDynamics*)*, void (%struct._GimpContext*, %struct._GimpPattern*)*, void (%struct._GimpContext*, %struct._GimpGradient*)*, void (%struct._GimpContext*, %struct._GimpPalette*)*, void (%struct._GimpContext*, %struct._GimpToolPreset*)*, void (%struct._GimpContext*, %struct._GimpFont*)*, void (%struct._GimpContext*, %struct._GimpBuffer*)*, void (%struct._GimpContext*, %struct._GimpImagefile*)*, void (%struct._GimpContext*, %struct._GimpTemplate*)* }
%struct._GimpViewableClass = type { %struct._GimpObjectClass, i8*, i8*, void (%struct._GimpViewable*)*, void (%struct._GimpViewable*)*, i32 (%struct._GimpViewable*, i32*, i32*)*, void (%struct._GimpViewable*, i32, i32, i32, i32*, i32*)*, i32 (%struct._GimpViewable*, i32, i32, i32, i32*, i32*)*, %struct._TempBuf* (%struct._GimpViewable*, %struct._GimpContext*, i32, i32)*, %struct._TempBuf* (%struct._GimpViewable*, %struct._GimpContext*, i32, i32)*, %struct._GdkPixbuf* (%struct._GimpViewable*, %struct._GimpContext*, i32, i32)*, %struct._GdkPixbuf* (%struct._GimpViewable*, %struct._GimpContext*, i32, i32)*, i8* (%struct._GimpViewable*, i8**)*, %struct._GimpContainer* (%struct._GimpViewable*)*, void (%struct._GimpViewable*, i32)*, i32 (%struct._GimpViewable*)* }
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
%struct._GimpViewable = type { %struct._GimpObject }
%struct._TempBuf = type opaque
%struct._GimpContext = type { %struct._GimpViewable, %struct._Gimp*, %struct._GimpContext*, i32, i32, %struct._GimpImage*, i8*, %struct._GimpToolInfo*, i8*, %struct._GimpPaintInfo*, i8*, %struct._GimpRGB, %struct._GimpRGB, double, i32, %struct._GimpBrush*, i8*, %struct._GimpDynamics*, i8*, %struct._GimpPattern*, i8*, %struct._GimpGradient*, i8*, %struct._GimpPalette*, i8*, %struct._GimpToolPreset*, i8*, %struct._GimpFont*, i8*, %struct._GimpBuffer*, i8*, %struct._GimpImagefile*, i8*, %struct._GimpTemplate*, i8* }
%struct._Gimp = type { %struct._GimpObject, %struct._GimpCoreConfig*, %struct._GimpCoreConfig*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct._GimpGui, i32, i32, i32, %struct._GList*, i32, %struct._GimpParasiteList*, %struct._GimpContainer*, %struct._GimpPaintInfo*, %struct._GimpModuleDB*, i32, %struct._GimpPlugInManager*, %struct._GimpContainer*, i32, i32, %struct._GimpIdTable*, %struct._GimpIdTable*, %struct._GimpContainer*, i32, %struct._GList*, %struct._GimpBuffer*, %struct._GimpContainer*, %struct._GimpContainer*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpTagCache*, %struct._GimpPDB*, %struct._GimpContainer*, %struct._GimpToolInfo*, %struct._GimpContainer*, %struct._GimpContainer*, %struct._GimpTemplate*, %struct._GList*, %struct._GimpContext*, %struct._GimpContext* }
%struct._GimpCoreConfig = type { %struct._GimpBaseConfig, i8*, i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, %struct._GimpTemplate*, %struct._GimpGrid*, i32, i64, i32, i32, i8*, i32, i32, i32, i64, %struct._GimpColorConfig*, i32, i32, %struct._GimpRGB, i32 }
%struct._GimpBaseConfig = type { %struct._GObject, i8*, i8*, i32, i64 }
%struct._GimpGrid = type opaque
%struct._GimpColorConfig = type { %struct._GObject, i32, i8*, i8*, i8*, i32, i8*, i32, i32, i8*, i32, %struct._GimpRGB, void ()*, void ()*, void ()*, void ()*, void ()*, void ()*, void ()*, void ()* }
%struct._GimpGui = type { void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*, %struct._GObject*, i32, i8*, i8*)*, void (%struct._Gimp*, %struct._GimpProgress*, i8*, i8*)*, i8* (%struct._Gimp*)*, i8* (%struct._Gimp*, i32, i32*)*, i32 (%struct._Gimp*)*, i8* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*, i32)*, i32 (%struct._GimpObject*)*, i32 (%struct._GimpObject*)*, %struct._GimpObject* (%struct._Gimp*, %struct._GimpImage*, i32, double)*, void (%struct._GimpObject*)*, void (%struct._Gimp*, %struct._GimpImage*, %struct._GimpImage*)*, %struct._GimpProgress* (%struct._Gimp*, %struct._GimpObject*)*, void (%struct._Gimp*, %struct._GimpProgress*)*, i32 (%struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GimpContainer*, i8*, i8*, i8*, %struct.__va_list_tag*)*, i32 (%struct._Gimp*, %struct._GimpContainer*, i8*, i8*, %struct.__va_list_tag*)*, i32 (%struct._Gimp*, %struct._GimpContainer*, i8*)*, i32 (%struct._Gimp*, i8*, i8*)*, void (%struct._Gimp*)* }
%struct._GimpProgress = type opaque
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct._GimpParasiteList = type opaque
%struct._GimpModuleDB = type opaque
%struct._GimpPlugInManager = type opaque
%struct._GimpIdTable = type opaque
%struct._GimpDataFactory = type opaque
%struct._GimpTagCache = type opaque
%struct._GimpPDB = type opaque
%struct._GimpContainer = type { %struct._GimpObject, %struct._GimpContainerPriv* }
%struct._GimpContainerPriv = type opaque
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct._GimpImage = type opaque
%struct._GimpToolInfo = type opaque
%struct._GimpPaintInfo = type { %struct._GimpViewable, %struct._Gimp*, i64, i64, i8*, %struct._GimpPaintOptions* }
%struct._GimpPaintOptions = type { %struct._GimpToolOptions, %struct._GimpPaintInfo*, double, double, double, i32, i32, i32, %struct._GimpJitterOptions*, i32, %struct._GimpFadeOptions*, %struct._GimpGradientOptions*, %struct._GimpSmoothingOptions*, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._GimpToolOptions = type { %struct._GimpContext, %struct._GimpToolInfo* }
%struct._GimpJitterOptions = type { i32, double }
%struct._GimpFadeOptions = type { i32, double, i32, i32 }
%struct._GimpGradientOptions = type { i32, i32 }
%struct._GimpSmoothingOptions = type { i32, i32, double }
%struct._GimpRGB = type { double, double, double, double }
%struct._GimpBrush = type opaque
%struct._GimpDynamics = type opaque
%struct._GimpPattern = type opaque
%struct._GimpGradient = type opaque
%struct._GimpPalette = type opaque
%struct._GimpToolPreset = type opaque
%struct._GimpFont = type opaque
%struct._GimpBuffer = type opaque
%struct._GimpImagefile = type opaque
%struct._GimpTemplate = type opaque
%struct._GdkPixbuf = type opaque
%struct._GimpPDBContext = type { %struct._GimpContext, i32, i32, double, double, i32, i32, double, i32, i32, i32, i32, i32, %struct._GimpContainer* }
%struct._GimpList = type { %struct._GimpContainer, %struct._GList*, i32, i32 (i8*, i8*)*, i32 }
%struct._GimpConfig = type opaque
%struct._GParamSpecEnum = type { %struct._GParamSpec, %struct._GEnumClass*, i32 }
%struct._GEnumClass = type { %struct._GTypeClass, i32, i32, i32, %struct._GEnumValue* }
%struct._GEnumValue = type { i32, i8*, i8* }
%struct._GParamSpecDouble = type { %struct._GParamSpec, double, double, double, double }

@gimp_pdb_context_get_type.g_define_type_id__volatile = internal global i64 0, align 8
@.str = private unnamed_addr constant [15 x i8] c"GimpPDBContext\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"Gimp-PDB\00", align 1
@__func__.gimp_pdb_context_new = private unnamed_addr constant [21 x i8] c"gimp_pdb_context_new\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"GIMP_IS_GIMP (gimp)\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"GIMP_IS_CONTEXT (parent)\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"gimp\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"PDB Context\00", align 1
@__func__.gimp_pdb_context_get_paint_options = private unnamed_addr constant [35 x i8] c"gimp_pdb_context_get_paint_options\00", align 1
@.str.7 = private unnamed_addr constant [30 x i8] c"GIMP_IS_PDB_CONTEXT (context)\00", align 1
@__func__.gimp_pdb_context_get_brush_options = private unnamed_addr constant [35 x i8] c"gimp_pdb_context_get_brush_options\00", align 1
@gimp_pdb_context_parent_class = internal global i8* null, align 8
@GimpPDBContext_private_offset = internal global i32 0, align 4
@.str.8 = private unnamed_addr constant [10 x i8] c"antialias\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"Smooth edges\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"feather\00", align 1
@.str.11 = private unnamed_addr constant [17 x i8] c"feather-radius-x\00", align 1
@.str.12 = private unnamed_addr constant [17 x i8] c"feather-radius-y\00", align 1
@.str.13 = private unnamed_addr constant [14 x i8] c"sample-merged\00", align 1
@.str.14 = private unnamed_addr constant [17 x i8] c"sample-criterion\00", align 1
@.str.15 = private unnamed_addr constant [17 x i8] c"sample-threshold\00", align 1
@.str.16 = private unnamed_addr constant [19 x i8] c"sample-transparent\00", align 1
@.str.17 = private unnamed_addr constant [14 x i8] c"interpolation\00", align 1
@.str.18 = private unnamed_addr constant [20 x i8] c"transform-direction\00", align 1
@.str.19 = private unnamed_addr constant [17 x i8] c"transform-resize\00", align 1
@.str.20 = private unnamed_addr constant [20 x i8] c"transform-recursion\00", align 1
@g_param_spec_types = external global i64*, align 8
@.str.21 = private unnamed_addr constant [54 x i8] c"%s:%u: invalid %s id %u for \22%s\22 of type '%s' in '%s'\00", align 1
@.str.22 = private unnamed_addr constant [17 x i8] c"gimppdbcontext.c\00", align 1
@.str.23 = private unnamed_addr constant [9 x i8] c"property\00", align 1

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_pdb_context_get_type() #0 {
entry:
  %tmp = alloca i32, align 4
  %tmp1 = alloca i8*, align 8
  %g_define_type_id = alloca i64, align 8
  fence seq_cst
  %0 = load volatile i64, i64* @gimp_pdb_context_get_type.g_define_type_id__volatile, align 8
  %1 = inttoptr i64 %0 to i8*
  store i8* %1, i8** %tmp1
  %2 = load i8*, i8** %tmp1
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call = call i32 @g_once_init_enter(i8* bitcast (i64* @gimp_pdb_context_get_type.g_define_type_id__volatile to i8*))
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
  %call5 = call i64 @gimp_context_get_type() #6
  %call6 = call i8* @g_intern_static_string(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0))
  %call7 = call i64 @g_type_register_static_simple(i64 %call5, i8* %call6, i32 424, void (i8*, i8*)* bitcast (void (i8*)* @gimp_pdb_context_class_intern_init to void (i8*, i8*)*), i32 416, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._GimpPDBContext*)* @gimp_pdb_context_init to void (%struct._GTypeInstance*, i8*)*), i32 0)
  store i64 %call7, i64* %g_define_type_id, align 8
  %5 = load i64, i64* %g_define_type_id, align 8
  call void @g_once_init_leave(i8* bitcast (i64* @gimp_pdb_context_get_type.g_define_type_id__volatile to i8*), i64 %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end
  %6 = load volatile i64, i64* @gimp_pdb_context_get_type.g_define_type_id__volatile, align 8
  ret i64 %6
}

declare i32 @g_once_init_enter(i8*) #1

declare i64 @g_type_register_static_simple(i64, i8*, i32, void (i8*, i8*)*, i32, void (%struct._GTypeInstance*, i8*)*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_context_get_type() #2

declare i8* @g_intern_static_string(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_pdb_context_class_intern_init(i8* %klass) #3 {
entry:
  %klass.addr = alloca i8*, align 8
  store i8* %klass, i8** %klass.addr, align 8
  %0 = load i8*, i8** %klass.addr, align 8
  %call = call i8* @g_type_class_peek_parent(i8* %0)
  store i8* %call, i8** @gimp_pdb_context_parent_class, align 8
  %1 = load i32, i32* @GimpPDBContext_private_offset, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %klass.addr, align 8
  call void @g_type_class_adjust_private_offset(i8* %2, i32* @GimpPDBContext_private_offset)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %klass.addr, align 8
  %4 = bitcast i8* %3 to %struct._GimpPDBContextClass*
  call void @gimp_pdb_context_class_init(%struct._GimpPDBContextClass* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_pdb_context_init(%struct._GimpPDBContext* %context) #3 {
entry:
  %context.addr = alloca %struct._GimpPDBContext*, align 8
  store %struct._GimpPDBContext* %context, %struct._GimpPDBContext** %context.addr, align 8
  %call = call i64 @gimp_paint_options_get_type() #6
  %call1 = call %struct._GimpContainer* @gimp_list_new(i64 %call, i32 0)
  %0 = load %struct._GimpPDBContext*, %struct._GimpPDBContext** %context.addr, align 8
  %paint_options_list = getelementptr inbounds %struct._GimpPDBContext, %struct._GimpPDBContext* %0, i32 0, i32 13
  store %struct._GimpContainer* %call1, %struct._GimpContainer** %paint_options_list, align 8
  ret void
}

declare void @g_once_init_leave(i8*, i64) #1

; Function Attrs: nounwind uwtable
define %struct._GimpContext* @gimp_pdb_context_new(%struct._Gimp* %gimp, %struct._GimpContext* %parent, i32 %set_parent) #3 {
entry:
  %retval = alloca %struct._GimpContext*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %parent.addr = alloca %struct._GimpContext*, align 8
  %set_parent.addr = alloca i32, align 4
  %context = alloca %struct._GimpPDBContext*, align 8
  %list = alloca %struct._GList*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst13 = alloca %struct._GTypeInstance*, align 8
  %__t15 = alloca i64, align 8
  %__r18 = alloca i32, align 4
  %tmp33 = alloca i32, align 4
  %info = alloca %struct._GimpPaintInfo*, align 8
  %options = alloca %struct._GimpPaintOptions*, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GimpContext* %parent, %struct._GimpContext** %parent.addr, align 8
  store i32 %set_parent, i32* %set_parent.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %1 = bitcast %struct._Gimp* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.gimp_pdb_context_new, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i32 0, i32 0))
  store %struct._GimpContext* null, %struct._GimpContext** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpContext*, %struct._GimpContext** %parent.addr, align 8
  %14 = bitcast %struct._GimpContext* %13 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %14, %struct._GTypeInstance** %__inst13, align 8
  %call16 = call i64 @gimp_context_get_type() #6
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
  %call30 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %22, i64 %23) #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.gimp_pdb_context_new, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i32 0, i32 0))
  store %struct._GimpContext* null, %struct._GimpContext** %retval
  br label %return

if.end.37:                                        ; preds = %if.then.35
  br label %do.end.38

do.end.38:                                        ; preds = %if.end.37
  %call39 = call i64 @gimp_pdb_context_get_type() #6
  %26 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %call40 = call i8* (i64, i8*, ...) @g_object_new(i64 %call39, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), %struct._Gimp* %26, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i32 0, i32 0), i8* null)
  %27 = bitcast i8* %call40 to %struct._GimpPDBContext*
  store %struct._GimpPDBContext* %27, %struct._GimpPDBContext** %context, align 8
  %28 = load %struct._GimpContext*, %struct._GimpContext** %parent.addr, align 8
  %29 = bitcast %struct._GimpContext* %28 to %struct._GTypeInstance*
  %call41 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %29, i64 80)
  %30 = bitcast %struct._GTypeInstance* %call41 to %struct._GObject*
  %31 = load %struct._GimpPDBContext*, %struct._GimpPDBContext** %context, align 8
  %32 = bitcast %struct._GimpPDBContext* %31 to %struct._GTypeInstance*
  %call42 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %32, i64 80)
  %33 = bitcast %struct._GTypeInstance* %call42 to %struct._GObject*
  %call43 = call i32 @gimp_config_sync(%struct._GObject* %30, %struct._GObject* %33, i32 0)
  %34 = load i32, i32* %set_parent.addr, align 4
  %tobool44 = icmp ne i32 %34, 0
  br i1 %tobool44, label %if.then.45, label %if.else.57

if.then.45:                                       ; preds = %do.end.38
  %35 = load %struct._GimpPDBContext*, %struct._GimpPDBContext** %context, align 8
  %36 = bitcast %struct._GimpPDBContext* %35 to %struct._GTypeInstance*
  %call46 = call i64 @gimp_context_get_type() #6
  %call47 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %36, i64 %call46)
  %37 = bitcast %struct._GTypeInstance* %call47 to %struct._GimpContext*
  call void @gimp_context_define_properties(%struct._GimpContext* %37, i32 1015804, i32 0)
  %38 = load %struct._GimpPDBContext*, %struct._GimpPDBContext** %context, align 8
  %39 = bitcast %struct._GimpPDBContext* %38 to %struct._GTypeInstance*
  %call48 = call i64 @gimp_context_get_type() #6
  %call49 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %39, i64 %call48)
  %40 = bitcast %struct._GTypeInstance* %call49 to %struct._GimpContext*
  %41 = load %struct._GimpContext*, %struct._GimpContext** %parent.addr, align 8
  call void @gimp_context_set_parent(%struct._GimpContext* %40, %struct._GimpContext* %41)
  %42 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %call50 = call %struct._GList* @gimp_get_paint_info_iter(%struct._Gimp* %42)
  store %struct._GList* %call50, %struct._GList** %list, align 8
  br label %for.cond

for.cond:                                         ; preds = %cond.end, %if.then.45
  %43 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool51 = icmp ne %struct._GList* %43, null
  br i1 %tobool51, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %44 = load %struct._GList*, %struct._GList** %list, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %44, i32 0, i32 0
  %45 = load i8*, i8** %data, align 8
  %46 = bitcast i8* %45 to %struct._GimpPaintInfo*
  store %struct._GimpPaintInfo* %46, %struct._GimpPaintInfo** %info, align 8
  %47 = load %struct._GimpPDBContext*, %struct._GimpPDBContext** %context, align 8
  %paint_options_list = getelementptr inbounds %struct._GimpPDBContext, %struct._GimpPDBContext* %47, i32 0, i32 13
  %48 = load %struct._GimpContainer*, %struct._GimpContainer** %paint_options_list, align 8
  %49 = load %struct._GimpPaintInfo*, %struct._GimpPaintInfo** %info, align 8
  %paint_options = getelementptr inbounds %struct._GimpPaintInfo, %struct._GimpPaintInfo* %49, i32 0, i32 5
  %50 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %paint_options, align 8
  %51 = bitcast %struct._GimpPaintOptions* %50 to %struct._GTypeInstance*
  %call53 = call i64 @gimp_object_get_type() #6
  %call54 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %51, i64 %call53)
  %52 = bitcast %struct._GTypeInstance* %call54 to %struct._GimpObject*
  %call55 = call i32 @gimp_container_add(%struct._GimpContainer* %48, %struct._GimpObject* %52)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %53 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool56 = icmp ne %struct._GList* %53, null
  br i1 %tobool56, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.inc
  %54 = load %struct._GList*, %struct._GList** %list, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %54, i32 0, i32 1
  %55 = load %struct._GList*, %struct._GList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.inc
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GList* [ %55, %cond.true ], [ null, %cond.false ]
  store %struct._GList* %cond, %struct._GList** %list, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.82

if.else.57:                                       ; preds = %do.end.38
  %56 = load %struct._GimpContext*, %struct._GimpContext** %parent.addr, align 8
  %57 = bitcast %struct._GimpContext* %56 to %struct._GTypeInstance*
  %call58 = call i64 @gimp_pdb_context_get_type() #6
  %call59 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %57, i64 %call58)
  %58 = bitcast %struct._GTypeInstance* %call59 to %struct._GimpPDBContext*
  %paint_options_list60 = getelementptr inbounds %struct._GimpPDBContext, %struct._GimpPDBContext* %58, i32 0, i32 13
  %59 = load %struct._GimpContainer*, %struct._GimpContainer** %paint_options_list60, align 8
  %60 = bitcast %struct._GimpContainer* %59 to %struct._GTypeInstance*
  %call61 = call i64 @gimp_list_get_type() #6
  %call62 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %60, i64 %call61)
  %61 = bitcast %struct._GTypeInstance* %call62 to %struct._GimpList*
  %list63 = getelementptr inbounds %struct._GimpList, %struct._GimpList* %61, i32 0, i32 1
  %62 = load %struct._GList*, %struct._GList** %list63, align 8
  store %struct._GList* %62, %struct._GList** %list, align 8
  br label %for.cond.64

for.cond.64:                                      ; preds = %cond.end.79, %if.else.57
  %63 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool65 = icmp ne %struct._GList* %63, null
  br i1 %tobool65, label %for.body.66, label %for.end.81

for.body.66:                                      ; preds = %for.cond.64
  %64 = load %struct._GList*, %struct._GList** %list, align 8
  %data68 = getelementptr inbounds %struct._GList, %struct._GList* %64, i32 0, i32 0
  %65 = load i8*, i8** %data68, align 8
  %66 = bitcast i8* %65 to %struct._GimpConfig*
  %call69 = call i8* @gimp_config_duplicate(%struct._GimpConfig* %66)
  %67 = bitcast i8* %call69 to %struct._GimpPaintOptions*
  store %struct._GimpPaintOptions* %67, %struct._GimpPaintOptions** %options, align 8
  %68 = load %struct._GimpPDBContext*, %struct._GimpPDBContext** %context, align 8
  %paint_options_list70 = getelementptr inbounds %struct._GimpPDBContext, %struct._GimpPDBContext* %68, i32 0, i32 13
  %69 = load %struct._GimpContainer*, %struct._GimpContainer** %paint_options_list70, align 8
  %70 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %options, align 8
  %71 = bitcast %struct._GimpPaintOptions* %70 to %struct._GTypeInstance*
  %call71 = call i64 @gimp_object_get_type() #6
  %call72 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %71, i64 %call71)
  %72 = bitcast %struct._GTypeInstance* %call72 to %struct._GimpObject*
  %call73 = call i32 @gimp_container_add(%struct._GimpContainer* %69, %struct._GimpObject* %72)
  %73 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %options, align 8
  %74 = bitcast %struct._GimpPaintOptions* %73 to i8*
  call void @g_object_unref(i8* %74)
  br label %for.inc.74

for.inc.74:                                       ; preds = %for.body.66
  %75 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool75 = icmp ne %struct._GList* %75, null
  br i1 %tobool75, label %cond.true.76, label %cond.false.78

cond.true.76:                                     ; preds = %for.inc.74
  %76 = load %struct._GList*, %struct._GList** %list, align 8
  %next77 = getelementptr inbounds %struct._GList, %struct._GList* %76, i32 0, i32 1
  %77 = load %struct._GList*, %struct._GList** %next77, align 8
  br label %cond.end.79

cond.false.78:                                    ; preds = %for.inc.74
  br label %cond.end.79

cond.end.79:                                      ; preds = %cond.false.78, %cond.true.76
  %cond80 = phi %struct._GList* [ %77, %cond.true.76 ], [ null, %cond.false.78 ]
  store %struct._GList* %cond80, %struct._GList** %list, align 8
  br label %for.cond.64

for.end.81:                                       ; preds = %for.cond.64
  br label %if.end.82

if.end.82:                                        ; preds = %for.end.81, %for.end
  %78 = load %struct._GimpPDBContext*, %struct._GimpPDBContext** %context, align 8
  %79 = bitcast %struct._GimpPDBContext* %78 to %struct._GTypeInstance*
  %call83 = call i64 @gimp_context_get_type() #6
  %call84 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %79, i64 %call83)
  %80 = bitcast %struct._GTypeInstance* %call84 to %struct._GimpContext*
  store %struct._GimpContext* %80, %struct._GimpContext** %retval
  br label %return

return:                                           ; preds = %if.end.82, %if.else.36, %if.else.9
  %81 = load %struct._GimpContext*, %struct._GimpContext** %retval
  ret %struct._GimpContext* %81
}

; Function Attrs: nounwind readnone
declare i64 @gimp_get_type() #2

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #4

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

declare i8* @g_object_new(i64, i8*, ...) #1

declare i32 @gimp_config_sync(%struct._GObject*, %struct._GObject*, i32) #1

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

declare void @gimp_context_define_properties(%struct._GimpContext*, i32, i32) #1

declare void @gimp_context_set_parent(%struct._GimpContext*, %struct._GimpContext*) #1

declare %struct._GList* @gimp_get_paint_info_iter(%struct._Gimp*) #1

declare i32 @gimp_container_add(%struct._GimpContainer*, %struct._GimpObject*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_object_get_type() #2

; Function Attrs: nounwind readnone
declare i64 @gimp_list_get_type() #2

declare i8* @gimp_config_duplicate(%struct._GimpConfig*) #1

declare void @g_object_unref(i8*) #1

; Function Attrs: nounwind uwtable
define %struct._GimpPaintOptions* @gimp_pdb_context_get_paint_options(%struct._GimpPDBContext* %context, i8* %name) #3 {
entry:
  %retval = alloca %struct._GimpPaintOptions*, align 8
  %context.addr = alloca %struct._GimpPDBContext*, align 8
  %name.addr = alloca i8*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpPDBContext* %context, %struct._GimpPDBContext** %context.addr, align 8
  store i8* %name, i8** %name.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpPDBContext*, %struct._GimpPDBContext** %context.addr, align 8
  %1 = bitcast %struct._GimpPDBContext* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_pdb_context_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__func__.gimp_pdb_context_get_paint_options, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.7, i32 0, i32 0))
  store %struct._GimpPaintOptions* null, %struct._GimpPaintOptions** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load i8*, i8** %name.addr, align 8
  %tobool11 = icmp ne i8* %13, null
  br i1 %tobool11, label %if.end.17, label %if.then.12

if.then.12:                                       ; preds = %do.end
  %14 = load %struct._GimpPDBContext*, %struct._GimpPDBContext** %context.addr, align 8
  %15 = bitcast %struct._GimpPDBContext* %14 to %struct._GTypeInstance*
  %call13 = call i64 @gimp_context_get_type() #6
  %call14 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %15, i64 %call13)
  %16 = bitcast %struct._GTypeInstance* %call14 to %struct._GimpContext*
  %call15 = call %struct._GimpPaintInfo* @gimp_context_get_paint_info(%struct._GimpContext* %16)
  %17 = bitcast %struct._GimpPaintInfo* %call15 to i8*
  %call16 = call i8* @gimp_object_get_name(i8* %17)
  store i8* %call16, i8** %name.addr, align 8
  br label %if.end.17

if.end.17:                                        ; preds = %if.then.12, %do.end
  %18 = load %struct._GimpPDBContext*, %struct._GimpPDBContext** %context.addr, align 8
  %paint_options_list = getelementptr inbounds %struct._GimpPDBContext, %struct._GimpPDBContext* %18, i32 0, i32 13
  %19 = load %struct._GimpContainer*, %struct._GimpContainer** %paint_options_list, align 8
  %20 = load i8*, i8** %name.addr, align 8
  %call18 = call %struct._GimpObject* @gimp_container_get_child_by_name(%struct._GimpContainer* %19, i8* %20)
  %21 = bitcast %struct._GimpObject* %call18 to %struct._GimpPaintOptions*
  store %struct._GimpPaintOptions* %21, %struct._GimpPaintOptions** %retval
  br label %return

return:                                           ; preds = %if.end.17, %if.else.9
  %22 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %retval
  ret %struct._GimpPaintOptions* %22
}

declare i8* @gimp_object_get_name(i8*) #1

declare %struct._GimpPaintInfo* @gimp_context_get_paint_info(%struct._GimpContext*) #1

declare %struct._GimpObject* @gimp_container_get_child_by_name(%struct._GimpContainer*, i8*) #1

; Function Attrs: nounwind uwtable
define %struct._GList* @gimp_pdb_context_get_brush_options(%struct._GimpPDBContext* %context) #3 {
entry:
  %retval = alloca %struct._GList*, align 8
  %context.addr = alloca %struct._GimpPDBContext*, align 8
  %brush_options = alloca %struct._GList*, align 8
  %list = alloca %struct._GList*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %options = alloca %struct._GimpPaintOptions*, align 8
  store %struct._GimpPDBContext* %context, %struct._GimpPDBContext** %context.addr, align 8
  store %struct._GList* null, %struct._GList** %brush_options, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpPDBContext*, %struct._GimpPDBContext** %context.addr, align 8
  %1 = bitcast %struct._GimpPDBContext* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_pdb_context_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__func__.gimp_pdb_context_get_brush_options, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.7, i32 0, i32 0))
  store %struct._GList* null, %struct._GList** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpPDBContext*, %struct._GimpPDBContext** %context.addr, align 8
  %paint_options_list = getelementptr inbounds %struct._GimpPDBContext, %struct._GimpPDBContext* %13, i32 0, i32 13
  %14 = load %struct._GimpContainer*, %struct._GimpContainer** %paint_options_list, align 8
  %15 = bitcast %struct._GimpContainer* %14 to %struct._GTypeInstance*
  %call11 = call i64 @gimp_list_get_type() #6
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %15, i64 %call11)
  %16 = bitcast %struct._GTypeInstance* %call12 to %struct._GimpList*
  %list13 = getelementptr inbounds %struct._GimpList, %struct._GimpList* %16, i32 0, i32 1
  %17 = load %struct._GList*, %struct._GList** %list13, align 8
  store %struct._GList* %17, %struct._GList** %list, align 8
  br label %for.cond

for.cond:                                         ; preds = %cond.end, %do.end
  %18 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool14 = icmp ne %struct._GList* %18, null
  br i1 %tobool14, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %19 = load %struct._GList*, %struct._GList** %list, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %19, i32 0, i32 0
  %20 = load i8*, i8** %data, align 8
  %21 = bitcast i8* %20 to %struct._GimpPaintOptions*
  store %struct._GimpPaintOptions* %21, %struct._GimpPaintOptions** %options, align 8
  %22 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %options, align 8
  %paint_info = getelementptr inbounds %struct._GimpPaintOptions, %struct._GimpPaintOptions* %22, i32 0, i32 1
  %23 = load %struct._GimpPaintInfo*, %struct._GimpPaintInfo** %paint_info, align 8
  %paint_type = getelementptr inbounds %struct._GimpPaintInfo, %struct._GimpPaintInfo* %23, i32 0, i32 2
  %24 = load i64, i64* %paint_type, align 8
  %call16 = call i64 @gimp_brush_core_get_type() #6
  %call17 = call i32 @g_type_is_a(i64 %24, i64 %call16)
  %tobool18 = icmp ne i32 %call17, 0
  br i1 %tobool18, label %if.then.19, label %if.end.21

if.then.19:                                       ; preds = %for.body
  %25 = load %struct._GList*, %struct._GList** %brush_options, align 8
  %26 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %options, align 8
  %27 = bitcast %struct._GimpPaintOptions* %26 to i8*
  %call20 = call %struct._GList* @g_list_prepend(%struct._GList* %25, i8* %27)
  store %struct._GList* %call20, %struct._GList** %brush_options, align 8
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.19, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.21
  %28 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool22 = icmp ne %struct._GList* %28, null
  br i1 %tobool22, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.inc
  %29 = load %struct._GList*, %struct._GList** %list, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %29, i32 0, i32 1
  %30 = load %struct._GList*, %struct._GList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.inc
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GList* [ %30, %cond.true ], [ null, %cond.false ]
  store %struct._GList* %cond, %struct._GList** %list, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %31 = load %struct._GList*, %struct._GList** %brush_options, align 8
  %call23 = call %struct._GList* @g_list_reverse(%struct._GList* %31)
  store %struct._GList* %call23, %struct._GList** %retval
  br label %return

return:                                           ; preds = %for.end, %if.else.9
  %32 = load %struct._GList*, %struct._GList** %retval
  ret %struct._GList* %32
}

declare i32 @g_type_is_a(i64, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_brush_core_get_type() #2

declare %struct._GList* @g_list_prepend(%struct._GList*, i8*) #1

declare %struct._GList* @g_list_reverse(%struct._GList*) #1

declare i8* @g_type_class_peek_parent(i8*) #1

declare void @g_type_class_adjust_private_offset(i8*, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_pdb_context_class_init(%struct._GimpPDBContextClass* %klass) #3 {
entry:
  %klass.addr = alloca %struct._GimpPDBContextClass*, align 8
  %object_class = alloca %struct._GObjectClass*, align 8
  store %struct._GimpPDBContextClass* %klass, %struct._GimpPDBContextClass** %klass.addr, align 8
  %0 = load %struct._GimpPDBContextClass*, %struct._GimpPDBContextClass** %klass.addr, align 8
  %1 = bitcast %struct._GimpPDBContextClass* %0 to %struct._GTypeClass*
  %call = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 80)
  %2 = bitcast %struct._GTypeClass* %call to %struct._GObjectClass*
  store %struct._GObjectClass* %2, %struct._GObjectClass** %object_class, align 8
  %3 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %constructed = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %3, i32 0, i32 9
  store void (%struct._GObject*)* @gimp_pdb_context_constructed, void (%struct._GObject*)** %constructed, align 8
  %4 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %finalize = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %4, i32 0, i32 6
  store void (%struct._GObject*)* @gimp_pdb_context_finalize, void (%struct._GObject*)** %finalize, align 8
  %5 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %set_property = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %5, i32 0, i32 3
  store void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)* @gimp_pdb_context_set_property, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)** %set_property, align 8
  %6 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %get_property = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %6, i32 0, i32 4
  store void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)* @gimp_pdb_context_get_property, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)** %get_property, align 8
  %7 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call1 = call %struct._GParamSpec* @g_param_spec_boolean(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i32 0, i32 0), i32 1, i32 487)
  call void @g_object_class_install_property(%struct._GObjectClass* %7, i32 1, %struct._GParamSpec* %call1)
  %8 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call2 = call %struct._GParamSpec* @g_param_spec_boolean(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i32 0, i32 0), i8* null, i8* null, i32 0, i32 487)
  call void @g_object_class_install_property(%struct._GObjectClass* %8, i32 2, %struct._GParamSpec* %call2)
  %9 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call3 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.11, i32 0, i32 0), i8* null, i8* null, double 0.000000e+00, double 1.000000e+03, double 1.000000e+01, i32 487)
  call void @g_object_class_install_property(%struct._GObjectClass* %9, i32 3, %struct._GParamSpec* %call3)
  %10 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call4 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.12, i32 0, i32 0), i8* null, i8* null, double 0.000000e+00, double 1.000000e+03, double 1.000000e+01, i32 487)
  call void @g_object_class_install_property(%struct._GObjectClass* %10, i32 4, %struct._GParamSpec* %call4)
  %11 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call5 = call %struct._GParamSpec* @g_param_spec_boolean(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i32 0, i32 0), i8* null, i8* null, i32 0, i32 487)
  call void @g_object_class_install_property(%struct._GObjectClass* %11, i32 5, %struct._GParamSpec* %call5)
  %12 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call6 = call i64 @gimp_select_criterion_get_type() #6
  %call7 = call %struct._GParamSpec* @g_param_spec_enum(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i32 0, i32 0), i8* null, i8* null, i64 %call6, i32 0, i32 487)
  call void @g_object_class_install_property(%struct._GObjectClass* %12, i32 6, %struct._GParamSpec* %call7)
  %13 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call8 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.15, i32 0, i32 0), i8* null, i8* null, double 0.000000e+00, double 1.000000e+00, double 0.000000e+00, i32 487)
  call void @g_object_class_install_property(%struct._GObjectClass* %13, i32 7, %struct._GParamSpec* %call8)
  %14 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call9 = call %struct._GParamSpec* @g_param_spec_boolean(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.16, i32 0, i32 0), i8* null, i8* null, i32 0, i32 487)
  call void @g_object_class_install_property(%struct._GObjectClass* %14, i32 8, %struct._GParamSpec* %call9)
  %15 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call10 = call i64 @gimp_interpolation_type_get_type() #6
  %call11 = call %struct._GParamSpec* @g_param_spec_enum(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i32 0, i32 0), i8* null, i8* null, i64 %call10, i32 2, i32 487)
  call void @g_object_class_install_property(%struct._GObjectClass* %15, i32 9, %struct._GParamSpec* %call11)
  %16 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call12 = call i64 @gimp_transform_direction_get_type() #6
  %call13 = call %struct._GParamSpec* @g_param_spec_enum(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.18, i32 0, i32 0), i8* null, i8* null, i64 %call12, i32 0, i32 487)
  call void @g_object_class_install_property(%struct._GObjectClass* %16, i32 10, %struct._GParamSpec* %call13)
  %17 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call14 = call i64 @gimp_transform_resize_get_type() #6
  %call15 = call %struct._GParamSpec* @g_param_spec_enum(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.19, i32 0, i32 0), i8* null, i8* null, i64 %call14, i32 0, i32 487)
  call void @g_object_class_install_property(%struct._GObjectClass* %17, i32 11, %struct._GParamSpec* %call15)
  %18 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call16 = call %struct._GParamSpec* @g_param_spec_int(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.20, i32 0, i32 0), i8* null, i8* null, i32 1, i32 2147483647, i32 3, i32 487)
  call void @g_object_class_install_property(%struct._GObjectClass* %18, i32 12, %struct._GParamSpec* %call16)
  ret void
}

declare %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass*, i64) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_pdb_context_constructed(%struct._GObject* %object) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %interpolation = alloca i32, align 4
  %threshold = alloca i32, align 4
  %pspec = alloca %struct._GParamSpec*, align 8
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  %0 = load i8*, i8** @gimp_pdb_context_parent_class, align 8
  %1 = bitcast i8* %0 to %struct._GTypeClass*
  %call = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 80)
  %2 = bitcast %struct._GTypeClass* %call to %struct._GObjectClass*
  %constructed = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %2, i32 0, i32 9
  %3 = load void (%struct._GObject*)*, void (%struct._GObject*)** %constructed, align 8
  %tobool = icmp ne void (%struct._GObject*)* %3, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load i8*, i8** @gimp_pdb_context_parent_class, align 8
  %5 = bitcast i8* %4 to %struct._GTypeClass*
  %call1 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %5, i64 80)
  %6 = bitcast %struct._GTypeClass* %call1 to %struct._GObjectClass*
  %constructed2 = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %6, i32 0, i32 9
  %7 = load void (%struct._GObject*)*, void (%struct._GObject*)** %constructed2, align 8
  %8 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  call void %7(%struct._GObject* %8)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %9 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %10 = bitcast %struct._GObject* %9 to %struct._GTypeInstance*
  %call3 = call i64 @gimp_context_get_type() #6
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %10, i64 %call3)
  %11 = bitcast %struct._GTypeInstance* %call4 to %struct._GimpContext*
  %gimp = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %11, i32 0, i32 1
  %12 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %config = getelementptr inbounds %struct._Gimp, %struct._Gimp* %12, i32 0, i32 1
  %13 = load %struct._GimpCoreConfig*, %struct._GimpCoreConfig** %config, align 8
  %interpolation_type = getelementptr inbounds %struct._GimpCoreConfig, %struct._GimpCoreConfig* %13, i32 0, i32 2
  %14 = load i32, i32* %interpolation_type, align 4
  store i32 %14, i32* %interpolation, align 4
  %15 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %16 = bitcast %struct._GObject* %15 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %16, i32 0, i32 0
  %17 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %18 = bitcast %struct._GTypeClass* %17 to %struct._GObjectClass*
  %call5 = call %struct._GParamSpec* @g_object_class_find_property(%struct._GObjectClass* %18, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i32 0, i32 0))
  store %struct._GParamSpec* %call5, %struct._GParamSpec** %pspec, align 8
  %19 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec, align 8
  %tobool6 = icmp ne %struct._GParamSpec* %19, null
  br i1 %tobool6, label %if.then.7, label %if.end.9

if.then.7:                                        ; preds = %if.end
  %20 = load i32, i32* %interpolation, align 4
  %21 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec, align 8
  %22 = bitcast %struct._GParamSpec* %21 to %struct._GTypeInstance*
  %23 = load i64*, i64** @g_param_spec_types, align 8
  %arrayidx = getelementptr inbounds i64, i64* %23, i64 10
  %24 = load i64, i64* %arrayidx, align 8
  %call8 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %22, i64 %24)
  %25 = bitcast %struct._GTypeInstance* %call8 to %struct._GParamSpecEnum*
  %default_value = getelementptr inbounds %struct._GParamSpecEnum, %struct._GParamSpecEnum* %25, i32 0, i32 2
  store i32 %20, i32* %default_value, align 4
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.7, %if.end
  %26 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %27 = bitcast %struct._GObject* %26 to i8*
  %28 = load i32, i32* %interpolation, align 4
  call void (i8*, i8*, ...) @g_object_set(i8* %27, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i32 0, i32 0), i32 %28, i8* null)
  %29 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %30 = bitcast %struct._GObject* %29 to %struct._GTypeInstance*
  %call10 = call i64 @gimp_context_get_type() #6
  %call11 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %30, i64 %call10)
  %31 = bitcast %struct._GTypeInstance* %call11 to %struct._GimpContext*
  %gimp12 = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %31, i32 0, i32 1
  %32 = load %struct._Gimp*, %struct._Gimp** %gimp12, align 8
  %config13 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %32, i32 0, i32 1
  %33 = load %struct._GimpCoreConfig*, %struct._GimpCoreConfig** %config13, align 8
  %default_threshold = getelementptr inbounds %struct._GimpCoreConfig, %struct._GimpCoreConfig* %33, i32 0, i32 3
  %34 = load i32, i32* %default_threshold, align 4
  store i32 %34, i32* %threshold, align 4
  %35 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %36 = bitcast %struct._GObject* %35 to %struct._GTypeInstance*
  %g_class14 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %36, i32 0, i32 0
  %37 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class14, align 8
  %38 = bitcast %struct._GTypeClass* %37 to %struct._GObjectClass*
  %call15 = call %struct._GParamSpec* @g_object_class_find_property(%struct._GObjectClass* %38, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.15, i32 0, i32 0))
  store %struct._GParamSpec* %call15, %struct._GParamSpec** %pspec, align 8
  %39 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec, align 8
  %tobool16 = icmp ne %struct._GParamSpec* %39, null
  br i1 %tobool16, label %if.then.17, label %if.end.21

if.then.17:                                       ; preds = %if.end.9
  %40 = load i32, i32* %threshold, align 4
  %conv = sitofp i32 %40 to double
  %div = fdiv double %conv, 2.550000e+02
  %41 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec, align 8
  %42 = bitcast %struct._GParamSpec* %41 to %struct._GTypeInstance*
  %43 = load i64*, i64** @g_param_spec_types, align 8
  %arrayidx18 = getelementptr inbounds i64, i64* %43, i64 13
  %44 = load i64, i64* %arrayidx18, align 8
  %call19 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %42, i64 %44)
  %45 = bitcast %struct._GTypeInstance* %call19 to %struct._GParamSpecDouble*
  %default_value20 = getelementptr inbounds %struct._GParamSpecDouble, %struct._GParamSpecDouble* %45, i32 0, i32 3
  store double %div, double* %default_value20, align 8
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.17, %if.end.9
  %46 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %47 = bitcast %struct._GObject* %46 to i8*
  %48 = load i32, i32* %threshold, align 4
  %conv22 = sitofp i32 %48 to double
  %div23 = fdiv double %conv22, 2.550000e+02
  call void (i8*, i8*, ...) @g_object_set(i8* %47, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.15, i32 0, i32 0), double %div23, i8* null)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_pdb_context_finalize(%struct._GObject* %object) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %context = alloca %struct._GimpPDBContext*, align 8
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_pdb_context_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpPDBContext*
  store %struct._GimpPDBContext* %2, %struct._GimpPDBContext** %context, align 8
  %3 = load %struct._GimpPDBContext*, %struct._GimpPDBContext** %context, align 8
  %paint_options_list = getelementptr inbounds %struct._GimpPDBContext, %struct._GimpPDBContext* %3, i32 0, i32 13
  %4 = load %struct._GimpContainer*, %struct._GimpContainer** %paint_options_list, align 8
  %tobool = icmp ne %struct._GimpContainer* %4, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct._GimpPDBContext*, %struct._GimpPDBContext** %context, align 8
  %paint_options_list2 = getelementptr inbounds %struct._GimpPDBContext, %struct._GimpPDBContext* %5, i32 0, i32 13
  %6 = load %struct._GimpContainer*, %struct._GimpContainer** %paint_options_list2, align 8
  %7 = bitcast %struct._GimpContainer* %6 to i8*
  call void @g_object_unref(i8* %7)
  %8 = load %struct._GimpPDBContext*, %struct._GimpPDBContext** %context, align 8
  %paint_options_list3 = getelementptr inbounds %struct._GimpPDBContext, %struct._GimpPDBContext* %8, i32 0, i32 13
  store %struct._GimpContainer* null, %struct._GimpContainer** %paint_options_list3, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %9 = load i8*, i8** @gimp_pdb_context_parent_class, align 8
  %10 = bitcast i8* %9 to %struct._GTypeClass*
  %call4 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %10, i64 80)
  %11 = bitcast %struct._GTypeClass* %call4 to %struct._GObjectClass*
  %finalize = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %11, i32 0, i32 6
  %12 = load void (%struct._GObject*)*, void (%struct._GObject*)** %finalize, align 8
  %13 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  call void %12(%struct._GObject* %13)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_pdb_context_set_property(%struct._GObject* %object, i32 %property_id, %struct._GValue* %value, %struct._GParamSpec* %pspec) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %property_id.addr = alloca i32, align 4
  %value.addr = alloca %struct._GValue*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %options = alloca %struct._GimpPDBContext*, align 8
  %_glib__object = alloca %struct._GObject*, align 8
  %_glib__pspec = alloca %struct._GParamSpec*, align 8
  %_glib__property_id = alloca i32, align 4
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  store i32 %property_id, i32* %property_id.addr, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_pdb_context_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpPDBContext*
  store %struct._GimpPDBContext* %2, %struct._GimpPDBContext** %options, align 8
  %3 = load i32, i32* %property_id.addr, align 4
  switch i32 %3, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.3
    i32 3, label %sw.bb.5
    i32 4, label %sw.bb.7
    i32 5, label %sw.bb.9
    i32 6, label %sw.bb.11
    i32 7, label %sw.bb.13
    i32 8, label %sw.bb.15
    i32 9, label %sw.bb.17
    i32 10, label %sw.bb.19
    i32 11, label %sw.bb.21
    i32 12, label %sw.bb.23
  ]

sw.bb:                                            ; preds = %entry
  %4 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call2 = call i32 @g_value_get_boolean(%struct._GValue* %4)
  %5 = load %struct._GimpPDBContext*, %struct._GimpPDBContext** %options, align 8
  %antialias = getelementptr inbounds %struct._GimpPDBContext, %struct._GimpPDBContext* %5, i32 0, i32 1
  store i32 %call2, i32* %antialias, align 4
  br label %sw.epilog

sw.bb.3:                                          ; preds = %entry
  %6 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call4 = call i32 @g_value_get_boolean(%struct._GValue* %6)
  %7 = load %struct._GimpPDBContext*, %struct._GimpPDBContext** %options, align 8
  %feather = getelementptr inbounds %struct._GimpPDBContext, %struct._GimpPDBContext* %7, i32 0, i32 2
  store i32 %call4, i32* %feather, align 4
  br label %sw.epilog

sw.bb.5:                                          ; preds = %entry
  %8 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call6 = call double @g_value_get_double(%struct._GValue* %8)
  %9 = load %struct._GimpPDBContext*, %struct._GimpPDBContext** %options, align 8
  %feather_radius_x = getelementptr inbounds %struct._GimpPDBContext, %struct._GimpPDBContext* %9, i32 0, i32 3
  store double %call6, double* %feather_radius_x, align 8
  br label %sw.epilog

sw.bb.7:                                          ; preds = %entry
  %10 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call8 = call double @g_value_get_double(%struct._GValue* %10)
  %11 = load %struct._GimpPDBContext*, %struct._GimpPDBContext** %options, align 8
  %feather_radius_y = getelementptr inbounds %struct._GimpPDBContext, %struct._GimpPDBContext* %11, i32 0, i32 4
  store double %call8, double* %feather_radius_y, align 8
  br label %sw.epilog

sw.bb.9:                                          ; preds = %entry
  %12 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call10 = call i32 @g_value_get_boolean(%struct._GValue* %12)
  %13 = load %struct._GimpPDBContext*, %struct._GimpPDBContext** %options, align 8
  %sample_merged = getelementptr inbounds %struct._GimpPDBContext, %struct._GimpPDBContext* %13, i32 0, i32 5
  store i32 %call10, i32* %sample_merged, align 4
  br label %sw.epilog

sw.bb.11:                                         ; preds = %entry
  %14 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call12 = call i32 @g_value_get_enum(%struct._GValue* %14)
  %15 = load %struct._GimpPDBContext*, %struct._GimpPDBContext** %options, align 8
  %sample_criterion = getelementptr inbounds %struct._GimpPDBContext, %struct._GimpPDBContext* %15, i32 0, i32 6
  store i32 %call12, i32* %sample_criterion, align 4
  br label %sw.epilog

sw.bb.13:                                         ; preds = %entry
  %16 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call14 = call double @g_value_get_double(%struct._GValue* %16)
  %17 = load %struct._GimpPDBContext*, %struct._GimpPDBContext** %options, align 8
  %sample_threshold = getelementptr inbounds %struct._GimpPDBContext, %struct._GimpPDBContext* %17, i32 0, i32 7
  store double %call14, double* %sample_threshold, align 8
  br label %sw.epilog

sw.bb.15:                                         ; preds = %entry
  %18 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call16 = call i32 @g_value_get_boolean(%struct._GValue* %18)
  %19 = load %struct._GimpPDBContext*, %struct._GimpPDBContext** %options, align 8
  %sample_transparent = getelementptr inbounds %struct._GimpPDBContext, %struct._GimpPDBContext* %19, i32 0, i32 8
  store i32 %call16, i32* %sample_transparent, align 4
  br label %sw.epilog

sw.bb.17:                                         ; preds = %entry
  %20 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call18 = call i32 @g_value_get_enum(%struct._GValue* %20)
  %21 = load %struct._GimpPDBContext*, %struct._GimpPDBContext** %options, align 8
  %interpolation = getelementptr inbounds %struct._GimpPDBContext, %struct._GimpPDBContext* %21, i32 0, i32 9
  store i32 %call18, i32* %interpolation, align 4
  br label %sw.epilog

sw.bb.19:                                         ; preds = %entry
  %22 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call20 = call i32 @g_value_get_enum(%struct._GValue* %22)
  %23 = load %struct._GimpPDBContext*, %struct._GimpPDBContext** %options, align 8
  %transform_direction = getelementptr inbounds %struct._GimpPDBContext, %struct._GimpPDBContext* %23, i32 0, i32 10
  store i32 %call20, i32* %transform_direction, align 4
  br label %sw.epilog

sw.bb.21:                                         ; preds = %entry
  %24 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call22 = call i32 @g_value_get_enum(%struct._GValue* %24)
  %25 = load %struct._GimpPDBContext*, %struct._GimpPDBContext** %options, align 8
  %transform_resize = getelementptr inbounds %struct._GimpPDBContext, %struct._GimpPDBContext* %25, i32 0, i32 11
  store i32 %call22, i32* %transform_resize, align 4
  br label %sw.epilog

sw.bb.23:                                         ; preds = %entry
  %26 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call24 = call i32 @g_value_get_int(%struct._GValue* %26)
  %27 = load %struct._GimpPDBContext*, %struct._GimpPDBContext** %options, align 8
  %transform_recursion = getelementptr inbounds %struct._GimpPDBContext, %struct._GimpPDBContext* %27, i32 0, i32 12
  store i32 %call24, i32* %transform_recursion, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %sw.default
  %28 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  store %struct._GObject* %28, %struct._GObject** %_glib__object, align 8
  %29 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  store %struct._GParamSpec* %29, %struct._GParamSpec** %_glib__pspec, align 8
  %30 = load i32, i32* %property_id.addr, align 4
  store i32 %30, i32* %_glib__property_id, align 4
  %31 = load i32, i32* %_glib__property_id, align 4
  %32 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %name = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %32, i32 0, i32 1
  %33 = load i8*, i8** %name, align 8
  %34 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %35 = bitcast %struct._GParamSpec* %34 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %35, i32 0, i32 0
  %36 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %36, i32 0, i32 0
  %37 = load i64, i64* %g_type, align 8
  %call25 = call i8* @g_type_name(i64 %37)
  %38 = load %struct._GObject*, %struct._GObject** %_glib__object, align 8
  %39 = bitcast %struct._GObject* %38 to %struct._GTypeInstance*
  %g_class26 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %39, i32 0, i32 0
  %40 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class26, align 8
  %g_type27 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %40, i32 0, i32 0
  %41 = load i64, i64* %g_type27, align 8
  %call28 = call i8* @g_type_name(i64 %41)
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.22, i32 0, i32 0), i32 268, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.23, i32 0, i32 0), i32 %31, i8* %33, i8* %call25, i8* %call28)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb.23, %sw.bb.21, %sw.bb.19, %sw.bb.17, %sw.bb.15, %sw.bb.13, %sw.bb.11, %sw.bb.9, %sw.bb.7, %sw.bb.5, %sw.bb.3, %sw.bb
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_pdb_context_get_property(%struct._GObject* %object, i32 %property_id, %struct._GValue* %value, %struct._GParamSpec* %pspec) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %property_id.addr = alloca i32, align 4
  %value.addr = alloca %struct._GValue*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %options = alloca %struct._GimpPDBContext*, align 8
  %_glib__object = alloca %struct._GObject*, align 8
  %_glib__pspec = alloca %struct._GParamSpec*, align 8
  %_glib__property_id = alloca i32, align 4
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  store i32 %property_id, i32* %property_id.addr, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_pdb_context_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpPDBContext*
  store %struct._GimpPDBContext* %2, %struct._GimpPDBContext** %options, align 8
  %3 = load i32, i32* %property_id.addr, align 4
  switch i32 %3, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.2
    i32 3, label %sw.bb.3
    i32 4, label %sw.bb.4
    i32 5, label %sw.bb.5
    i32 6, label %sw.bb.6
    i32 7, label %sw.bb.7
    i32 8, label %sw.bb.8
    i32 9, label %sw.bb.9
    i32 10, label %sw.bb.10
    i32 11, label %sw.bb.11
    i32 12, label %sw.bb.12
  ]

sw.bb:                                            ; preds = %entry
  %4 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %5 = load %struct._GimpPDBContext*, %struct._GimpPDBContext** %options, align 8
  %antialias = getelementptr inbounds %struct._GimpPDBContext, %struct._GimpPDBContext* %5, i32 0, i32 1
  %6 = load i32, i32* %antialias, align 4
  call void @g_value_set_boolean(%struct._GValue* %4, i32 %6)
  br label %sw.epilog

sw.bb.2:                                          ; preds = %entry
  %7 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %8 = load %struct._GimpPDBContext*, %struct._GimpPDBContext** %options, align 8
  %feather = getelementptr inbounds %struct._GimpPDBContext, %struct._GimpPDBContext* %8, i32 0, i32 2
  %9 = load i32, i32* %feather, align 4
  call void @g_value_set_boolean(%struct._GValue* %7, i32 %9)
  br label %sw.epilog

sw.bb.3:                                          ; preds = %entry
  %10 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %11 = load %struct._GimpPDBContext*, %struct._GimpPDBContext** %options, align 8
  %feather_radius_x = getelementptr inbounds %struct._GimpPDBContext, %struct._GimpPDBContext* %11, i32 0, i32 3
  %12 = load double, double* %feather_radius_x, align 8
  call void @g_value_set_double(%struct._GValue* %10, double %12)
  br label %sw.epilog

sw.bb.4:                                          ; preds = %entry
  %13 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %14 = load %struct._GimpPDBContext*, %struct._GimpPDBContext** %options, align 8
  %feather_radius_y = getelementptr inbounds %struct._GimpPDBContext, %struct._GimpPDBContext* %14, i32 0, i32 4
  %15 = load double, double* %feather_radius_y, align 8
  call void @g_value_set_double(%struct._GValue* %13, double %15)
  br label %sw.epilog

sw.bb.5:                                          ; preds = %entry
  %16 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %17 = load %struct._GimpPDBContext*, %struct._GimpPDBContext** %options, align 8
  %sample_merged = getelementptr inbounds %struct._GimpPDBContext, %struct._GimpPDBContext* %17, i32 0, i32 5
  %18 = load i32, i32* %sample_merged, align 4
  call void @g_value_set_boolean(%struct._GValue* %16, i32 %18)
  br label %sw.epilog

sw.bb.6:                                          ; preds = %entry
  %19 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %20 = load %struct._GimpPDBContext*, %struct._GimpPDBContext** %options, align 8
  %sample_criterion = getelementptr inbounds %struct._GimpPDBContext, %struct._GimpPDBContext* %20, i32 0, i32 6
  %21 = load i32, i32* %sample_criterion, align 4
  call void @g_value_set_enum(%struct._GValue* %19, i32 %21)
  br label %sw.epilog

sw.bb.7:                                          ; preds = %entry
  %22 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %23 = load %struct._GimpPDBContext*, %struct._GimpPDBContext** %options, align 8
  %sample_threshold = getelementptr inbounds %struct._GimpPDBContext, %struct._GimpPDBContext* %23, i32 0, i32 7
  %24 = load double, double* %sample_threshold, align 8
  call void @g_value_set_double(%struct._GValue* %22, double %24)
  br label %sw.epilog

sw.bb.8:                                          ; preds = %entry
  %25 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %26 = load %struct._GimpPDBContext*, %struct._GimpPDBContext** %options, align 8
  %sample_transparent = getelementptr inbounds %struct._GimpPDBContext, %struct._GimpPDBContext* %26, i32 0, i32 8
  %27 = load i32, i32* %sample_transparent, align 4
  call void @g_value_set_boolean(%struct._GValue* %25, i32 %27)
  br label %sw.epilog

sw.bb.9:                                          ; preds = %entry
  %28 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %29 = load %struct._GimpPDBContext*, %struct._GimpPDBContext** %options, align 8
  %interpolation = getelementptr inbounds %struct._GimpPDBContext, %struct._GimpPDBContext* %29, i32 0, i32 9
  %30 = load i32, i32* %interpolation, align 4
  call void @g_value_set_enum(%struct._GValue* %28, i32 %30)
  br label %sw.epilog

sw.bb.10:                                         ; preds = %entry
  %31 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %32 = load %struct._GimpPDBContext*, %struct._GimpPDBContext** %options, align 8
  %transform_direction = getelementptr inbounds %struct._GimpPDBContext, %struct._GimpPDBContext* %32, i32 0, i32 10
  %33 = load i32, i32* %transform_direction, align 4
  call void @g_value_set_enum(%struct._GValue* %31, i32 %33)
  br label %sw.epilog

sw.bb.11:                                         ; preds = %entry
  %34 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %35 = load %struct._GimpPDBContext*, %struct._GimpPDBContext** %options, align 8
  %transform_resize = getelementptr inbounds %struct._GimpPDBContext, %struct._GimpPDBContext* %35, i32 0, i32 11
  %36 = load i32, i32* %transform_resize, align 4
  call void @g_value_set_enum(%struct._GValue* %34, i32 %36)
  br label %sw.epilog

sw.bb.12:                                         ; preds = %entry
  %37 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %38 = load %struct._GimpPDBContext*, %struct._GimpPDBContext** %options, align 8
  %transform_recursion = getelementptr inbounds %struct._GimpPDBContext, %struct._GimpPDBContext* %38, i32 0, i32 12
  %39 = load i32, i32* %transform_recursion, align 4
  call void @g_value_set_int(%struct._GValue* %37, i32 %39)
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %sw.default
  %40 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  store %struct._GObject* %40, %struct._GObject** %_glib__object, align 8
  %41 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  store %struct._GParamSpec* %41, %struct._GParamSpec** %_glib__pspec, align 8
  %42 = load i32, i32* %property_id.addr, align 4
  store i32 %42, i32* %_glib__property_id, align 4
  %43 = load i32, i32* %_glib__property_id, align 4
  %44 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %name = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %44, i32 0, i32 1
  %45 = load i8*, i8** %name, align 8
  %46 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %47 = bitcast %struct._GParamSpec* %46 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %47, i32 0, i32 0
  %48 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %48, i32 0, i32 0
  %49 = load i64, i64* %g_type, align 8
  %call13 = call i8* @g_type_name(i64 %49)
  %50 = load %struct._GObject*, %struct._GObject** %_glib__object, align 8
  %51 = bitcast %struct._GObject* %50 to %struct._GTypeInstance*
  %g_class14 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %51, i32 0, i32 0
  %52 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class14, align 8
  %g_type15 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %52, i32 0, i32 0
  %53 = load i64, i64* %g_type15, align 8
  %call16 = call i8* @g_type_name(i64 %53)
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.22, i32 0, i32 0), i32 332, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.23, i32 0, i32 0), i32 %43, i8* %45, i8* %call13, i8* %call16)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb.12, %sw.bb.11, %sw.bb.10, %sw.bb.9, %sw.bb.8, %sw.bb.7, %sw.bb.6, %sw.bb.5, %sw.bb.4, %sw.bb.3, %sw.bb.2, %sw.bb
  ret void
}

declare void @g_object_class_install_property(%struct._GObjectClass*, i32, %struct._GParamSpec*) #1

declare %struct._GParamSpec* @g_param_spec_boolean(i8*, i8*, i8*, i32, i32) #1

declare %struct._GParamSpec* @g_param_spec_double(i8*, i8*, i8*, double, double, double, i32) #1

declare %struct._GParamSpec* @g_param_spec_enum(i8*, i8*, i8*, i64, i32, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_select_criterion_get_type() #2

; Function Attrs: nounwind readnone
declare i64 @gimp_interpolation_type_get_type() #2

; Function Attrs: nounwind readnone
declare i64 @gimp_transform_direction_get_type() #2

; Function Attrs: nounwind readnone
declare i64 @gimp_transform_resize_get_type() #2

declare %struct._GParamSpec* @g_param_spec_int(i8*, i8*, i8*, i32, i32, i32, i32) #1

declare %struct._GParamSpec* @g_object_class_find_property(%struct._GObjectClass*, i8*) #1

declare void @g_object_set(i8*, i8*, ...) #1

declare i32 @g_value_get_boolean(%struct._GValue*) #1

declare double @g_value_get_double(%struct._GValue*) #1

declare i32 @g_value_get_enum(%struct._GValue*) #1

declare i32 @g_value_get_int(%struct._GValue*) #1

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
  call void @g_logv(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i32 16, i8* %0, %struct.__va_list_tag* %arraydecay2)
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*
  call void @llvm.va_end(i8* %arraydecay34)
  ret void
}

declare i8* @g_type_name(i64) #1

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #5

declare void @g_logv(i8*, i32, i8*, %struct.__va_list_tag*) #1

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #5

declare void @g_value_set_boolean(%struct._GValue*, i32) #1

declare void @g_value_set_double(%struct._GValue*, double) #1

declare void @g_value_set_enum(%struct._GValue*, i32) #1

declare void @g_value_set_int(%struct._GValue*, i32) #1

declare %struct._GimpContainer* @gimp_list_new(i64, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_paint_options_get_type() #2

attributes #0 = { nounwind readnone uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nounwind readnone }
attributes #7 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
