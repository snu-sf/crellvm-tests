; ModuleID = './app/widgets/gimpsessioninfo-book.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GimpMenuFactory = type opaque
%struct._GimpSessionInfoBook = type { i32, i32, %struct._GList* }
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct._GimpSessionInfoDockable = type { i8*, i32, i32, i32, %struct._GList* }
%struct._GimpConfigWriter = type opaque
%struct._GScanner = type { i8*, i32, i32, i8*, %struct._GData*, %struct._GScannerConfig*, i32, %union._GTokenValue, i32, i32, i32, %union._GTokenValue, i32, i32, %struct._GHashTable*, i32, i8*, i8*, i8*, i32, void (%struct._GScanner*, i8*, i32)* }
%struct._GData = type opaque
%struct._GScannerConfig = type { i8*, i8*, i8*, i8*, i24, i32 }
%union._GTokenValue = type { i8* }
%struct._GHashTable = type opaque
%struct._GimpDockbook = type { %struct._GtkNotebook, %struct._GimpDockbookPrivate* }
%struct._GtkNotebook = type { %struct._GtkContainer, i8*, %struct._GList*, %struct._GList*, %struct._GList*, %struct._GtkWidget*, %struct._GdkDrawable*, i32, i16, i16, i24 }
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
%struct._GimpDockbookPrivate = type opaque
%struct._GtkPaned = type { %struct._GtkContainer, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GdkDrawable*, %struct._GdkGC*, i32, %struct._GdkRectangle, i32, i32, i32, i32, i16, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkPanedPrivate*, i32, i32 }
%struct._GtkPanedPrivate = type opaque
%struct._GimpDockable = type opaque
%struct._GimpDock = type { %struct._GtkBox, %struct._GimpDockPrivate* }
%struct._GtkBox = type { %struct._GtkContainer, %struct._GList*, i16, i8 }
%struct._GimpDockPrivate = type opaque

@.str = private unnamed_addr constant [13 x i8] c"Gimp-Widgets\00", align 1
@__func__.gimp_session_info_book_free = private unnamed_addr constant [28 x i8] c"gimp_session_info_book_free\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"info != NULL\00", align 1
@__func__.gimp_session_info_book_serialize = private unnamed_addr constant [33 x i8] c"gimp_session_info_book_serialize\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"writer != NULL\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"book\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"current-page\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@__func__.gimp_session_info_book_deserialize = private unnamed_addr constant [35 x i8] c"gimp_session_info_book_deserialize\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"scanner != NULL\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"book != NULL\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"position\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"dockable\00", align 1
@__func__.gimp_session_info_book_from_widget = private unnamed_addr constant [35 x i8] c"gimp_session_info_book_from_widget\00", align 1
@.str.10 = private unnamed_addr constant [28 x i8] c"GIMP_IS_DOCKBOOK (dockbook)\00", align 1
@__func__.gimp_session_info_book_restore = private unnamed_addr constant [31 x i8] c"gimp_session_info_book_restore\00", align 1
@.str.11 = private unnamed_addr constant [20 x i8] c"GIMP_IS_DOCK (dock)\00", align 1
@global_menu_factory = external global %struct._GimpMenuFactory*, align 8

; Function Attrs: nounwind uwtable
define %struct._GimpSessionInfoBook* @gimp_session_info_book_new() #0 {
entry:
  %call = call noalias i8* @g_slice_alloc0(i64 16)
  %0 = bitcast i8* %call to %struct._GimpSessionInfoBook*
  ret %struct._GimpSessionInfoBook* %0
}

declare noalias i8* @g_slice_alloc0(i64) #1

; Function Attrs: nounwind uwtable
define void @gimp_session_info_book_free(%struct._GimpSessionInfoBook* %info) #0 {
entry:
  %info.addr = alloca %struct._GimpSessionInfoBook*, align 8
  store %struct._GimpSessionInfoBook* %info, %struct._GimpSessionInfoBook** %info.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpSessionInfoBook*, %struct._GimpSessionInfoBook** %info.addr, align 8
  %cmp = icmp ne %struct._GimpSessionInfoBook* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.gimp_session_info_book_free, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0))
  br label %do.end.6

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %1 = load %struct._GimpSessionInfoBook*, %struct._GimpSessionInfoBook** %info.addr, align 8
  %dockables = getelementptr inbounds %struct._GimpSessionInfoBook, %struct._GimpSessionInfoBook* %1, i32 0, i32 2
  %2 = load %struct._GList*, %struct._GList** %dockables, align 8
  %tobool = icmp ne %struct._GList* %2, null
  br i1 %tobool, label %if.then.1, label %if.end.4

if.then.1:                                        ; preds = %do.end
  %3 = load %struct._GimpSessionInfoBook*, %struct._GimpSessionInfoBook** %info.addr, align 8
  %dockables2 = getelementptr inbounds %struct._GimpSessionInfoBook, %struct._GimpSessionInfoBook* %3, i32 0, i32 2
  %4 = load %struct._GList*, %struct._GList** %dockables2, align 8
  call void @g_list_free_full(%struct._GList* %4, void (i8*)* bitcast (void (%struct._GimpSessionInfoDockable*)* @gimp_session_info_dockable_free to void (i8*)*))
  %5 = load %struct._GimpSessionInfoBook*, %struct._GimpSessionInfoBook** %info.addr, align 8
  %dockables3 = getelementptr inbounds %struct._GimpSessionInfoBook, %struct._GimpSessionInfoBook* %5, i32 0, i32 2
  store %struct._GList* null, %struct._GList** %dockables3, align 8
  br label %if.end.4

if.end.4:                                         ; preds = %if.then.1, %do.end
  br label %do.body.5

do.body.5:                                        ; preds = %if.end.4
  %6 = load %struct._GimpSessionInfoBook*, %struct._GimpSessionInfoBook** %info.addr, align 8
  %7 = bitcast %struct._GimpSessionInfoBook* %6 to i8*
  call void @g_slice_free1(i64 16, i8* %7)
  br label %do.end.6

do.end.6:                                         ; preds = %if.else, %do.body.5
  ret void
}

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

declare void @g_list_free_full(%struct._GList*, void (i8*)*) #1

declare void @gimp_session_info_dockable_free(%struct._GimpSessionInfoDockable*) #1

declare void @g_slice_free1(i64, i8*) #1

; Function Attrs: nounwind uwtable
define void @gimp_session_info_book_serialize(%struct._GimpConfigWriter* %writer, %struct._GimpSessionInfoBook* %info) #0 {
entry:
  %writer.addr = alloca %struct._GimpConfigWriter*, align 8
  %info.addr = alloca %struct._GimpSessionInfoBook*, align 8
  %pages = alloca %struct._GList*, align 8
  store %struct._GimpConfigWriter* %writer, %struct._GimpConfigWriter** %writer.addr, align 8
  store %struct._GimpSessionInfoBook* %info, %struct._GimpSessionInfoBook** %info.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer.addr, align 8
  %cmp = icmp ne %struct._GimpConfigWriter* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__func__.gimp_session_info_book_serialize, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0))
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %do.body.1

do.body.1:                                        ; preds = %do.end
  %1 = load %struct._GimpSessionInfoBook*, %struct._GimpSessionInfoBook** %info.addr, align 8
  %cmp2 = icmp ne %struct._GimpSessionInfoBook* %1, null
  br i1 %cmp2, label %if.then.3, label %if.else.4

if.then.3:                                        ; preds = %do.body.1
  br label %if.end.5

if.else.4:                                        ; preds = %do.body.1
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__func__.gimp_session_info_book_serialize, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0))
  br label %return

if.end.5:                                         ; preds = %if.then.3
  br label %do.end.6

do.end.6:                                         ; preds = %if.end.5
  %2 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer.addr, align 8
  call void @gimp_config_writer_open(%struct._GimpConfigWriter* %2, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0))
  %3 = load %struct._GimpSessionInfoBook*, %struct._GimpSessionInfoBook** %info.addr, align 8
  %position = getelementptr inbounds %struct._GimpSessionInfoBook, %struct._GimpSessionInfoBook* %3, i32 0, i32 0
  %4 = load i32, i32* %position, align 4
  %cmp7 = icmp ne i32 %4, 0
  br i1 %cmp7, label %if.then.8, label %if.end.10

if.then.8:                                        ; preds = %do.end.6
  %5 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer.addr, align 8
  %6 = load %struct._GimpSessionInfoBook*, %struct._GimpSessionInfoBook** %info.addr, align 8
  %position9 = getelementptr inbounds %struct._GimpSessionInfoBook, %struct._GimpSessionInfoBook* %6, i32 0, i32 0
  %7 = load i32, i32* %position9, align 4
  call void @gimp_session_write_position(%struct._GimpConfigWriter* %5, i32 %7)
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.8, %do.end.6
  %8 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer.addr, align 8
  call void @gimp_config_writer_open(%struct._GimpConfigWriter* %8, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i32 0, i32 0))
  %9 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer.addr, align 8
  %10 = load %struct._GimpSessionInfoBook*, %struct._GimpSessionInfoBook** %info.addr, align 8
  %current_page = getelementptr inbounds %struct._GimpSessionInfoBook, %struct._GimpSessionInfoBook* %10, i32 0, i32 1
  %11 = load i32, i32* %current_page, align 4
  call void (%struct._GimpConfigWriter*, i8*, ...) @gimp_config_writer_printf(%struct._GimpConfigWriter* %9, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i32 0, i32 0), i32 %11)
  %12 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer.addr, align 8
  call void @gimp_config_writer_close(%struct._GimpConfigWriter* %12)
  %13 = load %struct._GimpSessionInfoBook*, %struct._GimpSessionInfoBook** %info.addr, align 8
  %dockables = getelementptr inbounds %struct._GimpSessionInfoBook, %struct._GimpSessionInfoBook* %13, i32 0, i32 2
  %14 = load %struct._GList*, %struct._GList** %dockables, align 8
  store %struct._GList* %14, %struct._GList** %pages, align 8
  br label %for.cond

for.cond:                                         ; preds = %cond.end, %if.end.10
  %15 = load %struct._GList*, %struct._GList** %pages, align 8
  %tobool = icmp ne %struct._GList* %15, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %16 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer.addr, align 8
  %17 = load %struct._GList*, %struct._GList** %pages, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %17, i32 0, i32 0
  %18 = load i8*, i8** %data, align 8
  %19 = bitcast i8* %18 to %struct._GimpSessionInfoDockable*
  call void @gimp_session_info_dockable_serialize(%struct._GimpConfigWriter* %16, %struct._GimpSessionInfoDockable* %19)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %20 = load %struct._GList*, %struct._GList** %pages, align 8
  %tobool11 = icmp ne %struct._GList* %20, null
  br i1 %tobool11, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.inc
  %21 = load %struct._GList*, %struct._GList** %pages, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %21, i32 0, i32 1
  %22 = load %struct._GList*, %struct._GList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.inc
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GList* [ %22, %cond.true ], [ null, %cond.false ]
  store %struct._GList* %cond, %struct._GList** %pages, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %23 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer.addr, align 8
  call void @gimp_config_writer_close(%struct._GimpConfigWriter* %23)
  br label %return

return:                                           ; preds = %for.end, %if.else.4, %if.else
  ret void
}

declare void @gimp_config_writer_open(%struct._GimpConfigWriter*, i8*) #1

declare void @gimp_session_write_position(%struct._GimpConfigWriter*, i32) #1

declare void @gimp_config_writer_printf(%struct._GimpConfigWriter*, i8*, ...) #1

declare void @gimp_config_writer_close(%struct._GimpConfigWriter*) #1

declare void @gimp_session_info_dockable_serialize(%struct._GimpConfigWriter*, %struct._GimpSessionInfoDockable*) #1

; Function Attrs: nounwind uwtable
define i32 @gimp_session_info_book_deserialize(%struct._GScanner* %scanner, i32 %scope, %struct._GimpSessionInfoBook** %book) #0 {
entry:
  %retval = alloca i32, align 4
  %scanner.addr = alloca %struct._GScanner*, align 8
  %scope.addr = alloca i32, align 4
  %book.addr = alloca %struct._GimpSessionInfoBook**, align 8
  %info = alloca %struct._GimpSessionInfoBook*, align 8
  %token = alloca i32, align 4
  %dockable = alloca %struct._GimpSessionInfoDockable*, align 8
  store %struct._GScanner* %scanner, %struct._GScanner** %scanner.addr, align 8
  store i32 %scope, i32* %scope.addr, align 4
  store %struct._GimpSessionInfoBook** %book, %struct._GimpSessionInfoBook*** %book.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %cmp = icmp ne %struct._GScanner* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__func__.gimp_session_info_book_deserialize, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i32 0, i32 0))
  store i32 40, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %do.body.1

do.body.1:                                        ; preds = %do.end
  %1 = load %struct._GimpSessionInfoBook**, %struct._GimpSessionInfoBook*** %book.addr, align 8
  %cmp2 = icmp ne %struct._GimpSessionInfoBook** %1, null
  br i1 %cmp2, label %if.then.3, label %if.else.4

if.then.3:                                        ; preds = %do.body.1
  br label %if.end.5

if.else.4:                                        ; preds = %do.body.1
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__func__.gimp_session_info_book_deserialize, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i32 0, i32 0))
  store i32 40, i32* %retval
  br label %return

if.end.5:                                         ; preds = %if.then.3
  br label %do.end.6

do.end.6:                                         ; preds = %if.end.5
  %2 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %3 = load i32, i32* %scope.addr, align 4
  call void @g_scanner_scope_add_symbol(%struct._GScanner* %2, i32 %3, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i32 0, i32 0), i8* null)
  %4 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %5 = load i32, i32* %scope.addr, align 4
  call void @g_scanner_scope_add_symbol(%struct._GScanner* %4, i32 %5, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i32 0, i32 0), i8* inttoptr (i64 1 to i8*))
  %6 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %7 = load i32, i32* %scope.addr, align 4
  call void @g_scanner_scope_add_symbol(%struct._GScanner* %6, i32 %7, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i32 0, i32 0), i8* inttoptr (i64 2 to i8*))
  %call = call %struct._GimpSessionInfoBook* @gimp_session_info_book_new()
  store %struct._GimpSessionInfoBook* %call, %struct._GimpSessionInfoBook** %info, align 8
  store i32 40, i32* %token, align 4
  br label %while.cond

while.cond:                                       ; preds = %sw.epilog.34, %do.end.6
  %8 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %call7 = call i32 @g_scanner_peek_next_token(%struct._GScanner* %8)
  %9 = load i32, i32* %token, align 4
  %cmp8 = icmp eq i32 %call7, %9
  br i1 %cmp8, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %10 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %call9 = call i32 @g_scanner_get_next_token(%struct._GScanner* %10)
  store i32 %call9, i32* %token, align 4
  %11 = load i32, i32* %token, align 4
  switch i32 %11, label %sw.default.33 [
    i32 40, label %sw.bb
    i32 265, label %sw.bb.10
    i32 41, label %sw.bb.32
  ]

sw.bb:                                            ; preds = %while.body
  store i32 265, i32* %token, align 4
  br label %sw.epilog.34

sw.bb.10:                                         ; preds = %while.body
  %12 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %value = getelementptr inbounds %struct._GScanner, %struct._GScanner* %12, i32 0, i32 7
  %v_symbol = bitcast %union._GTokenValue* %value to i8**
  %13 = load i8*, i8** %v_symbol, align 8
  %14 = ptrtoint i8* %13 to i64
  %conv = trunc i64 %14 to i32
  switch i32 %conv, label %sw.default [
    i32 0, label %sw.bb.11
    i32 1, label %sw.bb.15
    i32 2, label %sw.bb.20
  ]

sw.bb.11:                                         ; preds = %sw.bb.10
  store i32 261, i32* %token, align 4
  %15 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %16 = load %struct._GimpSessionInfoBook*, %struct._GimpSessionInfoBook** %info, align 8
  %position = getelementptr inbounds %struct._GimpSessionInfoBook, %struct._GimpSessionInfoBook* %16, i32 0, i32 0
  %call12 = call i32 @gimp_scanner_parse_int(%struct._GScanner* %15, i32* %position)
  %tobool = icmp ne i32 %call12, 0
  br i1 %tobool, label %if.end.14, label %if.then.13

if.then.13:                                       ; preds = %sw.bb.11
  br label %error

if.end.14:                                        ; preds = %sw.bb.11
  br label %sw.epilog

sw.bb.15:                                         ; preds = %sw.bb.10
  store i32 261, i32* %token, align 4
  %17 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %18 = load %struct._GimpSessionInfoBook*, %struct._GimpSessionInfoBook** %info, align 8
  %current_page = getelementptr inbounds %struct._GimpSessionInfoBook, %struct._GimpSessionInfoBook* %18, i32 0, i32 1
  %call16 = call i32 @gimp_scanner_parse_int(%struct._GScanner* %17, i32* %current_page)
  %tobool17 = icmp ne i32 %call16, 0
  br i1 %tobool17, label %if.end.19, label %if.then.18

if.then.18:                                       ; preds = %sw.bb.15
  br label %error

if.end.19:                                        ; preds = %sw.bb.15
  br label %sw.epilog

sw.bb.20:                                         ; preds = %sw.bb.10
  %19 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %20 = load i32, i32* %scope.addr, align 4
  %add = add nsw i32 %20, 1
  %call21 = call i32 @g_scanner_set_scope(%struct._GScanner* %19, i32 %add)
  %21 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %22 = load i32, i32* %scope.addr, align 4
  %add22 = add nsw i32 %22, 1
  %call23 = call i32 @gimp_session_info_dockable_deserialize(%struct._GScanner* %21, i32 %add22, %struct._GimpSessionInfoDockable** %dockable)
  store i32 %call23, i32* %token, align 4
  %23 = load i32, i32* %token, align 4
  %cmp24 = icmp eq i32 %23, 40
  br i1 %cmp24, label %if.then.26, label %if.else.30

if.then.26:                                       ; preds = %sw.bb.20
  %24 = load %struct._GimpSessionInfoBook*, %struct._GimpSessionInfoBook** %info, align 8
  %dockables = getelementptr inbounds %struct._GimpSessionInfoBook, %struct._GimpSessionInfoBook* %24, i32 0, i32 2
  %25 = load %struct._GList*, %struct._GList** %dockables, align 8
  %26 = load %struct._GimpSessionInfoDockable*, %struct._GimpSessionInfoDockable** %dockable, align 8
  %27 = bitcast %struct._GimpSessionInfoDockable* %26 to i8*
  %call27 = call %struct._GList* @g_list_append(%struct._GList* %25, i8* %27)
  %28 = load %struct._GimpSessionInfoBook*, %struct._GimpSessionInfoBook** %info, align 8
  %dockables28 = getelementptr inbounds %struct._GimpSessionInfoBook, %struct._GimpSessionInfoBook* %28, i32 0, i32 2
  store %struct._GList* %call27, %struct._GList** %dockables28, align 8
  %29 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %30 = load i32, i32* %scope.addr, align 4
  %call29 = call i32 @g_scanner_set_scope(%struct._GScanner* %29, i32 %30)
  br label %if.end.31

if.else.30:                                       ; preds = %sw.bb.20
  br label %error

if.end.31:                                        ; preds = %if.then.26
  br label %sw.epilog

sw.default:                                       ; preds = %sw.bb.10
  br label %error

sw.epilog:                                        ; preds = %if.end.31, %if.end.19, %if.end.14
  store i32 41, i32* %token, align 4
  br label %sw.epilog.34

sw.bb.32:                                         ; preds = %while.body
  store i32 40, i32* %token, align 4
  br label %sw.epilog.34

sw.default.33:                                    ; preds = %while.body
  br label %sw.epilog.34

sw.epilog.34:                                     ; preds = %sw.default.33, %sw.bb.32, %sw.epilog, %sw.bb
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %31 = load %struct._GimpSessionInfoBook*, %struct._GimpSessionInfoBook** %info, align 8
  %32 = load %struct._GimpSessionInfoBook**, %struct._GimpSessionInfoBook*** %book.addr, align 8
  store %struct._GimpSessionInfoBook* %31, %struct._GimpSessionInfoBook** %32, align 8
  %33 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %34 = load i32, i32* %scope.addr, align 4
  call void @g_scanner_scope_remove_symbol(%struct._GScanner* %33, i32 %34, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i32 0, i32 0))
  %35 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %36 = load i32, i32* %scope.addr, align 4
  call void @g_scanner_scope_remove_symbol(%struct._GScanner* %35, i32 %36, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i32 0, i32 0))
  %37 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %38 = load i32, i32* %scope.addr, align 4
  call void @g_scanner_scope_remove_symbol(%struct._GScanner* %37, i32 %38, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i32 0, i32 0))
  %39 = load i32, i32* %token, align 4
  store i32 %39, i32* %retval
  br label %return

error:                                            ; preds = %sw.default, %if.else.30, %if.then.18, %if.then.13
  %40 = load %struct._GimpSessionInfoBook**, %struct._GimpSessionInfoBook*** %book.addr, align 8
  store %struct._GimpSessionInfoBook* null, %struct._GimpSessionInfoBook** %40, align 8
  %41 = load %struct._GimpSessionInfoBook*, %struct._GimpSessionInfoBook** %info, align 8
  call void @gimp_session_info_book_free(%struct._GimpSessionInfoBook* %41)
  %42 = load i32, i32* %token, align 4
  store i32 %42, i32* %retval
  br label %return

return:                                           ; preds = %error, %while.end, %if.else.4, %if.else
  %43 = load i32, i32* %retval
  ret i32 %43
}

declare void @g_scanner_scope_add_symbol(%struct._GScanner*, i32, i8*, i8*) #1

declare i32 @g_scanner_peek_next_token(%struct._GScanner*) #1

declare i32 @g_scanner_get_next_token(%struct._GScanner*) #1

declare i32 @gimp_scanner_parse_int(%struct._GScanner*, i32*) #1

declare i32 @g_scanner_set_scope(%struct._GScanner*, i32) #1

declare i32 @gimp_session_info_dockable_deserialize(%struct._GScanner*, i32, %struct._GimpSessionInfoDockable**) #1

declare %struct._GList* @g_list_append(%struct._GList*, i8*) #1

declare void @g_scanner_scope_remove_symbol(%struct._GScanner*, i32, i8*) #1

; Function Attrs: nounwind uwtable
define %struct._GimpSessionInfoBook* @gimp_session_info_book_from_widget(%struct._GimpDockbook* %dockbook) #0 {
entry:
  %retval = alloca %struct._GimpSessionInfoBook*, align 8
  %dockbook.addr = alloca %struct._GimpDockbook*, align 8
  %info = alloca %struct._GimpSessionInfoBook*, align 8
  %parent = alloca %struct._GtkWidget*, align 8
  %children = alloca %struct._GList*, align 8
  %list = alloca %struct._GList*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst16 = alloca %struct._GTypeInstance*, align 8
  %__t18 = alloca i64, align 8
  %__r21 = alloca i32, align 4
  %tmp36 = alloca i32, align 4
  %paned = alloca %struct._GtkPaned*, align 8
  %dockable = alloca %struct._GimpSessionInfoDockable*, align 8
  store %struct._GimpDockbook* %dockbook, %struct._GimpDockbook** %dockbook.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpDockbook*, %struct._GimpDockbook** %dockbook.addr, align 8
  %1 = bitcast %struct._GimpDockbook* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_dockbook_get_type() #4
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__func__.gimp_session_info_book_from_widget, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.10, i32 0, i32 0))
  store %struct._GimpSessionInfoBook* null, %struct._GimpSessionInfoBook** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %call11 = call %struct._GimpSessionInfoBook* @gimp_session_info_book_new()
  store %struct._GimpSessionInfoBook* %call11, %struct._GimpSessionInfoBook** %info, align 8
  %13 = load %struct._GimpDockbook*, %struct._GimpDockbook** %dockbook.addr, align 8
  %14 = bitcast %struct._GimpDockbook* %13 to %struct._GTypeInstance*
  %call12 = call i64 @gtk_widget_get_type() #4
  %call13 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 %call12)
  %15 = bitcast %struct._GTypeInstance* %call13 to %struct._GtkWidget*
  %call14 = call %struct._GtkWidget* @gtk_widget_get_parent(%struct._GtkWidget* %15)
  store %struct._GtkWidget* %call14, %struct._GtkWidget** %parent, align 8
  %16 = load %struct._GtkWidget*, %struct._GtkWidget** %parent, align 8
  %17 = bitcast %struct._GtkWidget* %16 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %17, %struct._GTypeInstance** %__inst16, align 8
  %call19 = call i64 @gtk_paned_get_type() #4
  store i64 %call19, i64* %__t18, align 8
  %18 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst16, align 8
  %tobool22 = icmp ne %struct._GTypeInstance* %18, null
  br i1 %tobool22, label %if.else.24, label %if.then.23

if.then.23:                                       ; preds = %do.end
  store i32 0, i32* %__r21, align 4
  br label %if.end.35

if.else.24:                                       ; preds = %do.end
  %19 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst16, align 8
  %g_class25 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %19, i32 0, i32 0
  %20 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class25, align 8
  %tobool26 = icmp ne %struct._GTypeClass* %20, null
  br i1 %tobool26, label %land.lhs.true.27, label %if.else.32

land.lhs.true.27:                                 ; preds = %if.else.24
  %21 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst16, align 8
  %g_class28 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %21, i32 0, i32 0
  %22 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class28, align 8
  %g_type29 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %22, i32 0, i32 0
  %23 = load i64, i64* %g_type29, align 8
  %24 = load i64, i64* %__t18, align 8
  %cmp30 = icmp eq i64 %23, %24
  br i1 %cmp30, label %if.then.31, label %if.else.32

if.then.31:                                       ; preds = %land.lhs.true.27
  store i32 1, i32* %__r21, align 4
  br label %if.end.34

if.else.32:                                       ; preds = %land.lhs.true.27, %if.else.24
  %25 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst16, align 8
  %26 = load i64, i64* %__t18, align 8
  %call33 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %25, i64 %26) #5
  store i32 %call33, i32* %__r21, align 4
  br label %if.end.34

if.end.34:                                        ; preds = %if.else.32, %if.then.31
  br label %if.end.35

if.end.35:                                        ; preds = %if.end.34, %if.then.23
  %27 = load i32, i32* %__r21, align 4
  store i32 %27, i32* %tmp36
  %28 = load i32, i32* %tmp36
  %tobool37 = icmp ne i32 %28, 0
  br i1 %tobool37, label %if.then.38, label %if.end.49

if.then.38:                                       ; preds = %if.end.35
  %29 = load %struct._GtkWidget*, %struct._GtkWidget** %parent, align 8
  %30 = bitcast %struct._GtkWidget* %29 to %struct._GTypeInstance*
  %call40 = call i64 @gtk_paned_get_type() #4
  %call41 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %30, i64 %call40)
  %31 = bitcast %struct._GTypeInstance* %call41 to %struct._GtkPaned*
  store %struct._GtkPaned* %31, %struct._GtkPaned** %paned, align 8
  %32 = load %struct._GimpDockbook*, %struct._GimpDockbook** %dockbook.addr, align 8
  %33 = bitcast %struct._GimpDockbook* %32 to %struct._GTypeInstance*
  %call42 = call i64 @gtk_widget_get_type() #4
  %call43 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %33, i64 %call42)
  %34 = bitcast %struct._GTypeInstance* %call43 to %struct._GtkWidget*
  %35 = load %struct._GtkPaned*, %struct._GtkPaned** %paned, align 8
  %call44 = call %struct._GtkWidget* @gtk_paned_get_child2(%struct._GtkPaned* %35)
  %cmp45 = icmp eq %struct._GtkWidget* %34, %call44
  br i1 %cmp45, label %if.then.46, label %if.end.48

if.then.46:                                       ; preds = %if.then.38
  %36 = load %struct._GtkPaned*, %struct._GtkPaned** %paned, align 8
  %call47 = call i32 @gtk_paned_get_position(%struct._GtkPaned* %36)
  %37 = load %struct._GimpSessionInfoBook*, %struct._GimpSessionInfoBook** %info, align 8
  %position = getelementptr inbounds %struct._GimpSessionInfoBook, %struct._GimpSessionInfoBook* %37, i32 0, i32 0
  store i32 %call47, i32* %position, align 4
  br label %if.end.48

if.end.48:                                        ; preds = %if.then.46, %if.then.38
  br label %if.end.49

if.end.49:                                        ; preds = %if.end.48, %if.end.35
  %38 = load %struct._GimpDockbook*, %struct._GimpDockbook** %dockbook.addr, align 8
  %39 = bitcast %struct._GimpDockbook* %38 to %struct._GTypeInstance*
  %call50 = call i64 @gtk_notebook_get_type() #4
  %call51 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %39, i64 %call50)
  %40 = bitcast %struct._GTypeInstance* %call51 to %struct._GtkNotebook*
  %call52 = call i32 @gtk_notebook_get_current_page(%struct._GtkNotebook* %40)
  %41 = load %struct._GimpSessionInfoBook*, %struct._GimpSessionInfoBook** %info, align 8
  %current_page = getelementptr inbounds %struct._GimpSessionInfoBook, %struct._GimpSessionInfoBook* %41, i32 0, i32 1
  store i32 %call52, i32* %current_page, align 4
  %42 = load %struct._GimpDockbook*, %struct._GimpDockbook** %dockbook.addr, align 8
  %43 = bitcast %struct._GimpDockbook* %42 to %struct._GTypeInstance*
  %call53 = call i64 @gtk_container_get_type() #4
  %call54 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %43, i64 %call53)
  %44 = bitcast %struct._GTypeInstance* %call54 to %struct._GtkContainer*
  %call55 = call %struct._GList* @gtk_container_get_children(%struct._GtkContainer* %44)
  store %struct._GList* %call55, %struct._GList** %children, align 8
  %45 = load %struct._GList*, %struct._GList** %children, align 8
  store %struct._GList* %45, %struct._GList** %list, align 8
  br label %for.cond

for.cond:                                         ; preds = %cond.end, %if.end.49
  %46 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool56 = icmp ne %struct._GList* %46, null
  br i1 %tobool56, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %47 = load %struct._GList*, %struct._GList** %list, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %47, i32 0, i32 0
  %48 = load i8*, i8** %data, align 8
  %49 = bitcast i8* %48 to %struct._GimpDockable*
  %call58 = call %struct._GimpSessionInfoDockable* @gimp_session_info_dockable_from_widget(%struct._GimpDockable* %49)
  store %struct._GimpSessionInfoDockable* %call58, %struct._GimpSessionInfoDockable** %dockable, align 8
  %50 = load %struct._GimpSessionInfoBook*, %struct._GimpSessionInfoBook** %info, align 8
  %dockables = getelementptr inbounds %struct._GimpSessionInfoBook, %struct._GimpSessionInfoBook* %50, i32 0, i32 2
  %51 = load %struct._GList*, %struct._GList** %dockables, align 8
  %52 = load %struct._GimpSessionInfoDockable*, %struct._GimpSessionInfoDockable** %dockable, align 8
  %53 = bitcast %struct._GimpSessionInfoDockable* %52 to i8*
  %call59 = call %struct._GList* @g_list_prepend(%struct._GList* %51, i8* %53)
  %54 = load %struct._GimpSessionInfoBook*, %struct._GimpSessionInfoBook** %info, align 8
  %dockables60 = getelementptr inbounds %struct._GimpSessionInfoBook, %struct._GimpSessionInfoBook* %54, i32 0, i32 2
  store %struct._GList* %call59, %struct._GList** %dockables60, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %55 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool61 = icmp ne %struct._GList* %55, null
  br i1 %tobool61, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.inc
  %56 = load %struct._GList*, %struct._GList** %list, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %56, i32 0, i32 1
  %57 = load %struct._GList*, %struct._GList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.inc
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GList* [ %57, %cond.true ], [ null, %cond.false ]
  store %struct._GList* %cond, %struct._GList** %list, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %58 = load %struct._GimpSessionInfoBook*, %struct._GimpSessionInfoBook** %info, align 8
  %dockables62 = getelementptr inbounds %struct._GimpSessionInfoBook, %struct._GimpSessionInfoBook* %58, i32 0, i32 2
  %59 = load %struct._GList*, %struct._GList** %dockables62, align 8
  %call63 = call %struct._GList* @g_list_reverse(%struct._GList* %59)
  %60 = load %struct._GimpSessionInfoBook*, %struct._GimpSessionInfoBook** %info, align 8
  %dockables64 = getelementptr inbounds %struct._GimpSessionInfoBook, %struct._GimpSessionInfoBook* %60, i32 0, i32 2
  store %struct._GList* %call63, %struct._GList** %dockables64, align 8
  %61 = load %struct._GList*, %struct._GList** %children, align 8
  call void @g_list_free(%struct._GList* %61)
  %62 = load %struct._GimpSessionInfoBook*, %struct._GimpSessionInfoBook** %info, align 8
  store %struct._GimpSessionInfoBook* %62, %struct._GimpSessionInfoBook** %retval
  br label %return

return:                                           ; preds = %for.end, %if.else.9
  %63 = load %struct._GimpSessionInfoBook*, %struct._GimpSessionInfoBook** %retval
  ret %struct._GimpSessionInfoBook* %63
}

; Function Attrs: nounwind readnone
declare i64 @gimp_dockbook_get_type() #2

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #3

declare %struct._GtkWidget* @gtk_widget_get_parent(%struct._GtkWidget*) #1

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_widget_get_type() #2

; Function Attrs: nounwind readnone
declare i64 @gtk_paned_get_type() #2

declare %struct._GtkWidget* @gtk_paned_get_child2(%struct._GtkPaned*) #1

declare i32 @gtk_paned_get_position(%struct._GtkPaned*) #1

declare i32 @gtk_notebook_get_current_page(%struct._GtkNotebook*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_notebook_get_type() #2

declare %struct._GList* @gtk_container_get_children(%struct._GtkContainer*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_container_get_type() #2

declare %struct._GimpSessionInfoDockable* @gimp_session_info_dockable_from_widget(%struct._GimpDockable*) #1

declare %struct._GList* @g_list_prepend(%struct._GList*, i8*) #1

declare %struct._GList* @g_list_reverse(%struct._GList*) #1

declare void @g_list_free(%struct._GList*) #1

; Function Attrs: nounwind uwtable
define %struct._GimpDockbook* @gimp_session_info_book_restore(%struct._GimpSessionInfoBook* %info, %struct._GimpDock* %dock) #0 {
entry:
  %retval = alloca %struct._GimpDockbook*, align 8
  %info.addr = alloca %struct._GimpSessionInfoBook*, align 8
  %dock.addr = alloca %struct._GimpDock*, align 8
  %dockbook = alloca %struct._GtkWidget*, align 8
  %pages = alloca %struct._GList*, align 8
  %n_dockables = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %dockable_info = alloca %struct._GimpSessionInfoDockable*, align 8
  %dockable = alloca %struct._GimpDockable*, align 8
  store %struct._GimpSessionInfoBook* %info, %struct._GimpSessionInfoBook** %info.addr, align 8
  store %struct._GimpDock* %dock, %struct._GimpDock** %dock.addr, align 8
  store i32 0, i32* %n_dockables, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpSessionInfoBook*, %struct._GimpSessionInfoBook** %info.addr, align 8
  %cmp = icmp ne %struct._GimpSessionInfoBook* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.gimp_session_info_book_restore, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0))
  store %struct._GimpDockbook* null, %struct._GimpDockbook** %retval
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.gimp_session_info_book_restore, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.11, i32 0, i32 0))
  store %struct._GimpDockbook* null, %struct._GimpDockbook** %retval
  br label %return

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  %14 = load %struct._GimpMenuFactory*, %struct._GimpMenuFactory** @global_menu_factory, align 8
  %call17 = call %struct._GtkWidget* @gimp_dockbook_new(%struct._GimpMenuFactory* %14)
  store %struct._GtkWidget* %call17, %struct._GtkWidget** %dockbook, align 8
  %15 = load %struct._GimpDock*, %struct._GimpDock** %dock.addr, align 8
  %16 = load %struct._GtkWidget*, %struct._GtkWidget** %dockbook, align 8
  %17 = bitcast %struct._GtkWidget* %16 to %struct._GTypeInstance*
  %call18 = call i64 @gimp_dockbook_get_type() #4
  %call19 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %17, i64 %call18)
  %18 = bitcast %struct._GTypeInstance* %call19 to %struct._GimpDockbook*
  call void @gimp_dock_add_book(%struct._GimpDock* %15, %struct._GimpDockbook* %18, i32 -1)
  %19 = load %struct._GimpSessionInfoBook*, %struct._GimpSessionInfoBook** %info.addr, align 8
  %dockables = getelementptr inbounds %struct._GimpSessionInfoBook, %struct._GimpSessionInfoBook* %19, i32 0, i32 2
  %20 = load %struct._GList*, %struct._GList** %dockables, align 8
  store %struct._GList* %20, %struct._GList** %pages, align 8
  br label %for.cond

for.cond:                                         ; preds = %cond.end, %do.end.16
  %21 = load %struct._GList*, %struct._GList** %pages, align 8
  %tobool20 = icmp ne %struct._GList* %21, null
  br i1 %tobool20, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %22 = load %struct._GList*, %struct._GList** %pages, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %22, i32 0, i32 0
  %23 = load i8*, i8** %data, align 8
  %24 = bitcast i8* %23 to %struct._GimpSessionInfoDockable*
  store %struct._GimpSessionInfoDockable* %24, %struct._GimpSessionInfoDockable** %dockable_info, align 8
  %25 = load %struct._GimpSessionInfoDockable*, %struct._GimpSessionInfoDockable** %dockable_info, align 8
  %26 = load %struct._GimpDock*, %struct._GimpDock** %dock.addr, align 8
  %call23 = call %struct._GimpDockable* @gimp_session_info_dockable_restore(%struct._GimpSessionInfoDockable* %25, %struct._GimpDock* %26)
  store %struct._GimpDockable* %call23, %struct._GimpDockable** %dockable, align 8
  %27 = load %struct._GimpDockable*, %struct._GimpDockable** %dockable, align 8
  %tobool24 = icmp ne %struct._GimpDockable* %27, null
  br i1 %tobool24, label %if.then.25, label %if.end.28

if.then.25:                                       ; preds = %for.body
  %28 = load %struct._GtkWidget*, %struct._GtkWidget** %dockbook, align 8
  %29 = bitcast %struct._GtkWidget* %28 to %struct._GTypeInstance*
  %call26 = call i64 @gimp_dockbook_get_type() #4
  %call27 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %29, i64 %call26)
  %30 = bitcast %struct._GTypeInstance* %call27 to %struct._GimpDockbook*
  %31 = load %struct._GimpDockable*, %struct._GimpDockable** %dockable, align 8
  call void @gimp_dockbook_add(%struct._GimpDockbook* %30, %struct._GimpDockable* %31, i32 -1)
  %32 = load i32, i32* %n_dockables, align 4
  %inc = add nsw i32 %32, 1
  store i32 %inc, i32* %n_dockables, align 4
  br label %if.end.28

if.end.28:                                        ; preds = %if.then.25, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.28
  %33 = load %struct._GList*, %struct._GList** %pages, align 8
  %tobool29 = icmp ne %struct._GList* %33, null
  br i1 %tobool29, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.inc
  %34 = load %struct._GList*, %struct._GList** %pages, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %34, i32 0, i32 1
  %35 = load %struct._GList*, %struct._GList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.inc
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GList* [ %35, %cond.true ], [ null, %cond.false ]
  store %struct._GList* %cond, %struct._GList** %pages, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %36 = load %struct._GimpSessionInfoBook*, %struct._GimpSessionInfoBook** %info.addr, align 8
  %current_page = getelementptr inbounds %struct._GimpSessionInfoBook, %struct._GimpSessionInfoBook* %36, i32 0, i32 1
  %37 = load i32, i32* %current_page, align 4
  %38 = load %struct._GtkWidget*, %struct._GtkWidget** %dockbook, align 8
  %39 = bitcast %struct._GtkWidget* %38 to %struct._GTypeInstance*
  %call30 = call i64 @gtk_notebook_get_type() #4
  %call31 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %39, i64 %call30)
  %40 = bitcast %struct._GTypeInstance* %call31 to %struct._GtkNotebook*
  %call32 = call i32 @gtk_notebook_get_n_pages(%struct._GtkNotebook* %40)
  %cmp33 = icmp slt i32 %37, %call32
  br i1 %cmp33, label %if.then.34, label %if.else.38

if.then.34:                                       ; preds = %for.end
  %41 = load %struct._GtkWidget*, %struct._GtkWidget** %dockbook, align 8
  %42 = bitcast %struct._GtkWidget* %41 to %struct._GTypeInstance*
  %call35 = call i64 @gtk_notebook_get_type() #4
  %call36 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %42, i64 %call35)
  %43 = bitcast %struct._GTypeInstance* %call36 to %struct._GtkNotebook*
  %44 = load %struct._GimpSessionInfoBook*, %struct._GimpSessionInfoBook** %info.addr, align 8
  %current_page37 = getelementptr inbounds %struct._GimpSessionInfoBook, %struct._GimpSessionInfoBook* %44, i32 0, i32 1
  %45 = load i32, i32* %current_page37, align 4
  call void @gtk_notebook_set_current_page(%struct._GtkNotebook* %43, i32 %45)
  br label %if.end.44

if.else.38:                                       ; preds = %for.end
  %46 = load i32, i32* %n_dockables, align 4
  %cmp39 = icmp sgt i32 %46, 1
  br i1 %cmp39, label %if.then.40, label %if.end.43

if.then.40:                                       ; preds = %if.else.38
  %47 = load %struct._GtkWidget*, %struct._GtkWidget** %dockbook, align 8
  %48 = bitcast %struct._GtkWidget* %47 to %struct._GTypeInstance*
  %call41 = call i64 @gtk_notebook_get_type() #4
  %call42 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %48, i64 %call41)
  %49 = bitcast %struct._GTypeInstance* %call42 to %struct._GtkNotebook*
  call void @gtk_notebook_set_current_page(%struct._GtkNotebook* %49, i32 0)
  br label %if.end.43

if.end.43:                                        ; preds = %if.then.40, %if.else.38
  br label %if.end.44

if.end.44:                                        ; preds = %if.end.43, %if.then.34
  %50 = load %struct._GtkWidget*, %struct._GtkWidget** %dockbook, align 8
  %51 = bitcast %struct._GtkWidget* %50 to %struct._GTypeInstance*
  %call45 = call i64 @gimp_dockbook_get_type() #4
  %call46 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %51, i64 %call45)
  %52 = bitcast %struct._GTypeInstance* %call46 to %struct._GimpDockbook*
  store %struct._GimpDockbook* %52, %struct._GimpDockbook** %retval
  br label %return

return:                                           ; preds = %if.end.44, %if.else.14, %if.else
  %53 = load %struct._GimpDockbook*, %struct._GimpDockbook** %retval
  ret %struct._GimpDockbook* %53
}

; Function Attrs: nounwind readnone
declare i64 @gimp_dock_get_type() #2

declare %struct._GtkWidget* @gimp_dockbook_new(%struct._GimpMenuFactory*) #1

declare void @gimp_dock_add_book(%struct._GimpDock*, %struct._GimpDockbook*, i32) #1

declare %struct._GimpDockable* @gimp_session_info_dockable_restore(%struct._GimpSessionInfoDockable*, %struct._GimpDock*) #1

declare void @gimp_dockbook_add(%struct._GimpDockbook*, %struct._GimpDockable*, i32) #1

declare i32 @gtk_notebook_get_n_pages(%struct._GtkNotebook*) #1

declare void @gtk_notebook_set_current_page(%struct._GtkNotebook*, i32) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone }
attributes #5 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
