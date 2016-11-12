; ModuleID = './libgimp/gimpmenu.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

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
%struct._GtkMenu = type { %struct._GtkMenuShell, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkAccelGroup*, i8*, void (%struct._GtkMenu*, i32*, i32*, i32*, i8*)*, i8*, i32, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkAdjustment*, %struct._GdkDrawable*, %struct._GdkDrawable*, i32, i32, i32, i32, %struct._GdkRegion*, i32, i8 }
%struct._GtkMenuShell = type { %struct._GtkContainer, %struct._GList*, %struct._GtkWidget*, %struct._GtkWidget*, i32, i32, i8 }
%struct._GtkContainer = type { %struct._GtkWidget, %struct._GtkWidget*, i24 }
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct._GtkAccelGroup = type { %struct._GObject, i32, i32, %struct._GSList*, i32, %struct._GtkAccelGroupEntry* }
%struct._GtkAccelGroupEntry = type { %struct._GtkAccelKey, %struct._GClosure*, i32 }
%struct._GtkAccelKey = type { i32, i32, i16 }
%struct._GClosure = type { i32, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i8*, %struct._GClosureNotifyData* }
%struct._GValue = type { i64, [2 x %union.anon] }
%union.anon = type { i64 }
%struct._GClosureNotifyData = type { i8*, void (i8*, %struct._GClosure*)* }
%struct._GtkAdjustment = type { %struct._GtkObject, double, double, double, double, double, double }
%struct._GdkRegion = type opaque
%struct._GtkBox = type { %struct._GtkContainer, %struct._GList*, i16, i8 }
%struct._GdkPixbuf = type opaque

@.str = private unnamed_addr constant [8 x i8] c"LibGimp\00", align 1
@__func__.gimp_image_menu_new = private unnamed_addr constant [20 x i8] c"gimp_image_menu_new\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"callback != NULL\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"%s-%d\00", align 1
@__func__.gimp_layer_menu_new = private unnamed_addr constant [20 x i8] c"gimp_layer_menu_new\00", align 1
@__func__.gimp_channel_menu_new = private unnamed_addr constant [22 x i8] c"gimp_channel_menu_new\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"gimp-menu-callback\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"gimp-menu-callback-data\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"%s/%s-%d\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"activate\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"gimp20-libgimp\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"(Empty)\00", align 1

; Function Attrs: nounwind uwtable
define %struct._GtkWidget* @gimp_image_menu_new(i32 (i32, i32, i8*)* %constraint, void (i32, i8*)* %callback, i8* %data, i32 %active_image) #0 {
entry:
  %retval = alloca %struct._GtkWidget*, align 8
  %constraint.addr = alloca i32 (i32, i32, i8*)*, align 8
  %callback.addr = alloca void (i32, i8*)*, align 8
  %data.addr = alloca i8*, align 8
  %active_image.addr = alloca i32, align 4
  %menu = alloca %struct._GtkWidget*, align 8
  %name = alloca i8*, align 8
  %label = alloca i8*, align 8
  %images = alloca i32*, align 8
  %image = alloca i32, align 4
  %n_images = alloca i32, align 4
  %i = alloca i32, align 4
  %k = alloca i32, align 4
  store i32 (i32, i32, i8*)* %constraint, i32 (i32, i32, i8*)** %constraint.addr, align 8
  store void (i32, i8*)* %callback, void (i32, i8*)** %callback.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  store i32 %active_image, i32* %active_image.addr, align 4
  store i32 -1, i32* %image, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load void (i32, i8*)*, void (i32, i8*)** %callback.addr, align 8
  %cmp = icmp ne void (i32, i8*)* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.gimp_image_menu_new, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i32 0, i32 0))
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %1 = load void (i32, i8*)*, void (i32, i8*)** %callback.addr, align 8
  %2 = load i8*, i8** %data.addr, align 8
  %call = call %struct._GtkWidget* @gimp_menu_make_menu(void (i32, i8*)* %1, i8* %2)
  store %struct._GtkWidget* %call, %struct._GtkWidget** %menu, align 8
  %call1 = call i32* @gimp_image_list(i32* %n_images)
  store i32* %call1, i32** %images, align 8
  store i32 0, i32* %i, align 4
  store i32 0, i32* %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.end
  %3 = load i32, i32* %i, align 4
  %4 = load i32, i32* %n_images, align 4
  %cmp2 = icmp slt i32 %3, %4
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i32 (i32, i32, i8*)*, i32 (i32, i32, i8*)** %constraint.addr, align 8
  %tobool = icmp ne i32 (i32, i32, i8*)* %5, null
  br i1 %tobool, label %lor.lhs.false, label %if.then.5

lor.lhs.false:                                    ; preds = %for.body
  %6 = load i32 (i32, i32, i8*)*, i32 (i32, i32, i8*)** %constraint.addr, align 8
  %7 = load i32, i32* %i, align 4
  %idxprom = sext i32 %7 to i64
  %8 = load i32*, i32** %images, align 8
  %arrayidx = getelementptr inbounds i32, i32* %8, i64 %idxprom
  %9 = load i32, i32* %arrayidx, align 4
  %10 = load i8*, i8** %data.addr, align 8
  %call3 = call i32 %6(i32 %9, i32 -1, i8* %10)
  %tobool4 = icmp ne i32 %call3, 0
  br i1 %tobool4, label %if.then.5, label %if.end.28

if.then.5:                                        ; preds = %lor.lhs.false, %for.body
  %11 = load i32, i32* %i, align 4
  %idxprom6 = sext i32 %11 to i64
  %12 = load i32*, i32** %images, align 8
  %arrayidx7 = getelementptr inbounds i32, i32* %12, i64 %idxprom6
  %13 = load i32, i32* %arrayidx7, align 4
  %call8 = call i8* @gimp_image_get_name(i32 %13)
  store i8* %call8, i8** %name, align 8
  %14 = load i8*, i8** %name, align 8
  %15 = load i32, i32* %i, align 4
  %idxprom9 = sext i32 %15 to i64
  %16 = load i32*, i32** %images, align 8
  %arrayidx10 = getelementptr inbounds i32, i32* %16, i64 %idxprom9
  %17 = load i32, i32* %arrayidx10, align 4
  %call11 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i8* %14, i32 %17)
  store i8* %call11, i8** %label, align 8
  %18 = load i8*, i8** %name, align 8
  call void @g_free(i8* %18)
  %19 = load %struct._GtkWidget*, %struct._GtkWidget** %menu, align 8
  %20 = load i8*, i8** %label, align 8
  %21 = load i32, i32* %i, align 4
  %idxprom12 = sext i32 %21 to i64
  %22 = load i32*, i32** %images, align 8
  %arrayidx13 = getelementptr inbounds i32, i32* %22, i64 %idxprom12
  %23 = load i32, i32* %arrayidx13, align 4
  %call14 = call %struct._GtkWidget* @gimp_menu_add_item(%struct._GtkWidget* %19, i8* %20, i8* null, i32 %23)
  %24 = load i8*, i8** %label, align 8
  call void @g_free(i8* %24)
  %25 = load i32, i32* %i, align 4
  %idxprom15 = sext i32 %25 to i64
  %26 = load i32*, i32** %images, align 8
  %arrayidx16 = getelementptr inbounds i32, i32* %26, i64 %idxprom15
  %27 = load i32, i32* %arrayidx16, align 4
  %28 = load i32, i32* %active_image.addr, align 4
  %cmp17 = icmp eq i32 %27, %28
  br i1 %cmp17, label %if.then.18, label %if.else.21

if.then.18:                                       ; preds = %if.then.5
  %29 = load i32, i32* %active_image.addr, align 4
  store i32 %29, i32* %image, align 4
  %30 = load %struct._GtkWidget*, %struct._GtkWidget** %menu, align 8
  %31 = bitcast %struct._GtkWidget* %30 to %struct._GTypeInstance*
  %call19 = call i64 @gtk_menu_get_type() #4
  %call20 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %31, i64 %call19)
  %32 = bitcast %struct._GTypeInstance* %call20 to %struct._GtkMenu*
  %33 = load i32, i32* %k, align 4
  call void @gtk_menu_set_active(%struct._GtkMenu* %32, i32 %33)
  br label %if.end.27

if.else.21:                                       ; preds = %if.then.5
  %34 = load i32, i32* %image, align 4
  %cmp22 = icmp eq i32 %34, -1
  br i1 %cmp22, label %if.then.23, label %if.end.26

if.then.23:                                       ; preds = %if.else.21
  %35 = load i32, i32* %i, align 4
  %idxprom24 = sext i32 %35 to i64
  %36 = load i32*, i32** %images, align 8
  %arrayidx25 = getelementptr inbounds i32, i32* %36, i64 %idxprom24
  %37 = load i32, i32* %arrayidx25, align 4
  store i32 %37, i32* %image, align 4
  br label %if.end.26

if.end.26:                                        ; preds = %if.then.23, %if.else.21
  br label %if.end.27

if.end.27:                                        ; preds = %if.end.26, %if.then.18
  %38 = load i32, i32* %k, align 4
  %add = add nsw i32 %38, 1
  store i32 %add, i32* %k, align 4
  br label %if.end.28

if.end.28:                                        ; preds = %if.end.27, %lor.lhs.false
  br label %for.inc

for.inc:                                          ; preds = %if.end.28
  %39 = load i32, i32* %i, align 4
  %inc = add nsw i32 %39, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %40 = load i32, i32* %k, align 4
  %cmp29 = icmp eq i32 %40, 0
  br i1 %cmp29, label %if.then.30, label %if.end.32

if.then.30:                                       ; preds = %for.end
  %41 = load %struct._GtkWidget*, %struct._GtkWidget** %menu, align 8
  %call31 = call %struct._GtkWidget* @gimp_menu_add_empty(%struct._GtkWidget* %41)
  br label %if.end.32

if.end.32:                                        ; preds = %if.then.30, %for.end
  %42 = load void (i32, i8*)*, void (i32, i8*)** %callback.addr, align 8
  %43 = load i32, i32* %image, align 4
  %44 = load i8*, i8** %data.addr, align 8
  call void %42(i32 %43, i8* %44)
  %45 = load i32*, i32** %images, align 8
  %46 = bitcast i32* %45 to i8*
  call void @g_free(i8* %46)
  %47 = load %struct._GtkWidget*, %struct._GtkWidget** %menu, align 8
  store %struct._GtkWidget* %47, %struct._GtkWidget** %retval
  br label %return

return:                                           ; preds = %if.end.32, %if.else
  %48 = load %struct._GtkWidget*, %struct._GtkWidget** %retval
  ret %struct._GtkWidget* %48
}

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

; Function Attrs: nounwind uwtable
define internal %struct._GtkWidget* @gimp_menu_make_menu(void (i32, i8*)* %callback, i8* %data) #0 {
entry:
  %callback.addr = alloca void (i32, i8*)*, align 8
  %data.addr = alloca i8*, align 8
  %menu = alloca %struct._GtkWidget*, align 8
  store void (i32, i8*)* %callback, void (i32, i8*)** %callback.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %call = call %struct._GtkWidget* @gtk_menu_new()
  store %struct._GtkWidget* %call, %struct._GtkWidget** %menu, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %menu, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 80)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GObject*
  %3 = load void (i32, i8*)*, void (i32, i8*)** %callback.addr, align 8
  %4 = bitcast void (i32, i8*)* %3 to i8*
  call void @g_object_set_data(%struct._GObject* %2, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i32 0, i32 0), i8* %4)
  %5 = load %struct._GtkWidget*, %struct._GtkWidget** %menu, align 8
  %6 = bitcast %struct._GtkWidget* %5 to %struct._GTypeInstance*
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %6, i64 80)
  %7 = bitcast %struct._GTypeInstance* %call2 to %struct._GObject*
  %8 = load i8*, i8** %data.addr, align 8
  call void @g_object_set_data(%struct._GObject* %7, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i32 0, i32 0), i8* %8)
  %9 = load %struct._GtkWidget*, %struct._GtkWidget** %menu, align 8
  ret %struct._GtkWidget* %9
}

declare i32* @gimp_image_list(i32*) #1

declare i8* @gimp_image_get_name(i32) #1

declare noalias i8* @g_strdup_printf(i8*, ...) #1

declare void @g_free(i8*) #1

; Function Attrs: nounwind uwtable
define internal %struct._GtkWidget* @gimp_menu_add_item(%struct._GtkWidget* %menu, i8* %image_name, i8* %drawable_name, i32 %any_ID) #0 {
entry:
  %menu.addr = alloca %struct._GtkWidget*, align 8
  %image_name.addr = alloca i8*, align 8
  %drawable_name.addr = alloca i8*, align 8
  %any_ID.addr = alloca i32, align 4
  %menuitem = alloca %struct._GtkWidget*, align 8
  %hbox = alloca %struct._GtkWidget*, align 8
  %vbox = alloca %struct._GtkWidget*, align 8
  %preview = alloca %struct._GtkWidget*, align 8
  %label = alloca %struct._GtkWidget*, align 8
  %str = alloca i8*, align 8
  store %struct._GtkWidget* %menu, %struct._GtkWidget** %menu.addr, align 8
  store i8* %image_name, i8** %image_name.addr, align 8
  store i8* %drawable_name, i8** %drawable_name.addr, align 8
  store i32 %any_ID, i32* %any_ID.addr, align 4
  %0 = load i8*, i8** %drawable_name.addr, align 8
  %tobool = icmp ne i8* %0, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %image_name.addr, align 8
  %2 = load i8*, i8** %drawable_name.addr, align 8
  %3 = load i32, i32* %any_ID.addr, align 4
  %call = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0), i8* %1, i8* %2, i32 %3)
  store i8* %call, i8** %str, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %4 = load i8*, i8** %image_name.addr, align 8
  %call1 = call noalias i8* @g_strdup(i8* %4)
  store i8* %call1, i8** %str, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %call2 = call %struct._GtkWidget* @gtk_menu_item_new()
  store %struct._GtkWidget* %call2, %struct._GtkWidget** %menuitem, align 8
  %5 = load %struct._GtkWidget*, %struct._GtkWidget** %menu.addr, align 8
  %6 = bitcast %struct._GtkWidget* %5 to %struct._GTypeInstance*
  %call3 = call i64 @gtk_menu_shell_get_type() #4
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %6, i64 %call3)
  %7 = bitcast %struct._GTypeInstance* %call4 to %struct._GtkMenuShell*
  %8 = load %struct._GtkWidget*, %struct._GtkWidget** %menuitem, align 8
  call void @gtk_menu_shell_append(%struct._GtkMenuShell* %7, %struct._GtkWidget* %8)
  %9 = load %struct._GtkWidget*, %struct._GtkWidget** %menuitem, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %9)
  %10 = load %struct._GtkWidget*, %struct._GtkWidget** %menuitem, align 8
  %11 = bitcast %struct._GtkWidget* %10 to i8*
  %12 = load i32, i32* %any_ID.addr, align 4
  %conv = sext i32 %12 to i64
  %13 = inttoptr i64 %conv to i8*
  %call5 = call i64 @g_signal_connect_data(i8* %11, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i8*)* @gimp_menu_callback to void ()*), i8* %13, void (i8*, %struct._GClosure*)* null, i32 0)
  %call6 = call %struct._GtkWidget* @gtk_box_new(i32 0, i32 4)
  store %struct._GtkWidget* %call6, %struct._GtkWidget** %hbox, align 8
  %14 = load %struct._GtkWidget*, %struct._GtkWidget** %menuitem, align 8
  %15 = bitcast %struct._GtkWidget* %14 to %struct._GTypeInstance*
  %call7 = call i64 @gtk_container_get_type() #4
  %call8 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %15, i64 %call7)
  %16 = bitcast %struct._GTypeInstance* %call8 to %struct._GtkContainer*
  %17 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_container_add(%struct._GtkContainer* %16, %struct._GtkWidget* %17)
  %18 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %18)
  %call9 = call %struct._GtkWidget* @gtk_box_new(i32 1, i32 0)
  store %struct._GtkWidget* %call9, %struct._GtkWidget** %vbox, align 8
  %19 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %20 = bitcast %struct._GtkWidget* %19 to %struct._GTypeInstance*
  %call10 = call i64 @gtk_box_get_type() #4
  %call11 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %20, i64 %call10)
  %21 = bitcast %struct._GTypeInstance* %call11 to %struct._GtkBox*
  %22 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %21, %struct._GtkWidget* %22, i32 0, i32 0, i32 0)
  %23 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %23)
  %24 = load i32, i32* %any_ID.addr, align 4
  %25 = load i8*, i8** %drawable_name.addr, align 8
  %cmp = icmp eq i8* %25, null
  %conv12 = zext i1 %cmp to i32
  %call13 = call %struct._GtkWidget* @gimp_menu_make_preview(i32 %24, i32 %conv12, i32 24, i32 24)
  store %struct._GtkWidget* %call13, %struct._GtkWidget** %preview, align 8
  %26 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %27 = bitcast %struct._GtkWidget* %26 to %struct._GTypeInstance*
  %call14 = call i64 @gtk_box_get_type() #4
  %call15 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %27, i64 %call14)
  %28 = bitcast %struct._GTypeInstance* %call15 to %struct._GtkBox*
  %29 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %28, %struct._GtkWidget* %29, i32 1, i32 1, i32 0)
  %30 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %30)
  %31 = load i8*, i8** %str, align 8
  %call16 = call %struct._GtkWidget* @gtk_label_new(i8* %31)
  store %struct._GtkWidget* %call16, %struct._GtkWidget** %label, align 8
  %32 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %33 = bitcast %struct._GtkWidget* %32 to %struct._GTypeInstance*
  %call17 = call i64 @gtk_box_get_type() #4
  %call18 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %33, i64 %call17)
  %34 = bitcast %struct._GTypeInstance* %call18 to %struct._GtkBox*
  %35 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %34, %struct._GtkWidget* %35, i32 0, i32 0, i32 0)
  %36 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %36)
  %37 = load i8*, i8** %str, align 8
  call void @g_free(i8* %37)
  %38 = load %struct._GtkWidget*, %struct._GtkWidget** %menuitem, align 8
  ret %struct._GtkWidget* %38
}

declare void @gtk_menu_set_active(%struct._GtkMenu*, i32) #1

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_menu_get_type() #2

; Function Attrs: nounwind uwtable
define internal %struct._GtkWidget* @gimp_menu_add_empty(%struct._GtkWidget* %menu) #0 {
entry:
  %menu.addr = alloca %struct._GtkWidget*, align 8
  %menuitem = alloca %struct._GtkWidget*, align 8
  store %struct._GtkWidget* %menu, %struct._GtkWidget** %menu.addr, align 8
  %call = call i8* @dgettext(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i32 0, i32 0)) #5
  %call1 = call %struct._GtkWidget* @gtk_menu_item_new_with_label(i8* %call)
  store %struct._GtkWidget* %call1, %struct._GtkWidget** %menuitem, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %menuitem, align 8
  call void @gtk_widget_set_sensitive(%struct._GtkWidget* %0, i32 0)
  %1 = load %struct._GtkWidget*, %struct._GtkWidget** %menu.addr, align 8
  %2 = bitcast %struct._GtkWidget* %1 to %struct._GTypeInstance*
  %call2 = call i64 @gtk_menu_shell_get_type() #4
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %2, i64 %call2)
  %3 = bitcast %struct._GTypeInstance* %call3 to %struct._GtkMenuShell*
  %4 = load %struct._GtkWidget*, %struct._GtkWidget** %menuitem, align 8
  call void @gtk_menu_shell_append(%struct._GtkMenuShell* %3, %struct._GtkWidget* %4)
  %5 = load %struct._GtkWidget*, %struct._GtkWidget** %menuitem, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %5)
  %6 = load %struct._GtkWidget*, %struct._GtkWidget** %menuitem, align 8
  ret %struct._GtkWidget* %6
}

; Function Attrs: nounwind uwtable
define %struct._GtkWidget* @gimp_layer_menu_new(i32 (i32, i32, i8*)* %constraint, void (i32, i8*)* %callback, i8* %data, i32 %active_layer) #0 {
entry:
  %retval = alloca %struct._GtkWidget*, align 8
  %constraint.addr = alloca i32 (i32, i32, i8*)*, align 8
  %callback.addr = alloca void (i32, i8*)*, align 8
  %data.addr = alloca i8*, align 8
  %active_layer.addr = alloca i32, align 4
  %menu = alloca %struct._GtkWidget*, align 8
  %image_label = alloca i8*, align 8
  %images = alloca i32*, align 8
  %layers = alloca i32*, align 8
  %layer = alloca i32, align 4
  %n_images = alloca i32, align 4
  %n_layers = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %name = alloca i8*, align 8
  store i32 (i32, i32, i8*)* %constraint, i32 (i32, i32, i8*)** %constraint.addr, align 8
  store void (i32, i8*)* %callback, void (i32, i8*)** %callback.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  store i32 %active_layer, i32* %active_layer.addr, align 4
  store i32 -1, i32* %layer, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load void (i32, i8*)*, void (i32, i8*)** %callback.addr, align 8
  %cmp = icmp ne void (i32, i8*)* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.gimp_layer_menu_new, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i32 0, i32 0))
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %1 = load void (i32, i8*)*, void (i32, i8*)** %callback.addr, align 8
  %2 = load i8*, i8** %data.addr, align 8
  %call = call %struct._GtkWidget* @gimp_menu_make_menu(void (i32, i8*)* %1, i8* %2)
  store %struct._GtkWidget* %call, %struct._GtkWidget** %menu, align 8
  %call1 = call i32* @gimp_image_list(i32* %n_images)
  store i32* %call1, i32** %images, align 8
  store i32 0, i32* %i, align 4
  store i32 0, i32* %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.48, %do.end
  %3 = load i32, i32* %i, align 4
  %4 = load i32, i32* %n_images, align 4
  %cmp2 = icmp slt i32 %3, %4
  br i1 %cmp2, label %for.body, label %for.end.50

for.body:                                         ; preds = %for.cond
  %5 = load i32 (i32, i32, i8*)*, i32 (i32, i32, i8*)** %constraint.addr, align 8
  %tobool = icmp ne i32 (i32, i32, i8*)* %5, null
  br i1 %tobool, label %lor.lhs.false, label %if.then.5

lor.lhs.false:                                    ; preds = %for.body
  %6 = load i32 (i32, i32, i8*)*, i32 (i32, i32, i8*)** %constraint.addr, align 8
  %7 = load i32, i32* %i, align 4
  %idxprom = sext i32 %7 to i64
  %8 = load i32*, i32** %images, align 8
  %arrayidx = getelementptr inbounds i32, i32* %8, i64 %idxprom
  %9 = load i32, i32* %arrayidx, align 4
  %10 = load i8*, i8** %data.addr, align 8
  %call3 = call i32 %6(i32 %9, i32 -1, i8* %10)
  %tobool4 = icmp ne i32 %call3, 0
  br i1 %tobool4, label %if.then.5, label %if.end.47

if.then.5:                                        ; preds = %lor.lhs.false, %for.body
  %11 = load i32, i32* %i, align 4
  %idxprom6 = sext i32 %11 to i64
  %12 = load i32*, i32** %images, align 8
  %arrayidx7 = getelementptr inbounds i32, i32* %12, i64 %idxprom6
  %13 = load i32, i32* %arrayidx7, align 4
  %call8 = call i8* @gimp_image_get_name(i32 %13)
  store i8* %call8, i8** %name, align 8
  %14 = load i8*, i8** %name, align 8
  %15 = load i32, i32* %i, align 4
  %idxprom9 = sext i32 %15 to i64
  %16 = load i32*, i32** %images, align 8
  %arrayidx10 = getelementptr inbounds i32, i32* %16, i64 %idxprom9
  %17 = load i32, i32* %arrayidx10, align 4
  %call11 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i8* %14, i32 %17)
  store i8* %call11, i8** %image_label, align 8
  %18 = load i8*, i8** %name, align 8
  call void @g_free(i8* %18)
  %19 = load i32, i32* %i, align 4
  %idxprom12 = sext i32 %19 to i64
  %20 = load i32*, i32** %images, align 8
  %arrayidx13 = getelementptr inbounds i32, i32* %20, i64 %idxprom12
  %21 = load i32, i32* %arrayidx13, align 4
  %call14 = call i32* @gimp_image_get_layers(i32 %21, i32* %n_layers)
  store i32* %call14, i32** %layers, align 8
  store i32 0, i32* %j, align 4
  br label %for.cond.15

for.cond.15:                                      ; preds = %for.inc, %if.then.5
  %22 = load i32, i32* %j, align 4
  %23 = load i32, i32* %n_layers, align 4
  %cmp16 = icmp slt i32 %22, %23
  br i1 %cmp16, label %for.body.17, label %for.end

for.body.17:                                      ; preds = %for.cond.15
  %24 = load i32 (i32, i32, i8*)*, i32 (i32, i32, i8*)** %constraint.addr, align 8
  %tobool18 = icmp ne i32 (i32, i32, i8*)* %24, null
  br i1 %tobool18, label %lor.lhs.false.19, label %if.then.26

lor.lhs.false.19:                                 ; preds = %for.body.17
  %25 = load i32 (i32, i32, i8*)*, i32 (i32, i32, i8*)** %constraint.addr, align 8
  %26 = load i32, i32* %i, align 4
  %idxprom20 = sext i32 %26 to i64
  %27 = load i32*, i32** %images, align 8
  %arrayidx21 = getelementptr inbounds i32, i32* %27, i64 %idxprom20
  %28 = load i32, i32* %arrayidx21, align 4
  %29 = load i32, i32* %j, align 4
  %idxprom22 = sext i32 %29 to i64
  %30 = load i32*, i32** %layers, align 8
  %arrayidx23 = getelementptr inbounds i32, i32* %30, i64 %idxprom22
  %31 = load i32, i32* %arrayidx23, align 4
  %32 = load i8*, i8** %data.addr, align 8
  %call24 = call i32 %25(i32 %28, i32 %31, i8* %32)
  %tobool25 = icmp ne i32 %call24, 0
  br i1 %tobool25, label %if.then.26, label %if.end.46

if.then.26:                                       ; preds = %lor.lhs.false.19, %for.body.17
  %33 = load i32, i32* %j, align 4
  %idxprom27 = sext i32 %33 to i64
  %34 = load i32*, i32** %layers, align 8
  %arrayidx28 = getelementptr inbounds i32, i32* %34, i64 %idxprom27
  %35 = load i32, i32* %arrayidx28, align 4
  %call29 = call i8* @gimp_item_get_name(i32 %35)
  store i8* %call29, i8** %name, align 8
  %36 = load %struct._GtkWidget*, %struct._GtkWidget** %menu, align 8
  %37 = load i8*, i8** %image_label, align 8
  %38 = load i8*, i8** %name, align 8
  %39 = load i32, i32* %j, align 4
  %idxprom30 = sext i32 %39 to i64
  %40 = load i32*, i32** %layers, align 8
  %arrayidx31 = getelementptr inbounds i32, i32* %40, i64 %idxprom30
  %41 = load i32, i32* %arrayidx31, align 4
  %call32 = call %struct._GtkWidget* @gimp_menu_add_item(%struct._GtkWidget* %36, i8* %37, i8* %38, i32 %41)
  %42 = load i8*, i8** %name, align 8
  call void @g_free(i8* %42)
  %43 = load i32, i32* %j, align 4
  %idxprom33 = sext i32 %43 to i64
  %44 = load i32*, i32** %layers, align 8
  %arrayidx34 = getelementptr inbounds i32, i32* %44, i64 %idxprom33
  %45 = load i32, i32* %arrayidx34, align 4
  %46 = load i32, i32* %active_layer.addr, align 4
  %cmp35 = icmp eq i32 %45, %46
  br i1 %cmp35, label %if.then.36, label %if.else.39

if.then.36:                                       ; preds = %if.then.26
  %47 = load i32, i32* %active_layer.addr, align 4
  store i32 %47, i32* %layer, align 4
  %48 = load %struct._GtkWidget*, %struct._GtkWidget** %menu, align 8
  %49 = bitcast %struct._GtkWidget* %48 to %struct._GTypeInstance*
  %call37 = call i64 @gtk_menu_get_type() #4
  %call38 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %49, i64 %call37)
  %50 = bitcast %struct._GTypeInstance* %call38 to %struct._GtkMenu*
  %51 = load i32, i32* %k, align 4
  call void @gtk_menu_set_active(%struct._GtkMenu* %50, i32 %51)
  br label %if.end.45

if.else.39:                                       ; preds = %if.then.26
  %52 = load i32, i32* %layer, align 4
  %cmp40 = icmp eq i32 %52, -1
  br i1 %cmp40, label %if.then.41, label %if.end.44

if.then.41:                                       ; preds = %if.else.39
  %53 = load i32, i32* %j, align 4
  %idxprom42 = sext i32 %53 to i64
  %54 = load i32*, i32** %layers, align 8
  %arrayidx43 = getelementptr inbounds i32, i32* %54, i64 %idxprom42
  %55 = load i32, i32* %arrayidx43, align 4
  store i32 %55, i32* %layer, align 4
  br label %if.end.44

if.end.44:                                        ; preds = %if.then.41, %if.else.39
  br label %if.end.45

if.end.45:                                        ; preds = %if.end.44, %if.then.36
  %56 = load i32, i32* %k, align 4
  %add = add nsw i32 %56, 1
  store i32 %add, i32* %k, align 4
  br label %if.end.46

if.end.46:                                        ; preds = %if.end.45, %lor.lhs.false.19
  br label %for.inc

for.inc:                                          ; preds = %if.end.46
  %57 = load i32, i32* %j, align 4
  %inc = add nsw i32 %57, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.15

for.end:                                          ; preds = %for.cond.15
  %58 = load i8*, i8** %image_label, align 8
  call void @g_free(i8* %58)
  %59 = load i32*, i32** %layers, align 8
  %60 = bitcast i32* %59 to i8*
  call void @g_free(i8* %60)
  br label %if.end.47

if.end.47:                                        ; preds = %for.end, %lor.lhs.false
  br label %for.inc.48

for.inc.48:                                       ; preds = %if.end.47
  %61 = load i32, i32* %i, align 4
  %inc49 = add nsw i32 %61, 1
  store i32 %inc49, i32* %i, align 4
  br label %for.cond

for.end.50:                                       ; preds = %for.cond
  %62 = load i32*, i32** %images, align 8
  %63 = bitcast i32* %62 to i8*
  call void @g_free(i8* %63)
  %64 = load i32, i32* %k, align 4
  %cmp51 = icmp eq i32 %64, 0
  br i1 %cmp51, label %if.then.52, label %if.end.54

if.then.52:                                       ; preds = %for.end.50
  %65 = load %struct._GtkWidget*, %struct._GtkWidget** %menu, align 8
  %call53 = call %struct._GtkWidget* @gimp_menu_add_empty(%struct._GtkWidget* %65)
  br label %if.end.54

if.end.54:                                        ; preds = %if.then.52, %for.end.50
  %66 = load void (i32, i8*)*, void (i32, i8*)** %callback.addr, align 8
  %67 = load i32, i32* %layer, align 4
  %68 = load i8*, i8** %data.addr, align 8
  call void %66(i32 %67, i8* %68)
  %69 = load %struct._GtkWidget*, %struct._GtkWidget** %menu, align 8
  store %struct._GtkWidget* %69, %struct._GtkWidget** %retval
  br label %return

return:                                           ; preds = %if.end.54, %if.else
  %70 = load %struct._GtkWidget*, %struct._GtkWidget** %retval
  ret %struct._GtkWidget* %70
}

declare i32* @gimp_image_get_layers(i32, i32*) #1

declare i8* @gimp_item_get_name(i32) #1

; Function Attrs: nounwind uwtable
define %struct._GtkWidget* @gimp_channel_menu_new(i32 (i32, i32, i8*)* %constraint, void (i32, i8*)* %callback, i8* %data, i32 %active_channel) #0 {
entry:
  %retval = alloca %struct._GtkWidget*, align 8
  %constraint.addr = alloca i32 (i32, i32, i8*)*, align 8
  %callback.addr = alloca void (i32, i8*)*, align 8
  %data.addr = alloca i8*, align 8
  %active_channel.addr = alloca i32, align 4
  %menu = alloca %struct._GtkWidget*, align 8
  %image_label = alloca i8*, align 8
  %images = alloca i32*, align 8
  %channels = alloca i32*, align 8
  %channel = alloca i32, align 4
  %n_images = alloca i32, align 4
  %n_channels = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %name = alloca i8*, align 8
  store i32 (i32, i32, i8*)* %constraint, i32 (i32, i32, i8*)** %constraint.addr, align 8
  store void (i32, i8*)* %callback, void (i32, i8*)** %callback.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  store i32 %active_channel, i32* %active_channel.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load void (i32, i8*)*, void (i32, i8*)** %callback.addr, align 8
  %cmp = icmp ne void (i32, i8*)* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.gimp_channel_menu_new, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i32 0, i32 0))
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %1 = load void (i32, i8*)*, void (i32, i8*)** %callback.addr, align 8
  %2 = load i8*, i8** %data.addr, align 8
  %call = call %struct._GtkWidget* @gimp_menu_make_menu(void (i32, i8*)* %1, i8* %2)
  store %struct._GtkWidget* %call, %struct._GtkWidget** %menu, align 8
  store i32 -1, i32* %channel, align 4
  %call1 = call i32* @gimp_image_list(i32* %n_images)
  store i32* %call1, i32** %images, align 8
  store i32 0, i32* %i, align 4
  store i32 0, i32* %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.48, %do.end
  %3 = load i32, i32* %i, align 4
  %4 = load i32, i32* %n_images, align 4
  %cmp2 = icmp slt i32 %3, %4
  br i1 %cmp2, label %for.body, label %for.end.50

for.body:                                         ; preds = %for.cond
  %5 = load i32 (i32, i32, i8*)*, i32 (i32, i32, i8*)** %constraint.addr, align 8
  %tobool = icmp ne i32 (i32, i32, i8*)* %5, null
  br i1 %tobool, label %lor.lhs.false, label %if.then.5

lor.lhs.false:                                    ; preds = %for.body
  %6 = load i32 (i32, i32, i8*)*, i32 (i32, i32, i8*)** %constraint.addr, align 8
  %7 = load i32, i32* %i, align 4
  %idxprom = sext i32 %7 to i64
  %8 = load i32*, i32** %images, align 8
  %arrayidx = getelementptr inbounds i32, i32* %8, i64 %idxprom
  %9 = load i32, i32* %arrayidx, align 4
  %10 = load i8*, i8** %data.addr, align 8
  %call3 = call i32 %6(i32 %9, i32 -1, i8* %10)
  %tobool4 = icmp ne i32 %call3, 0
  br i1 %tobool4, label %if.then.5, label %if.end.47

if.then.5:                                        ; preds = %lor.lhs.false, %for.body
  %11 = load i32, i32* %i, align 4
  %idxprom6 = sext i32 %11 to i64
  %12 = load i32*, i32** %images, align 8
  %arrayidx7 = getelementptr inbounds i32, i32* %12, i64 %idxprom6
  %13 = load i32, i32* %arrayidx7, align 4
  %call8 = call i8* @gimp_image_get_name(i32 %13)
  store i8* %call8, i8** %name, align 8
  %14 = load i8*, i8** %name, align 8
  %15 = load i32, i32* %i, align 4
  %idxprom9 = sext i32 %15 to i64
  %16 = load i32*, i32** %images, align 8
  %arrayidx10 = getelementptr inbounds i32, i32* %16, i64 %idxprom9
  %17 = load i32, i32* %arrayidx10, align 4
  %call11 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i8* %14, i32 %17)
  store i8* %call11, i8** %image_label, align 8
  %18 = load i8*, i8** %name, align 8
  call void @g_free(i8* %18)
  %19 = load i32, i32* %i, align 4
  %idxprom12 = sext i32 %19 to i64
  %20 = load i32*, i32** %images, align 8
  %arrayidx13 = getelementptr inbounds i32, i32* %20, i64 %idxprom12
  %21 = load i32, i32* %arrayidx13, align 4
  %call14 = call i32* @gimp_image_get_channels(i32 %21, i32* %n_channels)
  store i32* %call14, i32** %channels, align 8
  store i32 0, i32* %j, align 4
  br label %for.cond.15

for.cond.15:                                      ; preds = %for.inc, %if.then.5
  %22 = load i32, i32* %j, align 4
  %23 = load i32, i32* %n_channels, align 4
  %cmp16 = icmp slt i32 %22, %23
  br i1 %cmp16, label %for.body.17, label %for.end

for.body.17:                                      ; preds = %for.cond.15
  %24 = load i32 (i32, i32, i8*)*, i32 (i32, i32, i8*)** %constraint.addr, align 8
  %tobool18 = icmp ne i32 (i32, i32, i8*)* %24, null
  br i1 %tobool18, label %lor.lhs.false.19, label %if.then.26

lor.lhs.false.19:                                 ; preds = %for.body.17
  %25 = load i32 (i32, i32, i8*)*, i32 (i32, i32, i8*)** %constraint.addr, align 8
  %26 = load i32, i32* %i, align 4
  %idxprom20 = sext i32 %26 to i64
  %27 = load i32*, i32** %images, align 8
  %arrayidx21 = getelementptr inbounds i32, i32* %27, i64 %idxprom20
  %28 = load i32, i32* %arrayidx21, align 4
  %29 = load i32, i32* %j, align 4
  %idxprom22 = sext i32 %29 to i64
  %30 = load i32*, i32** %channels, align 8
  %arrayidx23 = getelementptr inbounds i32, i32* %30, i64 %idxprom22
  %31 = load i32, i32* %arrayidx23, align 4
  %32 = load i8*, i8** %data.addr, align 8
  %call24 = call i32 %25(i32 %28, i32 %31, i8* %32)
  %tobool25 = icmp ne i32 %call24, 0
  br i1 %tobool25, label %if.then.26, label %if.end.46

if.then.26:                                       ; preds = %lor.lhs.false.19, %for.body.17
  %33 = load i32, i32* %j, align 4
  %idxprom27 = sext i32 %33 to i64
  %34 = load i32*, i32** %channels, align 8
  %arrayidx28 = getelementptr inbounds i32, i32* %34, i64 %idxprom27
  %35 = load i32, i32* %arrayidx28, align 4
  %call29 = call i8* @gimp_item_get_name(i32 %35)
  store i8* %call29, i8** %name, align 8
  %36 = load %struct._GtkWidget*, %struct._GtkWidget** %menu, align 8
  %37 = load i8*, i8** %image_label, align 8
  %38 = load i8*, i8** %name, align 8
  %39 = load i32, i32* %j, align 4
  %idxprom30 = sext i32 %39 to i64
  %40 = load i32*, i32** %channels, align 8
  %arrayidx31 = getelementptr inbounds i32, i32* %40, i64 %idxprom30
  %41 = load i32, i32* %arrayidx31, align 4
  %call32 = call %struct._GtkWidget* @gimp_menu_add_item(%struct._GtkWidget* %36, i8* %37, i8* %38, i32 %41)
  %42 = load i8*, i8** %name, align 8
  call void @g_free(i8* %42)
  %43 = load i32, i32* %j, align 4
  %idxprom33 = sext i32 %43 to i64
  %44 = load i32*, i32** %channels, align 8
  %arrayidx34 = getelementptr inbounds i32, i32* %44, i64 %idxprom33
  %45 = load i32, i32* %arrayidx34, align 4
  %46 = load i32, i32* %active_channel.addr, align 4
  %cmp35 = icmp eq i32 %45, %46
  br i1 %cmp35, label %if.then.36, label %if.else.39

if.then.36:                                       ; preds = %if.then.26
  %47 = load i32, i32* %active_channel.addr, align 4
  store i32 %47, i32* %channel, align 4
  %48 = load %struct._GtkWidget*, %struct._GtkWidget** %menu, align 8
  %49 = bitcast %struct._GtkWidget* %48 to %struct._GTypeInstance*
  %call37 = call i64 @gtk_menu_get_type() #4
  %call38 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %49, i64 %call37)
  %50 = bitcast %struct._GTypeInstance* %call38 to %struct._GtkMenu*
  %51 = load i32, i32* %k, align 4
  call void @gtk_menu_set_active(%struct._GtkMenu* %50, i32 %51)
  br label %if.end.45

if.else.39:                                       ; preds = %if.then.26
  %52 = load i32, i32* %channel, align 4
  %cmp40 = icmp eq i32 %52, -1
  br i1 %cmp40, label %if.then.41, label %if.end.44

if.then.41:                                       ; preds = %if.else.39
  %53 = load i32, i32* %j, align 4
  %idxprom42 = sext i32 %53 to i64
  %54 = load i32*, i32** %channels, align 8
  %arrayidx43 = getelementptr inbounds i32, i32* %54, i64 %idxprom42
  %55 = load i32, i32* %arrayidx43, align 4
  store i32 %55, i32* %channel, align 4
  br label %if.end.44

if.end.44:                                        ; preds = %if.then.41, %if.else.39
  br label %if.end.45

if.end.45:                                        ; preds = %if.end.44, %if.then.36
  %56 = load i32, i32* %k, align 4
  %add = add nsw i32 %56, 1
  store i32 %add, i32* %k, align 4
  br label %if.end.46

if.end.46:                                        ; preds = %if.end.45, %lor.lhs.false.19
  br label %for.inc

for.inc:                                          ; preds = %if.end.46
  %57 = load i32, i32* %j, align 4
  %inc = add nsw i32 %57, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.15

for.end:                                          ; preds = %for.cond.15
  %58 = load i8*, i8** %image_label, align 8
  call void @g_free(i8* %58)
  %59 = load i32*, i32** %channels, align 8
  %60 = bitcast i32* %59 to i8*
  call void @g_free(i8* %60)
  br label %if.end.47

if.end.47:                                        ; preds = %for.end, %lor.lhs.false
  br label %for.inc.48

for.inc.48:                                       ; preds = %if.end.47
  %61 = load i32, i32* %i, align 4
  %inc49 = add nsw i32 %61, 1
  store i32 %inc49, i32* %i, align 4
  br label %for.cond

for.end.50:                                       ; preds = %for.cond
  %62 = load i32*, i32** %images, align 8
  %63 = bitcast i32* %62 to i8*
  call void @g_free(i8* %63)
  %64 = load i32, i32* %k, align 4
  %cmp51 = icmp eq i32 %64, 0
  br i1 %cmp51, label %if.then.52, label %if.end.54

if.then.52:                                       ; preds = %for.end.50
  %65 = load %struct._GtkWidget*, %struct._GtkWidget** %menu, align 8
  %call53 = call %struct._GtkWidget* @gimp_menu_add_empty(%struct._GtkWidget* %65)
  br label %if.end.54

if.end.54:                                        ; preds = %if.then.52, %for.end.50
  %66 = load void (i32, i8*)*, void (i32, i8*)** %callback.addr, align 8
  %67 = load i32, i32* %channel, align 4
  %68 = load i8*, i8** %data.addr, align 8
  call void %66(i32 %67, i8* %68)
  %69 = load %struct._GtkWidget*, %struct._GtkWidget** %menu, align 8
  store %struct._GtkWidget* %69, %struct._GtkWidget** %retval
  br label %return

return:                                           ; preds = %if.end.54, %if.else
  %70 = load %struct._GtkWidget*, %struct._GtkWidget** %retval
  ret %struct._GtkWidget* %70
}

declare i32* @gimp_image_get_channels(i32, i32*) #1

; Function Attrs: nounwind uwtable
define %struct._GtkWidget* @gimp_drawable_menu_new(i32 (i32, i32, i8*)* %constraint, void (i32, i8*)* %callback, i8* %data, i32 %active_drawable) #0 {
entry:
  %constraint.addr = alloca i32 (i32, i32, i8*)*, align 8
  %callback.addr = alloca void (i32, i8*)*, align 8
  %data.addr = alloca i8*, align 8
  %active_drawable.addr = alloca i32, align 4
  %menu = alloca %struct._GtkWidget*, align 8
  %name = alloca i8*, align 8
  %image_label = alloca i8*, align 8
  %images = alloca i32*, align 8
  %layers = alloca i32*, align 8
  %channels = alloca i32*, align 8
  %drawable = alloca i32, align 4
  %n_images = alloca i32, align 4
  %n_layers = alloca i32, align 4
  %n_channels = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  store i32 (i32, i32, i8*)* %constraint, i32 (i32, i32, i8*)** %constraint.addr, align 8
  store void (i32, i8*)* %callback, void (i32, i8*)** %callback.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  store i32 %active_drawable, i32* %active_drawable.addr, align 4
  %0 = load void (i32, i8*)*, void (i32, i8*)** %callback.addr, align 8
  %1 = load i8*, i8** %data.addr, align 8
  %call = call %struct._GtkWidget* @gimp_menu_make_menu(void (i32, i8*)* %0, i8* %1)
  store %struct._GtkWidget* %call, %struct._GtkWidget** %menu, align 8
  store i32 -1, i32* %drawable, align 4
  %call1 = call i32* @gimp_image_list(i32* %n_images)
  store i32* %call1, i32** %images, align 8
  store i32 0, i32* %i, align 4
  store i32 0, i32* %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.83, %entry
  %2 = load i32, i32* %i, align 4
  %3 = load i32, i32* %n_images, align 4
  %cmp = icmp slt i32 %2, %3
  br i1 %cmp, label %for.body, label %for.end.85

for.body:                                         ; preds = %for.cond
  %4 = load i32 (i32, i32, i8*)*, i32 (i32, i32, i8*)** %constraint.addr, align 8
  %tobool = icmp ne i32 (i32, i32, i8*)* %4, null
  br i1 %tobool, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %for.body
  %5 = load i32 (i32, i32, i8*)*, i32 (i32, i32, i8*)** %constraint.addr, align 8
  %6 = load i32, i32* %i, align 4
  %idxprom = sext i32 %6 to i64
  %7 = load i32*, i32** %images, align 8
  %arrayidx = getelementptr inbounds i32, i32* %7, i64 %idxprom
  %8 = load i32, i32* %arrayidx, align 4
  %9 = load i8*, i8** %data.addr, align 8
  %call2 = call i32 %5(i32 %8, i32 -1, i8* %9)
  %tobool3 = icmp ne i32 %call2, 0
  br i1 %tobool3, label %if.then, label %if.end.82

if.then:                                          ; preds = %lor.lhs.false, %for.body
  %10 = load i32, i32* %i, align 4
  %idxprom4 = sext i32 %10 to i64
  %11 = load i32*, i32** %images, align 8
  %arrayidx5 = getelementptr inbounds i32, i32* %11, i64 %idxprom4
  %12 = load i32, i32* %arrayidx5, align 4
  %call6 = call i8* @gimp_image_get_name(i32 %12)
  store i8* %call6, i8** %name, align 8
  %13 = load i8*, i8** %name, align 8
  %14 = load i32, i32* %i, align 4
  %idxprom7 = sext i32 %14 to i64
  %15 = load i32*, i32** %images, align 8
  %arrayidx8 = getelementptr inbounds i32, i32* %15, i64 %idxprom7
  %16 = load i32, i32* %arrayidx8, align 4
  %call9 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i8* %13, i32 %16)
  store i8* %call9, i8** %image_label, align 8
  %17 = load i8*, i8** %name, align 8
  call void @g_free(i8* %17)
  %18 = load i32, i32* %i, align 4
  %idxprom10 = sext i32 %18 to i64
  %19 = load i32*, i32** %images, align 8
  %arrayidx11 = getelementptr inbounds i32, i32* %19, i64 %idxprom10
  %20 = load i32, i32* %arrayidx11, align 4
  %call12 = call i32* @gimp_image_get_layers(i32 %20, i32* %n_layers)
  store i32* %call12, i32** %layers, align 8
  %21 = load i32, i32* %i, align 4
  %idxprom13 = sext i32 %21 to i64
  %22 = load i32*, i32** %images, align 8
  %arrayidx14 = getelementptr inbounds i32, i32* %22, i64 %idxprom13
  %23 = load i32, i32* %arrayidx14, align 4
  %call15 = call i32* @gimp_image_get_channels(i32 %23, i32* %n_channels)
  store i32* %call15, i32** %channels, align 8
  store i32 0, i32* %j, align 4
  br label %for.cond.16

for.cond.16:                                      ; preds = %for.inc, %if.then
  %24 = load i32, i32* %j, align 4
  %25 = load i32, i32* %n_layers, align 4
  %cmp17 = icmp slt i32 %24, %25
  br i1 %cmp17, label %for.body.18, label %for.end

for.body.18:                                      ; preds = %for.cond.16
  %26 = load i32 (i32, i32, i8*)*, i32 (i32, i32, i8*)** %constraint.addr, align 8
  %tobool19 = icmp ne i32 (i32, i32, i8*)* %26, null
  br i1 %tobool19, label %lor.lhs.false.20, label %if.then.27

lor.lhs.false.20:                                 ; preds = %for.body.18
  %27 = load i32 (i32, i32, i8*)*, i32 (i32, i32, i8*)** %constraint.addr, align 8
  %28 = load i32, i32* %i, align 4
  %idxprom21 = sext i32 %28 to i64
  %29 = load i32*, i32** %images, align 8
  %arrayidx22 = getelementptr inbounds i32, i32* %29, i64 %idxprom21
  %30 = load i32, i32* %arrayidx22, align 4
  %31 = load i32, i32* %j, align 4
  %idxprom23 = sext i32 %31 to i64
  %32 = load i32*, i32** %layers, align 8
  %arrayidx24 = getelementptr inbounds i32, i32* %32, i64 %idxprom23
  %33 = load i32, i32* %arrayidx24, align 4
  %34 = load i8*, i8** %data.addr, align 8
  %call25 = call i32 %27(i32 %30, i32 %33, i8* %34)
  %tobool26 = icmp ne i32 %call25, 0
  br i1 %tobool26, label %if.then.27, label %if.end.45

if.then.27:                                       ; preds = %lor.lhs.false.20, %for.body.18
  %35 = load i32, i32* %j, align 4
  %idxprom28 = sext i32 %35 to i64
  %36 = load i32*, i32** %layers, align 8
  %arrayidx29 = getelementptr inbounds i32, i32* %36, i64 %idxprom28
  %37 = load i32, i32* %arrayidx29, align 4
  %call30 = call i8* @gimp_item_get_name(i32 %37)
  store i8* %call30, i8** %name, align 8
  %38 = load %struct._GtkWidget*, %struct._GtkWidget** %menu, align 8
  %39 = load i8*, i8** %image_label, align 8
  %40 = load i8*, i8** %name, align 8
  %41 = load i32, i32* %j, align 4
  %idxprom31 = sext i32 %41 to i64
  %42 = load i32*, i32** %layers, align 8
  %arrayidx32 = getelementptr inbounds i32, i32* %42, i64 %idxprom31
  %43 = load i32, i32* %arrayidx32, align 4
  %call33 = call %struct._GtkWidget* @gimp_menu_add_item(%struct._GtkWidget* %38, i8* %39, i8* %40, i32 %43)
  %44 = load i8*, i8** %name, align 8
  call void @g_free(i8* %44)
  %45 = load i32, i32* %j, align 4
  %idxprom34 = sext i32 %45 to i64
  %46 = load i32*, i32** %layers, align 8
  %arrayidx35 = getelementptr inbounds i32, i32* %46, i64 %idxprom34
  %47 = load i32, i32* %arrayidx35, align 4
  %48 = load i32, i32* %active_drawable.addr, align 4
  %cmp36 = icmp eq i32 %47, %48
  br i1 %cmp36, label %if.then.37, label %if.else

if.then.37:                                       ; preds = %if.then.27
  %49 = load i32, i32* %active_drawable.addr, align 4
  store i32 %49, i32* %drawable, align 4
  %50 = load %struct._GtkWidget*, %struct._GtkWidget** %menu, align 8
  %51 = bitcast %struct._GtkWidget* %50 to %struct._GTypeInstance*
  %call38 = call i64 @gtk_menu_get_type() #4
  %call39 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %51, i64 %call38)
  %52 = bitcast %struct._GTypeInstance* %call39 to %struct._GtkMenu*
  %53 = load i32, i32* %k, align 4
  call void @gtk_menu_set_active(%struct._GtkMenu* %52, i32 %53)
  br label %if.end.44

if.else:                                          ; preds = %if.then.27
  %54 = load i32, i32* %drawable, align 4
  %cmp40 = icmp eq i32 %54, -1
  br i1 %cmp40, label %if.then.41, label %if.end

if.then.41:                                       ; preds = %if.else
  %55 = load i32, i32* %j, align 4
  %idxprom42 = sext i32 %55 to i64
  %56 = load i32*, i32** %layers, align 8
  %arrayidx43 = getelementptr inbounds i32, i32* %56, i64 %idxprom42
  %57 = load i32, i32* %arrayidx43, align 4
  store i32 %57, i32* %drawable, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.41, %if.else
  br label %if.end.44

if.end.44:                                        ; preds = %if.end, %if.then.37
  %58 = load i32, i32* %k, align 4
  %add = add nsw i32 %58, 1
  store i32 %add, i32* %k, align 4
  br label %if.end.45

if.end.45:                                        ; preds = %if.end.44, %lor.lhs.false.20
  br label %for.inc

for.inc:                                          ; preds = %if.end.45
  %59 = load i32, i32* %j, align 4
  %inc = add nsw i32 %59, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.16

for.end:                                          ; preds = %for.cond.16
  store i32 0, i32* %j, align 4
  br label %for.cond.46

for.cond.46:                                      ; preds = %for.inc.79, %for.end
  %60 = load i32, i32* %j, align 4
  %61 = load i32, i32* %n_channels, align 4
  %cmp47 = icmp slt i32 %60, %61
  br i1 %cmp47, label %for.body.48, label %for.end.81

for.body.48:                                      ; preds = %for.cond.46
  %62 = load i32 (i32, i32, i8*)*, i32 (i32, i32, i8*)** %constraint.addr, align 8
  %tobool49 = icmp ne i32 (i32, i32, i8*)* %62, null
  br i1 %tobool49, label %lor.lhs.false.50, label %if.then.57

lor.lhs.false.50:                                 ; preds = %for.body.48
  %63 = load i32 (i32, i32, i8*)*, i32 (i32, i32, i8*)** %constraint.addr, align 8
  %64 = load i32, i32* %i, align 4
  %idxprom51 = sext i32 %64 to i64
  %65 = load i32*, i32** %images, align 8
  %arrayidx52 = getelementptr inbounds i32, i32* %65, i64 %idxprom51
  %66 = load i32, i32* %arrayidx52, align 4
  %67 = load i32, i32* %j, align 4
  %idxprom53 = sext i32 %67 to i64
  %68 = load i32*, i32** %channels, align 8
  %arrayidx54 = getelementptr inbounds i32, i32* %68, i64 %idxprom53
  %69 = load i32, i32* %arrayidx54, align 4
  %70 = load i8*, i8** %data.addr, align 8
  %call55 = call i32 %63(i32 %66, i32 %69, i8* %70)
  %tobool56 = icmp ne i32 %call55, 0
  br i1 %tobool56, label %if.then.57, label %if.end.78

if.then.57:                                       ; preds = %lor.lhs.false.50, %for.body.48
  %71 = load i32, i32* %j, align 4
  %idxprom58 = sext i32 %71 to i64
  %72 = load i32*, i32** %channels, align 8
  %arrayidx59 = getelementptr inbounds i32, i32* %72, i64 %idxprom58
  %73 = load i32, i32* %arrayidx59, align 4
  %call60 = call i8* @gimp_item_get_name(i32 %73)
  store i8* %call60, i8** %name, align 8
  %74 = load %struct._GtkWidget*, %struct._GtkWidget** %menu, align 8
  %75 = load i8*, i8** %image_label, align 8
  %76 = load i8*, i8** %name, align 8
  %77 = load i32, i32* %j, align 4
  %idxprom61 = sext i32 %77 to i64
  %78 = load i32*, i32** %channels, align 8
  %arrayidx62 = getelementptr inbounds i32, i32* %78, i64 %idxprom61
  %79 = load i32, i32* %arrayidx62, align 4
  %call63 = call %struct._GtkWidget* @gimp_menu_add_item(%struct._GtkWidget* %74, i8* %75, i8* %76, i32 %79)
  %80 = load i8*, i8** %name, align 8
  call void @g_free(i8* %80)
  %81 = load i32, i32* %j, align 4
  %idxprom64 = sext i32 %81 to i64
  %82 = load i32*, i32** %channels, align 8
  %arrayidx65 = getelementptr inbounds i32, i32* %82, i64 %idxprom64
  %83 = load i32, i32* %arrayidx65, align 4
  %84 = load i32, i32* %active_drawable.addr, align 4
  %cmp66 = icmp eq i32 %83, %84
  br i1 %cmp66, label %if.then.67, label %if.else.70

if.then.67:                                       ; preds = %if.then.57
  %85 = load i32, i32* %active_drawable.addr, align 4
  store i32 %85, i32* %drawable, align 4
  %86 = load %struct._GtkWidget*, %struct._GtkWidget** %menu, align 8
  %87 = bitcast %struct._GtkWidget* %86 to %struct._GTypeInstance*
  %call68 = call i64 @gtk_menu_get_type() #4
  %call69 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %87, i64 %call68)
  %88 = bitcast %struct._GTypeInstance* %call69 to %struct._GtkMenu*
  %89 = load i32, i32* %k, align 4
  call void @gtk_menu_set_active(%struct._GtkMenu* %88, i32 %89)
  br label %if.end.76

if.else.70:                                       ; preds = %if.then.57
  %90 = load i32, i32* %drawable, align 4
  %cmp71 = icmp eq i32 %90, -1
  br i1 %cmp71, label %if.then.72, label %if.end.75

if.then.72:                                       ; preds = %if.else.70
  %91 = load i32, i32* %j, align 4
  %idxprom73 = sext i32 %91 to i64
  %92 = load i32*, i32** %channels, align 8
  %arrayidx74 = getelementptr inbounds i32, i32* %92, i64 %idxprom73
  %93 = load i32, i32* %arrayidx74, align 4
  store i32 %93, i32* %drawable, align 4
  br label %if.end.75

if.end.75:                                        ; preds = %if.then.72, %if.else.70
  br label %if.end.76

if.end.76:                                        ; preds = %if.end.75, %if.then.67
  %94 = load i32, i32* %k, align 4
  %add77 = add nsw i32 %94, 1
  store i32 %add77, i32* %k, align 4
  br label %if.end.78

if.end.78:                                        ; preds = %if.end.76, %lor.lhs.false.50
  br label %for.inc.79

for.inc.79:                                       ; preds = %if.end.78
  %95 = load i32, i32* %j, align 4
  %inc80 = add nsw i32 %95, 1
  store i32 %inc80, i32* %j, align 4
  br label %for.cond.46

for.end.81:                                       ; preds = %for.cond.46
  %96 = load i8*, i8** %image_label, align 8
  call void @g_free(i8* %96)
  %97 = load i32*, i32** %layers, align 8
  %98 = bitcast i32* %97 to i8*
  call void @g_free(i8* %98)
  %99 = load i32*, i32** %channels, align 8
  %100 = bitcast i32* %99 to i8*
  call void @g_free(i8* %100)
  br label %if.end.82

if.end.82:                                        ; preds = %for.end.81, %lor.lhs.false
  br label %for.inc.83

for.inc.83:                                       ; preds = %if.end.82
  %101 = load i32, i32* %i, align 4
  %inc84 = add nsw i32 %101, 1
  store i32 %inc84, i32* %i, align 4
  br label %for.cond

for.end.85:                                       ; preds = %for.cond
  %102 = load i32*, i32** %images, align 8
  %103 = bitcast i32* %102 to i8*
  call void @g_free(i8* %103)
  %104 = load i32, i32* %k, align 4
  %cmp86 = icmp eq i32 %104, 0
  br i1 %cmp86, label %if.then.87, label %if.end.89

if.then.87:                                       ; preds = %for.end.85
  %105 = load %struct._GtkWidget*, %struct._GtkWidget** %menu, align 8
  %call88 = call %struct._GtkWidget* @gimp_menu_add_empty(%struct._GtkWidget* %105)
  br label %if.end.89

if.end.89:                                        ; preds = %if.then.87, %for.end.85
  %106 = load void (i32, i8*)*, void (i32, i8*)** %callback.addr, align 8
  %107 = load i32, i32* %drawable, align 4
  %108 = load i8*, i8** %data.addr, align 8
  call void %106(i32 %107, i8* %108)
  %109 = load %struct._GtkWidget*, %struct._GtkWidget** %menu, align 8
  ret %struct._GtkWidget* %109
}

declare %struct._GtkWidget* @gtk_menu_new() #1

declare void @g_object_set_data(%struct._GObject*, i8*, i8*) #1

declare noalias i8* @g_strdup(i8*) #1

declare %struct._GtkWidget* @gtk_menu_item_new() #1

declare void @gtk_menu_shell_append(%struct._GtkMenuShell*, %struct._GtkWidget*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_menu_shell_get_type() #2

declare void @gtk_widget_show(%struct._GtkWidget*) #1

declare i64 @g_signal_connect_data(i8*, i8*, void ()*, i8*, void (i8*, %struct._GClosure*)*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_menu_callback(%struct._GtkWidget* %widget, i8* %any_ID) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %any_ID.addr = alloca i8*, align 8
  %parent = alloca %struct._GtkWidget*, align 8
  %callback = alloca void (i32, i8*)*, align 8
  %callback_data = alloca i8*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store i8* %any_ID, i8** %any_ID.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %call = call %struct._GtkWidget* @gtk_widget_get_parent(%struct._GtkWidget* %0)
  store %struct._GtkWidget* %call, %struct._GtkWidget** %parent, align 8
  %1 = load %struct._GtkWidget*, %struct._GtkWidget** %parent, align 8
  %2 = bitcast %struct._GtkWidget* %1 to %struct._GTypeInstance*
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %2, i64 80)
  %3 = bitcast %struct._GTypeInstance* %call1 to %struct._GObject*
  %call2 = call i8* @g_object_get_data(%struct._GObject* %3, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i32 0, i32 0))
  %4 = bitcast i8* %call2 to void (i32, i8*)*
  store void (i32, i8*)* %4, void (i32, i8*)** %callback, align 8
  %5 = load %struct._GtkWidget*, %struct._GtkWidget** %parent, align 8
  %6 = bitcast %struct._GtkWidget* %5 to %struct._GTypeInstance*
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %6, i64 80)
  %7 = bitcast %struct._GTypeInstance* %call3 to %struct._GObject*
  %call4 = call i8* @g_object_get_data(%struct._GObject* %7, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i32 0, i32 0))
  store i8* %call4, i8** %callback_data, align 8
  %8 = load void (i32, i8*)*, void (i32, i8*)** %callback, align 8
  %9 = load i8*, i8** %any_ID.addr, align 8
  %10 = ptrtoint i8* %9 to i64
  %conv = trunc i64 %10 to i32
  %11 = load i8*, i8** %callback_data, align 8
  call void %8(i32 %conv, i8* %11)
  ret void
}

declare %struct._GtkWidget* @gtk_box_new(i32, i32) #1

declare void @gtk_container_add(%struct._GtkContainer*, %struct._GtkWidget*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_container_get_type() #2

declare void @gtk_box_pack_start(%struct._GtkBox*, %struct._GtkWidget*, i32, i32, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_box_get_type() #2

; Function Attrs: nounwind uwtable
define internal %struct._GtkWidget* @gimp_menu_make_preview(i32 %any_ID, i32 %is_image, i32 %width, i32 %height) #0 {
entry:
  %any_ID.addr = alloca i32, align 4
  %is_image.addr = alloca i32, align 4
  %width.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  %image = alloca %struct._GtkWidget*, align 8
  %pixbuf = alloca %struct._GdkPixbuf*, align 8
  store i32 %any_ID, i32* %any_ID.addr, align 4
  store i32 %is_image, i32* %is_image.addr, align 4
  store i32 %width, i32* %width.addr, align 4
  store i32 %height, i32* %height.addr, align 4
  %0 = load i32, i32* %is_image.addr, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %any_ID.addr, align 4
  %2 = load i32, i32* %width.addr, align 4
  %3 = load i32, i32* %height.addr, align 4
  %call = call %struct._GdkPixbuf* @gimp_image_get_thumbnail(i32 %1, i32 %2, i32 %3, i32 1)
  store %struct._GdkPixbuf* %call, %struct._GdkPixbuf** %pixbuf, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %4 = load i32, i32* %any_ID.addr, align 4
  %5 = load i32, i32* %width.addr, align 4
  %6 = load i32, i32* %height.addr, align 4
  %call1 = call %struct._GdkPixbuf* @gimp_drawable_get_thumbnail(i32 %4, i32 %5, i32 %6, i32 1)
  store %struct._GdkPixbuf* %call1, %struct._GdkPixbuf** %pixbuf, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %7 = load %struct._GdkPixbuf*, %struct._GdkPixbuf** %pixbuf, align 8
  %call2 = call %struct._GtkWidget* @gtk_image_new_from_pixbuf(%struct._GdkPixbuf* %7)
  store %struct._GtkWidget* %call2, %struct._GtkWidget** %image, align 8
  %8 = load %struct._GdkPixbuf*, %struct._GdkPixbuf** %pixbuf, align 8
  %9 = bitcast %struct._GdkPixbuf* %8 to i8*
  call void @g_object_unref(i8* %9)
  %10 = load %struct._GtkWidget*, %struct._GtkWidget** %image, align 8
  ret %struct._GtkWidget* %10
}

declare %struct._GtkWidget* @gtk_label_new(i8*) #1

declare %struct._GtkWidget* @gtk_widget_get_parent(%struct._GtkWidget*) #1

declare i8* @g_object_get_data(%struct._GObject*, i8*) #1

declare %struct._GdkPixbuf* @gimp_image_get_thumbnail(i32, i32, i32, i32) #1

declare %struct._GdkPixbuf* @gimp_drawable_get_thumbnail(i32, i32, i32, i32) #1

declare %struct._GtkWidget* @gtk_image_new_from_pixbuf(%struct._GdkPixbuf*) #1

declare void @g_object_unref(i8*) #1

declare %struct._GtkWidget* @gtk_menu_item_new_with_label(i8*) #1

; Function Attrs: nounwind
declare i8* @dgettext(i8*, i8*) #3

declare void @gtk_widget_set_sensitive(%struct._GtkWidget*, i32) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
