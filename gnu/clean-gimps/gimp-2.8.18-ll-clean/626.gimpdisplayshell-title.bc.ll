; ModuleID = './app/display/gimpdisplayshell-title.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GimpDisplayShell = type { %struct._GtkBox, %struct._GimpDisplay*, %struct._GimpUIManager*, %struct._GimpDisplayOptions*, %struct._GimpDisplayOptions*, %struct._GimpDisplayOptions*, i32, i32, i32, i32, i32, i32, i32, double, double, double, double, i32, i32, i32, i32, i32, %struct._GimpZoomModel*, double, i32, i32, i32, double, i32, i32, i32, %struct._Selection*, %struct._GList*, %struct._GtkWidget*, %struct._GtkAdjustment*, %struct._GtkAdjustment*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._cairo_surface*, %struct._cairo_surface*, %struct._cairo_pattern*, %struct._GimpCanvasItem*, %struct._GimpCanvasItem*, %struct._GimpCanvasItem*, %struct._GimpCanvasItem*, %struct._GimpCanvasItem*, %struct._GimpCanvasItem*, %struct._GimpCanvasItem*, %struct._GimpCanvasItem*, %struct._GimpCanvasItem*, %struct._GimpCanvasItem*, i32, i8*, i8*, i32, i32, %struct._GdkPixbuf*, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GimpColorDisplayStack*, i32, %struct._GtkWidget*, i32, %struct._GimpTreeHandler*, %struct._GimpTreeHandler*, %struct._GimpTreeHandler*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i32, i32, i32, i8*, %struct._GimpDrawable*, %struct._GimpRGB, %struct._GimpMotionBuffer*, %struct._GQueue* }
%struct._GtkBox = type { %struct._GtkContainer, %struct._GList*, i16, i8 }
%struct._GtkContainer = type { %struct._GtkWidget, %struct._GtkWidget*, i24 }
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
%struct._GimpDisplay = type { %struct._GimpObject, %struct._Gimp*, %struct._GimpDisplayConfig* }
%struct._GimpObject = type { %struct._GObject, %struct._GimpObjectPrivate* }
%struct._GimpObjectPrivate = type opaque
%struct._Gimp = type opaque
%struct._GimpDisplayConfig = type { %struct._GimpCoreConfig, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8*, double, double, i32, i32, %struct._GimpDisplayOptions*, %struct._GimpDisplayOptions*, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._GimpCoreConfig = type { %struct._GimpBaseConfig, i8*, i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, %struct._GimpTemplate*, %struct._GimpGrid*, i32, i64, i32, i32, i8*, i32, i32, i32, i64, %struct._GimpColorConfig*, i32, i32, %struct._GimpRGB, i32 }
%struct._GimpBaseConfig = type { %struct._GObject, i8*, i8*, i32, i64 }
%struct._GimpTemplate = type opaque
%struct._GimpGrid = type opaque
%struct._GimpColorConfig = type opaque
%struct._GimpUIManager = type opaque
%struct._GimpDisplayOptions = type opaque
%struct._GimpZoomModel = type { %struct._GObject, i8* }
%struct._Selection = type opaque
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct._GtkAdjustment = type { %struct._GtkObject, double, double, double, double, double, double }
%struct._cairo_surface = type opaque
%struct._cairo_pattern = type opaque
%struct._GimpCanvasItem = type opaque
%struct._GdkPixbuf = type opaque
%struct._GimpColorDisplayStack = type { %struct._GObject, %struct._GList* }
%struct._GimpTreeHandler = type opaque
%struct._GimpDrawable = type { %struct._GimpItem, %struct._GimpDrawablePrivate* }
%struct._GimpItem = type { %struct._GimpViewable }
%struct._GimpViewable = type { %struct._GimpObject }
%struct._GimpDrawablePrivate = type opaque
%struct._GimpRGB = type { double, double, double, double }
%struct._GimpMotionBuffer = type opaque
%struct._GQueue = type { %struct._GList*, %struct._GList*, i32 }
%struct._GimpImage = type { %struct._GimpViewable, %struct._Gimp* }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@.str = private unnamed_addr constant [13 x i8] c"Gimp-Display\00", align 1
@__func__.gimp_display_shell_title_update = private unnamed_addr constant [32 x i8] c"gimp_display_shell_title_update\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"GIMP_IS_DISPLAY_SHELL (shell)\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c" \E2\80\93 \00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"GIMP\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"title\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"status\00", align 1
@.str.6 = private unnamed_addr constant [31 x i8] c"GNU Image Manipulation Program\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c" \00", align 1
@__func__.gimp_display_shell_format_title = private unnamed_addr constant [32 x i8] c"gimp_display_shell_format_title\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"%.0f\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"%.2f\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"%%D\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c"%%C\00", align 1
@.str.14 = private unnamed_addr constant [11 x i8] c"(modified)\00", align 1
@.str.15 = private unnamed_addr constant [8 x i8] c"(clean)\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"%.1f\00", align 1
@.str.17 = private unnamed_addr constant [9 x i8] c"%d layer\00", align 1
@.str.18 = private unnamed_addr constant [10 x i8] c"%d layers\00", align 1
@.str.19 = private unnamed_addr constant [7 x i8] c"(none)\00", align 1
@.str.20 = private unnamed_addr constant [7 x i8] c"%%.%df\00", align 1
@.str.21 = private unnamed_addr constant [5 x i8] c"%%%c\00", align 1
@.str.22 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: nounwind uwtable
define void @gimp_display_shell_title_update(%struct._GimpDisplayShell* %shell) #0 {
entry:
  %shell.addr = alloca %struct._GimpDisplayShell*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpDisplayShell* %shell, %struct._GimpDisplayShell** %shell.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %1 = bitcast %struct._GimpDisplayShell* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_display_shell_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__func__.gimp_display_shell_title_update, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %title_idle_id = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %13, i32 0, i32 58
  %14 = load i32, i32* %title_idle_id, align 4
  %tobool11 = icmp ne i32 %14, 0
  br i1 %tobool11, label %if.then.12, label %if.end.15

if.then.12:                                       ; preds = %do.end
  %15 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %title_idle_id13 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %15, i32 0, i32 58
  %16 = load i32, i32* %title_idle_id13, align 4
  %call14 = call i32 @g_source_remove(i32 %16)
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.12, %do.end
  %17 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %18 = bitcast %struct._GimpDisplayShell* %17 to i8*
  %call16 = call i32 @g_idle_add(i32 (i8*)* @gimp_display_shell_update_title_idle, i8* %18)
  %19 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %title_idle_id17 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %19, i32 0, i32 58
  store i32 %call16, i32* %title_idle_id17, align 4
  br label %return

return:                                           ; preds = %if.end.15, %if.else.9
  ret void
}

; Function Attrs: nounwind readnone
declare i64 @gimp_display_shell_get_type() #1

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #2

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #3

declare i32 @g_source_remove(i32) #3

declare i32 @g_idle_add(i32 (i8*)*, i8*) #3

; Function Attrs: nounwind uwtable
define internal i32 @gimp_display_shell_update_title_idle(i8* %data) #0 {
entry:
  %data.addr = alloca i8*, align 8
  %shell = alloca %struct._GimpDisplayShell*, align 8
  %config = alloca %struct._GimpDisplayConfig*, align 8
  %title = alloca [512 x i8], align 16
  %status = alloca [512 x i8], align 16
  %len = alloca i32, align 4
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = bitcast i8* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_display_shell_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpDisplayShell*
  store %struct._GimpDisplayShell* %2, %struct._GimpDisplayShell** %shell, align 8
  %3 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %title_idle_id = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %3, i32 0, i32 58
  store i32 0, i32* %title_idle_id, align 4
  %4 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %display = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %4, i32 0, i32 1
  %5 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %call2 = call %struct._GimpImage* @gimp_display_get_image(%struct._GimpDisplay* %5)
  %tobool = icmp ne %struct._GimpImage* %call2, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %6 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %display3 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %6, i32 0, i32 1
  %7 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display3, align 8
  %config4 = getelementptr inbounds %struct._GimpDisplay, %struct._GimpDisplay* %7, i32 0, i32 2
  %8 = load %struct._GimpDisplayConfig*, %struct._GimpDisplayConfig** %config4, align 8
  store %struct._GimpDisplayConfig* %8, %struct._GimpDisplayConfig** %config, align 8
  %9 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %arraydecay = getelementptr inbounds [512 x i8], [512 x i8]* %title, i32 0, i32 0
  %10 = load %struct._GimpDisplayConfig*, %struct._GimpDisplayConfig** %config, align 8
  %image_title_format = getelementptr inbounds %struct._GimpDisplayConfig, %struct._GimpDisplayConfig* %10, i32 0, i32 14
  %11 = load i8*, i8** %image_title_format, align 8
  %call5 = call i32 @gimp_display_shell_format_title(%struct._GimpDisplayShell* %9, i8* %arraydecay, i32 512, i8* %11)
  store i32 %call5, i32* %len, align 4
  %12 = load i32, i32* %len, align 4
  %tobool6 = icmp ne i32 %12, 0
  br i1 %tobool6, label %if.then.7, label %if.end

if.then.7:                                        ; preds = %if.then
  %arraydecay8 = getelementptr inbounds [512 x i8], [512 x i8]* %title, i32 0, i32 0
  %13 = load i32, i32* %len, align 4
  %idx.ext = sext i32 %13 to i64
  %add.ptr = getelementptr inbounds i8, i8* %arraydecay8, i64 %idx.ext
  %14 = load i32, i32* %len, align 4
  %conv = sext i32 %14 to i64
  %sub = sub i64 512, %conv
  %call9 = call i64 @g_strlcpy(i8* %add.ptr, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i64 %sub)
  %15 = load i32, i32* %len, align 4
  %conv10 = sext i32 %15 to i64
  %add = add i64 %conv10, %call9
  %conv11 = trunc i64 %add to i32
  store i32 %conv11, i32* %len, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.7, %if.then
  %arraydecay12 = getelementptr inbounds [512 x i8], [512 x i8]* %title, i32 0, i32 0
  %16 = load i32, i32* %len, align 4
  %idx.ext13 = sext i32 %16 to i64
  %add.ptr14 = getelementptr inbounds i8, i8* %arraydecay12, i64 %idx.ext13
  %call15 = call i8* @gettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0)) #5
  %17 = load i32, i32* %len, align 4
  %conv16 = sext i32 %17 to i64
  %sub17 = sub i64 512, %conv16
  %call18 = call i64 @g_strlcpy(i8* %add.ptr14, i8* %call15, i64 %sub17)
  %18 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %arraydecay19 = getelementptr inbounds [512 x i8], [512 x i8]* %status, i32 0, i32 0
  %19 = load %struct._GimpDisplayConfig*, %struct._GimpDisplayConfig** %config, align 8
  %image_status_format = getelementptr inbounds %struct._GimpDisplayConfig, %struct._GimpDisplayConfig* %19, i32 0, i32 15
  %20 = load i8*, i8** %image_status_format, align 8
  %call20 = call i32 @gimp_display_shell_format_title(%struct._GimpDisplayShell* %18, i8* %arraydecay19, i32 512, i8* %20)
  %21 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %22 = bitcast %struct._GimpDisplayShell* %21 to i8*
  %arraydecay21 = getelementptr inbounds [512 x i8], [512 x i8]* %title, i32 0, i32 0
  %arraydecay22 = getelementptr inbounds [512 x i8], [512 x i8]* %status, i32 0, i32 0
  call void (i8*, i8*, ...) @g_object_set(i8* %22, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i32 0, i32 0), i8* %arraydecay21, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), i8* %arraydecay22, i8* null)
  br label %if.end.24

if.else:                                          ; preds = %entry
  %23 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %24 = bitcast %struct._GimpDisplayShell* %23 to i8*
  %call23 = call i8* @gettext(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i32 0, i32 0)) #5
  call void (i8*, i8*, ...) @g_object_set(i8* %24, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i32 0, i32 0), i8* %call23, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i32 0, i32 0), i8* null)
  br label %if.end.24

if.end.24:                                        ; preds = %if.else, %if.end
  ret i32 0
}

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #3

declare %struct._GimpImage* @gimp_display_get_image(%struct._GimpDisplay*) #3

; Function Attrs: nounwind uwtable
define internal i32 @gimp_display_shell_format_title(%struct._GimpDisplayShell* %shell, i8* %title, i32 %title_len, i8* %format) #0 {
entry:
  %retval = alloca i32, align 4
  %shell.addr = alloca %struct._GimpDisplayShell*, align 8
  %title.addr = alloca i8*, align 8
  %title_len.addr = alloca i32, align 4
  %format.addr = alloca i8*, align 8
  %image = alloca %struct._GimpImage*, align 8
  %num = alloca i32, align 4
  %denom = alloca i32, align 4
  %i = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %drawable = alloca %struct._GimpDrawable*, align 8
  %scale = alloca double, align 8
  %object = alloca %struct._GimpObject*, align 8
  %str = alloca i8*, align 8
  %num139 = alloca i32, align 4
  %drawable147 = alloca %struct._GimpDrawable*, align 8
  %desc = alloca i8*, align 8
  %drawable164 = alloca %struct._GimpDrawable*, align 8
  %xres = alloca double, align 8
  %yres = alloca double, align 8
  %unit_format = alloca [8 x i8], align 1
  %xres207 = alloca double, align 8
  %yres209 = alloca double, align 8
  %unit_format211 = alloca [8 x i8], align 1
  store %struct._GimpDisplayShell* %shell, %struct._GimpDisplayShell** %shell.addr, align 8
  store i8* %title, i8** %title.addr, align 8
  store i32 %title_len, i32* %title_len.addr, align 4
  store i8* %format, i8** %format.addr, align 8
  store i32 0, i32* %i, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %1 = bitcast %struct._GimpDisplayShell* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_display_shell_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__func__.gimp_display_shell_format_title, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %display = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %13, i32 0, i32 1
  %14 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %call11 = call %struct._GimpImage* @gimp_display_get_image(%struct._GimpDisplay* %14)
  store %struct._GimpImage* %call11, %struct._GimpImage** %image, align 8
  %15 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %tobool12 = icmp ne %struct._GimpImage* %15, null
  br i1 %tobool12, label %if.end.14, label %if.then.13

if.then.13:                                       ; preds = %do.end
  %16 = load i8*, i8** %title.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %16, i64 0
  store i8 10, i8* %arrayidx, align 1
  store i32 0, i32* %retval
  br label %return

if.end.14:                                        ; preds = %do.end
  %17 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %zoom = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %17, i32 0, i32 22
  %18 = load %struct._GimpZoomModel*, %struct._GimpZoomModel** %zoom, align 8
  call void @gimp_zoom_model_get_fraction(%struct._GimpZoomModel* %18, i32* %num, i32* %denom)
  br label %while.cond

while.cond:                                       ; preds = %sw.epilog.246, %if.end.14
  %19 = load i32, i32* %i, align 4
  %20 = load i32, i32* %title_len.addr, align 4
  %cmp15 = icmp slt i32 %19, %20
  br i1 %cmp15, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %21 = load i8*, i8** %format.addr, align 8
  %22 = load i8, i8* %21, align 1
  %conv = sext i8 %22 to i32
  %tobool16 = icmp ne i32 %conv, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %23 = phi i1 [ false, %while.cond ], [ %tobool16, %land.rhs ]
  br i1 %23, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %24 = load i8*, i8** %format.addr, align 8
  %25 = load i8, i8* %24, align 1
  %conv17 = sext i8 %25 to i32
  switch i32 %conv17, label %sw.default.242 [
    i32 37, label %sw.bb
  ]

sw.bb:                                            ; preds = %while.body
  %26 = load i8*, i8** %format.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %26, i32 1
  store i8* %incdec.ptr, i8** %format.addr, align 8
  %27 = load i8*, i8** %format.addr, align 8
  %28 = load i8, i8* %27, align 1
  %conv18 = sext i8 %28 to i32
  switch i32 %conv18, label %sw.default [
    i32 0, label %sw.bb.19
    i32 37, label %sw.bb.19
    i32 102, label %sw.bb.21
    i32 70, label %sw.bb.24
    i32 112, label %sw.bb.28
    i32 105, label %sw.bb.32
    i32 116, label %sw.bb.37
    i32 84, label %sw.bb.41
    i32 115, label %sw.bb.50
    i32 100, label %sw.bb.53
    i32 122, label %sw.bb.56
    i32 68, label %sw.bb.64
    i32 67, label %sw.bb.82
    i32 66, label %sw.bb.100
    i32 65, label %sw.bb.108
    i32 109, label %sw.bb.116
    i32 77, label %sw.bb.125
    i32 108, label %sw.bb.133
    i32 76, label %sw.bb.137
    i32 110, label %sw.bb.145
    i32 80, label %sw.bb.162
    i32 87, label %sw.bb.178
    i32 119, label %sw.bb.197
    i32 72, label %sw.bb.201
    i32 104, label %sw.bb.225
    i32 117, label %sw.bb.229
    i32 85, label %sw.bb.234
  ]

sw.bb.19:                                         ; preds = %sw.bb, %sw.bb
  %29 = load i32, i32* %i, align 4
  %inc = add nsw i32 %29, 1
  store i32 %inc, i32* %i, align 4
  %idxprom = sext i32 %29 to i64
  %30 = load i8*, i8** %title.addr, align 8
  %arrayidx20 = getelementptr inbounds i8, i8* %30, i64 %idxprom
  store i8 37, i8* %arrayidx20, align 1
  br label %sw.epilog

sw.bb.21:                                         ; preds = %sw.bb
  %31 = load i8*, i8** %title.addr, align 8
  %32 = load i32, i32* %title_len.addr, align 4
  %33 = load i32, i32* %i, align 4
  %34 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call22 = call i8* @gimp_image_get_display_name(%struct._GimpImage* %34)
  %call23 = call i32 (i8*, i32, i32, i8*, ...) @print(i8* %31, i32 %32, i32 %33, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i32 0, i32 0), i8* %call22)
  %35 = load i32, i32* %i, align 4
  %add = add nsw i32 %35, %call23
  store i32 %add, i32* %i, align 4
  br label %sw.epilog

sw.bb.24:                                         ; preds = %sw.bb
  %36 = load i8*, i8** %title.addr, align 8
  %37 = load i32, i32* %title_len.addr, align 4
  %38 = load i32, i32* %i, align 4
  %39 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call25 = call i8* @gimp_image_get_display_path(%struct._GimpImage* %39)
  %call26 = call i32 (i8*, i32, i32, i8*, ...) @print(i8* %36, i32 %37, i32 %38, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i32 0, i32 0), i8* %call25)
  %40 = load i32, i32* %i, align 4
  %add27 = add nsw i32 %40, %call26
  store i32 %add27, i32* %i, align 4
  br label %sw.epilog

sw.bb.28:                                         ; preds = %sw.bb
  %41 = load i8*, i8** %title.addr, align 8
  %42 = load i32, i32* %title_len.addr, align 4
  %43 = load i32, i32* %i, align 4
  %44 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call29 = call i32 @gimp_image_get_ID(%struct._GimpImage* %44)
  %call30 = call i32 (i8*, i32, i32, i8*, ...) @print(i8* %41, i32 %42, i32 %43, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i32 0, i32 0), i32 %call29)
  %45 = load i32, i32* %i, align 4
  %add31 = add nsw i32 %45, %call30
  store i32 %add31, i32* %i, align 4
  br label %sw.epilog

sw.bb.32:                                         ; preds = %sw.bb
  %46 = load i8*, i8** %title.addr, align 8
  %47 = load i32, i32* %title_len.addr, align 4
  %48 = load i32, i32* %i, align 4
  %49 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %display33 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %49, i32 0, i32 1
  %50 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display33, align 8
  %call34 = call i32 @gimp_display_get_instance(%struct._GimpDisplay* %50)
  %call35 = call i32 (i8*, i32, i32, i8*, ...) @print(i8* %46, i32 %47, i32 %48, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i32 0, i32 0), i32 %call34)
  %51 = load i32, i32* %i, align 4
  %add36 = add nsw i32 %51, %call35
  store i32 %add36, i32* %i, align 4
  br label %sw.epilog

sw.bb.37:                                         ; preds = %sw.bb
  %52 = load i8*, i8** %title.addr, align 8
  %53 = load i32, i32* %title_len.addr, align 4
  %54 = load i32, i32* %i, align 4
  %55 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call38 = call i8* @gimp_display_shell_title_image_type(%struct._GimpImage* %55)
  %call39 = call i32 (i8*, i32, i32, i8*, ...) @print(i8* %52, i32 %53, i32 %54, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i32 0, i32 0), i8* %call38)
  %56 = load i32, i32* %i, align 4
  %add40 = add nsw i32 %56, %call39
  store i32 %add40, i32* %i, align 4
  br label %sw.epilog

sw.bb.41:                                         ; preds = %sw.bb
  %57 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call43 = call %struct._GimpDrawable* @gimp_image_get_active_drawable(%struct._GimpImage* %57)
  store %struct._GimpDrawable* %call43, %struct._GimpDrawable** %drawable, align 8
  %58 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %tobool44 = icmp ne %struct._GimpDrawable* %58, null
  br i1 %tobool44, label %if.then.45, label %if.end.49

if.then.45:                                       ; preds = %sw.bb.41
  %59 = load i8*, i8** %title.addr, align 8
  %60 = load i32, i32* %title_len.addr, align 4
  %61 = load i32, i32* %i, align 4
  %62 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %call46 = call i8* @gimp_display_shell_title_drawable_type(%struct._GimpDrawable* %62)
  %call47 = call i32 (i8*, i32, i32, i8*, ...) @print(i8* %59, i32 %60, i32 %61, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i32 0, i32 0), i8* %call46)
  %63 = load i32, i32* %i, align 4
  %add48 = add nsw i32 %63, %call47
  store i32 %add48, i32* %i, align 4
  br label %if.end.49

if.end.49:                                        ; preds = %if.then.45, %sw.bb.41
  br label %sw.epilog

sw.bb.50:                                         ; preds = %sw.bb
  %64 = load i8*, i8** %title.addr, align 8
  %65 = load i32, i32* %title_len.addr, align 4
  %66 = load i32, i32* %i, align 4
  %67 = load i32, i32* %denom, align 4
  %call51 = call i32 (i8*, i32, i32, i8*, ...) @print(i8* %64, i32 %65, i32 %66, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i32 0, i32 0), i32 %67)
  %68 = load i32, i32* %i, align 4
  %add52 = add nsw i32 %68, %call51
  store i32 %add52, i32* %i, align 4
  br label %sw.epilog

sw.bb.53:                                         ; preds = %sw.bb
  %69 = load i8*, i8** %title.addr, align 8
  %70 = load i32, i32* %title_len.addr, align 4
  %71 = load i32, i32* %i, align 4
  %72 = load i32, i32* %num, align 4
  %call54 = call i32 (i8*, i32, i32, i8*, ...) @print(i8* %69, i32 %70, i32 %71, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i32 0, i32 0), i32 %72)
  %73 = load i32, i32* %i, align 4
  %add55 = add nsw i32 %73, %call54
  store i32 %add55, i32* %i, align 4
  br label %sw.epilog

sw.bb.56:                                         ; preds = %sw.bb
  %74 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %zoom58 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %74, i32 0, i32 22
  %75 = load %struct._GimpZoomModel*, %struct._GimpZoomModel** %zoom58, align 8
  %call59 = call double @gimp_zoom_model_get_factor(%struct._GimpZoomModel* %75)
  store double %call59, double* %scale, align 8
  %76 = load i8*, i8** %title.addr, align 8
  %77 = load i32, i32* %title_len.addr, align 4
  %78 = load i32, i32* %i, align 4
  %79 = load double, double* %scale, align 8
  %cmp60 = fcmp oge double %79, 1.500000e-01
  %cond = select i1 %cmp60, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i32 0, i32 0)
  %80 = load double, double* %scale, align 8
  %mul = fmul double 1.000000e+02, %80
  %call62 = call i32 (i8*, i32, i32, i8*, ...) @print(i8* %76, i32 %77, i32 %78, i8* %cond, double %mul)
  %81 = load i32, i32* %i, align 4
  %add63 = add nsw i32 %81, %call62
  store i32 %add63, i32* %i, align 4
  br label %sw.epilog

sw.bb.64:                                         ; preds = %sw.bb
  %82 = load i8*, i8** %format.addr, align 8
  %arrayidx65 = getelementptr inbounds i8, i8* %82, i64 1
  %83 = load i8, i8* %arrayidx65, align 1
  %conv66 = sext i8 %83 to i32
  %cmp67 = icmp eq i32 %conv66, 0
  br i1 %cmp67, label %if.then.69, label %if.end.72

if.then.69:                                       ; preds = %sw.bb.64
  %84 = load i8*, i8** %title.addr, align 8
  %85 = load i32, i32* %title_len.addr, align 4
  %86 = load i32, i32* %i, align 4
  %call70 = call i32 (i8*, i32, i32, i8*, ...) @print(i8* %84, i32 %85, i32 %86, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i32 0, i32 0))
  %87 = load i32, i32* %i, align 4
  %add71 = add nsw i32 %87, %call70
  store i32 %add71, i32* %i, align 4
  br label %sw.epilog

if.end.72:                                        ; preds = %sw.bb.64
  %88 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call73 = call i32 @gimp_image_is_dirty(%struct._GimpImage* %88)
  %tobool74 = icmp ne i32 %call73, 0
  br i1 %tobool74, label %if.then.75, label %if.end.80

if.then.75:                                       ; preds = %if.end.72
  %89 = load i8*, i8** %format.addr, align 8
  %arrayidx76 = getelementptr inbounds i8, i8* %89, i64 1
  %90 = load i8, i8* %arrayidx76, align 1
  %91 = load i32, i32* %i, align 4
  %inc77 = add nsw i32 %91, 1
  store i32 %inc77, i32* %i, align 4
  %idxprom78 = sext i32 %91 to i64
  %92 = load i8*, i8** %title.addr, align 8
  %arrayidx79 = getelementptr inbounds i8, i8* %92, i64 %idxprom78
  store i8 %90, i8* %arrayidx79, align 1
  br label %if.end.80

if.end.80:                                        ; preds = %if.then.75, %if.end.72
  %93 = load i8*, i8** %format.addr, align 8
  %incdec.ptr81 = getelementptr inbounds i8, i8* %93, i32 1
  store i8* %incdec.ptr81, i8** %format.addr, align 8
  br label %sw.epilog

sw.bb.82:                                         ; preds = %sw.bb
  %94 = load i8*, i8** %format.addr, align 8
  %arrayidx83 = getelementptr inbounds i8, i8* %94, i64 1
  %95 = load i8, i8* %arrayidx83, align 1
  %conv84 = sext i8 %95 to i32
  %cmp85 = icmp eq i32 %conv84, 0
  br i1 %cmp85, label %if.then.87, label %if.end.90

if.then.87:                                       ; preds = %sw.bb.82
  %96 = load i8*, i8** %title.addr, align 8
  %97 = load i32, i32* %title_len.addr, align 4
  %98 = load i32, i32* %i, align 4
  %call88 = call i32 (i8*, i32, i32, i8*, ...) @print(i8* %96, i32 %97, i32 %98, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i32 0, i32 0))
  %99 = load i32, i32* %i, align 4
  %add89 = add nsw i32 %99, %call88
  store i32 %add89, i32* %i, align 4
  br label %sw.epilog

if.end.90:                                        ; preds = %sw.bb.82
  %100 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call91 = call i32 @gimp_image_is_dirty(%struct._GimpImage* %100)
  %tobool92 = icmp ne i32 %call91, 0
  br i1 %tobool92, label %if.end.98, label %if.then.93

if.then.93:                                       ; preds = %if.end.90
  %101 = load i8*, i8** %format.addr, align 8
  %arrayidx94 = getelementptr inbounds i8, i8* %101, i64 1
  %102 = load i8, i8* %arrayidx94, align 1
  %103 = load i32, i32* %i, align 4
  %inc95 = add nsw i32 %103, 1
  store i32 %inc95, i32* %i, align 4
  %idxprom96 = sext i32 %103 to i64
  %104 = load i8*, i8** %title.addr, align 8
  %arrayidx97 = getelementptr inbounds i8, i8* %104, i64 %idxprom96
  store i8 %102, i8* %arrayidx97, align 1
  br label %if.end.98

if.end.98:                                        ; preds = %if.then.93, %if.end.90
  %105 = load i8*, i8** %format.addr, align 8
  %incdec.ptr99 = getelementptr inbounds i8, i8* %105, i32 1
  store i8* %incdec.ptr99, i8** %format.addr, align 8
  br label %sw.epilog

sw.bb.100:                                        ; preds = %sw.bb
  %106 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call101 = call i32 @gimp_image_is_dirty(%struct._GimpImage* %106)
  %tobool102 = icmp ne i32 %call101, 0
  br i1 %tobool102, label %if.then.103, label %if.end.107

if.then.103:                                      ; preds = %sw.bb.100
  %107 = load i8*, i8** %title.addr, align 8
  %108 = load i32, i32* %title_len.addr, align 4
  %109 = load i32, i32* %i, align 4
  %call104 = call i8* @gettext(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.14, i32 0, i32 0)) #5
  %call105 = call i32 (i8*, i32, i32, i8*, ...) @print(i8* %107, i32 %108, i32 %109, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i32 0, i32 0), i8* %call104)
  %110 = load i32, i32* %i, align 4
  %add106 = add nsw i32 %110, %call105
  store i32 %add106, i32* %i, align 4
  br label %if.end.107

if.end.107:                                       ; preds = %if.then.103, %sw.bb.100
  br label %sw.epilog

sw.bb.108:                                        ; preds = %sw.bb
  %111 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call109 = call i32 @gimp_image_is_dirty(%struct._GimpImage* %111)
  %tobool110 = icmp ne i32 %call109, 0
  br i1 %tobool110, label %if.end.115, label %if.then.111

if.then.111:                                      ; preds = %sw.bb.108
  %112 = load i8*, i8** %title.addr, align 8
  %113 = load i32, i32* %title_len.addr, align 4
  %114 = load i32, i32* %i, align 4
  %call112 = call i8* @gettext(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i32 0, i32 0)) #5
  %call113 = call i32 (i8*, i32, i32, i8*, ...) @print(i8* %112, i32 %113, i32 %114, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i32 0, i32 0), i8* %call112)
  %115 = load i32, i32* %i, align 4
  %add114 = add nsw i32 %115, %call113
  store i32 %add114, i32* %i, align 4
  br label %if.end.115

if.end.115:                                       ; preds = %if.then.111, %sw.bb.108
  br label %sw.epilog

sw.bb.116:                                        ; preds = %sw.bb
  %116 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %117 = bitcast %struct._GimpImage* %116 to %struct._GTypeInstance*
  %call118 = call i64 @gimp_object_get_type() #6
  %call119 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %117, i64 %call118)
  %118 = bitcast %struct._GTypeInstance* %call119 to %struct._GimpObject*
  store %struct._GimpObject* %118, %struct._GimpObject** %object, align 8
  %119 = load %struct._GimpObject*, %struct._GimpObject** %object, align 8
  %call121 = call i64 @gimp_object_get_memsize(%struct._GimpObject* %119, i64* null)
  %call122 = call i8* @g_format_size(i64 %call121)
  store i8* %call122, i8** %str, align 8
  %120 = load i8*, i8** %title.addr, align 8
  %121 = load i32, i32* %title_len.addr, align 4
  %122 = load i32, i32* %i, align 4
  %123 = load i8*, i8** %str, align 8
  %call123 = call i32 (i8*, i32, i32, i8*, ...) @print(i8* %120, i32 %121, i32 %122, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i32 0, i32 0), i8* %123)
  %124 = load i32, i32* %i, align 4
  %add124 = add nsw i32 %124, %call123
  store i32 %add124, i32* %i, align 4
  %125 = load i8*, i8** %str, align 8
  call void @g_free(i8* %125)
  br label %sw.epilog

sw.bb.125:                                        ; preds = %sw.bb
  %126 = load i8*, i8** %title.addr, align 8
  %127 = load i32, i32* %title_len.addr, align 4
  %128 = load i32, i32* %i, align 4
  %129 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call126 = call i32 @gimp_image_get_width(%struct._GimpImage* %129)
  %conv127 = sitofp i32 %call126 to double
  %130 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call128 = call i32 @gimp_image_get_height(%struct._GimpImage* %130)
  %conv129 = sitofp i32 %call128 to double
  %mul130 = fmul double %conv127, %conv129
  %div = fdiv double %mul130, 1.000000e+06
  %call131 = call i32 (i8*, i32, i32, i8*, ...) @print(i8* %126, i32 %127, i32 %128, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i32 0, i32 0), double %div)
  %131 = load i32, i32* %i, align 4
  %add132 = add nsw i32 %131, %call131
  store i32 %add132, i32* %i, align 4
  br label %sw.epilog

sw.bb.133:                                        ; preds = %sw.bb
  %132 = load i8*, i8** %title.addr, align 8
  %133 = load i32, i32* %title_len.addr, align 4
  %134 = load i32, i32* %i, align 4
  %135 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call134 = call i32 @gimp_image_get_n_layers(%struct._GimpImage* %135)
  %call135 = call i32 (i8*, i32, i32, i8*, ...) @print(i8* %132, i32 %133, i32 %134, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i32 0, i32 0), i32 %call134)
  %136 = load i32, i32* %i, align 4
  %add136 = add nsw i32 %136, %call135
  store i32 %add136, i32* %i, align 4
  br label %sw.epilog

sw.bb.137:                                        ; preds = %sw.bb
  %137 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call140 = call i32 @gimp_image_get_n_layers(%struct._GimpImage* %137)
  store i32 %call140, i32* %num139, align 4
  %138 = load i8*, i8** %title.addr, align 8
  %139 = load i32, i32* %title_len.addr, align 4
  %140 = load i32, i32* %i, align 4
  %141 = load i32, i32* %num139, align 4
  %conv141 = sext i32 %141 to i64
  %call142 = call i8* @ngettext(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.18, i32 0, i32 0), i64 %conv141) #5
  %142 = load i32, i32* %num139, align 4
  %call143 = call i32 (i8*, i32, i32, i8*, ...) @print(i8* %138, i32 %139, i32 %140, i8* %call142, i32 %142)
  %143 = load i32, i32* %i, align 4
  %add144 = add nsw i32 %143, %call143
  store i32 %add144, i32* %i, align 4
  br label %sw.epilog

sw.bb.145:                                        ; preds = %sw.bb
  %144 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call148 = call %struct._GimpDrawable* @gimp_image_get_active_drawable(%struct._GimpImage* %144)
  store %struct._GimpDrawable* %call148, %struct._GimpDrawable** %drawable147, align 8
  %145 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable147, align 8
  %tobool149 = icmp ne %struct._GimpDrawable* %145, null
  br i1 %tobool149, label %if.then.150, label %if.else.157

if.then.150:                                      ; preds = %sw.bb.145
  %146 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable147, align 8
  %147 = bitcast %struct._GimpDrawable* %146 to %struct._GTypeInstance*
  %call152 = call i64 @gimp_viewable_get_type() #6
  %call153 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %147, i64 %call152)
  %148 = bitcast %struct._GTypeInstance* %call153 to %struct._GimpViewable*
  %call154 = call i8* @gimp_viewable_get_description(%struct._GimpViewable* %148, i8** null)
  store i8* %call154, i8** %desc, align 8
  %149 = load i8*, i8** %title.addr, align 8
  %150 = load i32, i32* %title_len.addr, align 4
  %151 = load i32, i32* %i, align 4
  %152 = load i8*, i8** %desc, align 8
  %call155 = call i32 (i8*, i32, i32, i8*, ...) @print(i8* %149, i32 %150, i32 %151, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i32 0, i32 0), i8* %152)
  %153 = load i32, i32* %i, align 4
  %add156 = add nsw i32 %153, %call155
  store i32 %add156, i32* %i, align 4
  %154 = load i8*, i8** %desc, align 8
  call void @g_free(i8* %154)
  br label %if.end.161

if.else.157:                                      ; preds = %sw.bb.145
  %155 = load i8*, i8** %title.addr, align 8
  %156 = load i32, i32* %title_len.addr, align 4
  %157 = load i32, i32* %i, align 4
  %call158 = call i8* @gettext(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.19, i32 0, i32 0)) #5
  %call159 = call i32 (i8*, i32, i32, i8*, ...) @print(i8* %155, i32 %156, i32 %157, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i32 0, i32 0), i8* %call158)
  %158 = load i32, i32* %i, align 4
  %add160 = add nsw i32 %158, %call159
  store i32 %add160, i32* %i, align 4
  br label %if.end.161

if.end.161:                                       ; preds = %if.else.157, %if.then.150
  br label %sw.epilog

sw.bb.162:                                        ; preds = %sw.bb
  %159 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call165 = call %struct._GimpDrawable* @gimp_image_get_active_drawable(%struct._GimpImage* %159)
  store %struct._GimpDrawable* %call165, %struct._GimpDrawable** %drawable164, align 8
  %160 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable164, align 8
  %tobool166 = icmp ne %struct._GimpDrawable* %160, null
  br i1 %tobool166, label %if.then.167, label %if.else.173

if.then.167:                                      ; preds = %sw.bb.162
  %161 = load i8*, i8** %title.addr, align 8
  %162 = load i32, i32* %title_len.addr, align 4
  %163 = load i32, i32* %i, align 4
  %164 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable164, align 8
  %165 = bitcast %struct._GimpDrawable* %164 to %struct._GTypeInstance*
  %call168 = call i64 @gimp_item_get_type() #6
  %call169 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %165, i64 %call168)
  %166 = bitcast %struct._GTypeInstance* %call169 to %struct._GimpItem*
  %call170 = call i32 @gimp_item_get_ID(%struct._GimpItem* %166)
  %call171 = call i32 (i8*, i32, i32, i8*, ...) @print(i8* %161, i32 %162, i32 %163, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i32 0, i32 0), i32 %call170)
  %167 = load i32, i32* %i, align 4
  %add172 = add nsw i32 %167, %call171
  store i32 %add172, i32* %i, align 4
  br label %if.end.177

if.else.173:                                      ; preds = %sw.bb.162
  %168 = load i8*, i8** %title.addr, align 8
  %169 = load i32, i32* %title_len.addr, align 4
  %170 = load i32, i32* %i, align 4
  %call174 = call i8* @gettext(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.19, i32 0, i32 0)) #5
  %call175 = call i32 (i8*, i32, i32, i8*, ...) @print(i8* %168, i32 %169, i32 %170, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i32 0, i32 0), i8* %call174)
  %171 = load i32, i32* %i, align 4
  %add176 = add nsw i32 %171, %call175
  store i32 %add176, i32* %i, align 4
  br label %if.end.177

if.end.177:                                       ; preds = %if.else.173, %if.then.167
  br label %sw.epilog

sw.bb.178:                                        ; preds = %sw.bb
  %172 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %unit = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %172, i32 0, i32 10
  %173 = load i32, i32* %unit, align 4
  %cmp179 = icmp ne i32 %173, 0
  br i1 %cmp179, label %if.then.181, label %if.end.196

if.then.181:                                      ; preds = %sw.bb.178
  %174 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  call void @gimp_image_get_resolution(%struct._GimpImage* %174, double* %xres, double* %yres)
  %arraydecay = getelementptr inbounds [8 x i8], [8 x i8]* %unit_format, i32 0, i32 0
  %175 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %unit185 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %175, i32 0, i32 10
  %176 = load i32, i32* %unit185, align 4
  %call186 = call i32 @gimp_unit_get_digits(i32 %176)
  %add187 = add nsw i32 %call186, 1
  %call188 = call i32 (i8*, i64, i8*, ...) @g_snprintf(i8* %arraydecay, i64 8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.20, i32 0, i32 0), i32 %add187)
  %177 = load i8*, i8** %title.addr, align 8
  %178 = load i32, i32* %title_len.addr, align 4
  %179 = load i32, i32* %i, align 4
  %arraydecay189 = getelementptr inbounds [8 x i8], [8 x i8]* %unit_format, i32 0, i32 0
  %180 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call190 = call i32 @gimp_image_get_width(%struct._GimpImage* %180)
  %conv191 = sitofp i32 %call190 to double
  %181 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %unit192 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %181, i32 0, i32 10
  %182 = load i32, i32* %unit192, align 4
  %183 = load double, double* %xres, align 8
  %call193 = call double @gimp_pixels_to_units(double %conv191, i32 %182, double %183)
  %call194 = call i32 (i8*, i32, i32, i8*, ...) @print(i8* %177, i32 %178, i32 %179, i8* %arraydecay189, double %call193)
  %184 = load i32, i32* %i, align 4
  %add195 = add nsw i32 %184, %call194
  store i32 %add195, i32* %i, align 4
  br label %sw.epilog

if.end.196:                                       ; preds = %sw.bb.178
  br label %sw.bb.197

sw.bb.197:                                        ; preds = %sw.bb, %if.end.196
  %185 = load i8*, i8** %title.addr, align 8
  %186 = load i32, i32* %title_len.addr, align 4
  %187 = load i32, i32* %i, align 4
  %188 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call198 = call i32 @gimp_image_get_width(%struct._GimpImage* %188)
  %call199 = call i32 (i8*, i32, i32, i8*, ...) @print(i8* %185, i32 %186, i32 %187, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i32 0, i32 0), i32 %call198)
  %189 = load i32, i32* %i, align 4
  %add200 = add nsw i32 %189, %call199
  store i32 %add200, i32* %i, align 4
  br label %sw.epilog

sw.bb.201:                                        ; preds = %sw.bb
  %190 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %unit202 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %190, i32 0, i32 10
  %191 = load i32, i32* %unit202, align 4
  %cmp203 = icmp ne i32 %191, 0
  br i1 %cmp203, label %if.then.205, label %if.end.224

if.then.205:                                      ; preds = %sw.bb.201
  %192 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  call void @gimp_image_get_resolution(%struct._GimpImage* %192, double* %xres207, double* %yres209)
  %arraydecay212 = getelementptr inbounds [8 x i8], [8 x i8]* %unit_format211, i32 0, i32 0
  %193 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %unit213 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %193, i32 0, i32 10
  %194 = load i32, i32* %unit213, align 4
  %call214 = call i32 @gimp_unit_get_digits(i32 %194)
  %add215 = add nsw i32 %call214, 1
  %call216 = call i32 (i8*, i64, i8*, ...) @g_snprintf(i8* %arraydecay212, i64 8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.20, i32 0, i32 0), i32 %add215)
  %195 = load i8*, i8** %title.addr, align 8
  %196 = load i32, i32* %title_len.addr, align 4
  %197 = load i32, i32* %i, align 4
  %arraydecay217 = getelementptr inbounds [8 x i8], [8 x i8]* %unit_format211, i32 0, i32 0
  %198 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call218 = call i32 @gimp_image_get_height(%struct._GimpImage* %198)
  %conv219 = sitofp i32 %call218 to double
  %199 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %unit220 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %199, i32 0, i32 10
  %200 = load i32, i32* %unit220, align 4
  %201 = load double, double* %yres209, align 8
  %call221 = call double @gimp_pixels_to_units(double %conv219, i32 %200, double %201)
  %call222 = call i32 (i8*, i32, i32, i8*, ...) @print(i8* %195, i32 %196, i32 %197, i8* %arraydecay217, double %call221)
  %202 = load i32, i32* %i, align 4
  %add223 = add nsw i32 %202, %call222
  store i32 %add223, i32* %i, align 4
  br label %sw.epilog

if.end.224:                                       ; preds = %sw.bb.201
  br label %sw.bb.225

sw.bb.225:                                        ; preds = %sw.bb, %if.end.224
  %203 = load i8*, i8** %title.addr, align 8
  %204 = load i32, i32* %title_len.addr, align 4
  %205 = load i32, i32* %i, align 4
  %206 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call226 = call i32 @gimp_image_get_height(%struct._GimpImage* %206)
  %call227 = call i32 (i8*, i32, i32, i8*, ...) @print(i8* %203, i32 %204, i32 %205, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i32 0, i32 0), i32 %call226)
  %207 = load i32, i32* %i, align 4
  %add228 = add nsw i32 %207, %call227
  store i32 %add228, i32* %i, align 4
  br label %sw.epilog

sw.bb.229:                                        ; preds = %sw.bb
  %208 = load i8*, i8** %title.addr, align 8
  %209 = load i32, i32* %title_len.addr, align 4
  %210 = load i32, i32* %i, align 4
  %211 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %unit230 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %211, i32 0, i32 10
  %212 = load i32, i32* %unit230, align 4
  %call231 = call i8* @gimp_unit_get_symbol(i32 %212)
  %call232 = call i32 (i8*, i32, i32, i8*, ...) @print(i8* %208, i32 %209, i32 %210, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i32 0, i32 0), i8* %call231)
  %213 = load i32, i32* %i, align 4
  %add233 = add nsw i32 %213, %call232
  store i32 %add233, i32* %i, align 4
  br label %sw.epilog

sw.bb.234:                                        ; preds = %sw.bb
  %214 = load i8*, i8** %title.addr, align 8
  %215 = load i32, i32* %title_len.addr, align 4
  %216 = load i32, i32* %i, align 4
  %217 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %unit235 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %217, i32 0, i32 10
  %218 = load i32, i32* %unit235, align 4
  %call236 = call i8* @gimp_unit_get_abbreviation(i32 %218)
  %call237 = call i32 (i8*, i32, i32, i8*, ...) @print(i8* %214, i32 %215, i32 %216, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i32 0, i32 0), i8* %call236)
  %219 = load i32, i32* %i, align 4
  %add238 = add nsw i32 %219, %call237
  store i32 %add238, i32* %i, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %sw.bb
  %220 = load i8*, i8** %title.addr, align 8
  %221 = load i32, i32* %title_len.addr, align 4
  %222 = load i32, i32* %i, align 4
  %223 = load i8*, i8** %format.addr, align 8
  %224 = load i8, i8* %223, align 1
  %conv239 = sext i8 %224 to i32
  %call240 = call i32 (i8*, i32, i32, i8*, ...) @print(i8* %220, i32 %221, i32 %222, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.21, i32 0, i32 0), i32 %conv239)
  %225 = load i32, i32* %i, align 4
  %add241 = add nsw i32 %225, %call240
  store i32 %add241, i32* %i, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.234, %sw.bb.229, %sw.bb.225, %if.then.205, %sw.bb.197, %if.then.181, %if.end.177, %if.end.161, %sw.bb.137, %sw.bb.133, %sw.bb.125, %sw.bb.116, %if.end.115, %if.end.107, %if.end.98, %if.then.87, %if.end.80, %if.then.69, %sw.bb.56, %sw.bb.53, %sw.bb.50, %if.end.49, %sw.bb.37, %sw.bb.32, %sw.bb.28, %sw.bb.24, %sw.bb.21, %sw.bb.19
  br label %sw.epilog.246

sw.default.242:                                   ; preds = %while.body
  %226 = load i8*, i8** %format.addr, align 8
  %227 = load i8, i8* %226, align 1
  %228 = load i32, i32* %i, align 4
  %inc243 = add nsw i32 %228, 1
  store i32 %inc243, i32* %i, align 4
  %idxprom244 = sext i32 %228 to i64
  %229 = load i8*, i8** %title.addr, align 8
  %arrayidx245 = getelementptr inbounds i8, i8* %229, i64 %idxprom244
  store i8 %227, i8* %arrayidx245, align 1
  br label %sw.epilog.246

sw.epilog.246:                                    ; preds = %sw.default.242, %sw.epilog
  %230 = load i8*, i8** %format.addr, align 8
  %incdec.ptr247 = getelementptr inbounds i8, i8* %230, i32 1
  store i8* %incdec.ptr247, i8** %format.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %land.end
  %231 = load i32, i32* %i, align 4
  %232 = load i32, i32* %title_len.addr, align 4
  %sub = sub nsw i32 %232, 1
  %cmp248 = icmp slt i32 %231, %sub
  br i1 %cmp248, label %cond.true, label %cond.false

cond.true:                                        ; preds = %while.end
  %233 = load i32, i32* %i, align 4
  br label %cond.end

cond.false:                                       ; preds = %while.end
  %234 = load i32, i32* %title_len.addr, align 4
  %sub250 = sub nsw i32 %234, 1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond251 = phi i32 [ %233, %cond.true ], [ %sub250, %cond.false ]
  %idxprom252 = sext i32 %cond251 to i64
  %235 = load i8*, i8** %title.addr, align 8
  %arrayidx253 = getelementptr inbounds i8, i8* %235, i64 %idxprom252
  store i8 0, i8* %arrayidx253, align 1
  %236 = load i32, i32* %i, align 4
  store i32 %236, i32* %retval
  br label %return

return:                                           ; preds = %cond.end, %if.then.13, %if.else.9
  %237 = load i32, i32* %retval
  ret i32 %237
}

declare i64 @g_strlcpy(i8*, i8*, i64) #3

; Function Attrs: nounwind
declare i8* @gettext(i8*) #4

declare void @g_object_set(i8*, i8*, ...) #3

declare void @gimp_zoom_model_get_fraction(%struct._GimpZoomModel*, i32*, i32*) #3

; Function Attrs: nounwind uwtable
define internal i32 @print(i8* %buf, i32 %len, i32 %start, i8* %fmt, ...) #0 {
entry:
  %buf.addr = alloca i8*, align 8
  %len.addr = alloca i32, align 4
  %start.addr = alloca i32, align 4
  %fmt.addr = alloca i8*, align 8
  %args = alloca [1 x %struct.__va_list_tag], align 16
  %printed = alloca i32, align 4
  store i8* %buf, i8** %buf.addr, align 8
  store i32 %len, i32* %len.addr, align 4
  store i32 %start, i32* %start.addr, align 4
  store i8* %fmt, i8** %fmt.addr, align 8
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay1)
  %0 = load i8*, i8** %buf.addr, align 8
  %1 = load i32, i32* %start.addr, align 4
  %idx.ext = sext i32 %1 to i64
  %add.ptr = getelementptr inbounds i8, i8* %0, i64 %idx.ext
  %2 = load i32, i32* %len.addr, align 4
  %3 = load i32, i32* %start.addr, align 4
  %sub = sub nsw i32 %2, %3
  %conv = sext i32 %sub to i64
  %4 = load i8*, i8** %fmt.addr, align 8
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %call = call i32 @g_vsnprintf(i8* %add.ptr, i64 %conv, i8* %4, %struct.__va_list_tag* %arraydecay2)
  store i32 %call, i32* %printed, align 4
  %5 = load i32, i32* %printed, align 4
  %cmp = icmp slt i32 %5, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load i32, i32* %len.addr, align 4
  %7 = load i32, i32* %start.addr, align 4
  %sub4 = sub nsw i32 %6, %7
  store i32 %sub4, i32* %printed, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %arraydecay5 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay56 = bitcast %struct.__va_list_tag* %arraydecay5 to i8*
  call void @llvm.va_end(i8* %arraydecay56)
  %8 = load i32, i32* %printed, align 4
  ret i32 %8
}

declare i8* @gimp_image_get_display_name(%struct._GimpImage*) #3

declare i8* @gimp_image_get_display_path(%struct._GimpImage*) #3

declare i32 @gimp_image_get_ID(%struct._GimpImage*) #3

declare i32 @gimp_display_get_instance(%struct._GimpDisplay*) #3

; Function Attrs: nounwind uwtable
define internal i8* @gimp_display_shell_title_image_type(%struct._GimpImage* %image) #0 {
entry:
  %image.addr = alloca %struct._GimpImage*, align 8
  %name = alloca i8*, align 8
  store %struct._GimpImage* %image, %struct._GimpImage** %image.addr, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.22, i32 0, i32 0), i8** %name, align 8
  %call = call i64 @gimp_image_base_type_get_type() #6
  %0 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call1 = call i32 @gimp_image_base_type(%struct._GimpImage* %0)
  %call2 = call i32 @gimp_enum_get_value(i64 %call, i32 %call1, i8** null, i8** null, i8** %name, i8** null)
  %1 = load i8*, i8** %name, align 8
  ret i8* %1
}

declare %struct._GimpDrawable* @gimp_image_get_active_drawable(%struct._GimpImage*) #3

; Function Attrs: nounwind uwtable
define internal i8* @gimp_display_shell_title_drawable_type(%struct._GimpDrawable* %drawable) #0 {
entry:
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %name = alloca i8*, align 8
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.22, i32 0, i32 0), i8** %name, align 8
  %call = call i64 @gimp_image_type_get_type() #6
  %0 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %call1 = call i32 @gimp_drawable_type(%struct._GimpDrawable* %0)
  %call2 = call i32 @gimp_enum_get_value(i64 %call, i32 %call1, i8** null, i8** null, i8** %name, i8** null)
  %1 = load i8*, i8** %name, align 8
  ret i8* %1
}

declare double @gimp_zoom_model_get_factor(%struct._GimpZoomModel*) #3

declare i32 @gimp_image_is_dirty(%struct._GimpImage*) #3

; Function Attrs: nounwind readnone
declare i64 @gimp_object_get_type() #1

declare i8* @g_format_size(i64) #3

declare i64 @gimp_object_get_memsize(%struct._GimpObject*, i64*) #3

declare void @g_free(i8*) #3

declare i32 @gimp_image_get_width(%struct._GimpImage*) #3

declare i32 @gimp_image_get_height(%struct._GimpImage*) #3

declare i32 @gimp_image_get_n_layers(%struct._GimpImage*) #3

; Function Attrs: nounwind
declare i8* @ngettext(i8*, i8*, i64) #4

declare i8* @gimp_viewable_get_description(%struct._GimpViewable*, i8**) #3

; Function Attrs: nounwind readnone
declare i64 @gimp_viewable_get_type() #1

declare i32 @gimp_item_get_ID(%struct._GimpItem*) #3

; Function Attrs: nounwind readnone
declare i64 @gimp_item_get_type() #1

declare void @gimp_image_get_resolution(%struct._GimpImage*, double*, double*) #3

declare i32 @g_snprintf(i8*, i64, i8*, ...) #3

declare i32 @gimp_unit_get_digits(i32) #3

declare double @gimp_pixels_to_units(double, i32, double) #3

declare i8* @gimp_unit_get_symbol(i32) #3

declare i8* @gimp_unit_get_abbreviation(i32) #3

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #5

declare i32 @g_vsnprintf(i8*, i64, i8*, %struct.__va_list_tag*) #3

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #5

declare i32 @gimp_enum_get_value(i64, i32, i8**, i8**, i8**, i8**) #3

; Function Attrs: nounwind readnone
declare i64 @gimp_image_base_type_get_type() #1

declare i32 @gimp_image_base_type(%struct._GimpImage*) #3

; Function Attrs: nounwind readnone
declare i64 @gimp_image_type_get_type() #1

declare i32 @gimp_drawable_type(%struct._GimpDrawable*) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nounwind readnone }
attributes #7 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
