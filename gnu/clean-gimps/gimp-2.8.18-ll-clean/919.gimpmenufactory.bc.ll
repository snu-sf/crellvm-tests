; ModuleID = './app/widgets/gimpmenufactory.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GimpMenuFactoryClass = type { %struct._GimpObjectClass }
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
%struct._GimpMenuFactory = type { %struct._GimpObject, %struct._GimpMenuFactoryPrivate* }
%struct._GimpMenuFactoryPrivate = type { %struct._Gimp*, %struct._GimpActionFactory*, %struct._GList* }
%struct._Gimp = type { %struct._GimpObject, %struct._GimpCoreConfig*, %struct._GimpCoreConfig*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct._GimpGui, i32, i32, i32, %struct._GList*, i32, %struct._GimpParasiteList*, %struct._GimpContainer*, %struct._GimpPaintInfo*, %struct._GimpModuleDB*, i32, %struct._GimpPlugInManager*, %struct._GimpContainer*, i32, i32, %struct._GimpIdTable*, %struct._GimpIdTable*, %struct._GimpContainer*, i32, %struct._GList*, %struct._GimpBuffer*, %struct._GimpContainer*, %struct._GimpContainer*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpTagCache*, %struct._GimpPDB*, %struct._GimpContainer*, %struct._GimpToolInfo*, %struct._GimpContainer*, %struct._GimpContainer*, %struct._GimpTemplate*, %struct._GList*, %struct._GimpContext*, %struct._GimpContext* }
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
%struct._GimpContext = type opaque
%struct._GimpActionFactory = type { %struct._GimpObject, %struct._Gimp*, %struct._GList* }
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct._GimpMenuFactoryEntry = type { i8*, %struct._GList*, %struct._GList* }
%struct._GimpUIManager = type { %struct._GtkUIManager, i8*, %struct._Gimp*, %struct._GList* }
%struct._GtkUIManager = type { %struct._GObject, %struct._GtkUIManagerPrivate* }
%struct._GtkUIManagerPrivate = type opaque
%struct._GimpUIManagerUIEntry = type { i8*, i8*, void (%struct._GimpUIManager*, i8*)*, i32, %struct._GtkWidget* }
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
%struct._GtkRequisition = type { i32, i32 }
%struct._GdkRectangle = type { i32, i32, i32, i32 }
%struct._GdkDrawable = type { %struct._GObject }
%struct._GtkAccelGroup = type { %struct._GObject, i32, i32, %struct._GSList*, i32, %struct._GtkAccelGroupEntry* }
%struct._GtkAccelGroupEntry = type { %struct._GtkAccelKey, %struct._GClosure*, i32 }
%struct._GtkAccelKey = type { i32, i32, i16 }
%struct._GClosure = type { i32, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i8*, %struct._GClosureNotifyData* }
%struct._GClosureNotifyData = type { i8*, void (i8*, %struct._GClosure*)* }
%struct._GimpActionGroup = type opaque
%struct._GtkAction = type { %struct._GObject, %struct._GtkActionPrivate* }
%struct._GtkActionPrivate = type opaque
%struct._GtkActionGroup = type { %struct._GObject, %struct._GtkActionGroupPrivate* }
%struct._GtkActionGroupPrivate = type opaque

@gimp_menu_factory_get_type.g_define_type_id__volatile = internal global i64 0, align 8
@.str = private unnamed_addr constant [16 x i8] c"GimpMenuFactory\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"Gimp-Widgets\00", align 1
@__func__.gimp_menu_factory_new = private unnamed_addr constant [22 x i8] c"gimp_menu_factory_new\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"GIMP_IS_GIMP (gimp)\00", align 1
@.str.3 = private unnamed_addr constant [40 x i8] c"GIMP_IS_ACTION_FACTORY (action_factory)\00", align 1
@__func__.gimp_menu_factory_manager_register = private unnamed_addr constant [35 x i8] c"gimp_menu_factory_manager_register\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"GIMP_IS_MENU_FACTORY (factory)\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"identifier != NULL\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"first_group != NULL\00", align 1
@__func__.gimp_menu_factory_get_registered_menus = private unnamed_addr constant [39 x i8] c"gimp_menu_factory_get_registered_menus\00", align 1
@__func__.gimp_menu_factory_manager_new = private unnamed_addr constant [30 x i8] c"gimp_menu_factory_manager_new\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"action-added\00", align 1
@.str.8 = private unnamed_addr constant [33 x i8] c"%s: no entry registered for \22%s\22\00", align 1
@gimp_menu_factory_parent_class = internal global i8* null, align 8
@GimpMenuFactory_private_offset = internal global i32 0, align 4

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_menu_factory_get_type() #0 {
entry:
  %tmp = alloca i32, align 4
  %tmp1 = alloca i8*, align 8
  %g_define_type_id = alloca i64, align 8
  fence seq_cst
  %0 = load volatile i64, i64* @gimp_menu_factory_get_type.g_define_type_id__volatile, align 8
  %1 = inttoptr i64 %0 to i8*
  store i8* %1, i8** %tmp1
  %2 = load i8*, i8** %tmp1
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call = call i32 @g_once_init_enter(i8* bitcast (i64* @gimp_menu_factory_get_type.g_define_type_id__volatile to i8*))
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
  %call5 = call i64 @gimp_object_get_type() #6
  %call6 = call i8* @g_intern_static_string(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i32 0, i32 0))
  %call7 = call i64 @g_type_register_static_simple(i64 %call5, i8* %call6, i32 160, void (i8*, i8*)* bitcast (void (i8*)* @gimp_menu_factory_class_intern_init to void (i8*, i8*)*), i32 40, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._GimpMenuFactory*)* @gimp_menu_factory_init to void (%struct._GTypeInstance*, i8*)*), i32 0)
  store i64 %call7, i64* %g_define_type_id, align 8
  %5 = load i64, i64* %g_define_type_id, align 8
  call void @g_once_init_leave(i8* bitcast (i64* @gimp_menu_factory_get_type.g_define_type_id__volatile to i8*), i64 %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end
  %6 = load volatile i64, i64* @gimp_menu_factory_get_type.g_define_type_id__volatile, align 8
  ret i64 %6
}

declare i32 @g_once_init_enter(i8*) #1

declare i64 @g_type_register_static_simple(i64, i8*, i32, void (i8*, i8*)*, i32, void (%struct._GTypeInstance*, i8*)*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_object_get_type() #2

declare i8* @g_intern_static_string(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_menu_factory_class_intern_init(i8* %klass) #3 {
entry:
  %klass.addr = alloca i8*, align 8
  store i8* %klass, i8** %klass.addr, align 8
  %0 = load i8*, i8** %klass.addr, align 8
  %call = call i8* @g_type_class_peek_parent(i8* %0)
  store i8* %call, i8** @gimp_menu_factory_parent_class, align 8
  %1 = load i32, i32* @GimpMenuFactory_private_offset, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %klass.addr, align 8
  call void @g_type_class_adjust_private_offset(i8* %2, i32* @GimpMenuFactory_private_offset)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %klass.addr, align 8
  %4 = bitcast i8* %3 to %struct._GimpMenuFactoryClass*
  call void @gimp_menu_factory_class_init(%struct._GimpMenuFactoryClass* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_menu_factory_init(%struct._GimpMenuFactory* %factory) #3 {
entry:
  %factory.addr = alloca %struct._GimpMenuFactory*, align 8
  store %struct._GimpMenuFactory* %factory, %struct._GimpMenuFactory** %factory.addr, align 8
  %0 = load %struct._GimpMenuFactory*, %struct._GimpMenuFactory** %factory.addr, align 8
  %1 = bitcast %struct._GimpMenuFactory* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_menu_factory_get_type() #6
  %call1 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast i8* %call1 to %struct._GimpMenuFactoryPrivate*
  %3 = load %struct._GimpMenuFactory*, %struct._GimpMenuFactory** %factory.addr, align 8
  %p = getelementptr inbounds %struct._GimpMenuFactory, %struct._GimpMenuFactory* %3, i32 0, i32 1
  store %struct._GimpMenuFactoryPrivate* %2, %struct._GimpMenuFactoryPrivate** %p, align 8
  ret void
}

declare void @g_once_init_leave(i8*, i64) #1

; Function Attrs: nounwind uwtable
define %struct._GimpMenuFactory* @gimp_menu_factory_new(%struct._Gimp* %gimp, %struct._GimpActionFactory* %action_factory) #3 {
entry:
  %retval = alloca %struct._GimpMenuFactory*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %action_factory.addr = alloca %struct._GimpActionFactory*, align 8
  %factory = alloca %struct._GimpMenuFactory*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst13 = alloca %struct._GTypeInstance*, align 8
  %__t15 = alloca i64, align 8
  %__r18 = alloca i32, align 4
  %tmp33 = alloca i32, align 4
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GimpActionFactory* %action_factory, %struct._GimpActionFactory** %action_factory.addr, align 8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.gimp_menu_factory_new, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i32 0, i32 0))
  store %struct._GimpMenuFactory* null, %struct._GimpMenuFactory** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpActionFactory*, %struct._GimpActionFactory** %action_factory.addr, align 8
  %14 = bitcast %struct._GimpActionFactory* %13 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %14, %struct._GTypeInstance** %__inst13, align 8
  %call16 = call i64 @gimp_action_factory_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.gimp_menu_factory_new, i32 0, i32 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i32 0, i32 0))
  store %struct._GimpMenuFactory* null, %struct._GimpMenuFactory** %retval
  br label %return

if.end.37:                                        ; preds = %if.then.35
  br label %do.end.38

do.end.38:                                        ; preds = %if.end.37
  %call39 = call i64 @gimp_menu_factory_get_type() #6
  %call40 = call i8* (i64, i8*, ...) @g_object_new(i64 %call39, i8* null)
  %26 = bitcast i8* %call40 to %struct._GimpMenuFactory*
  store %struct._GimpMenuFactory* %26, %struct._GimpMenuFactory** %factory, align 8
  %27 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %28 = load %struct._GimpMenuFactory*, %struct._GimpMenuFactory** %factory, align 8
  %p = getelementptr inbounds %struct._GimpMenuFactory, %struct._GimpMenuFactory* %28, i32 0, i32 1
  %29 = load %struct._GimpMenuFactoryPrivate*, %struct._GimpMenuFactoryPrivate** %p, align 8
  %gimp41 = getelementptr inbounds %struct._GimpMenuFactoryPrivate, %struct._GimpMenuFactoryPrivate* %29, i32 0, i32 0
  store %struct._Gimp* %27, %struct._Gimp** %gimp41, align 8
  %30 = load %struct._GimpActionFactory*, %struct._GimpActionFactory** %action_factory.addr, align 8
  %31 = load %struct._GimpMenuFactory*, %struct._GimpMenuFactory** %factory, align 8
  %p42 = getelementptr inbounds %struct._GimpMenuFactory, %struct._GimpMenuFactory* %31, i32 0, i32 1
  %32 = load %struct._GimpMenuFactoryPrivate*, %struct._GimpMenuFactoryPrivate** %p42, align 8
  %action_factory43 = getelementptr inbounds %struct._GimpMenuFactoryPrivate, %struct._GimpMenuFactoryPrivate* %32, i32 0, i32 1
  store %struct._GimpActionFactory* %30, %struct._GimpActionFactory** %action_factory43, align 8
  %33 = load %struct._GimpMenuFactory*, %struct._GimpMenuFactory** %factory, align 8
  store %struct._GimpMenuFactory* %33, %struct._GimpMenuFactory** %retval
  br label %return

return:                                           ; preds = %do.end.38, %if.else.36, %if.else.9
  %34 = load %struct._GimpMenuFactory*, %struct._GimpMenuFactory** %retval
  ret %struct._GimpMenuFactory* %34
}

; Function Attrs: nounwind readnone
declare i64 @gimp_get_type() #2

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #4

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_action_factory_get_type() #2

declare i8* @g_object_new(i64, i8*, ...) #1

; Function Attrs: nounwind uwtable
define void @gimp_menu_factory_manager_register(%struct._GimpMenuFactory* %factory, i8* %identifier, i8* %first_group, ...) #3 {
entry:
  %factory.addr = alloca %struct._GimpMenuFactory*, align 8
  %identifier.addr = alloca i8*, align 8
  %first_group.addr = alloca i8*, align 8
  %entry1 = alloca %struct._GimpMenuFactoryEntry*, align 8
  %group = alloca i8*, align 8
  %ui_path = alloca i8*, align 8
  %args = alloca [1 x %struct.__va_list_tag], align 16
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %ui_basename = alloca i8*, align 8
  %setup_func = alloca void (%struct._GimpUIManager*, i8*)*, align 8
  %ui_entry = alloca %struct._GimpUIManagerUIEntry*, align 8
  store %struct._GimpMenuFactory* %factory, %struct._GimpMenuFactory** %factory.addr, align 8
  store i8* %identifier, i8** %identifier.addr, align 8
  store i8* %first_group, i8** %first_group.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpMenuFactory*, %struct._GimpMenuFactory** %factory.addr, align 8
  %1 = bitcast %struct._GimpMenuFactory* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_menu_factory_get_type() #6
  store i64 %call, i64* %__t, align 8
  %2 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool = icmp ne %struct._GTypeInstance* %2, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %do.body
  store i32 0, i32* %__r, align 4
  br label %if.end.7

if.else:                                          ; preds = %do.body
  %3 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %3, i32 0, i32 0
  %4 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool2 = icmp ne %struct._GTypeClass* %4, null
  br i1 %tobool2, label %land.lhs.true, label %if.else.5

land.lhs.true:                                    ; preds = %if.else
  %5 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class3 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %5, i32 0, i32 0
  %6 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class3, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %6, i32 0, i32 0
  %7 = load i64, i64* %g_type, align 8
  %8 = load i64, i64* %__t, align 8
  %cmp = icmp eq i64 %7, %8
  br i1 %cmp, label %if.then.4, label %if.else.5

if.then.4:                                        ; preds = %land.lhs.true
  store i32 1, i32* %__r, align 4
  br label %if.end

if.else.5:                                        ; preds = %land.lhs.true, %if.else
  %9 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %10 = load i64, i64* %__t, align 8
  %call6 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #7
  store i32 %call6, i32* %__r, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.5, %if.then.4
  br label %if.end.7

if.end.7:                                         ; preds = %if.end, %if.then
  %11 = load i32, i32* %__r, align 4
  store i32 %11, i32* %tmp
  %12 = load i32, i32* %tmp
  %tobool8 = icmp ne i32 %12, 0
  br i1 %tobool8, label %if.then.9, label %if.else.10

if.then.9:                                        ; preds = %if.end.7
  br label %if.end.11

if.else.10:                                       ; preds = %if.end.7
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__func__.gimp_menu_factory_manager_register, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i32 0, i32 0))
  br label %return

if.end.11:                                        ; preds = %if.then.9
  br label %do.end

do.end:                                           ; preds = %if.end.11
  br label %do.body.12

do.body.12:                                       ; preds = %do.end
  %13 = load i8*, i8** %identifier.addr, align 8
  %cmp13 = icmp ne i8* %13, null
  br i1 %cmp13, label %if.then.14, label %if.else.15

if.then.14:                                       ; preds = %do.body.12
  br label %if.end.16

if.else.15:                                       ; preds = %do.body.12
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__func__.gimp_menu_factory_manager_register, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i32 0, i32 0))
  br label %return

if.end.16:                                        ; preds = %if.then.14
  br label %do.end.17

do.end.17:                                        ; preds = %if.end.16
  br label %do.body.18

do.body.18:                                       ; preds = %do.end.17
  %14 = load i8*, i8** %first_group.addr, align 8
  %cmp19 = icmp ne i8* %14, null
  br i1 %cmp19, label %if.then.20, label %if.else.21

if.then.20:                                       ; preds = %do.body.18
  br label %if.end.22

if.else.21:                                       ; preds = %do.body.18
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__func__.gimp_menu_factory_manager_register, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i32 0, i32 0))
  br label %return

if.end.22:                                        ; preds = %if.then.20
  br label %do.end.23

do.end.23:                                        ; preds = %if.end.22
  %call24 = call noalias i8* @g_slice_alloc0(i64 24)
  %15 = bitcast i8* %call24 to %struct._GimpMenuFactoryEntry*
  store %struct._GimpMenuFactoryEntry* %15, %struct._GimpMenuFactoryEntry** %entry1, align 8
  %16 = load i8*, i8** %identifier.addr, align 8
  %call25 = call noalias i8* @g_strdup(i8* %16)
  %17 = load %struct._GimpMenuFactoryEntry*, %struct._GimpMenuFactoryEntry** %entry1, align 8
  %identifier26 = getelementptr inbounds %struct._GimpMenuFactoryEntry, %struct._GimpMenuFactoryEntry* %17, i32 0, i32 0
  store i8* %call25, i8** %identifier26, align 8
  %18 = load %struct._GimpMenuFactory*, %struct._GimpMenuFactory** %factory.addr, align 8
  %p = getelementptr inbounds %struct._GimpMenuFactory, %struct._GimpMenuFactory* %18, i32 0, i32 1
  %19 = load %struct._GimpMenuFactoryPrivate*, %struct._GimpMenuFactoryPrivate** %p, align 8
  %registered_menus = getelementptr inbounds %struct._GimpMenuFactoryPrivate, %struct._GimpMenuFactoryPrivate* %19, i32 0, i32 2
  %20 = load %struct._GList*, %struct._GList** %registered_menus, align 8
  %21 = load %struct._GimpMenuFactoryEntry*, %struct._GimpMenuFactoryEntry** %entry1, align 8
  %22 = bitcast %struct._GimpMenuFactoryEntry* %21 to i8*
  %call27 = call %struct._GList* @g_list_prepend(%struct._GList* %20, i8* %22)
  %23 = load %struct._GimpMenuFactory*, %struct._GimpMenuFactory** %factory.addr, align 8
  %p28 = getelementptr inbounds %struct._GimpMenuFactory, %struct._GimpMenuFactory* %23, i32 0, i32 1
  %24 = load %struct._GimpMenuFactoryPrivate*, %struct._GimpMenuFactoryPrivate** %p28, align 8
  %registered_menus29 = getelementptr inbounds %struct._GimpMenuFactoryPrivate, %struct._GimpMenuFactoryPrivate* %24, i32 0, i32 2
  store %struct._GList* %call27, %struct._GList** %registered_menus29, align 8
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay30 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay30)
  %25 = load i8*, i8** %first_group.addr, align 8
  store i8* %25, i8** %group, align 8
  br label %for.cond

for.cond:                                         ; preds = %vaarg.end, %do.end.23
  %26 = load i8*, i8** %group, align 8
  %tobool31 = icmp ne i8* %26, null
  br i1 %tobool31, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %27 = load %struct._GimpMenuFactoryEntry*, %struct._GimpMenuFactoryEntry** %entry1, align 8
  %action_groups = getelementptr inbounds %struct._GimpMenuFactoryEntry, %struct._GimpMenuFactoryEntry* %27, i32 0, i32 1
  %28 = load %struct._GList*, %struct._GList** %action_groups, align 8
  %29 = load i8*, i8** %group, align 8
  %call32 = call noalias i8* @g_strdup(i8* %29)
  %call33 = call %struct._GList* @g_list_prepend(%struct._GList* %28, i8* %call32)
  %30 = load %struct._GimpMenuFactoryEntry*, %struct._GimpMenuFactoryEntry** %entry1, align 8
  %action_groups34 = getelementptr inbounds %struct._GimpMenuFactoryEntry, %struct._GimpMenuFactoryEntry* %30, i32 0, i32 1
  store %struct._GList* %call33, %struct._GList** %action_groups34, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %arraydecay35 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %gp_offset_p = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay35, i32 0, i32 0
  %gp_offset = load i32, i32* %gp_offset_p
  %fits_in_gp = icmp ule i32 %gp_offset, 40
  br i1 %fits_in_gp, label %vaarg.in_reg, label %vaarg.in_mem

vaarg.in_reg:                                     ; preds = %for.inc
  %31 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay35, i32 0, i32 3
  %reg_save_area = load i8*, i8** %31
  %32 = getelementptr i8, i8* %reg_save_area, i32 %gp_offset
  %33 = bitcast i8* %32 to i8**
  %34 = add i32 %gp_offset, 8
  store i32 %34, i32* %gp_offset_p
  br label %vaarg.end

vaarg.in_mem:                                     ; preds = %for.inc
  %overflow_arg_area_p = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay35, i32 0, i32 2
  %overflow_arg_area = load i8*, i8** %overflow_arg_area_p
  %35 = bitcast i8* %overflow_arg_area to i8**
  %overflow_arg_area.next = getelementptr i8, i8* %overflow_arg_area, i32 8
  store i8* %overflow_arg_area.next, i8** %overflow_arg_area_p
  br label %vaarg.end

vaarg.end:                                        ; preds = %vaarg.in_mem, %vaarg.in_reg
  %vaarg.addr = phi i8** [ %33, %vaarg.in_reg ], [ %35, %vaarg.in_mem ]
  %36 = load i8*, i8** %vaarg.addr
  store i8* %36, i8** %group, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %37 = load %struct._GimpMenuFactoryEntry*, %struct._GimpMenuFactoryEntry** %entry1, align 8
  %action_groups36 = getelementptr inbounds %struct._GimpMenuFactoryEntry, %struct._GimpMenuFactoryEntry* %37, i32 0, i32 1
  %38 = load %struct._GList*, %struct._GList** %action_groups36, align 8
  %call37 = call %struct._GList* @g_list_reverse(%struct._GList* %38)
  %39 = load %struct._GimpMenuFactoryEntry*, %struct._GimpMenuFactoryEntry** %entry1, align 8
  %action_groups38 = getelementptr inbounds %struct._GimpMenuFactoryEntry, %struct._GimpMenuFactoryEntry* %39, i32 0, i32 1
  store %struct._GList* %call37, %struct._GList** %action_groups38, align 8
  %arraydecay39 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %gp_offset_p40 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay39, i32 0, i32 0
  %gp_offset41 = load i32, i32* %gp_offset_p40
  %fits_in_gp42 = icmp ule i32 %gp_offset41, 40
  br i1 %fits_in_gp42, label %vaarg.in_reg.43, label %vaarg.in_mem.45

vaarg.in_reg.43:                                  ; preds = %for.end
  %40 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay39, i32 0, i32 3
  %reg_save_area44 = load i8*, i8** %40
  %41 = getelementptr i8, i8* %reg_save_area44, i32 %gp_offset41
  %42 = bitcast i8* %41 to i8**
  %43 = add i32 %gp_offset41, 8
  store i32 %43, i32* %gp_offset_p40
  br label %vaarg.end.49

vaarg.in_mem.45:                                  ; preds = %for.end
  %overflow_arg_area_p46 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay39, i32 0, i32 2
  %overflow_arg_area47 = load i8*, i8** %overflow_arg_area_p46
  %44 = bitcast i8* %overflow_arg_area47 to i8**
  %overflow_arg_area.next48 = getelementptr i8, i8* %overflow_arg_area47, i32 8
  store i8* %overflow_arg_area.next48, i8** %overflow_arg_area_p46
  br label %vaarg.end.49

vaarg.end.49:                                     ; preds = %vaarg.in_mem.45, %vaarg.in_reg.43
  %vaarg.addr50 = phi i8** [ %42, %vaarg.in_reg.43 ], [ %44, %vaarg.in_mem.45 ]
  %45 = load i8*, i8** %vaarg.addr50
  store i8* %45, i8** %ui_path, align 8
  br label %while.cond

while.cond:                                       ; preds = %vaarg.end.96, %vaarg.end.49
  %46 = load i8*, i8** %ui_path, align 8
  %tobool51 = icmp ne i8* %46, null
  br i1 %tobool51, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %arraydecay55 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %gp_offset_p56 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay55, i32 0, i32 0
  %gp_offset57 = load i32, i32* %gp_offset_p56
  %fits_in_gp58 = icmp ule i32 %gp_offset57, 40
  br i1 %fits_in_gp58, label %vaarg.in_reg.59, label %vaarg.in_mem.61

vaarg.in_reg.59:                                  ; preds = %while.body
  %47 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay55, i32 0, i32 3
  %reg_save_area60 = load i8*, i8** %47
  %48 = getelementptr i8, i8* %reg_save_area60, i32 %gp_offset57
  %49 = bitcast i8* %48 to i8**
  %50 = add i32 %gp_offset57, 8
  store i32 %50, i32* %gp_offset_p56
  br label %vaarg.end.65

vaarg.in_mem.61:                                  ; preds = %while.body
  %overflow_arg_area_p62 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay55, i32 0, i32 2
  %overflow_arg_area63 = load i8*, i8** %overflow_arg_area_p62
  %51 = bitcast i8* %overflow_arg_area63 to i8**
  %overflow_arg_area.next64 = getelementptr i8, i8* %overflow_arg_area63, i32 8
  store i8* %overflow_arg_area.next64, i8** %overflow_arg_area_p62
  br label %vaarg.end.65

vaarg.end.65:                                     ; preds = %vaarg.in_mem.61, %vaarg.in_reg.59
  %vaarg.addr66 = phi i8** [ %49, %vaarg.in_reg.59 ], [ %51, %vaarg.in_mem.61 ]
  %52 = load i8*, i8** %vaarg.addr66
  store i8* %52, i8** %ui_basename, align 8
  %arraydecay67 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %gp_offset_p68 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay67, i32 0, i32 0
  %gp_offset69 = load i32, i32* %gp_offset_p68
  %fits_in_gp70 = icmp ule i32 %gp_offset69, 40
  br i1 %fits_in_gp70, label %vaarg.in_reg.71, label %vaarg.in_mem.73

vaarg.in_reg.71:                                  ; preds = %vaarg.end.65
  %53 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay67, i32 0, i32 3
  %reg_save_area72 = load i8*, i8** %53
  %54 = getelementptr i8, i8* %reg_save_area72, i32 %gp_offset69
  %55 = bitcast i8* %54 to void (%struct._GimpUIManager*, i8*)**
  %56 = add i32 %gp_offset69, 8
  store i32 %56, i32* %gp_offset_p68
  br label %vaarg.end.77

vaarg.in_mem.73:                                  ; preds = %vaarg.end.65
  %overflow_arg_area_p74 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay67, i32 0, i32 2
  %overflow_arg_area75 = load i8*, i8** %overflow_arg_area_p74
  %57 = bitcast i8* %overflow_arg_area75 to void (%struct._GimpUIManager*, i8*)**
  %overflow_arg_area.next76 = getelementptr i8, i8* %overflow_arg_area75, i32 8
  store i8* %overflow_arg_area.next76, i8** %overflow_arg_area_p74
  br label %vaarg.end.77

vaarg.end.77:                                     ; preds = %vaarg.in_mem.73, %vaarg.in_reg.71
  %vaarg.addr78 = phi void (%struct._GimpUIManager*, i8*)** [ %55, %vaarg.in_reg.71 ], [ %57, %vaarg.in_mem.73 ]
  %58 = load void (%struct._GimpUIManager*, i8*)*, void (%struct._GimpUIManager*, i8*)** %vaarg.addr78
  store void (%struct._GimpUIManager*, i8*)* %58, void (%struct._GimpUIManager*, i8*)** %setup_func, align 8
  %call79 = call noalias i8* @g_slice_alloc0(i64 40)
  %59 = bitcast i8* %call79 to %struct._GimpUIManagerUIEntry*
  store %struct._GimpUIManagerUIEntry* %59, %struct._GimpUIManagerUIEntry** %ui_entry, align 8
  %60 = load i8*, i8** %ui_path, align 8
  %call80 = call noalias i8* @g_strdup(i8* %60)
  %61 = load %struct._GimpUIManagerUIEntry*, %struct._GimpUIManagerUIEntry** %ui_entry, align 8
  %ui_path81 = getelementptr inbounds %struct._GimpUIManagerUIEntry, %struct._GimpUIManagerUIEntry* %61, i32 0, i32 0
  store i8* %call80, i8** %ui_path81, align 8
  %62 = load i8*, i8** %ui_basename, align 8
  %call82 = call noalias i8* @g_strdup(i8* %62)
  %63 = load %struct._GimpUIManagerUIEntry*, %struct._GimpUIManagerUIEntry** %ui_entry, align 8
  %basename = getelementptr inbounds %struct._GimpUIManagerUIEntry, %struct._GimpUIManagerUIEntry* %63, i32 0, i32 1
  store i8* %call82, i8** %basename, align 8
  %64 = load void (%struct._GimpUIManager*, i8*)*, void (%struct._GimpUIManager*, i8*)** %setup_func, align 8
  %65 = load %struct._GimpUIManagerUIEntry*, %struct._GimpUIManagerUIEntry** %ui_entry, align 8
  %setup_func83 = getelementptr inbounds %struct._GimpUIManagerUIEntry, %struct._GimpUIManagerUIEntry* %65, i32 0, i32 2
  store void (%struct._GimpUIManager*, i8*)* %64, void (%struct._GimpUIManager*, i8*)** %setup_func83, align 8
  %66 = load %struct._GimpMenuFactoryEntry*, %struct._GimpMenuFactoryEntry** %entry1, align 8
  %managed_uis = getelementptr inbounds %struct._GimpMenuFactoryEntry, %struct._GimpMenuFactoryEntry* %66, i32 0, i32 2
  %67 = load %struct._GList*, %struct._GList** %managed_uis, align 8
  %68 = load %struct._GimpUIManagerUIEntry*, %struct._GimpUIManagerUIEntry** %ui_entry, align 8
  %69 = bitcast %struct._GimpUIManagerUIEntry* %68 to i8*
  %call84 = call %struct._GList* @g_list_prepend(%struct._GList* %67, i8* %69)
  %70 = load %struct._GimpMenuFactoryEntry*, %struct._GimpMenuFactoryEntry** %entry1, align 8
  %managed_uis85 = getelementptr inbounds %struct._GimpMenuFactoryEntry, %struct._GimpMenuFactoryEntry* %70, i32 0, i32 2
  store %struct._GList* %call84, %struct._GList** %managed_uis85, align 8
  %arraydecay86 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %gp_offset_p87 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay86, i32 0, i32 0
  %gp_offset88 = load i32, i32* %gp_offset_p87
  %fits_in_gp89 = icmp ule i32 %gp_offset88, 40
  br i1 %fits_in_gp89, label %vaarg.in_reg.90, label %vaarg.in_mem.92

vaarg.in_reg.90:                                  ; preds = %vaarg.end.77
  %71 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay86, i32 0, i32 3
  %reg_save_area91 = load i8*, i8** %71
  %72 = getelementptr i8, i8* %reg_save_area91, i32 %gp_offset88
  %73 = bitcast i8* %72 to i8**
  %74 = add i32 %gp_offset88, 8
  store i32 %74, i32* %gp_offset_p87
  br label %vaarg.end.96

vaarg.in_mem.92:                                  ; preds = %vaarg.end.77
  %overflow_arg_area_p93 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay86, i32 0, i32 2
  %overflow_arg_area94 = load i8*, i8** %overflow_arg_area_p93
  %75 = bitcast i8* %overflow_arg_area94 to i8**
  %overflow_arg_area.next95 = getelementptr i8, i8* %overflow_arg_area94, i32 8
  store i8* %overflow_arg_area.next95, i8** %overflow_arg_area_p93
  br label %vaarg.end.96

vaarg.end.96:                                     ; preds = %vaarg.in_mem.92, %vaarg.in_reg.90
  %vaarg.addr97 = phi i8** [ %73, %vaarg.in_reg.90 ], [ %75, %vaarg.in_mem.92 ]
  %76 = load i8*, i8** %vaarg.addr97
  store i8* %76, i8** %ui_path, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %77 = load %struct._GimpMenuFactoryEntry*, %struct._GimpMenuFactoryEntry** %entry1, align 8
  %managed_uis98 = getelementptr inbounds %struct._GimpMenuFactoryEntry, %struct._GimpMenuFactoryEntry* %77, i32 0, i32 2
  %78 = load %struct._GList*, %struct._GList** %managed_uis98, align 8
  %call99 = call %struct._GList* @g_list_reverse(%struct._GList* %78)
  %79 = load %struct._GimpMenuFactoryEntry*, %struct._GimpMenuFactoryEntry** %entry1, align 8
  %managed_uis100 = getelementptr inbounds %struct._GimpMenuFactoryEntry, %struct._GimpMenuFactoryEntry* %79, i32 0, i32 2
  store %struct._GList* %call99, %struct._GList** %managed_uis100, align 8
  %arraydecay101 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay101102 = bitcast %struct.__va_list_tag* %arraydecay101 to i8*
  call void @llvm.va_end(i8* %arraydecay101102)
  br label %return

return:                                           ; preds = %while.end, %if.else.21, %if.else.15, %if.else.10
  ret void
}

declare noalias i8* @g_slice_alloc0(i64) #1

declare noalias i8* @g_strdup(i8*) #1

declare %struct._GList* @g_list_prepend(%struct._GList*, i8*) #1

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #5

declare %struct._GList* @g_list_reverse(%struct._GList*) #1

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #5

; Function Attrs: nounwind uwtable
define %struct._GList* @gimp_menu_factory_get_registered_menus(%struct._GimpMenuFactory* %factory) #3 {
entry:
  %retval = alloca %struct._GList*, align 8
  %factory.addr = alloca %struct._GimpMenuFactory*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpMenuFactory* %factory, %struct._GimpMenuFactory** %factory.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpMenuFactory*, %struct._GimpMenuFactory** %factory.addr, align 8
  %1 = bitcast %struct._GimpMenuFactory* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_menu_factory_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @__func__.gimp_menu_factory_get_registered_menus, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i32 0, i32 0))
  store %struct._GList* null, %struct._GList** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpMenuFactory*, %struct._GimpMenuFactory** %factory.addr, align 8
  %p = getelementptr inbounds %struct._GimpMenuFactory, %struct._GimpMenuFactory* %13, i32 0, i32 1
  %14 = load %struct._GimpMenuFactoryPrivate*, %struct._GimpMenuFactoryPrivate** %p, align 8
  %registered_menus = getelementptr inbounds %struct._GimpMenuFactoryPrivate, %struct._GimpMenuFactoryPrivate* %14, i32 0, i32 2
  %15 = load %struct._GList*, %struct._GList** %registered_menus, align 8
  store %struct._GList* %15, %struct._GList** %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %16 = load %struct._GList*, %struct._GList** %retval
  ret %struct._GList* %16
}

; Function Attrs: nounwind uwtable
define %struct._GimpUIManager* @gimp_menu_factory_manager_new(%struct._GimpMenuFactory* %factory, i8* %identifier, i8* %callback_data, i32 %create_tearoff) #3 {
entry:
  %retval = alloca %struct._GimpUIManager*, align 8
  %factory.addr = alloca %struct._GimpMenuFactory*, align 8
  %identifier.addr = alloca i8*, align 8
  %callback_data.addr = alloca i8*, align 8
  %create_tearoff.addr = alloca i32, align 4
  %list = alloca %struct._GList*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %entry19 = alloca %struct._GimpMenuFactoryEntry*, align 8
  %manager = alloca %struct._GimpUIManager*, align 8
  %accel_group = alloca %struct._GtkAccelGroup*, align 8
  %list27 = alloca %struct._GList*, align 8
  %group = alloca %struct._GimpActionGroup*, align 8
  %actions = alloca %struct._GList*, align 8
  %list2 = alloca %struct._GList*, align 8
  %action = alloca %struct._GtkAction*, align 8
  %ui_entry = alloca %struct._GimpUIManagerUIEntry*, align 8
  store %struct._GimpMenuFactory* %factory, %struct._GimpMenuFactory** %factory.addr, align 8
  store i8* %identifier, i8** %identifier.addr, align 8
  store i8* %callback_data, i8** %callback_data.addr, align 8
  store i32 %create_tearoff, i32* %create_tearoff.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpMenuFactory*, %struct._GimpMenuFactory** %factory.addr, align 8
  %1 = bitcast %struct._GimpMenuFactory* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_menu_factory_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.gimp_menu_factory_manager_new, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i32 0, i32 0))
  store %struct._GimpUIManager* null, %struct._GimpUIManager** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load i8*, i8** %identifier.addr, align 8
  %cmp12 = icmp ne i8* %13, null
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %do.body.11
  br label %if.end.15

if.else.14:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.gimp_menu_factory_manager_new, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i32 0, i32 0))
  store %struct._GimpUIManager* null, %struct._GimpUIManager** %retval
  br label %return

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  %14 = load %struct._GimpMenuFactory*, %struct._GimpMenuFactory** %factory.addr, align 8
  %p = getelementptr inbounds %struct._GimpMenuFactory, %struct._GimpMenuFactory* %14, i32 0, i32 1
  %15 = load %struct._GimpMenuFactoryPrivate*, %struct._GimpMenuFactoryPrivate** %p, align 8
  %registered_menus = getelementptr inbounds %struct._GimpMenuFactoryPrivate, %struct._GimpMenuFactoryPrivate* %15, i32 0, i32 2
  %16 = load %struct._GList*, %struct._GList** %registered_menus, align 8
  store %struct._GList* %16, %struct._GList** %list, align 8
  br label %for.cond

for.cond:                                         ; preds = %cond.end.86, %do.end.16
  %17 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool17 = icmp ne %struct._GList* %17, null
  br i1 %tobool17, label %for.body, label %for.end.88

for.body:                                         ; preds = %for.cond
  %18 = load %struct._GList*, %struct._GList** %list, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %18, i32 0, i32 0
  %19 = load i8*, i8** %data, align 8
  %20 = bitcast i8* %19 to %struct._GimpMenuFactoryEntry*
  store %struct._GimpMenuFactoryEntry* %20, %struct._GimpMenuFactoryEntry** %entry19, align 8
  %21 = load %struct._GimpMenuFactoryEntry*, %struct._GimpMenuFactoryEntry** %entry19, align 8
  %identifier20 = getelementptr inbounds %struct._GimpMenuFactoryEntry, %struct._GimpMenuFactoryEntry* %21, i32 0, i32 0
  %22 = load i8*, i8** %identifier20, align 8
  %23 = load i8*, i8** %identifier.addr, align 8
  %call21 = call i32 @strcmp(i8* %22, i8* %23) #7
  %tobool22 = icmp ne i32 %call21, 0
  br i1 %tobool22, label %if.end.80, label %if.then.23

if.then.23:                                       ; preds = %for.body
  %24 = load %struct._GimpMenuFactory*, %struct._GimpMenuFactory** %factory.addr, align 8
  %p28 = getelementptr inbounds %struct._GimpMenuFactory, %struct._GimpMenuFactory* %24, i32 0, i32 1
  %25 = load %struct._GimpMenuFactoryPrivate*, %struct._GimpMenuFactoryPrivate** %p28, align 8
  %gimp = getelementptr inbounds %struct._GimpMenuFactoryPrivate, %struct._GimpMenuFactoryPrivate* %25, i32 0, i32 0
  %26 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %27 = load %struct._GimpMenuFactoryEntry*, %struct._GimpMenuFactoryEntry** %entry19, align 8
  %identifier29 = getelementptr inbounds %struct._GimpMenuFactoryEntry, %struct._GimpMenuFactoryEntry* %27, i32 0, i32 0
  %28 = load i8*, i8** %identifier29, align 8
  %call30 = call %struct._GimpUIManager* @gimp_ui_manager_new(%struct._Gimp* %26, i8* %28)
  store %struct._GimpUIManager* %call30, %struct._GimpUIManager** %manager, align 8
  %29 = load %struct._GimpUIManager*, %struct._GimpUIManager** %manager, align 8
  %30 = bitcast %struct._GimpUIManager* %29 to %struct._GTypeInstance*
  %call31 = call i64 @gtk_ui_manager_get_type() #6
  %call32 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %30, i64 %call31)
  %31 = bitcast %struct._GTypeInstance* %call32 to %struct._GtkUIManager*
  %32 = load i32, i32* %create_tearoff.addr, align 4
  call void @gtk_ui_manager_set_add_tearoffs(%struct._GtkUIManager* %31, i32 %32)
  %33 = load %struct._GimpUIManager*, %struct._GimpUIManager** %manager, align 8
  %34 = bitcast %struct._GimpUIManager* %33 to %struct._GTypeInstance*
  %call33 = call i64 @gtk_ui_manager_get_type() #6
  %call34 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %34, i64 %call33)
  %35 = bitcast %struct._GTypeInstance* %call34 to %struct._GtkUIManager*
  %call35 = call %struct._GtkAccelGroup* @gtk_ui_manager_get_accel_group(%struct._GtkUIManager* %35)
  store %struct._GtkAccelGroup* %call35, %struct._GtkAccelGroup** %accel_group, align 8
  %36 = load %struct._GimpMenuFactoryEntry*, %struct._GimpMenuFactoryEntry** %entry19, align 8
  %action_groups = getelementptr inbounds %struct._GimpMenuFactoryEntry, %struct._GimpMenuFactoryEntry* %36, i32 0, i32 1
  %37 = load %struct._GList*, %struct._GList** %action_groups, align 8
  store %struct._GList* %37, %struct._GList** %list27, align 8
  br label %for.cond.36

for.cond.36:                                      ; preds = %cond.end.64, %if.then.23
  %38 = load %struct._GList*, %struct._GList** %list27, align 8
  %tobool37 = icmp ne %struct._GList* %38, null
  br i1 %tobool37, label %for.body.38, label %for.end.66

for.body.38:                                      ; preds = %for.cond.36
  %39 = load %struct._GimpMenuFactory*, %struct._GimpMenuFactory** %factory.addr, align 8
  %p42 = getelementptr inbounds %struct._GimpMenuFactory, %struct._GimpMenuFactory* %39, i32 0, i32 1
  %40 = load %struct._GimpMenuFactoryPrivate*, %struct._GimpMenuFactoryPrivate** %p42, align 8
  %action_factory = getelementptr inbounds %struct._GimpMenuFactoryPrivate, %struct._GimpMenuFactoryPrivate* %40, i32 0, i32 1
  %41 = load %struct._GimpActionFactory*, %struct._GimpActionFactory** %action_factory, align 8
  %42 = load %struct._GList*, %struct._GList** %list27, align 8
  %data43 = getelementptr inbounds %struct._GList, %struct._GList* %42, i32 0, i32 0
  %43 = load i8*, i8** %data43, align 8
  %44 = load i8*, i8** %callback_data.addr, align 8
  %call44 = call %struct._GimpActionGroup* @gimp_action_factory_group_new(%struct._GimpActionFactory* %41, i8* %43, i8* %44)
  store %struct._GimpActionGroup* %call44, %struct._GimpActionGroup** %group, align 8
  %45 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group, align 8
  %46 = bitcast %struct._GimpActionGroup* %45 to %struct._GTypeInstance*
  %call45 = call i64 @gtk_action_group_get_type() #6
  %call46 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %46, i64 %call45)
  %47 = bitcast %struct._GTypeInstance* %call46 to %struct._GtkActionGroup*
  %call47 = call %struct._GList* @gtk_action_group_list_actions(%struct._GtkActionGroup* %47)
  store %struct._GList* %call47, %struct._GList** %actions, align 8
  %48 = load %struct._GList*, %struct._GList** %actions, align 8
  store %struct._GList* %48, %struct._GList** %list2, align 8
  br label %for.cond.48

for.cond.48:                                      ; preds = %cond.end, %for.body.38
  %49 = load %struct._GList*, %struct._GList** %list2, align 8
  %tobool49 = icmp ne %struct._GList* %49, null
  br i1 %tobool49, label %for.body.50, label %for.end

for.body.50:                                      ; preds = %for.cond.48
  %50 = load %struct._GList*, %struct._GList** %list2, align 8
  %data52 = getelementptr inbounds %struct._GList, %struct._GList* %50, i32 0, i32 0
  %51 = load i8*, i8** %data52, align 8
  %52 = bitcast i8* %51 to %struct._GtkAction*
  store %struct._GtkAction* %52, %struct._GtkAction** %action, align 8
  %53 = load %struct._GtkAction*, %struct._GtkAction** %action, align 8
  %54 = load %struct._GtkAccelGroup*, %struct._GtkAccelGroup** %accel_group, align 8
  call void @gtk_action_set_accel_group(%struct._GtkAction* %53, %struct._GtkAccelGroup* %54)
  %55 = load %struct._GtkAction*, %struct._GtkAction** %action, align 8
  call void @gtk_action_connect_accelerator(%struct._GtkAction* %55)
  br label %for.inc

for.inc:                                          ; preds = %for.body.50
  %56 = load %struct._GList*, %struct._GList** %list2, align 8
  %tobool53 = icmp ne %struct._GList* %56, null
  br i1 %tobool53, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.inc
  %57 = load %struct._GList*, %struct._GList** %list2, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %57, i32 0, i32 1
  %58 = load %struct._GList*, %struct._GList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.inc
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GList* [ %58, %cond.true ], [ null, %cond.false ]
  store %struct._GList* %cond, %struct._GList** %list2, align 8
  br label %for.cond.48

for.end:                                          ; preds = %for.cond.48
  %59 = load %struct._GList*, %struct._GList** %actions, align 8
  call void @g_list_free(%struct._GList* %59)
  %60 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group, align 8
  %61 = bitcast %struct._GimpActionGroup* %60 to i8*
  %62 = load %struct._GtkAccelGroup*, %struct._GtkAccelGroup** %accel_group, align 8
  %63 = bitcast %struct._GtkAccelGroup* %62 to i8*
  %call54 = call i64 @g_signal_connect_object(i8* %61, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i32 0, i32 0), void ()* bitcast (void (%struct._GimpActionGroup*, %struct._GtkAction*, %struct._GtkAccelGroup*)* @gimp_menu_factory_manager_action_added to void ()*), i8* %63, i32 0)
  %64 = load %struct._GimpUIManager*, %struct._GimpUIManager** %manager, align 8
  %65 = bitcast %struct._GimpUIManager* %64 to %struct._GTypeInstance*
  %call55 = call i64 @gtk_ui_manager_get_type() #6
  %call56 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %65, i64 %call55)
  %66 = bitcast %struct._GTypeInstance* %call56 to %struct._GtkUIManager*
  %67 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group, align 8
  %68 = bitcast %struct._GimpActionGroup* %67 to %struct._GTypeInstance*
  %call57 = call i64 @gtk_action_group_get_type() #6
  %call58 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %68, i64 %call57)
  %69 = bitcast %struct._GTypeInstance* %call58 to %struct._GtkActionGroup*
  call void @gtk_ui_manager_insert_action_group(%struct._GtkUIManager* %66, %struct._GtkActionGroup* %69, i32 -1)
  %70 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group, align 8
  %71 = bitcast %struct._GimpActionGroup* %70 to i8*
  call void @g_object_unref(i8* %71)
  br label %for.inc.59

for.inc.59:                                       ; preds = %for.end
  %72 = load %struct._GList*, %struct._GList** %list27, align 8
  %tobool60 = icmp ne %struct._GList* %72, null
  br i1 %tobool60, label %cond.true.61, label %cond.false.63

cond.true.61:                                     ; preds = %for.inc.59
  %73 = load %struct._GList*, %struct._GList** %list27, align 8
  %next62 = getelementptr inbounds %struct._GList, %struct._GList* %73, i32 0, i32 1
  %74 = load %struct._GList*, %struct._GList** %next62, align 8
  br label %cond.end.64

cond.false.63:                                    ; preds = %for.inc.59
  br label %cond.end.64

cond.end.64:                                      ; preds = %cond.false.63, %cond.true.61
  %cond65 = phi %struct._GList* [ %74, %cond.true.61 ], [ null, %cond.false.63 ]
  store %struct._GList* %cond65, %struct._GList** %list27, align 8
  br label %for.cond.36

for.end.66:                                       ; preds = %for.cond.36
  %75 = load %struct._GimpMenuFactoryEntry*, %struct._GimpMenuFactoryEntry** %entry19, align 8
  %managed_uis = getelementptr inbounds %struct._GimpMenuFactoryEntry, %struct._GimpMenuFactoryEntry* %75, i32 0, i32 2
  %76 = load %struct._GList*, %struct._GList** %managed_uis, align 8
  store %struct._GList* %76, %struct._GList** %list27, align 8
  br label %for.cond.67

for.cond.67:                                      ; preds = %cond.end.77, %for.end.66
  %77 = load %struct._GList*, %struct._GList** %list27, align 8
  %tobool68 = icmp ne %struct._GList* %77, null
  br i1 %tobool68, label %for.body.69, label %for.end.79

for.body.69:                                      ; preds = %for.cond.67
  %78 = load %struct._GList*, %struct._GList** %list27, align 8
  %data71 = getelementptr inbounds %struct._GList, %struct._GList* %78, i32 0, i32 0
  %79 = load i8*, i8** %data71, align 8
  %80 = bitcast i8* %79 to %struct._GimpUIManagerUIEntry*
  store %struct._GimpUIManagerUIEntry* %80, %struct._GimpUIManagerUIEntry** %ui_entry, align 8
  %81 = load %struct._GimpUIManager*, %struct._GimpUIManager** %manager, align 8
  %82 = load %struct._GimpUIManagerUIEntry*, %struct._GimpUIManagerUIEntry** %ui_entry, align 8
  %ui_path = getelementptr inbounds %struct._GimpUIManagerUIEntry, %struct._GimpUIManagerUIEntry* %82, i32 0, i32 0
  %83 = load i8*, i8** %ui_path, align 8
  %84 = load %struct._GimpUIManagerUIEntry*, %struct._GimpUIManagerUIEntry** %ui_entry, align 8
  %basename = getelementptr inbounds %struct._GimpUIManagerUIEntry, %struct._GimpUIManagerUIEntry* %84, i32 0, i32 1
  %85 = load i8*, i8** %basename, align 8
  %86 = load %struct._GimpUIManagerUIEntry*, %struct._GimpUIManagerUIEntry** %ui_entry, align 8
  %setup_func = getelementptr inbounds %struct._GimpUIManagerUIEntry, %struct._GimpUIManagerUIEntry* %86, i32 0, i32 2
  %87 = load void (%struct._GimpUIManager*, i8*)*, void (%struct._GimpUIManager*, i8*)** %setup_func, align 8
  call void @gimp_ui_manager_ui_register(%struct._GimpUIManager* %81, i8* %83, i8* %85, void (%struct._GimpUIManager*, i8*)* %87)
  br label %for.inc.72

for.inc.72:                                       ; preds = %for.body.69
  %88 = load %struct._GList*, %struct._GList** %list27, align 8
  %tobool73 = icmp ne %struct._GList* %88, null
  br i1 %tobool73, label %cond.true.74, label %cond.false.76

cond.true.74:                                     ; preds = %for.inc.72
  %89 = load %struct._GList*, %struct._GList** %list27, align 8
  %next75 = getelementptr inbounds %struct._GList, %struct._GList* %89, i32 0, i32 1
  %90 = load %struct._GList*, %struct._GList** %next75, align 8
  br label %cond.end.77

cond.false.76:                                    ; preds = %for.inc.72
  br label %cond.end.77

cond.end.77:                                      ; preds = %cond.false.76, %cond.true.74
  %cond78 = phi %struct._GList* [ %90, %cond.true.74 ], [ null, %cond.false.76 ]
  store %struct._GList* %cond78, %struct._GList** %list27, align 8
  br label %for.cond.67

for.end.79:                                       ; preds = %for.cond.67
  %91 = load %struct._GimpUIManager*, %struct._GimpUIManager** %manager, align 8
  store %struct._GimpUIManager* %91, %struct._GimpUIManager** %retval
  br label %return

if.end.80:                                        ; preds = %for.body
  br label %for.inc.81

for.inc.81:                                       ; preds = %if.end.80
  %92 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool82 = icmp ne %struct._GList* %92, null
  br i1 %tobool82, label %cond.true.83, label %cond.false.85

cond.true.83:                                     ; preds = %for.inc.81
  %93 = load %struct._GList*, %struct._GList** %list, align 8
  %next84 = getelementptr inbounds %struct._GList, %struct._GList* %93, i32 0, i32 1
  %94 = load %struct._GList*, %struct._GList** %next84, align 8
  br label %cond.end.86

cond.false.85:                                    ; preds = %for.inc.81
  br label %cond.end.86

cond.end.86:                                      ; preds = %cond.false.85, %cond.true.83
  %cond87 = phi %struct._GList* [ %94, %cond.true.83 ], [ null, %cond.false.85 ]
  store %struct._GList* %cond87, %struct._GList** %list, align 8
  br label %for.cond

for.end.88:                                       ; preds = %for.cond
  %95 = load i8*, i8** %identifier.addr, align 8
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.gimp_menu_factory_manager_new, i32 0, i32 0), i8* %95)
  store %struct._GimpUIManager* null, %struct._GimpUIManager** %retval
  br label %return

return:                                           ; preds = %for.end.88, %for.end.79, %if.else.14, %if.else.9
  %96 = load %struct._GimpUIManager*, %struct._GimpUIManager** %retval
  ret %struct._GimpUIManager* %96
}

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #4

declare %struct._GimpUIManager* @gimp_ui_manager_new(%struct._Gimp*, i8*) #1

declare void @gtk_ui_manager_set_add_tearoffs(%struct._GtkUIManager*, i32) #1

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_ui_manager_get_type() #2

declare %struct._GtkAccelGroup* @gtk_ui_manager_get_accel_group(%struct._GtkUIManager*) #1

declare %struct._GimpActionGroup* @gimp_action_factory_group_new(%struct._GimpActionFactory*, i8*, i8*) #1

declare %struct._GList* @gtk_action_group_list_actions(%struct._GtkActionGroup*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_action_group_get_type() #2

declare void @gtk_action_set_accel_group(%struct._GtkAction*, %struct._GtkAccelGroup*) #1

declare void @gtk_action_connect_accelerator(%struct._GtkAction*) #1

declare void @g_list_free(%struct._GList*) #1

declare i64 @g_signal_connect_object(i8*, i8*, void ()*, i8*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_menu_factory_manager_action_added(%struct._GimpActionGroup* %group, %struct._GtkAction* %action, %struct._GtkAccelGroup* %accel_group) #3 {
entry:
  %group.addr = alloca %struct._GimpActionGroup*, align 8
  %action.addr = alloca %struct._GtkAction*, align 8
  %accel_group.addr = alloca %struct._GtkAccelGroup*, align 8
  store %struct._GimpActionGroup* %group, %struct._GimpActionGroup** %group.addr, align 8
  store %struct._GtkAction* %action, %struct._GtkAction** %action.addr, align 8
  store %struct._GtkAccelGroup* %accel_group, %struct._GtkAccelGroup** %accel_group.addr, align 8
  %0 = load %struct._GtkAction*, %struct._GtkAction** %action.addr, align 8
  %1 = load %struct._GtkAccelGroup*, %struct._GtkAccelGroup** %accel_group.addr, align 8
  call void @gtk_action_set_accel_group(%struct._GtkAction* %0, %struct._GtkAccelGroup* %1)
  %2 = load %struct._GtkAction*, %struct._GtkAction** %action.addr, align 8
  call void @gtk_action_connect_accelerator(%struct._GtkAction* %2)
  ret void
}

declare void @gtk_ui_manager_insert_action_group(%struct._GtkUIManager*, %struct._GtkActionGroup*, i32) #1

declare void @g_object_unref(i8*) #1

declare void @gimp_ui_manager_ui_register(%struct._GimpUIManager*, i8*, i8*, void (%struct._GimpUIManager*, i8*)*) #1

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

declare i8* @g_type_class_peek_parent(i8*) #1

declare void @g_type_class_adjust_private_offset(i8*, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_menu_factory_class_init(%struct._GimpMenuFactoryClass* %klass) #3 {
entry:
  %klass.addr = alloca %struct._GimpMenuFactoryClass*, align 8
  %object_class = alloca %struct._GObjectClass*, align 8
  store %struct._GimpMenuFactoryClass* %klass, %struct._GimpMenuFactoryClass** %klass.addr, align 8
  %0 = load %struct._GimpMenuFactoryClass*, %struct._GimpMenuFactoryClass** %klass.addr, align 8
  %1 = bitcast %struct._GimpMenuFactoryClass* %0 to %struct._GTypeClass*
  %call = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 80)
  %2 = bitcast %struct._GTypeClass* %call to %struct._GObjectClass*
  store %struct._GObjectClass* %2, %struct._GObjectClass** %object_class, align 8
  %3 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %finalize = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %3, i32 0, i32 6
  store void (%struct._GObject*)* @gimp_menu_factory_finalize, void (%struct._GObject*)** %finalize, align 8
  %4 = load %struct._GimpMenuFactoryClass*, %struct._GimpMenuFactoryClass** %klass.addr, align 8
  %5 = bitcast %struct._GimpMenuFactoryClass* %4 to i8*
  call void @g_type_class_add_private(i8* %5, i64 24)
  ret void
}

declare %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass*, i64) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_menu_factory_finalize(%struct._GObject* %object) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %factory = alloca %struct._GimpMenuFactory*, align 8
  %list = alloca %struct._GList*, align 8
  %entry2 = alloca %struct._GimpMenuFactoryEntry*, align 8
  %uis = alloca %struct._GList*, align 8
  %ui_entry = alloca %struct._GimpUIManagerUIEntry*, align 8
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_menu_factory_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpMenuFactory*
  store %struct._GimpMenuFactory* %2, %struct._GimpMenuFactory** %factory, align 8
  %3 = load %struct._GimpMenuFactory*, %struct._GimpMenuFactory** %factory, align 8
  %p = getelementptr inbounds %struct._GimpMenuFactory, %struct._GimpMenuFactory* %3, i32 0, i32 1
  %4 = load %struct._GimpMenuFactoryPrivate*, %struct._GimpMenuFactoryPrivate** %p, align 8
  %registered_menus = getelementptr inbounds %struct._GimpMenuFactoryPrivate, %struct._GimpMenuFactoryPrivate* %4, i32 0, i32 2
  %5 = load %struct._GList*, %struct._GList** %registered_menus, align 8
  store %struct._GList* %5, %struct._GList** %list, align 8
  br label %for.cond

for.cond:                                         ; preds = %cond.end.16, %entry
  %6 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool = icmp ne %struct._GList* %6, null
  br i1 %tobool, label %for.body, label %for.end.18

for.body:                                         ; preds = %for.cond
  %7 = load %struct._GList*, %struct._GList** %list, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %7, i32 0, i32 0
  %8 = load i8*, i8** %data, align 8
  %9 = bitcast i8* %8 to %struct._GimpMenuFactoryEntry*
  store %struct._GimpMenuFactoryEntry* %9, %struct._GimpMenuFactoryEntry** %entry2, align 8
  %10 = load %struct._GimpMenuFactoryEntry*, %struct._GimpMenuFactoryEntry** %entry2, align 8
  %identifier = getelementptr inbounds %struct._GimpMenuFactoryEntry, %struct._GimpMenuFactoryEntry* %10, i32 0, i32 0
  %11 = load i8*, i8** %identifier, align 8
  call void @g_free(i8* %11)
  %12 = load %struct._GimpMenuFactoryEntry*, %struct._GimpMenuFactoryEntry** %entry2, align 8
  %action_groups = getelementptr inbounds %struct._GimpMenuFactoryEntry, %struct._GimpMenuFactoryEntry* %12, i32 0, i32 1
  %13 = load %struct._GList*, %struct._GList** %action_groups, align 8
  call void @g_list_free_full(%struct._GList* %13, void (i8*)* @g_free)
  %14 = load %struct._GimpMenuFactoryEntry*, %struct._GimpMenuFactoryEntry** %entry2, align 8
  %managed_uis = getelementptr inbounds %struct._GimpMenuFactoryEntry, %struct._GimpMenuFactoryEntry* %14, i32 0, i32 2
  %15 = load %struct._GList*, %struct._GList** %managed_uis, align 8
  store %struct._GList* %15, %struct._GList** %uis, align 8
  br label %for.cond.3

for.cond.3:                                       ; preds = %cond.end, %for.body
  %16 = load %struct._GList*, %struct._GList** %uis, align 8
  %tobool4 = icmp ne %struct._GList* %16, null
  br i1 %tobool4, label %for.body.5, label %for.end

for.body.5:                                       ; preds = %for.cond.3
  %17 = load %struct._GList*, %struct._GList** %uis, align 8
  %data6 = getelementptr inbounds %struct._GList, %struct._GList* %17, i32 0, i32 0
  %18 = load i8*, i8** %data6, align 8
  %19 = bitcast i8* %18 to %struct._GimpUIManagerUIEntry*
  store %struct._GimpUIManagerUIEntry* %19, %struct._GimpUIManagerUIEntry** %ui_entry, align 8
  %20 = load %struct._GimpUIManagerUIEntry*, %struct._GimpUIManagerUIEntry** %ui_entry, align 8
  %ui_path = getelementptr inbounds %struct._GimpUIManagerUIEntry, %struct._GimpUIManagerUIEntry* %20, i32 0, i32 0
  %21 = load i8*, i8** %ui_path, align 8
  call void @g_free(i8* %21)
  %22 = load %struct._GimpUIManagerUIEntry*, %struct._GimpUIManagerUIEntry** %ui_entry, align 8
  %basename = getelementptr inbounds %struct._GimpUIManagerUIEntry, %struct._GimpUIManagerUIEntry* %22, i32 0, i32 1
  %23 = load i8*, i8** %basename, align 8
  call void @g_free(i8* %23)
  br label %do.body

do.body:                                          ; preds = %for.body.5
  %24 = load %struct._GimpUIManagerUIEntry*, %struct._GimpUIManagerUIEntry** %ui_entry, align 8
  %25 = bitcast %struct._GimpUIManagerUIEntry* %24 to i8*
  call void @g_slice_free1(i64 40, i8* %25)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %for.inc

for.inc:                                          ; preds = %do.end
  %26 = load %struct._GList*, %struct._GList** %uis, align 8
  %tobool7 = icmp ne %struct._GList* %26, null
  br i1 %tobool7, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.inc
  %27 = load %struct._GList*, %struct._GList** %uis, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %27, i32 0, i32 1
  %28 = load %struct._GList*, %struct._GList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.inc
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GList* [ %28, %cond.true ], [ null, %cond.false ]
  store %struct._GList* %cond, %struct._GList** %uis, align 8
  br label %for.cond.3

for.end:                                          ; preds = %for.cond.3
  %29 = load %struct._GimpMenuFactoryEntry*, %struct._GimpMenuFactoryEntry** %entry2, align 8
  %managed_uis8 = getelementptr inbounds %struct._GimpMenuFactoryEntry, %struct._GimpMenuFactoryEntry* %29, i32 0, i32 2
  %30 = load %struct._GList*, %struct._GList** %managed_uis8, align 8
  call void @g_list_free(%struct._GList* %30)
  br label %do.body.9

do.body.9:                                        ; preds = %for.end
  %31 = load %struct._GimpMenuFactoryEntry*, %struct._GimpMenuFactoryEntry** %entry2, align 8
  %32 = bitcast %struct._GimpMenuFactoryEntry* %31 to i8*
  call void @g_slice_free1(i64 24, i8* %32)
  br label %do.end.10

do.end.10:                                        ; preds = %do.body.9
  br label %for.inc.11

for.inc.11:                                       ; preds = %do.end.10
  %33 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool12 = icmp ne %struct._GList* %33, null
  br i1 %tobool12, label %cond.true.13, label %cond.false.15

cond.true.13:                                     ; preds = %for.inc.11
  %34 = load %struct._GList*, %struct._GList** %list, align 8
  %next14 = getelementptr inbounds %struct._GList, %struct._GList* %34, i32 0, i32 1
  %35 = load %struct._GList*, %struct._GList** %next14, align 8
  br label %cond.end.16

cond.false.15:                                    ; preds = %for.inc.11
  br label %cond.end.16

cond.end.16:                                      ; preds = %cond.false.15, %cond.true.13
  %cond17 = phi %struct._GList* [ %35, %cond.true.13 ], [ null, %cond.false.15 ]
  store %struct._GList* %cond17, %struct._GList** %list, align 8
  br label %for.cond

for.end.18:                                       ; preds = %for.cond
  %36 = load %struct._GimpMenuFactory*, %struct._GimpMenuFactory** %factory, align 8
  %p19 = getelementptr inbounds %struct._GimpMenuFactory, %struct._GimpMenuFactory* %36, i32 0, i32 1
  %37 = load %struct._GimpMenuFactoryPrivate*, %struct._GimpMenuFactoryPrivate** %p19, align 8
  %registered_menus20 = getelementptr inbounds %struct._GimpMenuFactoryPrivate, %struct._GimpMenuFactoryPrivate* %37, i32 0, i32 2
  %38 = load %struct._GList*, %struct._GList** %registered_menus20, align 8
  call void @g_list_free(%struct._GList* %38)
  %39 = load %struct._GimpMenuFactory*, %struct._GimpMenuFactory** %factory, align 8
  %p21 = getelementptr inbounds %struct._GimpMenuFactory, %struct._GimpMenuFactory* %39, i32 0, i32 1
  %40 = load %struct._GimpMenuFactoryPrivate*, %struct._GimpMenuFactoryPrivate** %p21, align 8
  %registered_menus22 = getelementptr inbounds %struct._GimpMenuFactoryPrivate, %struct._GimpMenuFactoryPrivate* %40, i32 0, i32 2
  store %struct._GList* null, %struct._GList** %registered_menus22, align 8
  %41 = load i8*, i8** @gimp_menu_factory_parent_class, align 8
  %42 = bitcast i8* %41 to %struct._GTypeClass*
  %call23 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %42, i64 80)
  %43 = bitcast %struct._GTypeClass* %call23 to %struct._GObjectClass*
  %finalize = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %43, i32 0, i32 6
  %44 = load void (%struct._GObject*)*, void (%struct._GObject*)** %finalize, align 8
  %45 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  call void %44(%struct._GObject* %45)
  ret void
}

declare void @g_type_class_add_private(i8*, i64) #1

declare void @g_free(i8*) #1

declare void @g_list_free_full(%struct._GList*, void (i8*)*) #1

declare void @g_slice_free1(i64, i8*) #1

declare i8* @g_type_instance_get_private(%struct._GTypeInstance*, i64) #1

declare void @g_logv(i8*, i32, i8*, %struct.__va_list_tag*) #1

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
