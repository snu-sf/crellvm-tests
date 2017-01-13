; ModuleID = './plug-ins/imagemap/imap_statusbar.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.StatusBar_t = type { %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, i32, i32, i32 }
%struct._GtkWidget = type { %struct._GtkObject, i16, i8, i8, i8*, %struct._GtkStyle*, %struct._GtkRequisition, %struct._GdkRectangle, %struct._GdkDrawable*, %struct._GtkWidget* }
%struct._GtkObject = type { %struct._GObject, i32 }
%struct._GObject = type { %struct._GTypeInstance, i32, %struct._GData* }
%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GData = type opaque
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
%struct._GtkBox = type { %struct._GtkContainer, %struct._GList*, i16, i8 }
%struct._GtkContainer = type { %struct._GtkWidget, %struct._GtkWidget*, i24 }
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct._GtkStatusbar = type { %struct._GtkHBox, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GSList*, %struct._GSList*, i32, i32, %struct._GdkDrawable*, i8 }
%struct._GtkHBox = type { %struct._GtkBox }
%struct._GtkEditable = type opaque
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct._GtkEntry = type { %struct._GtkWidget, i8*, i8, i16, i16, %struct._GdkDrawable*, %struct._GtkIMContext*, %struct._GtkWidget*, i32, i32, %struct._PangoLayout*, i16, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i32, i32, i32, i32, i32 }
%struct._GtkIMContext = type { %struct._GObject }
%struct._PangoLayout = type opaque

@.str = private unnamed_addr constant [15 x i8] c"general_status\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"imap-coord\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"imap-dimension\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"zoom_status\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"%d, %d\00", align 1
@.str.5 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"%d \C3\97 %d\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"1:%d\00", align 1

; Function Attrs: nounwind uwtable
define %struct.StatusBar_t* @make_statusbar(%struct._GtkWidget* %main_vbox, %struct._GtkWidget* %window) #0 {
entry:
  %main_vbox.addr = alloca %struct._GtkWidget*, align 8
  %window.addr = alloca %struct._GtkWidget*, align 8
  %statusbar = alloca %struct.StatusBar_t*, align 8
  %hbox = alloca %struct._GtkWidget*, align 8
  %iconw = alloca %struct._GtkWidget*, align 8
  store %struct._GtkWidget* %main_vbox, %struct._GtkWidget** %main_vbox.addr, align 8
  store %struct._GtkWidget* %window, %struct._GtkWidget** %window.addr, align 8
  %call = call noalias i8* @g_malloc_n(i64 1, i64 48)
  %0 = bitcast i8* %call to %struct.StatusBar_t*
  store %struct.StatusBar_t* %0, %struct.StatusBar_t** %statusbar, align 8
  %call1 = call %struct._GtkWidget* @gtk_box_new(i32 0, i32 1)
  store %struct._GtkWidget* %call1, %struct._GtkWidget** %hbox, align 8
  %1 = load %struct._GtkWidget*, %struct._GtkWidget** %main_vbox.addr, align 8
  %2 = bitcast %struct._GtkWidget* %1 to %struct._GTypeInstance*
  %call2 = call i64 @gtk_box_get_type() #5
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %2, i64 %call2)
  %3 = bitcast %struct._GTypeInstance* %call3 to %struct._GtkBox*
  %4 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %3, %struct._GtkWidget* %4, i32 0, i32 0, i32 0)
  %call4 = call %struct._GtkWidget* @gtk_statusbar_new()
  %5 = load %struct.StatusBar_t*, %struct.StatusBar_t** %statusbar, align 8
  %status = getelementptr inbounds %struct.StatusBar_t, %struct.StatusBar_t* %5, i32 0, i32 0
  store %struct._GtkWidget* %call4, %struct._GtkWidget** %status, align 8
  %6 = load %struct.StatusBar_t*, %struct.StatusBar_t** %statusbar, align 8
  %status5 = getelementptr inbounds %struct.StatusBar_t, %struct.StatusBar_t* %6, i32 0, i32 0
  %7 = load %struct._GtkWidget*, %struct._GtkWidget** %status5, align 8
  %8 = bitcast %struct._GtkWidget* %7 to %struct._GTypeInstance*
  %call6 = call i64 @gtk_statusbar_get_type() #5
  %call7 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %8, i64 %call6)
  %9 = bitcast %struct._GTypeInstance* %call7 to %struct._GtkStatusbar*
  %call8 = call i32 @gtk_statusbar_get_context_id(%struct._GtkStatusbar* %9, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0))
  %10 = load %struct.StatusBar_t*, %struct.StatusBar_t** %statusbar, align 8
  %status_id = getelementptr inbounds %struct.StatusBar_t, %struct.StatusBar_t* %10, i32 0, i32 4
  store i32 %call8, i32* %status_id, align 4
  %11 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %12 = bitcast %struct._GtkWidget* %11 to %struct._GTypeInstance*
  %call9 = call i64 @gtk_box_get_type() #5
  %call10 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %12, i64 %call9)
  %13 = bitcast %struct._GTypeInstance* %call10 to %struct._GtkBox*
  %14 = load %struct.StatusBar_t*, %struct.StatusBar_t** %statusbar, align 8
  %status11 = getelementptr inbounds %struct.StatusBar_t, %struct.StatusBar_t* %14, i32 0, i32 0
  %15 = load %struct._GtkWidget*, %struct._GtkWidget** %status11, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %13, %struct._GtkWidget* %15, i32 1, i32 1, i32 0)
  %16 = load %struct.StatusBar_t*, %struct.StatusBar_t** %statusbar, align 8
  %status12 = getelementptr inbounds %struct.StatusBar_t, %struct.StatusBar_t* %16, i32 0, i32 0
  %17 = load %struct._GtkWidget*, %struct._GtkWidget** %status12, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %17)
  %call13 = call %struct._GtkWidget* @gtk_image_new_from_stock(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 2)
  store %struct._GtkWidget* %call13, %struct._GtkWidget** %iconw, align 8
  %18 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %19 = bitcast %struct._GtkWidget* %18 to %struct._GTypeInstance*
  %call14 = call i64 @gtk_box_get_type() #5
  %call15 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %19, i64 %call14)
  %20 = bitcast %struct._GTypeInstance* %call15 to %struct._GtkBox*
  %21 = load %struct._GtkWidget*, %struct._GtkWidget** %iconw, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %20, %struct._GtkWidget* %21, i32 0, i32 0, i32 10)
  %22 = load %struct._GtkWidget*, %struct._GtkWidget** %iconw, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %22)
  %call16 = call %struct._GtkWidget* @gtk_entry_new()
  %23 = load %struct.StatusBar_t*, %struct.StatusBar_t** %statusbar, align 8
  %xy = getelementptr inbounds %struct.StatusBar_t, %struct.StatusBar_t* %23, i32 0, i32 1
  store %struct._GtkWidget* %call16, %struct._GtkWidget** %xy, align 8
  %24 = load %struct.StatusBar_t*, %struct.StatusBar_t** %statusbar, align 8
  %xy17 = getelementptr inbounds %struct.StatusBar_t, %struct.StatusBar_t* %24, i32 0, i32 1
  %25 = load %struct._GtkWidget*, %struct._GtkWidget** %xy17, align 8
  call void @gtk_widget_set_size_request(%struct._GtkWidget* %25, i32 96, i32 -1)
  %26 = load %struct.StatusBar_t*, %struct.StatusBar_t** %statusbar, align 8
  %xy18 = getelementptr inbounds %struct.StatusBar_t, %struct.StatusBar_t* %26, i32 0, i32 1
  %27 = load %struct._GtkWidget*, %struct._GtkWidget** %xy18, align 8
  %28 = bitcast %struct._GtkWidget* %27 to %struct._GTypeInstance*
  %call19 = call i64 @gtk_editable_get_type() #5
  %call20 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %28, i64 %call19)
  %29 = bitcast %struct._GTypeInstance* %call20 to %struct._GtkEditable*
  call void @gtk_editable_set_editable(%struct._GtkEditable* %29, i32 0)
  %30 = load %struct.StatusBar_t*, %struct.StatusBar_t** %statusbar, align 8
  %xy21 = getelementptr inbounds %struct.StatusBar_t, %struct.StatusBar_t* %30, i32 0, i32 1
  %31 = load %struct._GtkWidget*, %struct._GtkWidget** %xy21, align 8
  call void @gtk_widget_set_can_focus(%struct._GtkWidget* %31, i32 0)
  %32 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %33 = bitcast %struct._GtkWidget* %32 to %struct._GTypeInstance*
  %call22 = call i64 @gtk_box_get_type() #5
  %call23 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %33, i64 %call22)
  %34 = bitcast %struct._GTypeInstance* %call23 to %struct._GtkBox*
  %35 = load %struct.StatusBar_t*, %struct.StatusBar_t** %statusbar, align 8
  %xy24 = getelementptr inbounds %struct.StatusBar_t, %struct.StatusBar_t* %35, i32 0, i32 1
  %36 = load %struct._GtkWidget*, %struct._GtkWidget** %xy24, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %34, %struct._GtkWidget* %36, i32 0, i32 0, i32 0)
  %37 = load %struct.StatusBar_t*, %struct.StatusBar_t** %statusbar, align 8
  %xy25 = getelementptr inbounds %struct.StatusBar_t, %struct.StatusBar_t* %37, i32 0, i32 1
  %38 = load %struct._GtkWidget*, %struct._GtkWidget** %xy25, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %38)
  %call26 = call %struct._GtkWidget* @gtk_image_new_from_stock(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0), i32 2)
  store %struct._GtkWidget* %call26, %struct._GtkWidget** %iconw, align 8
  %39 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %40 = bitcast %struct._GtkWidget* %39 to %struct._GTypeInstance*
  %call27 = call i64 @gtk_box_get_type() #5
  %call28 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %40, i64 %call27)
  %41 = bitcast %struct._GTypeInstance* %call28 to %struct._GtkBox*
  %42 = load %struct._GtkWidget*, %struct._GtkWidget** %iconw, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %41, %struct._GtkWidget* %42, i32 0, i32 0, i32 10)
  %43 = load %struct._GtkWidget*, %struct._GtkWidget** %iconw, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %43)
  %call29 = call %struct._GtkWidget* @gtk_entry_new()
  %44 = load %struct.StatusBar_t*, %struct.StatusBar_t** %statusbar, align 8
  %dimension = getelementptr inbounds %struct.StatusBar_t, %struct.StatusBar_t* %44, i32 0, i32 2
  store %struct._GtkWidget* %call29, %struct._GtkWidget** %dimension, align 8
  %45 = load %struct.StatusBar_t*, %struct.StatusBar_t** %statusbar, align 8
  %dimension30 = getelementptr inbounds %struct.StatusBar_t, %struct.StatusBar_t* %45, i32 0, i32 2
  %46 = load %struct._GtkWidget*, %struct._GtkWidget** %dimension30, align 8
  call void @gtk_widget_set_size_request(%struct._GtkWidget* %46, i32 96, i32 -1)
  %47 = load %struct.StatusBar_t*, %struct.StatusBar_t** %statusbar, align 8
  %dimension31 = getelementptr inbounds %struct.StatusBar_t, %struct.StatusBar_t* %47, i32 0, i32 2
  %48 = load %struct._GtkWidget*, %struct._GtkWidget** %dimension31, align 8
  %49 = bitcast %struct._GtkWidget* %48 to %struct._GTypeInstance*
  %call32 = call i64 @gtk_editable_get_type() #5
  %call33 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %49, i64 %call32)
  %50 = bitcast %struct._GTypeInstance* %call33 to %struct._GtkEditable*
  call void @gtk_editable_set_editable(%struct._GtkEditable* %50, i32 0)
  %51 = load %struct.StatusBar_t*, %struct.StatusBar_t** %statusbar, align 8
  %dimension34 = getelementptr inbounds %struct.StatusBar_t, %struct.StatusBar_t* %51, i32 0, i32 2
  %52 = load %struct._GtkWidget*, %struct._GtkWidget** %dimension34, align 8
  call void @gtk_widget_set_can_focus(%struct._GtkWidget* %52, i32 0)
  %53 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %54 = bitcast %struct._GtkWidget* %53 to %struct._GTypeInstance*
  %call35 = call i64 @gtk_box_get_type() #5
  %call36 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %54, i64 %call35)
  %55 = bitcast %struct._GTypeInstance* %call36 to %struct._GtkBox*
  %56 = load %struct.StatusBar_t*, %struct.StatusBar_t** %statusbar, align 8
  %dimension37 = getelementptr inbounds %struct.StatusBar_t, %struct.StatusBar_t* %56, i32 0, i32 2
  %57 = load %struct._GtkWidget*, %struct._GtkWidget** %dimension37, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %55, %struct._GtkWidget* %57, i32 0, i32 0, i32 0)
  %58 = load %struct.StatusBar_t*, %struct.StatusBar_t** %statusbar, align 8
  %dimension38 = getelementptr inbounds %struct.StatusBar_t, %struct.StatusBar_t* %58, i32 0, i32 2
  %59 = load %struct._GtkWidget*, %struct._GtkWidget** %dimension38, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %59)
  %call39 = call %struct._GtkWidget* @gtk_statusbar_new()
  %60 = load %struct.StatusBar_t*, %struct.StatusBar_t** %statusbar, align 8
  %zoom = getelementptr inbounds %struct.StatusBar_t, %struct.StatusBar_t* %60, i32 0, i32 3
  store %struct._GtkWidget* %call39, %struct._GtkWidget** %zoom, align 8
  %61 = load %struct.StatusBar_t*, %struct.StatusBar_t** %statusbar, align 8
  %zoom40 = getelementptr inbounds %struct.StatusBar_t, %struct.StatusBar_t* %61, i32 0, i32 3
  %62 = load %struct._GtkWidget*, %struct._GtkWidget** %zoom40, align 8
  call void @gtk_widget_set_size_request(%struct._GtkWidget* %62, i32 48, i32 -1)
  %63 = load %struct.StatusBar_t*, %struct.StatusBar_t** %statusbar, align 8
  %zoom41 = getelementptr inbounds %struct.StatusBar_t, %struct.StatusBar_t* %63, i32 0, i32 3
  %64 = load %struct._GtkWidget*, %struct._GtkWidget** %zoom41, align 8
  %65 = bitcast %struct._GtkWidget* %64 to %struct._GTypeInstance*
  %call42 = call i64 @gtk_statusbar_get_type() #5
  %call43 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %65, i64 %call42)
  %66 = bitcast %struct._GTypeInstance* %call43 to %struct._GtkStatusbar*
  %call44 = call i32 @gtk_statusbar_get_context_id(%struct._GtkStatusbar* %66, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i32 0, i32 0))
  %67 = load %struct.StatusBar_t*, %struct.StatusBar_t** %statusbar, align 8
  %zoom_id = getelementptr inbounds %struct.StatusBar_t, %struct.StatusBar_t* %67, i32 0, i32 6
  store i32 %call44, i32* %zoom_id, align 4
  %68 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %69 = bitcast %struct._GtkWidget* %68 to %struct._GTypeInstance*
  %call45 = call i64 @gtk_box_get_type() #5
  %call46 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %69, i64 %call45)
  %70 = bitcast %struct._GTypeInstance* %call46 to %struct._GtkBox*
  %71 = load %struct.StatusBar_t*, %struct.StatusBar_t** %statusbar, align 8
  %zoom47 = getelementptr inbounds %struct.StatusBar_t, %struct.StatusBar_t* %71, i32 0, i32 3
  %72 = load %struct._GtkWidget*, %struct._GtkWidget** %zoom47, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %70, %struct._GtkWidget* %72, i32 0, i32 0, i32 5)
  %73 = load %struct.StatusBar_t*, %struct.StatusBar_t** %statusbar, align 8
  %zoom48 = getelementptr inbounds %struct.StatusBar_t, %struct.StatusBar_t* %73, i32 0, i32 3
  %74 = load %struct._GtkWidget*, %struct._GtkWidget** %zoom48, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %74)
  %75 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %75)
  %76 = load %struct.StatusBar_t*, %struct.StatusBar_t** %statusbar, align 8
  ret %struct.StatusBar_t* %76
}

declare noalias i8* @g_malloc_n(i64, i64) #1

declare %struct._GtkWidget* @gtk_box_new(i32, i32) #1

declare void @gtk_box_pack_start(%struct._GtkBox*, %struct._GtkWidget*, i32, i32, i32) #1

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_box_get_type() #2

declare %struct._GtkWidget* @gtk_statusbar_new() #1

declare i32 @gtk_statusbar_get_context_id(%struct._GtkStatusbar*, i8*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_statusbar_get_type() #2

declare void @gtk_widget_show(%struct._GtkWidget*) #1

declare %struct._GtkWidget* @gtk_image_new_from_stock(i8*, i32) #1

declare %struct._GtkWidget* @gtk_entry_new() #1

declare void @gtk_widget_set_size_request(%struct._GtkWidget*, i32, i32) #1

declare void @gtk_editable_set_editable(%struct._GtkEditable*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_editable_get_type() #2

declare void @gtk_widget_set_can_focus(%struct._GtkWidget*, i32) #1

; Function Attrs: nounwind uwtable
define void @statusbar_set_status(%struct.StatusBar_t* %statusbar, i8* %format, ...) #0 {
entry:
  %statusbar.addr = alloca %struct.StatusBar_t*, align 8
  %format.addr = alloca i8*, align 8
  %ap = alloca [1 x %struct.__va_list_tag], align 16
  %str = alloca i8*, align 8
  store %struct.StatusBar_t* %statusbar, %struct.StatusBar_t** %statusbar.addr, align 8
  store i8* %format, i8** %format.addr, align 8
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay1)
  %0 = load i8*, i8** %format.addr, align 8
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %call = call noalias i8* @g_strdup_vprintf(i8* %0, %struct.__va_list_tag* %arraydecay2)
  store i8* %call, i8** %str, align 8
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*
  call void @llvm.va_end(i8* %arraydecay34)
  %1 = load %struct.StatusBar_t*, %struct.StatusBar_t** %statusbar.addr, align 8
  call void @statusbar_clear_status(%struct.StatusBar_t* %1)
  %2 = load %struct.StatusBar_t*, %struct.StatusBar_t** %statusbar.addr, align 8
  %status = getelementptr inbounds %struct.StatusBar_t, %struct.StatusBar_t* %2, i32 0, i32 0
  %3 = load %struct._GtkWidget*, %struct._GtkWidget** %status, align 8
  %4 = bitcast %struct._GtkWidget* %3 to %struct._GTypeInstance*
  %call5 = call i64 @gtk_statusbar_get_type() #5
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call5)
  %5 = bitcast %struct._GTypeInstance* %call6 to %struct._GtkStatusbar*
  %6 = load %struct.StatusBar_t*, %struct.StatusBar_t** %statusbar.addr, align 8
  %status_id = getelementptr inbounds %struct.StatusBar_t, %struct.StatusBar_t* %6, i32 0, i32 4
  %7 = load i32, i32* %status_id, align 4
  %8 = load i8*, i8** %str, align 8
  %call7 = call i32 @gtk_statusbar_push(%struct._GtkStatusbar* %5, i32 %7, i8* %8)
  %9 = load %struct.StatusBar_t*, %struct.StatusBar_t** %statusbar.addr, align 8
  %message_id = getelementptr inbounds %struct.StatusBar_t, %struct.StatusBar_t* %9, i32 0, i32 5
  store i32 %call7, i32* %message_id, align 4
  %10 = load i8*, i8** %str, align 8
  call void @g_free(i8* %10)
  ret void
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #3

declare noalias i8* @g_strdup_vprintf(i8*, %struct.__va_list_tag*) #1

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #3

; Function Attrs: nounwind uwtable
define void @statusbar_clear_status(%struct.StatusBar_t* %statusbar) #0 {
entry:
  %statusbar.addr = alloca %struct.StatusBar_t*, align 8
  store %struct.StatusBar_t* %statusbar, %struct.StatusBar_t** %statusbar.addr, align 8
  %0 = load %struct.StatusBar_t*, %struct.StatusBar_t** %statusbar.addr, align 8
  %message_id = getelementptr inbounds %struct.StatusBar_t, %struct.StatusBar_t* %0, i32 0, i32 5
  %1 = load i32, i32* %message_id, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.StatusBar_t*, %struct.StatusBar_t** %statusbar.addr, align 8
  %status = getelementptr inbounds %struct.StatusBar_t, %struct.StatusBar_t* %2, i32 0, i32 0
  %3 = load %struct._GtkWidget*, %struct._GtkWidget** %status, align 8
  %4 = bitcast %struct._GtkWidget* %3 to %struct._GTypeInstance*
  %call = call i64 @gtk_statusbar_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call)
  %5 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkStatusbar*
  %6 = load %struct.StatusBar_t*, %struct.StatusBar_t** %statusbar.addr, align 8
  %status_id = getelementptr inbounds %struct.StatusBar_t, %struct.StatusBar_t* %6, i32 0, i32 4
  %7 = load i32, i32* %status_id, align 4
  %8 = load %struct.StatusBar_t*, %struct.StatusBar_t** %statusbar.addr, align 8
  %message_id2 = getelementptr inbounds %struct.StatusBar_t, %struct.StatusBar_t* %8, i32 0, i32 5
  %9 = load i32, i32* %message_id2, align 4
  call void @gtk_statusbar_remove(%struct._GtkStatusbar* %5, i32 %7, i32 %9)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare i32 @gtk_statusbar_push(%struct._GtkStatusbar*, i32, i8*) #1

declare void @g_free(i8*) #1

declare void @gtk_statusbar_remove(%struct._GtkStatusbar*, i32, i32) #1

; Function Attrs: nounwind uwtable
define void @statusbar_set_xy(%struct.StatusBar_t* %statusbar, i32 %x, i32 %y) #0 {
entry:
  %statusbar.addr = alloca %struct.StatusBar_t*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %scratch = alloca [16 x i8], align 16
  store %struct.StatusBar_t* %statusbar, %struct.StatusBar_t** %statusbar.addr, align 8
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  %arraydecay = getelementptr inbounds [16 x i8], [16 x i8]* %scratch, i32 0, i32 0
  %0 = load i32, i32* %x.addr, align 4
  %1 = load i32, i32* %y.addr, align 4
  %call = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i32 0, i32 0), i32 %0, i32 %1) #3
  %2 = load %struct.StatusBar_t*, %struct.StatusBar_t** %statusbar.addr, align 8
  %xy = getelementptr inbounds %struct.StatusBar_t, %struct.StatusBar_t* %2, i32 0, i32 1
  %3 = load %struct._GtkWidget*, %struct._GtkWidget** %xy, align 8
  %4 = bitcast %struct._GtkWidget* %3 to %struct._GTypeInstance*
  %call1 = call i64 @gtk_entry_get_type() #5
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call1)
  %5 = bitcast %struct._GTypeInstance* %call2 to %struct._GtkEntry*
  %arraydecay3 = getelementptr inbounds [16 x i8], [16 x i8]* %scratch, i32 0, i32 0
  call void @gtk_entry_set_text(%struct._GtkEntry* %5, i8* %arraydecay3)
  ret void
}

; Function Attrs: nounwind
declare i32 @sprintf(i8*, i8*, ...) #4

declare void @gtk_entry_set_text(%struct._GtkEntry*, i8*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_entry_get_type() #2

; Function Attrs: nounwind uwtable
define void @statusbar_clear_xy(%struct.StatusBar_t* %statusbar) #0 {
entry:
  %statusbar.addr = alloca %struct.StatusBar_t*, align 8
  store %struct.StatusBar_t* %statusbar, %struct.StatusBar_t** %statusbar.addr, align 8
  %0 = load %struct.StatusBar_t*, %struct.StatusBar_t** %statusbar.addr, align 8
  %xy = getelementptr inbounds %struct.StatusBar_t, %struct.StatusBar_t* %0, i32 0, i32 1
  %1 = load %struct._GtkWidget*, %struct._GtkWidget** %xy, align 8
  %2 = bitcast %struct._GtkWidget* %1 to %struct._GTypeInstance*
  %call = call i64 @gtk_entry_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %2, i64 %call)
  %3 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkEntry*
  call void @gtk_entry_set_text(%struct._GtkEntry* %3, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i32 0, i32 0))
  ret void
}

; Function Attrs: nounwind uwtable
define void @statusbar_set_dimension(%struct.StatusBar_t* %statusbar, i32 %w, i32 %h) #0 {
entry:
  %statusbar.addr = alloca %struct.StatusBar_t*, align 8
  %w.addr = alloca i32, align 4
  %h.addr = alloca i32, align 4
  %scratch = alloca [16 x i8], align 16
  store %struct.StatusBar_t* %statusbar, %struct.StatusBar_t** %statusbar.addr, align 8
  store i32 %w, i32* %w.addr, align 4
  store i32 %h, i32* %h.addr, align 4
  %arraydecay = getelementptr inbounds [16 x i8], [16 x i8]* %scratch, i32 0, i32 0
  %0 = load i32, i32* %w.addr, align 4
  %1 = load i32, i32* %h.addr, align 4
  %call = call i32 (i8*, i64, i8*, ...) @g_snprintf(i8* %arraydecay, i64 16, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i32 0, i32 0), i32 %0, i32 %1)
  %2 = load %struct.StatusBar_t*, %struct.StatusBar_t** %statusbar.addr, align 8
  %dimension = getelementptr inbounds %struct.StatusBar_t, %struct.StatusBar_t* %2, i32 0, i32 2
  %3 = load %struct._GtkWidget*, %struct._GtkWidget** %dimension, align 8
  %4 = bitcast %struct._GtkWidget* %3 to %struct._GTypeInstance*
  %call1 = call i64 @gtk_entry_get_type() #5
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call1)
  %5 = bitcast %struct._GTypeInstance* %call2 to %struct._GtkEntry*
  %arraydecay3 = getelementptr inbounds [16 x i8], [16 x i8]* %scratch, i32 0, i32 0
  call void @gtk_entry_set_text(%struct._GtkEntry* %5, i8* %arraydecay3)
  ret void
}

declare i32 @g_snprintf(i8*, i64, i8*, ...) #1

; Function Attrs: nounwind uwtable
define void @statusbar_clear_dimension(%struct.StatusBar_t* %statusbar) #0 {
entry:
  %statusbar.addr = alloca %struct.StatusBar_t*, align 8
  store %struct.StatusBar_t* %statusbar, %struct.StatusBar_t** %statusbar.addr, align 8
  %0 = load %struct.StatusBar_t*, %struct.StatusBar_t** %statusbar.addr, align 8
  %dimension = getelementptr inbounds %struct.StatusBar_t, %struct.StatusBar_t* %0, i32 0, i32 2
  %1 = load %struct._GtkWidget*, %struct._GtkWidget** %dimension, align 8
  %2 = bitcast %struct._GtkWidget* %1 to %struct._GTypeInstance*
  %call = call i64 @gtk_entry_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %2, i64 %call)
  %3 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkEntry*
  call void @gtk_entry_set_text(%struct._GtkEntry* %3, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i32 0, i32 0))
  ret void
}

; Function Attrs: nounwind uwtable
define void @statusbar_set_zoom(%struct.StatusBar_t* %statusbar, i32 %factor) #0 {
entry:
  %statusbar.addr = alloca %struct.StatusBar_t*, align 8
  %factor.addr = alloca i32, align 4
  %scratch = alloca [16 x i8], align 16
  store %struct.StatusBar_t* %statusbar, %struct.StatusBar_t** %statusbar.addr, align 8
  store i32 %factor, i32* %factor.addr, align 4
  %arraydecay = getelementptr inbounds [16 x i8], [16 x i8]* %scratch, i32 0, i32 0
  %0 = load i32, i32* %factor.addr, align 4
  %call = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i32 0, i32 0), i32 %0) #3
  %1 = load %struct.StatusBar_t*, %struct.StatusBar_t** %statusbar.addr, align 8
  %zoom = getelementptr inbounds %struct.StatusBar_t, %struct.StatusBar_t* %1, i32 0, i32 3
  %2 = load %struct._GtkWidget*, %struct._GtkWidget** %zoom, align 8
  %3 = bitcast %struct._GtkWidget* %2 to %struct._GTypeInstance*
  %call1 = call i64 @gtk_statusbar_get_type() #5
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %3, i64 %call1)
  %4 = bitcast %struct._GTypeInstance* %call2 to %struct._GtkStatusbar*
  %5 = load %struct.StatusBar_t*, %struct.StatusBar_t** %statusbar.addr, align 8
  %zoom_id = getelementptr inbounds %struct.StatusBar_t, %struct.StatusBar_t* %5, i32 0, i32 6
  %6 = load i32, i32* %zoom_id, align 4
  %arraydecay3 = getelementptr inbounds [16 x i8], [16 x i8]* %scratch, i32 0, i32 0
  %call4 = call i32 @gtk_statusbar_push(%struct._GtkStatusbar* %4, i32 %6, i8* %arraydecay3)
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
