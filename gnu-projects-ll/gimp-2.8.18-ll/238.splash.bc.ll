; ModuleID = './app/gui/splash.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.GimpSplash = type { %struct._GtkWidget*, %struct._GtkWidget*, i32, i32, %struct._GtkWidget*, %struct._GdkColor, %struct._PangoLayout*, i32, i32, %struct._PangoLayout*, i32, i32, double, i8*, i8*, %struct._GTimer*, double }
%struct._GtkWidget = type { %struct._GtkObject, i16, i8, i8, i8*, %struct._GtkStyle*, %struct._GtkRequisition, %struct._GdkRectangle, %struct._GdkDrawable*, %struct._GtkWidget* }
%struct._GtkObject = type { %struct._GObject, i32 }
%struct._GObject = type { %struct._GTypeInstance, i32, %struct._GData* }
%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GData = type opaque
%struct._GtkStyle = type { %struct._GObject, [5 x %struct._GdkColor], [5 x %struct._GdkColor], [5 x %struct._GdkColor], [5 x %struct._GdkColor], [5 x %struct._GdkColor], [5 x %struct._GdkColor], [5 x %struct._GdkColor], [5 x %struct._GdkColor], %struct._GdkColor, %struct._GdkColor, %struct._PangoFontDescription*, i32, i32, [5 x %struct._GdkGC*], [5 x %struct._GdkGC*], [5 x %struct._GdkGC*], [5 x %struct._GdkGC*], [5 x %struct._GdkGC*], [5 x %struct._GdkGC*], [5 x %struct._GdkGC*], [5 x %struct._GdkGC*], %struct._GdkGC*, %struct._GdkGC*, [5 x %struct._GdkDrawable*], i32, i32, %struct._GdkColormap*, %struct._GdkFont*, %struct._PangoFontDescription*, %struct._GtkRcStyle*, %struct._GSList*, %struct._GArray*, %struct._GSList* }
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
%struct._GdkColor = type { i32, i16, i16, i16 }
%struct._PangoLayout = type opaque
%struct._GTimer = type opaque
%struct._GdkPixbufAnimation = type opaque
%struct._GdkScreen = type { %struct._GObject, i8, [32 x %struct._GdkGC*], [32 x %struct._GdkGC*], [32 x %struct._GdkGC*], %struct._cairo_font_options*, double }
%struct._cairo_font_options = type opaque
%struct._GClosure = type { i32, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i8*, %struct._GClosureNotifyData* }
%struct._GValue = type { i64, [2 x %union.anon] }
%union.anon = type { i64 }
%struct._GClosureNotifyData = type { i8*, {}* }
%struct._GtkFrame = type { %struct._GtkBin, %struct._GtkWidget*, i16, float, float, %struct._GdkRectangle }
%struct._GtkBin = type { %struct._GtkContainer, %struct._GtkWidget* }
%struct._GtkContainer = type { %struct._GtkWidget, %struct._GtkWidget*, i24 }
%struct._GtkBox = type { %struct._GtkContainer, %struct._GList*, i16, i8 }
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct._GdkPixbuf = type opaque
%struct._GError = type { i32, i32, i8* }
%struct._PangoRectangle = type { i32, i32, i32, i32 }
%struct._GdkEventExpose = type { i32, %struct._GdkDrawable*, i8, %struct._GdkRectangle, %struct._GdkRegion*, i32 }
%struct._GdkRegion = type opaque
%struct._cairo = type opaque
%struct._GtkProgressBar = type { %struct._GtkProgress, i32, i32, i32, i32, i32, i32, i32, double, i8 }
%struct._GtkProgress = type { %struct._GtkWidget, %struct._GtkAdjustment*, %struct._GdkDrawable*, i8*, float, float, i8 }
%struct._GtkAdjustment = type { %struct._GtkObject, double, double, double, double, double, double }
%struct._GDir = type opaque

@splash = internal global %struct.GimpSplash* null, align 8
@.str = private unnamed_addr constant [9 x i8] c"Gimp-GUI\00", align 1
@__func__.splash_create = private unnamed_addr constant [14 x i8] c"splash_create\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"splash == NULL\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"type-hint\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"title\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"GIMP Startup\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"role\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"gimp-startup\00", align 1
@.str.8 = private unnamed_addr constant [16 x i8] c"window-position\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"resizable\00", align 1
@.str.10 = private unnamed_addr constant [13 x i8] c"delete-event\00", align 1
@.str.11 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.12 = private unnamed_addr constant [13 x i8] c"expose-event\00", align 1
@__func__.splash_update = private unnamed_addr constant [14 x i8] c"splash_update\00", align 1
@.str.13 = private unnamed_addr constant [39 x i8] c"percentage >= 0.0 && percentage <= 1.0\00", align 1
@__func__.splash_average_text_area = private unnamed_addr constant [25 x i8] c"splash_average_text_area\00", align 1
@.str.14 = private unnamed_addr constant [23 x i8] c"GDK_IS_PIXBUF (pixbuf)\00", align 1
@.str.15 = private unnamed_addr constant [45 x i8] c"gdk_pixbuf_get_bits_per_sample (pixbuf) == 8\00", align 1
@.str.16 = private unnamed_addr constant [11 x i8] c"Short text\00", align 1
@.str.17 = private unnamed_addr constant [21 x i8] c"Somewhat longer text\00", align 1
@.str.18 = private unnamed_addr constant [16 x i8] c"gimp-splash.png\00", align 1
@.str.19 = private unnamed_addr constant [24 x i8] c"Trying splash '%s' ... \00", align 1
@.str.20 = private unnamed_addr constant [4 x i8] c"OK\0A\00", align 1
@.str.21 = private unnamed_addr constant [8 x i8] c"failed\0A\00", align 1
@.str.22 = private unnamed_addr constant [9 x i8] c"splashes\00", align 1
@.str.23 = private unnamed_addr constant [7 x i8] c"images\00", align 1
@.str.24 = private unnamed_addr constant [29 x i8] c"%8g  %8g  -  %s %g%%  -  %s\0A\00", align 1

; Function Attrs: nounwind uwtable
define void @splash_create(i32 %be_verbose) #0 {
entry:
  %be_verbose.addr = alloca i32, align 4
  %frame = alloca %struct._GtkWidget*, align 8
  %vbox = alloca %struct._GtkWidget*, align 8
  %pixbuf = alloca %struct._GdkPixbufAnimation*, align 8
  %screen = alloca %struct._GdkScreen*, align 8
  store i32 %be_verbose, i32* %be_verbose.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct.GimpSplash*, %struct.GimpSplash** @splash, align 8
  %cmp = icmp eq %struct.GimpSplash* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.splash_create, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0))
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %1 = load i32, i32* %be_verbose.addr, align 4
  %call = call %struct._GdkPixbufAnimation* @splash_image_load(i32 %1)
  store %struct._GdkPixbufAnimation* %call, %struct._GdkPixbufAnimation** %pixbuf, align 8
  %2 = load %struct._GdkPixbufAnimation*, %struct._GdkPixbufAnimation** %pixbuf, align 8
  %tobool = icmp ne %struct._GdkPixbufAnimation* %2, null
  br i1 %tobool, label %if.end.2, label %if.then.1

if.then.1:                                        ; preds = %do.end
  br label %return

if.end.2:                                         ; preds = %do.end
  %call3 = call noalias i8* @g_slice_alloc0(i64 120)
  %3 = bitcast i8* %call3 to %struct.GimpSplash*
  store %struct.GimpSplash* %3, %struct.GimpSplash** @splash, align 8
  %call4 = call i64 @gtk_window_get_type() #7
  %call5 = call i8* @gettext(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i32 0, i32 0)) #5
  %call6 = call i8* (i64, i8*, ...) @g_object_new(i64 %call4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i32 0, i32 0), i32 4, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i32 0, i32 0), i8* %call5, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i32 0, i32 0), i32 1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i32 0, i32 0), i32 0, i8* null)
  %4 = bitcast i8* %call6 to %struct._GtkWidget*
  %5 = load %struct.GimpSplash*, %struct.GimpSplash** @splash, align 8
  %window = getelementptr inbounds %struct.GimpSplash, %struct.GimpSplash* %5, i32 0, i32 0
  store %struct._GtkWidget* %4, %struct._GtkWidget** %window, align 8
  %6 = load %struct.GimpSplash*, %struct.GimpSplash** @splash, align 8
  %window7 = getelementptr inbounds %struct.GimpSplash, %struct.GimpSplash* %6, i32 0, i32 0
  %7 = load %struct._GtkWidget*, %struct._GtkWidget** %window7, align 8
  %8 = bitcast %struct._GtkWidget* %7 to i8*
  %call8 = call i64 @g_signal_connect_data(i8* %8, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i32 0, i32 0), void ()* bitcast (void (i32)* @exit to void ()*), i8* null, void (i8*, %struct._GClosure*)* null, i32 2)
  %9 = load %struct.GimpSplash*, %struct.GimpSplash** @splash, align 8
  %window9 = getelementptr inbounds %struct.GimpSplash, %struct.GimpSplash* %9, i32 0, i32 0
  %10 = load %struct._GtkWidget*, %struct._GtkWidget** %window9, align 8
  %call10 = call %struct._GdkScreen* @gtk_widget_get_screen(%struct._GtkWidget* %10)
  store %struct._GdkScreen* %call10, %struct._GdkScreen** %screen, align 8
  %11 = load %struct._GdkPixbufAnimation*, %struct._GdkPixbufAnimation** %pixbuf, align 8
  %call11 = call i32 @gdk_pixbuf_animation_get_width(%struct._GdkPixbufAnimation* %11)
  %12 = load %struct._GdkScreen*, %struct._GdkScreen** %screen, align 8
  %call12 = call i32 @gdk_screen_get_width(%struct._GdkScreen* %12)
  %cmp13 = icmp slt i32 %call11, %call12
  br i1 %cmp13, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.2
  %13 = load %struct._GdkPixbufAnimation*, %struct._GdkPixbufAnimation** %pixbuf, align 8
  %call14 = call i32 @gdk_pixbuf_animation_get_width(%struct._GdkPixbufAnimation* %13)
  br label %cond.end

cond.false:                                       ; preds = %if.end.2
  %14 = load %struct._GdkScreen*, %struct._GdkScreen** %screen, align 8
  %call15 = call i32 @gdk_screen_get_width(%struct._GdkScreen* %14)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call14, %cond.true ], [ %call15, %cond.false ]
  %15 = load %struct.GimpSplash*, %struct.GimpSplash** @splash, align 8
  %width = getelementptr inbounds %struct.GimpSplash, %struct.GimpSplash* %15, i32 0, i32 2
  store i32 %cond, i32* %width, align 4
  %16 = load %struct._GdkPixbufAnimation*, %struct._GdkPixbufAnimation** %pixbuf, align 8
  %call16 = call i32 @gdk_pixbuf_animation_get_height(%struct._GdkPixbufAnimation* %16)
  %17 = load %struct._GdkScreen*, %struct._GdkScreen** %screen, align 8
  %call17 = call i32 @gdk_screen_get_height(%struct._GdkScreen* %17)
  %cmp18 = icmp slt i32 %call16, %call17
  br i1 %cmp18, label %cond.true.19, label %cond.false.21

cond.true.19:                                     ; preds = %cond.end
  %18 = load %struct._GdkPixbufAnimation*, %struct._GdkPixbufAnimation** %pixbuf, align 8
  %call20 = call i32 @gdk_pixbuf_animation_get_height(%struct._GdkPixbufAnimation* %18)
  br label %cond.end.23

cond.false.21:                                    ; preds = %cond.end
  %19 = load %struct._GdkScreen*, %struct._GdkScreen** %screen, align 8
  %call22 = call i32 @gdk_screen_get_height(%struct._GdkScreen* %19)
  br label %cond.end.23

cond.end.23:                                      ; preds = %cond.false.21, %cond.true.19
  %cond24 = phi i32 [ %call20, %cond.true.19 ], [ %call22, %cond.false.21 ]
  %20 = load %struct.GimpSplash*, %struct.GimpSplash** @splash, align 8
  %height = getelementptr inbounds %struct.GimpSplash, %struct.GimpSplash* %20, i32 0, i32 3
  store i32 %cond24, i32* %height, align 4
  %call25 = call %struct._GtkWidget* @gtk_frame_new(i8* null)
  store %struct._GtkWidget* %call25, %struct._GtkWidget** %frame, align 8
  %21 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %22 = bitcast %struct._GtkWidget* %21 to %struct._GTypeInstance*
  %call26 = call i64 @gtk_frame_get_type() #7
  %call27 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %22, i64 %call26)
  %23 = bitcast %struct._GTypeInstance* %call27 to %struct._GtkFrame*
  call void @gtk_frame_set_shadow_type(%struct._GtkFrame* %23, i32 2)
  %24 = load %struct.GimpSplash*, %struct.GimpSplash** @splash, align 8
  %window28 = getelementptr inbounds %struct.GimpSplash, %struct.GimpSplash* %24, i32 0, i32 0
  %25 = load %struct._GtkWidget*, %struct._GtkWidget** %window28, align 8
  %26 = bitcast %struct._GtkWidget* %25 to %struct._GTypeInstance*
  %call29 = call i64 @gtk_container_get_type() #7
  %call30 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %26, i64 %call29)
  %27 = bitcast %struct._GTypeInstance* %call30 to %struct._GtkContainer*
  %28 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_container_add(%struct._GtkContainer* %27, %struct._GtkWidget* %28)
  %29 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %29)
  %call31 = call %struct._GtkWidget* @gtk_box_new(i32 1, i32 0)
  store %struct._GtkWidget* %call31, %struct._GtkWidget** %vbox, align 8
  %30 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %31 = bitcast %struct._GtkWidget* %30 to %struct._GTypeInstance*
  %call32 = call i64 @gtk_container_get_type() #7
  %call33 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %31, i64 %call32)
  %32 = bitcast %struct._GTypeInstance* %call33 to %struct._GtkContainer*
  %33 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  call void @gtk_container_add(%struct._GtkContainer* %32, %struct._GtkWidget* %33)
  %34 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %34)
  %35 = load %struct._GdkPixbufAnimation*, %struct._GdkPixbufAnimation** %pixbuf, align 8
  %call34 = call %struct._GtkWidget* @gtk_image_new_from_animation(%struct._GdkPixbufAnimation* %35)
  %36 = load %struct.GimpSplash*, %struct.GimpSplash** @splash, align 8
  %area = getelementptr inbounds %struct.GimpSplash, %struct.GimpSplash* %36, i32 0, i32 1
  store %struct._GtkWidget* %call34, %struct._GtkWidget** %area, align 8
  %37 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %38 = bitcast %struct._GtkWidget* %37 to %struct._GTypeInstance*
  %call35 = call i64 @gtk_box_get_type() #7
  %call36 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %38, i64 %call35)
  %39 = bitcast %struct._GTypeInstance* %call36 to %struct._GtkBox*
  %40 = load %struct.GimpSplash*, %struct.GimpSplash** @splash, align 8
  %area37 = getelementptr inbounds %struct.GimpSplash, %struct.GimpSplash* %40, i32 0, i32 1
  %41 = load %struct._GtkWidget*, %struct._GtkWidget** %area37, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %39, %struct._GtkWidget* %41, i32 1, i32 1, i32 0)
  %42 = load %struct.GimpSplash*, %struct.GimpSplash** @splash, align 8
  %area38 = getelementptr inbounds %struct.GimpSplash, %struct.GimpSplash* %42, i32 0, i32 1
  %43 = load %struct._GtkWidget*, %struct._GtkWidget** %area38, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %43)
  %44 = load %struct.GimpSplash*, %struct.GimpSplash** @splash, align 8
  %area39 = getelementptr inbounds %struct.GimpSplash, %struct.GimpSplash* %44, i32 0, i32 1
  %45 = load %struct._GtkWidget*, %struct._GtkWidget** %area39, align 8
  %46 = load %struct.GimpSplash*, %struct.GimpSplash** @splash, align 8
  %width40 = getelementptr inbounds %struct.GimpSplash, %struct.GimpSplash* %46, i32 0, i32 2
  %47 = load i32, i32* %width40, align 4
  %48 = load %struct.GimpSplash*, %struct.GimpSplash** @splash, align 8
  %height41 = getelementptr inbounds %struct.GimpSplash, %struct.GimpSplash* %48, i32 0, i32 3
  %49 = load i32, i32* %height41, align 4
  call void @gtk_widget_set_size_request(%struct._GtkWidget* %45, i32 %47, i32 %49)
  %50 = load %struct.GimpSplash*, %struct.GimpSplash** @splash, align 8
  %area42 = getelementptr inbounds %struct.GimpSplash, %struct.GimpSplash* %50, i32 0, i32 1
  %51 = load %struct._GtkWidget*, %struct._GtkWidget** %area42, align 8
  %call43 = call %struct._PangoLayout* @gtk_widget_create_pango_layout(%struct._GtkWidget* %51, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.11, i32 0, i32 0))
  %52 = load %struct.GimpSplash*, %struct.GimpSplash** @splash, align 8
  %upper = getelementptr inbounds %struct.GimpSplash, %struct.GimpSplash* %52, i32 0, i32 6
  store %struct._PangoLayout* %call43, %struct._PangoLayout** %upper, align 8
  %53 = load %struct.GimpSplash*, %struct.GimpSplash** @splash, align 8
  %area44 = getelementptr inbounds %struct.GimpSplash, %struct.GimpSplash* %53, i32 0, i32 1
  %54 = load %struct._GtkWidget*, %struct._GtkWidget** %area44, align 8
  %call45 = call %struct._PangoLayout* @gtk_widget_create_pango_layout(%struct._GtkWidget* %54, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.11, i32 0, i32 0))
  %55 = load %struct.GimpSplash*, %struct.GimpSplash** @splash, align 8
  %lower = getelementptr inbounds %struct.GimpSplash, %struct.GimpSplash* %55, i32 0, i32 9
  store %struct._PangoLayout* %call45, %struct._PangoLayout** %lower, align 8
  %56 = load %struct.GimpSplash*, %struct.GimpSplash** @splash, align 8
  %lower46 = getelementptr inbounds %struct.GimpSplash, %struct.GimpSplash* %56, i32 0, i32 9
  %57 = load %struct._PangoLayout*, %struct._PangoLayout** %lower46, align 8
  call void @gimp_pango_layout_set_scale(%struct._PangoLayout* %57, double 0x3FEAAAAAAAAAA97E)
  %58 = load %struct.GimpSplash*, %struct.GimpSplash** @splash, align 8
  call void @splash_position_layouts(%struct.GimpSplash* %58, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.11, i32 0, i32 0), %struct._GdkRectangle* null)
  %59 = load %struct.GimpSplash*, %struct.GimpSplash** @splash, align 8
  %60 = load %struct._GdkPixbufAnimation*, %struct._GdkPixbufAnimation** %pixbuf, align 8
  %call47 = call %struct._GdkPixbuf* @gdk_pixbuf_animation_get_static_image(%struct._GdkPixbufAnimation* %60)
  %61 = load %struct.GimpSplash*, %struct.GimpSplash** @splash, align 8
  %color = getelementptr inbounds %struct.GimpSplash, %struct.GimpSplash* %61, i32 0, i32 5
  %call48 = call i32 @splash_average_text_area(%struct.GimpSplash* %59, %struct._GdkPixbuf* %call47, %struct._GdkColor* %color)
  %62 = load %struct._GdkPixbufAnimation*, %struct._GdkPixbufAnimation** %pixbuf, align 8
  %63 = bitcast %struct._GdkPixbufAnimation* %62 to i8*
  call void @g_object_unref(i8* %63)
  %64 = load %struct.GimpSplash*, %struct.GimpSplash** @splash, align 8
  %area49 = getelementptr inbounds %struct.GimpSplash, %struct.GimpSplash* %64, i32 0, i32 1
  %65 = load %struct._GtkWidget*, %struct._GtkWidget** %area49, align 8
  %66 = bitcast %struct._GtkWidget* %65 to i8*
  %67 = load %struct.GimpSplash*, %struct.GimpSplash** @splash, align 8
  %68 = bitcast %struct.GimpSplash* %67 to i8*
  %call50 = call i64 @g_signal_connect_data(i8* %66, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i32 0, i32 0), void ()* bitcast (i32 (%struct._GtkWidget*, %struct._GdkEventExpose*, %struct.GimpSplash*)* @splash_area_expose to void ()*), i8* %68, void (i8*, %struct._GClosure*)* null, i32 1)
  %call51 = call %struct._GtkWidget* @gtk_progress_bar_new()
  %69 = load %struct.GimpSplash*, %struct.GimpSplash** @splash, align 8
  %progress = getelementptr inbounds %struct.GimpSplash, %struct.GimpSplash* %69, i32 0, i32 4
  store %struct._GtkWidget* %call51, %struct._GtkWidget** %progress, align 8
  %70 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %71 = bitcast %struct._GtkWidget* %70 to %struct._GTypeInstance*
  %call52 = call i64 @gtk_box_get_type() #7
  %call53 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %71, i64 %call52)
  %72 = bitcast %struct._GTypeInstance* %call53 to %struct._GtkBox*
  %73 = load %struct.GimpSplash*, %struct.GimpSplash** @splash, align 8
  %progress54 = getelementptr inbounds %struct.GimpSplash, %struct.GimpSplash* %73, i32 0, i32 4
  %74 = load %struct._GtkWidget*, %struct._GtkWidget** %progress54, align 8
  call void @gtk_box_pack_end(%struct._GtkBox* %72, %struct._GtkWidget* %74, i32 0, i32 0, i32 0)
  %75 = load %struct.GimpSplash*, %struct.GimpSplash** @splash, align 8
  %progress55 = getelementptr inbounds %struct.GimpSplash, %struct.GimpSplash* %75, i32 0, i32 4
  %76 = load %struct._GtkWidget*, %struct._GtkWidget** %progress55, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %76)
  %77 = load %struct.GimpSplash*, %struct.GimpSplash** @splash, align 8
  %window56 = getelementptr inbounds %struct.GimpSplash, %struct.GimpSplash* %77, i32 0, i32 0
  %78 = load %struct._GtkWidget*, %struct._GtkWidget** %window56, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %78)
  br label %return

return:                                           ; preds = %cond.end.23, %if.then.1, %if.else
  ret void
}

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

; Function Attrs: nounwind uwtable
define internal %struct._GdkPixbufAnimation* @splash_image_load(i32 %be_verbose) #0 {
entry:
  %retval = alloca %struct._GdkPixbufAnimation*, align 8
  %be_verbose.addr = alloca i32, align 4
  %pixbuf = alloca %struct._GdkPixbufAnimation*, align 8
  %filename = alloca i8*, align 8
  store i32 %be_verbose, i32* %be_verbose.addr, align 4
  %call = call noalias i8* @gimp_personal_rc_file(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i32 0, i32 0))
  store i8* %call, i8** %filename, align 8
  %0 = load i32, i32* %be_verbose.addr, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %filename, align 8
  call void (i8*, ...) @g_printerr(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.19, i32 0, i32 0), i8* %1)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load i8*, i8** %filename, align 8
  %call1 = call %struct._GdkPixbufAnimation* @gdk_pixbuf_animation_new_from_file(i8* %2, %struct._GError** null)
  store %struct._GdkPixbufAnimation* %call1, %struct._GdkPixbufAnimation** %pixbuf, align 8
  %3 = load i8*, i8** %filename, align 8
  call void @g_free(i8* %3)
  %4 = load i32, i32* %be_verbose.addr, align 4
  %tobool2 = icmp ne i32 %4, 0
  br i1 %tobool2, label %if.then.3, label %if.end.5

if.then.3:                                        ; preds = %if.end
  %5 = load %struct._GdkPixbufAnimation*, %struct._GdkPixbufAnimation** %pixbuf, align 8
  %tobool4 = icmp ne %struct._GdkPixbufAnimation* %5, null
  %cond = select i1 %tobool4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.21, i32 0, i32 0)
  call void (i8*, ...) @g_printerr(i8* %cond)
  br label %if.end.5

if.end.5:                                         ; preds = %if.then.3, %if.end
  %6 = load %struct._GdkPixbufAnimation*, %struct._GdkPixbufAnimation** %pixbuf, align 8
  %tobool6 = icmp ne %struct._GdkPixbufAnimation* %6, null
  br i1 %tobool6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.end.5
  %7 = load %struct._GdkPixbufAnimation*, %struct._GdkPixbufAnimation** %pixbuf, align 8
  store %struct._GdkPixbufAnimation* %7, %struct._GdkPixbufAnimation** %retval
  br label %return

if.end.8:                                         ; preds = %if.end.5
  %call9 = call noalias i8* @gimp_personal_rc_file(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.22, i32 0, i32 0))
  store i8* %call9, i8** %filename, align 8
  %8 = load i8*, i8** %filename, align 8
  %9 = load i32, i32* %be_verbose.addr, align 4
  %call10 = call %struct._GdkPixbufAnimation* @splash_image_pick_from_dir(i8* %8, i32 %9)
  store %struct._GdkPixbufAnimation* %call10, %struct._GdkPixbufAnimation** %pixbuf, align 8
  %10 = load i8*, i8** %filename, align 8
  call void @g_free(i8* %10)
  %11 = load %struct._GdkPixbufAnimation*, %struct._GdkPixbufAnimation** %pixbuf, align 8
  %tobool11 = icmp ne %struct._GdkPixbufAnimation* %11, null
  br i1 %tobool11, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %if.end.8
  %12 = load %struct._GdkPixbufAnimation*, %struct._GdkPixbufAnimation** %pixbuf, align 8
  store %struct._GdkPixbufAnimation* %12, %struct._GdkPixbufAnimation** %retval
  br label %return

if.end.13:                                        ; preds = %if.end.8
  %call14 = call i8* @gimp_data_directory() #7
  %call15 = call noalias i8* (i8*, ...) @g_build_filename(i8* %call14, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i32 0, i32 0), i8* null)
  store i8* %call15, i8** %filename, align 8
  %13 = load i32, i32* %be_verbose.addr, align 4
  %tobool16 = icmp ne i32 %13, 0
  br i1 %tobool16, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %if.end.13
  %14 = load i8*, i8** %filename, align 8
  call void (i8*, ...) @g_printerr(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.19, i32 0, i32 0), i8* %14)
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.17, %if.end.13
  %15 = load i8*, i8** %filename, align 8
  %call19 = call %struct._GdkPixbufAnimation* @gdk_pixbuf_animation_new_from_file(i8* %15, %struct._GError** null)
  store %struct._GdkPixbufAnimation* %call19, %struct._GdkPixbufAnimation** %pixbuf, align 8
  %16 = load i8*, i8** %filename, align 8
  call void @g_free(i8* %16)
  %17 = load i32, i32* %be_verbose.addr, align 4
  %tobool20 = icmp ne i32 %17, 0
  br i1 %tobool20, label %if.then.21, label %if.end.24

if.then.21:                                       ; preds = %if.end.18
  %18 = load %struct._GdkPixbufAnimation*, %struct._GdkPixbufAnimation** %pixbuf, align 8
  %tobool22 = icmp ne %struct._GdkPixbufAnimation* %18, null
  %cond23 = select i1 %tobool22, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.21, i32 0, i32 0)
  call void (i8*, ...) @g_printerr(i8* %cond23)
  br label %if.end.24

if.end.24:                                        ; preds = %if.then.21, %if.end.18
  %19 = load %struct._GdkPixbufAnimation*, %struct._GdkPixbufAnimation** %pixbuf, align 8
  %tobool25 = icmp ne %struct._GdkPixbufAnimation* %19, null
  br i1 %tobool25, label %if.then.26, label %if.end.27

if.then.26:                                       ; preds = %if.end.24
  %20 = load %struct._GdkPixbufAnimation*, %struct._GdkPixbufAnimation** %pixbuf, align 8
  store %struct._GdkPixbufAnimation* %20, %struct._GdkPixbufAnimation** %retval
  br label %return

if.end.27:                                        ; preds = %if.end.24
  %call28 = call i8* @gimp_data_directory() #7
  %call29 = call noalias i8* (i8*, ...) @g_build_filename(i8* %call28, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.22, i32 0, i32 0), i8* null)
  store i8* %call29, i8** %filename, align 8
  %21 = load i8*, i8** %filename, align 8
  %22 = load i32, i32* %be_verbose.addr, align 4
  %call30 = call %struct._GdkPixbufAnimation* @splash_image_pick_from_dir(i8* %21, i32 %22)
  store %struct._GdkPixbufAnimation* %call30, %struct._GdkPixbufAnimation** %pixbuf, align 8
  %23 = load i8*, i8** %filename, align 8
  call void @g_free(i8* %23)
  %24 = load %struct._GdkPixbufAnimation*, %struct._GdkPixbufAnimation** %pixbuf, align 8
  store %struct._GdkPixbufAnimation* %24, %struct._GdkPixbufAnimation** %retval
  br label %return

return:                                           ; preds = %if.end.27, %if.then.26, %if.then.12, %if.then.7
  %25 = load %struct._GdkPixbufAnimation*, %struct._GdkPixbufAnimation** %retval
  ret %struct._GdkPixbufAnimation* %25
}

declare noalias i8* @g_slice_alloc0(i64) #1

declare i8* @g_object_new(i64, i8*, ...) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_window_get_type() #2

; Function Attrs: nounwind
declare i8* @gettext(i8*) #3

declare i64 @g_signal_connect_data(i8*, i8*, void ()*, i8*, void (i8*, %struct._GClosure*)*, i32) #1

; Function Attrs: noreturn nounwind
declare void @exit(i32) #4

declare %struct._GdkScreen* @gtk_widget_get_screen(%struct._GtkWidget*) #1

declare i32 @gdk_pixbuf_animation_get_width(%struct._GdkPixbufAnimation*) #1

declare i32 @gdk_screen_get_width(%struct._GdkScreen*) #1

declare i32 @gdk_pixbuf_animation_get_height(%struct._GdkPixbufAnimation*) #1

declare i32 @gdk_screen_get_height(%struct._GdkScreen*) #1

declare %struct._GtkWidget* @gtk_frame_new(i8*) #1

declare void @gtk_frame_set_shadow_type(%struct._GtkFrame*, i32) #1

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_frame_get_type() #2

declare void @gtk_container_add(%struct._GtkContainer*, %struct._GtkWidget*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_container_get_type() #2

declare void @gtk_widget_show(%struct._GtkWidget*) #1

declare %struct._GtkWidget* @gtk_box_new(i32, i32) #1

declare %struct._GtkWidget* @gtk_image_new_from_animation(%struct._GdkPixbufAnimation*) #1

declare void @gtk_box_pack_start(%struct._GtkBox*, %struct._GtkWidget*, i32, i32, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_box_get_type() #2

declare void @gtk_widget_set_size_request(%struct._GtkWidget*, i32, i32) #1

declare %struct._PangoLayout* @gtk_widget_create_pango_layout(%struct._GtkWidget*, i8*) #1

declare void @gimp_pango_layout_set_scale(%struct._PangoLayout*, double) #1

; Function Attrs: nounwind uwtable
define internal void @splash_position_layouts(%struct.GimpSplash* %splash, i8* %text1, i8* %text2, %struct._GdkRectangle* %area) #0 {
entry:
  %splash.addr = alloca %struct.GimpSplash*, align 8
  %text1.addr = alloca i8*, align 8
  %text2.addr = alloca i8*, align 8
  %area.addr = alloca %struct._GdkRectangle*, align 8
  %ink = alloca %struct._PangoRectangle, align 4
  %logical = alloca %struct._PangoRectangle, align 4
  store %struct.GimpSplash* %splash, %struct.GimpSplash** %splash.addr, align 8
  store i8* %text1, i8** %text1.addr, align 8
  store i8* %text2, i8** %text2.addr, align 8
  store %struct._GdkRectangle* %area, %struct._GdkRectangle** %area.addr, align 8
  %0 = load i8*, i8** %text1.addr, align 8
  %tobool = icmp ne i8* %0, null
  br i1 %tobool, label %if.then, label %if.end.15

if.then:                                          ; preds = %entry
  %1 = load %struct.GimpSplash*, %struct.GimpSplash** %splash.addr, align 8
  %upper = getelementptr inbounds %struct.GimpSplash, %struct.GimpSplash* %1, i32 0, i32 6
  %2 = load %struct._PangoLayout*, %struct._PangoLayout** %upper, align 8
  call void @pango_layout_get_pixel_extents(%struct._PangoLayout* %2, %struct._PangoRectangle* %ink, %struct._PangoRectangle* null)
  %3 = load %struct._GdkRectangle*, %struct._GdkRectangle** %area.addr, align 8
  %tobool1 = icmp ne %struct._GdkRectangle* %3, null
  br i1 %tobool1, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.then
  %4 = load %struct._GdkRectangle*, %struct._GdkRectangle** %area.addr, align 8
  %5 = load %struct.GimpSplash*, %struct.GimpSplash** %splash.addr, align 8
  %upper_x = getelementptr inbounds %struct.GimpSplash, %struct.GimpSplash* %5, i32 0, i32 7
  %6 = load i32, i32* %upper_x, align 4
  %7 = load %struct.GimpSplash*, %struct.GimpSplash** %splash.addr, align 8
  %upper_y = getelementptr inbounds %struct.GimpSplash, %struct.GimpSplash* %7, i32 0, i32 8
  %8 = load i32, i32* %upper_y, align 4
  call void @splash_rectangle_union(%struct._GdkRectangle* %4, %struct._PangoRectangle* %ink, i32 %6, i32 %8)
  br label %if.end

if.end:                                           ; preds = %if.then.2, %if.then
  %9 = load %struct.GimpSplash*, %struct.GimpSplash** %splash.addr, align 8
  %upper3 = getelementptr inbounds %struct.GimpSplash, %struct.GimpSplash* %9, i32 0, i32 6
  %10 = load %struct._PangoLayout*, %struct._PangoLayout** %upper3, align 8
  %11 = load i8*, i8** %text1.addr, align 8
  call void @pango_layout_set_text(%struct._PangoLayout* %10, i8* %11, i32 -1)
  %12 = load %struct.GimpSplash*, %struct.GimpSplash** %splash.addr, align 8
  %upper4 = getelementptr inbounds %struct.GimpSplash, %struct.GimpSplash* %12, i32 0, i32 6
  %13 = load %struct._PangoLayout*, %struct._PangoLayout** %upper4, align 8
  call void @pango_layout_get_pixel_extents(%struct._PangoLayout* %13, %struct._PangoRectangle* %ink, %struct._PangoRectangle* %logical)
  %14 = load %struct.GimpSplash*, %struct.GimpSplash** %splash.addr, align 8
  %width = getelementptr inbounds %struct.GimpSplash, %struct.GimpSplash* %14, i32 0, i32 2
  %15 = load i32, i32* %width, align 4
  %width5 = getelementptr inbounds %struct._PangoRectangle, %struct._PangoRectangle* %logical, i32 0, i32 2
  %16 = load i32, i32* %width5, align 4
  %sub = sub nsw i32 %15, %16
  %div = sdiv i32 %sub, 2
  %17 = load %struct.GimpSplash*, %struct.GimpSplash** %splash.addr, align 8
  %upper_x6 = getelementptr inbounds %struct.GimpSplash, %struct.GimpSplash* %17, i32 0, i32 7
  store i32 %div, i32* %upper_x6, align 4
  %18 = load %struct.GimpSplash*, %struct.GimpSplash** %splash.addr, align 8
  %height = getelementptr inbounds %struct.GimpSplash, %struct.GimpSplash* %18, i32 0, i32 3
  %19 = load i32, i32* %height, align 4
  %height7 = getelementptr inbounds %struct._PangoRectangle, %struct._PangoRectangle* %logical, i32 0, i32 3
  %20 = load i32, i32* %height7, align 4
  %mul = mul nsw i32 2, %20
  %add = add nsw i32 %mul, 6
  %sub8 = sub nsw i32 %19, %add
  %21 = load %struct.GimpSplash*, %struct.GimpSplash** %splash.addr, align 8
  %upper_y9 = getelementptr inbounds %struct.GimpSplash, %struct.GimpSplash* %21, i32 0, i32 8
  store i32 %sub8, i32* %upper_y9, align 4
  %22 = load %struct._GdkRectangle*, %struct._GdkRectangle** %area.addr, align 8
  %tobool10 = icmp ne %struct._GdkRectangle* %22, null
  br i1 %tobool10, label %if.then.11, label %if.end.14

if.then.11:                                       ; preds = %if.end
  %23 = load %struct._GdkRectangle*, %struct._GdkRectangle** %area.addr, align 8
  %24 = load %struct.GimpSplash*, %struct.GimpSplash** %splash.addr, align 8
  %upper_x12 = getelementptr inbounds %struct.GimpSplash, %struct.GimpSplash* %24, i32 0, i32 7
  %25 = load i32, i32* %upper_x12, align 4
  %26 = load %struct.GimpSplash*, %struct.GimpSplash** %splash.addr, align 8
  %upper_y13 = getelementptr inbounds %struct.GimpSplash, %struct.GimpSplash* %26, i32 0, i32 8
  %27 = load i32, i32* %upper_y13, align 4
  call void @splash_rectangle_union(%struct._GdkRectangle* %23, %struct._PangoRectangle* %ink, i32 %25, i32 %27)
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.11, %if.end
  br label %if.end.15

if.end.15:                                        ; preds = %if.end.14, %entry
  %28 = load i8*, i8** %text2.addr, align 8
  %tobool16 = icmp ne i8* %28, null
  br i1 %tobool16, label %if.then.17, label %if.end.38

if.then.17:                                       ; preds = %if.end.15
  %29 = load %struct.GimpSplash*, %struct.GimpSplash** %splash.addr, align 8
  %lower = getelementptr inbounds %struct.GimpSplash, %struct.GimpSplash* %29, i32 0, i32 9
  %30 = load %struct._PangoLayout*, %struct._PangoLayout** %lower, align 8
  call void @pango_layout_get_pixel_extents(%struct._PangoLayout* %30, %struct._PangoRectangle* %ink, %struct._PangoRectangle* null)
  %31 = load %struct._GdkRectangle*, %struct._GdkRectangle** %area.addr, align 8
  %tobool18 = icmp ne %struct._GdkRectangle* %31, null
  br i1 %tobool18, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %if.then.17
  %32 = load %struct._GdkRectangle*, %struct._GdkRectangle** %area.addr, align 8
  %33 = load %struct.GimpSplash*, %struct.GimpSplash** %splash.addr, align 8
  %lower_x = getelementptr inbounds %struct.GimpSplash, %struct.GimpSplash* %33, i32 0, i32 10
  %34 = load i32, i32* %lower_x, align 4
  %35 = load %struct.GimpSplash*, %struct.GimpSplash** %splash.addr, align 8
  %lower_y = getelementptr inbounds %struct.GimpSplash, %struct.GimpSplash* %35, i32 0, i32 11
  %36 = load i32, i32* %lower_y, align 4
  call void @splash_rectangle_union(%struct._GdkRectangle* %32, %struct._PangoRectangle* %ink, i32 %34, i32 %36)
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.19, %if.then.17
  %37 = load %struct.GimpSplash*, %struct.GimpSplash** %splash.addr, align 8
  %lower21 = getelementptr inbounds %struct.GimpSplash, %struct.GimpSplash* %37, i32 0, i32 9
  %38 = load %struct._PangoLayout*, %struct._PangoLayout** %lower21, align 8
  %39 = load i8*, i8** %text2.addr, align 8
  call void @pango_layout_set_text(%struct._PangoLayout* %38, i8* %39, i32 -1)
  %40 = load %struct.GimpSplash*, %struct.GimpSplash** %splash.addr, align 8
  %lower22 = getelementptr inbounds %struct.GimpSplash, %struct.GimpSplash* %40, i32 0, i32 9
  %41 = load %struct._PangoLayout*, %struct._PangoLayout** %lower22, align 8
  call void @pango_layout_get_pixel_extents(%struct._PangoLayout* %41, %struct._PangoRectangle* %ink, %struct._PangoRectangle* %logical)
  %42 = load %struct.GimpSplash*, %struct.GimpSplash** %splash.addr, align 8
  %width23 = getelementptr inbounds %struct.GimpSplash, %struct.GimpSplash* %42, i32 0, i32 2
  %43 = load i32, i32* %width23, align 4
  %width24 = getelementptr inbounds %struct._PangoRectangle, %struct._PangoRectangle* %logical, i32 0, i32 2
  %44 = load i32, i32* %width24, align 4
  %sub25 = sub nsw i32 %43, %44
  %div26 = sdiv i32 %sub25, 2
  %45 = load %struct.GimpSplash*, %struct.GimpSplash** %splash.addr, align 8
  %lower_x27 = getelementptr inbounds %struct.GimpSplash, %struct.GimpSplash* %45, i32 0, i32 10
  store i32 %div26, i32* %lower_x27, align 4
  %46 = load %struct.GimpSplash*, %struct.GimpSplash** %splash.addr, align 8
  %height28 = getelementptr inbounds %struct.GimpSplash, %struct.GimpSplash* %46, i32 0, i32 3
  %47 = load i32, i32* %height28, align 4
  %height29 = getelementptr inbounds %struct._PangoRectangle, %struct._PangoRectangle* %logical, i32 0, i32 3
  %48 = load i32, i32* %height29, align 4
  %add30 = add nsw i32 %48, 6
  %sub31 = sub nsw i32 %47, %add30
  %49 = load %struct.GimpSplash*, %struct.GimpSplash** %splash.addr, align 8
  %lower_y32 = getelementptr inbounds %struct.GimpSplash, %struct.GimpSplash* %49, i32 0, i32 11
  store i32 %sub31, i32* %lower_y32, align 4
  %50 = load %struct._GdkRectangle*, %struct._GdkRectangle** %area.addr, align 8
  %tobool33 = icmp ne %struct._GdkRectangle* %50, null
  br i1 %tobool33, label %if.then.34, label %if.end.37

if.then.34:                                       ; preds = %if.end.20
  %51 = load %struct._GdkRectangle*, %struct._GdkRectangle** %area.addr, align 8
  %52 = load %struct.GimpSplash*, %struct.GimpSplash** %splash.addr, align 8
  %lower_x35 = getelementptr inbounds %struct.GimpSplash, %struct.GimpSplash* %52, i32 0, i32 10
  %53 = load i32, i32* %lower_x35, align 4
  %54 = load %struct.GimpSplash*, %struct.GimpSplash** %splash.addr, align 8
  %lower_y36 = getelementptr inbounds %struct.GimpSplash, %struct.GimpSplash* %54, i32 0, i32 11
  %55 = load i32, i32* %lower_y36, align 4
  call void @splash_rectangle_union(%struct._GdkRectangle* %51, %struct._PangoRectangle* %ink, i32 %53, i32 %55)
  br label %if.end.37

if.end.37:                                        ; preds = %if.then.34, %if.end.20
  br label %if.end.38

if.end.38:                                        ; preds = %if.end.37, %if.end.15
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @splash_average_text_area(%struct.GimpSplash* %splash, %struct._GdkPixbuf* %pixbuf, %struct._GdkColor* %color) #0 {
entry:
  %retval = alloca i32, align 4
  %splash.addr = alloca %struct.GimpSplash*, align 8
  %pixbuf.addr = alloca %struct._GdkPixbuf*, align 8
  %color.addr = alloca %struct._GdkColor*, align 8
  %pixels = alloca i8*, align 8
  %rowstride = alloca i32, align 4
  %channels = alloca i32, align 4
  %luminance = alloca i32, align 4
  %sum = alloca [3 x i32], align 4
  %image = alloca %struct._GdkRectangle, align 4
  %area = alloca %struct._GdkRectangle, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %count = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %src = alloca i8*, align 8
  store %struct.GimpSplash* %splash, %struct.GimpSplash** %splash.addr, align 8
  store %struct._GdkPixbuf* %pixbuf, %struct._GdkPixbuf** %pixbuf.addr, align 8
  store %struct._GdkColor* %color, %struct._GdkColor** %color.addr, align 8
  store i32 0, i32* %luminance, align 4
  %0 = bitcast [3 x i32]* %sum to i8*
  call void @llvm.memset.p0i8.i64(i8* %0, i8 0, i64 12, i32 4, i1 false)
  %1 = bitcast %struct._GdkRectangle* %image to i8*
  call void @llvm.memset.p0i8.i64(i8* %1, i8 0, i64 16, i32 4, i1 false)
  %2 = bitcast %struct._GdkRectangle* %area to i8*
  call void @llvm.memset.p0i8.i64(i8* %2, i8 0, i64 16, i32 4, i1 false)
  br label %do.body

do.body:                                          ; preds = %entry
  %3 = load %struct._GdkPixbuf*, %struct._GdkPixbuf** %pixbuf.addr, align 8
  %4 = bitcast %struct._GdkPixbuf* %3 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %4, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gdk_pixbuf_get_type() #7
  store i64 %call, i64* %__t, align 8
  %5 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool = icmp ne %struct._GTypeInstance* %5, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %do.body
  store i32 0, i32* %__r, align 4
  br label %if.end.6

if.else:                                          ; preds = %do.body
  %6 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %6, i32 0, i32 0
  %7 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool1 = icmp ne %struct._GTypeClass* %7, null
  br i1 %tobool1, label %land.lhs.true, label %if.else.4

land.lhs.true:                                    ; preds = %if.else
  %8 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class2 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %8, i32 0, i32 0
  %9 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class2, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %9, i32 0, i32 0
  %10 = load i64, i64* %g_type, align 8
  %11 = load i64, i64* %__t, align 8
  %cmp = icmp eq i64 %10, %11
  br i1 %cmp, label %if.then.3, label %if.else.4

if.then.3:                                        ; preds = %land.lhs.true
  store i32 1, i32* %__r, align 4
  br label %if.end

if.else.4:                                        ; preds = %land.lhs.true, %if.else
  %12 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %13 = load i64, i64* %__t, align 8
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %12, i64 %13) #8
  store i32 %call5, i32* %__r, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.4, %if.then.3
  br label %if.end.6

if.end.6:                                         ; preds = %if.end, %if.then
  %14 = load i32, i32* %__r, align 4
  store i32 %14, i32* %tmp
  %15 = load i32, i32* %tmp
  %tobool7 = icmp ne i32 %15, 0
  br i1 %tobool7, label %if.then.8, label %if.else.9

if.then.8:                                        ; preds = %if.end.6
  br label %if.end.10

if.else.9:                                        ; preds = %if.end.6
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.splash_average_text_area, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.14, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %16 = load %struct._GdkPixbuf*, %struct._GdkPixbuf** %pixbuf.addr, align 8
  %call12 = call i32 @gdk_pixbuf_get_bits_per_sample(%struct._GdkPixbuf* %16)
  %cmp13 = icmp eq i32 %call12, 8
  br i1 %cmp13, label %if.then.14, label %if.else.15

if.then.14:                                       ; preds = %do.body.11
  br label %if.end.16

if.else.15:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.splash_average_text_area, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.15, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.16:                                        ; preds = %if.then.14
  br label %do.end.17

do.end.17:                                        ; preds = %if.end.16
  %17 = load %struct._GdkPixbuf*, %struct._GdkPixbuf** %pixbuf.addr, align 8
  %call18 = call i32 @gdk_pixbuf_get_width(%struct._GdkPixbuf* %17)
  %width = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %image, i32 0, i32 2
  store i32 %call18, i32* %width, align 4
  %18 = load %struct._GdkPixbuf*, %struct._GdkPixbuf** %pixbuf.addr, align 8
  %call19 = call i32 @gdk_pixbuf_get_height(%struct._GdkPixbuf* %18)
  %height = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %image, i32 0, i32 3
  store i32 %call19, i32* %height, align 4
  %19 = load %struct._GdkPixbuf*, %struct._GdkPixbuf** %pixbuf.addr, align 8
  %call20 = call i32 @gdk_pixbuf_get_rowstride(%struct._GdkPixbuf* %19)
  store i32 %call20, i32* %rowstride, align 4
  %20 = load %struct._GdkPixbuf*, %struct._GdkPixbuf** %pixbuf.addr, align 8
  %call21 = call i32 @gdk_pixbuf_get_n_channels(%struct._GdkPixbuf* %20)
  store i32 %call21, i32* %channels, align 4
  %21 = load %struct._GdkPixbuf*, %struct._GdkPixbuf** %pixbuf.addr, align 8
  %call22 = call i8* @gdk_pixbuf_get_pixels(%struct._GdkPixbuf* %21)
  store i8* %call22, i8** %pixels, align 8
  %22 = load %struct.GimpSplash*, %struct.GimpSplash** %splash.addr, align 8
  call void @splash_position_layouts(%struct.GimpSplash* %22, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.17, i32 0, i32 0), %struct._GdkRectangle* %area)
  %23 = load %struct.GimpSplash*, %struct.GimpSplash** %splash.addr, align 8
  call void @splash_position_layouts(%struct.GimpSplash* %23, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.11, i32 0, i32 0), %struct._GdkRectangle* null)
  %call23 = call i32 @gdk_rectangle_intersect(%struct._GdkRectangle* %image, %struct._GdkRectangle* %area, %struct._GdkRectangle* %area)
  %tobool24 = icmp ne i32 %call23, 0
  br i1 %tobool24, label %if.then.25, label %if.end.105

if.then.25:                                       ; preds = %do.end.17
  %width27 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %area, i32 0, i32 2
  %24 = load i32, i32* %width27, align 4
  %height28 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %area, i32 0, i32 3
  %25 = load i32, i32* %height28, align 4
  %mul = mul nsw i32 %24, %25
  store i32 %mul, i32* %count, align 4
  %x31 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %area, i32 0, i32 0
  %26 = load i32, i32* %x31, align 4
  %27 = load i32, i32* %channels, align 4
  %mul32 = mul nsw i32 %26, %27
  %28 = load i8*, i8** %pixels, align 8
  %idx.ext = sext i32 %mul32 to i64
  %add.ptr = getelementptr inbounds i8, i8* %28, i64 %idx.ext
  store i8* %add.ptr, i8** %pixels, align 8
  %y33 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %area, i32 0, i32 1
  %29 = load i32, i32* %y33, align 4
  %30 = load i32, i32* %rowstride, align 4
  %mul34 = mul nsw i32 %29, %30
  %31 = load i8*, i8** %pixels, align 8
  %idx.ext35 = sext i32 %mul34 to i64
  %add.ptr36 = getelementptr inbounds i8, i8* %31, i64 %idx.ext35
  store i8* %add.ptr36, i8** %pixels, align 8
  store i32 0, i32* %y, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.57, %if.then.25
  %32 = load i32, i32* %y, align 4
  %height37 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %area, i32 0, i32 3
  %33 = load i32, i32* %height37, align 4
  %cmp38 = icmp slt i32 %32, %33
  br i1 %cmp38, label %for.body, label %for.end.59

for.body:                                         ; preds = %for.cond
  %34 = load i8*, i8** %pixels, align 8
  store i8* %34, i8** %src, align 8
  store i32 0, i32* %x, align 4
  br label %for.cond.40

for.cond.40:                                      ; preds = %for.inc, %for.body
  %35 = load i32, i32* %x, align 4
  %width41 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %area, i32 0, i32 2
  %36 = load i32, i32* %width41, align 4
  %cmp42 = icmp slt i32 %35, %36
  br i1 %cmp42, label %for.body.43, label %for.end

for.body.43:                                      ; preds = %for.cond.40
  %37 = load i8*, i8** %src, align 8
  %arrayidx = getelementptr inbounds i8, i8* %37, i64 0
  %38 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %38 to i32
  %arrayidx44 = getelementptr inbounds [3 x i32], [3 x i32]* %sum, i32 0, i64 0
  %39 = load i32, i32* %arrayidx44, align 4
  %add = add i32 %39, %conv
  store i32 %add, i32* %arrayidx44, align 4
  %40 = load i8*, i8** %src, align 8
  %arrayidx45 = getelementptr inbounds i8, i8* %40, i64 1
  %41 = load i8, i8* %arrayidx45, align 1
  %conv46 = zext i8 %41 to i32
  %arrayidx47 = getelementptr inbounds [3 x i32], [3 x i32]* %sum, i32 0, i64 1
  %42 = load i32, i32* %arrayidx47, align 4
  %add48 = add i32 %42, %conv46
  store i32 %add48, i32* %arrayidx47, align 4
  %43 = load i8*, i8** %src, align 8
  %arrayidx49 = getelementptr inbounds i8, i8* %43, i64 2
  %44 = load i8, i8* %arrayidx49, align 1
  %conv50 = zext i8 %44 to i32
  %arrayidx51 = getelementptr inbounds [3 x i32], [3 x i32]* %sum, i32 0, i64 2
  %45 = load i32, i32* %arrayidx51, align 4
  %add52 = add i32 %45, %conv50
  store i32 %add52, i32* %arrayidx51, align 4
  %46 = load i32, i32* %channels, align 4
  %47 = load i8*, i8** %src, align 8
  %idx.ext53 = sext i32 %46 to i64
  %add.ptr54 = getelementptr inbounds i8, i8* %47, i64 %idx.ext53
  store i8* %add.ptr54, i8** %src, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body.43
  %48 = load i32, i32* %x, align 4
  %inc = add nsw i32 %48, 1
  store i32 %inc, i32* %x, align 4
  br label %for.cond.40

for.end:                                          ; preds = %for.cond.40
  %49 = load i32, i32* %rowstride, align 4
  %50 = load i8*, i8** %pixels, align 8
  %idx.ext55 = sext i32 %49 to i64
  %add.ptr56 = getelementptr inbounds i8, i8* %50, i64 %idx.ext55
  store i8* %add.ptr56, i8** %pixels, align 8
  br label %for.inc.57

for.inc.57:                                       ; preds = %for.end
  %51 = load i32, i32* %y, align 4
  %inc58 = add nsw i32 %51, 1
  store i32 %inc58, i32* %y, align 4
  br label %for.cond

for.end.59:                                       ; preds = %for.cond
  %arrayidx60 = getelementptr inbounds [3 x i32], [3 x i32]* %sum, i32 0, i64 0
  %52 = load i32, i32* %arrayidx60, align 4
  %53 = load i32, i32* %count, align 4
  %div = udiv i32 %52, %53
  %conv61 = uitofp i32 %div to double
  %mul62 = fmul double %conv61, 2.126000e-01
  %arrayidx63 = getelementptr inbounds [3 x i32], [3 x i32]* %sum, i32 0, i64 1
  %54 = load i32, i32* %arrayidx63, align 4
  %55 = load i32, i32* %count, align 4
  %div64 = udiv i32 %54, %55
  %conv65 = uitofp i32 %div64 to double
  %mul66 = fmul double %conv65, 7.152000e-01
  %add67 = fadd double %mul62, %mul66
  %arrayidx68 = getelementptr inbounds [3 x i32], [3 x i32]* %sum, i32 0, i64 2
  %56 = load i32, i32* %arrayidx68, align 4
  %57 = load i32, i32* %count, align 4
  %div69 = udiv i32 %56, %57
  %conv70 = uitofp i32 %div69 to double
  %mul71 = fmul double %conv70, 7.220000e-02
  %add72 = fadd double %add67, %mul71
  %conv73 = fptosi double %add72 to i32
  store i32 %conv73, i32* %luminance, align 4
  %58 = load i32, i32* %luminance, align 4
  %cmp74 = icmp sgt i32 %58, 127
  br i1 %cmp74, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.end.59
  %59 = load i32, i32* %luminance, align 4
  %sub = sub nsw i32 %59, 223
  br label %cond.end

cond.false:                                       ; preds = %for.end.59
  %60 = load i32, i32* %luminance, align 4
  %add76 = add nsw i32 %60, 223
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %sub, %cond.true ], [ %add76, %cond.false ]
  %cmp77 = icmp sgt i32 %cond, 255
  br i1 %cmp77, label %cond.true.79, label %cond.false.80

cond.true.79:                                     ; preds = %cond.end
  br label %cond.end.103

cond.false.80:                                    ; preds = %cond.end
  %61 = load i32, i32* %luminance, align 4
  %cmp81 = icmp sgt i32 %61, 127
  br i1 %cmp81, label %cond.true.83, label %cond.false.85

cond.true.83:                                     ; preds = %cond.false.80
  %62 = load i32, i32* %luminance, align 4
  %sub84 = sub nsw i32 %62, 223
  br label %cond.end.87

cond.false.85:                                    ; preds = %cond.false.80
  %63 = load i32, i32* %luminance, align 4
  %add86 = add nsw i32 %63, 223
  br label %cond.end.87

cond.end.87:                                      ; preds = %cond.false.85, %cond.true.83
  %cond88 = phi i32 [ %sub84, %cond.true.83 ], [ %add86, %cond.false.85 ]
  %cmp89 = icmp slt i32 %cond88, 0
  br i1 %cmp89, label %cond.true.91, label %cond.false.92

cond.true.91:                                     ; preds = %cond.end.87
  br label %cond.end.101

cond.false.92:                                    ; preds = %cond.end.87
  %64 = load i32, i32* %luminance, align 4
  %cmp93 = icmp sgt i32 %64, 127
  br i1 %cmp93, label %cond.true.95, label %cond.false.97

cond.true.95:                                     ; preds = %cond.false.92
  %65 = load i32, i32* %luminance, align 4
  %sub96 = sub nsw i32 %65, 223
  br label %cond.end.99

cond.false.97:                                    ; preds = %cond.false.92
  %66 = load i32, i32* %luminance, align 4
  %add98 = add nsw i32 %66, 223
  br label %cond.end.99

cond.end.99:                                      ; preds = %cond.false.97, %cond.true.95
  %cond100 = phi i32 [ %sub96, %cond.true.95 ], [ %add98, %cond.false.97 ]
  br label %cond.end.101

cond.end.101:                                     ; preds = %cond.end.99, %cond.true.91
  %cond102 = phi i32 [ 0, %cond.true.91 ], [ %cond100, %cond.end.99 ]
  br label %cond.end.103

cond.end.103:                                     ; preds = %cond.end.101, %cond.true.79
  %cond104 = phi i32 [ 255, %cond.true.79 ], [ %cond102, %cond.end.101 ]
  store i32 %cond104, i32* %luminance, align 4
  br label %if.end.105

if.end.105:                                       ; preds = %cond.end.103, %do.end.17
  %67 = load i32, i32* %luminance, align 4
  %shl = shl i32 %67, 8
  %68 = load i32, i32* %luminance, align 4
  %or = or i32 %shl, %68
  %conv106 = trunc i32 %or to i16
  %69 = load %struct._GdkColor*, %struct._GdkColor** %color.addr, align 8
  %blue = getelementptr inbounds %struct._GdkColor, %struct._GdkColor* %69, i32 0, i32 3
  store i16 %conv106, i16* %blue, align 2
  %70 = load %struct._GdkColor*, %struct._GdkColor** %color.addr, align 8
  %green = getelementptr inbounds %struct._GdkColor, %struct._GdkColor* %70, i32 0, i32 2
  store i16 %conv106, i16* %green, align 2
  %71 = load %struct._GdkColor*, %struct._GdkColor** %color.addr, align 8
  %red = getelementptr inbounds %struct._GdkColor, %struct._GdkColor* %71, i32 0, i32 1
  store i16 %conv106, i16* %red, align 2
  %72 = load %struct.GimpSplash*, %struct.GimpSplash** %splash.addr, align 8
  %area107 = getelementptr inbounds %struct.GimpSplash, %struct.GimpSplash* %72, i32 0, i32 1
  %73 = load %struct._GtkWidget*, %struct._GtkWidget** %area107, align 8
  %call108 = call %struct._GdkColormap* @gtk_widget_get_colormap(%struct._GtkWidget* %73)
  %74 = load %struct._GdkColor*, %struct._GdkColor** %color.addr, align 8
  %call109 = call i32 @gdk_colormap_alloc_color(%struct._GdkColormap* %call108, %struct._GdkColor* %74, i32 0, i32 1)
  store i32 %call109, i32* %retval
  br label %return

return:                                           ; preds = %if.end.105, %if.else.15, %if.else.9
  %75 = load i32, i32* %retval
  ret i32 %75
}

declare %struct._GdkPixbuf* @gdk_pixbuf_animation_get_static_image(%struct._GdkPixbufAnimation*) #1

declare void @g_object_unref(i8*) #1

; Function Attrs: nounwind uwtable
define internal i32 @splash_area_expose(%struct._GtkWidget* %widget, %struct._GdkEventExpose* %event, %struct.GimpSplash* %splash) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %event.addr = alloca %struct._GdkEventExpose*, align 8
  %splash.addr = alloca %struct.GimpSplash*, align 8
  %cr = alloca %struct._cairo*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GdkEventExpose* %event, %struct._GdkEventExpose** %event.addr, align 8
  store %struct.GimpSplash* %splash, %struct.GimpSplash** %splash.addr, align 8
  %0 = load %struct._GdkEventExpose*, %struct._GdkEventExpose** %event.addr, align 8
  %window = getelementptr inbounds %struct._GdkEventExpose, %struct._GdkEventExpose* %0, i32 0, i32 1
  %1 = load %struct._GdkDrawable*, %struct._GdkDrawable** %window, align 8
  %call = call %struct._cairo* @gdk_cairo_create(%struct._GdkDrawable* %1)
  store %struct._cairo* %call, %struct._cairo** %cr, align 8
  %2 = load %struct._cairo*, %struct._cairo** %cr, align 8
  %3 = load %struct._GdkEventExpose*, %struct._GdkEventExpose** %event.addr, align 8
  %region = getelementptr inbounds %struct._GdkEventExpose, %struct._GdkEventExpose* %3, i32 0, i32 4
  %4 = load %struct._GdkRegion*, %struct._GdkRegion** %region, align 8
  call void @gdk_cairo_region(%struct._cairo* %2, %struct._GdkRegion* %4)
  %5 = load %struct._cairo*, %struct._cairo** %cr, align 8
  call void @cairo_clip(%struct._cairo* %5)
  %6 = load %struct._cairo*, %struct._cairo** %cr, align 8
  %7 = load %struct.GimpSplash*, %struct.GimpSplash** %splash.addr, align 8
  %color = getelementptr inbounds %struct.GimpSplash, %struct.GimpSplash* %7, i32 0, i32 5
  call void @gdk_cairo_set_source_color(%struct._cairo* %6, %struct._GdkColor* %color)
  %8 = load %struct._cairo*, %struct._cairo** %cr, align 8
  %9 = load %struct.GimpSplash*, %struct.GimpSplash** %splash.addr, align 8
  %upper_x = getelementptr inbounds %struct.GimpSplash, %struct.GimpSplash* %9, i32 0, i32 7
  %10 = load i32, i32* %upper_x, align 4
  %conv = sitofp i32 %10 to double
  %11 = load %struct.GimpSplash*, %struct.GimpSplash** %splash.addr, align 8
  %upper_y = getelementptr inbounds %struct.GimpSplash, %struct.GimpSplash* %11, i32 0, i32 8
  %12 = load i32, i32* %upper_y, align 4
  %conv1 = sitofp i32 %12 to double
  call void @cairo_move_to(%struct._cairo* %8, double %conv, double %conv1)
  %13 = load %struct._cairo*, %struct._cairo** %cr, align 8
  %14 = load %struct.GimpSplash*, %struct.GimpSplash** %splash.addr, align 8
  %upper = getelementptr inbounds %struct.GimpSplash, %struct.GimpSplash* %14, i32 0, i32 6
  %15 = load %struct._PangoLayout*, %struct._PangoLayout** %upper, align 8
  call void @pango_cairo_show_layout(%struct._cairo* %13, %struct._PangoLayout* %15)
  %16 = load %struct._cairo*, %struct._cairo** %cr, align 8
  %17 = load %struct.GimpSplash*, %struct.GimpSplash** %splash.addr, align 8
  %lower_x = getelementptr inbounds %struct.GimpSplash, %struct.GimpSplash* %17, i32 0, i32 10
  %18 = load i32, i32* %lower_x, align 4
  %conv2 = sitofp i32 %18 to double
  %19 = load %struct.GimpSplash*, %struct.GimpSplash** %splash.addr, align 8
  %lower_y = getelementptr inbounds %struct.GimpSplash, %struct.GimpSplash* %19, i32 0, i32 11
  %20 = load i32, i32* %lower_y, align 4
  %conv3 = sitofp i32 %20 to double
  call void @cairo_move_to(%struct._cairo* %16, double %conv2, double %conv3)
  %21 = load %struct._cairo*, %struct._cairo** %cr, align 8
  %22 = load %struct.GimpSplash*, %struct.GimpSplash** %splash.addr, align 8
  %lower = getelementptr inbounds %struct.GimpSplash, %struct.GimpSplash* %22, i32 0, i32 9
  %23 = load %struct._PangoLayout*, %struct._PangoLayout** %lower, align 8
  call void @pango_cairo_show_layout(%struct._cairo* %21, %struct._PangoLayout* %23)
  %24 = load %struct._cairo*, %struct._cairo** %cr, align 8
  call void @cairo_destroy(%struct._cairo* %24)
  ret i32 0
}

declare %struct._GtkWidget* @gtk_progress_bar_new() #1

declare void @gtk_box_pack_end(%struct._GtkBox*, %struct._GtkWidget*, i32, i32, i32) #1

; Function Attrs: nounwind uwtable
define void @splash_destroy() #0 {
entry:
  %0 = load %struct.GimpSplash*, %struct.GimpSplash** @splash, align 8
  %tobool = icmp ne %struct.GimpSplash* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.GimpSplash*, %struct.GimpSplash** @splash, align 8
  %window = getelementptr inbounds %struct.GimpSplash, %struct.GimpSplash* %1, i32 0, i32 0
  %2 = load %struct._GtkWidget*, %struct._GtkWidget** %window, align 8
  call void @gtk_widget_destroy(%struct._GtkWidget* %2)
  %3 = load %struct.GimpSplash*, %struct.GimpSplash** @splash, align 8
  %upper = getelementptr inbounds %struct.GimpSplash, %struct.GimpSplash* %3, i32 0, i32 6
  %4 = load %struct._PangoLayout*, %struct._PangoLayout** %upper, align 8
  %5 = bitcast %struct._PangoLayout* %4 to i8*
  call void @g_object_unref(i8* %5)
  %6 = load %struct.GimpSplash*, %struct.GimpSplash** @splash, align 8
  %lower = getelementptr inbounds %struct.GimpSplash, %struct.GimpSplash* %6, i32 0, i32 9
  %7 = load %struct._PangoLayout*, %struct._PangoLayout** %lower, align 8
  %8 = bitcast %struct._PangoLayout* %7 to i8*
  call void @g_object_unref(i8* %8)
  %9 = load %struct.GimpSplash*, %struct.GimpSplash** @splash, align 8
  %text1 = getelementptr inbounds %struct.GimpSplash, %struct.GimpSplash* %9, i32 0, i32 13
  %10 = load i8*, i8** %text1, align 8
  call void @g_free(i8* %10)
  %11 = load %struct.GimpSplash*, %struct.GimpSplash** @splash, align 8
  %text2 = getelementptr inbounds %struct.GimpSplash, %struct.GimpSplash* %11, i32 0, i32 14
  %12 = load i8*, i8** %text2, align 8
  call void @g_free(i8* %12)
  %13 = load %struct.GimpSplash*, %struct.GimpSplash** @splash, align 8
  %timer = getelementptr inbounds %struct.GimpSplash, %struct.GimpSplash* %13, i32 0, i32 15
  %14 = load %struct._GTimer*, %struct._GTimer** %timer, align 8
  %tobool1 = icmp ne %struct._GTimer* %14, null
  br i1 %tobool1, label %if.then.2, label %if.end.4

if.then.2:                                        ; preds = %if.end
  %15 = load %struct.GimpSplash*, %struct.GimpSplash** @splash, align 8
  %timer3 = getelementptr inbounds %struct.GimpSplash, %struct.GimpSplash* %15, i32 0, i32 15
  %16 = load %struct._GTimer*, %struct._GTimer** %timer3, align 8
  call void @g_timer_destroy(%struct._GTimer* %16)
  br label %if.end.4

if.end.4:                                         ; preds = %if.then.2, %if.end
  br label %do.body

do.body:                                          ; preds = %if.end.4
  %17 = load %struct.GimpSplash*, %struct.GimpSplash** @splash, align 8
  %18 = bitcast %struct.GimpSplash* %17 to i8*
  call void @g_slice_free1(i64 120, i8* %18)
  br label %do.end

do.end:                                           ; preds = %do.body
  store %struct.GimpSplash* null, %struct.GimpSplash** @splash, align 8
  br label %return

return:                                           ; preds = %do.end, %if.then
  ret void
}

declare void @gtk_widget_destroy(%struct._GtkWidget*) #1

declare void @g_free(i8*) #1

declare void @g_timer_destroy(%struct._GTimer*) #1

declare void @g_slice_free1(i64, i8*) #1

; Function Attrs: nounwind uwtable
define void @splash_update(i8* %text1, i8* %text2, double %percentage) #0 {
entry:
  %text1.addr = alloca i8*, align 8
  %text2.addr = alloca i8*, align 8
  %percentage.addr = alloca double, align 8
  %expose = alloca %struct._GdkRectangle, align 4
  store i8* %text1, i8** %text1.addr, align 8
  store i8* %text2, i8** %text2.addr, align 8
  store double %percentage, double* %percentage.addr, align 8
  %0 = bitcast %struct._GdkRectangle* %expose to i8*
  call void @llvm.memset.p0i8.i64(i8* %0, i8 0, i64 16, i32 4, i1 false)
  br label %do.body

do.body:                                          ; preds = %entry
  %1 = load double, double* %percentage.addr, align 8
  %cmp = fcmp oge double %1, 0.000000e+00
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %do.body
  %2 = load double, double* %percentage.addr, align 8
  %cmp1 = fcmp ole double %2, 1.000000e+00
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.splash_update, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.13, i32 0, i32 0))
  br label %if.end.51

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %3 = load %struct.GimpSplash*, %struct.GimpSplash** @splash, align 8
  %tobool = icmp ne %struct.GimpSplash* %3, null
  br i1 %tobool, label %if.end.3, label %if.then.2

if.then.2:                                        ; preds = %do.end
  br label %if.end.51

if.end.3:                                         ; preds = %do.end
  %4 = load %struct.GimpSplash*, %struct.GimpSplash** @splash, align 8
  %5 = load i8*, i8** %text1.addr, align 8
  %6 = load i8*, i8** %text2.addr, align 8
  call void @splash_position_layouts(%struct.GimpSplash* %4, i8* %5, i8* %6, %struct._GdkRectangle* %expose)
  %width = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %expose, i32 0, i32 2
  %7 = load i32, i32* %width, align 4
  %cmp4 = icmp sgt i32 %7, 0
  br i1 %cmp4, label %land.lhs.true.5, label %if.end.10

land.lhs.true.5:                                  ; preds = %if.end.3
  %height = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %expose, i32 0, i32 3
  %8 = load i32, i32* %height, align 4
  %cmp6 = icmp sgt i32 %8, 0
  br i1 %cmp6, label %if.then.7, label %if.end.10

if.then.7:                                        ; preds = %land.lhs.true.5
  %9 = load %struct.GimpSplash*, %struct.GimpSplash** @splash, align 8
  %area = getelementptr inbounds %struct.GimpSplash, %struct.GimpSplash* %9, i32 0, i32 1
  %10 = load %struct._GtkWidget*, %struct._GtkWidget** %area, align 8
  %x = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %expose, i32 0, i32 0
  %11 = load i32, i32* %x, align 4
  %y = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %expose, i32 0, i32 1
  %12 = load i32, i32* %y, align 4
  %width8 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %expose, i32 0, i32 2
  %13 = load i32, i32* %width8, align 4
  %height9 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %expose, i32 0, i32 3
  %14 = load i32, i32* %height9, align 4
  call void @gtk_widget_queue_draw_area(%struct._GtkWidget* %10, i32 %11, i32 %12, i32 %13, i32 %14)
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.7, %land.lhs.true.5, %if.end.3
  %15 = load i8*, i8** %text1.addr, align 8
  %cmp11 = icmp eq i8* %15, null
  br i1 %cmp11, label %land.lhs.true.14, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.10
  %16 = load i8*, i8** %text1.addr, align 8
  %17 = load %struct.GimpSplash*, %struct.GimpSplash** @splash, align 8
  %text112 = getelementptr inbounds %struct.GimpSplash, %struct.GimpSplash* %17, i32 0, i32 13
  %18 = load i8*, i8** %text112, align 8
  %call = call i32 @g_strcmp0(i8* %16, i8* %18)
  %tobool13 = icmp ne i32 %call, 0
  br i1 %tobool13, label %if.else.38, label %land.lhs.true.14

land.lhs.true.14:                                 ; preds = %lor.lhs.false, %if.end.10
  %19 = load i8*, i8** %text2.addr, align 8
  %cmp15 = icmp eq i8* %19, null
  br i1 %cmp15, label %land.lhs.true.20, label %lor.lhs.false.16

lor.lhs.false.16:                                 ; preds = %land.lhs.true.14
  %20 = load i8*, i8** %text2.addr, align 8
  %21 = load %struct.GimpSplash*, %struct.GimpSplash** @splash, align 8
  %text217 = getelementptr inbounds %struct.GimpSplash, %struct.GimpSplash* %21, i32 0, i32 14
  %22 = load i8*, i8** %text217, align 8
  %call18 = call i32 @g_strcmp0(i8* %20, i8* %22)
  %tobool19 = icmp ne i32 %call18, 0
  br i1 %tobool19, label %if.else.38, label %land.lhs.true.20

land.lhs.true.20:                                 ; preds = %lor.lhs.false.16, %land.lhs.true.14
  %23 = load double, double* %percentage.addr, align 8
  %24 = load %struct.GimpSplash*, %struct.GimpSplash** @splash, align 8
  %percentage21 = getelementptr inbounds %struct.GimpSplash, %struct.GimpSplash* %24, i32 0, i32 12
  %25 = load double, double* %percentage21, align 8
  %cmp22 = fcmp oeq double %23, %25
  br i1 %cmp22, label %if.then.23, label %if.else.38

if.then.23:                                       ; preds = %land.lhs.true.20
  %26 = load i8*, i8** %text1.addr, align 8
  %tobool24 = icmp ne i8* %26, null
  br i1 %tobool24, label %if.then.25, label %if.end.29

if.then.25:                                       ; preds = %if.then.23
  %27 = load %struct.GimpSplash*, %struct.GimpSplash** @splash, align 8
  %text126 = getelementptr inbounds %struct.GimpSplash, %struct.GimpSplash* %27, i32 0, i32 13
  %28 = load i8*, i8** %text126, align 8
  call void @g_free(i8* %28)
  %29 = load i8*, i8** %text1.addr, align 8
  %call27 = call noalias i8* @g_strdup(i8* %29)
  %30 = load %struct.GimpSplash*, %struct.GimpSplash** @splash, align 8
  %text128 = getelementptr inbounds %struct.GimpSplash, %struct.GimpSplash* %30, i32 0, i32 13
  store i8* %call27, i8** %text128, align 8
  br label %if.end.29

if.end.29:                                        ; preds = %if.then.25, %if.then.23
  %31 = load i8*, i8** %text2.addr, align 8
  %tobool30 = icmp ne i8* %31, null
  br i1 %tobool30, label %if.then.31, label %if.end.35

if.then.31:                                       ; preds = %if.end.29
  %32 = load %struct.GimpSplash*, %struct.GimpSplash** @splash, align 8
  %text232 = getelementptr inbounds %struct.GimpSplash, %struct.GimpSplash* %32, i32 0, i32 14
  %33 = load i8*, i8** %text232, align 8
  call void @g_free(i8* %33)
  %34 = load i8*, i8** %text2.addr, align 8
  %call33 = call noalias i8* @g_strdup(i8* %34)
  %35 = load %struct.GimpSplash*, %struct.GimpSplash** @splash, align 8
  %text234 = getelementptr inbounds %struct.GimpSplash, %struct.GimpSplash* %35, i32 0, i32 14
  store i8* %call33, i8** %text234, align 8
  br label %if.end.35

if.end.35:                                        ; preds = %if.then.31, %if.end.29
  %36 = load %struct.GimpSplash*, %struct.GimpSplash** @splash, align 8
  %progress = getelementptr inbounds %struct.GimpSplash, %struct.GimpSplash* %36, i32 0, i32 4
  %37 = load %struct._GtkWidget*, %struct._GtkWidget** %progress, align 8
  %38 = bitcast %struct._GtkWidget* %37 to %struct._GTypeInstance*
  %call36 = call i64 @gtk_progress_bar_get_type() #7
  %call37 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %38, i64 %call36)
  %39 = bitcast %struct._GTypeInstance* %call37 to %struct._GtkProgressBar*
  call void @gtk_progress_bar_pulse(%struct._GtkProgressBar* %39)
  br label %if.end.42

if.else.38:                                       ; preds = %land.lhs.true.20, %lor.lhs.false.16, %lor.lhs.false
  %40 = load %struct.GimpSplash*, %struct.GimpSplash** @splash, align 8
  %progress39 = getelementptr inbounds %struct.GimpSplash, %struct.GimpSplash* %40, i32 0, i32 4
  %41 = load %struct._GtkWidget*, %struct._GtkWidget** %progress39, align 8
  %42 = bitcast %struct._GtkWidget* %41 to %struct._GTypeInstance*
  %call40 = call i64 @gtk_progress_bar_get_type() #7
  %call41 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %42, i64 %call40)
  %43 = bitcast %struct._GTypeInstance* %call41 to %struct._GtkProgressBar*
  %44 = load double, double* %percentage.addr, align 8
  call void @gtk_progress_bar_set_fraction(%struct._GtkProgressBar* %43, double %44)
  br label %if.end.42

if.end.42:                                        ; preds = %if.else.38, %if.end.35
  %45 = load double, double* %percentage.addr, align 8
  %46 = load %struct.GimpSplash*, %struct.GimpSplash** @splash, align 8
  %percentage43 = getelementptr inbounds %struct.GimpSplash, %struct.GimpSplash* %46, i32 0, i32 12
  store double %45, double* %percentage43, align 8
  %47 = load %struct.GimpSplash*, %struct.GimpSplash** @splash, align 8
  %timer = getelementptr inbounds %struct.GimpSplash, %struct.GimpSplash* %47, i32 0, i32 15
  %48 = load %struct._GTimer*, %struct._GTimer** %timer, align 8
  %tobool44 = icmp ne %struct._GTimer* %48, null
  br i1 %tobool44, label %if.then.45, label %if.end.46

if.then.45:                                       ; preds = %if.end.42
  call void @splash_timer_elapsed()
  br label %if.end.46

if.end.46:                                        ; preds = %if.then.45, %if.end.42
  %call47 = call i32 @gtk_events_pending()
  %tobool48 = icmp ne i32 %call47, 0
  br i1 %tobool48, label %if.then.49, label %if.end.51

if.then.49:                                       ; preds = %if.end.46
  %call50 = call i32 @gtk_main_iteration()
  br label %if.end.51

if.end.51:                                        ; preds = %if.else, %if.then.2, %if.then.49, %if.end.46
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #5

declare void @gtk_widget_queue_draw_area(%struct._GtkWidget*, i32, i32, i32, i32) #1

declare i32 @g_strcmp0(i8*, i8*) #1

declare noalias i8* @g_strdup(i8*) #1

declare void @gtk_progress_bar_pulse(%struct._GtkProgressBar*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_progress_bar_get_type() #2

declare void @gtk_progress_bar_set_fraction(%struct._GtkProgressBar*, double) #1

; Function Attrs: nounwind uwtable
define internal void @splash_timer_elapsed() #0 {
entry:
  %elapsed = alloca double, align 8
  %0 = load %struct.GimpSplash*, %struct.GimpSplash** @splash, align 8
  %timer = getelementptr inbounds %struct.GimpSplash, %struct.GimpSplash* %0, i32 0, i32 15
  %1 = load %struct._GTimer*, %struct._GTimer** %timer, align 8
  %call = call double @g_timer_elapsed(%struct._GTimer* %1, i64* null)
  store double %call, double* %elapsed, align 8
  %2 = load double, double* %elapsed, align 8
  %3 = load double, double* %elapsed, align 8
  %4 = load %struct.GimpSplash*, %struct.GimpSplash** @splash, align 8
  %last_time = getelementptr inbounds %struct.GimpSplash, %struct.GimpSplash* %4, i32 0, i32 16
  %5 = load double, double* %last_time, align 8
  %sub = fsub double %3, %5
  %6 = load %struct.GimpSplash*, %struct.GimpSplash** @splash, align 8
  %text1 = getelementptr inbounds %struct.GimpSplash, %struct.GimpSplash* %6, i32 0, i32 13
  %7 = load i8*, i8** %text1, align 8
  %tobool = icmp ne i8* %7, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %8 = load %struct.GimpSplash*, %struct.GimpSplash** @splash, align 8
  %text11 = getelementptr inbounds %struct.GimpSplash, %struct.GimpSplash* %8, i32 0, i32 13
  %9 = load i8*, i8** %text11, align 8
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %9, %cond.true ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.11, i32 0, i32 0), %cond.false ]
  %10 = load %struct.GimpSplash*, %struct.GimpSplash** @splash, align 8
  %percentage = getelementptr inbounds %struct.GimpSplash, %struct.GimpSplash* %10, i32 0, i32 12
  %11 = load double, double* %percentage, align 8
  %mul = fmul double %11, 1.000000e+02
  %12 = load %struct.GimpSplash*, %struct.GimpSplash** @splash, align 8
  %text2 = getelementptr inbounds %struct.GimpSplash, %struct.GimpSplash* %12, i32 0, i32 14
  %13 = load i8*, i8** %text2, align 8
  %tobool2 = icmp ne i8* %13, null
  br i1 %tobool2, label %cond.true.3, label %cond.false.5

cond.true.3:                                      ; preds = %cond.end
  %14 = load %struct.GimpSplash*, %struct.GimpSplash** @splash, align 8
  %text24 = getelementptr inbounds %struct.GimpSplash, %struct.GimpSplash* %14, i32 0, i32 14
  %15 = load i8*, i8** %text24, align 8
  br label %cond.end.6

cond.false.5:                                     ; preds = %cond.end
  br label %cond.end.6

cond.end.6:                                       ; preds = %cond.false.5, %cond.true.3
  %cond7 = phi i8* [ %15, %cond.true.3 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.11, i32 0, i32 0), %cond.false.5 ]
  call void (i8*, ...) @g_printerr(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.24, i32 0, i32 0), double %2, double %sub, i8* %cond, double %mul, i8* %cond7)
  %16 = load double, double* %elapsed, align 8
  %17 = load %struct.GimpSplash*, %struct.GimpSplash** @splash, align 8
  %last_time8 = getelementptr inbounds %struct.GimpSplash, %struct.GimpSplash* %17, i32 0, i32 16
  store double %16, double* %last_time8, align 8
  ret void
}

declare i32 @gtk_events_pending() #1

declare i32 @gtk_main_iteration() #1

declare %struct._cairo* @gdk_cairo_create(%struct._GdkDrawable*) #1

declare void @gdk_cairo_region(%struct._cairo*, %struct._GdkRegion*) #1

declare void @cairo_clip(%struct._cairo*) #1

declare void @gdk_cairo_set_source_color(%struct._cairo*, %struct._GdkColor*) #1

declare void @cairo_move_to(%struct._cairo*, double, double) #1

declare void @pango_cairo_show_layout(%struct._cairo*, %struct._PangoLayout*) #1

declare void @cairo_destroy(%struct._cairo*) #1

declare void @pango_layout_get_pixel_extents(%struct._PangoLayout*, %struct._PangoRectangle*, %struct._PangoRectangle*) #1

; Function Attrs: nounwind uwtable
define internal void @splash_rectangle_union(%struct._GdkRectangle* %dest, %struct._PangoRectangle* %pango_rect, i32 %offset_x, i32 %offset_y) #0 {
entry:
  %dest.addr = alloca %struct._GdkRectangle*, align 8
  %pango_rect.addr = alloca %struct._PangoRectangle*, align 8
  %offset_x.addr = alloca i32, align 4
  %offset_y.addr = alloca i32, align 4
  %rect = alloca %struct._GdkRectangle, align 4
  store %struct._GdkRectangle* %dest, %struct._GdkRectangle** %dest.addr, align 8
  store %struct._PangoRectangle* %pango_rect, %struct._PangoRectangle** %pango_rect.addr, align 8
  store i32 %offset_x, i32* %offset_x.addr, align 4
  store i32 %offset_y, i32* %offset_y.addr, align 4
  %0 = load %struct._PangoRectangle*, %struct._PangoRectangle** %pango_rect.addr, align 8
  %x = getelementptr inbounds %struct._PangoRectangle, %struct._PangoRectangle* %0, i32 0, i32 0
  %1 = load i32, i32* %x, align 4
  %2 = load i32, i32* %offset_x.addr, align 4
  %add = add nsw i32 %1, %2
  %x1 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %rect, i32 0, i32 0
  store i32 %add, i32* %x1, align 4
  %3 = load %struct._PangoRectangle*, %struct._PangoRectangle** %pango_rect.addr, align 8
  %y = getelementptr inbounds %struct._PangoRectangle, %struct._PangoRectangle* %3, i32 0, i32 1
  %4 = load i32, i32* %y, align 4
  %5 = load i32, i32* %offset_y.addr, align 4
  %add2 = add nsw i32 %4, %5
  %y3 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %rect, i32 0, i32 1
  store i32 %add2, i32* %y3, align 4
  %6 = load %struct._PangoRectangle*, %struct._PangoRectangle** %pango_rect.addr, align 8
  %width = getelementptr inbounds %struct._PangoRectangle, %struct._PangoRectangle* %6, i32 0, i32 2
  %7 = load i32, i32* %width, align 4
  %width4 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %rect, i32 0, i32 2
  store i32 %7, i32* %width4, align 4
  %8 = load %struct._PangoRectangle*, %struct._PangoRectangle** %pango_rect.addr, align 8
  %height = getelementptr inbounds %struct._PangoRectangle, %struct._PangoRectangle* %8, i32 0, i32 3
  %9 = load i32, i32* %height, align 4
  %height5 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %rect, i32 0, i32 3
  store i32 %9, i32* %height5, align 4
  %10 = load %struct._GdkRectangle*, %struct._GdkRectangle** %dest.addr, align 8
  %width6 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %10, i32 0, i32 2
  %11 = load i32, i32* %width6, align 4
  %cmp = icmp sgt i32 %11, 0
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %12 = load %struct._GdkRectangle*, %struct._GdkRectangle** %dest.addr, align 8
  %height7 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %12, i32 0, i32 3
  %13 = load i32, i32* %height7, align 4
  %cmp8 = icmp sgt i32 %13, 0
  br i1 %cmp8, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %14 = load %struct._GdkRectangle*, %struct._GdkRectangle** %dest.addr, align 8
  %15 = load %struct._GdkRectangle*, %struct._GdkRectangle** %dest.addr, align 8
  call void @gdk_rectangle_union(%struct._GdkRectangle* %14, %struct._GdkRectangle* %rect, %struct._GdkRectangle* %15)
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %entry
  %16 = load %struct._GdkRectangle*, %struct._GdkRectangle** %dest.addr, align 8
  %17 = bitcast %struct._GdkRectangle* %16 to i8*
  %18 = bitcast %struct._GdkRectangle* %rect to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %17, i8* %18, i64 16, i32 4, i1 false)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

declare void @pango_layout_set_text(%struct._PangoLayout*, i8*, i32) #1

declare void @gdk_rectangle_union(%struct._GdkRectangle*, %struct._GdkRectangle*, %struct._GdkRectangle*) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #5

; Function Attrs: nounwind readnone
declare i64 @gdk_pixbuf_get_type() #2

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #6

declare i32 @gdk_pixbuf_get_bits_per_sample(%struct._GdkPixbuf*) #1

declare i32 @gdk_pixbuf_get_width(%struct._GdkPixbuf*) #1

declare i32 @gdk_pixbuf_get_height(%struct._GdkPixbuf*) #1

declare i32 @gdk_pixbuf_get_rowstride(%struct._GdkPixbuf*) #1

declare i32 @gdk_pixbuf_get_n_channels(%struct._GdkPixbuf*) #1

declare i8* @gdk_pixbuf_get_pixels(%struct._GdkPixbuf*) #1

declare i32 @gdk_rectangle_intersect(%struct._GdkRectangle*, %struct._GdkRectangle*, %struct._GdkRectangle*) #1

declare i32 @gdk_colormap_alloc_color(%struct._GdkColormap*, %struct._GdkColor*, i32, i32) #1

declare %struct._GdkColormap* @gtk_widget_get_colormap(%struct._GtkWidget*) #1

declare noalias i8* @gimp_personal_rc_file(i8*) #1

declare void @g_printerr(i8*, ...) #1

declare %struct._GdkPixbufAnimation* @gdk_pixbuf_animation_new_from_file(i8*, %struct._GError**) #1

; Function Attrs: nounwind uwtable
define internal %struct._GdkPixbufAnimation* @splash_image_pick_from_dir(i8* %dirname, i32 %be_verbose) #0 {
entry:
  %dirname.addr = alloca i8*, align 8
  %be_verbose.addr = alloca i32, align 4
  %pixbuf = alloca %struct._GdkPixbufAnimation*, align 8
  %dir = alloca %struct._GDir*, align 8
  %entry1 = alloca i8*, align 8
  %splashes = alloca %struct._GList*, align 8
  %i = alloca i32, align 4
  %filename = alloca i8*, align 8
  store i8* %dirname, i8** %dirname.addr, align 8
  store i32 %be_verbose, i32* %be_verbose.addr, align 4
  store %struct._GdkPixbufAnimation* null, %struct._GdkPixbufAnimation** %pixbuf, align 8
  %0 = load i8*, i8** %dirname.addr, align 8
  %call = call %struct._GDir* @g_dir_open(i8* %0, i32 0, %struct._GError** null)
  store %struct._GDir* %call, %struct._GDir** %dir, align 8
  %1 = load %struct._GDir*, %struct._GDir** %dir, align 8
  %tobool = icmp ne %struct._GDir* %1, null
  br i1 %tobool, label %if.then, label %if.end.20

if.then:                                          ; preds = %entry
  store %struct._GList* null, %struct._GList** %splashes, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then
  %2 = load %struct._GDir*, %struct._GDir** %dir, align 8
  %call2 = call i8* @g_dir_read_name(%struct._GDir* %2)
  store i8* %call2, i8** %entry1, align 8
  %tobool3 = icmp ne i8* %call2, null
  br i1 %tobool3, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load %struct._GList*, %struct._GList** %splashes, align 8
  %4 = load i8*, i8** %entry1, align 8
  %call4 = call noalias i8* @g_strdup(i8* %4)
  %call5 = call %struct._GList* @g_list_prepend(%struct._GList* %3, i8* %call4)
  store %struct._GList* %call5, %struct._GList** %splashes, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %5 = load %struct._GDir*, %struct._GDir** %dir, align 8
  call void @g_dir_close(%struct._GDir* %5)
  %6 = load %struct._GList*, %struct._GList** %splashes, align 8
  %tobool6 = icmp ne %struct._GList* %6, null
  br i1 %tobool6, label %if.then.7, label %if.end.19

if.then.7:                                        ; preds = %while.end
  %7 = load %struct._GList*, %struct._GList** %splashes, align 8
  %call8 = call i32 @g_list_length(%struct._GList* %7)
  %call9 = call i32 @g_random_int_range(i32 0, i32 %call8)
  store i32 %call9, i32* %i, align 4
  %8 = load i8*, i8** %dirname.addr, align 8
  %9 = load %struct._GList*, %struct._GList** %splashes, align 8
  %10 = load i32, i32* %i, align 4
  %call10 = call i8* @g_list_nth_data(%struct._GList* %9, i32 %10)
  %call11 = call noalias i8* (i8*, ...) @g_build_filename(i8* %8, i8* %call10, i8* null)
  store i8* %call11, i8** %filename, align 8
  %11 = load i32, i32* %be_verbose.addr, align 4
  %tobool12 = icmp ne i32 %11, 0
  br i1 %tobool12, label %if.then.13, label %if.end

if.then.13:                                       ; preds = %if.then.7
  %12 = load i8*, i8** %filename, align 8
  call void (i8*, ...) @g_printerr(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.19, i32 0, i32 0), i8* %12)
  br label %if.end

if.end:                                           ; preds = %if.then.13, %if.then.7
  %13 = load i8*, i8** %filename, align 8
  %call14 = call %struct._GdkPixbufAnimation* @gdk_pixbuf_animation_new_from_file(i8* %13, %struct._GError** null)
  store %struct._GdkPixbufAnimation* %call14, %struct._GdkPixbufAnimation** %pixbuf, align 8
  %14 = load i8*, i8** %filename, align 8
  call void @g_free(i8* %14)
  %15 = load i32, i32* %be_verbose.addr, align 4
  %tobool15 = icmp ne i32 %15, 0
  br i1 %tobool15, label %if.then.16, label %if.end.18

if.then.16:                                       ; preds = %if.end
  %16 = load %struct._GdkPixbufAnimation*, %struct._GdkPixbufAnimation** %pixbuf, align 8
  %tobool17 = icmp ne %struct._GdkPixbufAnimation* %16, null
  %cond = select i1 %tobool17, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.21, i32 0, i32 0)
  call void (i8*, ...) @g_printerr(i8* %cond)
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.16, %if.end
  %17 = load %struct._GList*, %struct._GList** %splashes, align 8
  call void @g_list_free_full(%struct._GList* %17, void (i8*)* @g_free)
  br label %if.end.19

if.end.19:                                        ; preds = %if.end.18, %while.end
  br label %if.end.20

if.end.20:                                        ; preds = %if.end.19, %entry
  %18 = load %struct._GdkPixbufAnimation*, %struct._GdkPixbufAnimation** %pixbuf, align 8
  ret %struct._GdkPixbufAnimation* %18
}

declare noalias i8* @g_build_filename(i8*, ...) #1

; Function Attrs: nounwind readnone
declare i8* @gimp_data_directory() #2

declare %struct._GDir* @g_dir_open(i8*, i32, %struct._GError**) #1

declare i8* @g_dir_read_name(%struct._GDir*) #1

declare %struct._GList* @g_list_prepend(%struct._GList*, i8*) #1

declare void @g_dir_close(%struct._GDir*) #1

declare i32 @g_random_int_range(i32, i32) #1

declare i32 @g_list_length(%struct._GList*) #1

declare i8* @g_list_nth_data(%struct._GList*, i32) #1

declare void @g_list_free_full(%struct._GList*, void (i8*)*) #1

declare double @g_timer_elapsed(%struct._GTimer*, i64*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind readnone }
attributes #8 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
