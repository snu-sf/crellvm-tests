; ModuleID = './app/actions/palettes-commands.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GtkAction = type { %struct._GObject, %struct._GtkActionPrivate* }
%struct._GObject = type { %struct._GTypeInstance, i32, %struct._GData* }
%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GData = type opaque
%struct._GtkActionPrivate = type opaque
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
%struct._GSList = type { i8*, %struct._GSList* }
%struct._GtkRequisition = type { i32, i32 }
%struct._GdkRectangle = type { i32, i32, i32, i32 }
%struct._GdkDrawable = type { %struct._GObject }
%struct._GimpDialogFactory = type { %struct._GimpObject, %struct._GimpDialogFactoryPrivate* }
%struct._GimpObject = type { %struct._GObject, %struct._GimpObjectPrivate* }
%struct._GimpObjectPrivate = type opaque
%struct._GimpDialogFactoryPrivate = type opaque
%struct._GdkScreen = type { %struct._GObject, i8, [32 x %struct._GdkGC*], [32 x %struct._GdkGC*], [32 x %struct._GdkGC*], %struct._cairo_font_options*, double }
%struct._cairo_font_options = type opaque
%struct._GimpUIManager = type opaque
%struct._GimpContainerEditor = type { %struct._GtkBox, %struct._GimpContainerView*, %struct._GimpContainerEditorPrivate* }
%struct._GtkBox = type { %struct._GtkContainer, %struct._GList*, i16, i8 }
%struct._GtkContainer = type { %struct._GtkWidget, %struct._GtkWidget*, i24 }
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct._GimpContainerView = type opaque
%struct._GimpContainerEditorPrivate = type opaque

@.str = private unnamed_addr constant [27 x i8] c"gimp-palette-import-dialog\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"Merge Palette\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"gimp-palette-merge\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"Enter a name for the merged palette\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"destroy\00", align 1

; Function Attrs: nounwind uwtable
define void @palettes_import_cmd_callback(%struct._GtkAction* %action, i8* %data) #0 {
entry:
  %action.addr = alloca %struct._GtkAction*, align 8
  %data.addr = alloca i8*, align 8
  %widget = alloca %struct._GtkWidget*, align 8
  store %struct._GtkAction* %action, %struct._GtkAction** %action.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %call = call %struct._GtkWidget* @action_data_get_widget(i8* %0)
  store %struct._GtkWidget* %call, %struct._GtkWidget** %widget, align 8
  %1 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  %tobool = icmp ne %struct._GtkWidget* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %call1 = call %struct._GimpDialogFactory* @gimp_dialog_factory_get_singleton()
  %2 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  %call2 = call %struct._GdkScreen* @gtk_widget_get_screen(%struct._GtkWidget* %2)
  %call3 = call %struct._GtkWidget* @gimp_dialog_factory_dialog_new(%struct._GimpDialogFactory* %call1, %struct._GdkScreen* %call2, %struct._GimpUIManager* null, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i32 0, i32 0), i32 -1, i32 1)
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

declare %struct._GtkWidget* @action_data_get_widget(i8*) #1

declare %struct._GtkWidget* @gimp_dialog_factory_dialog_new(%struct._GimpDialogFactory*, %struct._GdkScreen*, %struct._GimpUIManager*, i8*, i32, i32) #1

declare %struct._GimpDialogFactory* @gimp_dialog_factory_get_singleton() #1

declare %struct._GdkScreen* @gtk_widget_get_screen(%struct._GtkWidget*) #1

; Function Attrs: nounwind uwtable
define void @palettes_merge_cmd_callback(%struct._GtkAction* %action, i8* %data) #0 {
entry:
  %action.addr = alloca %struct._GtkAction*, align 8
  %data.addr = alloca i8*, align 8
  %editor = alloca %struct._GimpContainerEditor*, align 8
  %dialog = alloca %struct._GtkWidget*, align 8
  store %struct._GtkAction* %action, %struct._GtkAction** %action.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = bitcast i8* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_container_editor_get_type() #4
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpContainerEditor*
  store %struct._GimpContainerEditor* %2, %struct._GimpContainerEditor** %editor, align 8
  %call2 = call i8* @gettext(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0)) #5
  %3 = load %struct._GimpContainerEditor*, %struct._GimpContainerEditor** %editor, align 8
  %4 = bitcast %struct._GimpContainerEditor* %3 to %struct._GTypeInstance*
  %call3 = call i64 @gtk_widget_get_type() #4
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call3)
  %5 = bitcast %struct._GTypeInstance* %call4 to %struct._GtkWidget*
  %call5 = call i8* @gettext(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i32 0, i32 0)) #5
  %6 = load %struct._GimpContainerEditor*, %struct._GimpContainerEditor** %editor, align 8
  %7 = bitcast %struct._GimpContainerEditor* %6 to %struct._GTypeInstance*
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 80)
  %8 = bitcast %struct._GTypeInstance* %call6 to %struct._GObject*
  %9 = load %struct._GimpContainerEditor*, %struct._GimpContainerEditor** %editor, align 8
  %10 = bitcast %struct._GimpContainerEditor* %9 to i8*
  %call7 = call %struct._GtkWidget* @gimp_query_string_box(i8* %call2, %struct._GtkWidget* %5, void (i8*, i8*)* @gimp_standard_help_func, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i32 0, i32 0), i8* %call5, i8* null, %struct._GObject* %8, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i32 0, i32 0), void (%struct._GtkWidget*, i8*, i8*)* @palettes_merge_callback, i8* %10)
  store %struct._GtkWidget* %call7, %struct._GtkWidget** %dialog, align 8
  %11 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %11)
  ret void
}

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_container_editor_get_type() #2

declare %struct._GtkWidget* @gimp_query_string_box(i8*, %struct._GtkWidget*, void (i8*, i8*)*, i8*, i8*, i8*, %struct._GObject*, i8*, void (%struct._GtkWidget*, i8*, i8*)*, i8*) #1

; Function Attrs: nounwind
declare i8* @gettext(i8*) #3

; Function Attrs: nounwind readnone
declare i64 @gtk_widget_get_type() #2

declare void @gimp_standard_help_func(i8*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @palettes_merge_callback(%struct._GtkWidget* %widget, i8* %palette_name, i8* %data) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %palette_name.addr = alloca i8*, align 8
  %data.addr = alloca i8*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store i8* %palette_name, i8** %palette_name.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  ret void
}

declare void @gtk_widget_show(%struct._GtkWidget*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone }
attributes #5 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
