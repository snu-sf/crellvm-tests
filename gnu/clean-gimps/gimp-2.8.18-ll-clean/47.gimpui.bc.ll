; ModuleID = './libgimp/gimpui.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GimpModuleDB = type { %struct._GObject, %struct._GList*, i8*, i32 }
%struct._GObject = type { %struct._GTypeInstance, i32, %struct._GData* }
%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GData = type opaque
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct._GdkScreen = type { %struct._GObject, i8, [32 x %struct._GdkGC*], [32 x %struct._GdkGC*], [32 x %struct._GdkGC*], %struct._cairo_font_options*, double }
%struct._GdkGC = type { %struct._GObject, i32, i32, i32, i32, %struct._GdkColormap* }
%struct._GdkColormap = type { %struct._GObject, i32, %struct._GdkColor*, %struct._GdkVisual*, i8* }
%struct._GdkColor = type { i32, i16, i16, i16 }
%struct._GdkVisual = type { %struct._GObject, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._cairo_font_options = type opaque
%struct._GimpRGB = type { double, double, double, double }
%struct._GdkDrawable = type { %struct._GObject }
%struct._GdkDisplay = type { %struct._GObject, %struct._GList*, %struct._GList*, [2 x i32], [2 x %struct._GdkDrawable*], [2 x i32], i32, %struct._GdkDevice*, %struct._GdkDisplayPointerHooks*, i8, i32, [2 x i32], [2 x i32], %struct._GList*, %struct.GdkKeyboardGrabInfo, %struct.GdkPointerWindowInfo, i32 }
%struct._GdkDevice = type { %struct._GObject, i8*, i32, i32, i32, i32, %struct._GdkDeviceAxis*, i32, %struct._GdkDeviceKey* }
%struct._GdkDeviceAxis = type { i32, double, double }
%struct._GdkDeviceKey = type { i32, i32 }
%struct._GdkDisplayPointerHooks = type { void (%struct._GdkDisplay*, %struct._GdkScreen**, i32*, i32*, i32*)*, %struct._GdkDrawable* (%struct._GdkDisplay*, %struct._GdkDrawable*, i32*, i32*, i32*)*, %struct._GdkDrawable* (%struct._GdkDisplay*, i32*, i32*)* }
%struct.GdkKeyboardGrabInfo = type { %struct._GdkDrawable*, %struct._GdkDrawable*, i64, i32, i32 }
%struct.GdkPointerWindowInfo = type { %struct._GdkDrawable*, %struct._GdkDrawable*, double, double, i32, i32, i64 }
%struct._GtkWindow = type <{ %struct._GtkBin, i8*, i8*, i8*, i8*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWindow*, %struct._GtkWindowGeometryInfo*, %struct._GdkDrawable*, %struct._GtkWindowGroup*, i16, i32, [2 x i8], i32, i32, i32, i32, i32, i32, %struct._GdkScreen* }>
%struct._GtkBin = type { %struct._GtkContainer, %struct._GtkWidget* }
%struct._GtkContainer = type { %struct._GtkWidget, %struct._GtkWidget*, i24 }
%struct._GtkWidget = type { %struct._GtkObject, i16, i8, i8, i8*, %struct._GtkStyle*, %struct._GtkRequisition, %struct._GdkRectangle, %struct._GdkDrawable*, %struct._GtkWidget* }
%struct._GtkObject = type { %struct._GObject, i32 }
%struct._GtkStyle = type { %struct._GObject, [5 x %struct._GdkColor], [5 x %struct._GdkColor], [5 x %struct._GdkColor], [5 x %struct._GdkColor], [5 x %struct._GdkColor], [5 x %struct._GdkColor], [5 x %struct._GdkColor], [5 x %struct._GdkColor], %struct._GdkColor, %struct._GdkColor, %struct._PangoFontDescription*, i32, i32, [5 x %struct._GdkGC*], [5 x %struct._GdkGC*], [5 x %struct._GdkGC*], [5 x %struct._GdkGC*], [5 x %struct._GdkGC*], [5 x %struct._GdkGC*], [5 x %struct._GdkGC*], [5 x %struct._GdkGC*], %struct._GdkGC*, %struct._GdkGC*, [5 x %struct._GdkDrawable*], i32, i32, %struct._GdkColormap*, %struct._GdkFont*, %struct._PangoFontDescription*, %struct._GtkRcStyle*, %struct._GSList*, %struct._GArray*, %struct._GSList* }
%struct._GdkFont = type opaque
%struct._PangoFontDescription = type opaque
%struct._GtkRcStyle = type { %struct._GObject, i8*, [5 x i8*], %struct._PangoFontDescription*, [5 x i32], [5 x %struct._GdkColor], [5 x %struct._GdkColor], [5 x %struct._GdkColor], [5 x %struct._GdkColor], i32, i32, %struct._GArray*, %struct._GSList*, %struct._GSList*, i8 }
%struct._GArray = type { i8*, i32 }
%struct._GSList = type { i8*, %struct._GSList* }
%struct._GtkRequisition = type { i32, i32 }
%struct._GdkRectangle = type { i32, i32, i32, i32 }
%struct._GtkWindowGeometryInfo = type opaque
%struct._GtkWindowGroup = type { %struct._GObject, %struct._GSList* }
%struct._GClosure = type { i32, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i8*, %struct._GClosureNotifyData* }
%struct._GValue = type { i64, [2 x %union.anon] }
%union.anon = type { i64 }
%struct._GClosureNotifyData = type { i8*, void (i8*, %struct._GClosure*)* }

@.str = private unnamed_addr constant [8 x i8] c"LibGimp\00", align 1
@__func__.gimp_ui_init = private unnamed_addr constant [13 x i8] c"gimp_ui_init\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"prog_name != NULL\00", align 1
@gimp_ui_initialized = internal global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"DISPLAY\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"_TIME%u\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"DESKTOP_STARTUP_ID\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"themerc\00", align 1
@__func__.gimp_ui_get_display_window = private unnamed_addr constant [27 x i8] c"gimp_ui_get_display_window\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"gimp_ui_initialized\00", align 1
@__func__.gimp_ui_get_progress_window = private unnamed_addr constant [28 x i8] c"gimp_ui_get_progress_window\00", align 1
@__func__.gimp_window_set_transient_for_display = private unnamed_addr constant [38 x i8] c"gimp_window_set_transient_for_display\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"GTK_IS_WINDOW (window)\00", align 1
@__func__.gimp_window_set_transient = private unnamed_addr constant [26 x i8] c"gimp_window_set_transient\00", align 1
@gimp_ensure_modules.module_db = internal global %struct._GimpModuleDB* null, align 8
@.str.8 = private unnamed_addr constant [12 x i8] c"module-path\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"realize\00", align 1

; Function Attrs: nounwind uwtable
define void @gimp_ui_init(i8* %prog_name, i32 %preview) #0 {
entry:
  %prog_name.addr = alloca i8*, align 8
  %preview.addr = alloca i32, align 4
  %screen = alloca %struct._GdkScreen*, align 8
  %display_name = alloca i8*, align 8
  %themerc = alloca i8*, align 8
  %startup_id = alloca i8*, align 8
  store i8* %prog_name, i8** %prog_name.addr, align 8
  store i32 %preview, i32* %preview.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load i8*, i8** %prog_name.addr, align 8
  %cmp = icmp ne i8* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.gimp_ui_init, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i32 0, i32 0))
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %1 = load i32, i32* @gimp_ui_initialized, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.then.1, label %if.end.2

if.then.1:                                        ; preds = %do.end
  br label %return

if.end.2:                                         ; preds = %do.end
  %2 = load i8*, i8** %prog_name.addr, align 8
  call void @g_set_prgname(i8* %2)
  %call = call i8* @gimp_display_name() #4
  store i8* %call, i8** %display_name, align 8
  %3 = load i8*, i8** %display_name, align 8
  %tobool3 = icmp ne i8* %3, null
  br i1 %tobool3, label %if.then.4, label %if.end.6

if.then.4:                                        ; preds = %if.end.2
  %4 = load i8*, i8** %display_name, align 8
  %call5 = call i32 @g_setenv(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0), i8* %4, i32 1)
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.4, %if.end.2
  %call7 = call i32 @gimp_user_time() #4
  %tobool8 = icmp ne i32 %call7, 0
  br i1 %tobool8, label %if.then.9, label %if.end.13

if.then.9:                                        ; preds = %if.end.6
  %call10 = call i32 @gimp_user_time() #4
  %call11 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i32 0, i32 0), i32 %call10)
  store i8* %call11, i8** %startup_id, align 8
  %5 = load i8*, i8** %startup_id, align 8
  %call12 = call i32 @g_setenv(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i32 0, i32 0), i8* %5, i32 1)
  %6 = load i8*, i8** %startup_id, align 8
  call void @g_free(i8* %6)
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.9, %if.end.6
  call void @gtk_init(i32* null, i8*** null)
  %call14 = call noalias i8* @gimp_personal_rc_file(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i32 0, i32 0))
  store i8* %call14, i8** %themerc, align 8
  %7 = load i8*, i8** %themerc, align 8
  call void @gtk_rc_add_default_file(i8* %7)
  %8 = load i8*, i8** %themerc, align 8
  call void @g_free(i8* %8)
  %call15 = call i8* @gimp_wm_class() #4
  call void @gdk_set_program_class(i8* %call15)
  %call16 = call %struct._GdkScreen* @gdk_screen_get_default()
  store %struct._GdkScreen* %call16, %struct._GdkScreen** %screen, align 8
  %9 = load %struct._GdkScreen*, %struct._GdkScreen** %screen, align 8
  %call17 = call %struct._GdkColormap* @gdk_screen_get_rgb_colormap(%struct._GdkScreen* %9)
  call void @gtk_widget_set_default_colormap(%struct._GdkColormap* %call17)
  call void @gimp_widgets_init(void (i8*, i8*)* @gimp_ui_help_func, i32 (%struct._GimpRGB*)* @gimp_context_get_foreground, i32 (%struct._GimpRGB*)* @gimp_context_get_background, void ()* @gimp_ensure_modules)
  %call18 = call i32 @gimp_show_tool_tips() #4
  %tobool19 = icmp ne i32 %call18, 0
  br i1 %tobool19, label %if.end.21, label %if.then.20

if.then.20:                                       ; preds = %if.end.13
  call void @gimp_help_disable_tooltips()
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.20, %if.end.13
  %call22 = call i32 @gimp_show_help_button() #4
  call void @gimp_dialogs_show_help_button(i32 %call22)
  store i32 1, i32* @gimp_ui_initialized, align 4
  br label %return

return:                                           ; preds = %if.end.21, %if.then.1, %if.else
  ret void
}

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

declare void @g_set_prgname(i8*) #1

; Function Attrs: nounwind readnone
declare i8* @gimp_display_name() #2

declare i32 @g_setenv(i8*, i8*, i32) #1

; Function Attrs: nounwind readnone
declare i32 @gimp_user_time() #2

declare noalias i8* @g_strdup_printf(i8*, ...) #1

declare void @g_free(i8*) #1

declare void @gtk_init(i32*, i8***) #1

declare noalias i8* @gimp_personal_rc_file(i8*) #1

declare void @gtk_rc_add_default_file(i8*) #1

declare void @gdk_set_program_class(i8*) #1

; Function Attrs: nounwind readnone
declare i8* @gimp_wm_class() #2

declare %struct._GdkScreen* @gdk_screen_get_default() #1

declare void @gtk_widget_set_default_colormap(%struct._GdkColormap*) #1

declare %struct._GdkColormap* @gdk_screen_get_rgb_colormap(%struct._GdkScreen*) #1

declare void @gimp_widgets_init(void (i8*, i8*)*, i32 (%struct._GimpRGB*)*, i32 (%struct._GimpRGB*)*, void ()*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_ui_help_func(i8* %help_id, i8* %help_data) #0 {
entry:
  %help_id.addr = alloca i8*, align 8
  %help_data.addr = alloca i8*, align 8
  store i8* %help_id, i8** %help_id.addr, align 8
  store i8* %help_data, i8** %help_data.addr, align 8
  %0 = load i8*, i8** %help_id.addr, align 8
  %call = call i32 @gimp_help(i8* null, i8* %0)
  ret void
}

declare i32 @gimp_context_get_foreground(%struct._GimpRGB*) #1

declare i32 @gimp_context_get_background(%struct._GimpRGB*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_ensure_modules() #0 {
entry:
  %load_inhibit = alloca i8*, align 8
  %module_path = alloca i8*, align 8
  %0 = load %struct._GimpModuleDB*, %struct._GimpModuleDB** @gimp_ensure_modules.module_db, align 8
  %tobool = icmp ne %struct._GimpModuleDB* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call i8* @gimp_get_module_load_inhibit()
  store i8* %call, i8** %load_inhibit, align 8
  %call1 = call i8* @gimp_gimprc_query(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i32 0, i32 0))
  store i8* %call1, i8** %module_path, align 8
  %call2 = call %struct._GimpModuleDB* @gimp_module_db_new(i32 0)
  store %struct._GimpModuleDB* %call2, %struct._GimpModuleDB** @gimp_ensure_modules.module_db, align 8
  %1 = load %struct._GimpModuleDB*, %struct._GimpModuleDB** @gimp_ensure_modules.module_db, align 8
  %2 = load i8*, i8** %load_inhibit, align 8
  call void @gimp_module_db_set_load_inhibit(%struct._GimpModuleDB* %1, i8* %2)
  %3 = load %struct._GimpModuleDB*, %struct._GimpModuleDB** @gimp_ensure_modules.module_db, align 8
  %4 = load i8*, i8** %module_path, align 8
  call void @gimp_module_db_load(%struct._GimpModuleDB* %3, i8* %4)
  %5 = load i8*, i8** %module_path, align 8
  call void @g_free(i8* %5)
  %6 = load i8*, i8** %load_inhibit, align 8
  call void @g_free(i8* %6)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind readnone
declare i32 @gimp_show_tool_tips() #2

declare void @gimp_help_disable_tooltips() #1

declare void @gimp_dialogs_show_help_button(i32) #1

; Function Attrs: nounwind readnone
declare i32 @gimp_show_help_button() #2

; Function Attrs: nounwind uwtable
define %struct._GdkDrawable* @gimp_ui_get_display_window(i32 %gdisp_ID) #0 {
entry:
  %retval = alloca %struct._GdkDrawable*, align 8
  %gdisp_ID.addr = alloca i32, align 4
  %window = alloca i32, align 4
  store i32 %gdisp_ID, i32* %gdisp_ID.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load i32, i32* @gimp_ui_initialized, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.gimp_ui_get_display_window, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i32 0, i32 0))
  store %struct._GdkDrawable* null, %struct._GdkDrawable** %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %1 = load i32, i32* %gdisp_ID.addr, align 4
  %call = call i32 @gimp_display_get_window_handle(i32 %1)
  store i32 %call, i32* %window, align 4
  %2 = load i32, i32* %window, align 4
  %tobool1 = icmp ne i32 %2, 0
  br i1 %tobool1, label %if.then.2, label %if.end.4

if.then.2:                                        ; preds = %do.end
  %3 = load i32, i32* %window, align 4
  %call3 = call %struct._GdkDrawable* @gimp_ui_get_foreign_window(i32 %3)
  store %struct._GdkDrawable* %call3, %struct._GdkDrawable** %retval
  br label %return

if.end.4:                                         ; preds = %do.end
  store %struct._GdkDrawable* null, %struct._GdkDrawable** %retval
  br label %return

return:                                           ; preds = %if.end.4, %if.then.2, %if.else
  %4 = load %struct._GdkDrawable*, %struct._GdkDrawable** %retval
  ret %struct._GdkDrawable* %4
}

declare i32 @gimp_display_get_window_handle(i32) #1

; Function Attrs: nounwind uwtable
define internal %struct._GdkDrawable* @gimp_ui_get_foreign_window(i32 %window) #0 {
entry:
  %window.addr = alloca i32, align 4
  store i32 %window, i32* %window.addr, align 4
  %call = call %struct._GdkDisplay* @gdk_display_get_default()
  %0 = load i32, i32* %window.addr, align 4
  %conv = zext i32 %0 to i64
  %call1 = call %struct._GdkDrawable* @gdk_x11_window_foreign_new_for_display(%struct._GdkDisplay* %call, i64 %conv)
  ret %struct._GdkDrawable* %call1
}

; Function Attrs: nounwind uwtable
define %struct._GdkDrawable* @gimp_ui_get_progress_window() #0 {
entry:
  %retval = alloca %struct._GdkDrawable*, align 8
  %window = alloca i32, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load i32, i32* @gimp_ui_initialized, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.gimp_ui_get_progress_window, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i32 0, i32 0))
  store %struct._GdkDrawable* null, %struct._GdkDrawable** %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %call = call i32 @gimp_progress_get_window_handle()
  store i32 %call, i32* %window, align 4
  %1 = load i32, i32* %window, align 4
  %tobool1 = icmp ne i32 %1, 0
  br i1 %tobool1, label %if.then.2, label %if.end.4

if.then.2:                                        ; preds = %do.end
  %2 = load i32, i32* %window, align 4
  %call3 = call %struct._GdkDrawable* @gimp_ui_get_foreign_window(i32 %2)
  store %struct._GdkDrawable* %call3, %struct._GdkDrawable** %retval
  br label %return

if.end.4:                                         ; preds = %do.end
  store %struct._GdkDrawable* null, %struct._GdkDrawable** %retval
  br label %return

return:                                           ; preds = %if.end.4, %if.then.2, %if.else
  %3 = load %struct._GdkDrawable*, %struct._GdkDrawable** %retval
  ret %struct._GdkDrawable* %3
}

declare i32 @gimp_progress_get_window_handle() #1

; Function Attrs: nounwind uwtable
define void @gimp_window_set_transient_for_display(%struct._GtkWindow* %window, i32 %gdisp_ID) #0 {
entry:
  %window.addr = alloca %struct._GtkWindow*, align 8
  %gdisp_ID.addr = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GtkWindow* %window, %struct._GtkWindow** %window.addr, align 8
  store i32 %gdisp_ID, i32* %gdisp_ID.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load i32, i32* @gimp_ui_initialized, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__func__.gimp_window_set_transient_for_display, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i32 0, i32 0))
  br label %if.end.21

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %do.body.1

do.body.1:                                        ; preds = %do.end
  %1 = load %struct._GtkWindow*, %struct._GtkWindow** %window.addr, align 8
  %2 = bitcast %struct._GtkWindow* %1 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %2, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gtk_window_get_type() #4
  store i64 %call, i64* %__t, align 8
  %3 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool2 = icmp ne %struct._GTypeInstance* %3, null
  br i1 %tobool2, label %if.else.4, label %if.then.3

if.then.3:                                        ; preds = %do.body.1
  store i32 0, i32* %__r, align 4
  br label %if.end.11

if.else.4:                                        ; preds = %do.body.1
  %4 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %4, i32 0, i32 0
  %5 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool5 = icmp ne %struct._GTypeClass* %5, null
  br i1 %tobool5, label %land.lhs.true, label %if.else.8

land.lhs.true:                                    ; preds = %if.else.4
  %6 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class6 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %6, i32 0, i32 0
  %7 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class6, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %7, i32 0, i32 0
  %8 = load i64, i64* %g_type, align 8
  %9 = load i64, i64* %__t, align 8
  %cmp = icmp eq i64 %8, %9
  br i1 %cmp, label %if.then.7, label %if.else.8

if.then.7:                                        ; preds = %land.lhs.true
  store i32 1, i32* %__r, align 4
  br label %if.end.10

if.else.8:                                        ; preds = %land.lhs.true, %if.else.4
  %10 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %11 = load i64, i64* %__t, align 8
  %call9 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %10, i64 %11) #5
  store i32 %call9, i32* %__r, align 4
  br label %if.end.10

if.end.10:                                        ; preds = %if.else.8, %if.then.7
  br label %if.end.11

if.end.11:                                        ; preds = %if.end.10, %if.then.3
  %12 = load i32, i32* %__r, align 4
  store i32 %12, i32* %tmp
  %13 = load i32, i32* %tmp
  %tobool12 = icmp ne i32 %13, 0
  br i1 %tobool12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %if.end.11
  br label %if.end.15

if.else.14:                                       ; preds = %if.end.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__func__.gimp_window_set_transient_for_display, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i32 0, i32 0))
  br label %if.end.21

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  %14 = load %struct._GtkWindow*, %struct._GtkWindow** %window.addr, align 8
  %15 = load i32, i32* %gdisp_ID.addr, align 4
  %call17 = call %struct._GdkDrawable* @gimp_ui_get_display_window(i32 %15)
  %call18 = call i32 @gimp_window_set_transient_for(%struct._GtkWindow* %14, %struct._GdkDrawable* %call17)
  %tobool19 = icmp ne i32 %call18, 0
  br i1 %tobool19, label %if.end.21, label %if.then.20

if.then.20:                                       ; preds = %do.end.16
  %16 = load %struct._GtkWindow*, %struct._GtkWindow** %window.addr, align 8
  call void @gtk_window_set_position(%struct._GtkWindow* %16, i32 1)
  br label %if.end.21

if.end.21:                                        ; preds = %if.else, %if.else.14, %if.then.20, %do.end.16
  ret void
}

; Function Attrs: nounwind readnone
declare i64 @gtk_window_get_type() #2

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #3

; Function Attrs: nounwind uwtable
define internal i32 @gimp_window_set_transient_for(%struct._GtkWindow* %window, %struct._GdkDrawable* %parent) #0 {
entry:
  %retval = alloca i32, align 4
  %window.addr = alloca %struct._GtkWindow*, align 8
  %parent.addr = alloca %struct._GdkDrawable*, align 8
  store %struct._GtkWindow* %window, %struct._GtkWindow** %window.addr, align 8
  store %struct._GdkDrawable* %parent, %struct._GdkDrawable** %parent.addr, align 8
  %0 = load %struct._GtkWindow*, %struct._GtkWindow** %window.addr, align 8
  call void @gtk_window_set_transient_for(%struct._GtkWindow* %0, %struct._GtkWindow* null)
  %1 = load %struct._GtkWindow*, %struct._GtkWindow** %window.addr, align 8
  %2 = bitcast %struct._GtkWindow* %1 to i8*
  %call = call i32 @g_signal_handlers_disconnect_matched(i8* %2, i32 8, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GtkWidget*, %struct._GdkDrawable*)* @gimp_window_transient_realized to i8*), i8* null)
  %3 = load %struct._GdkDrawable*, %struct._GdkDrawable** %parent.addr, align 8
  %tobool = icmp ne %struct._GdkDrawable* %3, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %4 = load %struct._GtkWindow*, %struct._GtkWindow** %window.addr, align 8
  %5 = bitcast %struct._GtkWindow* %4 to %struct._GTypeInstance*
  %call1 = call i64 @gtk_widget_get_type() #4
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 %call1)
  %6 = bitcast %struct._GTypeInstance* %call2 to %struct._GtkWidget*
  %call3 = call i32 @gtk_widget_get_realized(%struct._GtkWidget* %6)
  %tobool4 = icmp ne i32 %call3, 0
  br i1 %tobool4, label %if.then.5, label %if.end.9

if.then.5:                                        ; preds = %if.end
  %7 = load %struct._GtkWindow*, %struct._GtkWindow** %window.addr, align 8
  %8 = bitcast %struct._GtkWindow* %7 to %struct._GTypeInstance*
  %call6 = call i64 @gtk_widget_get_type() #4
  %call7 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %8, i64 %call6)
  %9 = bitcast %struct._GTypeInstance* %call7 to %struct._GtkWidget*
  %call8 = call %struct._GdkDrawable* @gtk_widget_get_window(%struct._GtkWidget* %9)
  %10 = load %struct._GdkDrawable*, %struct._GdkDrawable** %parent.addr, align 8
  call void @gdk_window_set_transient_for(%struct._GdkDrawable* %call8, %struct._GdkDrawable* %10)
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.5, %if.end
  %11 = load %struct._GtkWindow*, %struct._GtkWindow** %window.addr, align 8
  %12 = bitcast %struct._GtkWindow* %11 to i8*
  %13 = load %struct._GdkDrawable*, %struct._GdkDrawable** %parent.addr, align 8
  %14 = bitcast %struct._GdkDrawable* %13 to i8*
  %call10 = call i64 @g_signal_connect_object(i8* %12, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, %struct._GdkDrawable*)* @gimp_window_transient_realized to void ()*), i8* %14, i32 0)
  %15 = load %struct._GdkDrawable*, %struct._GdkDrawable** %parent.addr, align 8
  %16 = bitcast %struct._GdkDrawable* %15 to i8*
  call void @g_object_unref(i8* %16)
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.9, %if.then
  %17 = load i32, i32* %retval
  ret i32 %17
}

declare void @gtk_window_set_position(%struct._GtkWindow*, i32) #1

; Function Attrs: nounwind uwtable
define void @gimp_window_set_transient(%struct._GtkWindow* %window) #0 {
entry:
  %window.addr = alloca %struct._GtkWindow*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GtkWindow* %window, %struct._GtkWindow** %window.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load i32, i32* @gimp_ui_initialized, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.gimp_window_set_transient, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i32 0, i32 0))
  br label %if.end.21

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %do.body.1

do.body.1:                                        ; preds = %do.end
  %1 = load %struct._GtkWindow*, %struct._GtkWindow** %window.addr, align 8
  %2 = bitcast %struct._GtkWindow* %1 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %2, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gtk_window_get_type() #4
  store i64 %call, i64* %__t, align 8
  %3 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool2 = icmp ne %struct._GTypeInstance* %3, null
  br i1 %tobool2, label %if.else.4, label %if.then.3

if.then.3:                                        ; preds = %do.body.1
  store i32 0, i32* %__r, align 4
  br label %if.end.11

if.else.4:                                        ; preds = %do.body.1
  %4 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %4, i32 0, i32 0
  %5 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool5 = icmp ne %struct._GTypeClass* %5, null
  br i1 %tobool5, label %land.lhs.true, label %if.else.8

land.lhs.true:                                    ; preds = %if.else.4
  %6 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class6 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %6, i32 0, i32 0
  %7 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class6, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %7, i32 0, i32 0
  %8 = load i64, i64* %g_type, align 8
  %9 = load i64, i64* %__t, align 8
  %cmp = icmp eq i64 %8, %9
  br i1 %cmp, label %if.then.7, label %if.else.8

if.then.7:                                        ; preds = %land.lhs.true
  store i32 1, i32* %__r, align 4
  br label %if.end.10

if.else.8:                                        ; preds = %land.lhs.true, %if.else.4
  %10 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %11 = load i64, i64* %__t, align 8
  %call9 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %10, i64 %11) #5
  store i32 %call9, i32* %__r, align 4
  br label %if.end.10

if.end.10:                                        ; preds = %if.else.8, %if.then.7
  br label %if.end.11

if.end.11:                                        ; preds = %if.end.10, %if.then.3
  %12 = load i32, i32* %__r, align 4
  store i32 %12, i32* %tmp
  %13 = load i32, i32* %tmp
  %tobool12 = icmp ne i32 %13, 0
  br i1 %tobool12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %if.end.11
  br label %if.end.15

if.else.14:                                       ; preds = %if.end.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.gimp_window_set_transient, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i32 0, i32 0))
  br label %if.end.21

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  %14 = load %struct._GtkWindow*, %struct._GtkWindow** %window.addr, align 8
  %call17 = call %struct._GdkDrawable* @gimp_ui_get_progress_window()
  %call18 = call i32 @gimp_window_set_transient_for(%struct._GtkWindow* %14, %struct._GdkDrawable* %call17)
  %tobool19 = icmp ne i32 %call18, 0
  br i1 %tobool19, label %if.end.21, label %if.then.20

if.then.20:                                       ; preds = %do.end.16
  %15 = load %struct._GtkWindow*, %struct._GtkWindow** %window.addr, align 8
  call void @gtk_window_set_position(%struct._GtkWindow* %15, i32 1)
  br label %if.end.21

if.end.21:                                        ; preds = %if.else, %if.else.14, %if.then.20, %do.end.16
  ret void
}

declare %struct._GdkDrawable* @gdk_x11_window_foreign_new_for_display(%struct._GdkDisplay*, i64) #1

declare %struct._GdkDisplay* @gdk_display_get_default() #1

declare i32 @gimp_help(i8*, i8*) #1

declare i8* @gimp_get_module_load_inhibit() #1

declare i8* @gimp_gimprc_query(i8*) #1

declare %struct._GimpModuleDB* @gimp_module_db_new(i32) #1

declare void @gimp_module_db_set_load_inhibit(%struct._GimpModuleDB*, i8*) #1

declare void @gimp_module_db_load(%struct._GimpModuleDB*, i8*) #1

declare void @gtk_window_set_transient_for(%struct._GtkWindow*, %struct._GtkWindow*) #1

declare i32 @g_signal_handlers_disconnect_matched(i8*, i32, i32, i32, %struct._GClosure*, i8*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_window_transient_realized(%struct._GtkWidget* %window, %struct._GdkDrawable* %parent) #0 {
entry:
  %window.addr = alloca %struct._GtkWidget*, align 8
  %parent.addr = alloca %struct._GdkDrawable*, align 8
  store %struct._GtkWidget* %window, %struct._GtkWidget** %window.addr, align 8
  store %struct._GdkDrawable* %parent, %struct._GdkDrawable** %parent.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %window.addr, align 8
  %call = call i32 @gtk_widget_get_realized(%struct._GtkWidget* %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct._GtkWidget*, %struct._GtkWidget** %window.addr, align 8
  %call1 = call %struct._GdkDrawable* @gtk_widget_get_window(%struct._GtkWidget* %1)
  %2 = load %struct._GdkDrawable*, %struct._GdkDrawable** %parent.addr, align 8
  call void @gdk_window_set_transient_for(%struct._GdkDrawable* %call1, %struct._GdkDrawable* %2)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare i32 @gtk_widget_get_realized(%struct._GtkWidget*) #1

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_widget_get_type() #2

declare void @gdk_window_set_transient_for(%struct._GdkDrawable*, %struct._GdkDrawable*) #1

declare %struct._GdkDrawable* @gtk_widget_get_window(%struct._GtkWidget*) #1

declare i64 @g_signal_connect_object(i8*, i8*, void ()*, i8*, i32) #1

declare void @g_object_unref(i8*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone }
attributes #5 = { nounwind readonly }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
