; ModuleID = './plug-ins/imagemap/imap_object.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ObjectList_t = type { %struct._GList*, i32, %struct.ObjectListCallback_t, %struct.ObjectListCallback_t, %struct.ObjectListCallback_t, %struct.ObjectListCallback_t, %struct.ObjectListCallback_t, %struct.ObjectListCallback_t, %struct.ObjectListCallback_t }
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct.ObjectListCallback_t = type { %struct._GList* }
%struct.DefaultDialog_t = type { %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, void (i8*)*, i8*, void (i8*)*, i8*, void (i8*)*, i8* }
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
%struct.ObjectFactory_t = type { %struct.Object_t*, i32 (%struct.Object_t*, i32, i32)*, i32 (%struct._GdkEventButton*, %struct.Object_t*)*, %struct.Object_t* (i32, i32)*, void (%struct.Object_t*, i32, i32, i32)* }
%struct.Object_t = type { %struct.ObjectClass_t*, %struct.ObjectList_t*, i32, i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.ObjectClass_t = type { i8*, %struct.AreaInfoDialog_t*, %struct._GdkDrawable*, %struct._GdkDrawable*, i32 (%struct.Object_t*)*, void (%struct.Object_t*)*, %struct.Object_t* (%struct.Object_t*)*, void (%struct.Object_t*, %struct.Object_t*)*, void (%struct.Object_t*)*, void (%struct.Object_t*, %struct._cairo*)*, void (%struct.Object_t*, %struct._cairo*)*, void (%struct.Object_t*, i32, i32)* (%struct.Object_t*, i32, i32)*, i32 (%struct.Object_t*, i32, i32)*, void (%struct.Object_t*, i32*, i32*, i32*, i32*)*, void (%struct.Object_t*, i32, i32)*, void (%struct.Object_t*, i32, i32)*, i8* (%struct._GtkWidget*)*, {}*, {}*, {}*, {}*, void (%struct.Object_t*, i8*, void (i8*, i8*, ...)*)*, void (%struct.Object_t*, i8*, void (i8*, i8*, ...)*)*, void (%struct.Object_t*, i8*, void (i8*, i8*, ...)*)*, void (%struct.Object_t*, %struct._GdkEventButton*)*, i8* ()* }
%struct.AreaInfoDialog_t = type { %struct.DefaultDialog_t*, %struct.Object_t*, %struct.Object_t*, i32, i32, i32, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, i8*, i8* }
%struct._cairo = type opaque
%struct._GdkEventButton = type { i32, %struct._GdkDrawable*, i8, i32, double, double, double*, i32, i32, %struct._GdkDevice*, double, double }
%struct._GdkDevice = type { %struct._GObject, i8*, i32, i32, i32, i32, %struct._GdkDeviceAxis*, i32, %struct._GdkDeviceKey* }
%struct._GdkDeviceAxis = type { i32, double, double }
%struct._GdkDeviceKey = type { i32, i32 }
%struct.ObjectListCB_t = type { void (%struct.Object_t*, i8*)*, i8* }
%struct.PreferencesData_t = type { i32, i32, i32, i32, i32, i32, i32, i32, double, i32, i32, %struct.ColorSelData_t }
%struct.ColorSelData_t = type { %struct._GdkColor, %struct._GdkColor, %struct._GdkColor, %struct._GdkColor, %struct._GdkColor, %struct._GdkColor }
%struct.Command_t = type { %struct.CommandClass_t*, %struct.CommandList_t*, i8*, i32 }
%struct.CommandClass_t = type { void (%struct.Command_t*)*, i32 (%struct.Command_t*)*, void (%struct.Command_t*)*, void (%struct.Command_t*)* }
%struct.CommandList_t = type { %struct.CommandList_t*, i32, %struct._GList*, %struct._GList*, %struct._GList*, %struct.CommandListCallback_t }
%struct.CommandListCallback_t = type { %struct._GList* }
%struct._GClosure = type { i32, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i8*, %struct._GClosureNotifyData* }
%struct._GValue = type { i64, [2 x %union.anon] }
%union.anon = type { i64 }
%struct._GClosureNotifyData = type { i8*, void (i8*, %struct._GClosure*)* }
%struct._GdkEventMotion = type { i32, %struct._GdkDrawable*, i8, i32, double, double, double*, i32, i16, %struct._GdkDevice*, double, double }

@_paste_buffer = internal global %struct.ObjectList_t* null, align 8
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@do_object_locked_dialog.dialog = internal global %struct.DefaultDialog_t* null, align 8
@.str.1 = private unnamed_addr constant [14 x i8] c"Object locked\00", align 1
@.str.2 = private unnamed_addr constant [80 x i8] c"\0A  You cannot delete the selected object  \0Asince it is currently being edited.\0A\00", align 1
@object_on_button_press.factory = internal global %struct.ObjectFactory_t* null, align 8
@object_on_button_press.obj = internal global %struct.Object_t* null, align 8
@.str.3 = private unnamed_addr constant [20 x i8] c"motion-notify-event\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"<area shape=\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"alt\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"target\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"onmouseover\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"onmouseout\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"onfocus\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"onblur\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"href\00", align 1
@.str.12 = private unnamed_addr constant [17 x i8] c" nohref=\22nohref\22\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c" />\0A\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c" %s\0A\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"# %s\0A\00", align 1
@.str.16 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.17 = private unnamed_addr constant [9 x i8] c" %s=\22%s\22\00", align 1
@.str.18 = private unnamed_addr constant [4 x i8] c" %s\00", align 1

; Function Attrs: nounwind uwtable
define i8* @object_list_add_changed_cb(%struct.ObjectList_t* %list, void (%struct.Object_t*, i8*)* %func, i8* %data) #0 {
entry:
  %list.addr = alloca %struct.ObjectList_t*, align 8
  %func.addr = alloca void (%struct.Object_t*, i8*)*, align 8
  %data.addr = alloca i8*, align 8
  store %struct.ObjectList_t* %list, %struct.ObjectList_t** %list.addr, align 8
  store void (%struct.Object_t*, i8*)* %func, void (%struct.Object_t*, i8*)** %func.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load %struct.ObjectList_t*, %struct.ObjectList_t** %list.addr, align 8
  %changed_cb = getelementptr inbounds %struct.ObjectList_t, %struct.ObjectList_t* %0, i32 0, i32 2
  %1 = load void (%struct.Object_t*, i8*)*, void (%struct.Object_t*, i8*)** %func.addr, align 8
  %2 = load i8*, i8** %data.addr, align 8
  %call = call i8* @object_list_callback_add(%struct.ObjectListCallback_t* %changed_cb, void (%struct.Object_t*, i8*)* %1, i8* %2)
  ret i8* %call
}

; Function Attrs: nounwind uwtable
define internal i8* @object_list_callback_add(%struct.ObjectListCallback_t* %list, void (%struct.Object_t*, i8*)* %func, i8* %data) #0 {
entry:
  %list.addr = alloca %struct.ObjectListCallback_t*, align 8
  %func.addr = alloca void (%struct.Object_t*, i8*)*, align 8
  %data.addr = alloca i8*, align 8
  %cb = alloca %struct.ObjectListCB_t*, align 8
  store %struct.ObjectListCallback_t* %list, %struct.ObjectListCallback_t** %list.addr, align 8
  store void (%struct.Object_t*, i8*)* %func, void (%struct.Object_t*, i8*)** %func.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %call = call noalias i8* @g_malloc_n(i64 1, i64 16)
  %0 = bitcast i8* %call to %struct.ObjectListCB_t*
  store %struct.ObjectListCB_t* %0, %struct.ObjectListCB_t** %cb, align 8
  %1 = load void (%struct.Object_t*, i8*)*, void (%struct.Object_t*, i8*)** %func.addr, align 8
  %2 = load %struct.ObjectListCB_t*, %struct.ObjectListCB_t** %cb, align 8
  %func1 = getelementptr inbounds %struct.ObjectListCB_t, %struct.ObjectListCB_t* %2, i32 0, i32 0
  store void (%struct.Object_t*, i8*)* %1, void (%struct.Object_t*, i8*)** %func1, align 8
  %3 = load i8*, i8** %data.addr, align 8
  %4 = load %struct.ObjectListCB_t*, %struct.ObjectListCB_t** %cb, align 8
  %data2 = getelementptr inbounds %struct.ObjectListCB_t, %struct.ObjectListCB_t* %4, i32 0, i32 1
  store i8* %3, i8** %data2, align 8
  %5 = load %struct.ObjectListCallback_t*, %struct.ObjectListCallback_t** %list.addr, align 8
  %list3 = getelementptr inbounds %struct.ObjectListCallback_t, %struct.ObjectListCallback_t* %5, i32 0, i32 0
  %6 = load %struct._GList*, %struct._GList** %list3, align 8
  %7 = load %struct.ObjectListCB_t*, %struct.ObjectListCB_t** %cb, align 8
  %8 = bitcast %struct.ObjectListCB_t* %7 to i8*
  %call4 = call %struct._GList* @g_list_append(%struct._GList* %6, i8* %8)
  %9 = load %struct.ObjectListCallback_t*, %struct.ObjectListCallback_t** %list.addr, align 8
  %list5 = getelementptr inbounds %struct.ObjectListCallback_t, %struct.ObjectListCallback_t* %9, i32 0, i32 0
  store %struct._GList* %call4, %struct._GList** %list5, align 8
  %10 = load %struct.ObjectListCB_t*, %struct.ObjectListCB_t** %cb, align 8
  %11 = bitcast %struct.ObjectListCB_t* %10 to i8*
  ret i8* %11
}

; Function Attrs: nounwind uwtable
define i8* @object_list_add_update_cb(%struct.ObjectList_t* %list, void (%struct.Object_t*, i8*)* %func, i8* %data) #0 {
entry:
  %list.addr = alloca %struct.ObjectList_t*, align 8
  %func.addr = alloca void (%struct.Object_t*, i8*)*, align 8
  %data.addr = alloca i8*, align 8
  store %struct.ObjectList_t* %list, %struct.ObjectList_t** %list.addr, align 8
  store void (%struct.Object_t*, i8*)* %func, void (%struct.Object_t*, i8*)** %func.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load %struct.ObjectList_t*, %struct.ObjectList_t** %list.addr, align 8
  %update_cb = getelementptr inbounds %struct.ObjectList_t, %struct.ObjectList_t* %0, i32 0, i32 3
  %1 = load void (%struct.Object_t*, i8*)*, void (%struct.Object_t*, i8*)** %func.addr, align 8
  %2 = load i8*, i8** %data.addr, align 8
  %call = call i8* @object_list_callback_add(%struct.ObjectListCallback_t* %update_cb, void (%struct.Object_t*, i8*)* %1, i8* %2)
  ret i8* %call
}

; Function Attrs: nounwind uwtable
define i8* @object_list_add_add_cb(%struct.ObjectList_t* %list, void (%struct.Object_t*, i8*)* %func, i8* %data) #0 {
entry:
  %list.addr = alloca %struct.ObjectList_t*, align 8
  %func.addr = alloca void (%struct.Object_t*, i8*)*, align 8
  %data.addr = alloca i8*, align 8
  store %struct.ObjectList_t* %list, %struct.ObjectList_t** %list.addr, align 8
  store void (%struct.Object_t*, i8*)* %func, void (%struct.Object_t*, i8*)** %func.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load %struct.ObjectList_t*, %struct.ObjectList_t** %list.addr, align 8
  %add_cb = getelementptr inbounds %struct.ObjectList_t, %struct.ObjectList_t* %0, i32 0, i32 4
  %1 = load void (%struct.Object_t*, i8*)*, void (%struct.Object_t*, i8*)** %func.addr, align 8
  %2 = load i8*, i8** %data.addr, align 8
  %call = call i8* @object_list_callback_add(%struct.ObjectListCallback_t* %add_cb, void (%struct.Object_t*, i8*)* %1, i8* %2)
  ret i8* %call
}

; Function Attrs: nounwind uwtable
define i8* @object_list_add_remove_cb(%struct.ObjectList_t* %list, void (%struct.Object_t*, i8*)* %func, i8* %data) #0 {
entry:
  %list.addr = alloca %struct.ObjectList_t*, align 8
  %func.addr = alloca void (%struct.Object_t*, i8*)*, align 8
  %data.addr = alloca i8*, align 8
  store %struct.ObjectList_t* %list, %struct.ObjectList_t** %list.addr, align 8
  store void (%struct.Object_t*, i8*)* %func, void (%struct.Object_t*, i8*)** %func.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load %struct.ObjectList_t*, %struct.ObjectList_t** %list.addr, align 8
  %remove_cb = getelementptr inbounds %struct.ObjectList_t, %struct.ObjectList_t* %0, i32 0, i32 5
  %1 = load void (%struct.Object_t*, i8*)*, void (%struct.Object_t*, i8*)** %func.addr, align 8
  %2 = load i8*, i8** %data.addr, align 8
  %call = call i8* @object_list_callback_add(%struct.ObjectListCallback_t* %remove_cb, void (%struct.Object_t*, i8*)* %1, i8* %2)
  ret i8* %call
}

; Function Attrs: nounwind uwtable
define i8* @object_list_add_select_cb(%struct.ObjectList_t* %list, void (%struct.Object_t*, i8*)* %func, i8* %data) #0 {
entry:
  %list.addr = alloca %struct.ObjectList_t*, align 8
  %func.addr = alloca void (%struct.Object_t*, i8*)*, align 8
  %data.addr = alloca i8*, align 8
  store %struct.ObjectList_t* %list, %struct.ObjectList_t** %list.addr, align 8
  store void (%struct.Object_t*, i8*)* %func, void (%struct.Object_t*, i8*)** %func.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load %struct.ObjectList_t*, %struct.ObjectList_t** %list.addr, align 8
  %select_cb = getelementptr inbounds %struct.ObjectList_t, %struct.ObjectList_t* %0, i32 0, i32 6
  %1 = load void (%struct.Object_t*, i8*)*, void (%struct.Object_t*, i8*)** %func.addr, align 8
  %2 = load i8*, i8** %data.addr, align 8
  %call = call i8* @object_list_callback_add(%struct.ObjectListCallback_t* %select_cb, void (%struct.Object_t*, i8*)* %1, i8* %2)
  ret i8* %call
}

; Function Attrs: nounwind uwtable
define i8* @object_list_add_move_cb(%struct.ObjectList_t* %list, void (%struct.Object_t*, i8*)* %func, i8* %data) #0 {
entry:
  %list.addr = alloca %struct.ObjectList_t*, align 8
  %func.addr = alloca void (%struct.Object_t*, i8*)*, align 8
  %data.addr = alloca i8*, align 8
  store %struct.ObjectList_t* %list, %struct.ObjectList_t** %list.addr, align 8
  store void (%struct.Object_t*, i8*)* %func, void (%struct.Object_t*, i8*)** %func.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load %struct.ObjectList_t*, %struct.ObjectList_t** %list.addr, align 8
  %move_cb = getelementptr inbounds %struct.ObjectList_t, %struct.ObjectList_t* %0, i32 0, i32 7
  %1 = load void (%struct.Object_t*, i8*)*, void (%struct.Object_t*, i8*)** %func.addr, align 8
  %2 = load i8*, i8** %data.addr, align 8
  %call = call i8* @object_list_callback_add(%struct.ObjectListCallback_t* %move_cb, void (%struct.Object_t*, i8*)* %1, i8* %2)
  ret i8* %call
}

; Function Attrs: nounwind uwtable
define i8* @object_list_add_geometry_cb(%struct.ObjectList_t* %list, void (%struct.Object_t*, i8*)* %func, i8* %data) #0 {
entry:
  %list.addr = alloca %struct.ObjectList_t*, align 8
  %func.addr = alloca void (%struct.Object_t*, i8*)*, align 8
  %data.addr = alloca i8*, align 8
  store %struct.ObjectList_t* %list, %struct.ObjectList_t** %list.addr, align 8
  store void (%struct.Object_t*, i8*)* %func, void (%struct.Object_t*, i8*)** %func.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load %struct.ObjectList_t*, %struct.ObjectList_t** %list.addr, align 8
  %geometry_cb = getelementptr inbounds %struct.ObjectList_t, %struct.ObjectList_t* %0, i32 0, i32 8
  %1 = load void (%struct.Object_t*, i8*)*, void (%struct.Object_t*, i8*)** %func.addr, align 8
  %2 = load i8*, i8** %data.addr, align 8
  %call = call i8* @object_list_callback_add(%struct.ObjectListCallback_t* %geometry_cb, void (%struct.Object_t*, i8*)* %1, i8* %2)
  ret i8* %call
}

; Function Attrs: nounwind uwtable
define i8* @paste_buffer_add_add_cb(void (%struct.Object_t*, i8*)* %func, i8* %data) #0 {
entry:
  %func.addr = alloca void (%struct.Object_t*, i8*)*, align 8
  %data.addr = alloca i8*, align 8
  store void (%struct.Object_t*, i8*)* %func, void (%struct.Object_t*, i8*)** %func.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load %struct.ObjectList_t*, %struct.ObjectList_t** @_paste_buffer, align 8
  %tobool = icmp ne %struct.ObjectList_t* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call %struct.ObjectList_t* @make_object_list()
  store %struct.ObjectList_t* %call, %struct.ObjectList_t** @_paste_buffer, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load %struct.ObjectList_t*, %struct.ObjectList_t** @_paste_buffer, align 8
  %add_cb = getelementptr inbounds %struct.ObjectList_t, %struct.ObjectList_t* %1, i32 0, i32 4
  %2 = load void (%struct.Object_t*, i8*)*, void (%struct.Object_t*, i8*)** %func.addr, align 8
  %3 = load i8*, i8** %data.addr, align 8
  %call1 = call i8* @object_list_callback_add(%struct.ObjectListCallback_t* %add_cb, void (%struct.Object_t*, i8*)* %2, i8* %3)
  ret i8* %call1
}

; Function Attrs: nounwind uwtable
define %struct.ObjectList_t* @make_object_list() #0 {
entry:
  %call = call noalias i8* @g_malloc0_n(i64 1, i64 72)
  %0 = bitcast i8* %call to %struct.ObjectList_t*
  ret %struct.ObjectList_t* %0
}

; Function Attrs: nounwind uwtable
define i8* @paste_buffer_add_remove_cb(void (%struct.Object_t*, i8*)* %func, i8* %data) #0 {
entry:
  %func.addr = alloca void (%struct.Object_t*, i8*)*, align 8
  %data.addr = alloca i8*, align 8
  store void (%struct.Object_t*, i8*)* %func, void (%struct.Object_t*, i8*)** %func.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load %struct.ObjectList_t*, %struct.ObjectList_t** @_paste_buffer, align 8
  %tobool = icmp ne %struct.ObjectList_t* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call %struct.ObjectList_t* @make_object_list()
  store %struct.ObjectList_t* %call, %struct.ObjectList_t** @_paste_buffer, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load %struct.ObjectList_t*, %struct.ObjectList_t** @_paste_buffer, align 8
  %remove_cb = getelementptr inbounds %struct.ObjectList_t, %struct.ObjectList_t* %1, i32 0, i32 5
  %2 = load void (%struct.Object_t*, i8*)*, void (%struct.Object_t*, i8*)** %func.addr, align 8
  %3 = load i8*, i8** %data.addr, align 8
  %call1 = call i8* @object_list_callback_add(%struct.ObjectListCallback_t* %remove_cb, void (%struct.Object_t*, i8*)* %2, i8* %3)
  ret i8* %call1
}

; Function Attrs: nounwind uwtable
define void @object_list_remove_add_cb(%struct.ObjectList_t* %list, i8* %id) #0 {
entry:
  %list.addr = alloca %struct.ObjectList_t*, align 8
  %id.addr = alloca i8*, align 8
  store %struct.ObjectList_t* %list, %struct.ObjectList_t** %list.addr, align 8
  store i8* %id, i8** %id.addr, align 8
  %0 = load %struct.ObjectList_t*, %struct.ObjectList_t** %list.addr, align 8
  %add_cb = getelementptr inbounds %struct.ObjectList_t, %struct.ObjectList_t* %0, i32 0, i32 4
  %1 = load i8*, i8** %id.addr, align 8
  call void @object_list_callback_remove(%struct.ObjectListCallback_t* %add_cb, i8* %1)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @object_list_callback_remove(%struct.ObjectListCallback_t* %list, i8* %id) #0 {
entry:
  %list.addr = alloca %struct.ObjectListCallback_t*, align 8
  %id.addr = alloca i8*, align 8
  store %struct.ObjectListCallback_t* %list, %struct.ObjectListCallback_t** %list.addr, align 8
  store i8* %id, i8** %id.addr, align 8
  %0 = load %struct.ObjectListCallback_t*, %struct.ObjectListCallback_t** %list.addr, align 8
  %list1 = getelementptr inbounds %struct.ObjectListCallback_t, %struct.ObjectListCallback_t* %0, i32 0, i32 0
  %1 = load %struct._GList*, %struct._GList** %list1, align 8
  %2 = load i8*, i8** %id.addr, align 8
  %call = call %struct._GList* @g_list_remove(%struct._GList* %1, i8* %2)
  %3 = load %struct.ObjectListCallback_t*, %struct.ObjectListCallback_t** %list.addr, align 8
  %list2 = getelementptr inbounds %struct.ObjectListCallback_t, %struct.ObjectListCallback_t* %3, i32 0, i32 0
  store %struct._GList* %call, %struct._GList** %list2, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @object_list_remove_select_cb(%struct.ObjectList_t* %list, i8* %id) #0 {
entry:
  %list.addr = alloca %struct.ObjectList_t*, align 8
  %id.addr = alloca i8*, align 8
  store %struct.ObjectList_t* %list, %struct.ObjectList_t** %list.addr, align 8
  store i8* %id, i8** %id.addr, align 8
  %0 = load %struct.ObjectList_t*, %struct.ObjectList_t** %list.addr, align 8
  %select_cb = getelementptr inbounds %struct.ObjectList_t, %struct.ObjectList_t* %0, i32 0, i32 6
  %1 = load i8*, i8** %id.addr, align 8
  call void @object_list_callback_remove(%struct.ObjectListCallback_t* %select_cb, i8* %1)
  ret void
}

; Function Attrs: nounwind uwtable
define void @object_list_remove_remove_cb(%struct.ObjectList_t* %list, i8* %id) #0 {
entry:
  %list.addr = alloca %struct.ObjectList_t*, align 8
  %id.addr = alloca i8*, align 8
  store %struct.ObjectList_t* %list, %struct.ObjectList_t** %list.addr, align 8
  store i8* %id, i8** %id.addr, align 8
  %0 = load %struct.ObjectList_t*, %struct.ObjectList_t** %list.addr, align 8
  %remove_cb = getelementptr inbounds %struct.ObjectList_t, %struct.ObjectList_t* %0, i32 0, i32 5
  %1 = load i8*, i8** %id.addr, align 8
  call void @object_list_callback_remove(%struct.ObjectListCallback_t* %remove_cb, i8* %1)
  ret void
}

; Function Attrs: nounwind uwtable
define void @object_list_remove_move_cb(%struct.ObjectList_t* %list, i8* %id) #0 {
entry:
  %list.addr = alloca %struct.ObjectList_t*, align 8
  %id.addr = alloca i8*, align 8
  store %struct.ObjectList_t* %list, %struct.ObjectList_t** %list.addr, align 8
  store i8* %id, i8** %id.addr, align 8
  %0 = load %struct.ObjectList_t*, %struct.ObjectList_t** %list.addr, align 8
  %move_cb = getelementptr inbounds %struct.ObjectList_t, %struct.ObjectList_t* %0, i32 0, i32 7
  %1 = load i8*, i8** %id.addr, align 8
  call void @object_list_callback_remove(%struct.ObjectListCallback_t* %move_cb, i8* %1)
  ret void
}

; Function Attrs: nounwind uwtable
define void @object_list_remove_geometry_cb(%struct.ObjectList_t* %list, i8* %id) #0 {
entry:
  %list.addr = alloca %struct.ObjectList_t*, align 8
  %id.addr = alloca i8*, align 8
  store %struct.ObjectList_t* %list, %struct.ObjectList_t** %list.addr, align 8
  store i8* %id, i8** %id.addr, align 8
  %0 = load %struct.ObjectList_t*, %struct.ObjectList_t** %list.addr, align 8
  %geometry_cb = getelementptr inbounds %struct.ObjectList_t, %struct.ObjectList_t* %0, i32 0, i32 8
  %1 = load i8*, i8** %id.addr, align 8
  call void @object_list_callback_remove(%struct.ObjectListCallback_t* %geometry_cb, i8* %1)
  ret void
}

; Function Attrs: nounwind uwtable
define %struct.Object_t* @object_init(%struct.Object_t* %obj, %struct.ObjectClass_t* %class) #0 {
entry:
  %obj.addr = alloca %struct.Object_t*, align 8
  %class.addr = alloca %struct.ObjectClass_t*, align 8
  store %struct.Object_t* %obj, %struct.Object_t** %obj.addr, align 8
  store %struct.ObjectClass_t* %class, %struct.ObjectClass_t** %class.addr, align 8
  %0 = load %struct.ObjectClass_t*, %struct.ObjectClass_t** %class.addr, align 8
  %1 = load %struct.Object_t*, %struct.Object_t** %obj.addr, align 8
  %class1 = getelementptr inbounds %struct.Object_t, %struct.Object_t* %1, i32 0, i32 0
  store %struct.ObjectClass_t* %0, %struct.ObjectClass_t** %class1, align 8
  %2 = load %struct.Object_t*, %struct.Object_t** %obj.addr, align 8
  %refcount = getelementptr inbounds %struct.Object_t, %struct.Object_t* %2, i32 0, i32 2
  store i32 1, i32* %refcount, align 4
  %3 = load %struct.Object_t*, %struct.Object_t** %obj.addr, align 8
  %selected = getelementptr inbounds %struct.Object_t, %struct.Object_t* %3, i32 0, i32 3
  store i32 0, i32* %selected, align 4
  %4 = load %struct.Object_t*, %struct.Object_t** %obj.addr, align 8
  %locked = getelementptr inbounds %struct.Object_t, %struct.Object_t* %4, i32 0, i32 4
  store i32 0, i32* %locked, align 4
  %call = call noalias i8* @g_strdup(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i32 0, i32 0))
  %5 = load %struct.Object_t*, %struct.Object_t** %obj.addr, align 8
  %url = getelementptr inbounds %struct.Object_t, %struct.Object_t* %5, i32 0, i32 5
  store i8* %call, i8** %url, align 8
  %call2 = call noalias i8* @g_strdup(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i32 0, i32 0))
  %6 = load %struct.Object_t*, %struct.Object_t** %obj.addr, align 8
  %target = getelementptr inbounds %struct.Object_t, %struct.Object_t* %6, i32 0, i32 6
  store i8* %call2, i8** %target, align 8
  %call3 = call noalias i8* @g_strdup(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i32 0, i32 0))
  %7 = load %struct.Object_t*, %struct.Object_t** %obj.addr, align 8
  %comment = getelementptr inbounds %struct.Object_t, %struct.Object_t* %7, i32 0, i32 7
  store i8* %call3, i8** %comment, align 8
  %call4 = call noalias i8* @g_strdup(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i32 0, i32 0))
  %8 = load %struct.Object_t*, %struct.Object_t** %obj.addr, align 8
  %mouse_over = getelementptr inbounds %struct.Object_t, %struct.Object_t* %8, i32 0, i32 8
  store i8* %call4, i8** %mouse_over, align 8
  %call5 = call noalias i8* @g_strdup(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i32 0, i32 0))
  %9 = load %struct.Object_t*, %struct.Object_t** %obj.addr, align 8
  %mouse_out = getelementptr inbounds %struct.Object_t, %struct.Object_t* %9, i32 0, i32 9
  store i8* %call5, i8** %mouse_out, align 8
  %call6 = call noalias i8* @g_strdup(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i32 0, i32 0))
  %10 = load %struct.Object_t*, %struct.Object_t** %obj.addr, align 8
  %focus = getelementptr inbounds %struct.Object_t, %struct.Object_t* %10, i32 0, i32 10
  store i8* %call6, i8** %focus, align 8
  %call7 = call noalias i8* @g_strdup(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i32 0, i32 0))
  %11 = load %struct.Object_t*, %struct.Object_t** %obj.addr, align 8
  %blur = getelementptr inbounds %struct.Object_t, %struct.Object_t* %11, i32 0, i32 11
  store i8* %call7, i8** %blur, align 8
  %12 = load %struct.Object_t*, %struct.Object_t** %obj.addr, align 8
  ret %struct.Object_t* %12
}

declare noalias i8* @g_strdup(i8*) #1

; Function Attrs: nounwind uwtable
define %struct.Object_t* @object_ref(%struct.Object_t* %obj) #0 {
entry:
  %obj.addr = alloca %struct.Object_t*, align 8
  store %struct.Object_t* %obj, %struct.Object_t** %obj.addr, align 8
  %0 = load %struct.Object_t*, %struct.Object_t** %obj.addr, align 8
  %refcount = getelementptr inbounds %struct.Object_t, %struct.Object_t* %0, i32 0, i32 2
  %1 = load i32, i32* %refcount, align 4
  %inc = add nsw i32 %1, 1
  store i32 %inc, i32* %refcount, align 4
  %2 = load %struct.Object_t*, %struct.Object_t** %obj.addr, align 8
  ret %struct.Object_t* %2
}

; Function Attrs: nounwind uwtable
define void @object_unref(%struct.Object_t* %obj) #0 {
entry:
  %obj.addr = alloca %struct.Object_t*, align 8
  store %struct.Object_t* %obj, %struct.Object_t** %obj.addr, align 8
  %0 = load %struct.Object_t*, %struct.Object_t** %obj.addr, align 8
  %refcount = getelementptr inbounds %struct.Object_t, %struct.Object_t* %0, i32 0, i32 2
  %1 = load i32, i32* %refcount, align 4
  %dec = add nsw i32 %1, -1
  store i32 %dec, i32* %refcount, align 4
  %tobool = icmp ne i32 %dec, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %2 = load %struct.Object_t*, %struct.Object_t** %obj.addr, align 8
  call void @object_destruct(%struct.Object_t* %2)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @object_destruct(%struct.Object_t* %obj) #0 {
entry:
  %obj.addr = alloca %struct.Object_t*, align 8
  store %struct.Object_t* %obj, %struct.Object_t** %obj.addr, align 8
  %0 = load %struct.Object_t*, %struct.Object_t** %obj.addr, align 8
  %class = getelementptr inbounds %struct.Object_t, %struct.Object_t* %0, i32 0, i32 0
  %1 = load %struct.ObjectClass_t*, %struct.ObjectClass_t** %class, align 8
  %destruct = getelementptr inbounds %struct.ObjectClass_t, %struct.ObjectClass_t* %1, i32 0, i32 5
  %2 = load void (%struct.Object_t*)*, void (%struct.Object_t*)** %destruct, align 8
  %tobool = icmp ne void (%struct.Object_t*)* %2, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct.Object_t*, %struct.Object_t** %obj.addr, align 8
  %class1 = getelementptr inbounds %struct.Object_t, %struct.Object_t* %3, i32 0, i32 0
  %4 = load %struct.ObjectClass_t*, %struct.ObjectClass_t** %class1, align 8
  %destruct2 = getelementptr inbounds %struct.ObjectClass_t, %struct.ObjectClass_t* %4, i32 0, i32 5
  %5 = load void (%struct.Object_t*)*, void (%struct.Object_t*)** %destruct2, align 8
  %6 = load %struct.Object_t*, %struct.Object_t** %obj.addr, align 8
  call void %5(%struct.Object_t* %6)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %7 = load %struct.Object_t*, %struct.Object_t** %obj.addr, align 8
  %url = getelementptr inbounds %struct.Object_t, %struct.Object_t* %7, i32 0, i32 5
  %8 = load i8*, i8** %url, align 8
  call void @g_free(i8* %8)
  %9 = load %struct.Object_t*, %struct.Object_t** %obj.addr, align 8
  %target = getelementptr inbounds %struct.Object_t, %struct.Object_t* %9, i32 0, i32 6
  %10 = load i8*, i8** %target, align 8
  call void @g_free(i8* %10)
  %11 = load %struct.Object_t*, %struct.Object_t** %obj.addr, align 8
  %comment = getelementptr inbounds %struct.Object_t, %struct.Object_t* %11, i32 0, i32 7
  %12 = load i8*, i8** %comment, align 8
  call void @g_free(i8* %12)
  %13 = load %struct.Object_t*, %struct.Object_t** %obj.addr, align 8
  %mouse_over = getelementptr inbounds %struct.Object_t, %struct.Object_t* %13, i32 0, i32 8
  %14 = load i8*, i8** %mouse_over, align 8
  call void @g_free(i8* %14)
  %15 = load %struct.Object_t*, %struct.Object_t** %obj.addr, align 8
  %mouse_out = getelementptr inbounds %struct.Object_t, %struct.Object_t* %15, i32 0, i32 9
  %16 = load i8*, i8** %mouse_out, align 8
  call void @g_free(i8* %16)
  %17 = load %struct.Object_t*, %struct.Object_t** %obj.addr, align 8
  %focus = getelementptr inbounds %struct.Object_t, %struct.Object_t* %17, i32 0, i32 10
  %18 = load i8*, i8** %focus, align 8
  call void @g_free(i8* %18)
  %19 = load %struct.Object_t*, %struct.Object_t** %obj.addr, align 8
  %blur = getelementptr inbounds %struct.Object_t, %struct.Object_t* %19, i32 0, i32 11
  %20 = load i8*, i8** %blur, align 8
  call void @g_free(i8* %20)
  %21 = load %struct.Object_t*, %struct.Object_t** %obj.addr, align 8
  %22 = bitcast %struct.Object_t* %21 to i8*
  call void @g_free(i8* %22)
  ret void
}

; Function Attrs: nounwind uwtable
define %struct.Object_t* @object_clone(%struct.Object_t* %obj) #0 {
entry:
  %obj.addr = alloca %struct.Object_t*, align 8
  %clone = alloca %struct.Object_t*, align 8
  store %struct.Object_t* %obj, %struct.Object_t** %obj.addr, align 8
  %0 = load %struct.Object_t*, %struct.Object_t** %obj.addr, align 8
  %class = getelementptr inbounds %struct.Object_t, %struct.Object_t* %0, i32 0, i32 0
  %1 = load %struct.ObjectClass_t*, %struct.ObjectClass_t** %class, align 8
  %clone1 = getelementptr inbounds %struct.ObjectClass_t, %struct.ObjectClass_t* %1, i32 0, i32 6
  %2 = load %struct.Object_t* (%struct.Object_t*)*, %struct.Object_t* (%struct.Object_t*)** %clone1, align 8
  %3 = load %struct.Object_t*, %struct.Object_t** %obj.addr, align 8
  %call = call %struct.Object_t* %2(%struct.Object_t* %3)
  store %struct.Object_t* %call, %struct.Object_t** %clone, align 8
  %4 = load %struct.Object_t*, %struct.Object_t** %obj.addr, align 8
  %class2 = getelementptr inbounds %struct.Object_t, %struct.Object_t* %4, i32 0, i32 0
  %5 = load %struct.ObjectClass_t*, %struct.ObjectClass_t** %class2, align 8
  %6 = load %struct.Object_t*, %struct.Object_t** %clone, align 8
  %class3 = getelementptr inbounds %struct.Object_t, %struct.Object_t* %6, i32 0, i32 0
  store %struct.ObjectClass_t* %5, %struct.ObjectClass_t** %class3, align 8
  %7 = load %struct.Object_t*, %struct.Object_t** %clone, align 8
  %refcount = getelementptr inbounds %struct.Object_t, %struct.Object_t* %7, i32 0, i32 2
  store i32 1, i32* %refcount, align 4
  %8 = load %struct.Object_t*, %struct.Object_t** %obj.addr, align 8
  %selected = getelementptr inbounds %struct.Object_t, %struct.Object_t* %8, i32 0, i32 3
  %9 = load i32, i32* %selected, align 4
  %10 = load %struct.Object_t*, %struct.Object_t** %clone, align 8
  %selected4 = getelementptr inbounds %struct.Object_t, %struct.Object_t* %10, i32 0, i32 3
  store i32 %9, i32* %selected4, align 4
  %11 = load %struct.Object_t*, %struct.Object_t** %clone, align 8
  %locked = getelementptr inbounds %struct.Object_t, %struct.Object_t* %11, i32 0, i32 4
  store i32 0, i32* %locked, align 4
  %12 = load %struct.Object_t*, %struct.Object_t** %obj.addr, align 8
  %url = getelementptr inbounds %struct.Object_t, %struct.Object_t* %12, i32 0, i32 5
  %13 = load i8*, i8** %url, align 8
  %call5 = call noalias i8* @g_strdup(i8* %13)
  %14 = load %struct.Object_t*, %struct.Object_t** %clone, align 8
  %url6 = getelementptr inbounds %struct.Object_t, %struct.Object_t* %14, i32 0, i32 5
  store i8* %call5, i8** %url6, align 8
  %15 = load %struct.Object_t*, %struct.Object_t** %obj.addr, align 8
  %target = getelementptr inbounds %struct.Object_t, %struct.Object_t* %15, i32 0, i32 6
  %16 = load i8*, i8** %target, align 8
  %call7 = call noalias i8* @g_strdup(i8* %16)
  %17 = load %struct.Object_t*, %struct.Object_t** %clone, align 8
  %target8 = getelementptr inbounds %struct.Object_t, %struct.Object_t* %17, i32 0, i32 6
  store i8* %call7, i8** %target8, align 8
  %18 = load %struct.Object_t*, %struct.Object_t** %obj.addr, align 8
  %comment = getelementptr inbounds %struct.Object_t, %struct.Object_t* %18, i32 0, i32 7
  %19 = load i8*, i8** %comment, align 8
  %call9 = call noalias i8* @g_strdup(i8* %19)
  %20 = load %struct.Object_t*, %struct.Object_t** %clone, align 8
  %comment10 = getelementptr inbounds %struct.Object_t, %struct.Object_t* %20, i32 0, i32 7
  store i8* %call9, i8** %comment10, align 8
  %21 = load %struct.Object_t*, %struct.Object_t** %obj.addr, align 8
  %mouse_over = getelementptr inbounds %struct.Object_t, %struct.Object_t* %21, i32 0, i32 8
  %22 = load i8*, i8** %mouse_over, align 8
  %call11 = call noalias i8* @g_strdup(i8* %22)
  %23 = load %struct.Object_t*, %struct.Object_t** %clone, align 8
  %mouse_over12 = getelementptr inbounds %struct.Object_t, %struct.Object_t* %23, i32 0, i32 8
  store i8* %call11, i8** %mouse_over12, align 8
  %24 = load %struct.Object_t*, %struct.Object_t** %obj.addr, align 8
  %mouse_out = getelementptr inbounds %struct.Object_t, %struct.Object_t* %24, i32 0, i32 9
  %25 = load i8*, i8** %mouse_out, align 8
  %call13 = call noalias i8* @g_strdup(i8* %25)
  %26 = load %struct.Object_t*, %struct.Object_t** %clone, align 8
  %mouse_out14 = getelementptr inbounds %struct.Object_t, %struct.Object_t* %26, i32 0, i32 9
  store i8* %call13, i8** %mouse_out14, align 8
  %27 = load %struct.Object_t*, %struct.Object_t** %obj.addr, align 8
  %focus = getelementptr inbounds %struct.Object_t, %struct.Object_t* %27, i32 0, i32 10
  %28 = load i8*, i8** %focus, align 8
  %call15 = call noalias i8* @g_strdup(i8* %28)
  %29 = load %struct.Object_t*, %struct.Object_t** %clone, align 8
  %focus16 = getelementptr inbounds %struct.Object_t, %struct.Object_t* %29, i32 0, i32 10
  store i8* %call15, i8** %focus16, align 8
  %30 = load %struct.Object_t*, %struct.Object_t** %obj.addr, align 8
  %blur = getelementptr inbounds %struct.Object_t, %struct.Object_t* %30, i32 0, i32 11
  %31 = load i8*, i8** %blur, align 8
  %call17 = call noalias i8* @g_strdup(i8* %31)
  %32 = load %struct.Object_t*, %struct.Object_t** %clone, align 8
  %blur18 = getelementptr inbounds %struct.Object_t, %struct.Object_t* %32, i32 0, i32 11
  store i8* %call17, i8** %blur18, align 8
  %33 = load %struct.Object_t*, %struct.Object_t** %clone, align 8
  ret %struct.Object_t* %33
}

; Function Attrs: nounwind uwtable
define %struct.Object_t* @object_assign(%struct.Object_t* %obj, %struct.Object_t* %des) #0 {
entry:
  %obj.addr = alloca %struct.Object_t*, align 8
  %des.addr = alloca %struct.Object_t*, align 8
  store %struct.Object_t* %obj, %struct.Object_t** %obj.addr, align 8
  store %struct.Object_t* %des, %struct.Object_t** %des.addr, align 8
  %0 = load %struct.Object_t*, %struct.Object_t** %obj.addr, align 8
  %class = getelementptr inbounds %struct.Object_t, %struct.Object_t* %0, i32 0, i32 0
  %1 = load %struct.ObjectClass_t*, %struct.ObjectClass_t** %class, align 8
  %assign = getelementptr inbounds %struct.ObjectClass_t, %struct.ObjectClass_t* %1, i32 0, i32 7
  %2 = load void (%struct.Object_t*, %struct.Object_t*)*, void (%struct.Object_t*, %struct.Object_t*)** %assign, align 8
  %3 = load %struct.Object_t*, %struct.Object_t** %obj.addr, align 8
  %4 = load %struct.Object_t*, %struct.Object_t** %des.addr, align 8
  call void %2(%struct.Object_t* %3, %struct.Object_t* %4)
  %5 = load %struct.Object_t*, %struct.Object_t** %obj.addr, align 8
  %6 = load %struct.Object_t*, %struct.Object_t** %des.addr, align 8
  %call = call %struct.Object_t* @object_copy(%struct.Object_t* %5, %struct.Object_t* %6)
  ret %struct.Object_t* %call
}

; Function Attrs: nounwind uwtable
define internal %struct.Object_t* @object_copy(%struct.Object_t* %src, %struct.Object_t* %des) #0 {
entry:
  %src.addr = alloca %struct.Object_t*, align 8
  %des.addr = alloca %struct.Object_t*, align 8
  store %struct.Object_t* %src, %struct.Object_t** %src.addr, align 8
  store %struct.Object_t* %des, %struct.Object_t** %des.addr, align 8
  %0 = load %struct.Object_t*, %struct.Object_t** %src.addr, align 8
  %class = getelementptr inbounds %struct.Object_t, %struct.Object_t* %0, i32 0, i32 0
  %1 = load %struct.ObjectClass_t*, %struct.ObjectClass_t** %class, align 8
  %2 = load %struct.Object_t*, %struct.Object_t** %des.addr, align 8
  %class1 = getelementptr inbounds %struct.Object_t, %struct.Object_t* %2, i32 0, i32 0
  store %struct.ObjectClass_t* %1, %struct.ObjectClass_t** %class1, align 8
  %3 = load %struct.Object_t*, %struct.Object_t** %src.addr, align 8
  %selected = getelementptr inbounds %struct.Object_t, %struct.Object_t* %3, i32 0, i32 3
  %4 = load i32, i32* %selected, align 4
  %5 = load %struct.Object_t*, %struct.Object_t** %des.addr, align 8
  %selected2 = getelementptr inbounds %struct.Object_t, %struct.Object_t* %5, i32 0, i32 3
  store i32 %4, i32* %selected2, align 4
  %6 = load %struct.Object_t*, %struct.Object_t** %des.addr, align 8
  %locked = getelementptr inbounds %struct.Object_t, %struct.Object_t* %6, i32 0, i32 4
  store i32 0, i32* %locked, align 4
  %7 = load %struct.Object_t*, %struct.Object_t** %des.addr, align 8
  %url = getelementptr inbounds %struct.Object_t, %struct.Object_t* %7, i32 0, i32 5
  %8 = load %struct.Object_t*, %struct.Object_t** %src.addr, align 8
  %url3 = getelementptr inbounds %struct.Object_t, %struct.Object_t* %8, i32 0, i32 5
  %9 = load i8*, i8** %url3, align 8
  %call = call i8* @g_strreplace(i8** %url, i8* %9)
  %10 = load %struct.Object_t*, %struct.Object_t** %des.addr, align 8
  %target = getelementptr inbounds %struct.Object_t, %struct.Object_t* %10, i32 0, i32 6
  %11 = load %struct.Object_t*, %struct.Object_t** %src.addr, align 8
  %target4 = getelementptr inbounds %struct.Object_t, %struct.Object_t* %11, i32 0, i32 6
  %12 = load i8*, i8** %target4, align 8
  %call5 = call i8* @g_strreplace(i8** %target, i8* %12)
  %13 = load %struct.Object_t*, %struct.Object_t** %des.addr, align 8
  %comment = getelementptr inbounds %struct.Object_t, %struct.Object_t* %13, i32 0, i32 7
  %14 = load %struct.Object_t*, %struct.Object_t** %src.addr, align 8
  %comment6 = getelementptr inbounds %struct.Object_t, %struct.Object_t* %14, i32 0, i32 7
  %15 = load i8*, i8** %comment6, align 8
  %call7 = call i8* @g_strreplace(i8** %comment, i8* %15)
  %16 = load %struct.Object_t*, %struct.Object_t** %des.addr, align 8
  %mouse_over = getelementptr inbounds %struct.Object_t, %struct.Object_t* %16, i32 0, i32 8
  %17 = load %struct.Object_t*, %struct.Object_t** %src.addr, align 8
  %mouse_over8 = getelementptr inbounds %struct.Object_t, %struct.Object_t* %17, i32 0, i32 8
  %18 = load i8*, i8** %mouse_over8, align 8
  %call9 = call i8* @g_strreplace(i8** %mouse_over, i8* %18)
  %19 = load %struct.Object_t*, %struct.Object_t** %des.addr, align 8
  %mouse_out = getelementptr inbounds %struct.Object_t, %struct.Object_t* %19, i32 0, i32 9
  %20 = load %struct.Object_t*, %struct.Object_t** %src.addr, align 8
  %mouse_out10 = getelementptr inbounds %struct.Object_t, %struct.Object_t* %20, i32 0, i32 9
  %21 = load i8*, i8** %mouse_out10, align 8
  %call11 = call i8* @g_strreplace(i8** %mouse_out, i8* %21)
  %22 = load %struct.Object_t*, %struct.Object_t** %des.addr, align 8
  %focus = getelementptr inbounds %struct.Object_t, %struct.Object_t* %22, i32 0, i32 10
  %23 = load %struct.Object_t*, %struct.Object_t** %src.addr, align 8
  %focus12 = getelementptr inbounds %struct.Object_t, %struct.Object_t* %23, i32 0, i32 10
  %24 = load i8*, i8** %focus12, align 8
  %call13 = call i8* @g_strreplace(i8** %focus, i8* %24)
  %25 = load %struct.Object_t*, %struct.Object_t** %des.addr, align 8
  %blur = getelementptr inbounds %struct.Object_t, %struct.Object_t* %25, i32 0, i32 11
  %26 = load %struct.Object_t*, %struct.Object_t** %src.addr, align 8
  %blur14 = getelementptr inbounds %struct.Object_t, %struct.Object_t* %26, i32 0, i32 11
  %27 = load i8*, i8** %blur14, align 8
  %call15 = call i8* @g_strreplace(i8** %blur, i8* %27)
  %28 = load %struct.Object_t*, %struct.Object_t** %des.addr, align 8
  ret %struct.Object_t* %28
}

; Function Attrs: nounwind uwtable
define void @object_draw(%struct.Object_t* %obj, %struct._cairo* %cr) #0 {
entry:
  %obj.addr = alloca %struct.Object_t*, align 8
  %cr.addr = alloca %struct._cairo*, align 8
  %preferences = alloca %struct.PreferencesData_t*, align 8
  %colors = alloca %struct.ColorSelData_t*, align 8
  %fg = alloca %struct._GdkColor*, align 8
  %bg = alloca %struct._GdkColor*, align 8
  %dash = alloca double, align 8
  store %struct.Object_t* %obj, %struct.Object_t** %obj.addr, align 8
  store %struct._cairo* %cr, %struct._cairo** %cr.addr, align 8
  %call = call %struct.PreferencesData_t* @get_preferences()
  store %struct.PreferencesData_t* %call, %struct.PreferencesData_t** %preferences, align 8
  %0 = load %struct.PreferencesData_t*, %struct.PreferencesData_t** %preferences, align 8
  %colors1 = getelementptr inbounds %struct.PreferencesData_t, %struct.PreferencesData_t* %0, i32 0, i32 11
  store %struct.ColorSelData_t* %colors1, %struct.ColorSelData_t** %colors, align 8
  store double 4.000000e+00, double* %dash, align 8
  %1 = load %struct.Object_t*, %struct.Object_t** %obj.addr, align 8
  %selected = getelementptr inbounds %struct.Object_t, %struct.Object_t* %1, i32 0, i32 3
  %2 = load i32, i32* %selected, align 4
  %and = and i32 %2, 4
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load %struct.ColorSelData_t*, %struct.ColorSelData_t** %colors, align 8
  %interactive_fg = getelementptr inbounds %struct.ColorSelData_t, %struct.ColorSelData_t* %3, i32 0, i32 5
  store %struct._GdkColor* %interactive_fg, %struct._GdkColor** %fg, align 8
  %4 = load %struct.ColorSelData_t*, %struct.ColorSelData_t** %colors, align 8
  %interactive_bg = getelementptr inbounds %struct.ColorSelData_t, %struct.ColorSelData_t* %4, i32 0, i32 4
  store %struct._GdkColor* %interactive_bg, %struct._GdkColor** %bg, align 8
  %5 = load %struct.Object_t*, %struct.Object_t** %obj.addr, align 8
  %selected2 = getelementptr inbounds %struct.Object_t, %struct.Object_t* %5, i32 0, i32 3
  %6 = load i32, i32* %selected2, align 4
  %and3 = and i32 %6, -5
  store i32 %and3, i32* %selected2, align 4
  br label %if.end.8

if.else:                                          ; preds = %entry
  %7 = load %struct.Object_t*, %struct.Object_t** %obj.addr, align 8
  %selected4 = getelementptr inbounds %struct.Object_t, %struct.Object_t* %7, i32 0, i32 3
  %8 = load i32, i32* %selected4, align 4
  %tobool5 = icmp ne i32 %8, 0
  br i1 %tobool5, label %if.then.6, label %if.else.7

if.then.6:                                        ; preds = %if.else
  %9 = load %struct.ColorSelData_t*, %struct.ColorSelData_t** %colors, align 8
  %selected_fg = getelementptr inbounds %struct.ColorSelData_t, %struct.ColorSelData_t* %9, i32 0, i32 2
  store %struct._GdkColor* %selected_fg, %struct._GdkColor** %fg, align 8
  %10 = load %struct.ColorSelData_t*, %struct.ColorSelData_t** %colors, align 8
  %selected_bg = getelementptr inbounds %struct.ColorSelData_t, %struct.ColorSelData_t* %10, i32 0, i32 3
  store %struct._GdkColor* %selected_bg, %struct._GdkColor** %bg, align 8
  br label %if.end

if.else.7:                                        ; preds = %if.else
  %11 = load %struct.ColorSelData_t*, %struct.ColorSelData_t** %colors, align 8
  %normal_fg = getelementptr inbounds %struct.ColorSelData_t, %struct.ColorSelData_t* %11, i32 0, i32 0
  store %struct._GdkColor* %normal_fg, %struct._GdkColor** %fg, align 8
  %12 = load %struct.ColorSelData_t*, %struct.ColorSelData_t** %colors, align 8
  %normal_bg = getelementptr inbounds %struct.ColorSelData_t, %struct.ColorSelData_t* %12, i32 0, i32 1
  store %struct._GdkColor* %normal_bg, %struct._GdkColor** %bg, align 8
  br label %if.end

if.end:                                           ; preds = %if.else.7, %if.then.6
  br label %if.end.8

if.end.8:                                         ; preds = %if.end, %if.then
  %13 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  call void @cairo_save(%struct._cairo* %13)
  %14 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  %15 = load %struct._GdkColor*, %struct._GdkColor** %bg, align 8
  call void @gdk_cairo_set_source_color(%struct._cairo* %14, %struct._GdkColor* %15)
  %16 = load %struct.Object_t*, %struct.Object_t** %obj.addr, align 8
  %class = getelementptr inbounds %struct.Object_t, %struct.Object_t* %16, i32 0, i32 0
  %17 = load %struct.ObjectClass_t*, %struct.ObjectClass_t** %class, align 8
  %draw = getelementptr inbounds %struct.ObjectClass_t, %struct.ObjectClass_t* %17, i32 0, i32 9
  %18 = load void (%struct.Object_t*, %struct._cairo*)*, void (%struct.Object_t*, %struct._cairo*)** %draw, align 8
  %19 = load %struct.Object_t*, %struct.Object_t** %obj.addr, align 8
  %20 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  call void %18(%struct.Object_t* %19, %struct._cairo* %20)
  %21 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  %22 = load %struct._GdkColor*, %struct._GdkColor** %fg, align 8
  call void @gdk_cairo_set_source_color(%struct._cairo* %21, %struct._GdkColor* %22)
  %23 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  call void @cairo_set_dash(%struct._cairo* %23, double* %dash, i32 1, double 0.000000e+00)
  %24 = load %struct.Object_t*, %struct.Object_t** %obj.addr, align 8
  %class9 = getelementptr inbounds %struct.Object_t, %struct.Object_t* %24, i32 0, i32 0
  %25 = load %struct.ObjectClass_t*, %struct.ObjectClass_t** %class9, align 8
  %draw10 = getelementptr inbounds %struct.ObjectClass_t, %struct.ObjectClass_t* %25, i32 0, i32 9
  %26 = load void (%struct.Object_t*, %struct._cairo*)*, void (%struct.Object_t*, %struct._cairo*)** %draw10, align 8
  %27 = load %struct.Object_t*, %struct.Object_t** %obj.addr, align 8
  %28 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  call void %26(%struct.Object_t* %27, %struct._cairo* %28)
  %29 = load %struct.Object_t*, %struct.Object_t** %obj.addr, align 8
  %selected11 = getelementptr inbounds %struct.Object_t, %struct.Object_t* %29, i32 0, i32 3
  %30 = load i32, i32* %selected11, align 4
  %tobool12 = icmp ne i32 %30, 0
  br i1 %tobool12, label %land.lhs.true, label %if.end.16

land.lhs.true:                                    ; preds = %if.end.8
  %31 = load %struct.PreferencesData_t*, %struct.PreferencesData_t** %preferences, align 8
  %show_area_handle = getelementptr inbounds %struct.PreferencesData_t, %struct.PreferencesData_t* %31, i32 0, i32 3
  %32 = load i32, i32* %show_area_handle, align 4
  %tobool13 = icmp ne i32 %32, 0
  br i1 %tobool13, label %if.then.14, label %if.end.16

if.then.14:                                       ; preds = %land.lhs.true
  %33 = load %struct.Object_t*, %struct.Object_t** %obj.addr, align 8
  %class15 = getelementptr inbounds %struct.Object_t, %struct.Object_t* %33, i32 0, i32 0
  %34 = load %struct.ObjectClass_t*, %struct.ObjectClass_t** %class15, align 8
  %draw_sashes = getelementptr inbounds %struct.ObjectClass_t, %struct.ObjectClass_t* %34, i32 0, i32 10
  %35 = load void (%struct.Object_t*, %struct._cairo*)*, void (%struct.Object_t*, %struct._cairo*)** %draw_sashes, align 8
  %36 = load %struct.Object_t*, %struct.Object_t** %obj.addr, align 8
  %37 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  call void %35(%struct.Object_t* %36, %struct._cairo* %37)
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.14, %land.lhs.true, %if.end.8
  %38 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  call void @cairo_restore(%struct._cairo* %38)
  ret void
}

declare %struct.PreferencesData_t* @get_preferences() #1

declare void @cairo_save(%struct._cairo*) #1

declare void @gdk_cairo_set_source_color(%struct._cairo*, %struct._GdkColor*) #1

declare void @cairo_set_dash(%struct._cairo*, double*, i32, double) #1

declare void @cairo_restore(%struct._cairo*) #1

; Function Attrs: nounwind uwtable
define void @object_edit(%struct.Object_t* %obj, i32 %add) #0 {
entry:
  %obj.addr = alloca %struct.Object_t*, align 8
  %add.addr = alloca i32, align 4
  store %struct.Object_t* %obj, %struct.Object_t** %obj.addr, align 8
  store i32 %add, i32* %add.addr, align 4
  %0 = load %struct.Object_t*, %struct.Object_t** %obj.addr, align 8
  %class = getelementptr inbounds %struct.Object_t, %struct.Object_t* %0, i32 0, i32 0
  %1 = load %struct.ObjectClass_t*, %struct.ObjectClass_t** %class, align 8
  %info_dialog = getelementptr inbounds %struct.ObjectClass_t, %struct.ObjectClass_t* %1, i32 0, i32 1
  %2 = load %struct.AreaInfoDialog_t*, %struct.AreaInfoDialog_t** %info_dialog, align 8
  %tobool = icmp ne %struct.AreaInfoDialog_t* %2, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %3 = load %struct.Object_t*, %struct.Object_t** %obj.addr, align 8
  %call = call %struct.AreaInfoDialog_t* @create_edit_area_info_dialog(%struct.Object_t* %3)
  %4 = load %struct.Object_t*, %struct.Object_t** %obj.addr, align 8
  %class1 = getelementptr inbounds %struct.Object_t, %struct.Object_t* %4, i32 0, i32 0
  %5 = load %struct.ObjectClass_t*, %struct.ObjectClass_t** %class1, align 8
  %info_dialog2 = getelementptr inbounds %struct.ObjectClass_t, %struct.ObjectClass_t* %5, i32 0, i32 1
  store %struct.AreaInfoDialog_t* %call, %struct.AreaInfoDialog_t** %info_dialog2, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %6 = load %struct.Object_t*, %struct.Object_t** %obj.addr, align 8
  %class3 = getelementptr inbounds %struct.Object_t, %struct.Object_t* %6, i32 0, i32 0
  %7 = load %struct.ObjectClass_t*, %struct.ObjectClass_t** %class3, align 8
  %info_dialog4 = getelementptr inbounds %struct.ObjectClass_t, %struct.ObjectClass_t* %7, i32 0, i32 1
  %8 = load %struct.AreaInfoDialog_t*, %struct.AreaInfoDialog_t** %info_dialog4, align 8
  %9 = load %struct.Object_t*, %struct.Object_t** %obj.addr, align 8
  %10 = load i32, i32* %add.addr, align 4
  call void @edit_area_info_dialog_show(%struct.AreaInfoDialog_t* %8, %struct.Object_t* %9, i32 %10)
  ret void
}

declare %struct.AreaInfoDialog_t* @create_edit_area_info_dialog(%struct.Object_t*) #1

declare void @edit_area_info_dialog_show(%struct.AreaInfoDialog_t*, %struct.Object_t*, i32) #1

; Function Attrs: nounwind uwtable
define void @object_select(%struct.Object_t* %obj) #0 {
entry:
  %obj.addr = alloca %struct.Object_t*, align 8
  store %struct.Object_t* %obj, %struct.Object_t** %obj.addr, align 8
  %0 = load %struct.Object_t*, %struct.Object_t** %obj.addr, align 8
  %selected = getelementptr inbounds %struct.Object_t, %struct.Object_t* %0, i32 0, i32 3
  store i32 1, i32* %selected, align 4
  %1 = load %struct.Object_t*, %struct.Object_t** %obj.addr, align 8
  %list = getelementptr inbounds %struct.Object_t, %struct.Object_t* %1, i32 0, i32 1
  %2 = load %struct.ObjectList_t*, %struct.ObjectList_t** %list, align 8
  %select_cb = getelementptr inbounds %struct.ObjectList_t, %struct.ObjectList_t* %2, i32 0, i32 6
  %3 = load %struct.Object_t*, %struct.Object_t** %obj.addr, align 8
  call void @object_list_callback_call(%struct.ObjectListCallback_t* %select_cb, %struct.Object_t* %3)
  %4 = load %struct.Object_t*, %struct.Object_t** %obj.addr, align 8
  call void @object_emit_geometry_signal(%struct.Object_t* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @object_list_callback_call(%struct.ObjectListCallback_t* %list, %struct.Object_t* %obj) #0 {
entry:
  %list.addr = alloca %struct.ObjectListCallback_t*, align 8
  %obj.addr = alloca %struct.Object_t*, align 8
  %p = alloca %struct._GList*, align 8
  %cb = alloca %struct.ObjectListCB_t*, align 8
  store %struct.ObjectListCallback_t* %list, %struct.ObjectListCallback_t** %list.addr, align 8
  store %struct.Object_t* %obj, %struct.Object_t** %obj.addr, align 8
  %0 = load %struct.ObjectListCallback_t*, %struct.ObjectListCallback_t** %list.addr, align 8
  %list1 = getelementptr inbounds %struct.ObjectListCallback_t, %struct.ObjectListCallback_t* %0, i32 0, i32 0
  %1 = load %struct._GList*, %struct._GList** %list1, align 8
  store %struct._GList* %1, %struct._GList** %p, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load %struct._GList*, %struct._GList** %p, align 8
  %tobool = icmp ne %struct._GList* %2, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load %struct._GList*, %struct._GList** %p, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %3, i32 0, i32 0
  %4 = load i8*, i8** %data, align 8
  %5 = bitcast i8* %4 to %struct.ObjectListCB_t*
  store %struct.ObjectListCB_t* %5, %struct.ObjectListCB_t** %cb, align 8
  %6 = load %struct.ObjectListCB_t*, %struct.ObjectListCB_t** %cb, align 8
  %func = getelementptr inbounds %struct.ObjectListCB_t, %struct.ObjectListCB_t* %6, i32 0, i32 0
  %7 = load void (%struct.Object_t*, i8*)*, void (%struct.Object_t*, i8*)** %func, align 8
  %8 = load %struct.Object_t*, %struct.Object_t** %obj.addr, align 8
  %9 = load %struct.ObjectListCB_t*, %struct.ObjectListCB_t** %cb, align 8
  %data2 = getelementptr inbounds %struct.ObjectListCB_t, %struct.ObjectListCB_t* %9, i32 0, i32 1
  %10 = load i8*, i8** %data2, align 8
  call void %7(%struct.Object_t* %8, i8* %10)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %11 = load %struct._GList*, %struct._GList** %p, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %11, i32 0, i32 1
  %12 = load %struct._GList*, %struct._GList** %next, align 8
  store %struct._GList* %12, %struct._GList** %p, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @object_emit_geometry_signal(%struct.Object_t* %obj) #0 {
entry:
  %obj.addr = alloca %struct.Object_t*, align 8
  store %struct.Object_t* %obj, %struct.Object_t** %obj.addr, align 8
  %0 = load %struct.Object_t*, %struct.Object_t** %obj.addr, align 8
  %list = getelementptr inbounds %struct.Object_t, %struct.Object_t* %0, i32 0, i32 1
  %1 = load %struct.ObjectList_t*, %struct.ObjectList_t** %list, align 8
  %geometry_cb = getelementptr inbounds %struct.ObjectList_t, %struct.ObjectList_t* %1, i32 0, i32 8
  %2 = load %struct.Object_t*, %struct.Object_t** %obj.addr, align 8
  call void @object_list_callback_call(%struct.ObjectListCallback_t* %geometry_cb, %struct.Object_t* %2)
  ret void
}

; Function Attrs: nounwind uwtable
define void @object_unselect(%struct.Object_t* %obj) #0 {
entry:
  %obj.addr = alloca %struct.Object_t*, align 8
  store %struct.Object_t* %obj, %struct.Object_t** %obj.addr, align 8
  %0 = load %struct.Object_t*, %struct.Object_t** %obj.addr, align 8
  %selected = getelementptr inbounds %struct.Object_t, %struct.Object_t* %0, i32 0, i32 3
  store i32 0, i32* %selected, align 4
  %1 = load %struct.Object_t*, %struct.Object_t** %obj.addr, align 8
  %list = getelementptr inbounds %struct.Object_t, %struct.Object_t* %1, i32 0, i32 1
  %2 = load %struct.ObjectList_t*, %struct.ObjectList_t** %list, align 8
  %select_cb = getelementptr inbounds %struct.ObjectList_t, %struct.ObjectList_t* %2, i32 0, i32 6
  %3 = load %struct.Object_t*, %struct.Object_t** %obj.addr, align 8
  call void @object_list_callback_call(%struct.ObjectListCallback_t* %select_cb, %struct.Object_t* %3)
  %4 = load %struct.Object_t*, %struct.Object_t** %obj.addr, align 8
  call void @object_emit_geometry_signal(%struct.Object_t* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define void @object_move(%struct.Object_t* %obj, i32 %dx, i32 %dy) #0 {
entry:
  %obj.addr = alloca %struct.Object_t*, align 8
  %dx.addr = alloca i32, align 4
  %dy.addr = alloca i32, align 4
  store %struct.Object_t* %obj, %struct.Object_t** %obj.addr, align 8
  store i32 %dx, i32* %dx.addr, align 4
  store i32 %dy, i32* %dy.addr, align 4
  %0 = load %struct.Object_t*, %struct.Object_t** %obj.addr, align 8
  %class = getelementptr inbounds %struct.Object_t, %struct.Object_t* %0, i32 0, i32 0
  %1 = load %struct.ObjectClass_t*, %struct.ObjectClass_t** %class, align 8
  %move = getelementptr inbounds %struct.ObjectClass_t, %struct.ObjectClass_t* %1, i32 0, i32 15
  %2 = load void (%struct.Object_t*, i32, i32)*, void (%struct.Object_t*, i32, i32)** %move, align 8
  %3 = load %struct.Object_t*, %struct.Object_t** %obj.addr, align 8
  %4 = load i32, i32* %dx.addr, align 4
  %5 = load i32, i32* %dy.addr, align 4
  call void %2(%struct.Object_t* %3, i32 %4, i32 %5)
  %6 = load %struct.Object_t*, %struct.Object_t** %obj.addr, align 8
  call void @object_emit_geometry_signal(%struct.Object_t* %6)
  ret void
}

; Function Attrs: nounwind uwtable
define void @object_move_sash(%struct.Object_t* %obj, i32 %dx, i32 %dy) #0 {
entry:
  %obj.addr = alloca %struct.Object_t*, align 8
  %dx.addr = alloca i32, align 4
  %dy.addr = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %width = alloca i32, align 4
  %height = alloca i32, align 4
  %sash_func = alloca void (%struct.Object_t*, i32, i32)*, align 8
  store %struct.Object_t* %obj, %struct.Object_t** %obj.addr, align 8
  store i32 %dx, i32* %dx.addr, align 4
  store i32 %dy, i32* %dy.addr, align 4
  %0 = load %struct.Object_t*, %struct.Object_t** %obj.addr, align 8
  %class = getelementptr inbounds %struct.Object_t, %struct.Object_t* %0, i32 0, i32 0
  %1 = load %struct.ObjectClass_t*, %struct.ObjectClass_t** %class, align 8
  %get_dimensions = getelementptr inbounds %struct.ObjectClass_t, %struct.ObjectClass_t* %1, i32 0, i32 13
  %2 = load void (%struct.Object_t*, i32*, i32*, i32*, i32*)*, void (%struct.Object_t*, i32*, i32*, i32*, i32*)** %get_dimensions, align 8
  %3 = load %struct.Object_t*, %struct.Object_t** %obj.addr, align 8
  call void %2(%struct.Object_t* %3, i32* %x, i32* %y, i32* %width, i32* %height)
  %4 = load i32, i32* %dx.addr, align 4
  %cmp = icmp eq i32 %4, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %5 = load i32, i32* %width, align 4
  %div = sdiv i32 %5, 2
  %6 = load i32, i32* %x, align 4
  %add = add nsw i32 %6, %div
  store i32 %add, i32* %x, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  %7 = load i32, i32* %width, align 4
  %8 = load i32, i32* %x, align 4
  %add1 = add nsw i32 %8, %7
  store i32 %add1, i32* %x, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %9 = load i32, i32* %dy.addr, align 4
  %cmp2 = icmp eq i32 %9, 0
  br i1 %cmp2, label %if.then.3, label %if.else.6

if.then.3:                                        ; preds = %if.end
  %10 = load i32, i32* %height, align 4
  %div4 = sdiv i32 %10, 2
  %11 = load i32, i32* %y, align 4
  %add5 = add nsw i32 %11, %div4
  store i32 %add5, i32* %y, align 4
  br label %if.end.8

if.else.6:                                        ; preds = %if.end
  %12 = load i32, i32* %height, align 4
  %13 = load i32, i32* %y, align 4
  %add7 = add nsw i32 %13, %12
  store i32 %add7, i32* %y, align 4
  br label %if.end.8

if.end.8:                                         ; preds = %if.else.6, %if.then.3
  %14 = load %struct.Object_t*, %struct.Object_t** %obj.addr, align 8
  %class9 = getelementptr inbounds %struct.Object_t, %struct.Object_t* %14, i32 0, i32 0
  %15 = load %struct.ObjectClass_t*, %struct.ObjectClass_t** %class9, align 8
  %near_sash = getelementptr inbounds %struct.ObjectClass_t, %struct.ObjectClass_t* %15, i32 0, i32 11
  %16 = load void (%struct.Object_t*, i32, i32)* (%struct.Object_t*, i32, i32)*, void (%struct.Object_t*, i32, i32)* (%struct.Object_t*, i32, i32)** %near_sash, align 8
  %17 = load %struct.Object_t*, %struct.Object_t** %obj.addr, align 8
  %18 = load i32, i32* %x, align 4
  %19 = load i32, i32* %y, align 4
  %call = call void (%struct.Object_t*, i32, i32)* %16(%struct.Object_t* %17, i32 %18, i32 %19)
  store void (%struct.Object_t*, i32, i32)* %call, void (%struct.Object_t*, i32, i32)** %sash_func, align 8
  %20 = load void (%struct.Object_t*, i32, i32)*, void (%struct.Object_t*, i32, i32)** %sash_func, align 8
  %tobool = icmp ne void (%struct.Object_t*, i32, i32)* %20, null
  br i1 %tobool, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %if.end.8
  %21 = load void (%struct.Object_t*, i32, i32)*, void (%struct.Object_t*, i32, i32)** %sash_func, align 8
  %22 = load %struct.Object_t*, %struct.Object_t** %obj.addr, align 8
  %23 = load i32, i32* %dx.addr, align 4
  %24 = load i32, i32* %dy.addr, align 4
  call void %21(%struct.Object_t* %22, i32 %23, i32 %24)
  %25 = load %struct.Object_t*, %struct.Object_t** %obj.addr, align 8
  call void @object_emit_geometry_signal(%struct.Object_t* %25)
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.10, %if.end.8
  ret void
}

; Function Attrs: nounwind uwtable
define void @object_remove(%struct.Object_t* %obj) #0 {
entry:
  %obj.addr = alloca %struct.Object_t*, align 8
  store %struct.Object_t* %obj, %struct.Object_t** %obj.addr, align 8
  %0 = load %struct.Object_t*, %struct.Object_t** %obj.addr, align 8
  %list = getelementptr inbounds %struct.Object_t, %struct.Object_t* %0, i32 0, i32 1
  %1 = load %struct.ObjectList_t*, %struct.ObjectList_t** %list, align 8
  %2 = load %struct.Object_t*, %struct.Object_t** %obj.addr, align 8
  call void @object_list_remove(%struct.ObjectList_t* %1, %struct.Object_t* %2)
  %3 = load %struct.Object_t*, %struct.Object_t** %obj.addr, align 8
  call void @object_emit_geometry_signal(%struct.Object_t* %3)
  ret void
}

; Function Attrs: nounwind uwtable
define void @object_list_remove(%struct.ObjectList_t* %list, %struct.Object_t* %object) #0 {
entry:
  %list.addr = alloca %struct.ObjectList_t*, align 8
  %object.addr = alloca %struct.Object_t*, align 8
  store %struct.ObjectList_t* %list, %struct.ObjectList_t** %list.addr, align 8
  store %struct.Object_t* %object, %struct.Object_t** %object.addr, align 8
  %0 = load %struct.ObjectList_t*, %struct.ObjectList_t** %list.addr, align 8
  %list1 = getelementptr inbounds %struct.ObjectList_t, %struct.ObjectList_t* %0, i32 0, i32 0
  %1 = load %struct._GList*, %struct._GList** %list1, align 8
  %2 = load %struct.Object_t*, %struct.Object_t** %object.addr, align 8
  %3 = bitcast %struct.Object_t* %2 to i8*
  %call = call %struct._GList* @g_list_remove(%struct._GList* %1, i8* %3)
  %4 = load %struct.ObjectList_t*, %struct.ObjectList_t** %list.addr, align 8
  %list2 = getelementptr inbounds %struct.ObjectList_t, %struct.ObjectList_t* %4, i32 0, i32 0
  store %struct._GList* %call, %struct._GList** %list2, align 8
  %5 = load %struct.ObjectList_t*, %struct.ObjectList_t** %list.addr, align 8
  %changed = getelementptr inbounds %struct.ObjectList_t, %struct.ObjectList_t* %5, i32 0, i32 1
  store i32 1, i32* %changed, align 4
  %6 = load %struct.ObjectList_t*, %struct.ObjectList_t** %list.addr, align 8
  %remove_cb = getelementptr inbounds %struct.ObjectList_t, %struct.ObjectList_t* %6, i32 0, i32 5
  %7 = load %struct.Object_t*, %struct.Object_t** %object.addr, align 8
  call void @object_list_callback_call(%struct.ObjectListCallback_t* %remove_cb, %struct.Object_t* %7)
  %8 = load %struct.Object_t*, %struct.Object_t** %object.addr, align 8
  call void @object_unref(%struct.Object_t* %8)
  ret void
}

; Function Attrs: nounwind uwtable
define void @object_lock(%struct.Object_t* %obj) #0 {
entry:
  %obj.addr = alloca %struct.Object_t*, align 8
  store %struct.Object_t* %obj, %struct.Object_t** %obj.addr, align 8
  %0 = load %struct.Object_t*, %struct.Object_t** %obj.addr, align 8
  %locked = getelementptr inbounds %struct.Object_t, %struct.Object_t* %0, i32 0, i32 4
  store i32 1, i32* %locked, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define void @object_unlock(%struct.Object_t* %obj) #0 {
entry:
  %obj.addr = alloca %struct.Object_t*, align 8
  store %struct.Object_t* %obj, %struct.Object_t** %obj.addr, align 8
  %0 = load %struct.Object_t*, %struct.Object_t** %obj.addr, align 8
  %locked = getelementptr inbounds %struct.Object_t, %struct.Object_t* %0, i32 0, i32 4
  store i32 0, i32* %locked, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define void @object_set_url(%struct.Object_t* %obj, i8* %url) #0 {
entry:
  %obj.addr = alloca %struct.Object_t*, align 8
  %url.addr = alloca i8*, align 8
  store %struct.Object_t* %obj, %struct.Object_t** %obj.addr, align 8
  store i8* %url, i8** %url.addr, align 8
  %0 = load %struct.Object_t*, %struct.Object_t** %obj.addr, align 8
  %url1 = getelementptr inbounds %struct.Object_t, %struct.Object_t* %0, i32 0, i32 5
  %1 = load i8*, i8** %url.addr, align 8
  %call = call i8* @g_strreplace(i8** %url1, i8* %1)
  ret void
}

declare i8* @g_strreplace(i8**, i8*) #1

; Function Attrs: nounwind uwtable
define void @object_set_target(%struct.Object_t* %obj, i8* %target) #0 {
entry:
  %obj.addr = alloca %struct.Object_t*, align 8
  %target.addr = alloca i8*, align 8
  store %struct.Object_t* %obj, %struct.Object_t** %obj.addr, align 8
  store i8* %target, i8** %target.addr, align 8
  %0 = load %struct.Object_t*, %struct.Object_t** %obj.addr, align 8
  %target1 = getelementptr inbounds %struct.Object_t, %struct.Object_t* %0, i32 0, i32 6
  %1 = load i8*, i8** %target.addr, align 8
  %call = call i8* @g_strreplace(i8** %target1, i8* %1)
  ret void
}

; Function Attrs: nounwind uwtable
define void @object_set_comment(%struct.Object_t* %obj, i8* %comment) #0 {
entry:
  %obj.addr = alloca %struct.Object_t*, align 8
  %comment.addr = alloca i8*, align 8
  store %struct.Object_t* %obj, %struct.Object_t** %obj.addr, align 8
  store i8* %comment, i8** %comment.addr, align 8
  %0 = load %struct.Object_t*, %struct.Object_t** %obj.addr, align 8
  %comment1 = getelementptr inbounds %struct.Object_t, %struct.Object_t* %0, i32 0, i32 7
  %1 = load i8*, i8** %comment.addr, align 8
  %call = call i8* @g_strreplace(i8** %comment1, i8* %1)
  ret void
}

; Function Attrs: nounwind uwtable
define void @object_set_mouse_over(%struct.Object_t* %obj, i8* %mouse_over) #0 {
entry:
  %obj.addr = alloca %struct.Object_t*, align 8
  %mouse_over.addr = alloca i8*, align 8
  store %struct.Object_t* %obj, %struct.Object_t** %obj.addr, align 8
  store i8* %mouse_over, i8** %mouse_over.addr, align 8
  %0 = load %struct.Object_t*, %struct.Object_t** %obj.addr, align 8
  %mouse_over1 = getelementptr inbounds %struct.Object_t, %struct.Object_t* %0, i32 0, i32 8
  %1 = load i8*, i8** %mouse_over.addr, align 8
  %call = call i8* @g_strreplace(i8** %mouse_over1, i8* %1)
  ret void
}

; Function Attrs: nounwind uwtable
define void @object_set_mouse_out(%struct.Object_t* %obj, i8* %mouse_out) #0 {
entry:
  %obj.addr = alloca %struct.Object_t*, align 8
  %mouse_out.addr = alloca i8*, align 8
  store %struct.Object_t* %obj, %struct.Object_t** %obj.addr, align 8
  store i8* %mouse_out, i8** %mouse_out.addr, align 8
  %0 = load %struct.Object_t*, %struct.Object_t** %obj.addr, align 8
  %mouse_out1 = getelementptr inbounds %struct.Object_t, %struct.Object_t* %0, i32 0, i32 9
  %1 = load i8*, i8** %mouse_out.addr, align 8
  %call = call i8* @g_strreplace(i8** %mouse_out1, i8* %1)
  ret void
}

; Function Attrs: nounwind uwtable
define void @object_set_focus(%struct.Object_t* %obj, i8* %focus) #0 {
entry:
  %obj.addr = alloca %struct.Object_t*, align 8
  %focus.addr = alloca i8*, align 8
  store %struct.Object_t* %obj, %struct.Object_t** %obj.addr, align 8
  store i8* %focus, i8** %focus.addr, align 8
  %0 = load %struct.Object_t*, %struct.Object_t** %obj.addr, align 8
  %focus1 = getelementptr inbounds %struct.Object_t, %struct.Object_t* %0, i32 0, i32 10
  %1 = load i8*, i8** %focus.addr, align 8
  %call = call i8* @g_strreplace(i8** %focus1, i8* %1)
  ret void
}

; Function Attrs: nounwind uwtable
define void @object_set_blur(%struct.Object_t* %obj, i8* %blur) #0 {
entry:
  %obj.addr = alloca %struct.Object_t*, align 8
  %blur.addr = alloca i8*, align 8
  store %struct.Object_t* %obj, %struct.Object_t** %obj.addr, align 8
  store i8* %blur, i8** %blur.addr, align 8
  %0 = load %struct.Object_t*, %struct.Object_t** %obj.addr, align 8
  %blur1 = getelementptr inbounds %struct.Object_t, %struct.Object_t* %0, i32 0, i32 11
  %1 = load i8*, i8** %blur.addr, align 8
  %call = call i8* @g_strreplace(i8** %blur1, i8* %1)
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @object_get_position_in_list(%struct.Object_t* %obj) #0 {
entry:
  %obj.addr = alloca %struct.Object_t*, align 8
  store %struct.Object_t* %obj, %struct.Object_t** %obj.addr, align 8
  %0 = load %struct.Object_t*, %struct.Object_t** %obj.addr, align 8
  %list = getelementptr inbounds %struct.Object_t, %struct.Object_t* %0, i32 0, i32 1
  %1 = load %struct.ObjectList_t*, %struct.ObjectList_t** %list, align 8
  %list1 = getelementptr inbounds %struct.ObjectList_t, %struct.ObjectList_t* %1, i32 0, i32 0
  %2 = load %struct._GList*, %struct._GList** %list1, align 8
  %3 = load %struct.Object_t*, %struct.Object_t** %obj.addr, align 8
  %4 = bitcast %struct.Object_t* %3 to i8*
  %call = call i32 @g_list_index(%struct._GList* %2, i8* %4)
  ret i32 %call
}

declare i32 @g_list_index(%struct._GList*, i8*) #1

; Function Attrs: nounwind uwtable
define void @object_emit_changed_signal(%struct.Object_t* %obj) #0 {
entry:
  %obj.addr = alloca %struct.Object_t*, align 8
  store %struct.Object_t* %obj, %struct.Object_t** %obj.addr, align 8
  %0 = load %struct.Object_t*, %struct.Object_t** %obj.addr, align 8
  %list = getelementptr inbounds %struct.Object_t, %struct.Object_t* %0, i32 0, i32 1
  %1 = load %struct.ObjectList_t*, %struct.ObjectList_t** %list, align 8
  %changed_cb = getelementptr inbounds %struct.ObjectList_t, %struct.ObjectList_t* %1, i32 0, i32 2
  %2 = load %struct.Object_t*, %struct.Object_t** %obj.addr, align 8
  call void @object_list_callback_call(%struct.ObjectListCallback_t* %changed_cb, %struct.Object_t* %2)
  ret void
}

; Function Attrs: nounwind uwtable
define void @object_emit_update_signal(%struct.Object_t* %obj) #0 {
entry:
  %obj.addr = alloca %struct.Object_t*, align 8
  store %struct.Object_t* %obj, %struct.Object_t** %obj.addr, align 8
  %0 = load %struct.Object_t*, %struct.Object_t** %obj.addr, align 8
  %list = getelementptr inbounds %struct.Object_t, %struct.Object_t* %0, i32 0, i32 1
  %1 = load %struct.ObjectList_t*, %struct.ObjectList_t** %list, align 8
  %update_cb = getelementptr inbounds %struct.ObjectList_t, %struct.ObjectList_t* %1, i32 0, i32 3
  %2 = load %struct.Object_t*, %struct.Object_t** %obj.addr, align 8
  call void @object_list_callback_call(%struct.ObjectListCallback_t* %update_cb, %struct.Object_t* %2)
  ret void
}

; Function Attrs: nounwind uwtable
define void @do_object_locked_dialog() #0 {
entry:
  %0 = load %struct.DefaultDialog_t*, %struct.DefaultDialog_t** @do_object_locked_dialog.dialog, align 8
  %tobool = icmp ne %struct.DefaultDialog_t* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call %struct.DefaultDialog_t* @make_default_dialog(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0))
  store %struct.DefaultDialog_t* %call, %struct.DefaultDialog_t** @do_object_locked_dialog.dialog, align 8
  %1 = load %struct.DefaultDialog_t*, %struct.DefaultDialog_t** @do_object_locked_dialog.dialog, align 8
  call void @default_dialog_hide_cancel_button(%struct.DefaultDialog_t* %1)
  %2 = load %struct.DefaultDialog_t*, %struct.DefaultDialog_t** @do_object_locked_dialog.dialog, align 8
  call void @default_dialog_hide_apply_button(%struct.DefaultDialog_t* %2)
  %3 = load %struct.DefaultDialog_t*, %struct.DefaultDialog_t** @do_object_locked_dialog.dialog, align 8
  call void @default_dialog_set_label(%struct.DefaultDialog_t* %3, i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.2, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load %struct.DefaultDialog_t*, %struct.DefaultDialog_t** @do_object_locked_dialog.dialog, align 8
  call void @default_dialog_show(%struct.DefaultDialog_t* %4)
  ret void
}

declare %struct.DefaultDialog_t* @make_default_dialog(i8*) #1

declare void @default_dialog_hide_cancel_button(%struct.DefaultDialog_t*) #1

declare void @default_dialog_hide_apply_button(%struct.DefaultDialog_t*) #1

declare void @default_dialog_set_label(%struct.DefaultDialog_t*, i8*) #1

declare void @default_dialog_show(%struct.DefaultDialog_t*) #1

; Function Attrs: nounwind uwtable
define i32 @object_on_button_press(%struct._GtkWidget* %widget, %struct._GdkEventButton* %event, i8* %data) #0 {
entry:
  %retval = alloca i32, align 4
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %event.addr = alloca %struct._GdkEventButton*, align 8
  %data.addr = alloca i8*, align 8
  %preferences = alloca %struct.PreferencesData_t*, align 8
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %command = alloca %struct.Command_t*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GdkEventButton* %event, %struct._GdkEventButton** %event.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %call = call %struct.PreferencesData_t* @get_preferences()
  store %struct.PreferencesData_t* %call, %struct.PreferencesData_t** %preferences, align 8
  %0 = load %struct._GdkEventButton*, %struct._GdkEventButton** %event.addr, align 8
  %x1 = getelementptr inbounds %struct._GdkEventButton, %struct._GdkEventButton* %0, i32 0, i32 4
  %1 = load double, double* %x1, align 8
  %conv = fptosi double %1 to i32
  %call2 = call i32 @get_real_coord(i32 %conv)
  store i32 %call2, i32* %x, align 4
  %2 = load %struct._GdkEventButton*, %struct._GdkEventButton** %event.addr, align 8
  %y3 = getelementptr inbounds %struct._GdkEventButton, %struct._GdkEventButton* %2, i32 0, i32 5
  %3 = load double, double* %y3, align 8
  %conv4 = fptosi double %3 to i32
  %call5 = call i32 @get_real_coord(i32 %conv4)
  store i32 %call5, i32* %y, align 4
  %4 = load %struct._GdkEventButton*, %struct._GdkEventButton** %event.addr, align 8
  %type = getelementptr inbounds %struct._GdkEventButton, %struct._GdkEventButton* %4, i32 0, i32 0
  %5 = load i32, i32* %type, align 4
  %cmp = icmp eq i32 %5, 5
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  call void @round_to_grid(i32* %x, i32* %y)
  %6 = load %struct.Object_t*, %struct.Object_t** @object_on_button_press.obj, align 8
  %tobool = icmp ne %struct.Object_t* %6, null
  br i1 %tobool, label %if.then.7, label %if.else.42

if.then.7:                                        ; preds = %if.end
  %7 = load %struct._GdkEventButton*, %struct._GdkEventButton** %event.addr, align 8
  %button = getelementptr inbounds %struct._GdkEventButton, %struct._GdkEventButton* %7, i32 0, i32 8
  %8 = load i32, i32* %button, align 4
  %cmp8 = icmp eq i32 %8, 1
  br i1 %cmp8, label %if.then.10, label %if.else.27

if.then.10:                                       ; preds = %if.then.7
  %9 = load %struct.ObjectFactory_t*, %struct.ObjectFactory_t** @object_on_button_press.factory, align 8
  %finish = getelementptr inbounds %struct.ObjectFactory_t, %struct.ObjectFactory_t* %9, i32 0, i32 1
  %10 = load i32 (%struct.Object_t*, i32, i32)*, i32 (%struct.Object_t*, i32, i32)** %finish, align 8
  %tobool11 = icmp ne i32 (%struct.Object_t*, i32, i32)* %10, null
  br i1 %tobool11, label %lor.lhs.false, label %if.then.15

lor.lhs.false:                                    ; preds = %if.then.10
  %11 = load %struct.ObjectFactory_t*, %struct.ObjectFactory_t** @object_on_button_press.factory, align 8
  %finish12 = getelementptr inbounds %struct.ObjectFactory_t, %struct.ObjectFactory_t* %11, i32 0, i32 1
  %12 = load i32 (%struct.Object_t*, i32, i32)*, i32 (%struct.Object_t*, i32, i32)** %finish12, align 8
  %13 = load %struct.Object_t*, %struct.Object_t** @object_on_button_press.obj, align 8
  %14 = load i32, i32* %x, align 4
  %15 = load i32, i32* %y, align 4
  %call13 = call i32 %12(%struct.Object_t* %13, i32 %14, i32 %15)
  %tobool14 = icmp ne i32 %call13, 0
  br i1 %tobool14, label %if.then.15, label %if.end.26

if.then.15:                                       ; preds = %lor.lhs.false, %if.then.10
  %16 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %17 = bitcast %struct._GtkWidget* %16 to i8*
  %18 = load %struct.ObjectFactory_t*, %struct.ObjectFactory_t** @object_on_button_press.factory, align 8
  %19 = bitcast %struct.ObjectFactory_t* %18 to i8*
  %call16 = call i32 @g_signal_handlers_disconnect_matched(i8* %17, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (i32 (%struct._GtkWidget*, %struct._GdkEventMotion*, %struct.ObjectFactory_t*)* @button_motion to i8*), i8* %19)
  %20 = load %struct.Object_t*, %struct.Object_t** @object_on_button_press.obj, align 8
  %class = getelementptr inbounds %struct.Object_t, %struct.Object_t* %20, i32 0, i32 0
  %21 = load %struct.ObjectClass_t*, %struct.ObjectClass_t** %class, align 8
  %is_valid = getelementptr inbounds %struct.ObjectClass_t, %struct.ObjectClass_t* %21, i32 0, i32 4
  %22 = load i32 (%struct.Object_t*)*, i32 (%struct.Object_t*)** %is_valid, align 8
  %23 = load %struct.Object_t*, %struct.Object_t** @object_on_button_press.obj, align 8
  %call17 = call i32 %22(%struct.Object_t* %23)
  %tobool18 = icmp ne i32 %call17, 0
  br i1 %tobool18, label %if.then.19, label %if.else

if.then.19:                                       ; preds = %if.then.15
  %call20 = call %struct.ObjectList_t* @get_shapes()
  %24 = load %struct.Object_t*, %struct.Object_t** @object_on_button_press.obj, align 8
  %call21 = call %struct.Command_t* @create_command_new(%struct.ObjectList_t* %call20, %struct.Object_t* %24)
  store %struct.Command_t* %call21, %struct.Command_t** %command, align 8
  %25 = load %struct.Command_t*, %struct.Command_t** %command, align 8
  call void @command_execute(%struct.Command_t* %25)
  %26 = load %struct.PreferencesData_t*, %struct.PreferencesData_t** %preferences, align 8
  %prompt_for_area_info = getelementptr inbounds %struct.PreferencesData_t, %struct.PreferencesData_t* %26, i32 0, i32 1
  %27 = load i32, i32* %prompt_for_area_info, align 4
  %tobool22 = icmp ne i32 %27, 0
  br i1 %tobool22, label %if.then.23, label %if.end.24

if.then.23:                                       ; preds = %if.then.19
  %28 = load %struct.Object_t*, %struct.Object_t** @object_on_button_press.obj, align 8
  call void @object_edit(%struct.Object_t* %28, i32 0)
  br label %if.end.24

if.end.24:                                        ; preds = %if.then.23, %if.then.19
  br label %if.end.25

if.else:                                          ; preds = %if.then.15
  %29 = load %struct.Object_t*, %struct.Object_t** @object_on_button_press.obj, align 8
  call void @object_unref(%struct.Object_t* %29)
  br label %if.end.25

if.end.25:                                        ; preds = %if.else, %if.end.24
  %30 = load %struct.Object_t*, %struct.Object_t** @object_on_button_press.obj, align 8
  call void @preview_unset_tmp_obj(%struct.Object_t* %30)
  call void @preview_redraw()
  store %struct.Object_t* null, %struct.Object_t** @object_on_button_press.obj, align 8
  call void @main_clear_dimension()
  br label %if.end.26

if.end.26:                                        ; preds = %if.end.25, %lor.lhs.false
  br label %if.end.41

if.else.27:                                       ; preds = %if.then.7
  %31 = load %struct._GdkEventButton*, %struct._GdkEventButton** %event.addr, align 8
  %button28 = getelementptr inbounds %struct._GdkEventButton, %struct._GdkEventButton* %31, i32 0, i32 8
  %32 = load i32, i32* %button28, align 4
  %cmp29 = icmp eq i32 %32, 3
  br i1 %cmp29, label %if.then.31, label %if.end.40

if.then.31:                                       ; preds = %if.else.27
  %33 = load %struct.ObjectFactory_t*, %struct.ObjectFactory_t** @object_on_button_press.factory, align 8
  %cancel = getelementptr inbounds %struct.ObjectFactory_t, %struct.ObjectFactory_t* %33, i32 0, i32 2
  %34 = load i32 (%struct._GdkEventButton*, %struct.Object_t*)*, i32 (%struct._GdkEventButton*, %struct.Object_t*)** %cancel, align 8
  %tobool32 = icmp ne i32 (%struct._GdkEventButton*, %struct.Object_t*)* %34, null
  br i1 %tobool32, label %lor.lhs.false.33, label %if.then.37

lor.lhs.false.33:                                 ; preds = %if.then.31
  %35 = load %struct.ObjectFactory_t*, %struct.ObjectFactory_t** @object_on_button_press.factory, align 8
  %cancel34 = getelementptr inbounds %struct.ObjectFactory_t, %struct.ObjectFactory_t* %35, i32 0, i32 2
  %36 = load i32 (%struct._GdkEventButton*, %struct.Object_t*)*, i32 (%struct._GdkEventButton*, %struct.Object_t*)** %cancel34, align 8
  %37 = load %struct._GdkEventButton*, %struct._GdkEventButton** %event.addr, align 8
  %38 = load %struct.Object_t*, %struct.Object_t** @object_on_button_press.obj, align 8
  %call35 = call i32 %36(%struct._GdkEventButton* %37, %struct.Object_t* %38)
  %tobool36 = icmp ne i32 %call35, 0
  br i1 %tobool36, label %if.then.37, label %if.end.39

if.then.37:                                       ; preds = %lor.lhs.false.33, %if.then.31
  %39 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %40 = bitcast %struct._GtkWidget* %39 to i8*
  %41 = load %struct.ObjectFactory_t*, %struct.ObjectFactory_t** @object_on_button_press.factory, align 8
  %42 = bitcast %struct.ObjectFactory_t* %41 to i8*
  %call38 = call i32 @g_signal_handlers_disconnect_matched(i8* %40, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (i32 (%struct._GtkWidget*, %struct._GdkEventMotion*, %struct.ObjectFactory_t*)* @button_motion to i8*), i8* %42)
  %43 = load %struct.Object_t*, %struct.Object_t** @object_on_button_press.obj, align 8
  call void @object_unref(%struct.Object_t* %43)
  %44 = load %struct.Object_t*, %struct.Object_t** @object_on_button_press.obj, align 8
  call void @preview_unset_tmp_obj(%struct.Object_t* %44)
  call void @preview_redraw()
  store %struct.Object_t* null, %struct.Object_t** @object_on_button_press.obj, align 8
  call void @main_clear_dimension()
  br label %if.end.39

if.end.39:                                        ; preds = %if.then.37, %lor.lhs.false.33
  store i32 1, i32* %retval
  br label %return

if.end.40:                                        ; preds = %if.else.27
  br label %if.end.41

if.end.41:                                        ; preds = %if.end.40, %if.end.26
  br label %if.end.51

if.else.42:                                       ; preds = %if.end
  %45 = load %struct._GdkEventButton*, %struct._GdkEventButton** %event.addr, align 8
  %button43 = getelementptr inbounds %struct._GdkEventButton, %struct._GdkEventButton* %45, i32 0, i32 8
  %46 = load i32, i32* %button43, align 4
  %cmp44 = icmp eq i32 %46, 1
  br i1 %cmp44, label %if.then.46, label %if.end.50

if.then.46:                                       ; preds = %if.else.42
  %47 = load i8*, i8** %data.addr, align 8
  %48 = bitcast i8* %47 to %struct.ObjectFactory_t* (i32)*
  %49 = load %struct._GdkEventButton*, %struct._GdkEventButton** %event.addr, align 8
  %state = getelementptr inbounds %struct._GdkEventButton, %struct._GdkEventButton* %49, i32 0, i32 7
  %50 = load i32, i32* %state, align 4
  %call47 = call %struct.ObjectFactory_t* %48(i32 %50)
  store %struct.ObjectFactory_t* %call47, %struct.ObjectFactory_t** @object_on_button_press.factory, align 8
  %51 = load %struct.ObjectFactory_t*, %struct.ObjectFactory_t** @object_on_button_press.factory, align 8
  %52 = load i32, i32* %x, align 4
  %53 = load i32, i32* %y, align 4
  %call48 = call %struct.Object_t* @object_factory_create_object(%struct.ObjectFactory_t* %51, i32 %52, i32 %53)
  store %struct.Object_t* %call48, %struct.Object_t** @object_on_button_press.obj, align 8
  %54 = load %struct.Object_t*, %struct.Object_t** @object_on_button_press.obj, align 8
  call void @preview_set_tmp_obj(%struct.Object_t* %54)
  %55 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %56 = bitcast %struct._GtkWidget* %55 to i8*
  %57 = load %struct.ObjectFactory_t*, %struct.ObjectFactory_t** @object_on_button_press.factory, align 8
  %58 = bitcast %struct.ObjectFactory_t* %57 to i8*
  %call49 = call i64 @g_signal_connect_data(i8* %56, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i32 0, i32 0), void ()* bitcast (i32 (%struct._GtkWidget*, %struct._GdkEventMotion*, %struct.ObjectFactory_t*)* @button_motion to void ()*), i8* %58, void (i8*, %struct._GClosure*)* null, i32 0)
  br label %if.end.50

if.end.50:                                        ; preds = %if.then.46, %if.else.42
  br label %if.end.51

if.end.51:                                        ; preds = %if.end.50, %if.end.41
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.51, %if.end.39, %if.then
  %59 = load i32, i32* %retval
  ret i32 %59
}

declare i32 @get_real_coord(i32) #1

declare void @round_to_grid(i32*, i32*) #1

declare i32 @g_signal_handlers_disconnect_matched(i8*, i32, i32, i32, %struct._GClosure*, i8*, i8*) #1

; Function Attrs: nounwind uwtable
define internal i32 @button_motion(%struct._GtkWidget* %widget, %struct._GdkEventMotion* %event, %struct.ObjectFactory_t* %factory) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %event.addr = alloca %struct._GdkEventMotion*, align 8
  %factory.addr = alloca %struct.ObjectFactory_t*, align 8
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GdkEventMotion* %event, %struct._GdkEventMotion** %event.addr, align 8
  store %struct.ObjectFactory_t* %factory, %struct.ObjectFactory_t** %factory.addr, align 8
  %0 = load %struct._GdkEventMotion*, %struct._GdkEventMotion** %event.addr, align 8
  %x1 = getelementptr inbounds %struct._GdkEventMotion, %struct._GdkEventMotion* %0, i32 0, i32 4
  %1 = load double, double* %x1, align 8
  %conv = fptosi double %1 to i32
  %call = call i32 @get_real_coord(i32 %conv)
  store i32 %call, i32* %x, align 4
  %2 = load %struct._GdkEventMotion*, %struct._GdkEventMotion** %event.addr, align 8
  %y2 = getelementptr inbounds %struct._GdkEventMotion, %struct._GdkEventMotion* %2, i32 0, i32 5
  %3 = load double, double* %y2, align 8
  %conv3 = fptosi double %3 to i32
  %call4 = call i32 @get_real_coord(i32 %conv3)
  store i32 %call4, i32* %y, align 4
  call void @round_to_grid(i32* %x, i32* %y)
  %4 = load %struct.ObjectFactory_t*, %struct.ObjectFactory_t** %factory.addr, align 8
  %set_xy = getelementptr inbounds %struct.ObjectFactory_t, %struct.ObjectFactory_t* %4, i32 0, i32 4
  %5 = load void (%struct.Object_t*, i32, i32, i32)*, void (%struct.Object_t*, i32, i32, i32)** %set_xy, align 8
  %6 = load %struct.ObjectFactory_t*, %struct.ObjectFactory_t** %factory.addr, align 8
  %obj = getelementptr inbounds %struct.ObjectFactory_t, %struct.ObjectFactory_t* %6, i32 0, i32 0
  %7 = load %struct.Object_t*, %struct.Object_t** %obj, align 8
  %8 = load %struct._GdkEventMotion*, %struct._GdkEventMotion** %event.addr, align 8
  %state = getelementptr inbounds %struct._GdkEventMotion, %struct._GdkEventMotion* %8, i32 0, i32 7
  %9 = load i32, i32* %state, align 4
  %10 = load i32, i32* %x, align 4
  %11 = load i32, i32* %y, align 4
  call void %5(%struct.Object_t* %7, i32 %9, i32 %10, i32 %11)
  call void @preview_redraw()
  ret i32 0
}

declare %struct.Command_t* @create_command_new(%struct.ObjectList_t*, %struct.Object_t*) #1

declare %struct.ObjectList_t* @get_shapes() #1

declare void @command_execute(%struct.Command_t*) #1

declare void @preview_unset_tmp_obj(%struct.Object_t*) #1

declare void @preview_redraw() #1

declare void @main_clear_dimension() #1

; Function Attrs: nounwind uwtable
define internal %struct.Object_t* @object_factory_create_object(%struct.ObjectFactory_t* %factory, i32 %x, i32 %y) #0 {
entry:
  %factory.addr = alloca %struct.ObjectFactory_t*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  store %struct.ObjectFactory_t* %factory, %struct.ObjectFactory_t** %factory.addr, align 8
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  %0 = load %struct.ObjectFactory_t*, %struct.ObjectFactory_t** %factory.addr, align 8
  %create_object = getelementptr inbounds %struct.ObjectFactory_t, %struct.ObjectFactory_t* %0, i32 0, i32 3
  %1 = load %struct.Object_t* (i32, i32)*, %struct.Object_t* (i32, i32)** %create_object, align 8
  %2 = load i32, i32* %x.addr, align 4
  %3 = load i32, i32* %y.addr, align 4
  %call = call %struct.Object_t* %1(i32 %2, i32 %3)
  %4 = load %struct.ObjectFactory_t*, %struct.ObjectFactory_t** %factory.addr, align 8
  %obj = getelementptr inbounds %struct.ObjectFactory_t, %struct.ObjectFactory_t* %4, i32 0, i32 0
  store %struct.Object_t* %call, %struct.Object_t** %obj, align 8
  ret %struct.Object_t* %call
}

declare void @preview_set_tmp_obj(%struct.Object_t*) #1

declare i64 @g_signal_connect_data(i8*, i8*, void ()*, i8*, void (i8*, %struct._GClosure*)*, i32) #1

declare noalias i8* @g_malloc0_n(i64, i64) #1

; Function Attrs: nounwind uwtable
define void @object_list_destruct(%struct.ObjectList_t* %list) #0 {
entry:
  %list.addr = alloca %struct.ObjectList_t*, align 8
  store %struct.ObjectList_t* %list, %struct.ObjectList_t** %list.addr, align 8
  %0 = load %struct.ObjectList_t*, %struct.ObjectList_t** %list.addr, align 8
  call void @object_list_remove_all(%struct.ObjectList_t* %0)
  %1 = load %struct.ObjectList_t*, %struct.ObjectList_t** %list.addr, align 8
  %list1 = getelementptr inbounds %struct.ObjectList_t, %struct.ObjectList_t* %1, i32 0, i32 0
  %2 = load %struct._GList*, %struct._GList** %list1, align 8
  %3 = bitcast %struct._GList* %2 to i8*
  call void @g_free(i8* %3)
  ret void
}

; Function Attrs: nounwind uwtable
define void @object_list_remove_all(%struct.ObjectList_t* %list) #0 {
entry:
  %list.addr = alloca %struct.ObjectList_t*, align 8
  %p = alloca %struct._GList*, align 8
  %obj = alloca %struct.Object_t*, align 8
  store %struct.ObjectList_t* %list, %struct.ObjectList_t** %list.addr, align 8
  %0 = load %struct.ObjectList_t*, %struct.ObjectList_t** %list.addr, align 8
  %list1 = getelementptr inbounds %struct.ObjectList_t, %struct.ObjectList_t* %0, i32 0, i32 0
  %1 = load %struct._GList*, %struct._GList** %list1, align 8
  store %struct._GList* %1, %struct._GList** %p, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load %struct._GList*, %struct._GList** %p, align 8
  %tobool = icmp ne %struct._GList* %2, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load %struct._GList*, %struct._GList** %p, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %3, i32 0, i32 0
  %4 = load i8*, i8** %data, align 8
  %5 = bitcast i8* %4 to %struct.Object_t*
  store %struct.Object_t* %5, %struct.Object_t** %obj, align 8
  %6 = load %struct.ObjectList_t*, %struct.ObjectList_t** %list.addr, align 8
  %remove_cb = getelementptr inbounds %struct.ObjectList_t, %struct.ObjectList_t* %6, i32 0, i32 5
  %7 = load %struct.Object_t*, %struct.Object_t** %obj, align 8
  call void @object_list_callback_call(%struct.ObjectListCallback_t* %remove_cb, %struct.Object_t* %7)
  %8 = load %struct.Object_t*, %struct.Object_t** %obj, align 8
  call void @object_unref(%struct.Object_t* %8)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %9 = load %struct._GList*, %struct._GList** %p, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %9, i32 0, i32 1
  %10 = load %struct._GList*, %struct._GList** %next, align 8
  store %struct._GList* %10, %struct._GList** %p, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %11 = load %struct.ObjectList_t*, %struct.ObjectList_t** %list.addr, align 8
  %list2 = getelementptr inbounds %struct.ObjectList_t, %struct.ObjectList_t* %11, i32 0, i32 0
  %12 = load %struct._GList*, %struct._GList** %list2, align 8
  call void @g_list_free(%struct._GList* %12)
  %13 = load %struct.ObjectList_t*, %struct.ObjectList_t** %list.addr, align 8
  %list3 = getelementptr inbounds %struct.ObjectList_t, %struct.ObjectList_t* %13, i32 0, i32 0
  store %struct._GList* null, %struct._GList** %list3, align 8
  %14 = load %struct.ObjectList_t*, %struct.ObjectList_t** %list.addr, align 8
  %changed = getelementptr inbounds %struct.ObjectList_t, %struct.ObjectList_t* %14, i32 0, i32 1
  store i32 1, i32* %changed, align 4
  ret void
}

declare void @g_free(i8*) #1

; Function Attrs: nounwind uwtable
define %struct.ObjectList_t* @object_list_append_list(%struct.ObjectList_t* %des, %struct.ObjectList_t* %src) #0 {
entry:
  %des.addr = alloca %struct.ObjectList_t*, align 8
  %src.addr = alloca %struct.ObjectList_t*, align 8
  %p = alloca %struct._GList*, align 8
  store %struct.ObjectList_t* %des, %struct.ObjectList_t** %des.addr, align 8
  store %struct.ObjectList_t* %src, %struct.ObjectList_t** %src.addr, align 8
  %0 = load %struct.ObjectList_t*, %struct.ObjectList_t** %src.addr, align 8
  %list = getelementptr inbounds %struct.ObjectList_t, %struct.ObjectList_t* %0, i32 0, i32 0
  %1 = load %struct._GList*, %struct._GList** %list, align 8
  store %struct._GList* %1, %struct._GList** %p, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load %struct._GList*, %struct._GList** %p, align 8
  %tobool = icmp ne %struct._GList* %2, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load %struct.ObjectList_t*, %struct.ObjectList_t** %des.addr, align 8
  %4 = load %struct._GList*, %struct._GList** %p, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %4, i32 0, i32 0
  %5 = load i8*, i8** %data, align 8
  %6 = bitcast i8* %5 to %struct.Object_t*
  %call = call %struct.Object_t* @object_clone(%struct.Object_t* %6)
  call void @object_list_append(%struct.ObjectList_t* %3, %struct.Object_t* %call)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load %struct._GList*, %struct._GList** %p, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %7, i32 0, i32 1
  %8 = load %struct._GList*, %struct._GList** %next, align 8
  store %struct._GList* %8, %struct._GList** %p, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %9 = load %struct.ObjectList_t*, %struct.ObjectList_t** %src.addr, align 8
  %tobool1 = icmp ne %struct.ObjectList_t* %9, null
  %cond = select i1 %tobool1, i32 1, i32 0
  %10 = load %struct.ObjectList_t*, %struct.ObjectList_t** %des.addr, align 8
  %changed = getelementptr inbounds %struct.ObjectList_t, %struct.ObjectList_t* %10, i32 0, i32 1
  store i32 %cond, i32* %changed, align 4
  %11 = load %struct.ObjectList_t*, %struct.ObjectList_t** %des.addr, align 8
  ret %struct.ObjectList_t* %11
}

; Function Attrs: nounwind uwtable
define void @object_list_append(%struct.ObjectList_t* %list, %struct.Object_t* %object) #0 {
entry:
  %list.addr = alloca %struct.ObjectList_t*, align 8
  %object.addr = alloca %struct.Object_t*, align 8
  store %struct.ObjectList_t* %list, %struct.ObjectList_t** %list.addr, align 8
  store %struct.Object_t* %object, %struct.Object_t** %object.addr, align 8
  %0 = load %struct.ObjectList_t*, %struct.ObjectList_t** %list.addr, align 8
  %1 = load %struct.Object_t*, %struct.Object_t** %object.addr, align 8
  %list1 = getelementptr inbounds %struct.Object_t, %struct.Object_t* %1, i32 0, i32 1
  store %struct.ObjectList_t* %0, %struct.ObjectList_t** %list1, align 8
  %2 = load %struct.ObjectList_t*, %struct.ObjectList_t** %list.addr, align 8
  %list2 = getelementptr inbounds %struct.ObjectList_t, %struct.ObjectList_t* %2, i32 0, i32 0
  %3 = load %struct._GList*, %struct._GList** %list2, align 8
  %4 = load %struct.Object_t*, %struct.Object_t** %object.addr, align 8
  %5 = bitcast %struct.Object_t* %4 to i8*
  %call = call %struct._GList* @g_list_append(%struct._GList* %3, i8* %5)
  %6 = load %struct.ObjectList_t*, %struct.ObjectList_t** %list.addr, align 8
  %list3 = getelementptr inbounds %struct.ObjectList_t, %struct.ObjectList_t* %6, i32 0, i32 0
  store %struct._GList* %call, %struct._GList** %list3, align 8
  %7 = load %struct.ObjectList_t*, %struct.ObjectList_t** %list.addr, align 8
  %changed = getelementptr inbounds %struct.ObjectList_t, %struct.ObjectList_t* %7, i32 0, i32 1
  store i32 1, i32* %changed, align 4
  %8 = load %struct.ObjectList_t*, %struct.ObjectList_t** %list.addr, align 8
  %add_cb = getelementptr inbounds %struct.ObjectList_t, %struct.ObjectList_t* %8, i32 0, i32 4
  %9 = load %struct.Object_t*, %struct.Object_t** %object.addr, align 8
  call void @object_list_callback_call(%struct.ObjectListCallback_t* %add_cb, %struct.Object_t* %9)
  ret void
}

; Function Attrs: nounwind uwtable
define %struct.ObjectList_t* @object_list_copy(%struct.ObjectList_t* %des, %struct.ObjectList_t* %src) #0 {
entry:
  %des.addr = alloca %struct.ObjectList_t*, align 8
  %src.addr = alloca %struct.ObjectList_t*, align 8
  store %struct.ObjectList_t* %des, %struct.ObjectList_t** %des.addr, align 8
  store %struct.ObjectList_t* %src, %struct.ObjectList_t** %src.addr, align 8
  %0 = load %struct.ObjectList_t*, %struct.ObjectList_t** %des.addr, align 8
  %tobool = icmp ne %struct.ObjectList_t* %0, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load %struct.ObjectList_t*, %struct.ObjectList_t** %des.addr, align 8
  call void @object_list_remove_all(%struct.ObjectList_t* %1)
  br label %if.end

if.else:                                          ; preds = %entry
  %call = call %struct.ObjectList_t* @make_object_list()
  store %struct.ObjectList_t* %call, %struct.ObjectList_t** %des.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %2 = load %struct.ObjectList_t*, %struct.ObjectList_t** %des.addr, align 8
  %3 = load %struct.ObjectList_t*, %struct.ObjectList_t** %src.addr, align 8
  %call1 = call %struct.ObjectList_t* @object_list_append_list(%struct.ObjectList_t* %2, %struct.ObjectList_t* %3)
  ret %struct.ObjectList_t* %call1
}

declare %struct._GList* @g_list_append(%struct._GList*, i8*) #1

; Function Attrs: nounwind uwtable
define void @object_list_prepend(%struct.ObjectList_t* %list, %struct.Object_t* %object) #0 {
entry:
  %list.addr = alloca %struct.ObjectList_t*, align 8
  %object.addr = alloca %struct.Object_t*, align 8
  store %struct.ObjectList_t* %list, %struct.ObjectList_t** %list.addr, align 8
  store %struct.Object_t* %object, %struct.Object_t** %object.addr, align 8
  %0 = load %struct.ObjectList_t*, %struct.ObjectList_t** %list.addr, align 8
  %1 = load %struct.Object_t*, %struct.Object_t** %object.addr, align 8
  %list1 = getelementptr inbounds %struct.Object_t, %struct.Object_t* %1, i32 0, i32 1
  store %struct.ObjectList_t* %0, %struct.ObjectList_t** %list1, align 8
  %2 = load %struct.ObjectList_t*, %struct.ObjectList_t** %list.addr, align 8
  %list2 = getelementptr inbounds %struct.ObjectList_t, %struct.ObjectList_t* %2, i32 0, i32 0
  %3 = load %struct._GList*, %struct._GList** %list2, align 8
  %4 = load %struct.Object_t*, %struct.Object_t** %object.addr, align 8
  %5 = bitcast %struct.Object_t* %4 to i8*
  %call = call %struct._GList* @g_list_prepend(%struct._GList* %3, i8* %5)
  %6 = load %struct.ObjectList_t*, %struct.ObjectList_t** %list.addr, align 8
  %list3 = getelementptr inbounds %struct.ObjectList_t, %struct.ObjectList_t* %6, i32 0, i32 0
  store %struct._GList* %call, %struct._GList** %list3, align 8
  %7 = load %struct.ObjectList_t*, %struct.ObjectList_t** %list.addr, align 8
  %changed = getelementptr inbounds %struct.ObjectList_t, %struct.ObjectList_t* %7, i32 0, i32 1
  store i32 1, i32* %changed, align 4
  %8 = load %struct.ObjectList_t*, %struct.ObjectList_t** %list.addr, align 8
  %add_cb = getelementptr inbounds %struct.ObjectList_t, %struct.ObjectList_t* %8, i32 0, i32 4
  %9 = load %struct.Object_t*, %struct.Object_t** %object.addr, align 8
  call void @object_list_callback_call(%struct.ObjectListCallback_t* %add_cb, %struct.Object_t* %9)
  ret void
}

declare %struct._GList* @g_list_prepend(%struct._GList*, i8*) #1

; Function Attrs: nounwind uwtable
define void @object_list_insert(%struct.ObjectList_t* %list, i32 %position, %struct.Object_t* %object) #0 {
entry:
  %list.addr = alloca %struct.ObjectList_t*, align 8
  %position.addr = alloca i32, align 4
  %object.addr = alloca %struct.Object_t*, align 8
  store %struct.ObjectList_t* %list, %struct.ObjectList_t** %list.addr, align 8
  store i32 %position, i32* %position.addr, align 4
  store %struct.Object_t* %object, %struct.Object_t** %object.addr, align 8
  %0 = load %struct.ObjectList_t*, %struct.ObjectList_t** %list.addr, align 8
  %1 = load %struct.Object_t*, %struct.Object_t** %object.addr, align 8
  %list1 = getelementptr inbounds %struct.Object_t, %struct.Object_t* %1, i32 0, i32 1
  store %struct.ObjectList_t* %0, %struct.ObjectList_t** %list1, align 8
  %2 = load %struct.ObjectList_t*, %struct.ObjectList_t** %list.addr, align 8
  %list2 = getelementptr inbounds %struct.ObjectList_t, %struct.ObjectList_t* %2, i32 0, i32 0
  %3 = load %struct._GList*, %struct._GList** %list2, align 8
  %4 = load %struct.Object_t*, %struct.Object_t** %object.addr, align 8
  %5 = bitcast %struct.Object_t* %4 to i8*
  %6 = load i32, i32* %position.addr, align 4
  %call = call %struct._GList* @g_list_insert(%struct._GList* %3, i8* %5, i32 %6)
  %7 = load %struct.ObjectList_t*, %struct.ObjectList_t** %list.addr, align 8
  %list3 = getelementptr inbounds %struct.ObjectList_t, %struct.ObjectList_t* %7, i32 0, i32 0
  store %struct._GList* %call, %struct._GList** %list3, align 8
  %8 = load %struct.ObjectList_t*, %struct.ObjectList_t** %list.addr, align 8
  %changed = getelementptr inbounds %struct.ObjectList_t, %struct.ObjectList_t* %8, i32 0, i32 1
  store i32 1, i32* %changed, align 4
  %9 = load %struct.ObjectList_t*, %struct.ObjectList_t** %list.addr, align 8
  %add_cb = getelementptr inbounds %struct.ObjectList_t, %struct.ObjectList_t* %9, i32 0, i32 4
  %10 = load %struct.Object_t*, %struct.Object_t** %object.addr, align 8
  call void @object_list_callback_call(%struct.ObjectListCallback_t* %add_cb, %struct.Object_t* %10)
  ret void
}

declare %struct._GList* @g_list_insert(%struct._GList*, i8*, i32) #1

declare %struct._GList* @g_list_remove(%struct._GList*, i8*) #1

; Function Attrs: nounwind uwtable
define void @object_list_remove_link(%struct.ObjectList_t* %list, %struct._GList* %link) #0 {
entry:
  %list.addr = alloca %struct.ObjectList_t*, align 8
  %link.addr = alloca %struct._GList*, align 8
  store %struct.ObjectList_t* %list, %struct.ObjectList_t** %list.addr, align 8
  store %struct._GList* %link, %struct._GList** %link.addr, align 8
  %0 = load %struct.ObjectList_t*, %struct.ObjectList_t** %list.addr, align 8
  %list1 = getelementptr inbounds %struct.ObjectList_t, %struct.ObjectList_t* %0, i32 0, i32 0
  %1 = load %struct._GList*, %struct._GList** %list1, align 8
  %2 = load %struct._GList*, %struct._GList** %link.addr, align 8
  %call = call %struct._GList* @g_list_remove_link(%struct._GList* %1, %struct._GList* %2)
  %3 = load %struct.ObjectList_t*, %struct.ObjectList_t** %list.addr, align 8
  %list2 = getelementptr inbounds %struct.ObjectList_t, %struct.ObjectList_t* %3, i32 0, i32 0
  store %struct._GList* %call, %struct._GList** %list2, align 8
  %4 = load %struct.ObjectList_t*, %struct.ObjectList_t** %list.addr, align 8
  %changed = getelementptr inbounds %struct.ObjectList_t, %struct.ObjectList_t* %4, i32 0, i32 1
  store i32 1, i32* %changed, align 4
  %5 = load %struct.ObjectList_t*, %struct.ObjectList_t** %list.addr, align 8
  %remove_cb = getelementptr inbounds %struct.ObjectList_t, %struct.ObjectList_t* %5, i32 0, i32 5
  %6 = load %struct._GList*, %struct._GList** %link.addr, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %6, i32 0, i32 0
  %7 = load i8*, i8** %data, align 8
  %8 = bitcast i8* %7 to %struct.Object_t*
  call void @object_list_callback_call(%struct.ObjectListCallback_t* %remove_cb, %struct.Object_t* %8)
  ret void
}

declare %struct._GList* @g_list_remove_link(%struct._GList*, %struct._GList*) #1

; Function Attrs: nounwind uwtable
define void @object_list_update(%struct.ObjectList_t* %list, %struct.Object_t* %object) #0 {
entry:
  %list.addr = alloca %struct.ObjectList_t*, align 8
  %object.addr = alloca %struct.Object_t*, align 8
  store %struct.ObjectList_t* %list, %struct.ObjectList_t** %list.addr, align 8
  store %struct.Object_t* %object, %struct.Object_t** %object.addr, align 8
  %0 = load %struct.ObjectList_t*, %struct.ObjectList_t** %list.addr, align 8
  %update_cb = getelementptr inbounds %struct.ObjectList_t, %struct.ObjectList_t* %0, i32 0, i32 3
  %1 = load %struct.Object_t*, %struct.Object_t** %object.addr, align 8
  call void @object_list_callback_call(%struct.ObjectListCallback_t* %update_cb, %struct.Object_t* %1)
  ret void
}

; Function Attrs: nounwind uwtable
define void @object_list_draw(%struct.ObjectList_t* %list, %struct._cairo* %cr) #0 {
entry:
  %list.addr = alloca %struct.ObjectList_t*, align 8
  %cr.addr = alloca %struct._cairo*, align 8
  %p = alloca %struct._GList*, align 8
  store %struct.ObjectList_t* %list, %struct.ObjectList_t** %list.addr, align 8
  store %struct._cairo* %cr, %struct._cairo** %cr.addr, align 8
  %0 = load %struct.ObjectList_t*, %struct.ObjectList_t** %list.addr, align 8
  %list1 = getelementptr inbounds %struct.ObjectList_t, %struct.ObjectList_t* %0, i32 0, i32 0
  %1 = load %struct._GList*, %struct._GList** %list1, align 8
  store %struct._GList* %1, %struct._GList** %p, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load %struct._GList*, %struct._GList** %p, align 8
  %tobool = icmp ne %struct._GList* %2, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load %struct._GList*, %struct._GList** %p, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %3, i32 0, i32 0
  %4 = load i8*, i8** %data, align 8
  %5 = bitcast i8* %4 to %struct.Object_t*
  %6 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  call void @object_draw(%struct.Object_t* %5, %struct._cairo* %6)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load %struct._GList*, %struct._GList** %p, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %7, i32 0, i32 1
  %8 = load %struct._GList*, %struct._GList** %next, align 8
  store %struct._GList* %8, %struct._GList** %p, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @object_list_draw_selected(%struct.ObjectList_t* %list, %struct._cairo* %cr) #0 {
entry:
  %list.addr = alloca %struct.ObjectList_t*, align 8
  %cr.addr = alloca %struct._cairo*, align 8
  %p = alloca %struct._GList*, align 8
  %obj = alloca %struct.Object_t*, align 8
  store %struct.ObjectList_t* %list, %struct.ObjectList_t** %list.addr, align 8
  store %struct._cairo* %cr, %struct._cairo** %cr.addr, align 8
  %0 = load %struct.ObjectList_t*, %struct.ObjectList_t** %list.addr, align 8
  %list1 = getelementptr inbounds %struct.ObjectList_t, %struct.ObjectList_t* %0, i32 0, i32 0
  %1 = load %struct._GList*, %struct._GList** %list1, align 8
  store %struct._GList* %1, %struct._GList** %p, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load %struct._GList*, %struct._GList** %p, align 8
  %tobool = icmp ne %struct._GList* %2, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load %struct._GList*, %struct._GList** %p, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %3, i32 0, i32 0
  %4 = load i8*, i8** %data, align 8
  %5 = bitcast i8* %4 to %struct.Object_t*
  store %struct.Object_t* %5, %struct.Object_t** %obj, align 8
  %6 = load %struct.Object_t*, %struct.Object_t** %obj, align 8
  %selected = getelementptr inbounds %struct.Object_t, %struct.Object_t* %6, i32 0, i32 3
  %7 = load i32, i32* %selected, align 4
  %tobool2 = icmp ne i32 %7, 0
  br i1 %tobool2, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %8 = load %struct.Object_t*, %struct.Object_t** %obj, align 8
  %9 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  call void @object_draw(%struct.Object_t* %8, %struct._cairo* %9)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %10 = load %struct._GList*, %struct._GList** %p, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %10, i32 0, i32 1
  %11 = load %struct._GList*, %struct._GList** %next, align 8
  store %struct._GList* %11, %struct._GList** %p, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define %struct.Object_t* @object_list_find(%struct.ObjectList_t* %list, i32 %x, i32 %y) #0 {
entry:
  %list.addr = alloca %struct.ObjectList_t*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %found = alloca %struct.Object_t*, align 8
  %p = alloca %struct._GList*, align 8
  %obj = alloca %struct.Object_t*, align 8
  store %struct.ObjectList_t* %list, %struct.ObjectList_t** %list.addr, align 8
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  store %struct.Object_t* null, %struct.Object_t** %found, align 8
  %0 = load %struct.ObjectList_t*, %struct.ObjectList_t** %list.addr, align 8
  %list1 = getelementptr inbounds %struct.ObjectList_t, %struct.ObjectList_t* %0, i32 0, i32 0
  %1 = load %struct._GList*, %struct._GList** %list1, align 8
  store %struct._GList* %1, %struct._GList** %p, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load %struct._GList*, %struct._GList** %p, align 8
  %tobool = icmp ne %struct._GList* %2, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load %struct._GList*, %struct._GList** %p, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %3, i32 0, i32 0
  %4 = load i8*, i8** %data, align 8
  %5 = bitcast i8* %4 to %struct.Object_t*
  store %struct.Object_t* %5, %struct.Object_t** %obj, align 8
  %6 = load %struct.Object_t*, %struct.Object_t** %obj, align 8
  %class = getelementptr inbounds %struct.Object_t, %struct.Object_t* %6, i32 0, i32 0
  %7 = load %struct.ObjectClass_t*, %struct.ObjectClass_t** %class, align 8
  %point_is_on = getelementptr inbounds %struct.ObjectClass_t, %struct.ObjectClass_t* %7, i32 0, i32 12
  %8 = load i32 (%struct.Object_t*, i32, i32)*, i32 (%struct.Object_t*, i32, i32)** %point_is_on, align 8
  %9 = load %struct.Object_t*, %struct.Object_t** %obj, align 8
  %10 = load i32, i32* %x.addr, align 4
  %11 = load i32, i32* %y.addr, align 4
  %call = call i32 %8(%struct.Object_t* %9, i32 %10, i32 %11)
  %tobool2 = icmp ne i32 %call, 0
  br i1 %tobool2, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %12 = load %struct.Object_t*, %struct.Object_t** %obj, align 8
  store %struct.Object_t* %12, %struct.Object_t** %found, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %13 = load %struct._GList*, %struct._GList** %p, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %13, i32 0, i32 1
  %14 = load %struct._GList*, %struct._GList** %next, align 8
  store %struct._GList* %14, %struct._GList** %p, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %15 = load %struct.Object_t*, %struct.Object_t** %found, align 8
  ret %struct.Object_t* %15
}

; Function Attrs: nounwind uwtable
define %struct.Object_t* @object_list_near_sash(%struct.ObjectList_t* %list, i32 %x, i32 %y, void (%struct.Object_t*, i32, i32)** %sash_func) #0 {
entry:
  %list.addr = alloca %struct.ObjectList_t*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %sash_func.addr = alloca void (%struct.Object_t*, i32, i32)**, align 8
  %found = alloca %struct.Object_t*, align 8
  %p = alloca %struct._GList*, align 8
  %obj = alloca %struct.Object_t*, align 8
  %func = alloca void (%struct.Object_t*, i32, i32)*, align 8
  store %struct.ObjectList_t* %list, %struct.ObjectList_t** %list.addr, align 8
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  store void (%struct.Object_t*, i32, i32)** %sash_func, void (%struct.Object_t*, i32, i32)*** %sash_func.addr, align 8
  store %struct.Object_t* null, %struct.Object_t** %found, align 8
  %0 = load %struct.ObjectList_t*, %struct.ObjectList_t** %list.addr, align 8
  %list1 = getelementptr inbounds %struct.ObjectList_t, %struct.ObjectList_t* %0, i32 0, i32 0
  %1 = load %struct._GList*, %struct._GList** %list1, align 8
  store %struct._GList* %1, %struct._GList** %p, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load %struct._GList*, %struct._GList** %p, align 8
  %tobool = icmp ne %struct._GList* %2, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load %struct._GList*, %struct._GList** %p, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %3, i32 0, i32 0
  %4 = load i8*, i8** %data, align 8
  %5 = bitcast i8* %4 to %struct.Object_t*
  store %struct.Object_t* %5, %struct.Object_t** %obj, align 8
  %6 = load %struct.Object_t*, %struct.Object_t** %obj, align 8
  %selected = getelementptr inbounds %struct.Object_t, %struct.Object_t* %6, i32 0, i32 3
  %7 = load i32, i32* %selected, align 4
  %tobool2 = icmp ne i32 %7, 0
  br i1 %tobool2, label %if.then, label %if.end.5

if.then:                                          ; preds = %for.body
  %8 = load %struct.Object_t*, %struct.Object_t** %obj, align 8
  %class = getelementptr inbounds %struct.Object_t, %struct.Object_t* %8, i32 0, i32 0
  %9 = load %struct.ObjectClass_t*, %struct.ObjectClass_t** %class, align 8
  %near_sash = getelementptr inbounds %struct.ObjectClass_t, %struct.ObjectClass_t* %9, i32 0, i32 11
  %10 = load void (%struct.Object_t*, i32, i32)* (%struct.Object_t*, i32, i32)*, void (%struct.Object_t*, i32, i32)* (%struct.Object_t*, i32, i32)** %near_sash, align 8
  %11 = load %struct.Object_t*, %struct.Object_t** %obj, align 8
  %12 = load i32, i32* %x.addr, align 4
  %13 = load i32, i32* %y.addr, align 4
  %call = call void (%struct.Object_t*, i32, i32)* %10(%struct.Object_t* %11, i32 %12, i32 %13)
  store void (%struct.Object_t*, i32, i32)* %call, void (%struct.Object_t*, i32, i32)** %func, align 8
  %14 = load void (%struct.Object_t*, i32, i32)*, void (%struct.Object_t*, i32, i32)** %func, align 8
  %tobool3 = icmp ne void (%struct.Object_t*, i32, i32)* %14, null
  br i1 %tobool3, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %if.then
  %15 = load %struct.Object_t*, %struct.Object_t** %obj, align 8
  store %struct.Object_t* %15, %struct.Object_t** %found, align 8
  %16 = load void (%struct.Object_t*, i32, i32)*, void (%struct.Object_t*, i32, i32)** %func, align 8
  %17 = load void (%struct.Object_t*, i32, i32)**, void (%struct.Object_t*, i32, i32)*** %sash_func.addr, align 8
  store void (%struct.Object_t*, i32, i32)* %16, void (%struct.Object_t*, i32, i32)** %17, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.4, %if.then
  br label %if.end.5

if.end.5:                                         ; preds = %if.end, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.5
  %18 = load %struct._GList*, %struct._GList** %p, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %18, i32 0, i32 1
  %19 = load %struct._GList*, %struct._GList** %next, align 8
  store %struct._GList* %19, %struct._GList** %p, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %20 = load %struct.Object_t*, %struct.Object_t** %found, align 8
  ret %struct.Object_t* %20
}

declare void @g_list_free(%struct._GList*) #1

; Function Attrs: nounwind uwtable
define void @clear_paste_buffer() #0 {
entry:
  %0 = load %struct.ObjectList_t*, %struct.ObjectList_t** @_paste_buffer, align 8
  %tobool = icmp ne %struct.ObjectList_t* %0, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load %struct.ObjectList_t*, %struct.ObjectList_t** @_paste_buffer, align 8
  call void @object_list_remove_all(%struct.ObjectList_t* %1)
  br label %if.end

if.else:                                          ; preds = %entry
  %call = call %struct.ObjectList_t* @make_object_list()
  store %struct.ObjectList_t* %call, %struct.ObjectList_t** @_paste_buffer, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define %struct.ObjectList_t* @get_paste_buffer() #0 {
entry:
  %0 = load %struct.ObjectList_t*, %struct.ObjectList_t** @_paste_buffer, align 8
  ret %struct.ObjectList_t* %0
}

; Function Attrs: nounwind uwtable
define i32 @object_list_cut(%struct.ObjectList_t* %list) #0 {
entry:
  %list.addr = alloca %struct.ObjectList_t*, align 8
  %p = alloca %struct._GList*, align 8
  %q = alloca %struct._GList*, align 8
  %count = alloca i32, align 4
  %obj = alloca %struct.Object_t*, align 8
  store %struct.ObjectList_t* %list, %struct.ObjectList_t** %list.addr, align 8
  store i32 0, i32* %count, align 4
  call void @clear_paste_buffer()
  %0 = load %struct.ObjectList_t*, %struct.ObjectList_t** %list.addr, align 8
  %list1 = getelementptr inbounds %struct.ObjectList_t, %struct.ObjectList_t* %0, i32 0, i32 0
  %1 = load %struct._GList*, %struct._GList** %list1, align 8
  store %struct._GList* %1, %struct._GList** %p, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load %struct._GList*, %struct._GList** %p, align 8
  %tobool = icmp ne %struct._GList* %2, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load %struct._GList*, %struct._GList** %p, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %3, i32 0, i32 0
  %4 = load i8*, i8** %data, align 8
  %5 = bitcast i8* %4 to %struct.Object_t*
  store %struct.Object_t* %5, %struct.Object_t** %obj, align 8
  %6 = load %struct._GList*, %struct._GList** %p, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %6, i32 0, i32 1
  %7 = load %struct._GList*, %struct._GList** %next, align 8
  store %struct._GList* %7, %struct._GList** %q, align 8
  %8 = load %struct.Object_t*, %struct.Object_t** %obj, align 8
  %selected = getelementptr inbounds %struct.Object_t, %struct.Object_t* %8, i32 0, i32 3
  %9 = load i32, i32* %selected, align 4
  %tobool2 = icmp ne i32 %9, 0
  br i1 %tobool2, label %if.then, label %if.end.5

if.then:                                          ; preds = %for.body
  %10 = load %struct.Object_t*, %struct.Object_t** %obj, align 8
  %locked = getelementptr inbounds %struct.Object_t, %struct.Object_t* %10, i32 0, i32 4
  %11 = load i32, i32* %locked, align 4
  %tobool3 = icmp ne i32 %11, 0
  br i1 %tobool3, label %if.then.4, label %if.else

if.then.4:                                        ; preds = %if.then
  call void @do_object_locked_dialog()
  br label %if.end

if.else:                                          ; preds = %if.then
  %12 = load %struct.ObjectList_t*, %struct.ObjectList_t** @_paste_buffer, align 8
  %13 = load %struct.Object_t*, %struct.Object_t** %obj, align 8
  call void @object_list_append(%struct.ObjectList_t* %12, %struct.Object_t* %13)
  %14 = load %struct.ObjectList_t*, %struct.ObjectList_t** %list.addr, align 8
  %15 = load %struct._GList*, %struct._GList** %p, align 8
  call void @object_list_remove_link(%struct.ObjectList_t* %14, %struct._GList* %15)
  %16 = load i32, i32* %count, align 4
  %inc = add nsw i32 %16, 1
  store i32 %inc, i32* %count, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.4
  br label %if.end.5

if.end.5:                                         ; preds = %if.end, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.5
  %17 = load %struct._GList*, %struct._GList** %q, align 8
  store %struct._GList* %17, %struct._GList** %p, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %18 = load i32, i32* %count, align 4
  %tobool6 = icmp ne i32 %18, 0
  %cond = select i1 %tobool6, i32 1, i32 0
  %19 = load %struct.ObjectList_t*, %struct.ObjectList_t** %list.addr, align 8
  %changed = getelementptr inbounds %struct.ObjectList_t, %struct.ObjectList_t* %19, i32 0, i32 1
  store i32 %cond, i32* %changed, align 4
  %20 = load i32, i32* %count, align 4
  ret i32 %20
}

; Function Attrs: nounwind uwtable
define void @object_list_copy_to_paste_buffer(%struct.ObjectList_t* %list) #0 {
entry:
  %list.addr = alloca %struct.ObjectList_t*, align 8
  %p = alloca %struct._GList*, align 8
  %obj = alloca %struct.Object_t*, align 8
  store %struct.ObjectList_t* %list, %struct.ObjectList_t** %list.addr, align 8
  call void @clear_paste_buffer()
  %0 = load %struct.ObjectList_t*, %struct.ObjectList_t** %list.addr, align 8
  %list1 = getelementptr inbounds %struct.ObjectList_t, %struct.ObjectList_t* %0, i32 0, i32 0
  %1 = load %struct._GList*, %struct._GList** %list1, align 8
  store %struct._GList* %1, %struct._GList** %p, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load %struct._GList*, %struct._GList** %p, align 8
  %tobool = icmp ne %struct._GList* %2, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load %struct._GList*, %struct._GList** %p, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %3, i32 0, i32 0
  %4 = load i8*, i8** %data, align 8
  %5 = bitcast i8* %4 to %struct.Object_t*
  store %struct.Object_t* %5, %struct.Object_t** %obj, align 8
  %6 = load %struct.Object_t*, %struct.Object_t** %obj, align 8
  %selected = getelementptr inbounds %struct.Object_t, %struct.Object_t* %6, i32 0, i32 3
  %7 = load i32, i32* %selected, align 4
  %tobool2 = icmp ne i32 %7, 0
  br i1 %tobool2, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %8 = load %struct.ObjectList_t*, %struct.ObjectList_t** @_paste_buffer, align 8
  %9 = load %struct.Object_t*, %struct.Object_t** %obj, align 8
  %call = call %struct.Object_t* @object_clone(%struct.Object_t* %9)
  call void @object_list_append(%struct.ObjectList_t* %8, %struct.Object_t* %call)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %10 = load %struct._GList*, %struct._GList** %p, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %10, i32 0, i32 1
  %11 = load %struct._GList*, %struct._GList** %next, align 8
  store %struct._GList* %11, %struct._GList** %p, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @object_list_paste(%struct.ObjectList_t* %list) #0 {
entry:
  %list.addr = alloca %struct.ObjectList_t*, align 8
  store %struct.ObjectList_t* %list, %struct.ObjectList_t** %list.addr, align 8
  %0 = load %struct.ObjectList_t*, %struct.ObjectList_t** %list.addr, align 8
  %1 = load %struct.ObjectList_t*, %struct.ObjectList_t** @_paste_buffer, align 8
  %call = call %struct.ObjectList_t* @object_list_append_list(%struct.ObjectList_t* %0, %struct.ObjectList_t* %1)
  ret void
}

; Function Attrs: nounwind uwtable
define void @object_list_delete_selected(%struct.ObjectList_t* %list) #0 {
entry:
  %list.addr = alloca %struct.ObjectList_t*, align 8
  %p = alloca %struct._GList*, align 8
  %q = alloca %struct._GList*, align 8
  %obj = alloca %struct.Object_t*, align 8
  store %struct.ObjectList_t* %list, %struct.ObjectList_t** %list.addr, align 8
  %0 = load %struct.ObjectList_t*, %struct.ObjectList_t** %list.addr, align 8
  %list1 = getelementptr inbounds %struct.ObjectList_t, %struct.ObjectList_t* %0, i32 0, i32 0
  %1 = load %struct._GList*, %struct._GList** %list1, align 8
  store %struct._GList* %1, %struct._GList** %p, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load %struct._GList*, %struct._GList** %p, align 8
  %tobool = icmp ne %struct._GList* %2, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load %struct._GList*, %struct._GList** %p, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %3, i32 0, i32 0
  %4 = load i8*, i8** %data, align 8
  %5 = bitcast i8* %4 to %struct.Object_t*
  store %struct.Object_t* %5, %struct.Object_t** %obj, align 8
  %6 = load %struct._GList*, %struct._GList** %p, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %6, i32 0, i32 1
  %7 = load %struct._GList*, %struct._GList** %next, align 8
  store %struct._GList* %7, %struct._GList** %q, align 8
  %8 = load %struct.Object_t*, %struct.Object_t** %obj, align 8
  %selected = getelementptr inbounds %struct.Object_t, %struct.Object_t* %8, i32 0, i32 3
  %9 = load i32, i32* %selected, align 4
  %tobool2 = icmp ne i32 %9, 0
  br i1 %tobool2, label %if.then, label %if.end.5

if.then:                                          ; preds = %for.body
  %10 = load %struct.Object_t*, %struct.Object_t** %obj, align 8
  %locked = getelementptr inbounds %struct.Object_t, %struct.Object_t* %10, i32 0, i32 4
  %11 = load i32, i32* %locked, align 4
  %tobool3 = icmp ne i32 %11, 0
  br i1 %tobool3, label %if.then.4, label %if.else

if.then.4:                                        ; preds = %if.then
  call void @do_object_locked_dialog()
  br label %if.end

if.else:                                          ; preds = %if.then
  %12 = load %struct.ObjectList_t*, %struct.ObjectList_t** %list.addr, align 8
  %13 = load %struct._GList*, %struct._GList** %p, align 8
  call void @object_list_remove_link(%struct.ObjectList_t* %12, %struct._GList* %13)
  %14 = load %struct.Object_t*, %struct.Object_t** %obj, align 8
  call void @object_unref(%struct.Object_t* %14)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.4
  br label %if.end.5

if.end.5:                                         ; preds = %if.end, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.5
  %15 = load %struct._GList*, %struct._GList** %q, align 8
  store %struct._GList* %15, %struct._GList** %p, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @object_list_edit_selected(%struct.ObjectList_t* %list) #0 {
entry:
  %list.addr = alloca %struct.ObjectList_t*, align 8
  %p = alloca %struct._GList*, align 8
  %obj = alloca %struct.Object_t*, align 8
  store %struct.ObjectList_t* %list, %struct.ObjectList_t** %list.addr, align 8
  %0 = load %struct.ObjectList_t*, %struct.ObjectList_t** %list.addr, align 8
  %list1 = getelementptr inbounds %struct.ObjectList_t, %struct.ObjectList_t* %0, i32 0, i32 0
  %1 = load %struct._GList*, %struct._GList** %list1, align 8
  store %struct._GList* %1, %struct._GList** %p, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load %struct._GList*, %struct._GList** %p, align 8
  %tobool = icmp ne %struct._GList* %2, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load %struct._GList*, %struct._GList** %p, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %3, i32 0, i32 0
  %4 = load i8*, i8** %data, align 8
  %5 = bitcast i8* %4 to %struct.Object_t*
  store %struct.Object_t* %5, %struct.Object_t** %obj, align 8
  %6 = load %struct.Object_t*, %struct.Object_t** %obj, align 8
  %selected = getelementptr inbounds %struct.Object_t, %struct.Object_t* %6, i32 0, i32 3
  %7 = load i32, i32* %selected, align 4
  %tobool2 = icmp ne i32 %7, 0
  br i1 %tobool2, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %8 = load %struct.Object_t*, %struct.Object_t** %obj, align 8
  call void @object_edit(%struct.Object_t* %8, i32 1)
  br label %for.end

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %9 = load %struct._GList*, %struct._GList** %p, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %9, i32 0, i32 1
  %10 = load %struct._GList*, %struct._GList** %next, align 8
  store %struct._GList* %10, %struct._GList** %p, align 8
  br label %for.cond

for.end:                                          ; preds = %if.then, %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @object_list_select_all(%struct.ObjectList_t* %list) #0 {
entry:
  %list.addr = alloca %struct.ObjectList_t*, align 8
  %p = alloca %struct._GList*, align 8
  %count = alloca i32, align 4
  %obj = alloca %struct.Object_t*, align 8
  store %struct.ObjectList_t* %list, %struct.ObjectList_t** %list.addr, align 8
  store i32 0, i32* %count, align 4
  %0 = load %struct.ObjectList_t*, %struct.ObjectList_t** %list.addr, align 8
  %list1 = getelementptr inbounds %struct.ObjectList_t, %struct.ObjectList_t* %0, i32 0, i32 0
  %1 = load %struct._GList*, %struct._GList** %list1, align 8
  store %struct._GList* %1, %struct._GList** %p, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load %struct._GList*, %struct._GList** %p, align 8
  %tobool = icmp ne %struct._GList* %2, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load %struct._GList*, %struct._GList** %p, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %3, i32 0, i32 0
  %4 = load i8*, i8** %data, align 8
  %5 = bitcast i8* %4 to %struct.Object_t*
  store %struct.Object_t* %5, %struct.Object_t** %obj, align 8
  %6 = load %struct.Object_t*, %struct.Object_t** %obj, align 8
  %selected = getelementptr inbounds %struct.Object_t, %struct.Object_t* %6, i32 0, i32 3
  %7 = load i32, i32* %selected, align 4
  %tobool2 = icmp ne i32 %7, 0
  br i1 %tobool2, label %if.end, label %if.then

if.then:                                          ; preds = %for.body
  %8 = load %struct.Object_t*, %struct.Object_t** %obj, align 8
  call void @object_select(%struct.Object_t* %8)
  %9 = load i32, i32* %count, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %count, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %10 = load %struct._GList*, %struct._GList** %p, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %10, i32 0, i32 1
  %11 = load %struct._GList*, %struct._GList** %next, align 8
  store %struct._GList* %11, %struct._GList** %p, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %12 = load i32, i32* %count, align 4
  ret i32 %12
}

; Function Attrs: nounwind uwtable
define void @object_list_select_next(%struct.ObjectList_t* %list) #0 {
entry:
  %list.addr = alloca %struct.ObjectList_t*, align 8
  %p = alloca %struct._GList*, align 8
  %obj = alloca %struct.Object_t*, align 8
  store %struct.ObjectList_t* %list, %struct.ObjectList_t** %list.addr, align 8
  %0 = load %struct.ObjectList_t*, %struct.ObjectList_t** %list.addr, align 8
  %list1 = getelementptr inbounds %struct.ObjectList_t, %struct.ObjectList_t* %0, i32 0, i32 0
  %1 = load %struct._GList*, %struct._GList** %list1, align 8
  store %struct._GList* %1, %struct._GList** %p, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.17, %entry
  %2 = load %struct._GList*, %struct._GList** %p, align 8
  %tobool = icmp ne %struct._GList* %2, null
  br i1 %tobool, label %for.body, label %for.end.19

for.body:                                         ; preds = %for.cond
  %3 = load %struct._GList*, %struct._GList** %p, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %3, i32 0, i32 0
  %4 = load i8*, i8** %data, align 8
  %5 = bitcast i8* %4 to %struct.Object_t*
  store %struct.Object_t* %5, %struct.Object_t** %obj, align 8
  %6 = load %struct.Object_t*, %struct.Object_t** %obj, align 8
  %selected = getelementptr inbounds %struct.Object_t, %struct.Object_t* %6, i32 0, i32 3
  %7 = load i32, i32* %selected, align 4
  %tobool2 = icmp ne i32 %7, 0
  br i1 %tobool2, label %if.then, label %if.end.16

if.then:                                          ; preds = %for.body
  %8 = load %struct.Object_t*, %struct.Object_t** %obj, align 8
  call void @object_unselect(%struct.Object_t* %8)
  %9 = load %struct._GList*, %struct._GList** %p, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %9, i32 0, i32 1
  %10 = load %struct._GList*, %struct._GList** %next, align 8
  %tobool3 = icmp ne %struct._GList* %10, null
  br i1 %tobool3, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  %11 = load %struct._GList*, %struct._GList** %p, align 8
  %next4 = getelementptr inbounds %struct._GList, %struct._GList* %11, i32 0, i32 1
  %12 = load %struct._GList*, %struct._GList** %next4, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.then
  %13 = load %struct.ObjectList_t*, %struct.ObjectList_t** %list.addr, align 8
  %list5 = getelementptr inbounds %struct.ObjectList_t, %struct.ObjectList_t* %13, i32 0, i32 0
  %14 = load %struct._GList*, %struct._GList** %list5, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GList* [ %12, %cond.true ], [ %14, %cond.false ]
  store %struct._GList* %cond, %struct._GList** %p, align 8
  %15 = load %struct._GList*, %struct._GList** %p, align 8
  %data6 = getelementptr inbounds %struct._GList, %struct._GList* %15, i32 0, i32 0
  %16 = load i8*, i8** %data6, align 8
  %17 = bitcast i8* %16 to %struct.Object_t*
  call void @object_select(%struct.Object_t* %17)
  %18 = load %struct._GList*, %struct._GList** %p, align 8
  %next7 = getelementptr inbounds %struct._GList, %struct._GList* %18, i32 0, i32 1
  %19 = load %struct._GList*, %struct._GList** %next7, align 8
  store %struct._GList* %19, %struct._GList** %p, align 8
  br label %for.cond.8

for.cond.8:                                       ; preds = %for.inc, %cond.end
  %20 = load %struct._GList*, %struct._GList** %p, align 8
  %tobool9 = icmp ne %struct._GList* %20, null
  br i1 %tobool9, label %for.body.10, label %for.end

for.body.10:                                      ; preds = %for.cond.8
  %21 = load %struct._GList*, %struct._GList** %p, align 8
  %data11 = getelementptr inbounds %struct._GList, %struct._GList* %21, i32 0, i32 0
  %22 = load i8*, i8** %data11, align 8
  %23 = bitcast i8* %22 to %struct.Object_t*
  store %struct.Object_t* %23, %struct.Object_t** %obj, align 8
  %24 = load %struct.Object_t*, %struct.Object_t** %obj, align 8
  %selected12 = getelementptr inbounds %struct.Object_t, %struct.Object_t* %24, i32 0, i32 3
  %25 = load i32, i32* %selected12, align 4
  %tobool13 = icmp ne i32 %25, 0
  br i1 %tobool13, label %if.then.14, label %if.end

if.then.14:                                       ; preds = %for.body.10
  %26 = load %struct.Object_t*, %struct.Object_t** %obj, align 8
  call void @object_unselect(%struct.Object_t* %26)
  br label %if.end

if.end:                                           ; preds = %if.then.14, %for.body.10
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %27 = load %struct._GList*, %struct._GList** %p, align 8
  %next15 = getelementptr inbounds %struct._GList, %struct._GList* %27, i32 0, i32 1
  %28 = load %struct._GList*, %struct._GList** %next15, align 8
  store %struct._GList* %28, %struct._GList** %p, align 8
  br label %for.cond.8

for.end:                                          ; preds = %for.cond.8
  br label %for.end.19

if.end.16:                                        ; preds = %for.body
  br label %for.inc.17

for.inc.17:                                       ; preds = %if.end.16
  %29 = load %struct._GList*, %struct._GList** %p, align 8
  %next18 = getelementptr inbounds %struct._GList, %struct._GList* %29, i32 0, i32 1
  %30 = load %struct._GList*, %struct._GList** %next18, align 8
  store %struct._GList* %30, %struct._GList** %p, align 8
  br label %for.cond

for.end.19:                                       ; preds = %for.end, %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @object_list_select_prev(%struct.ObjectList_t* %list) #0 {
entry:
  %list.addr = alloca %struct.ObjectList_t*, align 8
  %p = alloca %struct._GList*, align 8
  %obj = alloca %struct.Object_t*, align 8
  %q = alloca %struct._GList*, align 8
  store %struct.ObjectList_t* %list, %struct.ObjectList_t** %list.addr, align 8
  %0 = load %struct.ObjectList_t*, %struct.ObjectList_t** %list.addr, align 8
  %list1 = getelementptr inbounds %struct.ObjectList_t, %struct.ObjectList_t* %0, i32 0, i32 0
  %1 = load %struct._GList*, %struct._GList** %list1, align 8
  store %struct._GList* %1, %struct._GList** %p, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.15, %entry
  %2 = load %struct._GList*, %struct._GList** %p, align 8
  %tobool = icmp ne %struct._GList* %2, null
  br i1 %tobool, label %for.body, label %for.end.17

for.body:                                         ; preds = %for.cond
  %3 = load %struct._GList*, %struct._GList** %p, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %3, i32 0, i32 0
  %4 = load i8*, i8** %data, align 8
  %5 = bitcast i8* %4 to %struct.Object_t*
  store %struct.Object_t* %5, %struct.Object_t** %obj, align 8
  %6 = load %struct.Object_t*, %struct.Object_t** %obj, align 8
  %selected = getelementptr inbounds %struct.Object_t, %struct.Object_t* %6, i32 0, i32 3
  %7 = load i32, i32* %selected, align 4
  %tobool2 = icmp ne i32 %7, 0
  br i1 %tobool2, label %if.then, label %if.end.14

if.then:                                          ; preds = %for.body
  %8 = load %struct._GList*, %struct._GList** %p, align 8
  %prev = getelementptr inbounds %struct._GList, %struct._GList* %8, i32 0, i32 2
  %9 = load %struct._GList*, %struct._GList** %prev, align 8
  %tobool3 = icmp ne %struct._GList* %9, null
  br i1 %tobool3, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  %10 = load %struct._GList*, %struct._GList** %p, align 8
  %prev4 = getelementptr inbounds %struct._GList, %struct._GList* %10, i32 0, i32 2
  %11 = load %struct._GList*, %struct._GList** %prev4, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.then
  %12 = load %struct.ObjectList_t*, %struct.ObjectList_t** %list.addr, align 8
  %list5 = getelementptr inbounds %struct.ObjectList_t, %struct.ObjectList_t* %12, i32 0, i32 0
  %13 = load %struct._GList*, %struct._GList** %list5, align 8
  %call = call %struct._GList* @g_list_last(%struct._GList* %13)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GList* [ %11, %cond.true ], [ %call, %cond.false ]
  store %struct._GList* %cond, %struct._GList** %q, align 8
  br label %for.cond.6

for.cond.6:                                       ; preds = %for.inc, %cond.end
  %14 = load %struct._GList*, %struct._GList** %p, align 8
  %tobool7 = icmp ne %struct._GList* %14, null
  br i1 %tobool7, label %for.body.8, label %for.end

for.body.8:                                       ; preds = %for.cond.6
  %15 = load %struct._GList*, %struct._GList** %p, align 8
  %data9 = getelementptr inbounds %struct._GList, %struct._GList* %15, i32 0, i32 0
  %16 = load i8*, i8** %data9, align 8
  %17 = bitcast i8* %16 to %struct.Object_t*
  store %struct.Object_t* %17, %struct.Object_t** %obj, align 8
  %18 = load %struct.Object_t*, %struct.Object_t** %obj, align 8
  %selected10 = getelementptr inbounds %struct.Object_t, %struct.Object_t* %18, i32 0, i32 3
  %19 = load i32, i32* %selected10, align 4
  %tobool11 = icmp ne i32 %19, 0
  br i1 %tobool11, label %if.then.12, label %if.end

if.then.12:                                       ; preds = %for.body.8
  %20 = load %struct.Object_t*, %struct.Object_t** %obj, align 8
  call void @object_unselect(%struct.Object_t* %20)
  br label %if.end

if.end:                                           ; preds = %if.then.12, %for.body.8
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %21 = load %struct._GList*, %struct._GList** %p, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %21, i32 0, i32 1
  %22 = load %struct._GList*, %struct._GList** %next, align 8
  store %struct._GList* %22, %struct._GList** %p, align 8
  br label %for.cond.6

for.end:                                          ; preds = %for.cond.6
  %23 = load %struct._GList*, %struct._GList** %q, align 8
  %data13 = getelementptr inbounds %struct._GList, %struct._GList* %23, i32 0, i32 0
  %24 = load i8*, i8** %data13, align 8
  %25 = bitcast i8* %24 to %struct.Object_t*
  call void @object_select(%struct.Object_t* %25)
  br label %for.end.17

if.end.14:                                        ; preds = %for.body
  br label %for.inc.15

for.inc.15:                                       ; preds = %if.end.14
  %26 = load %struct._GList*, %struct._GList** %p, align 8
  %next16 = getelementptr inbounds %struct._GList, %struct._GList* %26, i32 0, i32 1
  %27 = load %struct._GList*, %struct._GList** %next16, align 8
  store %struct._GList* %27, %struct._GList** %p, align 8
  br label %for.cond

for.end.17:                                       ; preds = %for.end, %for.cond
  ret void
}

declare %struct._GList* @g_list_last(%struct._GList*) #1

; Function Attrs: nounwind uwtable
define i32 @object_list_select_region(%struct.ObjectList_t* %list, i32 %x, i32 %y, i32 %width, i32 %height) #0 {
entry:
  %list.addr = alloca %struct.ObjectList_t*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %width.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  %p = alloca %struct._GList*, align 8
  %count = alloca i32, align 4
  %obj = alloca %struct.Object_t*, align 8
  %obj_x = alloca i32, align 4
  %obj_y = alloca i32, align 4
  %obj_width = alloca i32, align 4
  %obj_height = alloca i32, align 4
  store %struct.ObjectList_t* %list, %struct.ObjectList_t** %list.addr, align 8
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  store i32 %width, i32* %width.addr, align 4
  store i32 %height, i32* %height.addr, align 4
  store i32 0, i32* %count, align 4
  %0 = load %struct.ObjectList_t*, %struct.ObjectList_t** %list.addr, align 8
  %list1 = getelementptr inbounds %struct.ObjectList_t, %struct.ObjectList_t* %0, i32 0, i32 0
  %1 = load %struct._GList*, %struct._GList** %list1, align 8
  store %struct._GList* %1, %struct._GList** %p, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load %struct._GList*, %struct._GList** %p, align 8
  %tobool = icmp ne %struct._GList* %2, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load %struct._GList*, %struct._GList** %p, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %3, i32 0, i32 0
  %4 = load i8*, i8** %data, align 8
  %5 = bitcast i8* %4 to %struct.Object_t*
  store %struct.Object_t* %5, %struct.Object_t** %obj, align 8
  %6 = load %struct.Object_t*, %struct.Object_t** %obj, align 8
  %class = getelementptr inbounds %struct.Object_t, %struct.Object_t* %6, i32 0, i32 0
  %7 = load %struct.ObjectClass_t*, %struct.ObjectClass_t** %class, align 8
  %get_dimensions = getelementptr inbounds %struct.ObjectClass_t, %struct.ObjectClass_t* %7, i32 0, i32 13
  %8 = load void (%struct.Object_t*, i32*, i32*, i32*, i32*)*, void (%struct.Object_t*, i32*, i32*, i32*, i32*)** %get_dimensions, align 8
  %9 = load %struct.Object_t*, %struct.Object_t** %obj, align 8
  call void %8(%struct.Object_t* %9, i32* %obj_x, i32* %obj_y, i32* %obj_width, i32* %obj_height)
  %10 = load i32, i32* %obj_x, align 4
  %11 = load i32, i32* %x.addr, align 4
  %cmp = icmp sge i32 %10, %11
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body
  %12 = load i32, i32* %obj_x, align 4
  %13 = load i32, i32* %obj_width, align 4
  %add = add nsw i32 %12, %13
  %14 = load i32, i32* %x.addr, align 4
  %15 = load i32, i32* %width.addr, align 4
  %add2 = add nsw i32 %14, %15
  %cmp3 = icmp sle i32 %add, %add2
  br i1 %cmp3, label %land.lhs.true.4, label %if.end

land.lhs.true.4:                                  ; preds = %land.lhs.true
  %16 = load i32, i32* %obj_y, align 4
  %17 = load i32, i32* %y.addr, align 4
  %cmp5 = icmp sge i32 %16, %17
  br i1 %cmp5, label %land.lhs.true.6, label %if.end

land.lhs.true.6:                                  ; preds = %land.lhs.true.4
  %18 = load i32, i32* %obj_y, align 4
  %19 = load i32, i32* %obj_height, align 4
  %add7 = add nsw i32 %18, %19
  %20 = load i32, i32* %y.addr, align 4
  %21 = load i32, i32* %height.addr, align 4
  %add8 = add nsw i32 %20, %21
  %cmp9 = icmp sle i32 %add7, %add8
  br i1 %cmp9, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true.6
  %22 = load %struct.Object_t*, %struct.Object_t** %obj, align 8
  call void @object_select(%struct.Object_t* %22)
  %23 = load i32, i32* %count, align 4
  %inc = add nsw i32 %23, 1
  store i32 %inc, i32* %count, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.6, %land.lhs.true.4, %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %24 = load %struct._GList*, %struct._GList** %p, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %24, i32 0, i32 1
  %25 = load %struct._GList*, %struct._GList** %next, align 8
  store %struct._GList* %25, %struct._GList** %p, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %26 = load i32, i32* %count, align 4
  ret i32 %26
}

; Function Attrs: nounwind uwtable
define i32 @object_list_deselect_all(%struct.ObjectList_t* %list, %struct.Object_t* %exception) #0 {
entry:
  %list.addr = alloca %struct.ObjectList_t*, align 8
  %exception.addr = alloca %struct.Object_t*, align 8
  %p = alloca %struct._GList*, align 8
  %count = alloca i32, align 4
  %obj = alloca %struct.Object_t*, align 8
  store %struct.ObjectList_t* %list, %struct.ObjectList_t** %list.addr, align 8
  store %struct.Object_t* %exception, %struct.Object_t** %exception.addr, align 8
  store i32 0, i32* %count, align 4
  %0 = load %struct.ObjectList_t*, %struct.ObjectList_t** %list.addr, align 8
  %list1 = getelementptr inbounds %struct.ObjectList_t, %struct.ObjectList_t* %0, i32 0, i32 0
  %1 = load %struct._GList*, %struct._GList** %list1, align 8
  store %struct._GList* %1, %struct._GList** %p, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load %struct._GList*, %struct._GList** %p, align 8
  %tobool = icmp ne %struct._GList* %2, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load %struct._GList*, %struct._GList** %p, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %3, i32 0, i32 0
  %4 = load i8*, i8** %data, align 8
  %5 = bitcast i8* %4 to %struct.Object_t*
  store %struct.Object_t* %5, %struct.Object_t** %obj, align 8
  %6 = load %struct.Object_t*, %struct.Object_t** %obj, align 8
  %selected = getelementptr inbounds %struct.Object_t, %struct.Object_t* %6, i32 0, i32 3
  %7 = load i32, i32* %selected, align 4
  %tobool2 = icmp ne i32 %7, 0
  br i1 %tobool2, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body
  %8 = load %struct.Object_t*, %struct.Object_t** %obj, align 8
  %9 = load %struct.Object_t*, %struct.Object_t** %exception.addr, align 8
  %cmp = icmp ne %struct.Object_t* %8, %9
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %10 = load %struct.Object_t*, %struct.Object_t** %obj, align 8
  call void @object_unselect(%struct.Object_t* %10)
  %11 = load i32, i32* %count, align 4
  %inc = add nsw i32 %11, 1
  store i32 %inc, i32* %count, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %12 = load %struct._GList*, %struct._GList** %p, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %12, i32 0, i32 1
  %13 = load %struct._GList*, %struct._GList** %next, align 8
  store %struct._GList* %13, %struct._GList** %p, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %14 = load i32, i32* %count, align 4
  ret i32 %14
}

; Function Attrs: nounwind uwtable
define i32 @object_list_nr_selected(%struct.ObjectList_t* %list) #0 {
entry:
  %list.addr = alloca %struct.ObjectList_t*, align 8
  %p = alloca %struct._GList*, align 8
  %count = alloca i32, align 4
  %obj = alloca %struct.Object_t*, align 8
  store %struct.ObjectList_t* %list, %struct.ObjectList_t** %list.addr, align 8
  store i32 0, i32* %count, align 4
  %0 = load %struct.ObjectList_t*, %struct.ObjectList_t** %list.addr, align 8
  %list1 = getelementptr inbounds %struct.ObjectList_t, %struct.ObjectList_t* %0, i32 0, i32 0
  %1 = load %struct._GList*, %struct._GList** %list1, align 8
  store %struct._GList* %1, %struct._GList** %p, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load %struct._GList*, %struct._GList** %p, align 8
  %tobool = icmp ne %struct._GList* %2, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load %struct._GList*, %struct._GList** %p, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %3, i32 0, i32 0
  %4 = load i8*, i8** %data, align 8
  %5 = bitcast i8* %4 to %struct.Object_t*
  store %struct.Object_t* %5, %struct.Object_t** %obj, align 8
  %6 = load %struct.Object_t*, %struct.Object_t** %obj, align 8
  %selected = getelementptr inbounds %struct.Object_t, %struct.Object_t* %6, i32 0, i32 3
  %7 = load i32, i32* %selected, align 4
  %tobool2 = icmp ne i32 %7, 0
  br i1 %tobool2, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %8 = load i32, i32* %count, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* %count, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %9 = load %struct._GList*, %struct._GList** %p, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %9, i32 0, i32 1
  %10 = load %struct._GList*, %struct._GList** %next, align 8
  store %struct._GList* %10, %struct._GList** %p, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %11 = load i32, i32* %count, align 4
  ret i32 %11
}

; Function Attrs: nounwind uwtable
define void @object_list_resize(%struct.ObjectList_t* %list, i32 %percentage_x, i32 %percentage_y) #0 {
entry:
  %list.addr = alloca %struct.ObjectList_t*, align 8
  %percentage_x.addr = alloca i32, align 4
  %percentage_y.addr = alloca i32, align 4
  %p = alloca %struct._GList*, align 8
  %obj = alloca %struct.Object_t*, align 8
  store %struct.ObjectList_t* %list, %struct.ObjectList_t** %list.addr, align 8
  store i32 %percentage_x, i32* %percentage_x.addr, align 4
  store i32 %percentage_y, i32* %percentage_y.addr, align 4
  %0 = load %struct.ObjectList_t*, %struct.ObjectList_t** %list.addr, align 8
  %list1 = getelementptr inbounds %struct.ObjectList_t, %struct.ObjectList_t* %0, i32 0, i32 0
  %1 = load %struct._GList*, %struct._GList** %list1, align 8
  store %struct._GList* %1, %struct._GList** %p, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load %struct._GList*, %struct._GList** %p, align 8
  %tobool = icmp ne %struct._GList* %2, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load %struct._GList*, %struct._GList** %p, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %3, i32 0, i32 0
  %4 = load i8*, i8** %data, align 8
  %5 = bitcast i8* %4 to %struct.Object_t*
  store %struct.Object_t* %5, %struct.Object_t** %obj, align 8
  %6 = load %struct.Object_t*, %struct.Object_t** %obj, align 8
  %class = getelementptr inbounds %struct.Object_t, %struct.Object_t* %6, i32 0, i32 0
  %7 = load %struct.ObjectClass_t*, %struct.ObjectClass_t** %class, align 8
  %resize = getelementptr inbounds %struct.ObjectClass_t, %struct.ObjectClass_t* %7, i32 0, i32 14
  %8 = load void (%struct.Object_t*, i32, i32)*, void (%struct.Object_t*, i32, i32)** %resize, align 8
  %9 = load %struct.Object_t*, %struct.Object_t** %obj, align 8
  %10 = load i32, i32* %percentage_x.addr, align 4
  %11 = load i32, i32* %percentage_y.addr, align 4
  call void %8(%struct.Object_t* %9, i32 %10, i32 %11)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %12 = load %struct._GList*, %struct._GList** %p, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %12, i32 0, i32 1
  %13 = load %struct._GList*, %struct._GList** %next, align 8
  store %struct._GList* %13, %struct._GList** %p, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @object_list_move_selected(%struct.ObjectList_t* %list, i32 %dx, i32 %dy) #0 {
entry:
  %list.addr = alloca %struct.ObjectList_t*, align 8
  %dx.addr = alloca i32, align 4
  %dy.addr = alloca i32, align 4
  %p = alloca %struct._GList*, align 8
  %obj = alloca %struct.Object_t*, align 8
  store %struct.ObjectList_t* %list, %struct.ObjectList_t** %list.addr, align 8
  store i32 %dx, i32* %dx.addr, align 4
  store i32 %dy, i32* %dy.addr, align 4
  %0 = load %struct.ObjectList_t*, %struct.ObjectList_t** %list.addr, align 8
  %list1 = getelementptr inbounds %struct.ObjectList_t, %struct.ObjectList_t* %0, i32 0, i32 0
  %1 = load %struct._GList*, %struct._GList** %list1, align 8
  store %struct._GList* %1, %struct._GList** %p, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load %struct._GList*, %struct._GList** %p, align 8
  %tobool = icmp ne %struct._GList* %2, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load %struct._GList*, %struct._GList** %p, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %3, i32 0, i32 0
  %4 = load i8*, i8** %data, align 8
  %5 = bitcast i8* %4 to %struct.Object_t*
  store %struct.Object_t* %5, %struct.Object_t** %obj, align 8
  %6 = load %struct.Object_t*, %struct.Object_t** %obj, align 8
  %selected = getelementptr inbounds %struct.Object_t, %struct.Object_t* %6, i32 0, i32 3
  %7 = load i32, i32* %selected, align 4
  %tobool2 = icmp ne i32 %7, 0
  br i1 %tobool2, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %8 = load %struct.Object_t*, %struct.Object_t** %obj, align 8
  %9 = load i32, i32* %dx.addr, align 4
  %10 = load i32, i32* %dy.addr, align 4
  call void @object_move(%struct.Object_t* %8, i32 %9, i32 %10)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %11 = load %struct._GList*, %struct._GList** %p, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %11, i32 0, i32 1
  %12 = load %struct._GList*, %struct._GList** %next, align 8
  store %struct._GList* %12, %struct._GList** %p, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @object_list_move_up(%struct.ObjectList_t* %list, %struct.Object_t* %obj) #0 {
entry:
  %list.addr = alloca %struct.ObjectList_t*, align 8
  %obj.addr = alloca %struct.Object_t*, align 8
  %p = alloca %struct._GList*, align 8
  store %struct.ObjectList_t* %list, %struct.ObjectList_t** %list.addr, align 8
  store %struct.Object_t* %obj, %struct.Object_t** %obj.addr, align 8
  %0 = load %struct.ObjectList_t*, %struct.ObjectList_t** %list.addr, align 8
  %list1 = getelementptr inbounds %struct.ObjectList_t, %struct.ObjectList_t* %0, i32 0, i32 0
  %1 = load %struct._GList*, %struct._GList** %list1, align 8
  %2 = load %struct.Object_t*, %struct.Object_t** %obj.addr, align 8
  %3 = bitcast %struct.Object_t* %2 to i8*
  %call = call %struct._GList* @g_list_find(%struct._GList* %1, i8* %3)
  store %struct._GList* %call, %struct._GList** %p, align 8
  %4 = load %struct.ObjectList_t*, %struct.ObjectList_t** %list.addr, align 8
  %5 = load %struct._GList*, %struct._GList** %p, align 8
  call void @object_list_swap_prev(%struct.ObjectList_t* %4, %struct._GList* %5)
  ret void
}

declare %struct._GList* @g_list_find(%struct._GList*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @object_list_swap_prev(%struct.ObjectList_t* %list, %struct._GList* %p) #0 {
entry:
  %list.addr = alloca %struct.ObjectList_t*, align 8
  %p.addr = alloca %struct._GList*, align 8
  %swap = alloca i8*, align 8
  store %struct.ObjectList_t* %list, %struct.ObjectList_t** %list.addr, align 8
  store %struct._GList* %p, %struct._GList** %p.addr, align 8
  %0 = load %struct._GList*, %struct._GList** %p.addr, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %0, i32 0, i32 0
  %1 = load i8*, i8** %data, align 8
  store i8* %1, i8** %swap, align 8
  %2 = load %struct._GList*, %struct._GList** %p.addr, align 8
  %prev = getelementptr inbounds %struct._GList, %struct._GList* %2, i32 0, i32 2
  %3 = load %struct._GList*, %struct._GList** %prev, align 8
  %data1 = getelementptr inbounds %struct._GList, %struct._GList* %3, i32 0, i32 0
  %4 = load i8*, i8** %data1, align 8
  %5 = load %struct._GList*, %struct._GList** %p.addr, align 8
  %data2 = getelementptr inbounds %struct._GList, %struct._GList* %5, i32 0, i32 0
  store i8* %4, i8** %data2, align 8
  %6 = load i8*, i8** %swap, align 8
  %7 = load %struct._GList*, %struct._GList** %p.addr, align 8
  %prev3 = getelementptr inbounds %struct._GList, %struct._GList* %7, i32 0, i32 2
  %8 = load %struct._GList*, %struct._GList** %prev3, align 8
  %data4 = getelementptr inbounds %struct._GList, %struct._GList* %8, i32 0, i32 0
  store i8* %6, i8** %data4, align 8
  %9 = load %struct.ObjectList_t*, %struct.ObjectList_t** %list.addr, align 8
  %move_cb = getelementptr inbounds %struct.ObjectList_t, %struct.ObjectList_t* %9, i32 0, i32 7
  %10 = load %struct._GList*, %struct._GList** %p.addr, align 8
  %data5 = getelementptr inbounds %struct._GList, %struct._GList* %10, i32 0, i32 0
  %11 = load i8*, i8** %data5, align 8
  %12 = bitcast i8* %11 to %struct.Object_t*
  call void @object_list_callback_call(%struct.ObjectListCallback_t* %move_cb, %struct.Object_t* %12)
  %13 = load %struct.ObjectList_t*, %struct.ObjectList_t** %list.addr, align 8
  %move_cb6 = getelementptr inbounds %struct.ObjectList_t, %struct.ObjectList_t* %13, i32 0, i32 7
  %14 = load %struct._GList*, %struct._GList** %p.addr, align 8
  %prev7 = getelementptr inbounds %struct._GList, %struct._GList* %14, i32 0, i32 2
  %15 = load %struct._GList*, %struct._GList** %prev7, align 8
  %data8 = getelementptr inbounds %struct._GList, %struct._GList* %15, i32 0, i32 0
  %16 = load i8*, i8** %data8, align 8
  %17 = bitcast i8* %16 to %struct.Object_t*
  call void @object_list_callback_call(%struct.ObjectListCallback_t* %move_cb6, %struct.Object_t* %17)
  ret void
}

; Function Attrs: nounwind uwtable
define void @object_list_move_down(%struct.ObjectList_t* %list, %struct.Object_t* %obj) #0 {
entry:
  %list.addr = alloca %struct.ObjectList_t*, align 8
  %obj.addr = alloca %struct.Object_t*, align 8
  %p = alloca %struct._GList*, align 8
  store %struct.ObjectList_t* %list, %struct.ObjectList_t** %list.addr, align 8
  store %struct.Object_t* %obj, %struct.Object_t** %obj.addr, align 8
  %0 = load %struct.ObjectList_t*, %struct.ObjectList_t** %list.addr, align 8
  %list1 = getelementptr inbounds %struct.ObjectList_t, %struct.ObjectList_t* %0, i32 0, i32 0
  %1 = load %struct._GList*, %struct._GList** %list1, align 8
  %2 = load %struct.Object_t*, %struct.Object_t** %obj.addr, align 8
  %3 = bitcast %struct.Object_t* %2 to i8*
  %call = call %struct._GList* @g_list_find(%struct._GList* %1, i8* %3)
  store %struct._GList* %call, %struct._GList** %p, align 8
  %4 = load %struct.ObjectList_t*, %struct.ObjectList_t** %list.addr, align 8
  %5 = load %struct._GList*, %struct._GList** %p, align 8
  call void @object_list_swap_next(%struct.ObjectList_t* %4, %struct._GList* %5)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @object_list_swap_next(%struct.ObjectList_t* %list, %struct._GList* %p) #0 {
entry:
  %list.addr = alloca %struct.ObjectList_t*, align 8
  %p.addr = alloca %struct._GList*, align 8
  %swap = alloca i8*, align 8
  store %struct.ObjectList_t* %list, %struct.ObjectList_t** %list.addr, align 8
  store %struct._GList* %p, %struct._GList** %p.addr, align 8
  %0 = load %struct._GList*, %struct._GList** %p.addr, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %0, i32 0, i32 0
  %1 = load i8*, i8** %data, align 8
  store i8* %1, i8** %swap, align 8
  %2 = load %struct._GList*, %struct._GList** %p.addr, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %2, i32 0, i32 1
  %3 = load %struct._GList*, %struct._GList** %next, align 8
  %data1 = getelementptr inbounds %struct._GList, %struct._GList* %3, i32 0, i32 0
  %4 = load i8*, i8** %data1, align 8
  %5 = load %struct._GList*, %struct._GList** %p.addr, align 8
  %data2 = getelementptr inbounds %struct._GList, %struct._GList* %5, i32 0, i32 0
  store i8* %4, i8** %data2, align 8
  %6 = load i8*, i8** %swap, align 8
  %7 = load %struct._GList*, %struct._GList** %p.addr, align 8
  %next3 = getelementptr inbounds %struct._GList, %struct._GList* %7, i32 0, i32 1
  %8 = load %struct._GList*, %struct._GList** %next3, align 8
  %data4 = getelementptr inbounds %struct._GList, %struct._GList* %8, i32 0, i32 0
  store i8* %6, i8** %data4, align 8
  %9 = load %struct.ObjectList_t*, %struct.ObjectList_t** %list.addr, align 8
  %move_cb = getelementptr inbounds %struct.ObjectList_t, %struct.ObjectList_t* %9, i32 0, i32 7
  %10 = load %struct._GList*, %struct._GList** %p.addr, align 8
  %data5 = getelementptr inbounds %struct._GList, %struct._GList* %10, i32 0, i32 0
  %11 = load i8*, i8** %data5, align 8
  %12 = bitcast i8* %11 to %struct.Object_t*
  call void @object_list_callback_call(%struct.ObjectListCallback_t* %move_cb, %struct.Object_t* %12)
  %13 = load %struct.ObjectList_t*, %struct.ObjectList_t** %list.addr, align 8
  %move_cb6 = getelementptr inbounds %struct.ObjectList_t, %struct.ObjectList_t* %13, i32 0, i32 7
  %14 = load %struct._GList*, %struct._GList** %p.addr, align 8
  %next7 = getelementptr inbounds %struct._GList, %struct._GList* %14, i32 0, i32 1
  %15 = load %struct._GList*, %struct._GList** %next7, align 8
  %data8 = getelementptr inbounds %struct._GList, %struct._GList* %15, i32 0, i32 0
  %16 = load i8*, i8** %data8, align 8
  %17 = bitcast i8* %16 to %struct.Object_t*
  call void @object_list_callback_call(%struct.ObjectListCallback_t* %move_cb6, %struct.Object_t* %17)
  ret void
}

; Function Attrs: nounwind uwtable
define void @object_list_move_selected_up(%struct.ObjectList_t* %list) #0 {
entry:
  %list.addr = alloca %struct.ObjectList_t*, align 8
  %p = alloca %struct._GList*, align 8
  %obj = alloca %struct.Object_t*, align 8
  store %struct.ObjectList_t* %list, %struct.ObjectList_t** %list.addr, align 8
  %0 = load %struct.ObjectList_t*, %struct.ObjectList_t** %list.addr, align 8
  %list1 = getelementptr inbounds %struct.ObjectList_t, %struct.ObjectList_t* %0, i32 0, i32 0
  %1 = load %struct._GList*, %struct._GList** %list1, align 8
  store %struct._GList* %1, %struct._GList** %p, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load %struct._GList*, %struct._GList** %p, align 8
  %tobool = icmp ne %struct._GList* %2, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load %struct._GList*, %struct._GList** %p, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %3, i32 0, i32 0
  %4 = load i8*, i8** %data, align 8
  %5 = bitcast i8* %4 to %struct.Object_t*
  store %struct.Object_t* %5, %struct.Object_t** %obj, align 8
  %6 = load %struct.Object_t*, %struct.Object_t** %obj, align 8
  %selected = getelementptr inbounds %struct.Object_t, %struct.Object_t* %6, i32 0, i32 3
  %7 = load i32, i32* %selected, align 4
  %tobool2 = icmp ne i32 %7, 0
  br i1 %tobool2, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body
  %8 = load %struct._GList*, %struct._GList** %p, align 8
  %prev = getelementptr inbounds %struct._GList, %struct._GList* %8, i32 0, i32 2
  %9 = load %struct._GList*, %struct._GList** %prev, align 8
  %tobool3 = icmp ne %struct._GList* %9, null
  br i1 %tobool3, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %10 = load %struct.ObjectList_t*, %struct.ObjectList_t** %list.addr, align 8
  %11 = load %struct._GList*, %struct._GList** %p, align 8
  call void @object_list_swap_prev(%struct.ObjectList_t* %10, %struct._GList* %11)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %12 = load %struct._GList*, %struct._GList** %p, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %12, i32 0, i32 1
  %13 = load %struct._GList*, %struct._GList** %next, align 8
  store %struct._GList* %13, %struct._GList** %p, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @object_list_move_selected_down(%struct.ObjectList_t* %list) #0 {
entry:
  %list.addr = alloca %struct.ObjectList_t*, align 8
  %p = alloca %struct._GList*, align 8
  %obj = alloca %struct.Object_t*, align 8
  store %struct.ObjectList_t* %list, %struct.ObjectList_t** %list.addr, align 8
  %0 = load %struct.ObjectList_t*, %struct.ObjectList_t** %list.addr, align 8
  %list1 = getelementptr inbounds %struct.ObjectList_t, %struct.ObjectList_t* %0, i32 0, i32 0
  %1 = load %struct._GList*, %struct._GList** %list1, align 8
  %call = call %struct._GList* @g_list_last(%struct._GList* %1)
  store %struct._GList* %call, %struct._GList** %p, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load %struct._GList*, %struct._GList** %p, align 8
  %tobool = icmp ne %struct._GList* %2, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load %struct._GList*, %struct._GList** %p, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %3, i32 0, i32 0
  %4 = load i8*, i8** %data, align 8
  %5 = bitcast i8* %4 to %struct.Object_t*
  store %struct.Object_t* %5, %struct.Object_t** %obj, align 8
  %6 = load %struct.Object_t*, %struct.Object_t** %obj, align 8
  %selected = getelementptr inbounds %struct.Object_t, %struct.Object_t* %6, i32 0, i32 3
  %7 = load i32, i32* %selected, align 4
  %tobool2 = icmp ne i32 %7, 0
  br i1 %tobool2, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body
  %8 = load %struct._GList*, %struct._GList** %p, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %8, i32 0, i32 1
  %9 = load %struct._GList*, %struct._GList** %next, align 8
  %tobool3 = icmp ne %struct._GList* %9, null
  br i1 %tobool3, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %10 = load %struct.ObjectList_t*, %struct.ObjectList_t** %list.addr, align 8
  %11 = load %struct._GList*, %struct._GList** %p, align 8
  call void @object_list_swap_next(%struct.ObjectList_t* %10, %struct._GList* %11)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %12 = load %struct._GList*, %struct._GList** %p, align 8
  %prev = getelementptr inbounds %struct._GList, %struct._GList* %12, i32 0, i32 2
  %13 = load %struct._GList*, %struct._GList** %prev, align 8
  store %struct._GList* %13, %struct._GList** %p, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @object_list_move_to_front(%struct.ObjectList_t* %list) #0 {
entry:
  %list.addr = alloca %struct.ObjectList_t*, align 8
  %p = alloca %struct._GList*, align 8
  %q = alloca %struct._GList*, align 8
  %length = alloca i32, align 4
  %obj = alloca %struct.Object_t*, align 8
  store %struct.ObjectList_t* %list, %struct.ObjectList_t** %list.addr, align 8
  %0 = load %struct.ObjectList_t*, %struct.ObjectList_t** %list.addr, align 8
  %list1 = getelementptr inbounds %struct.ObjectList_t, %struct.ObjectList_t* %0, i32 0, i32 0
  %1 = load %struct._GList*, %struct._GList** %list1, align 8
  %call = call i32 @g_list_length(%struct._GList* %1)
  store i32 %call, i32* %length, align 4
  %2 = load %struct.ObjectList_t*, %struct.ObjectList_t** %list.addr, align 8
  %list2 = getelementptr inbounds %struct.ObjectList_t, %struct.ObjectList_t* %2, i32 0, i32 0
  %3 = load %struct._GList*, %struct._GList** %list2, align 8
  store %struct._GList* %3, %struct._GList** %p, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i32, i32* %length, align 4
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load %struct._GList*, %struct._GList** %p, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %5, i32 0, i32 0
  %6 = load i8*, i8** %data, align 8
  %7 = bitcast i8* %6 to %struct.Object_t*
  store %struct.Object_t* %7, %struct.Object_t** %obj, align 8
  %8 = load %struct._GList*, %struct._GList** %p, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %8, i32 0, i32 1
  %9 = load %struct._GList*, %struct._GList** %next, align 8
  store %struct._GList* %9, %struct._GList** %q, align 8
  %10 = load %struct.Object_t*, %struct.Object_t** %obj, align 8
  %selected = getelementptr inbounds %struct.Object_t, %struct.Object_t* %10, i32 0, i32 3
  %11 = load i32, i32* %selected, align 4
  %tobool3 = icmp ne i32 %11, 0
  br i1 %tobool3, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %12 = load %struct.ObjectList_t*, %struct.ObjectList_t** %list.addr, align 8
  %13 = load %struct._GList*, %struct._GList** %p, align 8
  call void @object_list_remove_link(%struct.ObjectList_t* %12, %struct._GList* %13)
  %14 = load %struct.ObjectList_t*, %struct.ObjectList_t** %list.addr, align 8
  %15 = load %struct.Object_t*, %struct.Object_t** %obj, align 8
  call void @object_list_append(%struct.ObjectList_t* %14, %struct.Object_t* %15)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %16 = load %struct._GList*, %struct._GList** %q, align 8
  store %struct._GList* %16, %struct._GList** %p, align 8
  %17 = load i32, i32* %length, align 4
  %dec = add i32 %17, -1
  store i32 %dec, i32* %length, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

declare i32 @g_list_length(%struct._GList*) #1

; Function Attrs: nounwind uwtable
define void @object_list_send_to_back(%struct.ObjectList_t* %list) #0 {
entry:
  %list.addr = alloca %struct.ObjectList_t*, align 8
  %p = alloca %struct._GList*, align 8
  %q = alloca %struct._GList*, align 8
  %length = alloca i32, align 4
  %obj = alloca %struct.Object_t*, align 8
  store %struct.ObjectList_t* %list, %struct.ObjectList_t** %list.addr, align 8
  %0 = load %struct.ObjectList_t*, %struct.ObjectList_t** %list.addr, align 8
  %list1 = getelementptr inbounds %struct.ObjectList_t, %struct.ObjectList_t* %0, i32 0, i32 0
  %1 = load %struct._GList*, %struct._GList** %list1, align 8
  %call = call i32 @g_list_length(%struct._GList* %1)
  store i32 %call, i32* %length, align 4
  %2 = load %struct.ObjectList_t*, %struct.ObjectList_t** %list.addr, align 8
  %list2 = getelementptr inbounds %struct.ObjectList_t, %struct.ObjectList_t* %2, i32 0, i32 0
  %3 = load %struct._GList*, %struct._GList** %list2, align 8
  store %struct._GList* %3, %struct._GList** %p, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i32, i32* %length, align 4
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load %struct._GList*, %struct._GList** %p, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %5, i32 0, i32 0
  %6 = load i8*, i8** %data, align 8
  %7 = bitcast i8* %6 to %struct.Object_t*
  store %struct.Object_t* %7, %struct.Object_t** %obj, align 8
  %8 = load %struct._GList*, %struct._GList** %p, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %8, i32 0, i32 1
  %9 = load %struct._GList*, %struct._GList** %next, align 8
  store %struct._GList* %9, %struct._GList** %q, align 8
  %10 = load %struct.Object_t*, %struct.Object_t** %obj, align 8
  %selected = getelementptr inbounds %struct.Object_t, %struct.Object_t* %10, i32 0, i32 3
  %11 = load i32, i32* %selected, align 4
  %tobool3 = icmp ne i32 %11, 0
  br i1 %tobool3, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %12 = load %struct.ObjectList_t*, %struct.ObjectList_t** %list.addr, align 8
  %13 = load %struct._GList*, %struct._GList** %p, align 8
  call void @object_list_remove_link(%struct.ObjectList_t* %12, %struct._GList* %13)
  %14 = load %struct.ObjectList_t*, %struct.ObjectList_t** %list.addr, align 8
  %15 = load %struct.Object_t*, %struct.Object_t** %obj, align 8
  call void @object_list_prepend(%struct.ObjectList_t* %14, %struct.Object_t* %15)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %16 = load %struct._GList*, %struct._GList** %q, align 8
  store %struct._GList* %16, %struct._GList** %p, align 8
  %17 = load i32, i32* %length, align 4
  %dec = add i32 %17, -1
  store i32 %dec, i32* %length, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @object_list_move_sash_selected(%struct.ObjectList_t* %list, i32 %dx, i32 %dy) #0 {
entry:
  %list.addr = alloca %struct.ObjectList_t*, align 8
  %dx.addr = alloca i32, align 4
  %dy.addr = alloca i32, align 4
  %p = alloca %struct._GList*, align 8
  %obj = alloca %struct.Object_t*, align 8
  store %struct.ObjectList_t* %list, %struct.ObjectList_t** %list.addr, align 8
  store i32 %dx, i32* %dx.addr, align 4
  store i32 %dy, i32* %dy.addr, align 4
  %0 = load %struct.ObjectList_t*, %struct.ObjectList_t** %list.addr, align 8
  %list1 = getelementptr inbounds %struct.ObjectList_t, %struct.ObjectList_t* %0, i32 0, i32 0
  %1 = load %struct._GList*, %struct._GList** %list1, align 8
  store %struct._GList* %1, %struct._GList** %p, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load %struct._GList*, %struct._GList** %p, align 8
  %tobool = icmp ne %struct._GList* %2, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load %struct._GList*, %struct._GList** %p, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %3, i32 0, i32 0
  %4 = load i8*, i8** %data, align 8
  %5 = bitcast i8* %4 to %struct.Object_t*
  store %struct.Object_t* %5, %struct.Object_t** %obj, align 8
  %6 = load %struct.Object_t*, %struct.Object_t** %obj, align 8
  %selected = getelementptr inbounds %struct.Object_t, %struct.Object_t* %6, i32 0, i32 3
  %7 = load i32, i32* %selected, align 4
  %tobool2 = icmp ne i32 %7, 0
  br i1 %tobool2, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %8 = load %struct.Object_t*, %struct.Object_t** %obj, align 8
  %9 = load i32, i32* %dx.addr, align 4
  %10 = load i32, i32* %dy.addr, align 4
  call void @object_move_sash(%struct.Object_t* %8, i32 %9, i32 %10)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %11 = load %struct._GList*, %struct._GList** %p, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %11, i32 0, i32 1
  %12 = load %struct._GList*, %struct._GList** %next, align 8
  store %struct._GList* %12, %struct._GList** %p, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @object_list_write_csim(%struct.ObjectList_t* %list, i8* %param, void (i8*, i8*, ...)* %output) #0 {
entry:
  %list.addr = alloca %struct.ObjectList_t*, align 8
  %param.addr = alloca i8*, align 8
  %output.addr = alloca void (i8*, i8*, ...)*, align 8
  %p = alloca %struct._GList*, align 8
  %obj = alloca %struct.Object_t*, align 8
  store %struct.ObjectList_t* %list, %struct.ObjectList_t** %list.addr, align 8
  store i8* %param, i8** %param.addr, align 8
  store void (i8*, i8*, ...)* %output, void (i8*, i8*, ...)** %output.addr, align 8
  %0 = load %struct.ObjectList_t*, %struct.ObjectList_t** %list.addr, align 8
  %list1 = getelementptr inbounds %struct.ObjectList_t, %struct.ObjectList_t* %0, i32 0, i32 0
  %1 = load %struct._GList*, %struct._GList** %list1, align 8
  store %struct._GList* %1, %struct._GList** %p, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load %struct._GList*, %struct._GList** %p, align 8
  %tobool = icmp ne %struct._GList* %2, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load %struct._GList*, %struct._GList** %p, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %3, i32 0, i32 0
  %4 = load i8*, i8** %data, align 8
  %5 = bitcast i8* %4 to %struct.Object_t*
  store %struct.Object_t* %5, %struct.Object_t** %obj, align 8
  %6 = load void (i8*, i8*, ...)*, void (i8*, i8*, ...)** %output.addr, align 8
  %7 = load i8*, i8** %param.addr, align 8
  call void (i8*, i8*, ...) %6(i8* %7, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i32 0, i32 0))
  %8 = load %struct.Object_t*, %struct.Object_t** %obj, align 8
  %class = getelementptr inbounds %struct.Object_t, %struct.Object_t* %8, i32 0, i32 0
  %9 = load %struct.ObjectClass_t*, %struct.ObjectClass_t** %class, align 8
  %write_csim = getelementptr inbounds %struct.ObjectClass_t, %struct.ObjectClass_t* %9, i32 0, i32 21
  %10 = load void (%struct.Object_t*, i8*, void (i8*, i8*, ...)*)*, void (%struct.Object_t*, i8*, void (i8*, i8*, ...)*)** %write_csim, align 8
  %11 = load %struct.Object_t*, %struct.Object_t** %obj, align 8
  %12 = load i8*, i8** %param.addr, align 8
  %13 = load void (i8*, i8*, ...)*, void (i8*, i8*, ...)** %output.addr, align 8
  call void %10(%struct.Object_t* %11, i8* %12, void (i8*, i8*, ...)* %13)
  %14 = load %struct.Object_t*, %struct.Object_t** %obj, align 8
  %comment = getelementptr inbounds %struct.Object_t, %struct.Object_t* %14, i32 0, i32 7
  %15 = load i8*, i8** %comment, align 8
  %16 = load i8*, i8** %param.addr, align 8
  %17 = load void (i8*, i8*, ...)*, void (i8*, i8*, ...)** %output.addr, align 8
  call void @write_xml_attrib(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i32 0, i32 0), i8* %15, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i32 0, i32 0), i8* %16, void (i8*, i8*, ...)* %17)
  %18 = load %struct.Object_t*, %struct.Object_t** %obj, align 8
  %target = getelementptr inbounds %struct.Object_t, %struct.Object_t* %18, i32 0, i32 6
  %19 = load i8*, i8** %target, align 8
  %20 = load i8*, i8** %param.addr, align 8
  %21 = load void (i8*, i8*, ...)*, void (i8*, i8*, ...)** %output.addr, align 8
  call void @write_xml_attrib(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i32 0, i32 0), i8* %19, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i32 0, i32 0), i8* %20, void (i8*, i8*, ...)* %21)
  %22 = load %struct.Object_t*, %struct.Object_t** %obj, align 8
  %mouse_over = getelementptr inbounds %struct.Object_t, %struct.Object_t* %22, i32 0, i32 8
  %23 = load i8*, i8** %mouse_over, align 8
  %24 = load i8*, i8** %param.addr, align 8
  %25 = load void (i8*, i8*, ...)*, void (i8*, i8*, ...)** %output.addr, align 8
  call void @write_xml_attrib(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i32 0, i32 0), i8* %23, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i32 0, i32 0), i8* %24, void (i8*, i8*, ...)* %25)
  %26 = load %struct.Object_t*, %struct.Object_t** %obj, align 8
  %mouse_out = getelementptr inbounds %struct.Object_t, %struct.Object_t* %26, i32 0, i32 9
  %27 = load i8*, i8** %mouse_out, align 8
  %28 = load i8*, i8** %param.addr, align 8
  %29 = load void (i8*, i8*, ...)*, void (i8*, i8*, ...)** %output.addr, align 8
  call void @write_xml_attrib(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i32 0, i32 0), i8* %27, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i32 0, i32 0), i8* %28, void (i8*, i8*, ...)* %29)
  %30 = load %struct.Object_t*, %struct.Object_t** %obj, align 8
  %focus = getelementptr inbounds %struct.Object_t, %struct.Object_t* %30, i32 0, i32 10
  %31 = load i8*, i8** %focus, align 8
  %32 = load i8*, i8** %param.addr, align 8
  %33 = load void (i8*, i8*, ...)*, void (i8*, i8*, ...)** %output.addr, align 8
  call void @write_xml_attrib(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i32 0, i32 0), i8* %31, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i32 0, i32 0), i8* %32, void (i8*, i8*, ...)* %33)
  %34 = load %struct.Object_t*, %struct.Object_t** %obj, align 8
  %blur = getelementptr inbounds %struct.Object_t, %struct.Object_t* %34, i32 0, i32 11
  %35 = load i8*, i8** %blur, align 8
  %36 = load i8*, i8** %param.addr, align 8
  %37 = load void (i8*, i8*, ...)*, void (i8*, i8*, ...)** %output.addr, align 8
  call void @write_xml_attrib(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i32 0, i32 0), i8* %35, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i32 0, i32 0), i8* %36, void (i8*, i8*, ...)* %37)
  %38 = load %struct.Object_t*, %struct.Object_t** %obj, align 8
  %url = getelementptr inbounds %struct.Object_t, %struct.Object_t* %38, i32 0, i32 5
  %39 = load i8*, i8** %url, align 8
  %40 = load i8*, i8** %param.addr, align 8
  %41 = load void (i8*, i8*, ...)*, void (i8*, i8*, ...)** %output.addr, align 8
  call void @write_xml_attrib(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i32 0, i32 0), i8* %39, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.12, i32 0, i32 0), i8* %40, void (i8*, i8*, ...)* %41)
  %42 = load void (i8*, i8*, ...)*, void (i8*, i8*, ...)** %output.addr, align 8
  %43 = load i8*, i8** %param.addr, align 8
  call void (i8*, i8*, ...) %42(i8* %43, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i32 0, i32 0))
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %44 = load %struct._GList*, %struct._GList** %p, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %44, i32 0, i32 1
  %45 = load %struct._GList*, %struct._GList** %next, align 8
  store %struct._GList* %45, %struct._GList** %p, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @write_xml_attrib(i8* %attrib, i8* %value, i8* %default_text, i8* %param, void (i8*, i8*, ...)* %output) #0 {
entry:
  %attrib.addr = alloca i8*, align 8
  %value.addr = alloca i8*, align 8
  %default_text.addr = alloca i8*, align 8
  %param.addr = alloca i8*, align 8
  %output.addr = alloca void (i8*, i8*, ...)*, align 8
  %escaped_value = alloca i8*, align 8
  store i8* %attrib, i8** %attrib.addr, align 8
  store i8* %value, i8** %value.addr, align 8
  store i8* %default_text, i8** %default_text.addr, align 8
  store i8* %param, i8** %param.addr, align 8
  store void (i8*, i8*, ...)* %output, void (i8*, i8*, ...)** %output.addr, align 8
  %0 = load i8*, i8** %value.addr, align 8
  %1 = load i8, i8* %0, align 1
  %tobool = icmp ne i8 %1, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %value.addr, align 8
  %call = call i8* @g_markup_escape_text(i8* %2, i64 -1)
  store i8* %call, i8** %escaped_value, align 8
  %3 = load void (i8*, i8*, ...)*, void (i8*, i8*, ...)** %output.addr, align 8
  %4 = load i8*, i8** %param.addr, align 8
  %5 = load i8*, i8** %attrib.addr, align 8
  %6 = load i8*, i8** %escaped_value, align 8
  call void (i8*, i8*, ...) %3(i8* %4, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.17, i32 0, i32 0), i8* %5, i8* %6)
  %7 = load i8*, i8** %escaped_value, align 8
  call void @g_free(i8* %7)
  br label %if.end.3

if.else:                                          ; preds = %entry
  %8 = load i8*, i8** %default_text.addr, align 8
  %9 = load i8, i8* %8, align 1
  %tobool1 = icmp ne i8 %9, 0
  br i1 %tobool1, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.else
  %10 = load void (i8*, i8*, ...)*, void (i8*, i8*, ...)** %output.addr, align 8
  %11 = load i8*, i8** %param.addr, align 8
  %12 = load i8*, i8** %default_text.addr, align 8
  call void (i8*, i8*, ...) %10(i8* %11, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i32 0, i32 0), i8* %12)
  br label %if.end

if.end:                                           ; preds = %if.then.2, %if.else
  br label %if.end.3

if.end.3:                                         ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define void @object_list_write_cern(%struct.ObjectList_t* %list, i8* %param, void (i8*, i8*, ...)* %output) #0 {
entry:
  %list.addr = alloca %struct.ObjectList_t*, align 8
  %param.addr = alloca i8*, align 8
  %output.addr = alloca void (i8*, i8*, ...)*, align 8
  %p = alloca %struct._GList*, align 8
  %obj = alloca %struct.Object_t*, align 8
  store %struct.ObjectList_t* %list, %struct.ObjectList_t** %list.addr, align 8
  store i8* %param, i8** %param.addr, align 8
  store void (i8*, i8*, ...)* %output, void (i8*, i8*, ...)** %output.addr, align 8
  %0 = load %struct.ObjectList_t*, %struct.ObjectList_t** %list.addr, align 8
  %list1 = getelementptr inbounds %struct.ObjectList_t, %struct.ObjectList_t* %0, i32 0, i32 0
  %1 = load %struct._GList*, %struct._GList** %list1, align 8
  store %struct._GList* %1, %struct._GList** %p, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load %struct._GList*, %struct._GList** %p, align 8
  %tobool = icmp ne %struct._GList* %2, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load %struct._GList*, %struct._GList** %p, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %3, i32 0, i32 0
  %4 = load i8*, i8** %data, align 8
  %5 = bitcast i8* %4 to %struct.Object_t*
  store %struct.Object_t* %5, %struct.Object_t** %obj, align 8
  %6 = load %struct.Object_t*, %struct.Object_t** %obj, align 8
  %class = getelementptr inbounds %struct.Object_t, %struct.Object_t* %6, i32 0, i32 0
  %7 = load %struct.ObjectClass_t*, %struct.ObjectClass_t** %class, align 8
  %write_cern = getelementptr inbounds %struct.ObjectClass_t, %struct.ObjectClass_t* %7, i32 0, i32 22
  %8 = load void (%struct.Object_t*, i8*, void (i8*, i8*, ...)*)*, void (%struct.Object_t*, i8*, void (i8*, i8*, ...)*)** %write_cern, align 8
  %9 = load %struct.Object_t*, %struct.Object_t** %obj, align 8
  %10 = load i8*, i8** %param.addr, align 8
  %11 = load void (i8*, i8*, ...)*, void (i8*, i8*, ...)** %output.addr, align 8
  call void %8(%struct.Object_t* %9, i8* %10, void (i8*, i8*, ...)* %11)
  %12 = load void (i8*, i8*, ...)*, void (i8*, i8*, ...)** %output.addr, align 8
  %13 = load i8*, i8** %param.addr, align 8
  %14 = load %struct.Object_t*, %struct.Object_t** %obj, align 8
  %url = getelementptr inbounds %struct.Object_t, %struct.Object_t* %14, i32 0, i32 5
  %15 = load i8*, i8** %url, align 8
  call void (i8*, i8*, ...) %12(i8* %13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i32 0, i32 0), i8* %15)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %16 = load %struct._GList*, %struct._GList** %p, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %16, i32 0, i32 1
  %17 = load %struct._GList*, %struct._GList** %next, align 8
  store %struct._GList* %17, %struct._GList** %p, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @object_list_write_ncsa(%struct.ObjectList_t* %list, i8* %param, void (i8*, i8*, ...)* %output) #0 {
entry:
  %list.addr = alloca %struct.ObjectList_t*, align 8
  %param.addr = alloca i8*, align 8
  %output.addr = alloca void (i8*, i8*, ...)*, align 8
  %p = alloca %struct._GList*, align 8
  %obj = alloca %struct.Object_t*, align 8
  store %struct.ObjectList_t* %list, %struct.ObjectList_t** %list.addr, align 8
  store i8* %param, i8** %param.addr, align 8
  store void (i8*, i8*, ...)* %output, void (i8*, i8*, ...)** %output.addr, align 8
  %0 = load %struct.ObjectList_t*, %struct.ObjectList_t** %list.addr, align 8
  %list1 = getelementptr inbounds %struct.ObjectList_t, %struct.ObjectList_t* %0, i32 0, i32 0
  %1 = load %struct._GList*, %struct._GList** %list1, align 8
  store %struct._GList* %1, %struct._GList** %p, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load %struct._GList*, %struct._GList** %p, align 8
  %tobool = icmp ne %struct._GList* %2, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load %struct._GList*, %struct._GList** %p, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %3, i32 0, i32 0
  %4 = load i8*, i8** %data, align 8
  %5 = bitcast i8* %4 to %struct.Object_t*
  store %struct.Object_t* %5, %struct.Object_t** %obj, align 8
  %6 = load %struct.Object_t*, %struct.Object_t** %obj, align 8
  %comment = getelementptr inbounds %struct.Object_t, %struct.Object_t* %6, i32 0, i32 7
  %7 = load i8*, i8** %comment, align 8
  %8 = load i8, i8* %7, align 1
  %tobool2 = icmp ne i8 %8, 0
  br i1 %tobool2, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %9 = load void (i8*, i8*, ...)*, void (i8*, i8*, ...)** %output.addr, align 8
  %10 = load i8*, i8** %param.addr, align 8
  %11 = load %struct.Object_t*, %struct.Object_t** %obj, align 8
  %comment3 = getelementptr inbounds %struct.Object_t, %struct.Object_t* %11, i32 0, i32 7
  %12 = load i8*, i8** %comment3, align 8
  call void (i8*, i8*, ...) %9(i8* %10, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i32 0, i32 0), i8* %12)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %13 = load %struct.Object_t*, %struct.Object_t** %obj, align 8
  %class = getelementptr inbounds %struct.Object_t, %struct.Object_t* %13, i32 0, i32 0
  %14 = load %struct.ObjectClass_t*, %struct.ObjectClass_t** %class, align 8
  %write_ncsa = getelementptr inbounds %struct.ObjectClass_t, %struct.ObjectClass_t* %14, i32 0, i32 23
  %15 = load void (%struct.Object_t*, i8*, void (i8*, i8*, ...)*)*, void (%struct.Object_t*, i8*, void (i8*, i8*, ...)*)** %write_ncsa, align 8
  %16 = load %struct.Object_t*, %struct.Object_t** %obj, align 8
  %17 = load i8*, i8** %param.addr, align 8
  %18 = load void (i8*, i8*, ...)*, void (i8*, i8*, ...)** %output.addr, align 8
  call void %15(%struct.Object_t* %16, i8* %17, void (i8*, i8*, ...)* %18)
  %19 = load void (i8*, i8*, ...)*, void (i8*, i8*, ...)** %output.addr, align 8
  %20 = load i8*, i8** %param.addr, align 8
  call void (i8*, i8*, ...) %19(i8* %20, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i32 0, i32 0))
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %21 = load %struct._GList*, %struct._GList** %p, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %21, i32 0, i32 1
  %22 = load %struct._GList*, %struct._GList** %next, align 8
  store %struct._GList* %22, %struct._GList** %p, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

declare noalias i8* @g_malloc_n(i64, i64) #1

declare i8* @g_markup_escape_text(i8*, i64) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
