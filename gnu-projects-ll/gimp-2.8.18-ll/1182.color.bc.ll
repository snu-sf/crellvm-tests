; ModuleID = './plug-ins/gimpressionist/color.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gimpressionist_vals_t = type { i32, double, double, i32, double, double, double, double, i32, double, double, double, i32, i32, [200 x i8], [200 x i8], %struct._GimpRGB, i32, i32, [50 x %struct.vector], i32, i32, double, double, double, i32, i32, i32, i32, i32, double, i32, double, double, i32, double, [50 x %struct.smvector], i32, double, i32, i32, i32, i32, double }
%struct._GimpRGB = type { double, double, double, double }
%struct.vector = type { double, double, double, double, double, double, i32 }
%struct.smvector = type { double, double, double, double }
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
%struct._GtkToggleButton = type { %struct._GtkButton, i8 }
%struct._GtkButton = type { %struct._GtkBin, %struct._GdkDrawable*, i8*, i32, i16 }
%struct._GtkBin = type { %struct._GtkContainer, %struct._GtkWidget* }
%struct._GtkContainer = type { %struct._GtkWidget, %struct._GtkWidget*, i24 }
%struct._GtkAdjustment = type { %struct._GtkObject, double, double, double, double, double, double }
%struct._GtkNotebook = type { %struct._GtkContainer, i8*, %struct._GList*, %struct._GList*, %struct._GList*, %struct._GtkWidget*, %struct._GdkDrawable*, i32, i16, i16, i24 }
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct._GtkBox = type { %struct._GtkContainer, %struct._GList*, i16, i8 }
%struct._GtkTable = type { %struct._GtkContainer, %struct._GList*, %struct._GtkTableRowCol*, %struct._GtkTableRowCol*, i16, i16, i16, i16, i8 }
%struct._GtkTableRowCol = type { i16, i16, i16, i8 }
%struct._GClosure = type { i32, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i8*, %struct._GClosureNotifyData* }
%struct._GValue = type { i64, [2 x %union.anon] }
%union.anon = type { i64 }
%struct._GClosureNotifyData = type { i8*, {}* }

@pcvals = external global %struct.gimpressionist_vals_t, align 8
@colorradio = internal global [2 x %struct._GtkWidget*] zeroinitializer, align 16
@colornoiseadjust = internal global %struct._GtkObject* null, align 8
@.str = private unnamed_addr constant [7 x i8] c"Co_lor\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"Color\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"A_verage under brush\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"C_enter of brush\00", align 1
@.str.4 = private unnamed_addr constant [65 x i8] c"Color is computed from the average of all pixels under the brush\00", align 1
@.str.5 = private unnamed_addr constant [60 x i8] c"Samples the color from the pixel in the center of the brush\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"Color _noise:\00", align 1
@.str.7 = private unnamed_addr constant [31 x i8] c"Adds random noise to the color\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"value-changed\00", align 1

; Function Attrs: nounwind uwtable
define void @color_restore() #0 {
entry:
  %0 = load i32, i32* getelementptr inbounds (%struct.gimpressionist_vals_t, %struct.gimpressionist_vals_t* @pcvals, i32 0, i32 42), align 4
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [2 x %struct._GtkWidget*], [2 x %struct._GtkWidget*]* @colorradio, i32 0, i64 %idxprom
  %1 = load %struct._GtkWidget*, %struct._GtkWidget** %arrayidx, align 8
  %2 = bitcast %struct._GtkWidget* %1 to %struct._GTypeInstance*
  %call = call i64 @gtk_toggle_button_get_type() #4
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %2, i64 %call)
  %3 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkToggleButton*
  call void @gtk_toggle_button_set_active(%struct._GtkToggleButton* %3, i32 1)
  %4 = load %struct._GtkObject*, %struct._GtkObject** @colornoiseadjust, align 8
  %5 = bitcast %struct._GtkObject* %4 to %struct._GTypeInstance*
  %call2 = call i64 @gtk_adjustment_get_type() #4
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 %call2)
  %6 = bitcast %struct._GTypeInstance* %call3 to %struct._GtkAdjustment*
  %7 = load double, double* getelementptr inbounds (%struct.gimpressionist_vals_t, %struct.gimpressionist_vals_t* @pcvals, i32 0, i32 43), align 8
  call void @gtk_adjustment_set_value(%struct._GtkAdjustment* %6, double %7)
  ret void
}

declare void @gtk_toggle_button_set_active(%struct._GtkToggleButton*, i32) #1

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_toggle_button_get_type() #2

declare void @gtk_adjustment_set_value(%struct._GtkAdjustment*, double) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_adjustment_get_type() #2

; Function Attrs: nounwind uwtable
define i32 @color_type_input(i32 %in) #0 {
entry:
  %in.addr = alloca i32, align 4
  store i32 %in, i32* %in.addr, align 4
  %0 = load i32, i32* %in.addr, align 4
  %cmp = icmp sgt i32 %0, 1
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end.4

cond.false:                                       ; preds = %entry
  %1 = load i32, i32* %in.addr, align 4
  %cmp1 = icmp slt i32 %1, 0
  br i1 %cmp1, label %cond.true.2, label %cond.false.3

cond.true.2:                                      ; preds = %cond.false
  br label %cond.end

cond.false.3:                                     ; preds = %cond.false
  %2 = load i32, i32* %in.addr, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false.3, %cond.true.2
  %cond = phi i32 [ 0, %cond.true.2 ], [ %2, %cond.false.3 ]
  br label %cond.end.4

cond.end.4:                                       ; preds = %cond.end, %cond.true
  %cond5 = phi i32 [ 1, %cond.true ], [ %cond, %cond.end ]
  ret i32 %cond5
}

; Function Attrs: nounwind uwtable
define void @create_colorpage(%struct._GtkNotebook* %notebook) #0 {
entry:
  %notebook.addr = alloca %struct._GtkNotebook*, align 8
  %vbox = alloca %struct._GtkWidget*, align 8
  %label = alloca %struct._GtkWidget*, align 8
  %table = alloca %struct._GtkWidget*, align 8
  %frame = alloca %struct._GtkWidget*, align 8
  store %struct._GtkNotebook* %notebook, %struct._GtkNotebook** %notebook.addr, align 8
  %call = call i8* @gettext(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0)) #5
  %call1 = call %struct._GtkWidget* @gtk_label_new_with_mnemonic(i8* %call)
  store %struct._GtkWidget* %call1, %struct._GtkWidget** %label, align 8
  %call2 = call %struct._GtkWidget* @gtk_box_new(i32 1, i32 12)
  store %struct._GtkWidget* %call2, %struct._GtkWidget** %vbox, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call3 = call i64 @gtk_container_get_type() #4
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call3)
  %2 = bitcast %struct._GTypeInstance* %call4 to %struct._GtkContainer*
  call void @gtk_container_set_border_width(%struct._GtkContainer* %2, i32 12)
  %3 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %3)
  %call5 = call i8* @gettext(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0)) #5
  %call6 = call i8* @gettext(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i32 0, i32 0)) #5
  %call7 = call i8* @gettext(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i32 0, i32 0)) #5
  %call8 = call %struct._GtkWidget* (i32, i8*, void ()*, i8*, i32, ...) @gimp_int_radio_group_new(i32 1, i8* %call5, void ()* bitcast (void (%struct._GtkWidget*, i8*)* @gimp_radio_button_update to void ()*), i8* bitcast (i32* getelementptr inbounds (%struct.gimpressionist_vals_t, %struct.gimpressionist_vals_t* @pcvals, i32 0, i32 42) to i8*), i32 0, i8* %call6, i32 0, %struct._GtkWidget** getelementptr inbounds ([2 x %struct._GtkWidget*], [2 x %struct._GtkWidget*]* @colorradio, i32 0, i64 0), i8* %call7, i32 1, %struct._GtkWidget** getelementptr inbounds ([2 x %struct._GtkWidget*], [2 x %struct._GtkWidget*]* @colorradio, i32 0, i64 1), i8* null)
  store %struct._GtkWidget* %call8, %struct._GtkWidget** %frame, align 8
  %4 = load %struct._GtkWidget*, %struct._GtkWidget** getelementptr inbounds ([2 x %struct._GtkWidget*], [2 x %struct._GtkWidget*]* @colorradio, i32 0, i64 0), align 8
  %call9 = call i8* @gettext(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.4, i32 0, i32 0)) #5
  call void @gimp_help_set_help_data(%struct._GtkWidget* %4, i8* %call9, i8* null)
  %5 = load %struct._GtkWidget*, %struct._GtkWidget** getelementptr inbounds ([2 x %struct._GtkWidget*], [2 x %struct._GtkWidget*]* @colorradio, i32 0, i64 1), align 8
  %call10 = call i8* @gettext(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.5, i32 0, i32 0)) #5
  call void @gimp_help_set_help_data(%struct._GtkWidget* %5, i8* %call10, i8* null)
  %6 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %7 = bitcast %struct._GtkWidget* %6 to %struct._GTypeInstance*
  %call11 = call i64 @gtk_box_get_type() #4
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 %call11)
  %8 = bitcast %struct._GTypeInstance* %call12 to %struct._GtkBox*
  %9 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %8, %struct._GtkWidget* %9, i32 0, i32 0, i32 0)
  %10 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %10)
  %call13 = call %struct._GtkWidget* @gtk_table_new(i32 1, i32 3, i32 0)
  store %struct._GtkWidget* %call13, %struct._GtkWidget** %table, align 8
  %11 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %12 = bitcast %struct._GtkWidget* %11 to %struct._GTypeInstance*
  %call14 = call i64 @gtk_table_get_type() #4
  %call15 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %12, i64 %call14)
  %13 = bitcast %struct._GTypeInstance* %call15 to %struct._GtkTable*
  call void @gtk_table_set_col_spacings(%struct._GtkTable* %13, i32 6)
  %14 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %15 = bitcast %struct._GtkWidget* %14 to %struct._GTypeInstance*
  %call16 = call i64 @gtk_box_get_type() #4
  %call17 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %15, i64 %call16)
  %16 = bitcast %struct._GTypeInstance* %call17 to %struct._GtkBox*
  %17 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %16, %struct._GtkWidget* %17, i32 0, i32 0, i32 0)
  %18 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %18)
  %19 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %20 = bitcast %struct._GtkWidget* %19 to %struct._GTypeInstance*
  %call18 = call i64 @gtk_table_get_type() #4
  %call19 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %20, i64 %call18)
  %21 = bitcast %struct._GTypeInstance* %call19 to %struct._GtkTable*
  %call20 = call i8* @gettext(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i32 0, i32 0)) #5
  %22 = load double, double* getelementptr inbounds (%struct.gimpressionist_vals_t, %struct.gimpressionist_vals_t* @pcvals, i32 0, i32 43), align 8
  %call21 = call i8* @gettext(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.7, i32 0, i32 0)) #5
  %call22 = call %struct._GtkObject* @gimp_scale_entry_new(%struct._GtkTable* %21, i32 0, i32 0, i8* %call20, i32 100, i32 -1, double %22, double 0.000000e+00, double 1.000000e+02, double 1.000000e+00, double 5.000000e+00, i32 0, i32 1, double 0.000000e+00, double 0.000000e+00, i8* %call21, i8* null)
  store %struct._GtkObject* %call22, %struct._GtkObject** @colornoiseadjust, align 8
  %23 = load %struct._GtkObject*, %struct._GtkObject** @colornoiseadjust, align 8
  %24 = bitcast %struct._GtkObject* %23 to i8*
  %call23 = call i64 @g_signal_connect_data(i8* %24, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, i8*)* @gimp_double_adjustment_update to void ()*), i8* bitcast (double* getelementptr inbounds (%struct.gimpressionist_vals_t, %struct.gimpressionist_vals_t* @pcvals, i32 0, i32 43) to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  call void @color_restore()
  %25 = load %struct._GtkNotebook*, %struct._GtkNotebook** %notebook.addr, align 8
  %26 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %27 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  %call24 = call i32 @gtk_notebook_append_page_menu(%struct._GtkNotebook* %25, %struct._GtkWidget* %26, %struct._GtkWidget* %27, %struct._GtkWidget* null)
  ret void
}

declare %struct._GtkWidget* @gtk_label_new_with_mnemonic(i8*) #1

; Function Attrs: nounwind
declare i8* @gettext(i8*) #3

declare %struct._GtkWidget* @gtk_box_new(i32, i32) #1

declare void @gtk_container_set_border_width(%struct._GtkContainer*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_container_get_type() #2

declare void @gtk_widget_show(%struct._GtkWidget*) #1

declare %struct._GtkWidget* @gimp_int_radio_group_new(i32, i8*, void ()*, i8*, i32, ...) #1

declare void @gimp_radio_button_update(%struct._GtkWidget*, i8*) #1

declare void @gimp_help_set_help_data(%struct._GtkWidget*, i8*, i8*) #1

declare void @gtk_box_pack_start(%struct._GtkBox*, %struct._GtkWidget*, i32, i32, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_box_get_type() #2

declare %struct._GtkWidget* @gtk_table_new(i32, i32, i32) #1

declare void @gtk_table_set_col_spacings(%struct._GtkTable*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_table_get_type() #2

declare %struct._GtkObject* @gimp_scale_entry_new(%struct._GtkTable*, i32, i32, i8*, i32, i32, double, double, double, double, double, i32, i32, double, double, i8*, i8*) #1

declare i64 @g_signal_connect_data(i8*, i8*, void ()*, i8*, void (i8*, %struct._GClosure*)*, i32) #1

declare void @gimp_double_adjustment_update(%struct._GtkAdjustment*, i8*) #1

declare i32 @gtk_notebook_append_page_menu(%struct._GtkNotebook*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone }
attributes #5 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}