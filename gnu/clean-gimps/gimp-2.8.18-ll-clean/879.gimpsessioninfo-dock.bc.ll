; ModuleID = './app/widgets/gimpsessioninfo-dock.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GimpSessionInfoDock = type { i8*, i32, i32, %struct._GList* }
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct._GimpSessionInfoBook = type { i32, i32, %struct._GList* }
%struct._GimpConfigWriter = type opaque
%struct._GScanner = type { i8*, i32, i32, i8*, %struct._GData*, %struct._GScannerConfig*, i32, %union._GTokenValue, i32, i32, i32, %union._GTokenValue, i32, i32, %struct._GHashTable*, i32, i8*, i8*, i8*, i32, void (%struct._GScanner*, i8*, i32)* }
%struct._GData = type opaque
%struct._GScannerConfig = type { i8*, i8*, i8*, i8*, i24, i32 }
%union._GTokenValue = type { i8* }
%struct._GHashTable = type opaque
%struct._GimpDock = type { %struct._GtkBox, %struct._GimpDockPrivate* }
%struct._GtkBox = type { %struct._GtkContainer, %struct._GList*, i16, i8 }
%struct._GtkContainer = type { %struct._GtkWidget, %struct._GtkWidget*, i24 }
%struct._GtkWidget = type { %struct._GtkObject, i16, i8, i8, i8*, %struct._GtkStyle*, %struct._GtkRequisition, %struct._GdkRectangle, %struct._GdkDrawable*, %struct._GtkWidget* }
%struct._GtkObject = type { %struct._GObject, i32 }
%struct._GObject = type { %struct._GTypeInstance, i32, %struct._GData* }
%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
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
%struct._GimpDockPrivate = type opaque
%struct._GtkPaned = type { %struct._GtkContainer, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GdkDrawable*, %struct._GdkGC*, i32, %struct._GdkRectangle, i32, i32, i32, i32, i16, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkPanedPrivate*, i32, i32 }
%struct._GtkPanedPrivate = type opaque
%struct._GimpDockbook = type { %struct._GtkNotebook, %struct._GimpDockbookPrivate* }
%struct._GtkNotebook = type { %struct._GtkContainer, i8*, %struct._GList*, %struct._GList*, %struct._GList*, %struct._GtkWidget*, %struct._GdkDrawable*, i32, i16, i16, i24 }
%struct._GimpDockbookPrivate = type opaque
%struct._GimpDockContainer = type opaque
%struct._GimpDialogFactory = type { %struct._GimpObject, %struct._GimpDialogFactoryPrivate* }
%struct._GimpObject = type { %struct._GObject, %struct._GimpObjectPrivate* }
%struct._GimpObjectPrivate = type opaque
%struct._GimpDialogFactoryPrivate = type opaque
%struct._GdkScreen = type { %struct._GObject, i8, [32 x %struct._GdkGC*], [32 x %struct._GdkGC*], [32 x %struct._GdkGC*], %struct._cairo_font_options*, double }
%struct._cairo_font_options = type opaque
%struct._GimpUIManager = type opaque

@.str = private unnamed_addr constant [13 x i8] c"Gimp-Widgets\00", align 1
@__func__.gimp_session_info_dock_free = private unnamed_addr constant [28 x i8] c"gimp_session_info_dock_free\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"dock_info != NULL\00", align 1
@__func__.gimp_session_info_dock_serialize = private unnamed_addr constant [33 x i8] c"gimp_session_info_dock_serialize\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"writer != NULL\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"left\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"right\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"side\00", align 1
@__func__.gimp_session_info_dock_deserialize = private unnamed_addr constant [35 x i8] c"gimp_session_info_dock_deserialize\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"scanner != NULL\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"position\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"book\00", align 1
@__func__.gimp_session_info_dock_from_widget = private unnamed_addr constant [35 x i8] c"gimp_session_info_dock_from_widget\00", align 1
@.str.9 = private unnamed_addr constant [20 x i8] c"GIMP_IS_DOCK (dock)\00", align 1
@.str.10 = private unnamed_addr constant [13 x i8] c"gimp-toolbox\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"gimp-dock\00", align 1
@__func__.gimp_session_info_dock_restore = private unnamed_addr constant [31 x i8] c"gimp_session_info_dock_restore\00", align 1
@.str.12 = private unnamed_addr constant [33 x i8] c"GIMP_IS_DIALOG_FACTORY (factory)\00", align 1
@.str.13 = private unnamed_addr constant [23 x i8] c"GDK_IS_SCREEN (screen)\00", align 1

; Function Attrs: nounwind uwtable
define %struct._GimpSessionInfoDock* @gimp_session_info_dock_new(i8* %dock_type) #0 {
entry:
  %dock_type.addr = alloca i8*, align 8
  %dock_info = alloca %struct._GimpSessionInfoDock*, align 8
  store i8* %dock_type, i8** %dock_type.addr, align 8
  store %struct._GimpSessionInfoDock* null, %struct._GimpSessionInfoDock** %dock_info, align 8
  %call = call noalias i8* @g_slice_alloc0(i64 24)
  %0 = bitcast i8* %call to %struct._GimpSessionInfoDock*
  store %struct._GimpSessionInfoDock* %0, %struct._GimpSessionInfoDock** %dock_info, align 8
  %1 = load i8*, i8** %dock_type.addr, align 8
  %call1 = call noalias i8* @g_strdup(i8* %1)
  %2 = load %struct._GimpSessionInfoDock*, %struct._GimpSessionInfoDock** %dock_info, align 8
  %dock_type2 = getelementptr inbounds %struct._GimpSessionInfoDock, %struct._GimpSessionInfoDock* %2, i32 0, i32 0
  store i8* %call1, i8** %dock_type2, align 8
  %3 = load %struct._GimpSessionInfoDock*, %struct._GimpSessionInfoDock** %dock_info, align 8
  %side = getelementptr inbounds %struct._GimpSessionInfoDock, %struct._GimpSessionInfoDock* %3, i32 0, i32 1
  store i32 -1, i32* %side, align 4
  %4 = load %struct._GimpSessionInfoDock*, %struct._GimpSessionInfoDock** %dock_info, align 8
  ret %struct._GimpSessionInfoDock* %4
}

declare noalias i8* @g_slice_alloc0(i64) #1

declare noalias i8* @g_strdup(i8*) #1

; Function Attrs: nounwind uwtable
define void @gimp_session_info_dock_free(%struct._GimpSessionInfoDock* %dock_info) #0 {
entry:
  %dock_info.addr = alloca %struct._GimpSessionInfoDock*, align 8
  store %struct._GimpSessionInfoDock* %dock_info, %struct._GimpSessionInfoDock** %dock_info.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpSessionInfoDock*, %struct._GimpSessionInfoDock** %dock_info.addr, align 8
  %cmp = icmp ne %struct._GimpSessionInfoDock* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.gimp_session_info_dock_free, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i32 0, i32 0))
  br label %do.end.11

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %1 = load %struct._GimpSessionInfoDock*, %struct._GimpSessionInfoDock** %dock_info.addr, align 8
  %dock_type = getelementptr inbounds %struct._GimpSessionInfoDock, %struct._GimpSessionInfoDock* %1, i32 0, i32 0
  %2 = load i8*, i8** %dock_type, align 8
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %if.then.1, label %if.end.4

if.then.1:                                        ; preds = %do.end
  %3 = load %struct._GimpSessionInfoDock*, %struct._GimpSessionInfoDock** %dock_info.addr, align 8
  %dock_type2 = getelementptr inbounds %struct._GimpSessionInfoDock, %struct._GimpSessionInfoDock* %3, i32 0, i32 0
  %4 = load i8*, i8** %dock_type2, align 8
  call void @g_free(i8* %4)
  %5 = load %struct._GimpSessionInfoDock*, %struct._GimpSessionInfoDock** %dock_info.addr, align 8
  %dock_type3 = getelementptr inbounds %struct._GimpSessionInfoDock, %struct._GimpSessionInfoDock* %5, i32 0, i32 0
  store i8* null, i8** %dock_type3, align 8
  br label %if.end.4

if.end.4:                                         ; preds = %if.then.1, %do.end
  %6 = load %struct._GimpSessionInfoDock*, %struct._GimpSessionInfoDock** %dock_info.addr, align 8
  %books = getelementptr inbounds %struct._GimpSessionInfoDock, %struct._GimpSessionInfoDock* %6, i32 0, i32 3
  %7 = load %struct._GList*, %struct._GList** %books, align 8
  %tobool5 = icmp ne %struct._GList* %7, null
  br i1 %tobool5, label %if.then.6, label %if.end.9

if.then.6:                                        ; preds = %if.end.4
  %8 = load %struct._GimpSessionInfoDock*, %struct._GimpSessionInfoDock** %dock_info.addr, align 8
  %books7 = getelementptr inbounds %struct._GimpSessionInfoDock, %struct._GimpSessionInfoDock* %8, i32 0, i32 3
  %9 = load %struct._GList*, %struct._GList** %books7, align 8
  call void @g_list_free_full(%struct._GList* %9, void (i8*)* bitcast (void (%struct._GimpSessionInfoBook*)* @gimp_session_info_book_free to void (i8*)*))
  %10 = load %struct._GimpSessionInfoDock*, %struct._GimpSessionInfoDock** %dock_info.addr, align 8
  %books8 = getelementptr inbounds %struct._GimpSessionInfoDock, %struct._GimpSessionInfoDock* %10, i32 0, i32 3
  store %struct._GList* null, %struct._GList** %books8, align 8
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.6, %if.end.4
  br label %do.body.10

do.body.10:                                       ; preds = %if.end.9
  %11 = load %struct._GimpSessionInfoDock*, %struct._GimpSessionInfoDock** %dock_info.addr, align 8
  %12 = bitcast %struct._GimpSessionInfoDock* %11 to i8*
  call void @g_slice_free1(i64 24, i8* %12)
  br label %do.end.11

do.end.11:                                        ; preds = %if.else, %do.body.10
  ret void
}

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

declare void @g_free(i8*) #1

declare void @g_list_free_full(%struct._GList*, void (i8*)*) #1

declare void @gimp_session_info_book_free(%struct._GimpSessionInfoBook*) #1

declare void @g_slice_free1(i64, i8*) #1

; Function Attrs: nounwind uwtable
define void @gimp_session_info_dock_serialize(%struct._GimpConfigWriter* %writer, %struct._GimpSessionInfoDock* %dock_info) #0 {
entry:
  %writer.addr = alloca %struct._GimpConfigWriter*, align 8
  %dock_info.addr = alloca %struct._GimpSessionInfoDock*, align 8
  %list = alloca %struct._GList*, align 8
  %side_text = alloca i8*, align 8
  store %struct._GimpConfigWriter* %writer, %struct._GimpConfigWriter** %writer.addr, align 8
  store %struct._GimpSessionInfoDock* %dock_info, %struct._GimpSessionInfoDock** %dock_info.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer.addr, align 8
  %cmp = icmp ne %struct._GimpConfigWriter* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__func__.gimp_session_info_dock_serialize, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0))
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %do.body.1

do.body.1:                                        ; preds = %do.end
  %1 = load %struct._GimpSessionInfoDock*, %struct._GimpSessionInfoDock** %dock_info.addr, align 8
  %cmp2 = icmp ne %struct._GimpSessionInfoDock* %1, null
  br i1 %cmp2, label %if.then.3, label %if.else.4

if.then.3:                                        ; preds = %do.body.1
  br label %if.end.5

if.else.4:                                        ; preds = %do.body.1
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__func__.gimp_session_info_dock_serialize, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i32 0, i32 0))
  br label %return

if.end.5:                                         ; preds = %if.then.3
  br label %do.end.6

do.end.6:                                         ; preds = %if.end.5
  %2 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer.addr, align 8
  %3 = load %struct._GimpSessionInfoDock*, %struct._GimpSessionInfoDock** %dock_info.addr, align 8
  %dock_type = getelementptr inbounds %struct._GimpSessionInfoDock, %struct._GimpSessionInfoDock* %3, i32 0, i32 0
  %4 = load i8*, i8** %dock_type, align 8
  call void @gimp_config_writer_open(%struct._GimpConfigWriter* %2, i8* %4)
  %5 = load %struct._GimpSessionInfoDock*, %struct._GimpSessionInfoDock** %dock_info.addr, align 8
  %side = getelementptr inbounds %struct._GimpSessionInfoDock, %struct._GimpSessionInfoDock* %5, i32 0, i32 1
  %6 = load i32, i32* %side, align 4
  %cmp7 = icmp ne i32 %6, -1
  br i1 %cmp7, label %if.then.8, label %if.end.11

if.then.8:                                        ; preds = %do.end.6
  %7 = load %struct._GimpSessionInfoDock*, %struct._GimpSessionInfoDock** %dock_info.addr, align 8
  %side9 = getelementptr inbounds %struct._GimpSessionInfoDock, %struct._GimpSessionInfoDock* %7, i32 0, i32 1
  %8 = load i32, i32* %side9, align 4
  %cmp10 = icmp eq i32 %8, 0
  %cond = select i1 %cmp10, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i32 0, i32 0)
  store i8* %cond, i8** %side_text, align 8
  %9 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer.addr, align 8
  call void @gimp_config_writer_open(%struct._GimpConfigWriter* %9, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0))
  %10 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer.addr, align 8
  %11 = load i8*, i8** %side_text, align 8
  %12 = load i8*, i8** %side_text, align 8
  %call = call i64 @strlen(i8* %12) #4
  %conv = trunc i64 %call to i32
  call void @gimp_config_writer_print(%struct._GimpConfigWriter* %10, i8* %11, i32 %conv)
  %13 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer.addr, align 8
  call void @gimp_config_writer_close(%struct._GimpConfigWriter* %13)
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.8, %do.end.6
  %14 = load %struct._GimpSessionInfoDock*, %struct._GimpSessionInfoDock** %dock_info.addr, align 8
  %position = getelementptr inbounds %struct._GimpSessionInfoDock, %struct._GimpSessionInfoDock* %14, i32 0, i32 2
  %15 = load i32, i32* %position, align 4
  %cmp12 = icmp ne i32 %15, 0
  br i1 %cmp12, label %if.then.14, label %if.end.16

if.then.14:                                       ; preds = %if.end.11
  %16 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer.addr, align 8
  %17 = load %struct._GimpSessionInfoDock*, %struct._GimpSessionInfoDock** %dock_info.addr, align 8
  %position15 = getelementptr inbounds %struct._GimpSessionInfoDock, %struct._GimpSessionInfoDock* %17, i32 0, i32 2
  %18 = load i32, i32* %position15, align 4
  call void @gimp_session_write_position(%struct._GimpConfigWriter* %16, i32 %18)
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.14, %if.end.11
  %19 = load %struct._GimpSessionInfoDock*, %struct._GimpSessionInfoDock** %dock_info.addr, align 8
  %books = getelementptr inbounds %struct._GimpSessionInfoDock, %struct._GimpSessionInfoDock* %19, i32 0, i32 3
  %20 = load %struct._GList*, %struct._GList** %books, align 8
  store %struct._GList* %20, %struct._GList** %list, align 8
  br label %for.cond

for.cond:                                         ; preds = %cond.end, %if.end.16
  %21 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool = icmp ne %struct._GList* %21, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %22 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer.addr, align 8
  %23 = load %struct._GList*, %struct._GList** %list, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %23, i32 0, i32 0
  %24 = load i8*, i8** %data, align 8
  %25 = bitcast i8* %24 to %struct._GimpSessionInfoBook*
  call void @gimp_session_info_book_serialize(%struct._GimpConfigWriter* %22, %struct._GimpSessionInfoBook* %25)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %26 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool17 = icmp ne %struct._GList* %26, null
  br i1 %tobool17, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.inc
  %27 = load %struct._GList*, %struct._GList** %list, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %27, i32 0, i32 1
  %28 = load %struct._GList*, %struct._GList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.inc
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond18 = phi %struct._GList* [ %28, %cond.true ], [ null, %cond.false ]
  store %struct._GList* %cond18, %struct._GList** %list, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %29 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer.addr, align 8
  call void @gimp_config_writer_close(%struct._GimpConfigWriter* %29)
  br label %return

return:                                           ; preds = %for.end, %if.else.4, %if.else
  ret void
}

declare void @gimp_config_writer_open(%struct._GimpConfigWriter*, i8*) #1

declare void @gimp_config_writer_print(%struct._GimpConfigWriter*, i8*, i32) #1

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #2

declare void @gimp_config_writer_close(%struct._GimpConfigWriter*) #1

declare void @gimp_session_write_position(%struct._GimpConfigWriter*, i32) #1

declare void @gimp_session_info_book_serialize(%struct._GimpConfigWriter*, %struct._GimpSessionInfoBook*) #1

; Function Attrs: nounwind uwtable
define i32 @gimp_session_info_dock_deserialize(%struct._GScanner* %scanner, i32 %scope, %struct._GimpSessionInfoDock** %dock_info, i8* %dock_type) #0 {
entry:
  %retval = alloca i32, align 4
  %scanner.addr = alloca %struct._GScanner*, align 8
  %scope.addr = alloca i32, align 4
  %dock_info.addr = alloca %struct._GimpSessionInfoDock**, align 8
  %dock_type.addr = alloca i8*, align 8
  %token = alloca i32, align 4
  %book = alloca %struct._GimpSessionInfoBook*, align 8
  store %struct._GScanner* %scanner, %struct._GScanner** %scanner.addr, align 8
  store i32 %scope, i32* %scope.addr, align 4
  store %struct._GimpSessionInfoDock** %dock_info, %struct._GimpSessionInfoDock*** %dock_info.addr, align 8
  store i8* %dock_type, i8** %dock_type.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %cmp = icmp ne %struct._GScanner* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__func__.gimp_session_info_dock_deserialize, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i32 0, i32 0))
  store i32 40, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %do.body.1

do.body.1:                                        ; preds = %do.end
  %1 = load %struct._GimpSessionInfoDock**, %struct._GimpSessionInfoDock*** %dock_info.addr, align 8
  %cmp2 = icmp ne %struct._GimpSessionInfoDock** %1, null
  br i1 %cmp2, label %if.then.3, label %if.else.4

if.then.3:                                        ; preds = %do.body.1
  br label %if.end.5

if.else.4:                                        ; preds = %do.body.1
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__func__.gimp_session_info_dock_deserialize, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i32 0, i32 0))
  store i32 40, i32* %retval
  br label %return

if.end.5:                                         ; preds = %if.then.3
  br label %do.end.6

do.end.6:                                         ; preds = %if.end.5
  %2 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %3 = load i32, i32* %scope.addr, align 4
  call void @g_scanner_scope_add_symbol(%struct._GScanner* %2, i32 %3, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), i8* null)
  %4 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %5 = load i32, i32* %scope.addr, align 4
  call void @g_scanner_scope_add_symbol(%struct._GScanner* %4, i32 %5, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i32 0, i32 0), i8* inttoptr (i64 1 to i8*))
  %6 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %7 = load i32, i32* %scope.addr, align 4
  call void @g_scanner_scope_add_symbol(%struct._GScanner* %6, i32 %7, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i32 0, i32 0), i8* inttoptr (i64 2 to i8*))
  %8 = load i8*, i8** %dock_type.addr, align 8
  %call = call %struct._GimpSessionInfoDock* @gimp_session_info_dock_new(i8* %8)
  %9 = load %struct._GimpSessionInfoDock**, %struct._GimpSessionInfoDock*** %dock_info.addr, align 8
  store %struct._GimpSessionInfoDock* %call, %struct._GimpSessionInfoDock** %9, align 8
  store i32 40, i32* %token, align 4
  br label %while.cond

while.cond:                                       ; preds = %sw.epilog.45, %do.end.6
  %10 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %call7 = call i32 @g_scanner_peek_next_token(%struct._GScanner* %10)
  %11 = load i32, i32* %token, align 4
  %cmp8 = icmp eq i32 %call7, %11
  br i1 %cmp8, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %12 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %call9 = call i32 @g_scanner_get_next_token(%struct._GScanner* %12)
  store i32 %call9, i32* %token, align 4
  %13 = load i32, i32* %token, align 4
  switch i32 %13, label %sw.default.44 [
    i32 40, label %sw.bb
    i32 265, label %sw.bb.10
    i32 41, label %sw.bb.43
  ]

sw.bb:                                            ; preds = %while.body
  store i32 265, i32* %token, align 4
  br label %sw.epilog.45

sw.bb.10:                                         ; preds = %while.body
  %14 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %value = getelementptr inbounds %struct._GScanner, %struct._GScanner* %14, i32 0, i32 7
  %v_symbol = bitcast %union._GTokenValue* %value to i8**
  %15 = load i8*, i8** %v_symbol, align 8
  %16 = ptrtoint i8* %15 to i64
  %conv = trunc i64 %16 to i32
  switch i32 %conv, label %sw.default [
    i32 0, label %sw.bb.11
    i32 1, label %sw.bb.26
    i32 2, label %sw.bb.31
  ]

sw.bb.11:                                         ; preds = %sw.bb.10
  store i32 266, i32* %token, align 4
  %17 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %call12 = call i32 @g_scanner_peek_next_token(%struct._GScanner* %17)
  %18 = load i32, i32* %token, align 4
  %cmp13 = icmp ne i32 %call12, %18
  br i1 %cmp13, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %sw.bb.11
  br label %sw.epilog

if.end.16:                                        ; preds = %sw.bb.11
  %19 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %call17 = call i32 @g_scanner_get_next_token(%struct._GScanner* %19)
  %20 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %value18 = getelementptr inbounds %struct._GScanner, %struct._GScanner* %20, i32 0, i32 7
  %v_identifier = bitcast %union._GTokenValue* %value18 to i8**
  %21 = load i8*, i8** %v_identifier, align 8
  %call19 = call i32 @strcmp(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0), i8* %21) #4
  %cmp20 = icmp eq i32 %call19, 0
  br i1 %cmp20, label %if.then.22, label %if.else.23

if.then.22:                                       ; preds = %if.end.16
  %22 = load %struct._GimpSessionInfoDock**, %struct._GimpSessionInfoDock*** %dock_info.addr, align 8
  %23 = load %struct._GimpSessionInfoDock*, %struct._GimpSessionInfoDock** %22, align 8
  %side = getelementptr inbounds %struct._GimpSessionInfoDock, %struct._GimpSessionInfoDock* %23, i32 0, i32 1
  store i32 0, i32* %side, align 4
  br label %if.end.25

if.else.23:                                       ; preds = %if.end.16
  %24 = load %struct._GimpSessionInfoDock**, %struct._GimpSessionInfoDock*** %dock_info.addr, align 8
  %25 = load %struct._GimpSessionInfoDock*, %struct._GimpSessionInfoDock** %24, align 8
  %side24 = getelementptr inbounds %struct._GimpSessionInfoDock, %struct._GimpSessionInfoDock* %25, i32 0, i32 1
  store i32 2, i32* %side24, align 4
  br label %if.end.25

if.end.25:                                        ; preds = %if.else.23, %if.then.22
  br label %sw.epilog

sw.bb.26:                                         ; preds = %sw.bb.10
  store i32 261, i32* %token, align 4
  %26 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %27 = load %struct._GimpSessionInfoDock**, %struct._GimpSessionInfoDock*** %dock_info.addr, align 8
  %28 = load %struct._GimpSessionInfoDock*, %struct._GimpSessionInfoDock** %27, align 8
  %position = getelementptr inbounds %struct._GimpSessionInfoDock, %struct._GimpSessionInfoDock* %28, i32 0, i32 2
  %call27 = call i32 @gimp_scanner_parse_int(%struct._GScanner* %26, i32* %position)
  %tobool = icmp ne i32 %call27, 0
  br i1 %tobool, label %if.end.30, label %if.then.28

if.then.28:                                       ; preds = %sw.bb.26
  %29 = load %struct._GimpSessionInfoDock**, %struct._GimpSessionInfoDock*** %dock_info.addr, align 8
  %30 = load %struct._GimpSessionInfoDock*, %struct._GimpSessionInfoDock** %29, align 8
  %position29 = getelementptr inbounds %struct._GimpSessionInfoDock, %struct._GimpSessionInfoDock* %30, i32 0, i32 2
  store i32 0, i32* %position29, align 4
  br label %if.end.30

if.end.30:                                        ; preds = %if.then.28, %sw.bb.26
  br label %sw.epilog

sw.bb.31:                                         ; preds = %sw.bb.10
  %31 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %32 = load i32, i32* %scope.addr, align 4
  %add = add nsw i32 %32, 1
  %call32 = call i32 @g_scanner_set_scope(%struct._GScanner* %31, i32 %add)
  %33 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %34 = load i32, i32* %scope.addr, align 4
  %add33 = add nsw i32 %34, 1
  %call34 = call i32 @gimp_session_info_book_deserialize(%struct._GScanner* %33, i32 %add33, %struct._GimpSessionInfoBook** %book)
  store i32 %call34, i32* %token, align 4
  %35 = load i32, i32* %token, align 4
  %cmp35 = icmp eq i32 %35, 40
  br i1 %cmp35, label %if.then.37, label %if.else.41

if.then.37:                                       ; preds = %sw.bb.31
  %36 = load %struct._GimpSessionInfoDock**, %struct._GimpSessionInfoDock*** %dock_info.addr, align 8
  %37 = load %struct._GimpSessionInfoDock*, %struct._GimpSessionInfoDock** %36, align 8
  %books = getelementptr inbounds %struct._GimpSessionInfoDock, %struct._GimpSessionInfoDock* %37, i32 0, i32 3
  %38 = load %struct._GList*, %struct._GList** %books, align 8
  %39 = load %struct._GimpSessionInfoBook*, %struct._GimpSessionInfoBook** %book, align 8
  %40 = bitcast %struct._GimpSessionInfoBook* %39 to i8*
  %call38 = call %struct._GList* @g_list_append(%struct._GList* %38, i8* %40)
  %41 = load %struct._GimpSessionInfoDock**, %struct._GimpSessionInfoDock*** %dock_info.addr, align 8
  %42 = load %struct._GimpSessionInfoDock*, %struct._GimpSessionInfoDock** %41, align 8
  %books39 = getelementptr inbounds %struct._GimpSessionInfoDock, %struct._GimpSessionInfoDock* %42, i32 0, i32 3
  store %struct._GList* %call38, %struct._GList** %books39, align 8
  %43 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %44 = load i32, i32* %scope.addr, align 4
  %call40 = call i32 @g_scanner_set_scope(%struct._GScanner* %43, i32 %44)
  br label %if.end.42

if.else.41:                                       ; preds = %sw.bb.31
  %45 = load i32, i32* %token, align 4
  store i32 %45, i32* %retval
  br label %return

if.end.42:                                        ; preds = %if.then.37
  br label %sw.epilog

sw.default:                                       ; preds = %sw.bb.10
  %46 = load i32, i32* %token, align 4
  store i32 %46, i32* %retval
  br label %return

sw.epilog:                                        ; preds = %if.end.42, %if.end.30, %if.end.25, %if.then.15
  store i32 41, i32* %token, align 4
  br label %sw.epilog.45

sw.bb.43:                                         ; preds = %while.body
  store i32 40, i32* %token, align 4
  br label %sw.epilog.45

sw.default.44:                                    ; preds = %while.body
  br label %sw.epilog.45

sw.epilog.45:                                     ; preds = %sw.default.44, %sw.bb.43, %sw.epilog, %sw.bb
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %47 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %48 = load i32, i32* %scope.addr, align 4
  call void @g_scanner_scope_remove_symbol(%struct._GScanner* %47, i32 %48, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i32 0, i32 0))
  %49 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %50 = load i32, i32* %scope.addr, align 4
  call void @g_scanner_scope_remove_symbol(%struct._GScanner* %49, i32 %50, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i32 0, i32 0))
  %51 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %52 = load i32, i32* %scope.addr, align 4
  call void @g_scanner_scope_remove_symbol(%struct._GScanner* %51, i32 %52, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0))
  %53 = load i32, i32* %token, align 4
  store i32 %53, i32* %retval
  br label %return

return:                                           ; preds = %while.end, %sw.default, %if.else.41, %if.else.4, %if.else
  %54 = load i32, i32* %retval
  ret i32 %54
}

declare void @g_scanner_scope_add_symbol(%struct._GScanner*, i32, i8*, i8*) #1

declare i32 @g_scanner_peek_next_token(%struct._GScanner*) #1

declare i32 @g_scanner_get_next_token(%struct._GScanner*) #1

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #2

declare i32 @gimp_scanner_parse_int(%struct._GScanner*, i32*) #1

declare i32 @g_scanner_set_scope(%struct._GScanner*, i32) #1

declare i32 @gimp_session_info_book_deserialize(%struct._GScanner*, i32, %struct._GimpSessionInfoBook**) #1

declare %struct._GList* @g_list_append(%struct._GList*, i8*) #1

declare void @g_scanner_scope_remove_symbol(%struct._GScanner*, i32, i8*) #1

; Function Attrs: nounwind uwtable
define %struct._GimpSessionInfoDock* @gimp_session_info_dock_from_widget(%struct._GimpDock* %dock) #0 {
entry:
  %retval = alloca %struct._GimpSessionInfoDock*, align 8
  %dock.addr = alloca %struct._GimpDock*, align 8
  %dock_info = alloca %struct._GimpSessionInfoDock*, align 8
  %list = alloca %struct._GList*, align 8
  %parent = alloca %struct._GtkWidget*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst12 = alloca %struct._GTypeInstance*, align 8
  %__t14 = alloca i64, align 8
  %__r17 = alloca i32, align 4
  %tmp32 = alloca i32, align 4
  %book = alloca %struct._GimpSessionInfoBook*, align 8
  %__inst51 = alloca %struct._GTypeInstance*, align 8
  %__t53 = alloca i64, align 8
  %__r56 = alloca i32, align 4
  %tmp71 = alloca i32, align 4
  %paned = alloca %struct._GtkPaned*, align 8
  store %struct._GimpDock* %dock, %struct._GimpDock** %dock.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpDock*, %struct._GimpDock** %dock.addr, align 8
  %1 = bitcast %struct._GimpDock* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_dock_get_type() #5
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #4
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__func__.gimp_session_info_dock_from_widget, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.9, i32 0, i32 0))
  store %struct._GimpSessionInfoDock* null, %struct._GimpSessionInfoDock** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpDock*, %struct._GimpDock** %dock.addr, align 8
  %14 = bitcast %struct._GimpDock* %13 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %14, %struct._GTypeInstance** %__inst12, align 8
  %call15 = call i64 @gimp_toolbox_get_type() #5
  store i64 %call15, i64* %__t14, align 8
  %15 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst12, align 8
  %tobool18 = icmp ne %struct._GTypeInstance* %15, null
  br i1 %tobool18, label %if.else.20, label %if.then.19

if.then.19:                                       ; preds = %do.end
  store i32 0, i32* %__r17, align 4
  br label %if.end.31

if.else.20:                                       ; preds = %do.end
  %16 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst12, align 8
  %g_class21 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %16, i32 0, i32 0
  %17 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class21, align 8
  %tobool22 = icmp ne %struct._GTypeClass* %17, null
  br i1 %tobool22, label %land.lhs.true.23, label %if.else.28

land.lhs.true.23:                                 ; preds = %if.else.20
  %18 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst12, align 8
  %g_class24 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %18, i32 0, i32 0
  %19 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class24, align 8
  %g_type25 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %19, i32 0, i32 0
  %20 = load i64, i64* %g_type25, align 8
  %21 = load i64, i64* %__t14, align 8
  %cmp26 = icmp eq i64 %20, %21
  br i1 %cmp26, label %if.then.27, label %if.else.28

if.then.27:                                       ; preds = %land.lhs.true.23
  store i32 1, i32* %__r17, align 4
  br label %if.end.30

if.else.28:                                       ; preds = %land.lhs.true.23, %if.else.20
  %22 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst12, align 8
  %23 = load i64, i64* %__t14, align 8
  %call29 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %22, i64 %23) #4
  store i32 %call29, i32* %__r17, align 4
  br label %if.end.30

if.end.30:                                        ; preds = %if.else.28, %if.then.27
  br label %if.end.31

if.end.31:                                        ; preds = %if.end.30, %if.then.19
  %24 = load i32, i32* %__r17, align 4
  store i32 %24, i32* %tmp32
  %25 = load i32, i32* %tmp32
  %tobool33 = icmp ne i32 %25, 0
  %cond = select i1 %tobool33, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i32 0, i32 0)
  %call34 = call %struct._GimpSessionInfoDock* @gimp_session_info_dock_new(i8* %cond)
  store %struct._GimpSessionInfoDock* %call34, %struct._GimpSessionInfoDock** %dock_info, align 8
  %26 = load %struct._GimpDock*, %struct._GimpDock** %dock.addr, align 8
  %call35 = call %struct._GList* @gimp_dock_get_dockbooks(%struct._GimpDock* %26)
  store %struct._GList* %call35, %struct._GList** %list, align 8
  br label %for.cond

for.cond:                                         ; preds = %cond.end, %if.end.31
  %27 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool36 = icmp ne %struct._GList* %27, null
  br i1 %tobool36, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %28 = load %struct._GList*, %struct._GList** %list, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %28, i32 0, i32 0
  %29 = load i8*, i8** %data, align 8
  %30 = bitcast i8* %29 to %struct._GimpDockbook*
  %call38 = call %struct._GimpSessionInfoBook* @gimp_session_info_book_from_widget(%struct._GimpDockbook* %30)
  store %struct._GimpSessionInfoBook* %call38, %struct._GimpSessionInfoBook** %book, align 8
  %31 = load %struct._GimpSessionInfoDock*, %struct._GimpSessionInfoDock** %dock_info, align 8
  %books = getelementptr inbounds %struct._GimpSessionInfoDock, %struct._GimpSessionInfoDock* %31, i32 0, i32 3
  %32 = load %struct._GList*, %struct._GList** %books, align 8
  %33 = load %struct._GimpSessionInfoBook*, %struct._GimpSessionInfoBook** %book, align 8
  %34 = bitcast %struct._GimpSessionInfoBook* %33 to i8*
  %call39 = call %struct._GList* @g_list_prepend(%struct._GList* %32, i8* %34)
  %35 = load %struct._GimpSessionInfoDock*, %struct._GimpSessionInfoDock** %dock_info, align 8
  %books40 = getelementptr inbounds %struct._GimpSessionInfoDock, %struct._GimpSessionInfoDock* %35, i32 0, i32 3
  store %struct._GList* %call39, %struct._GList** %books40, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %36 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool41 = icmp ne %struct._GList* %36, null
  br i1 %tobool41, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.inc
  %37 = load %struct._GList*, %struct._GList** %list, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %37, i32 0, i32 1
  %38 = load %struct._GList*, %struct._GList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.inc
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond42 = phi %struct._GList* [ %38, %cond.true ], [ null, %cond.false ]
  store %struct._GList* %cond42, %struct._GList** %list, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %39 = load %struct._GimpSessionInfoDock*, %struct._GimpSessionInfoDock** %dock_info, align 8
  %books43 = getelementptr inbounds %struct._GimpSessionInfoDock, %struct._GimpSessionInfoDock* %39, i32 0, i32 3
  %40 = load %struct._GList*, %struct._GList** %books43, align 8
  %call44 = call %struct._GList* @g_list_reverse(%struct._GList* %40)
  %41 = load %struct._GimpSessionInfoDock*, %struct._GimpSessionInfoDock** %dock_info, align 8
  %books45 = getelementptr inbounds %struct._GimpSessionInfoDock, %struct._GimpSessionInfoDock* %41, i32 0, i32 3
  store %struct._GList* %call44, %struct._GList** %books45, align 8
  %42 = load %struct._GimpDock*, %struct._GimpDock** %dock.addr, align 8
  %call46 = call i32 @gimp_session_info_dock_get_side(%struct._GimpDock* %42)
  %43 = load %struct._GimpSessionInfoDock*, %struct._GimpSessionInfoDock** %dock_info, align 8
  %side = getelementptr inbounds %struct._GimpSessionInfoDock, %struct._GimpSessionInfoDock* %43, i32 0, i32 1
  store i32 %call46, i32* %side, align 4
  %44 = load %struct._GimpDock*, %struct._GimpDock** %dock.addr, align 8
  %45 = bitcast %struct._GimpDock* %44 to %struct._GTypeInstance*
  %call47 = call i64 @gtk_widget_get_type() #5
  %call48 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %45, i64 %call47)
  %46 = bitcast %struct._GTypeInstance* %call48 to %struct._GtkWidget*
  %call49 = call %struct._GtkWidget* @gtk_widget_get_parent(%struct._GtkWidget* %46)
  store %struct._GtkWidget* %call49, %struct._GtkWidget** %parent, align 8
  %47 = load %struct._GtkWidget*, %struct._GtkWidget** %parent, align 8
  %48 = bitcast %struct._GtkWidget* %47 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %48, %struct._GTypeInstance** %__inst51, align 8
  %call54 = call i64 @gtk_paned_get_type() #5
  store i64 %call54, i64* %__t53, align 8
  %49 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst51, align 8
  %tobool57 = icmp ne %struct._GTypeInstance* %49, null
  br i1 %tobool57, label %if.else.59, label %if.then.58

if.then.58:                                       ; preds = %for.end
  store i32 0, i32* %__r56, align 4
  br label %if.end.70

if.else.59:                                       ; preds = %for.end
  %50 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst51, align 8
  %g_class60 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %50, i32 0, i32 0
  %51 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class60, align 8
  %tobool61 = icmp ne %struct._GTypeClass* %51, null
  br i1 %tobool61, label %land.lhs.true.62, label %if.else.67

land.lhs.true.62:                                 ; preds = %if.else.59
  %52 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst51, align 8
  %g_class63 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %52, i32 0, i32 0
  %53 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class63, align 8
  %g_type64 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %53, i32 0, i32 0
  %54 = load i64, i64* %g_type64, align 8
  %55 = load i64, i64* %__t53, align 8
  %cmp65 = icmp eq i64 %54, %55
  br i1 %cmp65, label %if.then.66, label %if.else.67

if.then.66:                                       ; preds = %land.lhs.true.62
  store i32 1, i32* %__r56, align 4
  br label %if.end.69

if.else.67:                                       ; preds = %land.lhs.true.62, %if.else.59
  %56 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst51, align 8
  %57 = load i64, i64* %__t53, align 8
  %call68 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %56, i64 %57) #4
  store i32 %call68, i32* %__r56, align 4
  br label %if.end.69

if.end.69:                                        ; preds = %if.else.67, %if.then.66
  br label %if.end.70

if.end.70:                                        ; preds = %if.end.69, %if.then.58
  %58 = load i32, i32* %__r56, align 4
  store i32 %58, i32* %tmp71
  %59 = load i32, i32* %tmp71
  %tobool72 = icmp ne i32 %59, 0
  br i1 %tobool72, label %if.then.73, label %if.end.84

if.then.73:                                       ; preds = %if.end.70
  %60 = load %struct._GtkWidget*, %struct._GtkWidget** %parent, align 8
  %61 = bitcast %struct._GtkWidget* %60 to %struct._GTypeInstance*
  %call75 = call i64 @gtk_paned_get_type() #5
  %call76 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %61, i64 %call75)
  %62 = bitcast %struct._GTypeInstance* %call76 to %struct._GtkPaned*
  store %struct._GtkPaned* %62, %struct._GtkPaned** %paned, align 8
  %63 = load %struct._GimpDock*, %struct._GimpDock** %dock.addr, align 8
  %64 = bitcast %struct._GimpDock* %63 to %struct._GTypeInstance*
  %call77 = call i64 @gtk_widget_get_type() #5
  %call78 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %64, i64 %call77)
  %65 = bitcast %struct._GTypeInstance* %call78 to %struct._GtkWidget*
  %66 = load %struct._GtkPaned*, %struct._GtkPaned** %paned, align 8
  %call79 = call %struct._GtkWidget* @gtk_paned_get_child2(%struct._GtkPaned* %66)
  %cmp80 = icmp eq %struct._GtkWidget* %65, %call79
  br i1 %cmp80, label %if.then.81, label %if.end.83

if.then.81:                                       ; preds = %if.then.73
  %67 = load %struct._GtkPaned*, %struct._GtkPaned** %paned, align 8
  %call82 = call i32 @gtk_paned_get_position(%struct._GtkPaned* %67)
  %68 = load %struct._GimpSessionInfoDock*, %struct._GimpSessionInfoDock** %dock_info, align 8
  %position = getelementptr inbounds %struct._GimpSessionInfoDock, %struct._GimpSessionInfoDock* %68, i32 0, i32 2
  store i32 %call82, i32* %position, align 4
  br label %if.end.83

if.end.83:                                        ; preds = %if.then.81, %if.then.73
  br label %if.end.84

if.end.84:                                        ; preds = %if.end.83, %if.end.70
  %69 = load %struct._GimpSessionInfoDock*, %struct._GimpSessionInfoDock** %dock_info, align 8
  store %struct._GimpSessionInfoDock* %69, %struct._GimpSessionInfoDock** %retval
  br label %return

return:                                           ; preds = %if.end.84, %if.else.9
  %70 = load %struct._GimpSessionInfoDock*, %struct._GimpSessionInfoDock** %retval
  ret %struct._GimpSessionInfoDock* %70
}

; Function Attrs: nounwind readnone
declare i64 @gimp_dock_get_type() #3

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #2

; Function Attrs: nounwind readnone
declare i64 @gimp_toolbox_get_type() #3

declare %struct._GList* @gimp_dock_get_dockbooks(%struct._GimpDock*) #1

declare %struct._GimpSessionInfoBook* @gimp_session_info_book_from_widget(%struct._GimpDockbook*) #1

declare %struct._GList* @g_list_prepend(%struct._GList*, i8*) #1

declare %struct._GList* @g_list_reverse(%struct._GList*) #1

; Function Attrs: nounwind uwtable
define internal i32 @gimp_session_info_dock_get_side(%struct._GimpDock* %dock) #0 {
entry:
  %dock.addr = alloca %struct._GimpDock*, align 8
  %result = alloca i32, align 4
  %toplevel = alloca %struct._GtkWidget*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %container = alloca %struct._GimpDockContainer*, align 8
  store %struct._GimpDock* %dock, %struct._GimpDock** %dock.addr, align 8
  store i32 -1, i32* %result, align 4
  %0 = load %struct._GimpDock*, %struct._GimpDock** %dock.addr, align 8
  %1 = bitcast %struct._GimpDock* %0 to %struct._GTypeInstance*
  %call = call i64 @gtk_widget_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkWidget*
  %call2 = call %struct._GtkWidget* @gtk_widget_get_toplevel(%struct._GtkWidget* %2)
  store %struct._GtkWidget* %call2, %struct._GtkWidget** %toplevel, align 8
  %3 = load %struct._GtkWidget*, %struct._GtkWidget** %toplevel, align 8
  %4 = bitcast %struct._GtkWidget* %3 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %4, %struct._GTypeInstance** %__inst, align 8
  %call3 = call i64 @gimp_dock_container_interface_get_type() #5
  store i64 %call3, i64* %__t, align 8
  %5 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool = icmp ne %struct._GTypeInstance* %5, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %__r, align 4
  br label %if.end.9

if.else:                                          ; preds = %entry
  %6 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %6, i32 0, i32 0
  %7 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool4 = icmp ne %struct._GTypeClass* %7, null
  br i1 %tobool4, label %land.lhs.true, label %if.else.7

land.lhs.true:                                    ; preds = %if.else
  %8 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class5 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %8, i32 0, i32 0
  %9 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class5, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %9, i32 0, i32 0
  %10 = load i64, i64* %g_type, align 8
  %11 = load i64, i64* %__t, align 8
  %cmp = icmp eq i64 %10, %11
  br i1 %cmp, label %if.then.6, label %if.else.7

if.then.6:                                        ; preds = %land.lhs.true
  store i32 1, i32* %__r, align 4
  br label %if.end

if.else.7:                                        ; preds = %land.lhs.true, %if.else
  %12 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %13 = load i64, i64* %__t, align 8
  %call8 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %12, i64 %13) #4
  store i32 %call8, i32* %__r, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.7, %if.then.6
  br label %if.end.9

if.end.9:                                         ; preds = %if.end, %if.then
  %14 = load i32, i32* %__r, align 4
  store i32 %14, i32* %tmp
  %15 = load i32, i32* %tmp
  %tobool10 = icmp ne i32 %15, 0
  br i1 %tobool10, label %if.then.11, label %if.end.16

if.then.11:                                       ; preds = %if.end.9
  %16 = load %struct._GtkWidget*, %struct._GtkWidget** %toplevel, align 8
  %17 = bitcast %struct._GtkWidget* %16 to %struct._GTypeInstance*
  %call13 = call i64 @gimp_dock_container_interface_get_type() #5
  %call14 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %17, i64 %call13)
  %18 = bitcast %struct._GTypeInstance* %call14 to %struct._GimpDockContainer*
  store %struct._GimpDockContainer* %18, %struct._GimpDockContainer** %container, align 8
  %19 = load %struct._GimpDockContainer*, %struct._GimpDockContainer** %container, align 8
  %20 = load %struct._GimpDock*, %struct._GimpDock** %dock.addr, align 8
  %call15 = call i32 @gimp_dock_container_get_dock_side(%struct._GimpDockContainer* %19, %struct._GimpDock* %20)
  store i32 %call15, i32* %result, align 4
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.11, %if.end.9
  %21 = load i32, i32* %result, align 4
  ret i32 %21
}

declare %struct._GtkWidget* @gtk_widget_get_parent(%struct._GtkWidget*) #1

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_widget_get_type() #3

; Function Attrs: nounwind readnone
declare i64 @gtk_paned_get_type() #3

declare %struct._GtkWidget* @gtk_paned_get_child2(%struct._GtkPaned*) #1

declare i32 @gtk_paned_get_position(%struct._GtkPaned*) #1

; Function Attrs: nounwind uwtable
define %struct._GimpDock* @gimp_session_info_dock_restore(%struct._GimpSessionInfoDock* %dock_info, %struct._GimpDialogFactory* %factory, %struct._GdkScreen* %screen, %struct._GimpDockContainer* %dock_container) #0 {
entry:
  %retval = alloca %struct._GimpDock*, align 8
  %dock_info.addr = alloca %struct._GimpSessionInfoDock*, align 8
  %factory.addr = alloca %struct._GimpDialogFactory*, align 8
  %screen.addr = alloca %struct._GdkScreen*, align 8
  %dock_container.addr = alloca %struct._GimpDockContainer*, align 8
  %n_books = alloca i32, align 4
  %dock = alloca %struct._GtkWidget*, align 8
  %iter = alloca %struct._GList*, align 8
  %ui_manager = alloca %struct._GimpUIManager*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst13 = alloca %struct._GTypeInstance*, align 8
  %__t15 = alloca i64, align 8
  %__r18 = alloca i32, align 4
  %tmp33 = alloca i32, align 4
  %__inst43 = alloca %struct._GTypeInstance*, align 8
  %__t45 = alloca i64, align 8
  %__r48 = alloca i32, align 4
  %tmp63 = alloca i32, align 4
  %book_info = alloca %struct._GimpSessionInfoBook*, align 8
  %dockbook = alloca %struct._GtkWidget*, align 8
  %parent = alloca %struct._GtkWidget*, align 8
  %__inst85 = alloca %struct._GTypeInstance*, align 8
  %__t87 = alloca i64, align 8
  %__r90 = alloca i32, align 4
  %tmp105 = alloca i32, align 4
  %paned = alloca %struct._GtkPaned*, align 8
  %books128 = alloca %struct._GList*, align 8
  %dockbook135 = alloca %struct._GtkContainer*, align 8
  %children = alloca %struct._GList*, align 8
  store %struct._GimpSessionInfoDock* %dock_info, %struct._GimpSessionInfoDock** %dock_info.addr, align 8
  store %struct._GimpDialogFactory* %factory, %struct._GimpDialogFactory** %factory.addr, align 8
  store %struct._GdkScreen* %screen, %struct._GdkScreen** %screen.addr, align 8
  store %struct._GimpDockContainer* %dock_container, %struct._GimpDockContainer** %dock_container.addr, align 8
  store i32 0, i32* %n_books, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpDialogFactory*, %struct._GimpDialogFactory** %factory.addr, align 8
  %1 = bitcast %struct._GimpDialogFactory* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_dialog_factory_get_type() #5
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #4
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.gimp_session_info_dock_restore, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.12, i32 0, i32 0))
  store %struct._GimpDock* null, %struct._GimpDock** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GdkScreen*, %struct._GdkScreen** %screen.addr, align 8
  %14 = bitcast %struct._GdkScreen* %13 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %14, %struct._GTypeInstance** %__inst13, align 8
  %call16 = call i64 @gdk_screen_get_type() #5
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
  %call30 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %22, i64 %23) #4
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.gimp_session_info_dock_restore, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.13, i32 0, i32 0))
  store %struct._GimpDock* null, %struct._GimpDock** %retval
  br label %return

if.end.37:                                        ; preds = %if.then.35
  br label %do.end.38

do.end.38:                                        ; preds = %if.end.37
  %26 = load %struct._GimpDockContainer*, %struct._GimpDockContainer** %dock_container.addr, align 8
  %call39 = call %struct._GimpUIManager* @gimp_dock_container_get_ui_manager(%struct._GimpDockContainer* %26)
  store %struct._GimpUIManager* %call39, %struct._GimpUIManager** %ui_manager, align 8
  %27 = load %struct._GimpDialogFactory*, %struct._GimpDialogFactory** %factory.addr, align 8
  %28 = load %struct._GdkScreen*, %struct._GdkScreen** %screen.addr, align 8
  %29 = load %struct._GimpUIManager*, %struct._GimpUIManager** %ui_manager, align 8
  %30 = load %struct._GimpSessionInfoDock*, %struct._GimpSessionInfoDock** %dock_info.addr, align 8
  %dock_type = getelementptr inbounds %struct._GimpSessionInfoDock, %struct._GimpSessionInfoDock* %30, i32 0, i32 0
  %31 = load i8*, i8** %dock_type, align 8
  %call40 = call %struct._GtkWidget* @gimp_dialog_factory_dialog_new(%struct._GimpDialogFactory* %27, %struct._GdkScreen* %28, %struct._GimpUIManager* %29, i8* %31, i32 -1, i32 0)
  store %struct._GtkWidget* %call40, %struct._GtkWidget** %dock, align 8
  br label %do.body.41

do.body.41:                                       ; preds = %do.end.38
  %32 = load %struct._GtkWidget*, %struct._GtkWidget** %dock, align 8
  %33 = bitcast %struct._GtkWidget* %32 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %33, %struct._GTypeInstance** %__inst43, align 8
  %call46 = call i64 @gimp_dock_get_type() #5
  store i64 %call46, i64* %__t45, align 8
  %34 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst43, align 8
  %tobool49 = icmp ne %struct._GTypeInstance* %34, null
  br i1 %tobool49, label %if.else.51, label %if.then.50

if.then.50:                                       ; preds = %do.body.41
  store i32 0, i32* %__r48, align 4
  br label %if.end.62

if.else.51:                                       ; preds = %do.body.41
  %35 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst43, align 8
  %g_class52 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %35, i32 0, i32 0
  %36 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class52, align 8
  %tobool53 = icmp ne %struct._GTypeClass* %36, null
  br i1 %tobool53, label %land.lhs.true.54, label %if.else.59

land.lhs.true.54:                                 ; preds = %if.else.51
  %37 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst43, align 8
  %g_class55 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %37, i32 0, i32 0
  %38 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class55, align 8
  %g_type56 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %38, i32 0, i32 0
  %39 = load i64, i64* %g_type56, align 8
  %40 = load i64, i64* %__t45, align 8
  %cmp57 = icmp eq i64 %39, %40
  br i1 %cmp57, label %if.then.58, label %if.else.59

if.then.58:                                       ; preds = %land.lhs.true.54
  store i32 1, i32* %__r48, align 4
  br label %if.end.61

if.else.59:                                       ; preds = %land.lhs.true.54, %if.else.51
  %41 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst43, align 8
  %42 = load i64, i64* %__t45, align 8
  %call60 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %41, i64 %42) #4
  store i32 %call60, i32* %__r48, align 4
  br label %if.end.61

if.end.61:                                        ; preds = %if.else.59, %if.then.58
  br label %if.end.62

if.end.62:                                        ; preds = %if.end.61, %if.then.50
  %43 = load i32, i32* %__r48, align 4
  store i32 %43, i32* %tmp63
  %44 = load i32, i32* %tmp63
  %tobool64 = icmp ne i32 %44, 0
  br i1 %tobool64, label %if.then.65, label %if.else.66

if.then.65:                                       ; preds = %if.end.62
  br label %if.end.67

if.else.66:                                       ; preds = %if.end.62
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.gimp_session_info_dock_restore, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.9, i32 0, i32 0))
  store %struct._GimpDock* null, %struct._GimpDock** %retval
  br label %return

if.end.67:                                        ; preds = %if.then.65
  br label %do.end.68

do.end.68:                                        ; preds = %if.end.67
  %45 = load %struct._GimpDockContainer*, %struct._GimpDockContainer** %dock_container.addr, align 8
  %46 = load %struct._GtkWidget*, %struct._GtkWidget** %dock, align 8
  %47 = bitcast %struct._GtkWidget* %46 to %struct._GTypeInstance*
  %call69 = call i64 @gimp_dock_get_type() #5
  %call70 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %47, i64 %call69)
  %48 = bitcast %struct._GTypeInstance* %call70 to %struct._GimpDock*
  %49 = load %struct._GimpSessionInfoDock*, %struct._GimpSessionInfoDock** %dock_info.addr, align 8
  call void @gimp_dock_container_add_dock(%struct._GimpDockContainer* %45, %struct._GimpDock* %48, %struct._GimpSessionInfoDock* %49)
  %50 = load %struct._GimpSessionInfoDock*, %struct._GimpSessionInfoDock** %dock_info.addr, align 8
  %tobool71 = icmp ne %struct._GimpSessionInfoDock* %50, null
  br i1 %tobool71, label %cond.true, label %cond.false

cond.true:                                        ; preds = %do.end.68
  %51 = load %struct._GimpSessionInfoDock*, %struct._GimpSessionInfoDock** %dock_info.addr, align 8
  %books = getelementptr inbounds %struct._GimpSessionInfoDock, %struct._GimpSessionInfoDock* %51, i32 0, i32 3
  %52 = load %struct._GList*, %struct._GList** %books, align 8
  br label %cond.end

cond.false:                                       ; preds = %do.end.68
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GList* [ %52, %cond.true ], [ null, %cond.false ]
  store %struct._GList* %cond, %struct._GList** %iter, align 8
  br label %for.cond

for.cond:                                         ; preds = %cond.end.120, %cond.end
  %53 = load %struct._GList*, %struct._GList** %iter, align 8
  %tobool72 = icmp ne %struct._GList* %53, null
  br i1 %tobool72, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %54 = load %struct._GList*, %struct._GList** %iter, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %54, i32 0, i32 0
  %55 = load i8*, i8** %data, align 8
  %56 = bitcast i8* %55 to %struct._GimpSessionInfoBook*
  store %struct._GimpSessionInfoBook* %56, %struct._GimpSessionInfoBook** %book_info, align 8
  %57 = load %struct._GimpSessionInfoBook*, %struct._GimpSessionInfoBook** %book_info, align 8
  %58 = load %struct._GtkWidget*, %struct._GtkWidget** %dock, align 8
  %59 = bitcast %struct._GtkWidget* %58 to %struct._GTypeInstance*
  %call75 = call i64 @gimp_dock_get_type() #5
  %call76 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %59, i64 %call75)
  %60 = bitcast %struct._GTypeInstance* %call76 to %struct._GimpDock*
  %call77 = call %struct._GimpDockbook* @gimp_session_info_book_restore(%struct._GimpSessionInfoBook* %57, %struct._GimpDock* %60)
  %61 = bitcast %struct._GimpDockbook* %call77 to %struct._GTypeInstance*
  %call78 = call i64 @gtk_widget_get_type() #5
  %call79 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %61, i64 %call78)
  %62 = bitcast %struct._GTypeInstance* %call79 to %struct._GtkWidget*
  store %struct._GtkWidget* %62, %struct._GtkWidget** %dockbook, align 8
  %63 = load %struct._GtkWidget*, %struct._GtkWidget** %dockbook, align 8
  %tobool80 = icmp ne %struct._GtkWidget* %63, null
  br i1 %tobool80, label %if.then.81, label %if.end.116

if.then.81:                                       ; preds = %for.body
  %64 = load %struct._GtkWidget*, %struct._GtkWidget** %dockbook, align 8
  %call83 = call %struct._GtkWidget* @gtk_widget_get_parent(%struct._GtkWidget* %64)
  store %struct._GtkWidget* %call83, %struct._GtkWidget** %parent, align 8
  %65 = load i32, i32* %n_books, align 4
  %inc = add nsw i32 %65, 1
  store i32 %inc, i32* %n_books, align 4
  %66 = load %struct._GtkWidget*, %struct._GtkWidget** %parent, align 8
  %67 = bitcast %struct._GtkWidget* %66 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %67, %struct._GTypeInstance** %__inst85, align 8
  %call88 = call i64 @gtk_paned_get_type() #5
  store i64 %call88, i64* %__t87, align 8
  %68 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst85, align 8
  %tobool91 = icmp ne %struct._GTypeInstance* %68, null
  br i1 %tobool91, label %if.else.93, label %if.then.92

if.then.92:                                       ; preds = %if.then.81
  store i32 0, i32* %__r90, align 4
  br label %if.end.104

if.else.93:                                       ; preds = %if.then.81
  %69 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst85, align 8
  %g_class94 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %69, i32 0, i32 0
  %70 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class94, align 8
  %tobool95 = icmp ne %struct._GTypeClass* %70, null
  br i1 %tobool95, label %land.lhs.true.96, label %if.else.101

land.lhs.true.96:                                 ; preds = %if.else.93
  %71 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst85, align 8
  %g_class97 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %71, i32 0, i32 0
  %72 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class97, align 8
  %g_type98 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %72, i32 0, i32 0
  %73 = load i64, i64* %g_type98, align 8
  %74 = load i64, i64* %__t87, align 8
  %cmp99 = icmp eq i64 %73, %74
  br i1 %cmp99, label %if.then.100, label %if.else.101

if.then.100:                                      ; preds = %land.lhs.true.96
  store i32 1, i32* %__r90, align 4
  br label %if.end.103

if.else.101:                                      ; preds = %land.lhs.true.96, %if.else.93
  %75 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst85, align 8
  %76 = load i64, i64* %__t87, align 8
  %call102 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %75, i64 %76) #4
  store i32 %call102, i32* %__r90, align 4
  br label %if.end.103

if.end.103:                                       ; preds = %if.else.101, %if.then.100
  br label %if.end.104

if.end.104:                                       ; preds = %if.end.103, %if.then.92
  %77 = load i32, i32* %__r90, align 4
  store i32 %77, i32* %tmp105
  %78 = load i32, i32* %tmp105
  %tobool106 = icmp ne i32 %78, 0
  br i1 %tobool106, label %if.then.107, label %if.end.115

if.then.107:                                      ; preds = %if.end.104
  %79 = load %struct._GtkWidget*, %struct._GtkWidget** %parent, align 8
  %80 = bitcast %struct._GtkWidget* %79 to %struct._GTypeInstance*
  %call109 = call i64 @gtk_paned_get_type() #5
  %call110 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %80, i64 %call109)
  %81 = bitcast %struct._GTypeInstance* %call110 to %struct._GtkPaned*
  store %struct._GtkPaned* %81, %struct._GtkPaned** %paned, align 8
  %82 = load %struct._GtkWidget*, %struct._GtkWidget** %dockbook, align 8
  %83 = load %struct._GtkPaned*, %struct._GtkPaned** %paned, align 8
  %call111 = call %struct._GtkWidget* @gtk_paned_get_child2(%struct._GtkPaned* %83)
  %cmp112 = icmp eq %struct._GtkWidget* %82, %call111
  br i1 %cmp112, label %if.then.113, label %if.end.114

if.then.113:                                      ; preds = %if.then.107
  %84 = load %struct._GtkPaned*, %struct._GtkPaned** %paned, align 8
  %85 = load %struct._GimpSessionInfoBook*, %struct._GimpSessionInfoBook** %book_info, align 8
  %position = getelementptr inbounds %struct._GimpSessionInfoBook, %struct._GimpSessionInfoBook* %85, i32 0, i32 0
  %86 = load i32, i32* %position, align 4
  call void @gtk_paned_set_position(%struct._GtkPaned* %84, i32 %86)
  br label %if.end.114

if.end.114:                                       ; preds = %if.then.113, %if.then.107
  br label %if.end.115

if.end.115:                                       ; preds = %if.end.114, %if.end.104
  br label %if.end.116

if.end.116:                                       ; preds = %if.end.115, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.116
  %87 = load %struct._GList*, %struct._GList** %iter, align 8
  %tobool117 = icmp ne %struct._GList* %87, null
  br i1 %tobool117, label %cond.true.118, label %cond.false.119

cond.true.118:                                    ; preds = %for.inc
  %88 = load %struct._GList*, %struct._GList** %iter, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %88, i32 0, i32 1
  %89 = load %struct._GList*, %struct._GList** %next, align 8
  br label %cond.end.120

cond.false.119:                                   ; preds = %for.inc
  br label %cond.end.120

cond.end.120:                                     ; preds = %cond.false.119, %cond.true.118
  %cond121 = phi %struct._GList* [ %89, %cond.true.118 ], [ null, %cond.false.119 ]
  store %struct._GList* %cond121, %struct._GList** %iter, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %90 = load %struct._GimpSessionInfoDock*, %struct._GimpSessionInfoDock** %dock_info.addr, align 8
  %tobool122 = icmp ne %struct._GimpSessionInfoDock* %90, null
  br i1 %tobool122, label %land.lhs.true.123, label %if.end.151

land.lhs.true.123:                                ; preds = %for.end
  %91 = load %struct._GimpSessionInfoDock*, %struct._GimpSessionInfoDock** %dock_info.addr, align 8
  %books124 = getelementptr inbounds %struct._GimpSessionInfoDock, %struct._GimpSessionInfoDock* %91, i32 0, i32 3
  %92 = load %struct._GList*, %struct._GList** %books124, align 8
  %tobool125 = icmp ne %struct._GList* %92, null
  br i1 %tobool125, label %if.then.126, label %if.end.151

if.then.126:                                      ; preds = %land.lhs.true.123
  %93 = load %struct._GtkWidget*, %struct._GtkWidget** %dock, align 8
  %94 = bitcast %struct._GtkWidget* %93 to %struct._GTypeInstance*
  %call129 = call i64 @gimp_dock_get_type() #5
  %call130 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %94, i64 %call129)
  %95 = bitcast %struct._GTypeInstance* %call130 to %struct._GimpDock*
  %call131 = call %struct._GList* @gimp_dock_get_dockbooks(%struct._GimpDock* %95)
  %call132 = call %struct._GList* @g_list_copy(%struct._GList* %call131)
  store %struct._GList* %call132, %struct._GList** %books128, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.149, %if.then.126
  %96 = load %struct._GList*, %struct._GList** %books128, align 8
  %tobool133 = icmp ne %struct._GList* %96, null
  br i1 %tobool133, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %97 = load %struct._GList*, %struct._GList** %books128, align 8
  %data136 = getelementptr inbounds %struct._GList, %struct._GList* %97, i32 0, i32 0
  %98 = load i8*, i8** %data136, align 8
  %99 = bitcast i8* %98 to %struct._GtkContainer*
  store %struct._GtkContainer* %99, %struct._GtkContainer** %dockbook135, align 8
  %100 = load %struct._GtkContainer*, %struct._GtkContainer** %dockbook135, align 8
  %call138 = call %struct._GList* @gtk_container_get_children(%struct._GtkContainer* %100)
  store %struct._GList* %call138, %struct._GList** %children, align 8
  %101 = load %struct._GList*, %struct._GList** %children, align 8
  %tobool139 = icmp ne %struct._GList* %101, null
  br i1 %tobool139, label %if.then.140, label %if.else.141

if.then.140:                                      ; preds = %while.body
  %102 = load %struct._GList*, %struct._GList** %children, align 8
  call void @g_list_free(%struct._GList* %102)
  br label %if.end.149

if.else.141:                                      ; preds = %while.body
  %103 = load %struct._GtkContainer*, %struct._GtkContainer** %dockbook135, align 8
  %104 = bitcast %struct._GtkContainer* %103 to i8*
  %call142 = call i8* @g_object_ref(i8* %104)
  %105 = load %struct._GtkWidget*, %struct._GtkWidget** %dock, align 8
  %106 = bitcast %struct._GtkWidget* %105 to %struct._GTypeInstance*
  %call143 = call i64 @gimp_dock_get_type() #5
  %call144 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %106, i64 %call143)
  %107 = bitcast %struct._GTypeInstance* %call144 to %struct._GimpDock*
  %108 = load %struct._GtkContainer*, %struct._GtkContainer** %dockbook135, align 8
  %109 = bitcast %struct._GtkContainer* %108 to %struct._GTypeInstance*
  %call145 = call i64 @gimp_dockbook_get_type() #5
  %call146 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %109, i64 %call145)
  %110 = bitcast %struct._GTypeInstance* %call146 to %struct._GimpDockbook*
  call void @gimp_dock_remove_book(%struct._GimpDock* %107, %struct._GimpDockbook* %110)
  %111 = load %struct._GtkContainer*, %struct._GtkContainer** %dockbook135, align 8
  %112 = bitcast %struct._GtkContainer* %111 to %struct._GTypeInstance*
  %call147 = call i64 @gtk_widget_get_type() #5
  %call148 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %112, i64 %call147)
  %113 = bitcast %struct._GTypeInstance* %call148 to %struct._GtkWidget*
  call void @gtk_widget_destroy(%struct._GtkWidget* %113)
  %114 = load %struct._GtkContainer*, %struct._GtkContainer** %dockbook135, align 8
  %115 = bitcast %struct._GtkContainer* %114 to i8*
  call void @g_object_unref(i8* %115)
  %116 = load i32, i32* %n_books, align 4
  %dec = add nsw i32 %116, -1
  store i32 %dec, i32* %n_books, align 4
  br label %if.end.149

if.end.149:                                       ; preds = %if.else.141, %if.then.140
  %117 = load %struct._GList*, %struct._GList** %books128, align 8
  %118 = load %struct._GtkContainer*, %struct._GtkContainer** %dockbook135, align 8
  %119 = bitcast %struct._GtkContainer* %118 to i8*
  %call150 = call %struct._GList* @g_list_remove(%struct._GList* %117, i8* %119)
  store %struct._GList* %call150, %struct._GList** %books128, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %if.end.151

if.end.151:                                       ; preds = %while.end, %land.lhs.true.123, %for.end
  %120 = load %struct._GimpSessionInfoDock*, %struct._GimpSessionInfoDock** %dock_info.addr, align 8
  %tobool152 = icmp ne %struct._GimpSessionInfoDock* %120, null
  br i1 %tobool152, label %land.lhs.true.153, label %if.end.159

land.lhs.true.153:                                ; preds = %if.end.151
  %121 = load %struct._GimpSessionInfoDock*, %struct._GimpSessionInfoDock** %dock_info.addr, align 8
  %books154 = getelementptr inbounds %struct._GimpSessionInfoDock, %struct._GimpSessionInfoDock* %121, i32 0, i32 3
  %122 = load %struct._GList*, %struct._GList** %books154, align 8
  %tobool155 = icmp ne %struct._GList* %122, null
  br i1 %tobool155, label %land.lhs.true.156, label %if.end.159

land.lhs.true.156:                                ; preds = %land.lhs.true.153
  %123 = load i32, i32* %n_books, align 4
  %cmp157 = icmp eq i32 %123, 0
  br i1 %cmp157, label %if.then.158, label %if.end.159

if.then.158:                                      ; preds = %land.lhs.true.156
  store %struct._GimpDock* null, %struct._GimpDock** %retval
  br label %return

if.end.159:                                       ; preds = %land.lhs.true.156, %land.lhs.true.153, %if.end.151
  %124 = load %struct._GtkWidget*, %struct._GtkWidget** %dock, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %124)
  %125 = load %struct._GtkWidget*, %struct._GtkWidget** %dock, align 8
  %126 = bitcast %struct._GtkWidget* %125 to %struct._GTypeInstance*
  %call160 = call i64 @gimp_dock_get_type() #5
  %call161 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %126, i64 %call160)
  %127 = bitcast %struct._GTypeInstance* %call161 to %struct._GimpDock*
  store %struct._GimpDock* %127, %struct._GimpDock** %retval
  br label %return

return:                                           ; preds = %if.end.159, %if.then.158, %if.else.66, %if.else.36, %if.else.9
  %128 = load %struct._GimpDock*, %struct._GimpDock** %retval
  ret %struct._GimpDock* %128
}

; Function Attrs: nounwind readnone
declare i64 @gimp_dialog_factory_get_type() #3

; Function Attrs: nounwind readnone
declare i64 @gdk_screen_get_type() #3

declare %struct._GimpUIManager* @gimp_dock_container_get_ui_manager(%struct._GimpDockContainer*) #1

declare %struct._GtkWidget* @gimp_dialog_factory_dialog_new(%struct._GimpDialogFactory*, %struct._GdkScreen*, %struct._GimpUIManager*, i8*, i32, i32) #1

declare void @gimp_dock_container_add_dock(%struct._GimpDockContainer*, %struct._GimpDock*, %struct._GimpSessionInfoDock*) #1

declare %struct._GimpDockbook* @gimp_session_info_book_restore(%struct._GimpSessionInfoBook*, %struct._GimpDock*) #1

declare void @gtk_paned_set_position(%struct._GtkPaned*, i32) #1

declare %struct._GList* @g_list_copy(%struct._GList*) #1

declare %struct._GList* @gtk_container_get_children(%struct._GtkContainer*) #1

declare void @g_list_free(%struct._GList*) #1

declare i8* @g_object_ref(i8*) #1

declare void @gimp_dock_remove_book(%struct._GimpDock*, %struct._GimpDockbook*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_dockbook_get_type() #3

declare void @gtk_widget_destroy(%struct._GtkWidget*) #1

declare void @g_object_unref(i8*) #1

declare %struct._GList* @g_list_remove(%struct._GList*, i8*) #1

declare void @gtk_widget_show(%struct._GtkWidget*) #1

declare %struct._GtkWidget* @gtk_widget_get_toplevel(%struct._GtkWidget*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_dock_container_interface_get_type() #3

declare i32 @gimp_dock_container_get_dock_side(%struct._GimpDockContainer*, %struct._GimpDock*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly }
attributes #5 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
