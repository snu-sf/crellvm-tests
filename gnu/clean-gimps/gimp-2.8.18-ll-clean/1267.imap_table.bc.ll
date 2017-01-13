; ModuleID = './plug-ins/imagemap/imap_table.bc'
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
%struct._GtkAdjustment = type { %struct._GtkObject, double, double, double, double, double, double }
%struct._GtkSpinButton = type { %struct._GtkEntry, %struct._GtkAdjustment*, %struct._GdkDrawable*, i32, double, double, i32, i24 }
%struct._GtkEntry = type { %struct._GtkWidget, i8*, i8, i16, i16, %struct._GdkDrawable*, %struct._GtkIMContext*, %struct._GtkWidget*, i32, i32, %struct._PangoLayout*, i16, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i32, i32, i32, i32, i32 }
%struct._GtkIMContext = type { %struct._GObject }
%struct._PangoLayout = type opaque
%struct._GtkLabel = type { %struct._GtkMisc, i8*, i16, i32, i8*, %struct._PangoAttrList*, %struct._PangoAttrList*, %struct._PangoLayout*, %struct._GtkWidget*, %struct._GtkWindow*, %struct._GtkLabelSelectionInfo* }
%struct._GtkMisc = type { %struct._GtkWidget, float, float, i16, i16 }
%struct._PangoAttrList = type opaque
%struct._GtkWindow = type <{ %struct._GtkBin, i8*, i8*, i8*, i8*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWindow*, %struct._GtkWindowGeometryInfo*, %struct._GdkDrawable*, %struct._GtkWindowGroup*, i16, i32, [2 x i8], i32, i32, i32, i32, i32, i32, %struct._GdkScreen* }>
%struct._GtkBin = type { %struct._GtkContainer, %struct._GtkWidget* }
%struct._GtkContainer = type { %struct._GtkWidget, %struct._GtkWidget*, i24 }
%struct._GtkWindowGeometryInfo = type opaque
%struct._GtkWindowGroup = type { %struct._GObject, %struct._GSList* }
%struct._GdkScreen = type { %struct._GObject, i8, [32 x %struct._GdkGC*], [32 x %struct._GdkGC*], [32 x %struct._GdkGC*], %struct._cairo_font_options*, double }
%struct._cairo_font_options = type opaque
%struct._GtkLabelSelectionInfo = type opaque
%struct._GtkTable = type { %struct._GtkContainer, %struct._GList*, %struct._GtkTableRowCol*, %struct._GtkTableRowCol*, i16, i16, i16, i16, i8 }
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct._GtkTableRowCol = type { i16, i16, i16, i8 }

; Function Attrs: nounwind uwtable
define %struct._GtkWidget* @create_spin_button_in_table(%struct._GtkWidget* %table, %struct._GtkWidget* %label, i32 %row, i32 %col, i32 %value, i32 %min, i32 %max) #0 {
entry:
  %table.addr = alloca %struct._GtkWidget*, align 8
  %label.addr = alloca %struct._GtkWidget*, align 8
  %row.addr = alloca i32, align 4
  %col.addr = alloca i32, align 4
  %value.addr = alloca i32, align 4
  %min.addr = alloca i32, align 4
  %max.addr = alloca i32, align 4
  %adj = alloca %struct._GtkObject*, align 8
  %button = alloca %struct._GtkWidget*, align 8
  store %struct._GtkWidget* %table, %struct._GtkWidget** %table.addr, align 8
  store %struct._GtkWidget* %label, %struct._GtkWidget** %label.addr, align 8
  store i32 %row, i32* %row.addr, align 4
  store i32 %col, i32* %col.addr, align 4
  store i32 %value, i32* %value.addr, align 4
  store i32 %min, i32* %min.addr, align 4
  store i32 %max, i32* %max.addr, align 4
  %0 = load i32, i32* %value.addr, align 4
  %conv = sitofp i32 %0 to double
  %1 = load i32, i32* %min.addr, align 4
  %conv1 = sitofp i32 %1 to double
  %2 = load i32, i32* %max.addr, align 4
  %conv2 = sitofp i32 %2 to double
  %call = call %struct._GtkObject* @gtk_adjustment_new(double %conv, double %conv1, double %conv2, double 1.000000e+00, double 1.000000e+00, double 1.000000e+00)
  store %struct._GtkObject* %call, %struct._GtkObject** %adj, align 8
  %3 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %4 = bitcast %struct._GtkObject* %3 to %struct._GTypeInstance*
  %call3 = call i64 @gtk_adjustment_get_type() #3
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call3)
  %5 = bitcast %struct._GTypeInstance* %call4 to %struct._GtkAdjustment*
  %call5 = call %struct._GtkWidget* @gtk_spin_button_new(%struct._GtkAdjustment* %5, double 1.000000e+00, i32 0)
  store %struct._GtkWidget* %call5, %struct._GtkWidget** %button, align 8
  %6 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %7 = bitcast %struct._GtkWidget* %6 to %struct._GTypeInstance*
  %call6 = call i64 @gtk_spin_button_get_type() #3
  %call7 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 %call6)
  %8 = bitcast %struct._GTypeInstance* %call7 to %struct._GtkSpinButton*
  call void @gtk_spin_button_set_numeric(%struct._GtkSpinButton* %8, i32 1)
  %9 = load %struct._GtkWidget*, %struct._GtkWidget** %label.addr, align 8
  %tobool = icmp ne %struct._GtkWidget* %9, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %10 = load %struct._GtkWidget*, %struct._GtkWidget** %label.addr, align 8
  %11 = bitcast %struct._GtkWidget* %10 to %struct._GTypeInstance*
  %call8 = call i64 @gtk_label_get_type() #3
  %call9 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %11, i64 %call8)
  %12 = bitcast %struct._GTypeInstance* %call9 to %struct._GtkLabel*
  %13 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_label_set_mnemonic_widget(%struct._GtkLabel* %12, %struct._GtkWidget* %13)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %14 = load %struct._GtkWidget*, %struct._GtkWidget** %table.addr, align 8
  %15 = load i32, i32* %row.addr, align 4
  %16 = load i32, i32* %col.addr, align 4
  %17 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %call10 = call %struct._GtkWidget* @add_widget_to_table(%struct._GtkWidget* %14, i32 %15, i32 %16, %struct._GtkWidget* %17)
  ret %struct._GtkWidget* %call10
}

declare %struct._GtkObject* @gtk_adjustment_new(double, double, double, double, double, double) #1

declare %struct._GtkWidget* @gtk_spin_button_new(%struct._GtkAdjustment*, double, i32) #1

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_adjustment_get_type() #2

declare void @gtk_spin_button_set_numeric(%struct._GtkSpinButton*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_spin_button_get_type() #2

declare void @gtk_label_set_mnemonic_widget(%struct._GtkLabel*, %struct._GtkWidget*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_label_get_type() #2

; Function Attrs: nounwind uwtable
define internal %struct._GtkWidget* @add_widget_to_table(%struct._GtkWidget* %table, i32 %row, i32 %col, %struct._GtkWidget* %w) #0 {
entry:
  %table.addr = alloca %struct._GtkWidget*, align 8
  %row.addr = alloca i32, align 4
  %col.addr = alloca i32, align 4
  %w.addr = alloca %struct._GtkWidget*, align 8
  store %struct._GtkWidget* %table, %struct._GtkWidget** %table.addr, align 8
  store i32 %row, i32* %row.addr, align 4
  store i32 %col, i32* %col.addr, align 4
  store %struct._GtkWidget* %w, %struct._GtkWidget** %w.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %table.addr, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call = call i64 @gtk_table_get_type() #3
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkTable*
  %3 = load %struct._GtkWidget*, %struct._GtkWidget** %w.addr, align 8
  %4 = load i32, i32* %col.addr, align 4
  %5 = load i32, i32* %col.addr, align 4
  %add = add nsw i32 %5, 1
  %6 = load i32, i32* %row.addr, align 4
  %7 = load i32, i32* %row.addr, align 4
  %add2 = add nsw i32 %7, 1
  call void @gtk_table_attach_defaults(%struct._GtkTable* %2, %struct._GtkWidget* %3, i32 %4, i32 %add, i32 %6, i32 %add2)
  %8 = load %struct._GtkWidget*, %struct._GtkWidget** %w.addr, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %8)
  %9 = load %struct._GtkWidget*, %struct._GtkWidget** %w.addr, align 8
  ret %struct._GtkWidget* %9
}

; Function Attrs: nounwind uwtable
define %struct._GtkWidget* @create_check_button_in_table(%struct._GtkWidget* %table, i32 %row, i32 %col, i8* %text) #0 {
entry:
  %table.addr = alloca %struct._GtkWidget*, align 8
  %row.addr = alloca i32, align 4
  %col.addr = alloca i32, align 4
  %text.addr = alloca i8*, align 8
  %button = alloca %struct._GtkWidget*, align 8
  store %struct._GtkWidget* %table, %struct._GtkWidget** %table.addr, align 8
  store i32 %row, i32* %row.addr, align 4
  store i32 %col, i32* %col.addr, align 4
  store i8* %text, i8** %text.addr, align 8
  %0 = load i8*, i8** %text.addr, align 8
  %call = call %struct._GtkWidget* @gtk_check_button_new_with_mnemonic(i8* %0)
  store %struct._GtkWidget* %call, %struct._GtkWidget** %button, align 8
  %1 = load %struct._GtkWidget*, %struct._GtkWidget** %table.addr, align 8
  %2 = load i32, i32* %row.addr, align 4
  %3 = load i32, i32* %col.addr, align 4
  %4 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %call1 = call %struct._GtkWidget* @add_widget_to_table(%struct._GtkWidget* %1, i32 %2, i32 %3, %struct._GtkWidget* %4)
  ret %struct._GtkWidget* %call1
}

declare %struct._GtkWidget* @gtk_check_button_new_with_mnemonic(i8*) #1

; Function Attrs: nounwind uwtable
define %struct._GtkWidget* @create_radio_button_in_table(%struct._GtkWidget* %table, %struct._GSList* %group, i32 %row, i32 %col, i8* %text) #0 {
entry:
  %table.addr = alloca %struct._GtkWidget*, align 8
  %group.addr = alloca %struct._GSList*, align 8
  %row.addr = alloca i32, align 4
  %col.addr = alloca i32, align 4
  %text.addr = alloca i8*, align 8
  %button = alloca %struct._GtkWidget*, align 8
  store %struct._GtkWidget* %table, %struct._GtkWidget** %table.addr, align 8
  store %struct._GSList* %group, %struct._GSList** %group.addr, align 8
  store i32 %row, i32* %row.addr, align 4
  store i32 %col, i32* %col.addr, align 4
  store i8* %text, i8** %text.addr, align 8
  %0 = load %struct._GSList*, %struct._GSList** %group.addr, align 8
  %1 = load i8*, i8** %text.addr, align 8
  %call = call %struct._GtkWidget* @gtk_radio_button_new_with_mnemonic(%struct._GSList* %0, i8* %1)
  store %struct._GtkWidget* %call, %struct._GtkWidget** %button, align 8
  %2 = load %struct._GtkWidget*, %struct._GtkWidget** %table.addr, align 8
  %3 = load i32, i32* %row.addr, align 4
  %4 = load i32, i32* %col.addr, align 4
  %5 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %call1 = call %struct._GtkWidget* @add_widget_to_table(%struct._GtkWidget* %2, i32 %3, i32 %4, %struct._GtkWidget* %5)
  ret %struct._GtkWidget* %call1
}

declare %struct._GtkWidget* @gtk_radio_button_new_with_mnemonic(%struct._GSList*, i8*) #1

; Function Attrs: nounwind uwtable
define %struct._GtkWidget* @create_label_in_table(%struct._GtkWidget* %table, i32 %row, i32 %col, i8* %text) #0 {
entry:
  %table.addr = alloca %struct._GtkWidget*, align 8
  %row.addr = alloca i32, align 4
  %col.addr = alloca i32, align 4
  %text.addr = alloca i8*, align 8
  %label = alloca %struct._GtkWidget*, align 8
  store %struct._GtkWidget* %table, %struct._GtkWidget** %table.addr, align 8
  store i32 %row, i32* %row.addr, align 4
  store i32 %col, i32* %col.addr, align 4
  store i8* %text, i8** %text.addr, align 8
  %0 = load i8*, i8** %text.addr, align 8
  %call = call %struct._GtkWidget* @gtk_label_new_with_mnemonic(i8* %0)
  store %struct._GtkWidget* %call, %struct._GtkWidget** %label, align 8
  %1 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  %2 = bitcast %struct._GtkWidget* %1 to %struct._GTypeInstance*
  %call1 = call i64 @gtk_misc_get_type() #3
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %2, i64 %call1)
  %3 = bitcast %struct._GTypeInstance* %call2 to %struct._GtkMisc*
  call void @gtk_misc_set_alignment(%struct._GtkMisc* %3, float 0.000000e+00, float 5.000000e-01)
  %4 = load %struct._GtkWidget*, %struct._GtkWidget** %table.addr, align 8
  %5 = load i32, i32* %row.addr, align 4
  %6 = load i32, i32* %col.addr, align 4
  %7 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  %call3 = call %struct._GtkWidget* @add_widget_to_table(%struct._GtkWidget* %4, i32 %5, i32 %6, %struct._GtkWidget* %7)
  ret %struct._GtkWidget* %call3
}

declare %struct._GtkWidget* @gtk_label_new_with_mnemonic(i8*) #1

declare void @gtk_misc_set_alignment(%struct._GtkMisc*, float, float) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_misc_get_type() #2

; Function Attrs: nounwind uwtable
define %struct._GtkWidget* @create_entry_in_table(%struct._GtkWidget* %table, %struct._GtkWidget* %label, i32 %row, i32 %col) #0 {
entry:
  %table.addr = alloca %struct._GtkWidget*, align 8
  %label.addr = alloca %struct._GtkWidget*, align 8
  %row.addr = alloca i32, align 4
  %col.addr = alloca i32, align 4
  %entry1 = alloca %struct._GtkWidget*, align 8
  store %struct._GtkWidget* %table, %struct._GtkWidget** %table.addr, align 8
  store %struct._GtkWidget* %label, %struct._GtkWidget** %label.addr, align 8
  store i32 %row, i32* %row.addr, align 4
  store i32 %col, i32* %col.addr, align 4
  %call = call %struct._GtkWidget* @gtk_entry_new()
  store %struct._GtkWidget* %call, %struct._GtkWidget** %entry1, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %label.addr, align 8
  %tobool = icmp ne %struct._GtkWidget* %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct._GtkWidget*, %struct._GtkWidget** %label.addr, align 8
  %2 = bitcast %struct._GtkWidget* %1 to %struct._GTypeInstance*
  %call2 = call i64 @gtk_label_get_type() #3
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %2, i64 %call2)
  %3 = bitcast %struct._GTypeInstance* %call3 to %struct._GtkLabel*
  %4 = load %struct._GtkWidget*, %struct._GtkWidget** %entry1, align 8
  call void @gtk_label_set_mnemonic_widget(%struct._GtkLabel* %3, %struct._GtkWidget* %4)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load %struct._GtkWidget*, %struct._GtkWidget** %table.addr, align 8
  %6 = load i32, i32* %row.addr, align 4
  %7 = load i32, i32* %col.addr, align 4
  %8 = load %struct._GtkWidget*, %struct._GtkWidget** %entry1, align 8
  %call4 = call %struct._GtkWidget* @add_widget_to_table(%struct._GtkWidget* %5, i32 %6, i32 %7, %struct._GtkWidget* %8)
  ret %struct._GtkWidget* %call4
}

declare %struct._GtkWidget* @gtk_entry_new() #1

declare void @gtk_table_attach_defaults(%struct._GtkTable*, %struct._GtkWidget*, i32, i32, i32, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_table_get_type() #2

declare void @gtk_widget_show(%struct._GtkWidget*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
