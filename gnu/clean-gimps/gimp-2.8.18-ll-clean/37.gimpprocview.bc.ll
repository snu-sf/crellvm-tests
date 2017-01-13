; ModuleID = './libgimp/gimpprocview.bc'
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
%struct._GimpParamDef = type { i32, i8*, i8* }
%struct._GtkSizeGroup = type { %struct._GObject, %struct._GSList*, i8, i8, %struct._GtkRequisition }
%struct._GtkFrame = type { %struct._GtkBin, %struct._GtkWidget*, i16, float, float, %struct._GdkRectangle }
%struct._GtkBin = type { %struct._GtkContainer, %struct._GtkWidget* }
%struct._GtkContainer = type { %struct._GtkWidget, %struct._GtkWidget*, i24 }
%struct._GtkLabel = type { %struct._GtkMisc, i8*, i16, i32, i8*, %struct._PangoAttrList*, %struct._PangoAttrList*, %struct._PangoLayout*, %struct._GtkWidget*, %struct._GtkWindow*, %struct._GtkLabelSelectionInfo* }
%struct._GtkMisc = type { %struct._GtkWidget, float, float, i16, i16 }
%struct._PangoAttrList = type opaque
%struct._PangoLayout = type opaque
%struct._GtkWindow = type <{ %struct._GtkBin, i8*, i8*, i8*, i8*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWindow*, %struct._GtkWindowGeometryInfo*, %struct._GdkDrawable*, %struct._GtkWindowGroup*, i16, i32, [2 x i8], i32, i32, i32, i32, i32, i32, %struct._GdkScreen* }>
%struct._GtkWindowGeometryInfo = type opaque
%struct._GtkWindowGroup = type { %struct._GObject, %struct._GSList* }
%struct._GdkScreen = type { %struct._GObject, i8, [32 x %struct._GdkGC*], [32 x %struct._GdkGC*], [32 x %struct._GdkGC*], %struct._cairo_font_options*, double }
%struct._cairo_font_options = type opaque
%struct._GtkLabelSelectionInfo = type opaque
%struct._GtkBox = type { %struct._GtkContainer, %struct._GList*, i16, i8 }
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct._GtkTable = type { %struct._GtkContainer, %struct._GList*, %struct._GtkTableRowCol*, %struct._GtkTableRowCol*, i16, i16, i16, i16, i8 }
%struct._GtkTableRowCol = type { i16, i16, i16, i8 }

@.str = private unnamed_addr constant [8 x i8] c"UNKNOWN\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"gimp20-libgimp\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"Parameters\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"Return Values\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"Additional Information\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"Author:\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"Date:\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"Copyright:\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"monospace\00", align 1

; Function Attrs: nounwind uwtable
define %struct._GtkWidget* @gimp_proc_view_new(i8* %name, i8* %menu_path, i8* %blurb, i8* %help, i8* %author, i8* %copyright, i8* %date, i32 %type, i32 %n_params, i32 %n_return_vals, %struct._GimpParamDef* %params, %struct._GimpParamDef* %return_vals) #0 {
entry:
  %retval = alloca %struct._GtkWidget*, align 8
  %name.addr = alloca i8*, align 8
  %menu_path.addr = alloca i8*, align 8
  %blurb.addr = alloca i8*, align 8
  %help.addr = alloca i8*, align 8
  %author.addr = alloca i8*, align 8
  %copyright.addr = alloca i8*, align 8
  %date.addr = alloca i8*, align 8
  %type.addr = alloca i32, align 4
  %n_params.addr = alloca i32, align 4
  %n_return_vals.addr = alloca i32, align 4
  %params.addr = alloca %struct._GimpParamDef*, align 8
  %return_vals.addr = alloca %struct._GimpParamDef*, align 8
  %main_vbox = alloca %struct._GtkWidget*, align 8
  %frame = alloca %struct._GtkWidget*, align 8
  %vbox = alloca %struct._GtkWidget*, align 8
  %table = alloca %struct._GtkWidget*, align 8
  %label = alloca %struct._GtkWidget*, align 8
  %name_group = alloca %struct._GtkSizeGroup*, align 8
  %type_group = alloca %struct._GtkSizeGroup*, align 8
  %desc_group = alloca %struct._GtkSizeGroup*, align 8
  %type_str = alloca i8*, align 8
  %row = alloca i32, align 4
  store i8* %name, i8** %name.addr, align 8
  store i8* %menu_path, i8** %menu_path.addr, align 8
  store i8* %blurb, i8** %blurb.addr, align 8
  store i8* %help, i8** %help.addr, align 8
  store i8* %author, i8** %author.addr, align 8
  store i8* %copyright, i8** %copyright.addr, align 8
  store i8* %date, i8** %date.addr, align 8
  store i32 %type, i32* %type.addr, align 4
  store i32 %n_params, i32* %n_params.addr, align 4
  store i32 %n_return_vals, i32* %n_return_vals.addr, align 4
  store %struct._GimpParamDef* %params, %struct._GimpParamDef** %params.addr, align 8
  store %struct._GimpParamDef* %return_vals, %struct._GimpParamDef** %return_vals.addr, align 8
  %0 = load i8*, i8** %blurb.addr, align 8
  %tobool = icmp ne i8* %0, null
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %1 = load i8*, i8** %blurb.addr, align 8
  %call = call i64 @strlen(i8* %1) #5
  %cmp = icmp ult i64 %call, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  store i8* null, i8** %blurb.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %2 = load i8*, i8** %help.addr, align 8
  %tobool1 = icmp ne i8* %2, null
  br i1 %tobool1, label %land.lhs.true.2, label %if.end.6

land.lhs.true.2:                                  ; preds = %if.end
  %3 = load i8*, i8** %help.addr, align 8
  %call3 = call i64 @strlen(i8* %3) #5
  %cmp4 = icmp ult i64 %call3, 2
  br i1 %cmp4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %land.lhs.true.2
  store i8* null, i8** %help.addr, align 8
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.5, %land.lhs.true.2, %if.end
  %4 = load i8*, i8** %author.addr, align 8
  %tobool7 = icmp ne i8* %4, null
  br i1 %tobool7, label %land.lhs.true.8, label %if.end.12

land.lhs.true.8:                                  ; preds = %if.end.6
  %5 = load i8*, i8** %author.addr, align 8
  %call9 = call i64 @strlen(i8* %5) #5
  %cmp10 = icmp ult i64 %call9, 2
  br i1 %cmp10, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %land.lhs.true.8
  store i8* null, i8** %author.addr, align 8
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.11, %land.lhs.true.8, %if.end.6
  %6 = load i8*, i8** %date.addr, align 8
  %tobool13 = icmp ne i8* %6, null
  br i1 %tobool13, label %land.lhs.true.14, label %if.end.18

land.lhs.true.14:                                 ; preds = %if.end.12
  %7 = load i8*, i8** %date.addr, align 8
  %call15 = call i64 @strlen(i8* %7) #5
  %cmp16 = icmp ult i64 %call15, 2
  br i1 %cmp16, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %land.lhs.true.14
  store i8* null, i8** %date.addr, align 8
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.17, %land.lhs.true.14, %if.end.12
  %8 = load i8*, i8** %copyright.addr, align 8
  %tobool19 = icmp ne i8* %8, null
  br i1 %tobool19, label %land.lhs.true.20, label %if.end.24

land.lhs.true.20:                                 ; preds = %if.end.18
  %9 = load i8*, i8** %copyright.addr, align 8
  %call21 = call i64 @strlen(i8* %9) #5
  %cmp22 = icmp ult i64 %call21, 2
  br i1 %cmp22, label %if.then.23, label %if.end.24

if.then.23:                                       ; preds = %land.lhs.true.20
  store i8* null, i8** %copyright.addr, align 8
  br label %if.end.24

if.end.24:                                        ; preds = %if.then.23, %land.lhs.true.20, %if.end.18
  %10 = load i8*, i8** %blurb.addr, align 8
  %tobool25 = icmp ne i8* %10, null
  br i1 %tobool25, label %land.lhs.true.26, label %if.end.32

land.lhs.true.26:                                 ; preds = %if.end.24
  %11 = load i8*, i8** %help.addr, align 8
  %tobool27 = icmp ne i8* %11, null
  br i1 %tobool27, label %land.lhs.true.28, label %if.end.32

land.lhs.true.28:                                 ; preds = %land.lhs.true.26
  %12 = load i8*, i8** %blurb.addr, align 8
  %13 = load i8*, i8** %help.addr, align 8
  %call29 = call i32 @strcmp(i8* %12, i8* %13) #5
  %tobool30 = icmp ne i32 %call29, 0
  br i1 %tobool30, label %if.end.32, label %if.then.31

if.then.31:                                       ; preds = %land.lhs.true.28
  store i8* null, i8** %help.addr, align 8
  br label %if.end.32

if.end.32:                                        ; preds = %if.then.31, %land.lhs.true.28, %land.lhs.true.26, %if.end.24
  %call33 = call %struct._GtkWidget* @gtk_box_new(i32 1, i32 12)
  store %struct._GtkWidget* %call33, %struct._GtkWidget** %main_vbox, align 8
  %14 = load i8*, i8** %name.addr, align 8
  %call34 = call %struct._GtkWidget* @gimp_frame_new(i8* %14)
  store %struct._GtkWidget* %call34, %struct._GtkWidget** %frame, align 8
  %15 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %16 = bitcast %struct._GtkWidget* %15 to %struct._GTypeInstance*
  %call35 = call i64 @gtk_frame_get_type() #6
  %call36 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %16, i64 %call35)
  %17 = bitcast %struct._GTypeInstance* %call36 to %struct._GtkFrame*
  %call37 = call %struct._GtkWidget* @gtk_frame_get_label_widget(%struct._GtkFrame* %17)
  store %struct._GtkWidget* %call37, %struct._GtkWidget** %label, align 8
  %18 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  %19 = bitcast %struct._GtkWidget* %18 to %struct._GTypeInstance*
  %call38 = call i64 @gtk_label_get_type() #6
  %call39 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %19, i64 %call38)
  %20 = bitcast %struct._GTypeInstance* %call39 to %struct._GtkLabel*
  call void @gtk_label_set_selectable(%struct._GtkLabel* %20, i32 1)
  %21 = load %struct._GtkWidget*, %struct._GtkWidget** %main_vbox, align 8
  %22 = bitcast %struct._GtkWidget* %21 to %struct._GTypeInstance*
  %call40 = call i64 @gtk_box_get_type() #6
  %call41 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %22, i64 %call40)
  %23 = bitcast %struct._GTypeInstance* %call41 to %struct._GtkBox*
  %24 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %23, %struct._GtkWidget* %24, i32 0, i32 0, i32 0)
  %25 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %25)
  %call42 = call %struct._GtkWidget* @gtk_box_new(i32 1, i32 8)
  store %struct._GtkWidget* %call42, %struct._GtkWidget** %vbox, align 8
  %26 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %27 = bitcast %struct._GtkWidget* %26 to %struct._GTypeInstance*
  %call43 = call i64 @gtk_container_get_type() #6
  %call44 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %27, i64 %call43)
  %28 = bitcast %struct._GTypeInstance* %call44 to %struct._GtkContainer*
  %29 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  call void @gtk_container_add(%struct._GtkContainer* %28, %struct._GtkWidget* %29)
  %30 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %30)
  %call45 = call i64 @gimp_pdb_proc_type_get_type() #6
  %31 = load i32, i32* %type.addr, align 4
  %call46 = call i32 @gimp_enum_get_value(i64 %call45, i32 %31, i8** null, i8** null, i8** %type_str, i8** null)
  %tobool47 = icmp ne i32 %call46, 0
  br i1 %tobool47, label %if.end.49, label %if.then.48

if.then.48:                                       ; preds = %if.end.32
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i8** %type_str, align 8
  br label %if.end.49

if.end.49:                                        ; preds = %if.then.48, %if.end.32
  %32 = load i8*, i8** %type_str, align 8
  %call50 = call %struct._GtkWidget* @gtk_label_new(i8* %32)
  store %struct._GtkWidget* %call50, %struct._GtkWidget** %label, align 8
  %33 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  %34 = bitcast %struct._GtkWidget* %33 to %struct._GTypeInstance*
  %call51 = call i64 @gtk_label_get_type() #6
  %call52 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %34, i64 %call51)
  %35 = bitcast %struct._GTypeInstance* %call52 to %struct._GtkLabel*
  call void (%struct._GtkLabel*, ...) @gimp_label_set_attributes(%struct._GtkLabel* %35, i32 3, i32 2, i32 -1)
  %36 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  %37 = bitcast %struct._GtkWidget* %36 to %struct._GTypeInstance*
  %call53 = call i64 @gtk_misc_get_type() #6
  %call54 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %37, i64 %call53)
  %38 = bitcast %struct._GTypeInstance* %call54 to %struct._GtkMisc*
  call void @gtk_misc_set_alignment(%struct._GtkMisc* %38, float 0.000000e+00, float 0.000000e+00)
  %39 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %40 = bitcast %struct._GtkWidget* %39 to %struct._GTypeInstance*
  %call55 = call i64 @gtk_box_get_type() #6
  %call56 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %40, i64 %call55)
  %41 = bitcast %struct._GTypeInstance* %call56 to %struct._GtkBox*
  %42 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %41, %struct._GtkWidget* %42, i32 0, i32 0, i32 0)
  %43 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %43)
  %44 = load i8*, i8** %menu_path.addr, align 8
  %tobool57 = icmp ne i8* %44, null
  br i1 %tobool57, label %if.then.58, label %if.end.68

if.then.58:                                       ; preds = %if.end.49
  %45 = load i8*, i8** %menu_path.addr, align 8
  %call59 = call %struct._GtkWidget* @gtk_label_new_with_mnemonic(i8* %45)
  store %struct._GtkWidget* %call59, %struct._GtkWidget** %label, align 8
  %46 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  %47 = bitcast %struct._GtkWidget* %46 to %struct._GTypeInstance*
  %call60 = call i64 @gtk_label_get_type() #6
  %call61 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %47, i64 %call60)
  %48 = bitcast %struct._GTypeInstance* %call61 to %struct._GtkLabel*
  call void @gtk_label_set_selectable(%struct._GtkLabel* %48, i32 1)
  %49 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  %50 = bitcast %struct._GtkWidget* %49 to %struct._GTypeInstance*
  %call62 = call i64 @gtk_misc_get_type() #6
  %call63 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %50, i64 %call62)
  %51 = bitcast %struct._GTypeInstance* %call63 to %struct._GtkMisc*
  call void @gtk_misc_set_alignment(%struct._GtkMisc* %51, float 0.000000e+00, float 0.000000e+00)
  %52 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  %53 = bitcast %struct._GtkWidget* %52 to %struct._GTypeInstance*
  %call64 = call i64 @gtk_label_get_type() #6
  %call65 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %53, i64 %call64)
  %54 = bitcast %struct._GTypeInstance* %call65 to %struct._GtkLabel*
  call void @gtk_label_set_line_wrap(%struct._GtkLabel* %54, i32 1)
  %55 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %56 = bitcast %struct._GtkWidget* %55 to %struct._GTypeInstance*
  %call66 = call i64 @gtk_box_get_type() #6
  %call67 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %56, i64 %call66)
  %57 = bitcast %struct._GTypeInstance* %call67 to %struct._GtkBox*
  %58 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %57, %struct._GtkWidget* %58, i32 0, i32 0, i32 0)
  %59 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %59)
  br label %if.end.68

if.end.68:                                        ; preds = %if.then.58, %if.end.49
  %60 = load i8*, i8** %blurb.addr, align 8
  %tobool69 = icmp ne i8* %60, null
  br i1 %tobool69, label %if.then.70, label %if.end.80

if.then.70:                                       ; preds = %if.end.68
  %61 = load i8*, i8** %blurb.addr, align 8
  %call71 = call %struct._GtkWidget* @gtk_label_new(i8* %61)
  store %struct._GtkWidget* %call71, %struct._GtkWidget** %label, align 8
  %62 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  %63 = bitcast %struct._GtkWidget* %62 to %struct._GTypeInstance*
  %call72 = call i64 @gtk_label_get_type() #6
  %call73 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %63, i64 %call72)
  %64 = bitcast %struct._GTypeInstance* %call73 to %struct._GtkLabel*
  call void @gtk_label_set_selectable(%struct._GtkLabel* %64, i32 1)
  %65 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  %66 = bitcast %struct._GtkWidget* %65 to %struct._GTypeInstance*
  %call74 = call i64 @gtk_misc_get_type() #6
  %call75 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %66, i64 %call74)
  %67 = bitcast %struct._GTypeInstance* %call75 to %struct._GtkMisc*
  call void @gtk_misc_set_alignment(%struct._GtkMisc* %67, float 0.000000e+00, float 0.000000e+00)
  %68 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  %69 = bitcast %struct._GtkWidget* %68 to %struct._GTypeInstance*
  %call76 = call i64 @gtk_label_get_type() #6
  %call77 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %69, i64 %call76)
  %70 = bitcast %struct._GTypeInstance* %call77 to %struct._GtkLabel*
  call void @gtk_label_set_line_wrap(%struct._GtkLabel* %70, i32 1)
  %71 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %72 = bitcast %struct._GtkWidget* %71 to %struct._GTypeInstance*
  %call78 = call i64 @gtk_box_get_type() #6
  %call79 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %72, i64 %call78)
  %73 = bitcast %struct._GTypeInstance* %call79 to %struct._GtkBox*
  %74 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %73, %struct._GtkWidget* %74, i32 0, i32 0, i32 0)
  %75 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %75)
  br label %if.end.80

if.end.80:                                        ; preds = %if.then.70, %if.end.68
  %call81 = call %struct._GtkSizeGroup* @gtk_size_group_new(i32 1)
  store %struct._GtkSizeGroup* %call81, %struct._GtkSizeGroup** %name_group, align 8
  %call82 = call %struct._GtkSizeGroup* @gtk_size_group_new(i32 1)
  store %struct._GtkSizeGroup* %call82, %struct._GtkSizeGroup** %type_group, align 8
  %call83 = call %struct._GtkSizeGroup* @gtk_size_group_new(i32 1)
  store %struct._GtkSizeGroup* %call83, %struct._GtkSizeGroup** %desc_group, align 8
  %76 = load i32, i32* %n_params.addr, align 4
  %tobool84 = icmp ne i32 %76, 0
  br i1 %tobool84, label %if.then.85, label %if.end.93

if.then.85:                                       ; preds = %if.end.80
  %call86 = call i8* @dgettext(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i32 0, i32 0)) #7
  %call87 = call %struct._GtkWidget* @gimp_frame_new(i8* %call86)
  store %struct._GtkWidget* %call87, %struct._GtkWidget** %frame, align 8
  %77 = load %struct._GtkWidget*, %struct._GtkWidget** %main_vbox, align 8
  %78 = bitcast %struct._GtkWidget* %77 to %struct._GTypeInstance*
  %call88 = call i64 @gtk_box_get_type() #6
  %call89 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %78, i64 %call88)
  %79 = bitcast %struct._GTypeInstance* %call89 to %struct._GtkBox*
  %80 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %79, %struct._GtkWidget* %80, i32 0, i32 0, i32 0)
  %81 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %81)
  %82 = load %struct._GimpParamDef*, %struct._GimpParamDef** %params.addr, align 8
  %83 = load i32, i32* %n_params.addr, align 4
  %84 = load %struct._GtkSizeGroup*, %struct._GtkSizeGroup** %name_group, align 8
  %85 = load %struct._GtkSizeGroup*, %struct._GtkSizeGroup** %type_group, align 8
  %86 = load %struct._GtkSizeGroup*, %struct._GtkSizeGroup** %desc_group, align 8
  %call90 = call %struct._GtkWidget* @gimp_proc_view_create_params(%struct._GimpParamDef* %82, i32 %83, %struct._GtkSizeGroup* %84, %struct._GtkSizeGroup* %85, %struct._GtkSizeGroup* %86)
  store %struct._GtkWidget* %call90, %struct._GtkWidget** %table, align 8
  %87 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %88 = bitcast %struct._GtkWidget* %87 to %struct._GTypeInstance*
  %call91 = call i64 @gtk_container_get_type() #6
  %call92 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %88, i64 %call91)
  %89 = bitcast %struct._GTypeInstance* %call92 to %struct._GtkContainer*
  %90 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_container_add(%struct._GtkContainer* %89, %struct._GtkWidget* %90)
  %91 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %91)
  br label %if.end.93

if.end.93:                                        ; preds = %if.then.85, %if.end.80
  %92 = load i32, i32* %n_return_vals.addr, align 4
  %tobool94 = icmp ne i32 %92, 0
  br i1 %tobool94, label %if.then.95, label %if.end.103

if.then.95:                                       ; preds = %if.end.93
  %call96 = call i8* @dgettext(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i32 0, i32 0)) #7
  %call97 = call %struct._GtkWidget* @gimp_frame_new(i8* %call96)
  store %struct._GtkWidget* %call97, %struct._GtkWidget** %frame, align 8
  %93 = load %struct._GtkWidget*, %struct._GtkWidget** %main_vbox, align 8
  %94 = bitcast %struct._GtkWidget* %93 to %struct._GTypeInstance*
  %call98 = call i64 @gtk_box_get_type() #6
  %call99 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %94, i64 %call98)
  %95 = bitcast %struct._GTypeInstance* %call99 to %struct._GtkBox*
  %96 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %95, %struct._GtkWidget* %96, i32 0, i32 0, i32 0)
  %97 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %97)
  %98 = load %struct._GimpParamDef*, %struct._GimpParamDef** %return_vals.addr, align 8
  %99 = load i32, i32* %n_return_vals.addr, align 4
  %100 = load %struct._GtkSizeGroup*, %struct._GtkSizeGroup** %name_group, align 8
  %101 = load %struct._GtkSizeGroup*, %struct._GtkSizeGroup** %type_group, align 8
  %102 = load %struct._GtkSizeGroup*, %struct._GtkSizeGroup** %desc_group, align 8
  %call100 = call %struct._GtkWidget* @gimp_proc_view_create_params(%struct._GimpParamDef* %98, i32 %99, %struct._GtkSizeGroup* %100, %struct._GtkSizeGroup* %101, %struct._GtkSizeGroup* %102)
  store %struct._GtkWidget* %call100, %struct._GtkWidget** %table, align 8
  %103 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %104 = bitcast %struct._GtkWidget* %103 to %struct._GTypeInstance*
  %call101 = call i64 @gtk_container_get_type() #6
  %call102 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %104, i64 %call101)
  %105 = bitcast %struct._GTypeInstance* %call102 to %struct._GtkContainer*
  %106 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_container_add(%struct._GtkContainer* %105, %struct._GtkWidget* %106)
  %107 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %107)
  br label %if.end.103

if.end.103:                                       ; preds = %if.then.95, %if.end.93
  %108 = load i8*, i8** %help.addr, align 8
  %tobool104 = icmp ne i8* %108, null
  br i1 %tobool104, label %if.end.112, label %land.lhs.true.105

land.lhs.true.105:                                ; preds = %if.end.103
  %109 = load i8*, i8** %author.addr, align 8
  %tobool106 = icmp ne i8* %109, null
  br i1 %tobool106, label %if.end.112, label %land.lhs.true.107

land.lhs.true.107:                                ; preds = %land.lhs.true.105
  %110 = load i8*, i8** %date.addr, align 8
  %tobool108 = icmp ne i8* %110, null
  br i1 %tobool108, label %if.end.112, label %land.lhs.true.109

land.lhs.true.109:                                ; preds = %land.lhs.true.107
  %111 = load i8*, i8** %copyright.addr, align 8
  %tobool110 = icmp ne i8* %111, null
  br i1 %tobool110, label %if.end.112, label %if.then.111

if.then.111:                                      ; preds = %land.lhs.true.109
  %112 = load %struct._GtkWidget*, %struct._GtkWidget** %main_vbox, align 8
  store %struct._GtkWidget* %112, %struct._GtkWidget** %retval
  br label %return

if.end.112:                                       ; preds = %land.lhs.true.109, %land.lhs.true.107, %land.lhs.true.105, %if.end.103
  %call113 = call i8* @dgettext(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i32 0, i32 0)) #7
  %call114 = call %struct._GtkWidget* @gimp_frame_new(i8* %call113)
  store %struct._GtkWidget* %call114, %struct._GtkWidget** %frame, align 8
  %113 = load %struct._GtkWidget*, %struct._GtkWidget** %main_vbox, align 8
  %114 = bitcast %struct._GtkWidget* %113 to %struct._GTypeInstance*
  %call115 = call i64 @gtk_box_get_type() #6
  %call116 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %114, i64 %call115)
  %115 = bitcast %struct._GTypeInstance* %call116 to %struct._GtkBox*
  %116 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %115, %struct._GtkWidget* %116, i32 0, i32 0, i32 0)
  %117 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %117)
  %call117 = call %struct._GtkWidget* @gtk_box_new(i32 1, i32 8)
  store %struct._GtkWidget* %call117, %struct._GtkWidget** %vbox, align 8
  %118 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %119 = bitcast %struct._GtkWidget* %118 to %struct._GTypeInstance*
  %call118 = call i64 @gtk_container_get_type() #6
  %call119 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %119, i64 %call118)
  %120 = bitcast %struct._GTypeInstance* %call119 to %struct._GtkContainer*
  %121 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  call void @gtk_container_add(%struct._GtkContainer* %120, %struct._GtkWidget* %121)
  %122 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %122)
  %123 = load i8*, i8** %help.addr, align 8
  %tobool120 = icmp ne i8* %123, null
  br i1 %tobool120, label %if.then.121, label %if.end.131

if.then.121:                                      ; preds = %if.end.112
  %124 = load i8*, i8** %help.addr, align 8
  %call122 = call %struct._GtkWidget* @gtk_label_new(i8* %124)
  store %struct._GtkWidget* %call122, %struct._GtkWidget** %label, align 8
  %125 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  %126 = bitcast %struct._GtkWidget* %125 to %struct._GTypeInstance*
  %call123 = call i64 @gtk_label_get_type() #6
  %call124 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %126, i64 %call123)
  %127 = bitcast %struct._GTypeInstance* %call124 to %struct._GtkLabel*
  call void @gtk_label_set_selectable(%struct._GtkLabel* %127, i32 1)
  %128 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  %129 = bitcast %struct._GtkWidget* %128 to %struct._GTypeInstance*
  %call125 = call i64 @gtk_misc_get_type() #6
  %call126 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %129, i64 %call125)
  %130 = bitcast %struct._GTypeInstance* %call126 to %struct._GtkMisc*
  call void @gtk_misc_set_alignment(%struct._GtkMisc* %130, float 0.000000e+00, float 0.000000e+00)
  %131 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  %132 = bitcast %struct._GtkWidget* %131 to %struct._GTypeInstance*
  %call127 = call i64 @gtk_label_get_type() #6
  %call128 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %132, i64 %call127)
  %133 = bitcast %struct._GTypeInstance* %call128 to %struct._GtkLabel*
  call void @gtk_label_set_line_wrap(%struct._GtkLabel* %133, i32 1)
  %134 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %135 = bitcast %struct._GtkWidget* %134 to %struct._GTypeInstance*
  %call129 = call i64 @gtk_box_get_type() #6
  %call130 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %135, i64 %call129)
  %136 = bitcast %struct._GTypeInstance* %call130 to %struct._GtkBox*
  %137 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %136, %struct._GtkWidget* %137, i32 0, i32 0, i32 0)
  %138 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %138)
  br label %if.end.131

if.end.131:                                       ; preds = %if.then.121, %if.end.112
  %139 = load i8*, i8** %author.addr, align 8
  %tobool132 = icmp ne i8* %139, null
  br i1 %tobool132, label %if.end.138, label %land.lhs.true.133

land.lhs.true.133:                                ; preds = %if.end.131
  %140 = load i8*, i8** %date.addr, align 8
  %tobool134 = icmp ne i8* %140, null
  br i1 %tobool134, label %if.end.138, label %land.lhs.true.135

land.lhs.true.135:                                ; preds = %land.lhs.true.133
  %141 = load i8*, i8** %copyright.addr, align 8
  %tobool136 = icmp ne i8* %141, null
  br i1 %tobool136, label %if.end.138, label %if.then.137

if.then.137:                                      ; preds = %land.lhs.true.135
  %142 = load %struct._GtkWidget*, %struct._GtkWidget** %main_vbox, align 8
  store %struct._GtkWidget* %142, %struct._GtkWidget** %retval
  br label %return

if.end.138:                                       ; preds = %land.lhs.true.135, %land.lhs.true.133, %if.end.131
  %call139 = call %struct._GtkWidget* @gtk_table_new(i32 0, i32 2, i32 0)
  store %struct._GtkWidget* %call139, %struct._GtkWidget** %table, align 8
  %143 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %144 = bitcast %struct._GtkWidget* %143 to %struct._GTypeInstance*
  %call140 = call i64 @gtk_table_get_type() #6
  %call141 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %144, i64 %call140)
  %145 = bitcast %struct._GTypeInstance* %call141 to %struct._GtkTable*
  call void @gtk_table_set_col_spacings(%struct._GtkTable* %145, i32 6)
  %146 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %147 = bitcast %struct._GtkWidget* %146 to %struct._GTypeInstance*
  %call142 = call i64 @gtk_table_get_type() #6
  %call143 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %147, i64 %call142)
  %148 = bitcast %struct._GTypeInstance* %call143 to %struct._GtkTable*
  call void @gtk_table_set_row_spacings(%struct._GtkTable* %148, i32 4)
  %149 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %150 = bitcast %struct._GtkWidget* %149 to %struct._GTypeInstance*
  %call144 = call i64 @gtk_box_get_type() #6
  %call145 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %150, i64 %call144)
  %151 = bitcast %struct._GTypeInstance* %call145 to %struct._GtkBox*
  %152 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %151, %struct._GtkWidget* %152, i32 0, i32 0, i32 0)
  %153 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %153)
  store i32 0, i32* %row, align 4
  %154 = load i8*, i8** %author.addr, align 8
  %tobool146 = icmp ne i8* %154, null
  br i1 %tobool146, label %if.then.147, label %if.end.159

if.then.147:                                      ; preds = %if.end.138
  %155 = load i8*, i8** %author.addr, align 8
  %call148 = call %struct._GtkWidget* @gtk_label_new(i8* %155)
  store %struct._GtkWidget* %call148, %struct._GtkWidget** %label, align 8
  %156 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  %157 = bitcast %struct._GtkWidget* %156 to %struct._GTypeInstance*
  %call149 = call i64 @gtk_label_get_type() #6
  %call150 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %157, i64 %call149)
  %158 = bitcast %struct._GTypeInstance* %call150 to %struct._GtkLabel*
  call void @gtk_label_set_selectable(%struct._GtkLabel* %158, i32 1)
  %159 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  %160 = bitcast %struct._GtkWidget* %159 to %struct._GTypeInstance*
  %call151 = call i64 @gtk_misc_get_type() #6
  %call152 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %160, i64 %call151)
  %161 = bitcast %struct._GTypeInstance* %call152 to %struct._GtkMisc*
  call void @gtk_misc_set_alignment(%struct._GtkMisc* %161, float 0.000000e+00, float 0.000000e+00)
  %162 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  %163 = bitcast %struct._GtkWidget* %162 to %struct._GTypeInstance*
  %call153 = call i64 @gtk_label_get_type() #6
  %call154 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %163, i64 %call153)
  %164 = bitcast %struct._GTypeInstance* %call154 to %struct._GtkLabel*
  call void @gtk_label_set_line_wrap(%struct._GtkLabel* %164, i32 1)
  %165 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %166 = bitcast %struct._GtkWidget* %165 to %struct._GTypeInstance*
  %call155 = call i64 @gtk_table_get_type() #6
  %call156 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %166, i64 %call155)
  %167 = bitcast %struct._GTypeInstance* %call156 to %struct._GtkTable*
  %168 = load i32, i32* %row, align 4
  %inc = add nsw i32 %168, 1
  store i32 %inc, i32* %row, align 4
  %call157 = call i8* @dgettext(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i32 0, i32 0)) #7
  %169 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  %call158 = call %struct._GtkWidget* @gimp_table_attach_aligned(%struct._GtkTable* %167, i32 0, i32 %168, i8* %call157, float 0.000000e+00, float 0.000000e+00, %struct._GtkWidget* %169, i32 3, i32 0)
  br label %if.end.159

if.end.159:                                       ; preds = %if.then.147, %if.end.138
  %170 = load i8*, i8** %date.addr, align 8
  %tobool160 = icmp ne i8* %170, null
  br i1 %tobool160, label %if.then.161, label %if.end.174

if.then.161:                                      ; preds = %if.end.159
  %171 = load i8*, i8** %date.addr, align 8
  %call162 = call %struct._GtkWidget* @gtk_label_new(i8* %171)
  store %struct._GtkWidget* %call162, %struct._GtkWidget** %label, align 8
  %172 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  %173 = bitcast %struct._GtkWidget* %172 to %struct._GTypeInstance*
  %call163 = call i64 @gtk_label_get_type() #6
  %call164 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %173, i64 %call163)
  %174 = bitcast %struct._GTypeInstance* %call164 to %struct._GtkLabel*
  call void @gtk_label_set_selectable(%struct._GtkLabel* %174, i32 1)
  %175 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  %176 = bitcast %struct._GtkWidget* %175 to %struct._GTypeInstance*
  %call165 = call i64 @gtk_misc_get_type() #6
  %call166 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %176, i64 %call165)
  %177 = bitcast %struct._GTypeInstance* %call166 to %struct._GtkMisc*
  call void @gtk_misc_set_alignment(%struct._GtkMisc* %177, float 0.000000e+00, float 0.000000e+00)
  %178 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  %179 = bitcast %struct._GtkWidget* %178 to %struct._GTypeInstance*
  %call167 = call i64 @gtk_label_get_type() #6
  %call168 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %179, i64 %call167)
  %180 = bitcast %struct._GTypeInstance* %call168 to %struct._GtkLabel*
  call void @gtk_label_set_line_wrap(%struct._GtkLabel* %180, i32 1)
  %181 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %182 = bitcast %struct._GtkWidget* %181 to %struct._GTypeInstance*
  %call169 = call i64 @gtk_table_get_type() #6
  %call170 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %182, i64 %call169)
  %183 = bitcast %struct._GTypeInstance* %call170 to %struct._GtkTable*
  %184 = load i32, i32* %row, align 4
  %inc171 = add nsw i32 %184, 1
  store i32 %inc171, i32* %row, align 4
  %call172 = call i8* @dgettext(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0)) #7
  %185 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  %call173 = call %struct._GtkWidget* @gimp_table_attach_aligned(%struct._GtkTable* %183, i32 0, i32 %184, i8* %call172, float 0.000000e+00, float 0.000000e+00, %struct._GtkWidget* %185, i32 3, i32 0)
  br label %if.end.174

if.end.174:                                       ; preds = %if.then.161, %if.end.159
  %186 = load i8*, i8** %copyright.addr, align 8
  %tobool175 = icmp ne i8* %186, null
  br i1 %tobool175, label %if.then.176, label %if.end.189

if.then.176:                                      ; preds = %if.end.174
  %187 = load i8*, i8** %copyright.addr, align 8
  %call177 = call %struct._GtkWidget* @gtk_label_new(i8* %187)
  store %struct._GtkWidget* %call177, %struct._GtkWidget** %label, align 8
  %188 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  %189 = bitcast %struct._GtkWidget* %188 to %struct._GTypeInstance*
  %call178 = call i64 @gtk_label_get_type() #6
  %call179 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %189, i64 %call178)
  %190 = bitcast %struct._GTypeInstance* %call179 to %struct._GtkLabel*
  call void @gtk_label_set_selectable(%struct._GtkLabel* %190, i32 1)
  %191 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  %192 = bitcast %struct._GtkWidget* %191 to %struct._GTypeInstance*
  %call180 = call i64 @gtk_misc_get_type() #6
  %call181 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %192, i64 %call180)
  %193 = bitcast %struct._GTypeInstance* %call181 to %struct._GtkMisc*
  call void @gtk_misc_set_alignment(%struct._GtkMisc* %193, float 0.000000e+00, float 0.000000e+00)
  %194 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  %195 = bitcast %struct._GtkWidget* %194 to %struct._GTypeInstance*
  %call182 = call i64 @gtk_label_get_type() #6
  %call183 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %195, i64 %call182)
  %196 = bitcast %struct._GTypeInstance* %call183 to %struct._GtkLabel*
  call void @gtk_label_set_line_wrap(%struct._GtkLabel* %196, i32 1)
  %197 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %198 = bitcast %struct._GtkWidget* %197 to %struct._GTypeInstance*
  %call184 = call i64 @gtk_table_get_type() #6
  %call185 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %198, i64 %call184)
  %199 = bitcast %struct._GTypeInstance* %call185 to %struct._GtkTable*
  %200 = load i32, i32* %row, align 4
  %inc186 = add nsw i32 %200, 1
  store i32 %inc186, i32* %row, align 4
  %call187 = call i8* @dgettext(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i32 0, i32 0)) #7
  %201 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  %call188 = call %struct._GtkWidget* @gimp_table_attach_aligned(%struct._GtkTable* %199, i32 0, i32 %200, i8* %call187, float 0.000000e+00, float 0.000000e+00, %struct._GtkWidget* %201, i32 3, i32 0)
  br label %if.end.189

if.end.189:                                       ; preds = %if.then.176, %if.end.174
  %202 = load %struct._GtkWidget*, %struct._GtkWidget** %main_vbox, align 8
  store %struct._GtkWidget* %202, %struct._GtkWidget** %retval
  br label %return

return:                                           ; preds = %if.end.189, %if.then.137, %if.then.111
  %203 = load %struct._GtkWidget*, %struct._GtkWidget** %retval
  ret %struct._GtkWidget* %203
}

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #1

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #1

declare %struct._GtkWidget* @gtk_box_new(i32, i32) #2

declare %struct._GtkWidget* @gimp_frame_new(i8*) #2

declare %struct._GtkWidget* @gtk_frame_get_label_widget(%struct._GtkFrame*) #2

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #2

; Function Attrs: nounwind readnone
declare i64 @gtk_frame_get_type() #3

declare void @gtk_label_set_selectable(%struct._GtkLabel*, i32) #2

; Function Attrs: nounwind readnone
declare i64 @gtk_label_get_type() #3

declare void @gtk_box_pack_start(%struct._GtkBox*, %struct._GtkWidget*, i32, i32, i32) #2

; Function Attrs: nounwind readnone
declare i64 @gtk_box_get_type() #3

declare void @gtk_widget_show(%struct._GtkWidget*) #2

declare void @gtk_container_add(%struct._GtkContainer*, %struct._GtkWidget*) #2

; Function Attrs: nounwind readnone
declare i64 @gtk_container_get_type() #3

declare i32 @gimp_enum_get_value(i64, i32, i8**, i8**, i8**, i8**) #2

; Function Attrs: nounwind readnone
declare i64 @gimp_pdb_proc_type_get_type() #3

declare %struct._GtkWidget* @gtk_label_new(i8*) #2

declare void @gimp_label_set_attributes(%struct._GtkLabel*, ...) #2

declare void @gtk_misc_set_alignment(%struct._GtkMisc*, float, float) #2

; Function Attrs: nounwind readnone
declare i64 @gtk_misc_get_type() #3

declare %struct._GtkWidget* @gtk_label_new_with_mnemonic(i8*) #2

declare void @gtk_label_set_line_wrap(%struct._GtkLabel*, i32) #2

declare %struct._GtkSizeGroup* @gtk_size_group_new(i32) #2

; Function Attrs: nounwind
declare i8* @dgettext(i8*, i8*) #4

; Function Attrs: nounwind uwtable
define internal %struct._GtkWidget* @gimp_proc_view_create_params(%struct._GimpParamDef* %params, i32 %n_params, %struct._GtkSizeGroup* %name_group, %struct._GtkSizeGroup* %type_group, %struct._GtkSizeGroup* %desc_group) #0 {
entry:
  %params.addr = alloca %struct._GimpParamDef*, align 8
  %n_params.addr = alloca i32, align 4
  %name_group.addr = alloca %struct._GtkSizeGroup*, align 8
  %type_group.addr = alloca %struct._GtkSizeGroup*, align 8
  %desc_group.addr = alloca %struct._GtkSizeGroup*, align 8
  %table = alloca %struct._GtkWidget*, align 8
  %i = alloca i32, align 4
  %label = alloca %struct._GtkWidget*, align 8
  %type = alloca i8*, align 8
  %upper = alloca i8*, align 8
  store %struct._GimpParamDef* %params, %struct._GimpParamDef** %params.addr, align 8
  store i32 %n_params, i32* %n_params.addr, align 4
  store %struct._GtkSizeGroup* %name_group, %struct._GtkSizeGroup** %name_group.addr, align 8
  store %struct._GtkSizeGroup* %type_group, %struct._GtkSizeGroup** %type_group.addr, align 8
  store %struct._GtkSizeGroup* %desc_group, %struct._GtkSizeGroup** %desc_group.addr, align 8
  %0 = load i32, i32* %n_params.addr, align 4
  %call = call %struct._GtkWidget* @gtk_table_new(i32 %0, i32 3, i32 0)
  store %struct._GtkWidget* %call, %struct._GtkWidget** %table, align 8
  %1 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %2 = bitcast %struct._GtkWidget* %1 to %struct._GTypeInstance*
  %call1 = call i64 @gtk_table_get_type() #6
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %2, i64 %call1)
  %3 = bitcast %struct._GTypeInstance* %call2 to %struct._GtkTable*
  call void @gtk_table_set_col_spacings(%struct._GtkTable* %3, i32 6)
  %4 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %5 = bitcast %struct._GtkWidget* %4 to %struct._GTypeInstance*
  %call3 = call i64 @gtk_table_get_type() #6
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 %call3)
  %6 = bitcast %struct._GTypeInstance* %call4 to %struct._GtkTable*
  call void @gtk_table_set_row_spacings(%struct._GtkTable* %6, i32 4)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %7 = load i32, i32* %i, align 4
  %8 = load i32, i32* %n_params.addr, align 4
  %cmp = icmp slt i32 %7, %8
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load i32, i32* %i, align 4
  %idxprom = sext i32 %9 to i64
  %10 = load %struct._GimpParamDef*, %struct._GimpParamDef** %params.addr, align 8
  %arrayidx = getelementptr inbounds %struct._GimpParamDef, %struct._GimpParamDef* %10, i64 %idxprom
  %name = getelementptr inbounds %struct._GimpParamDef, %struct._GimpParamDef* %arrayidx, i32 0, i32 1
  %11 = load i8*, i8** %name, align 8
  %call5 = call %struct._GtkWidget* @gtk_label_new(i8* %11)
  store %struct._GtkWidget* %call5, %struct._GtkWidget** %label, align 8
  %12 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  %13 = bitcast %struct._GtkWidget* %12 to %struct._GTypeInstance*
  %call6 = call i64 @gtk_misc_get_type() #6
  %call7 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %13, i64 %call6)
  %14 = bitcast %struct._GTypeInstance* %call7 to %struct._GtkMisc*
  call void @gtk_misc_set_alignment(%struct._GtkMisc* %14, float 0.000000e+00, float 0.000000e+00)
  %15 = load %struct._GtkSizeGroup*, %struct._GtkSizeGroup** %name_group.addr, align 8
  %16 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_size_group_add_widget(%struct._GtkSizeGroup* %15, %struct._GtkWidget* %16)
  %17 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %18 = bitcast %struct._GtkWidget* %17 to %struct._GTypeInstance*
  %call8 = call i64 @gtk_table_get_type() #6
  %call9 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %18, i64 %call8)
  %19 = bitcast %struct._GTypeInstance* %call9 to %struct._GtkTable*
  %20 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  %21 = load i32, i32* %i, align 4
  %22 = load i32, i32* %i, align 4
  %add = add nsw i32 %22, 1
  call void @gtk_table_attach(%struct._GtkTable* %19, %struct._GtkWidget* %20, i32 0, i32 1, i32 %21, i32 %add, i32 4, i32 4, i32 0, i32 0)
  %23 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %23)
  %call10 = call i64 @gimp_pdb_arg_type_get_type() #6
  %24 = load i32, i32* %i, align 4
  %idxprom11 = sext i32 %24 to i64
  %25 = load %struct._GimpParamDef*, %struct._GimpParamDef** %params.addr, align 8
  %arrayidx12 = getelementptr inbounds %struct._GimpParamDef, %struct._GimpParamDef* %25, i64 %idxprom11
  %type13 = getelementptr inbounds %struct._GimpParamDef, %struct._GimpParamDef* %arrayidx12, i32 0, i32 0
  %26 = load i32, i32* %type13, align 4
  %call14 = call i32 @gimp_enum_get_value(i64 %call10, i32 %26, i8** null, i8** %type, i8** null, i8** null)
  %tobool = icmp ne i32 %call14, 0
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %for.body
  %call15 = call noalias i8* @g_strdup(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0))
  store i8* %call15, i8** %upper, align 8
  br label %if.end

if.else:                                          ; preds = %for.body
  %27 = load i8*, i8** %type, align 8
  %call16 = call noalias i8* @g_ascii_strup(i8* %27, i64 -1)
  store i8* %call16, i8** %upper, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %28 = load i8*, i8** %upper, align 8
  %call17 = call %struct._GtkWidget* @gtk_label_new(i8* %28)
  store %struct._GtkWidget* %call17, %struct._GtkWidget** %label, align 8
  %29 = load i8*, i8** %upper, align 8
  call void @g_free(i8* %29)
  %30 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  %31 = bitcast %struct._GtkWidget* %30 to %struct._GTypeInstance*
  %call18 = call i64 @gtk_label_get_type() #6
  %call19 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %31, i64 %call18)
  %32 = bitcast %struct._GTypeInstance* %call19 to %struct._GtkLabel*
  call void (%struct._GtkLabel*, ...) @gimp_label_set_attributes(%struct._GtkLabel* %32, i32 2, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i32 0, i32 0), i32 3, i32 2, i32 -1)
  %33 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  %34 = bitcast %struct._GtkWidget* %33 to %struct._GTypeInstance*
  %call20 = call i64 @gtk_misc_get_type() #6
  %call21 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %34, i64 %call20)
  %35 = bitcast %struct._GTypeInstance* %call21 to %struct._GtkMisc*
  call void @gtk_misc_set_alignment(%struct._GtkMisc* %35, float 0.000000e+00, float 0.000000e+00)
  %36 = load %struct._GtkSizeGroup*, %struct._GtkSizeGroup** %type_group.addr, align 8
  %37 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_size_group_add_widget(%struct._GtkSizeGroup* %36, %struct._GtkWidget* %37)
  %38 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %39 = bitcast %struct._GtkWidget* %38 to %struct._GTypeInstance*
  %call22 = call i64 @gtk_table_get_type() #6
  %call23 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %39, i64 %call22)
  %40 = bitcast %struct._GTypeInstance* %call23 to %struct._GtkTable*
  %41 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  %42 = load i32, i32* %i, align 4
  %43 = load i32, i32* %i, align 4
  %add24 = add nsw i32 %43, 1
  call void @gtk_table_attach(%struct._GtkTable* %40, %struct._GtkWidget* %41, i32 1, i32 2, i32 %42, i32 %add24, i32 4, i32 4, i32 0, i32 0)
  %44 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %44)
  %45 = load i32, i32* %i, align 4
  %idxprom25 = sext i32 %45 to i64
  %46 = load %struct._GimpParamDef*, %struct._GimpParamDef** %params.addr, align 8
  %arrayidx26 = getelementptr inbounds %struct._GimpParamDef, %struct._GimpParamDef* %46, i64 %idxprom25
  %description = getelementptr inbounds %struct._GimpParamDef, %struct._GimpParamDef* %arrayidx26, i32 0, i32 2
  %47 = load i8*, i8** %description, align 8
  %call27 = call %struct._GtkWidget* @gtk_label_new(i8* %47)
  store %struct._GtkWidget* %call27, %struct._GtkWidget** %label, align 8
  %48 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  %49 = bitcast %struct._GtkWidget* %48 to %struct._GTypeInstance*
  %call28 = call i64 @gtk_label_get_type() #6
  %call29 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %49, i64 %call28)
  %50 = bitcast %struct._GTypeInstance* %call29 to %struct._GtkLabel*
  call void @gtk_label_set_selectable(%struct._GtkLabel* %50, i32 1)
  %51 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  %52 = bitcast %struct._GtkWidget* %51 to %struct._GTypeInstance*
  %call30 = call i64 @gtk_misc_get_type() #6
  %call31 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %52, i64 %call30)
  %53 = bitcast %struct._GTypeInstance* %call31 to %struct._GtkMisc*
  call void @gtk_misc_set_alignment(%struct._GtkMisc* %53, float 0.000000e+00, float 0.000000e+00)
  %54 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  %55 = bitcast %struct._GtkWidget* %54 to %struct._GTypeInstance*
  %call32 = call i64 @gtk_label_get_type() #6
  %call33 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %55, i64 %call32)
  %56 = bitcast %struct._GTypeInstance* %call33 to %struct._GtkLabel*
  call void @gtk_label_set_line_wrap(%struct._GtkLabel* %56, i32 1)
  %57 = load %struct._GtkSizeGroup*, %struct._GtkSizeGroup** %desc_group.addr, align 8
  %58 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_size_group_add_widget(%struct._GtkSizeGroup* %57, %struct._GtkWidget* %58)
  %59 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %60 = bitcast %struct._GtkWidget* %59 to %struct._GTypeInstance*
  %call34 = call i64 @gtk_table_get_type() #6
  %call35 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %60, i64 %call34)
  %61 = bitcast %struct._GTypeInstance* %call35 to %struct._GtkTable*
  %62 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  %63 = load i32, i32* %i, align 4
  %64 = load i32, i32* %i, align 4
  %add36 = add nsw i32 %64, 1
  call void @gtk_table_attach(%struct._GtkTable* %61, %struct._GtkWidget* %62, i32 2, i32 3, i32 %63, i32 %add36, i32 6, i32 4, i32 0, i32 0)
  %65 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %65)
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %66 = load i32, i32* %i, align 4
  %inc = add nsw i32 %66, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %67 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  ret %struct._GtkWidget* %67
}

declare %struct._GtkWidget* @gtk_table_new(i32, i32, i32) #2

declare void @gtk_table_set_col_spacings(%struct._GtkTable*, i32) #2

; Function Attrs: nounwind readnone
declare i64 @gtk_table_get_type() #3

declare void @gtk_table_set_row_spacings(%struct._GtkTable*, i32) #2

declare %struct._GtkWidget* @gimp_table_attach_aligned(%struct._GtkTable*, i32, i32, i8*, float, float, %struct._GtkWidget*, i32, i32) #2

declare void @gtk_size_group_add_widget(%struct._GtkSizeGroup*, %struct._GtkWidget*) #2

declare void @gtk_table_attach(%struct._GtkTable*, %struct._GtkWidget*, i32, i32, i32, i32, i32, i32, i32, i32) #2

; Function Attrs: nounwind readnone
declare i64 @gimp_pdb_arg_type_get_type() #3

declare noalias i8* @g_strdup(i8*) #2

declare noalias i8* @g_ascii_strup(i8*, i64) #2

declare void @g_free(i8*) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly }
attributes #6 = { nounwind readnone }
attributes #7 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
