; ModuleID = './plug-ins/imagemap/imap_menu_funcs.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GtkAccelGroup = type { %struct._GObject, i32, i32, %struct._GSList*, i32, %struct._GtkAccelGroupEntry* }
%struct._GObject = type { %struct._GTypeInstance, i32, %struct._GData* }
%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GData = type opaque
%struct._GSList = type { i8*, %struct._GSList* }
%struct._GtkAccelGroupEntry = type { %struct._GtkAccelKey, %struct._GClosure*, i32 }
%struct._GtkAccelKey = type { i32, i32, i16 }
%struct._GClosure = type { i32, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i8*, %struct._GClosureNotifyData* }
%struct._GValue = type { i64, [2 x %union.anon] }
%union.anon = type { i64 }
%struct._GClosureNotifyData = type { i8*, void (i8*, %struct._GClosure*)* }
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
%struct._GtkWindow = type <{ %struct._GtkBin, i8*, i8*, i8*, i8*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWindow*, %struct._GtkWindowGeometryInfo*, %struct._GdkDrawable*, %struct._GtkWindowGroup*, i16, i32, [2 x i8], i32, i32, i32, i32, i32, i32, %struct._GdkScreen* }>
%struct._GtkBin = type { %struct._GtkContainer, %struct._GtkWidget* }
%struct._GtkContainer = type { %struct._GtkWidget, %struct._GtkWidget*, i24 }
%struct._GtkWindowGeometryInfo = type opaque
%struct._GtkWindowGroup = type { %struct._GObject, %struct._GSList* }
%struct._GdkScreen = type { %struct._GObject, i8, [32 x %struct._GdkGC*], [32 x %struct._GdkGC*], [32 x %struct._GdkGC*], %struct._cairo_font_options*, double }
%struct._cairo_font_options = type opaque
%struct._GtkMenuShell = type { %struct._GtkContainer, %struct._GList*, %struct._GtkWidget*, %struct._GtkWidget*, i32, i32, i8 }
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }

@accelerator_group = internal global %struct._GtkAccelGroup* null, align 8
@.str = private unnamed_addr constant [9 x i8] c"activate\00", align 1

; Function Attrs: nounwind uwtable
define void @init_accel_group(%struct._GtkWidget* %window) #0 {
entry:
  %window.addr = alloca %struct._GtkWidget*, align 8
  store %struct._GtkWidget* %window, %struct._GtkWidget** %window.addr, align 8
  %call = call %struct._GtkAccelGroup* @gtk_accel_group_new()
  store %struct._GtkAccelGroup* %call, %struct._GtkAccelGroup** @accelerator_group, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %window.addr, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call1 = call i64 @gtk_window_get_type() #3
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call1)
  %2 = bitcast %struct._GTypeInstance* %call2 to %struct._GtkWindow*
  %3 = load %struct._GtkAccelGroup*, %struct._GtkAccelGroup** @accelerator_group, align 8
  call void @gtk_window_add_accel_group(%struct._GtkWindow* %2, %struct._GtkAccelGroup* %3)
  ret void
}

declare %struct._GtkAccelGroup* @gtk_accel_group_new() #1

declare void @gtk_window_add_accel_group(%struct._GtkWindow*, %struct._GtkAccelGroup*) #1

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_window_get_type() #2

; Function Attrs: nounwind uwtable
define void @add_accelerator(%struct._GtkWidget* %widget, i32 %accelerator_key, i8 zeroext %accelerator_mods) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %accelerator_key.addr = alloca i32, align 4
  %accelerator_mods.addr = alloca i8, align 1
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store i32 %accelerator_key, i32* %accelerator_key.addr, align 4
  store i8 %accelerator_mods, i8* %accelerator_mods.addr, align 1
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %1 = load %struct._GtkAccelGroup*, %struct._GtkAccelGroup** @accelerator_group, align 8
  %2 = load i32, i32* %accelerator_key.addr, align 4
  %3 = load i8, i8* %accelerator_mods.addr, align 1
  %conv = zext i8 %3 to i32
  call void @gtk_widget_add_accelerator(%struct._GtkWidget* %0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), %struct._GtkAccelGroup* %1, i32 %2, i32 %conv, i32 1)
  ret void
}

declare void @gtk_widget_add_accelerator(%struct._GtkWidget*, i8*, %struct._GtkAccelGroup*, i32, i32, i32) #1

; Function Attrs: nounwind uwtable
define %struct._GtkWidget* @insert_item_with_label(%struct._GtkWidget* %parent, i32 %position, i8* %label, void (%struct._GtkWidget*, i8*)* %activate, i8* %data) #0 {
entry:
  %parent.addr = alloca %struct._GtkWidget*, align 8
  %position.addr = alloca i32, align 4
  %label.addr = alloca i8*, align 8
  %activate.addr = alloca void (%struct._GtkWidget*, i8*)*, align 8
  %data.addr = alloca i8*, align 8
  %item = alloca %struct._GtkWidget*, align 8
  store %struct._GtkWidget* %parent, %struct._GtkWidget** %parent.addr, align 8
  store i32 %position, i32* %position.addr, align 4
  store i8* %label, i8** %label.addr, align 8
  store void (%struct._GtkWidget*, i8*)* %activate, void (%struct._GtkWidget*, i8*)** %activate.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %label.addr, align 8
  %call = call %struct._GtkWidget* @gtk_image_menu_item_new_with_mnemonic(i8* %0)
  store %struct._GtkWidget* %call, %struct._GtkWidget** %item, align 8
  %1 = load %struct._GtkWidget*, %struct._GtkWidget** %parent.addr, align 8
  %2 = bitcast %struct._GtkWidget* %1 to %struct._GTypeInstance*
  %call1 = call i64 @gtk_menu_shell_get_type() #3
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %2, i64 %call1)
  %3 = bitcast %struct._GTypeInstance* %call2 to %struct._GtkMenuShell*
  %4 = load %struct._GtkWidget*, %struct._GtkWidget** %item, align 8
  %5 = load i32, i32* %position.addr, align 4
  call void @gtk_menu_shell_insert(%struct._GtkMenuShell* %3, %struct._GtkWidget* %4, i32 %5)
  %6 = load %struct._GtkWidget*, %struct._GtkWidget** %item, align 8
  %7 = bitcast %struct._GtkWidget* %6 to i8*
  %8 = load void (%struct._GtkWidget*, i8*)*, void (%struct._GtkWidget*, i8*)** %activate.addr, align 8
  %9 = bitcast void (%struct._GtkWidget*, i8*)* %8 to void ()*
  %10 = load i8*, i8** %data.addr, align 8
  %call3 = call i64 @g_signal_connect_data(i8* %7, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), void ()* %9, i8* %10, void (i8*, %struct._GClosure*)* null, i32 0)
  %11 = load %struct._GtkWidget*, %struct._GtkWidget** %item, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %11)
  %12 = load %struct._GtkWidget*, %struct._GtkWidget** %item, align 8
  ret %struct._GtkWidget* %12
}

declare %struct._GtkWidget* @gtk_image_menu_item_new_with_mnemonic(i8*) #1

declare void @gtk_menu_shell_insert(%struct._GtkMenuShell*, %struct._GtkWidget*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_menu_shell_get_type() #2

declare i64 @g_signal_connect_data(i8*, i8*, void ()*, i8*, void (i8*, %struct._GClosure*)*, i32) #1

declare void @gtk_widget_show(%struct._GtkWidget*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
