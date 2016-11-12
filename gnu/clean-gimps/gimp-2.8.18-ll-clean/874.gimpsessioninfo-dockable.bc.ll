; ModuleID = './app/widgets/gimpsessioninfo-dockable.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GimpSessionInfoDockable = type { i8*, i32, i32, i32, %struct._GList* }
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct._GimpSessionInfoAux = type { i8*, i8* }
%struct._GimpConfigWriter = type opaque
%struct._GEnumClass = type { %struct._GTypeClass, i32, i32, i32, %struct._GEnumValue* }
%struct._GTypeClass = type { i64 }
%struct._GEnumValue = type { i32, i8*, i8* }
%struct._GScanner = type { i8*, i32, i32, i8*, %struct._GData*, %struct._GScannerConfig*, i32, %union._GTokenValue, i32, i32, i32, %union._GTokenValue, i32, i32, %struct._GHashTable*, i32, i8*, i8*, i8*, i32, void (%struct._GScanner*, i8*, i32)* }
%struct._GData = type opaque
%struct._GScannerConfig = type { i8*, i8*, i8*, i8*, i24, i32 }
%union._GTokenValue = type { i8* }
%struct._GHashTable = type opaque
%struct._GimpDockable = type { %struct._GtkBin, %struct._GimpDockablePrivate* }
%struct._GtkBin = type { %struct._GtkContainer, %struct._GtkWidget* }
%struct._GtkContainer = type { %struct._GtkWidget, %struct._GtkWidget*, i24 }
%struct._GtkWidget = type { %struct._GtkObject, i16, i8, i8, i8*, %struct._GtkStyle*, %struct._GtkRequisition, %struct._GdkRectangle, %struct._GdkDrawable*, %struct._GtkWidget* }
%struct._GtkObject = type { %struct._GObject, i32 }
%struct._GObject = type { %struct._GTypeInstance, i32, %struct._GData* }
%struct._GTypeInstance = type { %struct._GTypeClass* }
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
%struct._GimpDockablePrivate = type opaque
%struct._GimpDialogFactoryEntry = type { i8*, i8*, i8*, i8*, i8*, %struct._GtkWidget* (%struct._GimpDialogFactory*, %struct._GimpContext*, %struct._GimpUIManager*, i32)*, %struct._GtkWidget* (%struct._GimpDialogFactory*, %struct._GdkScreen*, %struct._GimpSessionInfo*)*, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._GimpDialogFactory = type { %struct._GimpObject, %struct._GimpDialogFactoryPrivate* }
%struct._GimpObject = type { %struct._GObject, %struct._GimpObjectPrivate* }
%struct._GimpObjectPrivate = type opaque
%struct._GimpDialogFactoryPrivate = type opaque
%struct._GimpContext = type opaque
%struct._GimpUIManager = type opaque
%struct._GdkScreen = type { %struct._GObject, i8, [32 x %struct._GdkGC*], [32 x %struct._GdkGC*], [32 x %struct._GdkGC*], %struct._cairo_font_options*, double }
%struct._cairo_font_options = type opaque
%struct._GimpSessionInfo = type opaque
%struct._GimpContainerView = type opaque
%struct._GimpSessionManaged = type opaque
%struct._GimpDock = type { %struct._GtkBox, %struct._GimpDockPrivate* }
%struct._GtkBox = type { %struct._GtkContainer, %struct._GList*, i16, i8 }
%struct._GimpDockPrivate = type opaque
%struct._GimpDockbook = type opaque

@.str = private unnamed_addr constant [13 x i8] c"Gimp-Widgets\00", align 1
@__func__.gimp_session_info_dockable_free = private unnamed_addr constant [32 x i8] c"gimp_session_info_dockable_free\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"info != NULL\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"icon\00", align 1
@__func__.gimp_session_info_dockable_serialize = private unnamed_addr constant [37 x i8] c"gimp_session_info_dockable_serialize\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"writer != NULL\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"dockable\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"locked\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"tab-style\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"preview-size\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@__func__.gimp_session_info_dockable_deserialize = private unnamed_addr constant [39 x i8] c"gimp_session_info_dockable_deserialize\00", align 1
@.str.9 = private unnamed_addr constant [16 x i8] c"scanner != NULL\00", align 1
@.str.10 = private unnamed_addr constant [17 x i8] c"dockable != NULL\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"aux-info\00", align 1
@__func__.gimp_session_info_dockable_from_widget = private unnamed_addr constant [39 x i8] c"gimp_session_info_dockable_from_widget\00", align 1
@.str.12 = private unnamed_addr constant [28 x i8] c"GIMP_IS_DOCKABLE (dockable)\00", align 1
@.str.13 = private unnamed_addr constant [14 x i8] c"entry != NULL\00", align 1
@__func__.gimp_session_info_dockable_restore = private unnamed_addr constant [35 x i8] c"gimp_session_info_dockable_restore\00", align 1
@.str.14 = private unnamed_addr constant [20 x i8] c"GIMP_IS_DOCK (dock)\00", align 1

; Function Attrs: nounwind uwtable
define %struct._GimpSessionInfoDockable* @gimp_session_info_dockable_new() #0 {
entry:
  %call = call noalias i8* @g_slice_alloc0(i64 32)
  %0 = bitcast i8* %call to %struct._GimpSessionInfoDockable*
  ret %struct._GimpSessionInfoDockable* %0
}

declare noalias i8* @g_slice_alloc0(i64) #1

; Function Attrs: nounwind uwtable
define void @gimp_session_info_dockable_free(%struct._GimpSessionInfoDockable* %info) #0 {
entry:
  %info.addr = alloca %struct._GimpSessionInfoDockable*, align 8
  store %struct._GimpSessionInfoDockable* %info, %struct._GimpSessionInfoDockable** %info.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpSessionInfoDockable*, %struct._GimpSessionInfoDockable** %info.addr, align 8
  %cmp = icmp ne %struct._GimpSessionInfoDockable* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__func__.gimp_session_info_dockable_free, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0))
  br label %do.end.11

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %1 = load %struct._GimpSessionInfoDockable*, %struct._GimpSessionInfoDockable** %info.addr, align 8
  %identifier = getelementptr inbounds %struct._GimpSessionInfoDockable, %struct._GimpSessionInfoDockable* %1, i32 0, i32 0
  %2 = load i8*, i8** %identifier, align 8
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %if.then.1, label %if.end.4

if.then.1:                                        ; preds = %do.end
  %3 = load %struct._GimpSessionInfoDockable*, %struct._GimpSessionInfoDockable** %info.addr, align 8
  %identifier2 = getelementptr inbounds %struct._GimpSessionInfoDockable, %struct._GimpSessionInfoDockable* %3, i32 0, i32 0
  %4 = load i8*, i8** %identifier2, align 8
  call void @g_free(i8* %4)
  %5 = load %struct._GimpSessionInfoDockable*, %struct._GimpSessionInfoDockable** %info.addr, align 8
  %identifier3 = getelementptr inbounds %struct._GimpSessionInfoDockable, %struct._GimpSessionInfoDockable* %5, i32 0, i32 0
  store i8* null, i8** %identifier3, align 8
  br label %if.end.4

if.end.4:                                         ; preds = %if.then.1, %do.end
  %6 = load %struct._GimpSessionInfoDockable*, %struct._GimpSessionInfoDockable** %info.addr, align 8
  %aux_info = getelementptr inbounds %struct._GimpSessionInfoDockable, %struct._GimpSessionInfoDockable* %6, i32 0, i32 4
  %7 = load %struct._GList*, %struct._GList** %aux_info, align 8
  %tobool5 = icmp ne %struct._GList* %7, null
  br i1 %tobool5, label %if.then.6, label %if.end.9

if.then.6:                                        ; preds = %if.end.4
  %8 = load %struct._GimpSessionInfoDockable*, %struct._GimpSessionInfoDockable** %info.addr, align 8
  %aux_info7 = getelementptr inbounds %struct._GimpSessionInfoDockable, %struct._GimpSessionInfoDockable* %8, i32 0, i32 4
  %9 = load %struct._GList*, %struct._GList** %aux_info7, align 8
  call void @g_list_free_full(%struct._GList* %9, void (i8*)* bitcast (void (%struct._GimpSessionInfoAux*)* @gimp_session_info_aux_free to void (i8*)*))
  %10 = load %struct._GimpSessionInfoDockable*, %struct._GimpSessionInfoDockable** %info.addr, align 8
  %aux_info8 = getelementptr inbounds %struct._GimpSessionInfoDockable, %struct._GimpSessionInfoDockable* %10, i32 0, i32 4
  store %struct._GList* null, %struct._GList** %aux_info8, align 8
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.6, %if.end.4
  br label %do.body.10

do.body.10:                                       ; preds = %if.end.9
  %11 = load %struct._GimpSessionInfoDockable*, %struct._GimpSessionInfoDockable** %info.addr, align 8
  %12 = bitcast %struct._GimpSessionInfoDockable* %11 to i8*
  call void @g_slice_free1(i64 32, i8* %12)
  br label %do.end.11

do.end.11:                                        ; preds = %if.else, %do.body.10
  ret void
}

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

declare void @g_free(i8*) #1

declare void @g_list_free_full(%struct._GList*, void (i8*)*) #1

declare void @gimp_session_info_aux_free(%struct._GimpSessionInfoAux*) #1

declare void @g_slice_free1(i64, i8*) #1

; Function Attrs: nounwind uwtable
define void @gimp_session_info_dockable_serialize(%struct._GimpConfigWriter* %writer, %struct._GimpSessionInfoDockable* %info) #0 {
entry:
  %writer.addr = alloca %struct._GimpConfigWriter*, align 8
  %info.addr = alloca %struct._GimpSessionInfoDockable*, align 8
  %enum_class = alloca %struct._GEnumClass*, align 8
  %enum_value = alloca %struct._GEnumValue*, align 8
  %tab_style = alloca i8*, align 8
  store %struct._GimpConfigWriter* %writer, %struct._GimpConfigWriter** %writer.addr, align 8
  store %struct._GimpSessionInfoDockable* %info, %struct._GimpSessionInfoDockable** %info.addr, align 8
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), i8** %tab_style, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer.addr, align 8
  %cmp = icmp ne %struct._GimpConfigWriter* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__func__.gimp_session_info_dockable_serialize, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i32 0, i32 0))
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %do.body.1

do.body.1:                                        ; preds = %do.end
  %1 = load %struct._GimpSessionInfoDockable*, %struct._GimpSessionInfoDockable** %info.addr, align 8
  %cmp2 = icmp ne %struct._GimpSessionInfoDockable* %1, null
  br i1 %cmp2, label %if.then.3, label %if.else.4

if.then.3:                                        ; preds = %do.body.1
  br label %if.end.5

if.else.4:                                        ; preds = %do.body.1
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__func__.gimp_session_info_dockable_serialize, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0))
  br label %return

if.end.5:                                         ; preds = %if.then.3
  br label %do.end.6

do.end.6:                                         ; preds = %if.end.5
  %call = call i64 @gimp_tab_style_get_type() #4
  %call7 = call i8* @g_type_class_ref(i64 %call)
  %2 = bitcast i8* %call7 to %struct._GEnumClass*
  store %struct._GEnumClass* %2, %struct._GEnumClass** %enum_class, align 8
  %3 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer.addr, align 8
  call void @gimp_config_writer_open(%struct._GimpConfigWriter* %3, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0))
  %4 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer.addr, align 8
  %5 = load %struct._GimpSessionInfoDockable*, %struct._GimpSessionInfoDockable** %info.addr, align 8
  %identifier = getelementptr inbounds %struct._GimpSessionInfoDockable, %struct._GimpSessionInfoDockable* %5, i32 0, i32 0
  %6 = load i8*, i8** %identifier, align 8
  call void @gimp_config_writer_string(%struct._GimpConfigWriter* %4, i8* %6)
  %7 = load %struct._GimpSessionInfoDockable*, %struct._GimpSessionInfoDockable** %info.addr, align 8
  %locked = getelementptr inbounds %struct._GimpSessionInfoDockable, %struct._GimpSessionInfoDockable* %7, i32 0, i32 1
  %8 = load i32, i32* %locked, align 4
  %tobool = icmp ne i32 %8, 0
  br i1 %tobool, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %do.end.6
  %9 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer.addr, align 8
  call void @gimp_config_writer_open(%struct._GimpConfigWriter* %9, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0))
  %10 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer.addr, align 8
  call void @gimp_config_writer_close(%struct._GimpConfigWriter* %10)
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.8, %do.end.6
  %11 = load %struct._GEnumClass*, %struct._GEnumClass** %enum_class, align 8
  %12 = load %struct._GimpSessionInfoDockable*, %struct._GimpSessionInfoDockable** %info.addr, align 8
  %tab_style10 = getelementptr inbounds %struct._GimpSessionInfoDockable, %struct._GimpSessionInfoDockable* %12, i32 0, i32 2
  %13 = load i32, i32* %tab_style10, align 4
  %call11 = call %struct._GEnumValue* @g_enum_get_value(%struct._GEnumClass* %11, i32 %13)
  store %struct._GEnumValue* %call11, %struct._GEnumValue** %enum_value, align 8
  %14 = load %struct._GEnumValue*, %struct._GEnumValue** %enum_value, align 8
  %tobool12 = icmp ne %struct._GEnumValue* %14, null
  br i1 %tobool12, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %if.end.9
  %15 = load %struct._GEnumValue*, %struct._GEnumValue** %enum_value, align 8
  %value_nick = getelementptr inbounds %struct._GEnumValue, %struct._GEnumValue* %15, i32 0, i32 2
  %16 = load i8*, i8** %value_nick, align 8
  store i8* %16, i8** %tab_style, align 8
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.13, %if.end.9
  %17 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer.addr, align 8
  call void @gimp_config_writer_open(%struct._GimpConfigWriter* %17, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i32 0, i32 0))
  %18 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer.addr, align 8
  %19 = load i8*, i8** %tab_style, align 8
  call void @gimp_config_writer_print(%struct._GimpConfigWriter* %18, i8* %19, i32 -1)
  %20 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer.addr, align 8
  call void @gimp_config_writer_close(%struct._GimpConfigWriter* %20)
  %21 = load %struct._GimpSessionInfoDockable*, %struct._GimpSessionInfoDockable** %info.addr, align 8
  %view_size = getelementptr inbounds %struct._GimpSessionInfoDockable, %struct._GimpSessionInfoDockable* %21, i32 0, i32 3
  %22 = load i32, i32* %view_size, align 4
  %cmp15 = icmp sgt i32 %22, 0
  br i1 %cmp15, label %if.then.16, label %if.end.18

if.then.16:                                       ; preds = %if.end.14
  %23 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer.addr, align 8
  call void @gimp_config_writer_open(%struct._GimpConfigWriter* %23, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i32 0, i32 0))
  %24 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer.addr, align 8
  %25 = load %struct._GimpSessionInfoDockable*, %struct._GimpSessionInfoDockable** %info.addr, align 8
  %view_size17 = getelementptr inbounds %struct._GimpSessionInfoDockable, %struct._GimpSessionInfoDockable* %25, i32 0, i32 3
  %26 = load i32, i32* %view_size17, align 4
  call void (%struct._GimpConfigWriter*, i8*, ...) @gimp_config_writer_printf(%struct._GimpConfigWriter* %24, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i32 0, i32 0), i32 %26)
  %27 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer.addr, align 8
  call void @gimp_config_writer_close(%struct._GimpConfigWriter* %27)
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.16, %if.end.14
  %28 = load %struct._GimpSessionInfoDockable*, %struct._GimpSessionInfoDockable** %info.addr, align 8
  %aux_info = getelementptr inbounds %struct._GimpSessionInfoDockable, %struct._GimpSessionInfoDockable* %28, i32 0, i32 4
  %29 = load %struct._GList*, %struct._GList** %aux_info, align 8
  %tobool19 = icmp ne %struct._GList* %29, null
  br i1 %tobool19, label %if.then.20, label %if.end.22

if.then.20:                                       ; preds = %if.end.18
  %30 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer.addr, align 8
  %31 = load %struct._GimpSessionInfoDockable*, %struct._GimpSessionInfoDockable** %info.addr, align 8
  %aux_info21 = getelementptr inbounds %struct._GimpSessionInfoDockable, %struct._GimpSessionInfoDockable* %31, i32 0, i32 4
  %32 = load %struct._GList*, %struct._GList** %aux_info21, align 8
  call void @gimp_session_info_aux_serialize(%struct._GimpConfigWriter* %30, %struct._GList* %32)
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.20, %if.end.18
  %33 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer.addr, align 8
  call void @gimp_config_writer_close(%struct._GimpConfigWriter* %33)
  %34 = load %struct._GEnumClass*, %struct._GEnumClass** %enum_class, align 8
  %35 = bitcast %struct._GEnumClass* %34 to i8*
  call void @g_type_class_unref(i8* %35)
  br label %return

return:                                           ; preds = %if.end.22, %if.else.4, %if.else
  ret void
}

declare i8* @g_type_class_ref(i64) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_tab_style_get_type() #2

declare void @gimp_config_writer_open(%struct._GimpConfigWriter*, i8*) #1

declare void @gimp_config_writer_string(%struct._GimpConfigWriter*, i8*) #1

declare void @gimp_config_writer_close(%struct._GimpConfigWriter*) #1

declare %struct._GEnumValue* @g_enum_get_value(%struct._GEnumClass*, i32) #1

declare void @gimp_config_writer_print(%struct._GimpConfigWriter*, i8*, i32) #1

declare void @gimp_config_writer_printf(%struct._GimpConfigWriter*, i8*, ...) #1

declare void @gimp_session_info_aux_serialize(%struct._GimpConfigWriter*, %struct._GList*) #1

declare void @g_type_class_unref(i8*) #1

; Function Attrs: nounwind uwtable
define i32 @gimp_session_info_dockable_deserialize(%struct._GScanner* %scanner, i32 %scope, %struct._GimpSessionInfoDockable** %dockable) #0 {
entry:
  %retval = alloca i32, align 4
  %scanner.addr = alloca %struct._GScanner*, align 8
  %scope.addr = alloca i32, align 4
  %dockable.addr = alloca %struct._GimpSessionInfoDockable**, align 8
  %info = alloca %struct._GimpSessionInfoDockable*, align 8
  %enum_class = alloca %struct._GEnumClass*, align 8
  %enum_value = alloca %struct._GEnumValue*, align 8
  %token = alloca i32, align 4
  store %struct._GScanner* %scanner, %struct._GScanner** %scanner.addr, align 8
  store i32 %scope, i32* %scope.addr, align 4
  store %struct._GimpSessionInfoDockable** %dockable, %struct._GimpSessionInfoDockable*** %dockable.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %cmp = icmp ne %struct._GScanner* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @__func__.gimp_session_info_dockable_deserialize, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i32 0, i32 0))
  store i32 40, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %do.body.1

do.body.1:                                        ; preds = %do.end
  %1 = load %struct._GimpSessionInfoDockable**, %struct._GimpSessionInfoDockable*** %dockable.addr, align 8
  %cmp2 = icmp ne %struct._GimpSessionInfoDockable** %1, null
  br i1 %cmp2, label %if.then.3, label %if.else.4

if.then.3:                                        ; preds = %do.body.1
  br label %if.end.5

if.else.4:                                        ; preds = %do.body.1
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @__func__.gimp_session_info_dockable_deserialize, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.10, i32 0, i32 0))
  store i32 40, i32* %retval
  br label %return

if.end.5:                                         ; preds = %if.then.3
  br label %do.end.6

do.end.6:                                         ; preds = %if.end.5
  %2 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %3 = load i32, i32* %scope.addr, align 4
  call void @g_scanner_scope_add_symbol(%struct._GScanner* %2, i32 %3, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), i8* null)
  %4 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %5 = load i32, i32* %scope.addr, align 4
  call void @g_scanner_scope_add_symbol(%struct._GScanner* %4, i32 %5, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i32 0, i32 0), i8* inttoptr (i64 1 to i8*))
  %6 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %7 = load i32, i32* %scope.addr, align 4
  call void @g_scanner_scope_add_symbol(%struct._GScanner* %6, i32 %7, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i32 0, i32 0), i8* inttoptr (i64 2 to i8*))
  %8 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %9 = load i32, i32* %scope.addr, align 4
  call void @g_scanner_scope_add_symbol(%struct._GScanner* %8, i32 %9, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i32 0, i32 0), i8* inttoptr (i64 3 to i8*))
  %call = call %struct._GimpSessionInfoDockable* @gimp_session_info_dockable_new()
  store %struct._GimpSessionInfoDockable* %call, %struct._GimpSessionInfoDockable** %info, align 8
  %call7 = call i64 @gimp_tab_style_get_type() #4
  %call8 = call i8* @g_type_class_ref(i64 %call7)
  %10 = bitcast i8* %call8 to %struct._GEnumClass*
  store %struct._GEnumClass* %10, %struct._GEnumClass** %enum_class, align 8
  store i32 264, i32* %token, align 4
  %11 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %12 = load %struct._GimpSessionInfoDockable*, %struct._GimpSessionInfoDockable** %info, align 8
  %identifier = getelementptr inbounds %struct._GimpSessionInfoDockable, %struct._GimpSessionInfoDockable* %12, i32 0, i32 0
  %call9 = call i32 @gimp_scanner_parse_string(%struct._GScanner* %11, i8** %identifier)
  %tobool = icmp ne i32 %call9, 0
  br i1 %tobool, label %if.end.11, label %if.then.10

if.then.10:                                       ; preds = %do.end.6
  br label %error

if.end.11:                                        ; preds = %do.end.6
  store i32 40, i32* %token, align 4
  br label %while.cond

while.cond:                                       ; preds = %sw.epilog.49, %if.end.11
  %13 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %call12 = call i32 @g_scanner_peek_next_token(%struct._GScanner* %13)
  %14 = load i32, i32* %token, align 4
  %cmp13 = icmp eq i32 %call12, %14
  br i1 %cmp13, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %15 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %call14 = call i32 @g_scanner_get_next_token(%struct._GScanner* %15)
  store i32 %call14, i32* %token, align 4
  %16 = load i32, i32* %token, align 4
  switch i32 %16, label %sw.default.48 [
    i32 40, label %sw.bb
    i32 265, label %sw.bb.15
    i32 41, label %sw.bb.47
  ]

sw.bb:                                            ; preds = %while.body
  store i32 265, i32* %token, align 4
  br label %sw.epilog.49

sw.bb.15:                                         ; preds = %while.body
  %17 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %value = getelementptr inbounds %struct._GScanner, %struct._GScanner* %17, i32 0, i32 7
  %v_symbol = bitcast %union._GTokenValue* %value to i8**
  %18 = load i8*, i8** %v_symbol, align 8
  %19 = ptrtoint i8* %18 to i64
  %conv = trunc i64 %19 to i32
  switch i32 %conv, label %sw.default [
    i32 0, label %sw.bb.16
    i32 1, label %sw.bb.17
    i32 2, label %sw.bb.36
    i32 3, label %sw.bb.41
  ]

sw.bb.16:                                         ; preds = %sw.bb.15
  %20 = load %struct._GimpSessionInfoDockable*, %struct._GimpSessionInfoDockable** %info, align 8
  %locked = getelementptr inbounds %struct._GimpSessionInfoDockable, %struct._GimpSessionInfoDockable* %20, i32 0, i32 1
  store i32 1, i32* %locked, align 4
  br label %sw.epilog

sw.bb.17:                                         ; preds = %sw.bb.15
  store i32 266, i32* %token, align 4
  %21 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %call18 = call i32 @g_scanner_peek_next_token(%struct._GScanner* %21)
  %22 = load i32, i32* %token, align 4
  %cmp19 = icmp ne i32 %call18, %22
  br i1 %cmp19, label %if.then.21, label %if.end.22

if.then.21:                                       ; preds = %sw.bb.17
  br label %error

if.end.22:                                        ; preds = %sw.bb.17
  %23 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %call23 = call i32 @g_scanner_get_next_token(%struct._GScanner* %23)
  %24 = load %struct._GEnumClass*, %struct._GEnumClass** %enum_class, align 8
  %25 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %value24 = getelementptr inbounds %struct._GScanner, %struct._GScanner* %25, i32 0, i32 7
  %v_identifier = bitcast %union._GTokenValue* %value24 to i8**
  %26 = load i8*, i8** %v_identifier, align 8
  %call25 = call %struct._GEnumValue* @g_enum_get_value_by_nick(%struct._GEnumClass* %24, i8* %26)
  store %struct._GEnumValue* %call25, %struct._GEnumValue** %enum_value, align 8
  %27 = load %struct._GEnumValue*, %struct._GEnumValue** %enum_value, align 8
  %tobool26 = icmp ne %struct._GEnumValue* %27, null
  br i1 %tobool26, label %if.end.31, label %if.then.27

if.then.27:                                       ; preds = %if.end.22
  %28 = load %struct._GEnumClass*, %struct._GEnumClass** %enum_class, align 8
  %29 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %value28 = getelementptr inbounds %struct._GScanner, %struct._GScanner* %29, i32 0, i32 7
  %v_identifier29 = bitcast %union._GTokenValue* %value28 to i8**
  %30 = load i8*, i8** %v_identifier29, align 8
  %call30 = call %struct._GEnumValue* @g_enum_get_value_by_name(%struct._GEnumClass* %28, i8* %30)
  store %struct._GEnumValue* %call30, %struct._GEnumValue** %enum_value, align 8
  br label %if.end.31

if.end.31:                                        ; preds = %if.then.27, %if.end.22
  %31 = load %struct._GEnumValue*, %struct._GEnumValue** %enum_value, align 8
  %tobool32 = icmp ne %struct._GEnumValue* %31, null
  br i1 %tobool32, label %if.then.33, label %if.end.35

if.then.33:                                       ; preds = %if.end.31
  %32 = load %struct._GEnumValue*, %struct._GEnumValue** %enum_value, align 8
  %value34 = getelementptr inbounds %struct._GEnumValue, %struct._GEnumValue* %32, i32 0, i32 0
  %33 = load i32, i32* %value34, align 4
  %34 = load %struct._GimpSessionInfoDockable*, %struct._GimpSessionInfoDockable** %info, align 8
  %tab_style = getelementptr inbounds %struct._GimpSessionInfoDockable, %struct._GimpSessionInfoDockable* %34, i32 0, i32 2
  store i32 %33, i32* %tab_style, align 4
  br label %if.end.35

if.end.35:                                        ; preds = %if.then.33, %if.end.31
  br label %sw.epilog

sw.bb.36:                                         ; preds = %sw.bb.15
  store i32 261, i32* %token, align 4
  %35 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %36 = load %struct._GimpSessionInfoDockable*, %struct._GimpSessionInfoDockable** %info, align 8
  %view_size = getelementptr inbounds %struct._GimpSessionInfoDockable, %struct._GimpSessionInfoDockable* %36, i32 0, i32 3
  %call37 = call i32 @gimp_scanner_parse_int(%struct._GScanner* %35, i32* %view_size)
  %tobool38 = icmp ne i32 %call37, 0
  br i1 %tobool38, label %if.end.40, label %if.then.39

if.then.39:                                       ; preds = %sw.bb.36
  br label %error

if.end.40:                                        ; preds = %sw.bb.36
  br label %sw.epilog

sw.bb.41:                                         ; preds = %sw.bb.15
  %37 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %38 = load %struct._GimpSessionInfoDockable*, %struct._GimpSessionInfoDockable** %info, align 8
  %aux_info = getelementptr inbounds %struct._GimpSessionInfoDockable, %struct._GimpSessionInfoDockable* %38, i32 0, i32 4
  %call42 = call i32 @gimp_session_info_aux_deserialize(%struct._GScanner* %37, %struct._GList** %aux_info)
  store i32 %call42, i32* %token, align 4
  %39 = load i32, i32* %token, align 4
  %cmp43 = icmp ne i32 %39, 40
  br i1 %cmp43, label %if.then.45, label %if.end.46

if.then.45:                                       ; preds = %sw.bb.41
  br label %error

if.end.46:                                        ; preds = %sw.bb.41
  br label %sw.epilog

sw.default:                                       ; preds = %sw.bb.15
  br label %error

sw.epilog:                                        ; preds = %if.end.46, %if.end.40, %if.end.35, %sw.bb.16
  store i32 41, i32* %token, align 4
  br label %sw.epilog.49

sw.bb.47:                                         ; preds = %while.body
  store i32 40, i32* %token, align 4
  br label %sw.epilog.49

sw.default.48:                                    ; preds = %while.body
  br label %sw.epilog.49

sw.epilog.49:                                     ; preds = %sw.default.48, %sw.bb.47, %sw.epilog, %sw.bb
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %40 = load %struct._GimpSessionInfoDockable*, %struct._GimpSessionInfoDockable** %info, align 8
  %41 = load %struct._GimpSessionInfoDockable**, %struct._GimpSessionInfoDockable*** %dockable.addr, align 8
  store %struct._GimpSessionInfoDockable* %40, %struct._GimpSessionInfoDockable** %41, align 8
  %42 = load %struct._GEnumClass*, %struct._GEnumClass** %enum_class, align 8
  %43 = bitcast %struct._GEnumClass* %42 to i8*
  call void @g_type_class_unref(i8* %43)
  %44 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %45 = load i32, i32* %scope.addr, align 4
  call void @g_scanner_scope_remove_symbol(%struct._GScanner* %44, i32 %45, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0))
  %46 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %47 = load i32, i32* %scope.addr, align 4
  call void @g_scanner_scope_remove_symbol(%struct._GScanner* %46, i32 %47, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i32 0, i32 0))
  %48 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %49 = load i32, i32* %scope.addr, align 4
  call void @g_scanner_scope_remove_symbol(%struct._GScanner* %48, i32 %49, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i32 0, i32 0))
  %50 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %51 = load i32, i32* %scope.addr, align 4
  call void @g_scanner_scope_remove_symbol(%struct._GScanner* %50, i32 %51, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i32 0, i32 0))
  %52 = load i32, i32* %token, align 4
  store i32 %52, i32* %retval
  br label %return

error:                                            ; preds = %sw.default, %if.then.45, %if.then.39, %if.then.21, %if.then.10
  %53 = load %struct._GimpSessionInfoDockable**, %struct._GimpSessionInfoDockable*** %dockable.addr, align 8
  store %struct._GimpSessionInfoDockable* null, %struct._GimpSessionInfoDockable** %53, align 8
  %54 = load %struct._GimpSessionInfoDockable*, %struct._GimpSessionInfoDockable** %info, align 8
  call void @gimp_session_info_dockable_free(%struct._GimpSessionInfoDockable* %54)
  %55 = load %struct._GEnumClass*, %struct._GEnumClass** %enum_class, align 8
  %56 = bitcast %struct._GEnumClass* %55 to i8*
  call void @g_type_class_unref(i8* %56)
  %57 = load i32, i32* %token, align 4
  store i32 %57, i32* %retval
  br label %return

return:                                           ; preds = %error, %while.end, %if.else.4, %if.else
  %58 = load i32, i32* %retval
  ret i32 %58
}

declare void @g_scanner_scope_add_symbol(%struct._GScanner*, i32, i8*, i8*) #1

declare i32 @gimp_scanner_parse_string(%struct._GScanner*, i8**) #1

declare i32 @g_scanner_peek_next_token(%struct._GScanner*) #1

declare i32 @g_scanner_get_next_token(%struct._GScanner*) #1

declare %struct._GEnumValue* @g_enum_get_value_by_nick(%struct._GEnumClass*, i8*) #1

declare %struct._GEnumValue* @g_enum_get_value_by_name(%struct._GEnumClass*, i8*) #1

declare i32 @gimp_scanner_parse_int(%struct._GScanner*, i32*) #1

declare i32 @gimp_session_info_aux_deserialize(%struct._GScanner*, %struct._GList**) #1

declare void @g_scanner_scope_remove_symbol(%struct._GScanner*, i32, i8*) #1

; Function Attrs: nounwind uwtable
define %struct._GimpSessionInfoDockable* @gimp_session_info_dockable_from_widget(%struct._GimpDockable* %dockable) #0 {
entry:
  %retval = alloca %struct._GimpSessionInfoDockable*, align 8
  %dockable.addr = alloca %struct._GimpDockable*, align 8
  %info = alloca %struct._GimpSessionInfoDockable*, align 8
  %entry1 = alloca %struct._GimpDialogFactoryEntry*, align 8
  %view = alloca %struct._GimpContainerView*, align 8
  %view_size = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst40 = alloca %struct._GTypeInstance*, align 8
  %__t42 = alloca i64, align 8
  %__r45 = alloca i32, align 4
  %tmp60 = alloca i32, align 4
  store %struct._GimpDockable* %dockable, %struct._GimpDockable** %dockable.addr, align 8
  store i32 -1, i32* %view_size, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpDockable*, %struct._GimpDockable** %dockable.addr, align 8
  %1 = bitcast %struct._GimpDockable* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_dockable_get_type() #4
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
  %call6 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #5
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @__func__.gimp_session_info_dockable_from_widget, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.12, i32 0, i32 0))
  store %struct._GimpSessionInfoDockable* null, %struct._GimpSessionInfoDockable** %retval
  br label %return

if.end.11:                                        ; preds = %if.then.9
  br label %do.end

do.end:                                           ; preds = %if.end.11
  %13 = load %struct._GimpDockable*, %struct._GimpDockable** %dockable.addr, align 8
  %14 = bitcast %struct._GimpDockable* %13 to %struct._GTypeInstance*
  %call12 = call i64 @gtk_widget_get_type() #4
  %call13 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 %call12)
  %15 = bitcast %struct._GTypeInstance* %call13 to %struct._GtkWidget*
  %call14 = call %struct._GimpDialogFactory* @gimp_dialog_factory_from_widget(%struct._GtkWidget* %15, %struct._GimpDialogFactoryEntry** %entry1)
  br label %do.body.15

do.body.15:                                       ; preds = %do.end
  %16 = load %struct._GimpDialogFactoryEntry*, %struct._GimpDialogFactoryEntry** %entry1, align 8
  %cmp16 = icmp ne %struct._GimpDialogFactoryEntry* %16, null
  br i1 %cmp16, label %if.then.17, label %if.else.18

if.then.17:                                       ; preds = %do.body.15
  br label %if.end.19

if.else.18:                                       ; preds = %do.body.15
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @__func__.gimp_session_info_dockable_from_widget, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i32 0, i32 0))
  store %struct._GimpSessionInfoDockable* null, %struct._GimpSessionInfoDockable** %retval
  br label %return

if.end.19:                                        ; preds = %if.then.17
  br label %do.end.20

do.end.20:                                        ; preds = %if.end.19
  %call21 = call %struct._GimpSessionInfoDockable* @gimp_session_info_dockable_new()
  store %struct._GimpSessionInfoDockable* %call21, %struct._GimpSessionInfoDockable** %info, align 8
  %17 = load %struct._GimpDockable*, %struct._GimpDockable** %dockable.addr, align 8
  %call22 = call i32 @gimp_dockable_get_locked(%struct._GimpDockable* %17)
  %18 = load %struct._GimpSessionInfoDockable*, %struct._GimpSessionInfoDockable** %info, align 8
  %locked = getelementptr inbounds %struct._GimpSessionInfoDockable, %struct._GimpSessionInfoDockable* %18, i32 0, i32 1
  store i32 %call22, i32* %locked, align 4
  %19 = load %struct._GimpDialogFactoryEntry*, %struct._GimpDialogFactoryEntry** %entry1, align 8
  %identifier = getelementptr inbounds %struct._GimpDialogFactoryEntry, %struct._GimpDialogFactoryEntry* %19, i32 0, i32 0
  %20 = load i8*, i8** %identifier, align 8
  %call23 = call noalias i8* @g_strdup(i8* %20)
  %21 = load %struct._GimpSessionInfoDockable*, %struct._GimpSessionInfoDockable** %info, align 8
  %identifier24 = getelementptr inbounds %struct._GimpSessionInfoDockable, %struct._GimpSessionInfoDockable* %21, i32 0, i32 0
  store i8* %call23, i8** %identifier24, align 8
  %22 = load %struct._GimpDockable*, %struct._GimpDockable** %dockable.addr, align 8
  %call25 = call i32 @gimp_dockable_get_tab_style(%struct._GimpDockable* %22)
  %23 = load %struct._GimpSessionInfoDockable*, %struct._GimpSessionInfoDockable** %info, align 8
  %tab_style = getelementptr inbounds %struct._GimpSessionInfoDockable, %struct._GimpSessionInfoDockable* %23, i32 0, i32 2
  store i32 %call25, i32* %tab_style, align 4
  %24 = load %struct._GimpSessionInfoDockable*, %struct._GimpSessionInfoDockable** %info, align 8
  %view_size26 = getelementptr inbounds %struct._GimpSessionInfoDockable, %struct._GimpSessionInfoDockable* %24, i32 0, i32 3
  store i32 -1, i32* %view_size26, align 4
  %25 = load %struct._GimpDockable*, %struct._GimpDockable** %dockable.addr, align 8
  %call27 = call %struct._GimpContainerView* @gimp_container_view_get_by_dockable(%struct._GimpDockable* %25)
  store %struct._GimpContainerView* %call27, %struct._GimpContainerView** %view, align 8
  %26 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view, align 8
  %tobool28 = icmp ne %struct._GimpContainerView* %26, null
  br i1 %tobool28, label %if.then.29, label %if.end.31

if.then.29:                                       ; preds = %do.end.20
  %27 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view, align 8
  %call30 = call i32 @gimp_container_view_get_view_size(%struct._GimpContainerView* %27, i32* null)
  store i32 %call30, i32* %view_size, align 4
  br label %if.end.31

if.end.31:                                        ; preds = %if.then.29, %do.end.20
  %28 = load i32, i32* %view_size, align 4
  %cmp32 = icmp sgt i32 %28, 0
  br i1 %cmp32, label %land.lhs.true.33, label %if.end.38

land.lhs.true.33:                                 ; preds = %if.end.31
  %29 = load i32, i32* %view_size, align 4
  %30 = load %struct._GimpDialogFactoryEntry*, %struct._GimpDialogFactoryEntry** %entry1, align 8
  %view_size34 = getelementptr inbounds %struct._GimpDialogFactoryEntry, %struct._GimpDialogFactoryEntry* %30, i32 0, i32 7
  %31 = load i32, i32* %view_size34, align 4
  %cmp35 = icmp ne i32 %29, %31
  br i1 %cmp35, label %if.then.36, label %if.end.38

if.then.36:                                       ; preds = %land.lhs.true.33
  %32 = load i32, i32* %view_size, align 4
  %33 = load %struct._GimpSessionInfoDockable*, %struct._GimpSessionInfoDockable** %info, align 8
  %view_size37 = getelementptr inbounds %struct._GimpSessionInfoDockable, %struct._GimpSessionInfoDockable* %33, i32 0, i32 3
  store i32 %32, i32* %view_size37, align 4
  br label %if.end.38

if.end.38:                                        ; preds = %if.then.36, %land.lhs.true.33, %if.end.31
  %34 = load %struct._GimpDockable*, %struct._GimpDockable** %dockable.addr, align 8
  %35 = bitcast %struct._GimpDockable* %34 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %35, %struct._GTypeInstance** %__inst40, align 8
  %call43 = call i64 @gimp_session_managed_interface_get_type() #4
  store i64 %call43, i64* %__t42, align 8
  %36 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst40, align 8
  %tobool46 = icmp ne %struct._GTypeInstance* %36, null
  br i1 %tobool46, label %if.else.48, label %if.then.47

if.then.47:                                       ; preds = %if.end.38
  store i32 0, i32* %__r45, align 4
  br label %if.end.59

if.else.48:                                       ; preds = %if.end.38
  %37 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst40, align 8
  %g_class49 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %37, i32 0, i32 0
  %38 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class49, align 8
  %tobool50 = icmp ne %struct._GTypeClass* %38, null
  br i1 %tobool50, label %land.lhs.true.51, label %if.else.56

land.lhs.true.51:                                 ; preds = %if.else.48
  %39 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst40, align 8
  %g_class52 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %39, i32 0, i32 0
  %40 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class52, align 8
  %g_type53 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %40, i32 0, i32 0
  %41 = load i64, i64* %g_type53, align 8
  %42 = load i64, i64* %__t42, align 8
  %cmp54 = icmp eq i64 %41, %42
  br i1 %cmp54, label %if.then.55, label %if.else.56

if.then.55:                                       ; preds = %land.lhs.true.51
  store i32 1, i32* %__r45, align 4
  br label %if.end.58

if.else.56:                                       ; preds = %land.lhs.true.51, %if.else.48
  %43 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst40, align 8
  %44 = load i64, i64* %__t42, align 8
  %call57 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %43, i64 %44) #5
  store i32 %call57, i32* %__r45, align 4
  br label %if.end.58

if.end.58:                                        ; preds = %if.else.56, %if.then.55
  br label %if.end.59

if.end.59:                                        ; preds = %if.end.58, %if.then.47
  %45 = load i32, i32* %__r45, align 4
  store i32 %45, i32* %tmp60
  %46 = load i32, i32* %tmp60
  %tobool61 = icmp ne i32 %46, 0
  br i1 %tobool61, label %if.then.62, label %if.end.66

if.then.62:                                       ; preds = %if.end.59
  %47 = load %struct._GimpDockable*, %struct._GimpDockable** %dockable.addr, align 8
  %48 = bitcast %struct._GimpDockable* %47 to %struct._GTypeInstance*
  %call63 = call i64 @gimp_session_managed_interface_get_type() #4
  %call64 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %48, i64 %call63)
  %49 = bitcast %struct._GTypeInstance* %call64 to %struct._GimpSessionManaged*
  %call65 = call %struct._GList* @gimp_session_managed_get_aux_info(%struct._GimpSessionManaged* %49)
  %50 = load %struct._GimpSessionInfoDockable*, %struct._GimpSessionInfoDockable** %info, align 8
  %aux_info = getelementptr inbounds %struct._GimpSessionInfoDockable, %struct._GimpSessionInfoDockable* %50, i32 0, i32 4
  store %struct._GList* %call65, %struct._GList** %aux_info, align 8
  br label %if.end.66

if.end.66:                                        ; preds = %if.then.62, %if.end.59
  %51 = load %struct._GimpSessionInfoDockable*, %struct._GimpSessionInfoDockable** %info, align 8
  store %struct._GimpSessionInfoDockable* %51, %struct._GimpSessionInfoDockable** %retval
  br label %return

return:                                           ; preds = %if.end.66, %if.else.18, %if.else.10
  %52 = load %struct._GimpSessionInfoDockable*, %struct._GimpSessionInfoDockable** %retval
  ret %struct._GimpSessionInfoDockable* %52
}

; Function Attrs: nounwind readnone
declare i64 @gimp_dockable_get_type() #2

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #3

declare %struct._GimpDialogFactory* @gimp_dialog_factory_from_widget(%struct._GtkWidget*, %struct._GimpDialogFactoryEntry**) #1

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_widget_get_type() #2

declare i32 @gimp_dockable_get_locked(%struct._GimpDockable*) #1

declare noalias i8* @g_strdup(i8*) #1

declare i32 @gimp_dockable_get_tab_style(%struct._GimpDockable*) #1

declare %struct._GimpContainerView* @gimp_container_view_get_by_dockable(%struct._GimpDockable*) #1

declare i32 @gimp_container_view_get_view_size(%struct._GimpContainerView*, i32*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_session_managed_interface_get_type() #2

declare %struct._GList* @gimp_session_managed_get_aux_info(%struct._GimpSessionManaged*) #1

; Function Attrs: nounwind uwtable
define %struct._GimpDockable* @gimp_session_info_dockable_restore(%struct._GimpSessionInfoDockable* %info, %struct._GimpDock* %dock) #0 {
entry:
  %retval = alloca %struct._GimpDockable*, align 8
  %info.addr = alloca %struct._GimpSessionInfoDockable*, align 8
  %dock.addr = alloca %struct._GimpDock*, align 8
  %dockable = alloca %struct._GtkWidget*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpSessionInfoDockable* %info, %struct._GimpSessionInfoDockable** %info.addr, align 8
  store %struct._GimpDock* %dock, %struct._GimpDock** %dock.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpSessionInfoDockable*, %struct._GimpSessionInfoDockable** %info.addr, align 8
  %cmp = icmp ne %struct._GimpSessionInfoDockable* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__func__.gimp_session_info_dockable_restore, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0))
  store %struct._GimpDockable* null, %struct._GimpDockable** %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %do.body.1

do.body.1:                                        ; preds = %do.end
  %1 = load %struct._GimpDock*, %struct._GimpDock** %dock.addr, align 8
  %2 = bitcast %struct._GimpDock* %1 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %2, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_dock_get_type() #4
  store i64 %call, i64* %__t, align 8
  %3 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool = icmp ne %struct._GTypeInstance* %3, null
  br i1 %tobool, label %if.else.3, label %if.then.2

if.then.2:                                        ; preds = %do.body.1
  store i32 0, i32* %__r, align 4
  br label %if.end.11

if.else.3:                                        ; preds = %do.body.1
  %4 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %4, i32 0, i32 0
  %5 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool4 = icmp ne %struct._GTypeClass* %5, null
  br i1 %tobool4, label %land.lhs.true, label %if.else.8

land.lhs.true:                                    ; preds = %if.else.3
  %6 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class5 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %6, i32 0, i32 0
  %7 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class5, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %7, i32 0, i32 0
  %8 = load i64, i64* %g_type, align 8
  %9 = load i64, i64* %__t, align 8
  %cmp6 = icmp eq i64 %8, %9
  br i1 %cmp6, label %if.then.7, label %if.else.8

if.then.7:                                        ; preds = %land.lhs.true
  store i32 1, i32* %__r, align 4
  br label %if.end.10

if.else.8:                                        ; preds = %land.lhs.true, %if.else.3
  %10 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %11 = load i64, i64* %__t, align 8
  %call9 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %10, i64 %11) #5
  store i32 %call9, i32* %__r, align 4
  br label %if.end.10

if.end.10:                                        ; preds = %if.else.8, %if.then.7
  br label %if.end.11

if.end.11:                                        ; preds = %if.end.10, %if.then.2
  %12 = load i32, i32* %__r, align 4
  store i32 %12, i32* %tmp
  %13 = load i32, i32* %tmp
  %tobool12 = icmp ne i32 %13, 0
  br i1 %tobool12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %if.end.11
  br label %if.end.15

if.else.14:                                       ; preds = %if.end.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__func__.gimp_session_info_dockable_restore, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i32 0, i32 0))
  store %struct._GimpDockable* null, %struct._GimpDockable** %retval
  br label %return

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  %14 = load %struct._GimpSessionInfoDockable*, %struct._GimpSessionInfoDockable** %info.addr, align 8
  %view_size = getelementptr inbounds %struct._GimpSessionInfoDockable, %struct._GimpSessionInfoDockable* %14, i32 0, i32 3
  %15 = load i32, i32* %view_size, align 4
  %cmp17 = icmp slt i32 %15, 12
  br i1 %cmp17, label %if.then.20, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.end.16
  %16 = load %struct._GimpSessionInfoDockable*, %struct._GimpSessionInfoDockable** %info.addr, align 8
  %view_size18 = getelementptr inbounds %struct._GimpSessionInfoDockable, %struct._GimpSessionInfoDockable* %16, i32 0, i32 3
  %17 = load i32, i32* %view_size18, align 4
  %cmp19 = icmp sgt i32 %17, 192
  br i1 %cmp19, label %if.then.20, label %if.end.22

if.then.20:                                       ; preds = %lor.lhs.false, %do.end.16
  %18 = load %struct._GimpSessionInfoDockable*, %struct._GimpSessionInfoDockable** %info.addr, align 8
  %view_size21 = getelementptr inbounds %struct._GimpSessionInfoDockable, %struct._GimpSessionInfoDockable* %18, i32 0, i32 3
  store i32 -1, i32* %view_size21, align 4
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.20, %lor.lhs.false
  %19 = load %struct._GimpDock*, %struct._GimpDock** %dock.addr, align 8
  %call23 = call %struct._GimpDialogFactory* @gimp_dock_get_dialog_factory(%struct._GimpDock* %19)
  %20 = load %struct._GimpDock*, %struct._GimpDock** %dock.addr, align 8
  %21 = load %struct._GimpSessionInfoDockable*, %struct._GimpSessionInfoDockable** %info.addr, align 8
  %identifier = getelementptr inbounds %struct._GimpSessionInfoDockable, %struct._GimpSessionInfoDockable* %21, i32 0, i32 0
  %22 = load i8*, i8** %identifier, align 8
  %23 = load %struct._GimpSessionInfoDockable*, %struct._GimpSessionInfoDockable** %info.addr, align 8
  %view_size24 = getelementptr inbounds %struct._GimpSessionInfoDockable, %struct._GimpSessionInfoDockable* %23, i32 0, i32 3
  %24 = load i32, i32* %view_size24, align 4
  %call25 = call %struct._GtkWidget* @gimp_dialog_factory_dockable_new(%struct._GimpDialogFactory* %call23, %struct._GimpDock* %20, i8* %22, i32 %24)
  store %struct._GtkWidget* %call25, %struct._GtkWidget** %dockable, align 8
  %25 = load %struct._GtkWidget*, %struct._GtkWidget** %dockable, align 8
  %tobool26 = icmp ne %struct._GtkWidget* %25, null
  br i1 %tobool26, label %if.then.27, label %if.end.44

if.then.27:                                       ; preds = %if.end.22
  %26 = load %struct._GtkWidget*, %struct._GtkWidget** %dockable, align 8
  %27 = bitcast %struct._GtkWidget* %26 to %struct._GTypeInstance*
  %call28 = call i64 @gimp_dockable_get_type() #4
  %call29 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %27, i64 %call28)
  %28 = bitcast %struct._GTypeInstance* %call29 to %struct._GimpDockable*
  %call30 = call %struct._GimpDockbook* @gimp_dockable_get_dockbook(%struct._GimpDockable* %28)
  %tobool31 = icmp ne %struct._GimpDockbook* %call30, null
  br i1 %tobool31, label %if.then.32, label %if.end.33

if.then.32:                                       ; preds = %if.then.27
  store %struct._GimpDockable* null, %struct._GimpDockable** %retval
  br label %return

if.end.33:                                        ; preds = %if.then.27
  %29 = load %struct._GtkWidget*, %struct._GtkWidget** %dockable, align 8
  %30 = bitcast %struct._GtkWidget* %29 to %struct._GTypeInstance*
  %call34 = call i64 @gimp_dockable_get_type() #4
  %call35 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %30, i64 %call34)
  %31 = bitcast %struct._GTypeInstance* %call35 to %struct._GimpDockable*
  %32 = load %struct._GimpSessionInfoDockable*, %struct._GimpSessionInfoDockable** %info.addr, align 8
  %locked = getelementptr inbounds %struct._GimpSessionInfoDockable, %struct._GimpSessionInfoDockable* %32, i32 0, i32 1
  %33 = load i32, i32* %locked, align 4
  call void @gimp_dockable_set_locked(%struct._GimpDockable* %31, i32 %33)
  %34 = load %struct._GtkWidget*, %struct._GtkWidget** %dockable, align 8
  %35 = bitcast %struct._GtkWidget* %34 to %struct._GTypeInstance*
  %call36 = call i64 @gimp_dockable_get_type() #4
  %call37 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %35, i64 %call36)
  %36 = bitcast %struct._GTypeInstance* %call37 to %struct._GimpDockable*
  %37 = load %struct._GimpSessionInfoDockable*, %struct._GimpSessionInfoDockable** %info.addr, align 8
  %tab_style = getelementptr inbounds %struct._GimpSessionInfoDockable, %struct._GimpSessionInfoDockable* %37, i32 0, i32 2
  %38 = load i32, i32* %tab_style, align 4
  call void @gimp_dockable_set_tab_style(%struct._GimpDockable* %36, i32 %38)
  %39 = load %struct._GimpSessionInfoDockable*, %struct._GimpSessionInfoDockable** %info.addr, align 8
  %aux_info = getelementptr inbounds %struct._GimpSessionInfoDockable, %struct._GimpSessionInfoDockable* %39, i32 0, i32 4
  %40 = load %struct._GList*, %struct._GList** %aux_info, align 8
  %tobool38 = icmp ne %struct._GList* %40, null
  br i1 %tobool38, label %if.then.39, label %if.end.43

if.then.39:                                       ; preds = %if.end.33
  %41 = load %struct._GtkWidget*, %struct._GtkWidget** %dockable, align 8
  %42 = bitcast %struct._GtkWidget* %41 to %struct._GTypeInstance*
  %call40 = call i64 @gimp_session_managed_interface_get_type() #4
  %call41 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %42, i64 %call40)
  %43 = bitcast %struct._GTypeInstance* %call41 to %struct._GimpSessionManaged*
  %44 = load %struct._GimpSessionInfoDockable*, %struct._GimpSessionInfoDockable** %info.addr, align 8
  %aux_info42 = getelementptr inbounds %struct._GimpSessionInfoDockable, %struct._GimpSessionInfoDockable* %44, i32 0, i32 4
  %45 = load %struct._GList*, %struct._GList** %aux_info42, align 8
  call void @gimp_session_managed_set_aux_info(%struct._GimpSessionManaged* %43, %struct._GList* %45)
  br label %if.end.43

if.end.43:                                        ; preds = %if.then.39, %if.end.33
  br label %if.end.44

if.end.44:                                        ; preds = %if.end.43, %if.end.22
  %46 = load %struct._GtkWidget*, %struct._GtkWidget** %dockable, align 8
  %47 = bitcast %struct._GtkWidget* %46 to %struct._GTypeInstance*
  %call45 = call i64 @gimp_dockable_get_type() #4
  %call46 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %47, i64 %call45)
  %48 = bitcast %struct._GTypeInstance* %call46 to %struct._GimpDockable*
  store %struct._GimpDockable* %48, %struct._GimpDockable** %retval
  br label %return

return:                                           ; preds = %if.end.44, %if.then.32, %if.else.14, %if.else
  %49 = load %struct._GimpDockable*, %struct._GimpDockable** %retval
  ret %struct._GimpDockable* %49
}

; Function Attrs: nounwind readnone
declare i64 @gimp_dock_get_type() #2

declare %struct._GtkWidget* @gimp_dialog_factory_dockable_new(%struct._GimpDialogFactory*, %struct._GimpDock*, i8*, i32) #1

declare %struct._GimpDialogFactory* @gimp_dock_get_dialog_factory(%struct._GimpDock*) #1

declare %struct._GimpDockbook* @gimp_dockable_get_dockbook(%struct._GimpDockable*) #1

declare void @gimp_dockable_set_locked(%struct._GimpDockable*, i32) #1

declare void @gimp_dockable_set_tab_style(%struct._GimpDockable*, i32) #1

declare void @gimp_session_managed_set_aux_info(%struct._GimpSessionManaged*, %struct._GList*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone }
attributes #5 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
