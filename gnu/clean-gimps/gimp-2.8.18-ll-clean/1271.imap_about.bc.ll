; ModuleID = './plug-ins/imagemap/imap_about.bc'
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
%struct._GClosure = type { i32, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i8*, %struct._GClosureNotifyData* }
%struct._GValue = type { i64, [2 x %union.anon] }
%union.anon = type { i64 }
%struct._GClosureNotifyData = type { i8*, {}* }
%struct._GtkWindow = type <{ %struct._GtkBin, i8*, i8*, i8*, i8*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWindow*, %struct._GtkWindowGeometryInfo*, %struct._GdkDrawable*, %struct._GtkWindowGroup*, i16, i32, [2 x i8], i32, i32, i32, i32, i32, i32, %struct._GdkScreen* }>
%struct._GtkBin = type { %struct._GtkContainer, %struct._GtkWidget* }
%struct._GtkContainer = type { %struct._GtkWidget, %struct._GtkWidget*, i24 }
%struct._GtkWindowGeometryInfo = type opaque
%struct._GtkWindowGroup = type { %struct._GObject, %struct._GSList* }
%struct._GdkScreen = type { %struct._GObject, i8, [32 x %struct._GdkGC*], [32 x %struct._GdkGC*], [32 x %struct._GdkGC*], %struct._cairo_font_options*, double }
%struct._cairo_font_options = type opaque

@do_about_dialog.dialog = internal global %struct._GtkWidget* null, align 8
@.str = private unnamed_addr constant [32 x i8] c"Maurits Rijk (m.rijk@chello.nl)\00", align 1
@do_about_dialog.authors = private unnamed_addr constant [2 x i8*] [i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i32 0, i32 0), i8* null], align 16
@.str.1 = private unnamed_addr constant [14 x i8] c"transient-for\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"program-name\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"Image Map Plug-In\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"2.3\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"authors\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"copyright\00", align 1
@.str.8 = private unnamed_addr constant [39 x i8] c"Copyright \C2\A9 1999-2005 by Maurits Rijk\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"license\00", align 1
@.str.10 = private unnamed_addr constant [46 x i8] c"Released under the GNU General Public License\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"response\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"destroy\00", align 1

; Function Attrs: nounwind uwtable
define void @do_about_dialog() #0 {
entry:
  %authors = alloca [2 x i8*], align 16
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** @do_about_dialog.dialog, align 8
  %tobool = icmp ne %struct._GtkWidget* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %1 = bitcast [2 x i8*]* %authors to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1, i8* bitcast ([2 x i8*]* @do_about_dialog.authors to i8*), i64 16, i32 16, i1 false)
  %call = call i64 @gtk_about_dialog_get_type() #5
  %call1 = call %struct._GtkWidget* @get_dialog()
  %call2 = call i8* @gettext(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i32 0, i32 0)) #1
  %arraydecay = getelementptr inbounds [2 x i8*], [2 x i8*]* %authors, i32 0, i32 0
  %call3 = call i8* @gettext(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.8, i32 0, i32 0)) #1
  %call4 = call i8* @gettext(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.10, i32 0, i32 0)) #1
  %call5 = call i8* (i64, i8*, ...) @g_object_new(i64 %call, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0), %struct._GtkWidget* %call1, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0), i8* %call2, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i32 0, i32 0), i8** %arraydecay, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i32 0, i32 0), i8* %call3, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i32 0, i32 0), i8* %call4, i8* null)
  %2 = bitcast i8* %call5 to %struct._GtkWidget*
  store %struct._GtkWidget* %2, %struct._GtkWidget** @do_about_dialog.dialog, align 8
  %3 = load %struct._GtkWidget*, %struct._GtkWidget** @do_about_dialog.dialog, align 8
  %4 = bitcast %struct._GtkWidget* %3 to i8*
  %5 = load %struct._GtkWidget*, %struct._GtkWidget** @do_about_dialog.dialog, align 8
  %6 = bitcast %struct._GtkWidget* %5 to i8*
  %call6 = call i64 @g_signal_connect_data(i8* %4, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*)* @gtk_widget_destroy to void ()*), i8* %6, void (i8*, %struct._GClosure*)* null, i32 0)
  %7 = load %struct._GtkWidget*, %struct._GtkWidget** @do_about_dialog.dialog, align 8
  %8 = bitcast %struct._GtkWidget* %7 to i8*
  %call7 = call i64 @g_signal_connect_data(i8* %8, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, %struct._GtkWidget**)* @gtk_widget_destroyed to void ()*), i8* bitcast (%struct._GtkWidget** @do_about_dialog.dialog to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %9 = load %struct._GtkWidget*, %struct._GtkWidget** @do_about_dialog.dialog, align 8
  %10 = bitcast %struct._GtkWidget* %9 to %struct._GTypeInstance*
  %call8 = call i64 @gtk_window_get_type() #5
  %call9 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %10, i64 %call8)
  %11 = bitcast %struct._GTypeInstance* %call9 to %struct._GtkWindow*
  call void @gtk_window_present(%struct._GtkWindow* %11)
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

declare i8* @g_object_new(i64, i8*, ...) #2

; Function Attrs: nounwind readnone
declare i64 @gtk_about_dialog_get_type() #3

declare %struct._GtkWidget* @get_dialog() #2

; Function Attrs: nounwind
declare i8* @gettext(i8*) #4

declare i64 @g_signal_connect_data(i8*, i8*, void ()*, i8*, void (i8*, %struct._GClosure*)*, i32) #2

declare void @gtk_widget_destroy(%struct._GtkWidget*) #2

declare void @gtk_widget_destroyed(%struct._GtkWidget*, %struct._GtkWidget**) #2

declare void @gtk_window_present(%struct._GtkWindow*) #2

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #2

; Function Attrs: nounwind readnone
declare i64 @gtk_window_get_type() #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
