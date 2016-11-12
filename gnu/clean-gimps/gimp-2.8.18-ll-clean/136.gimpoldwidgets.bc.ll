; ModuleID = './libgimpwidgets/gimpoldwidgets.bc'
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
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct._GClosure = type { i32, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i8*, %struct._GClosureNotifyData* }
%struct._GValue = type { i64, [2 x %union.anon] }
%union.anon = type { i64 }
%struct._GClosureNotifyData = type { i8*, {}* }
%struct._GtkMenuShell = type { %struct._GtkContainer, %struct._GList*, %struct._GtkWidget*, %struct._GtkWidget*, i32, i32, i8 }
%struct._GtkContainer = type { %struct._GtkWidget, %struct._GtkWidget*, i24 }
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct._GtkOptionMenu = type { %struct._GtkButton, %struct._GtkWidget*, %struct._GtkWidget*, i16, i16 }
%struct._GtkButton = type { %struct._GtkBin, %struct._GdkDrawable*, i8*, i32, i16 }
%struct._GtkBin = type { %struct._GtkContainer, %struct._GtkWidget* }
%struct._GtkBox = type { %struct._GtkContainer, %struct._GList*, i16, i8 }
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
%struct._GimpUnitMenu = type { %struct._GtkOptionMenu, i8*, i32, i32, i32, i32, %struct._GtkWidget*, %struct._GtkWidget* }
%struct._GtkSpinButton = type { %struct._GtkEntry, %struct._GtkAdjustment*, %struct._GdkDrawable*, i32, double, double, i32, i24 }
%struct._GtkEntry = type { %struct._GtkWidget, i8*, i8, i16, i16, %struct._GdkDrawable*, %struct._GtkIMContext*, %struct._GtkWidget*, i32, i32, %struct._PangoLayout*, i16, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i32, i32, i32, i32, i32 }
%struct._GtkIMContext = type { %struct._GObject }
%struct._GtkAdjustment = type { %struct._GtkObject, double, double, double, double, double, double }

@.str = private unnamed_addr constant [4 x i8] c"---\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"activate\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"gimp-item-data\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"user_data\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"LibGimpWidgets\00", align 1
@__func__.gimp_option_menu_set_history = private unnamed_addr constant [29 x i8] c"gimp_option_menu_set_history\00", align 1
@.str.5 = private unnamed_addr constant [33 x i8] c"GTK_IS_OPTION_MENU (option_menu)\00", align 1
@__func__.gimp_int_option_menu_set_history = private unnamed_addr constant [33 x i8] c"gimp_int_option_menu_set_history\00", align 1
@__func__.gimp_option_menu_set_sensitive = private unnamed_addr constant [31 x i8] c"gimp_option_menu_set_sensitive\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"callback != NULL\00", align 1
@__func__.gimp_int_option_menu_set_sensitive = private unnamed_addr constant [35 x i8] c"gimp_int_option_menu_set_sensitive\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"set_digits\00", align 1

; Function Attrs: nounwind uwtable
define %struct._GtkWidget* @gimp_option_menu_new(i32 %menu_only, ...) #0 {
entry:
  %retval = alloca %struct._GtkWidget*, align 8
  %menu_only.addr = alloca i32, align 4
  %menu = alloca %struct._GtkWidget*, align 8
  %menuitem = alloca %struct._GtkWidget*, align 8
  %label = alloca i8*, align 8
  %callback = alloca void ()*, align 8
  %callback_data = alloca i8*, align 8
  %item_data = alloca i8*, align 8
  %widget_ptr = alloca %struct._GtkWidget**, align 8
  %active = alloca i32, align 4
  %args = alloca [1 x %struct.__va_list_tag], align 16
  %i = alloca i32, align 4
  %initial_index = alloca i32, align 4
  %optionmenu = alloca %struct._GtkWidget*, align 8
  store i32 %menu_only, i32* %menu_only.addr, align 4
  %call = call %struct._GtkWidget* @gtk_menu_new()
  store %struct._GtkWidget* %call, %struct._GtkWidget** %menu, align 8
  store i32 0, i32* %initial_index, align 4
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay1)
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %gp_offset_p = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay2, i32 0, i32 0
  %gp_offset = load i32, i32* %gp_offset_p
  %fits_in_gp = icmp ule i32 %gp_offset, 40
  br i1 %fits_in_gp, label %vaarg.in_reg, label %vaarg.in_mem

vaarg.in_reg:                                     ; preds = %entry
  %0 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay2, i32 0, i32 3
  %reg_save_area = load i8*, i8** %0
  %1 = getelementptr i8, i8* %reg_save_area, i32 %gp_offset
  %2 = bitcast i8* %1 to i8**
  %3 = add i32 %gp_offset, 8
  store i32 %3, i32* %gp_offset_p
  br label %vaarg.end

vaarg.in_mem:                                     ; preds = %entry
  %overflow_arg_area_p = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay2, i32 0, i32 2
  %overflow_arg_area = load i8*, i8** %overflow_arg_area_p
  %4 = bitcast i8* %overflow_arg_area to i8**
  %overflow_arg_area.next = getelementptr i8, i8* %overflow_arg_area, i32 8
  store i8* %overflow_arg_area.next, i8** %overflow_arg_area_p
  br label %vaarg.end

vaarg.end:                                        ; preds = %vaarg.in_mem, %vaarg.in_reg
  %vaarg.addr = phi i8** [ %2, %vaarg.in_reg ], [ %4, %vaarg.in_mem ]
  %5 = load i8*, i8** %vaarg.addr
  store i8* %5, i8** %label, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %vaarg.end
  %6 = load i8*, i8** %label, align 8
  %tobool = icmp ne i8* %6, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %gp_offset_p4 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay3, i32 0, i32 0
  %gp_offset5 = load i32, i32* %gp_offset_p4
  %fits_in_gp6 = icmp ule i32 %gp_offset5, 40
  br i1 %fits_in_gp6, label %vaarg.in_reg.7, label %vaarg.in_mem.9

vaarg.in_reg.7:                                   ; preds = %for.body
  %7 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay3, i32 0, i32 3
  %reg_save_area8 = load i8*, i8** %7
  %8 = getelementptr i8, i8* %reg_save_area8, i32 %gp_offset5
  %9 = bitcast i8* %8 to void ()**
  %10 = add i32 %gp_offset5, 8
  store i32 %10, i32* %gp_offset_p4
  br label %vaarg.end.13

vaarg.in_mem.9:                                   ; preds = %for.body
  %overflow_arg_area_p10 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay3, i32 0, i32 2
  %overflow_arg_area11 = load i8*, i8** %overflow_arg_area_p10
  %11 = bitcast i8* %overflow_arg_area11 to void ()**
  %overflow_arg_area.next12 = getelementptr i8, i8* %overflow_arg_area11, i32 8
  store i8* %overflow_arg_area.next12, i8** %overflow_arg_area_p10
  br label %vaarg.end.13

vaarg.end.13:                                     ; preds = %vaarg.in_mem.9, %vaarg.in_reg.7
  %vaarg.addr14 = phi void ()** [ %9, %vaarg.in_reg.7 ], [ %11, %vaarg.in_mem.9 ]
  %12 = load void ()*, void ()** %vaarg.addr14
  store void ()* %12, void ()** %callback, align 8
  %arraydecay15 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %gp_offset_p16 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay15, i32 0, i32 0
  %gp_offset17 = load i32, i32* %gp_offset_p16
  %fits_in_gp18 = icmp ule i32 %gp_offset17, 40
  br i1 %fits_in_gp18, label %vaarg.in_reg.19, label %vaarg.in_mem.21

vaarg.in_reg.19:                                  ; preds = %vaarg.end.13
  %13 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay15, i32 0, i32 3
  %reg_save_area20 = load i8*, i8** %13
  %14 = getelementptr i8, i8* %reg_save_area20, i32 %gp_offset17
  %15 = bitcast i8* %14 to i8**
  %16 = add i32 %gp_offset17, 8
  store i32 %16, i32* %gp_offset_p16
  br label %vaarg.end.25

vaarg.in_mem.21:                                  ; preds = %vaarg.end.13
  %overflow_arg_area_p22 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay15, i32 0, i32 2
  %overflow_arg_area23 = load i8*, i8** %overflow_arg_area_p22
  %17 = bitcast i8* %overflow_arg_area23 to i8**
  %overflow_arg_area.next24 = getelementptr i8, i8* %overflow_arg_area23, i32 8
  store i8* %overflow_arg_area.next24, i8** %overflow_arg_area_p22
  br label %vaarg.end.25

vaarg.end.25:                                     ; preds = %vaarg.in_mem.21, %vaarg.in_reg.19
  %vaarg.addr26 = phi i8** [ %15, %vaarg.in_reg.19 ], [ %17, %vaarg.in_mem.21 ]
  %18 = load i8*, i8** %vaarg.addr26
  store i8* %18, i8** %callback_data, align 8
  %arraydecay27 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %gp_offset_p28 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay27, i32 0, i32 0
  %gp_offset29 = load i32, i32* %gp_offset_p28
  %fits_in_gp30 = icmp ule i32 %gp_offset29, 40
  br i1 %fits_in_gp30, label %vaarg.in_reg.31, label %vaarg.in_mem.33

vaarg.in_reg.31:                                  ; preds = %vaarg.end.25
  %19 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay27, i32 0, i32 3
  %reg_save_area32 = load i8*, i8** %19
  %20 = getelementptr i8, i8* %reg_save_area32, i32 %gp_offset29
  %21 = bitcast i8* %20 to i8**
  %22 = add i32 %gp_offset29, 8
  store i32 %22, i32* %gp_offset_p28
  br label %vaarg.end.37

vaarg.in_mem.33:                                  ; preds = %vaarg.end.25
  %overflow_arg_area_p34 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay27, i32 0, i32 2
  %overflow_arg_area35 = load i8*, i8** %overflow_arg_area_p34
  %23 = bitcast i8* %overflow_arg_area35 to i8**
  %overflow_arg_area.next36 = getelementptr i8, i8* %overflow_arg_area35, i32 8
  store i8* %overflow_arg_area.next36, i8** %overflow_arg_area_p34
  br label %vaarg.end.37

vaarg.end.37:                                     ; preds = %vaarg.in_mem.33, %vaarg.in_reg.31
  %vaarg.addr38 = phi i8** [ %21, %vaarg.in_reg.31 ], [ %23, %vaarg.in_mem.33 ]
  %24 = load i8*, i8** %vaarg.addr38
  store i8* %24, i8** %item_data, align 8
  %arraydecay39 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %gp_offset_p40 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay39, i32 0, i32 0
  %gp_offset41 = load i32, i32* %gp_offset_p40
  %fits_in_gp42 = icmp ule i32 %gp_offset41, 40
  br i1 %fits_in_gp42, label %vaarg.in_reg.43, label %vaarg.in_mem.45

vaarg.in_reg.43:                                  ; preds = %vaarg.end.37
  %25 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay39, i32 0, i32 3
  %reg_save_area44 = load i8*, i8** %25
  %26 = getelementptr i8, i8* %reg_save_area44, i32 %gp_offset41
  %27 = bitcast i8* %26 to %struct._GtkWidget***
  %28 = add i32 %gp_offset41, 8
  store i32 %28, i32* %gp_offset_p40
  br label %vaarg.end.49

vaarg.in_mem.45:                                  ; preds = %vaarg.end.37
  %overflow_arg_area_p46 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay39, i32 0, i32 2
  %overflow_arg_area47 = load i8*, i8** %overflow_arg_area_p46
  %29 = bitcast i8* %overflow_arg_area47 to %struct._GtkWidget***
  %overflow_arg_area.next48 = getelementptr i8, i8* %overflow_arg_area47, i32 8
  store i8* %overflow_arg_area.next48, i8** %overflow_arg_area_p46
  br label %vaarg.end.49

vaarg.end.49:                                     ; preds = %vaarg.in_mem.45, %vaarg.in_reg.43
  %vaarg.addr50 = phi %struct._GtkWidget*** [ %27, %vaarg.in_reg.43 ], [ %29, %vaarg.in_mem.45 ]
  %30 = load %struct._GtkWidget**, %struct._GtkWidget*** %vaarg.addr50
  store %struct._GtkWidget** %30, %struct._GtkWidget*** %widget_ptr, align 8
  %arraydecay51 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %gp_offset_p52 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay51, i32 0, i32 0
  %gp_offset53 = load i32, i32* %gp_offset_p52
  %fits_in_gp54 = icmp ule i32 %gp_offset53, 40
  br i1 %fits_in_gp54, label %vaarg.in_reg.55, label %vaarg.in_mem.57

vaarg.in_reg.55:                                  ; preds = %vaarg.end.49
  %31 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay51, i32 0, i32 3
  %reg_save_area56 = load i8*, i8** %31
  %32 = getelementptr i8, i8* %reg_save_area56, i32 %gp_offset53
  %33 = bitcast i8* %32 to i32*
  %34 = add i32 %gp_offset53, 8
  store i32 %34, i32* %gp_offset_p52
  br label %vaarg.end.61

vaarg.in_mem.57:                                  ; preds = %vaarg.end.49
  %overflow_arg_area_p58 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay51, i32 0, i32 2
  %overflow_arg_area59 = load i8*, i8** %overflow_arg_area_p58
  %35 = bitcast i8* %overflow_arg_area59 to i32*
  %overflow_arg_area.next60 = getelementptr i8, i8* %overflow_arg_area59, i32 8
  store i8* %overflow_arg_area.next60, i8** %overflow_arg_area_p58
  br label %vaarg.end.61

vaarg.end.61:                                     ; preds = %vaarg.in_mem.57, %vaarg.in_reg.55
  %vaarg.addr62 = phi i32* [ %33, %vaarg.in_reg.55 ], [ %35, %vaarg.in_mem.57 ]
  %36 = load i32, i32* %vaarg.addr62
  store i32 %36, i32* %active, align 4
  %37 = load i8*, i8** %label, align 8
  %call63 = call i32 @strcmp(i8* %37, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0)) #5
  %tobool64 = icmp ne i32 %call63, 0
  br i1 %tobool64, label %if.then, label %if.else

if.then:                                          ; preds = %vaarg.end.61
  %38 = load i8*, i8** %label, align 8
  %call65 = call %struct._GtkWidget* @gtk_menu_item_new_with_label(i8* %38)
  store %struct._GtkWidget* %call65, %struct._GtkWidget** %menuitem, align 8
  %39 = load %struct._GtkWidget*, %struct._GtkWidget** %menuitem, align 8
  %40 = bitcast %struct._GtkWidget* %39 to i8*
  %41 = load void ()*, void ()** %callback, align 8
  %42 = load i8*, i8** %callback_data, align 8
  %call66 = call i64 @g_signal_connect_data(i8* %40, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), void ()* %41, i8* %42, void (i8*, %struct._GClosure*)* null, i32 0)
  %43 = load i8*, i8** %item_data, align 8
  %tobool67 = icmp ne i8* %43, null
  br i1 %tobool67, label %if.then.68, label %if.end

if.then.68:                                       ; preds = %if.then
  %44 = load %struct._GtkWidget*, %struct._GtkWidget** %menuitem, align 8
  %45 = bitcast %struct._GtkWidget* %44 to %struct._GTypeInstance*
  %call69 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %45, i64 80)
  %46 = bitcast %struct._GTypeInstance* %call69 to %struct._GObject*
  %47 = load i8*, i8** %item_data, align 8
  call void @g_object_set_data(%struct._GObject* %46, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0), i8* %47)
  %48 = load %struct._GtkWidget*, %struct._GtkWidget** %menuitem, align 8
  %49 = bitcast %struct._GtkWidget* %48 to %struct._GTypeInstance*
  %call70 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %49, i64 80)
  %50 = bitcast %struct._GTypeInstance* %call70 to %struct._GObject*
  %51 = load i8*, i8** %item_data, align 8
  call void @g_object_set_data(%struct._GObject* %50, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i32 0, i32 0), i8* %51)
  br label %if.end

if.end:                                           ; preds = %if.then.68, %if.then
  br label %if.end.72

if.else:                                          ; preds = %vaarg.end.61
  %call71 = call %struct._GtkWidget* @gtk_menu_item_new()
  store %struct._GtkWidget* %call71, %struct._GtkWidget** %menuitem, align 8
  %52 = load %struct._GtkWidget*, %struct._GtkWidget** %menuitem, align 8
  call void @gtk_widget_set_sensitive(%struct._GtkWidget* %52, i32 0)
  br label %if.end.72

if.end.72:                                        ; preds = %if.else, %if.end
  %53 = load %struct._GtkWidget*, %struct._GtkWidget** %menu, align 8
  %54 = bitcast %struct._GtkWidget* %53 to %struct._GTypeInstance*
  %call73 = call i64 @gtk_menu_shell_get_type() #6
  %call74 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %54, i64 %call73)
  %55 = bitcast %struct._GTypeInstance* %call74 to %struct._GtkMenuShell*
  %56 = load %struct._GtkWidget*, %struct._GtkWidget** %menuitem, align 8
  call void @gtk_menu_shell_append(%struct._GtkMenuShell* %55, %struct._GtkWidget* %56)
  %57 = load %struct._GtkWidget**, %struct._GtkWidget*** %widget_ptr, align 8
  %tobool75 = icmp ne %struct._GtkWidget** %57, null
  br i1 %tobool75, label %if.then.76, label %if.end.77

if.then.76:                                       ; preds = %if.end.72
  %58 = load %struct._GtkWidget*, %struct._GtkWidget** %menuitem, align 8
  %59 = load %struct._GtkWidget**, %struct._GtkWidget*** %widget_ptr, align 8
  store %struct._GtkWidget* %58, %struct._GtkWidget** %59, align 8
  br label %if.end.77

if.end.77:                                        ; preds = %if.then.76, %if.end.72
  %60 = load %struct._GtkWidget*, %struct._GtkWidget** %menuitem, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %60)
  %61 = load i32, i32* %active, align 4
  %tobool78 = icmp ne i32 %61, 0
  br i1 %tobool78, label %if.then.79, label %if.end.80

if.then.79:                                       ; preds = %if.end.77
  %62 = load i32, i32* %i, align 4
  store i32 %62, i32* %initial_index, align 4
  br label %if.end.80

if.end.80:                                        ; preds = %if.then.79, %if.end.77
  %arraydecay81 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %gp_offset_p82 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay81, i32 0, i32 0
  %gp_offset83 = load i32, i32* %gp_offset_p82
  %fits_in_gp84 = icmp ule i32 %gp_offset83, 40
  br i1 %fits_in_gp84, label %vaarg.in_reg.85, label %vaarg.in_mem.87

vaarg.in_reg.85:                                  ; preds = %if.end.80
  %63 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay81, i32 0, i32 3
  %reg_save_area86 = load i8*, i8** %63
  %64 = getelementptr i8, i8* %reg_save_area86, i32 %gp_offset83
  %65 = bitcast i8* %64 to i8**
  %66 = add i32 %gp_offset83, 8
  store i32 %66, i32* %gp_offset_p82
  br label %vaarg.end.91

vaarg.in_mem.87:                                  ; preds = %if.end.80
  %overflow_arg_area_p88 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay81, i32 0, i32 2
  %overflow_arg_area89 = load i8*, i8** %overflow_arg_area_p88
  %67 = bitcast i8* %overflow_arg_area89 to i8**
  %overflow_arg_area.next90 = getelementptr i8, i8* %overflow_arg_area89, i32 8
  store i8* %overflow_arg_area.next90, i8** %overflow_arg_area_p88
  br label %vaarg.end.91

vaarg.end.91:                                     ; preds = %vaarg.in_mem.87, %vaarg.in_reg.85
  %vaarg.addr92 = phi i8** [ %65, %vaarg.in_reg.85 ], [ %67, %vaarg.in_mem.87 ]
  %68 = load i8*, i8** %vaarg.addr92
  store i8* %68, i8** %label, align 8
  br label %for.inc

for.inc:                                          ; preds = %vaarg.end.91
  %69 = load i32, i32* %i, align 4
  %inc = add nsw i32 %69, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %arraydecay93 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay9394 = bitcast %struct.__va_list_tag* %arraydecay93 to i8*
  call void @llvm.va_end(i8* %arraydecay9394)
  %70 = load i32, i32* %menu_only.addr, align 4
  %tobool95 = icmp ne i32 %70, 0
  br i1 %tobool95, label %if.end.102, label %if.then.96

if.then.96:                                       ; preds = %for.end
  %call97 = call %struct._GtkWidget* @gtk_option_menu_new()
  store %struct._GtkWidget* %call97, %struct._GtkWidget** %optionmenu, align 8
  %71 = load %struct._GtkWidget*, %struct._GtkWidget** %optionmenu, align 8
  %72 = bitcast %struct._GtkWidget* %71 to %struct._GTypeInstance*
  %call98 = call i64 @gtk_option_menu_get_type() #6
  %call99 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %72, i64 %call98)
  %73 = bitcast %struct._GTypeInstance* %call99 to %struct._GtkOptionMenu*
  %74 = load %struct._GtkWidget*, %struct._GtkWidget** %menu, align 8
  call void @gtk_option_menu_set_menu(%struct._GtkOptionMenu* %73, %struct._GtkWidget* %74)
  %75 = load %struct._GtkWidget*, %struct._GtkWidget** %optionmenu, align 8
  %76 = bitcast %struct._GtkWidget* %75 to %struct._GTypeInstance*
  %call100 = call i64 @gtk_option_menu_get_type() #6
  %call101 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %76, i64 %call100)
  %77 = bitcast %struct._GTypeInstance* %call101 to %struct._GtkOptionMenu*
  %78 = load i32, i32* %initial_index, align 4
  call void @gtk_option_menu_set_history(%struct._GtkOptionMenu* %77, i32 %78)
  %79 = load %struct._GtkWidget*, %struct._GtkWidget** %optionmenu, align 8
  store %struct._GtkWidget* %79, %struct._GtkWidget** %retval
  br label %return

if.end.102:                                       ; preds = %for.end
  %80 = load %struct._GtkWidget*, %struct._GtkWidget** %menu, align 8
  store %struct._GtkWidget* %80, %struct._GtkWidget** %retval
  br label %return

return:                                           ; preds = %if.end.102, %if.then.96
  %81 = load %struct._GtkWidget*, %struct._GtkWidget** %retval
  ret %struct._GtkWidget* %81
}

declare %struct._GtkWidget* @gtk_menu_new() #1

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #2

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #3

declare %struct._GtkWidget* @gtk_menu_item_new_with_label(i8*) #1

declare i64 @g_signal_connect_data(i8*, i8*, void ()*, i8*, void (i8*, %struct._GClosure*)*, i32) #1

declare void @g_object_set_data(%struct._GObject*, i8*, i8*) #1

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

declare %struct._GtkWidget* @gtk_menu_item_new() #1

declare void @gtk_widget_set_sensitive(%struct._GtkWidget*, i32) #1

declare void @gtk_menu_shell_append(%struct._GtkMenuShell*, %struct._GtkWidget*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_menu_shell_get_type() #4

declare void @gtk_widget_show(%struct._GtkWidget*) #1

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #2

declare %struct._GtkWidget* @gtk_option_menu_new() #1

declare void @gtk_option_menu_set_menu(%struct._GtkOptionMenu*, %struct._GtkWidget*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_option_menu_get_type() #4

declare void @gtk_option_menu_set_history(%struct._GtkOptionMenu*, i32) #1

; Function Attrs: nounwind uwtable
define %struct._GtkWidget* @gimp_option_menu_new2(i32 %menu_only, void ()* %menu_item_callback, i8* %callback_data, i8* %initial, ...) #0 {
entry:
  %retval = alloca %struct._GtkWidget*, align 8
  %menu_only.addr = alloca i32, align 4
  %menu_item_callback.addr = alloca void ()*, align 8
  %callback_data.addr = alloca i8*, align 8
  %initial.addr = alloca i8*, align 8
  %menu = alloca %struct._GtkWidget*, align 8
  %menuitem = alloca %struct._GtkWidget*, align 8
  %label = alloca i8*, align 8
  %item_data = alloca i8*, align 8
  %widget_ptr = alloca %struct._GtkWidget**, align 8
  %args = alloca [1 x %struct.__va_list_tag], align 16
  %i = alloca i32, align 4
  %initial_index = alloca i32, align 4
  %optionmenu = alloca %struct._GtkWidget*, align 8
  store i32 %menu_only, i32* %menu_only.addr, align 4
  store void ()* %menu_item_callback, void ()** %menu_item_callback.addr, align 8
  store i8* %callback_data, i8** %callback_data.addr, align 8
  store i8* %initial, i8** %initial.addr, align 8
  %call = call %struct._GtkWidget* @gtk_menu_new()
  store %struct._GtkWidget* %call, %struct._GtkWidget** %menu, align 8
  store i32 0, i32* %initial_index, align 4
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay1)
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %gp_offset_p = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay2, i32 0, i32 0
  %gp_offset = load i32, i32* %gp_offset_p
  %fits_in_gp = icmp ule i32 %gp_offset, 40
  br i1 %fits_in_gp, label %vaarg.in_reg, label %vaarg.in_mem

vaarg.in_reg:                                     ; preds = %entry
  %0 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay2, i32 0, i32 3
  %reg_save_area = load i8*, i8** %0
  %1 = getelementptr i8, i8* %reg_save_area, i32 %gp_offset
  %2 = bitcast i8* %1 to i8**
  %3 = add i32 %gp_offset, 8
  store i32 %3, i32* %gp_offset_p
  br label %vaarg.end

vaarg.in_mem:                                     ; preds = %entry
  %overflow_arg_area_p = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay2, i32 0, i32 2
  %overflow_arg_area = load i8*, i8** %overflow_arg_area_p
  %4 = bitcast i8* %overflow_arg_area to i8**
  %overflow_arg_area.next = getelementptr i8, i8* %overflow_arg_area, i32 8
  store i8* %overflow_arg_area.next, i8** %overflow_arg_area_p
  br label %vaarg.end

vaarg.end:                                        ; preds = %vaarg.in_mem, %vaarg.in_reg
  %vaarg.addr = phi i8** [ %2, %vaarg.in_reg ], [ %4, %vaarg.in_mem ]
  %5 = load i8*, i8** %vaarg.addr
  store i8* %5, i8** %label, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %vaarg.end
  %6 = load i8*, i8** %label, align 8
  %tobool = icmp ne i8* %6, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %gp_offset_p4 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay3, i32 0, i32 0
  %gp_offset5 = load i32, i32* %gp_offset_p4
  %fits_in_gp6 = icmp ule i32 %gp_offset5, 40
  br i1 %fits_in_gp6, label %vaarg.in_reg.7, label %vaarg.in_mem.9

vaarg.in_reg.7:                                   ; preds = %for.body
  %7 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay3, i32 0, i32 3
  %reg_save_area8 = load i8*, i8** %7
  %8 = getelementptr i8, i8* %reg_save_area8, i32 %gp_offset5
  %9 = bitcast i8* %8 to i8**
  %10 = add i32 %gp_offset5, 8
  store i32 %10, i32* %gp_offset_p4
  br label %vaarg.end.13

vaarg.in_mem.9:                                   ; preds = %for.body
  %overflow_arg_area_p10 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay3, i32 0, i32 2
  %overflow_arg_area11 = load i8*, i8** %overflow_arg_area_p10
  %11 = bitcast i8* %overflow_arg_area11 to i8**
  %overflow_arg_area.next12 = getelementptr i8, i8* %overflow_arg_area11, i32 8
  store i8* %overflow_arg_area.next12, i8** %overflow_arg_area_p10
  br label %vaarg.end.13

vaarg.end.13:                                     ; preds = %vaarg.in_mem.9, %vaarg.in_reg.7
  %vaarg.addr14 = phi i8** [ %9, %vaarg.in_reg.7 ], [ %11, %vaarg.in_mem.9 ]
  %12 = load i8*, i8** %vaarg.addr14
  store i8* %12, i8** %item_data, align 8
  %arraydecay15 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %gp_offset_p16 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay15, i32 0, i32 0
  %gp_offset17 = load i32, i32* %gp_offset_p16
  %fits_in_gp18 = icmp ule i32 %gp_offset17, 40
  br i1 %fits_in_gp18, label %vaarg.in_reg.19, label %vaarg.in_mem.21

vaarg.in_reg.19:                                  ; preds = %vaarg.end.13
  %13 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay15, i32 0, i32 3
  %reg_save_area20 = load i8*, i8** %13
  %14 = getelementptr i8, i8* %reg_save_area20, i32 %gp_offset17
  %15 = bitcast i8* %14 to %struct._GtkWidget***
  %16 = add i32 %gp_offset17, 8
  store i32 %16, i32* %gp_offset_p16
  br label %vaarg.end.25

vaarg.in_mem.21:                                  ; preds = %vaarg.end.13
  %overflow_arg_area_p22 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay15, i32 0, i32 2
  %overflow_arg_area23 = load i8*, i8** %overflow_arg_area_p22
  %17 = bitcast i8* %overflow_arg_area23 to %struct._GtkWidget***
  %overflow_arg_area.next24 = getelementptr i8, i8* %overflow_arg_area23, i32 8
  store i8* %overflow_arg_area.next24, i8** %overflow_arg_area_p22
  br label %vaarg.end.25

vaarg.end.25:                                     ; preds = %vaarg.in_mem.21, %vaarg.in_reg.19
  %vaarg.addr26 = phi %struct._GtkWidget*** [ %15, %vaarg.in_reg.19 ], [ %17, %vaarg.in_mem.21 ]
  %18 = load %struct._GtkWidget**, %struct._GtkWidget*** %vaarg.addr26
  store %struct._GtkWidget** %18, %struct._GtkWidget*** %widget_ptr, align 8
  %19 = load i8*, i8** %label, align 8
  %call27 = call i32 @strcmp(i8* %19, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0)) #5
  %tobool28 = icmp ne i32 %call27, 0
  br i1 %tobool28, label %if.then, label %if.else

if.then:                                          ; preds = %vaarg.end.25
  %20 = load i8*, i8** %label, align 8
  %call29 = call %struct._GtkWidget* @gtk_menu_item_new_with_label(i8* %20)
  store %struct._GtkWidget* %call29, %struct._GtkWidget** %menuitem, align 8
  %21 = load %struct._GtkWidget*, %struct._GtkWidget** %menuitem, align 8
  %22 = bitcast %struct._GtkWidget* %21 to i8*
  %23 = load void ()*, void ()** %menu_item_callback.addr, align 8
  %24 = load i8*, i8** %callback_data.addr, align 8
  %call30 = call i64 @g_signal_connect_data(i8* %22, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), void ()* %23, i8* %24, void (i8*, %struct._GClosure*)* null, i32 0)
  %25 = load i8*, i8** %item_data, align 8
  %tobool31 = icmp ne i8* %25, null
  br i1 %tobool31, label %if.then.32, label %if.end

if.then.32:                                       ; preds = %if.then
  %26 = load %struct._GtkWidget*, %struct._GtkWidget** %menuitem, align 8
  %27 = bitcast %struct._GtkWidget* %26 to %struct._GTypeInstance*
  %call33 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %27, i64 80)
  %28 = bitcast %struct._GTypeInstance* %call33 to %struct._GObject*
  %29 = load i8*, i8** %item_data, align 8
  call void @g_object_set_data(%struct._GObject* %28, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0), i8* %29)
  %30 = load %struct._GtkWidget*, %struct._GtkWidget** %menuitem, align 8
  %31 = bitcast %struct._GtkWidget* %30 to %struct._GTypeInstance*
  %call34 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %31, i64 80)
  %32 = bitcast %struct._GTypeInstance* %call34 to %struct._GObject*
  %33 = load i8*, i8** %item_data, align 8
  call void @g_object_set_data(%struct._GObject* %32, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i32 0, i32 0), i8* %33)
  br label %if.end

if.end:                                           ; preds = %if.then.32, %if.then
  br label %if.end.36

if.else:                                          ; preds = %vaarg.end.25
  %call35 = call %struct._GtkWidget* @gtk_menu_item_new()
  store %struct._GtkWidget* %call35, %struct._GtkWidget** %menuitem, align 8
  %34 = load %struct._GtkWidget*, %struct._GtkWidget** %menuitem, align 8
  call void @gtk_widget_set_sensitive(%struct._GtkWidget* %34, i32 0)
  br label %if.end.36

if.end.36:                                        ; preds = %if.else, %if.end
  %35 = load %struct._GtkWidget*, %struct._GtkWidget** %menu, align 8
  %36 = bitcast %struct._GtkWidget* %35 to %struct._GTypeInstance*
  %call37 = call i64 @gtk_menu_shell_get_type() #6
  %call38 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %36, i64 %call37)
  %37 = bitcast %struct._GTypeInstance* %call38 to %struct._GtkMenuShell*
  %38 = load %struct._GtkWidget*, %struct._GtkWidget** %menuitem, align 8
  call void @gtk_menu_shell_append(%struct._GtkMenuShell* %37, %struct._GtkWidget* %38)
  %39 = load %struct._GtkWidget**, %struct._GtkWidget*** %widget_ptr, align 8
  %tobool39 = icmp ne %struct._GtkWidget** %39, null
  br i1 %tobool39, label %if.then.40, label %if.end.41

if.then.40:                                       ; preds = %if.end.36
  %40 = load %struct._GtkWidget*, %struct._GtkWidget** %menuitem, align 8
  %41 = load %struct._GtkWidget**, %struct._GtkWidget*** %widget_ptr, align 8
  store %struct._GtkWidget* %40, %struct._GtkWidget** %41, align 8
  br label %if.end.41

if.end.41:                                        ; preds = %if.then.40, %if.end.36
  %42 = load %struct._GtkWidget*, %struct._GtkWidget** %menuitem, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %42)
  %43 = load i8*, i8** %item_data, align 8
  %44 = load i8*, i8** %initial.addr, align 8
  %cmp = icmp eq i8* %43, %44
  br i1 %cmp, label %if.then.42, label %if.end.43

if.then.42:                                       ; preds = %if.end.41
  %45 = load i32, i32* %i, align 4
  store i32 %45, i32* %initial_index, align 4
  br label %if.end.43

if.end.43:                                        ; preds = %if.then.42, %if.end.41
  %arraydecay44 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %gp_offset_p45 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay44, i32 0, i32 0
  %gp_offset46 = load i32, i32* %gp_offset_p45
  %fits_in_gp47 = icmp ule i32 %gp_offset46, 40
  br i1 %fits_in_gp47, label %vaarg.in_reg.48, label %vaarg.in_mem.50

vaarg.in_reg.48:                                  ; preds = %if.end.43
  %46 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay44, i32 0, i32 3
  %reg_save_area49 = load i8*, i8** %46
  %47 = getelementptr i8, i8* %reg_save_area49, i32 %gp_offset46
  %48 = bitcast i8* %47 to i8**
  %49 = add i32 %gp_offset46, 8
  store i32 %49, i32* %gp_offset_p45
  br label %vaarg.end.54

vaarg.in_mem.50:                                  ; preds = %if.end.43
  %overflow_arg_area_p51 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay44, i32 0, i32 2
  %overflow_arg_area52 = load i8*, i8** %overflow_arg_area_p51
  %50 = bitcast i8* %overflow_arg_area52 to i8**
  %overflow_arg_area.next53 = getelementptr i8, i8* %overflow_arg_area52, i32 8
  store i8* %overflow_arg_area.next53, i8** %overflow_arg_area_p51
  br label %vaarg.end.54

vaarg.end.54:                                     ; preds = %vaarg.in_mem.50, %vaarg.in_reg.48
  %vaarg.addr55 = phi i8** [ %48, %vaarg.in_reg.48 ], [ %50, %vaarg.in_mem.50 ]
  %51 = load i8*, i8** %vaarg.addr55
  store i8* %51, i8** %label, align 8
  br label %for.inc

for.inc:                                          ; preds = %vaarg.end.54
  %52 = load i32, i32* %i, align 4
  %inc = add nsw i32 %52, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %arraydecay56 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay5657 = bitcast %struct.__va_list_tag* %arraydecay56 to i8*
  call void @llvm.va_end(i8* %arraydecay5657)
  %53 = load i32, i32* %menu_only.addr, align 4
  %tobool58 = icmp ne i32 %53, 0
  br i1 %tobool58, label %if.end.65, label %if.then.59

if.then.59:                                       ; preds = %for.end
  %call60 = call %struct._GtkWidget* @gtk_option_menu_new()
  store %struct._GtkWidget* %call60, %struct._GtkWidget** %optionmenu, align 8
  %54 = load %struct._GtkWidget*, %struct._GtkWidget** %optionmenu, align 8
  %55 = bitcast %struct._GtkWidget* %54 to %struct._GTypeInstance*
  %call61 = call i64 @gtk_option_menu_get_type() #6
  %call62 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %55, i64 %call61)
  %56 = bitcast %struct._GTypeInstance* %call62 to %struct._GtkOptionMenu*
  %57 = load %struct._GtkWidget*, %struct._GtkWidget** %menu, align 8
  call void @gtk_option_menu_set_menu(%struct._GtkOptionMenu* %56, %struct._GtkWidget* %57)
  %58 = load %struct._GtkWidget*, %struct._GtkWidget** %optionmenu, align 8
  %59 = bitcast %struct._GtkWidget* %58 to %struct._GTypeInstance*
  %call63 = call i64 @gtk_option_menu_get_type() #6
  %call64 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %59, i64 %call63)
  %60 = bitcast %struct._GTypeInstance* %call64 to %struct._GtkOptionMenu*
  %61 = load i32, i32* %initial_index, align 4
  call void @gtk_option_menu_set_history(%struct._GtkOptionMenu* %60, i32 %61)
  %62 = load %struct._GtkWidget*, %struct._GtkWidget** %optionmenu, align 8
  store %struct._GtkWidget* %62, %struct._GtkWidget** %retval
  br label %return

if.end.65:                                        ; preds = %for.end
  %63 = load %struct._GtkWidget*, %struct._GtkWidget** %menu, align 8
  store %struct._GtkWidget* %63, %struct._GtkWidget** %retval
  br label %return

return:                                           ; preds = %if.end.65, %if.then.59
  %64 = load %struct._GtkWidget*, %struct._GtkWidget** %retval
  ret %struct._GtkWidget* %64
}

; Function Attrs: nounwind uwtable
define %struct._GtkWidget* @gimp_int_option_menu_new(i32 %menu_only, void ()* %menu_item_callback, i8* %callback_data, i32 %initial, ...) #0 {
entry:
  %retval = alloca %struct._GtkWidget*, align 8
  %menu_only.addr = alloca i32, align 4
  %menu_item_callback.addr = alloca void ()*, align 8
  %callback_data.addr = alloca i8*, align 8
  %initial.addr = alloca i32, align 4
  %menu = alloca %struct._GtkWidget*, align 8
  %menuitem = alloca %struct._GtkWidget*, align 8
  %label = alloca i8*, align 8
  %item_data = alloca i32, align 4
  %item_ptr = alloca i8*, align 8
  %widget_ptr = alloca %struct._GtkWidget**, align 8
  %args = alloca [1 x %struct.__va_list_tag], align 16
  %i = alloca i32, align 4
  %initial_index = alloca i32, align 4
  %optionmenu = alloca %struct._GtkWidget*, align 8
  store i32 %menu_only, i32* %menu_only.addr, align 4
  store void ()* %menu_item_callback, void ()** %menu_item_callback.addr, align 8
  store i8* %callback_data, i8** %callback_data.addr, align 8
  store i32 %initial, i32* %initial.addr, align 4
  %call = call %struct._GtkWidget* @gtk_menu_new()
  store %struct._GtkWidget* %call, %struct._GtkWidget** %menu, align 8
  store i32 0, i32* %initial_index, align 4
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay1)
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %gp_offset_p = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay2, i32 0, i32 0
  %gp_offset = load i32, i32* %gp_offset_p
  %fits_in_gp = icmp ule i32 %gp_offset, 40
  br i1 %fits_in_gp, label %vaarg.in_reg, label %vaarg.in_mem

vaarg.in_reg:                                     ; preds = %entry
  %0 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay2, i32 0, i32 3
  %reg_save_area = load i8*, i8** %0
  %1 = getelementptr i8, i8* %reg_save_area, i32 %gp_offset
  %2 = bitcast i8* %1 to i8**
  %3 = add i32 %gp_offset, 8
  store i32 %3, i32* %gp_offset_p
  br label %vaarg.end

vaarg.in_mem:                                     ; preds = %entry
  %overflow_arg_area_p = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay2, i32 0, i32 2
  %overflow_arg_area = load i8*, i8** %overflow_arg_area_p
  %4 = bitcast i8* %overflow_arg_area to i8**
  %overflow_arg_area.next = getelementptr i8, i8* %overflow_arg_area, i32 8
  store i8* %overflow_arg_area.next, i8** %overflow_arg_area_p
  br label %vaarg.end

vaarg.end:                                        ; preds = %vaarg.in_mem, %vaarg.in_reg
  %vaarg.addr = phi i8** [ %2, %vaarg.in_reg ], [ %4, %vaarg.in_mem ]
  %5 = load i8*, i8** %vaarg.addr
  store i8* %5, i8** %label, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %vaarg.end
  %6 = load i8*, i8** %label, align 8
  %tobool = icmp ne i8* %6, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %gp_offset_p4 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay3, i32 0, i32 0
  %gp_offset5 = load i32, i32* %gp_offset_p4
  %fits_in_gp6 = icmp ule i32 %gp_offset5, 40
  br i1 %fits_in_gp6, label %vaarg.in_reg.7, label %vaarg.in_mem.9

vaarg.in_reg.7:                                   ; preds = %for.body
  %7 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay3, i32 0, i32 3
  %reg_save_area8 = load i8*, i8** %7
  %8 = getelementptr i8, i8* %reg_save_area8, i32 %gp_offset5
  %9 = bitcast i8* %8 to i32*
  %10 = add i32 %gp_offset5, 8
  store i32 %10, i32* %gp_offset_p4
  br label %vaarg.end.13

vaarg.in_mem.9:                                   ; preds = %for.body
  %overflow_arg_area_p10 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay3, i32 0, i32 2
  %overflow_arg_area11 = load i8*, i8** %overflow_arg_area_p10
  %11 = bitcast i8* %overflow_arg_area11 to i32*
  %overflow_arg_area.next12 = getelementptr i8, i8* %overflow_arg_area11, i32 8
  store i8* %overflow_arg_area.next12, i8** %overflow_arg_area_p10
  br label %vaarg.end.13

vaarg.end.13:                                     ; preds = %vaarg.in_mem.9, %vaarg.in_reg.7
  %vaarg.addr14 = phi i32* [ %9, %vaarg.in_reg.7 ], [ %11, %vaarg.in_mem.9 ]
  %12 = load i32, i32* %vaarg.addr14
  store i32 %12, i32* %item_data, align 4
  %arraydecay15 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %gp_offset_p16 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay15, i32 0, i32 0
  %gp_offset17 = load i32, i32* %gp_offset_p16
  %fits_in_gp18 = icmp ule i32 %gp_offset17, 40
  br i1 %fits_in_gp18, label %vaarg.in_reg.19, label %vaarg.in_mem.21

vaarg.in_reg.19:                                  ; preds = %vaarg.end.13
  %13 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay15, i32 0, i32 3
  %reg_save_area20 = load i8*, i8** %13
  %14 = getelementptr i8, i8* %reg_save_area20, i32 %gp_offset17
  %15 = bitcast i8* %14 to %struct._GtkWidget***
  %16 = add i32 %gp_offset17, 8
  store i32 %16, i32* %gp_offset_p16
  br label %vaarg.end.25

vaarg.in_mem.21:                                  ; preds = %vaarg.end.13
  %overflow_arg_area_p22 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay15, i32 0, i32 2
  %overflow_arg_area23 = load i8*, i8** %overflow_arg_area_p22
  %17 = bitcast i8* %overflow_arg_area23 to %struct._GtkWidget***
  %overflow_arg_area.next24 = getelementptr i8, i8* %overflow_arg_area23, i32 8
  store i8* %overflow_arg_area.next24, i8** %overflow_arg_area_p22
  br label %vaarg.end.25

vaarg.end.25:                                     ; preds = %vaarg.in_mem.21, %vaarg.in_reg.19
  %vaarg.addr26 = phi %struct._GtkWidget*** [ %15, %vaarg.in_reg.19 ], [ %17, %vaarg.in_mem.21 ]
  %18 = load %struct._GtkWidget**, %struct._GtkWidget*** %vaarg.addr26
  store %struct._GtkWidget** %18, %struct._GtkWidget*** %widget_ptr, align 8
  %19 = load i32, i32* %item_data, align 4
  %conv = sext i32 %19 to i64
  %20 = inttoptr i64 %conv to i8*
  store i8* %20, i8** %item_ptr, align 8
  %21 = load i8*, i8** %label, align 8
  %call27 = call i32 @strcmp(i8* %21, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0)) #5
  %tobool28 = icmp ne i32 %call27, 0
  br i1 %tobool28, label %if.then, label %if.else

if.then:                                          ; preds = %vaarg.end.25
  %22 = load i8*, i8** %label, align 8
  %call29 = call %struct._GtkWidget* @gtk_menu_item_new_with_label(i8* %22)
  store %struct._GtkWidget* %call29, %struct._GtkWidget** %menuitem, align 8
  %23 = load %struct._GtkWidget*, %struct._GtkWidget** %menuitem, align 8
  %24 = bitcast %struct._GtkWidget* %23 to i8*
  %25 = load void ()*, void ()** %menu_item_callback.addr, align 8
  %26 = load i8*, i8** %callback_data.addr, align 8
  %call30 = call i64 @g_signal_connect_data(i8* %24, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), void ()* %25, i8* %26, void (i8*, %struct._GClosure*)* null, i32 0)
  %27 = load i32, i32* %item_data, align 4
  %tobool31 = icmp ne i32 %27, 0
  br i1 %tobool31, label %if.then.32, label %if.end

if.then.32:                                       ; preds = %if.then
  %28 = load %struct._GtkWidget*, %struct._GtkWidget** %menuitem, align 8
  %29 = bitcast %struct._GtkWidget* %28 to %struct._GTypeInstance*
  %call33 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %29, i64 80)
  %30 = bitcast %struct._GTypeInstance* %call33 to %struct._GObject*
  %31 = load i8*, i8** %item_ptr, align 8
  call void @g_object_set_data(%struct._GObject* %30, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0), i8* %31)
  %32 = load %struct._GtkWidget*, %struct._GtkWidget** %menuitem, align 8
  %33 = bitcast %struct._GtkWidget* %32 to %struct._GTypeInstance*
  %call34 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %33, i64 80)
  %34 = bitcast %struct._GTypeInstance* %call34 to %struct._GObject*
  %35 = load i8*, i8** %item_ptr, align 8
  call void @g_object_set_data(%struct._GObject* %34, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i32 0, i32 0), i8* %35)
  br label %if.end

if.end:                                           ; preds = %if.then.32, %if.then
  br label %if.end.36

if.else:                                          ; preds = %vaarg.end.25
  %call35 = call %struct._GtkWidget* @gtk_menu_item_new()
  store %struct._GtkWidget* %call35, %struct._GtkWidget** %menuitem, align 8
  %36 = load %struct._GtkWidget*, %struct._GtkWidget** %menuitem, align 8
  call void @gtk_widget_set_sensitive(%struct._GtkWidget* %36, i32 0)
  br label %if.end.36

if.end.36:                                        ; preds = %if.else, %if.end
  %37 = load %struct._GtkWidget*, %struct._GtkWidget** %menu, align 8
  %38 = bitcast %struct._GtkWidget* %37 to %struct._GTypeInstance*
  %call37 = call i64 @gtk_menu_shell_get_type() #6
  %call38 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %38, i64 %call37)
  %39 = bitcast %struct._GTypeInstance* %call38 to %struct._GtkMenuShell*
  %40 = load %struct._GtkWidget*, %struct._GtkWidget** %menuitem, align 8
  call void @gtk_menu_shell_append(%struct._GtkMenuShell* %39, %struct._GtkWidget* %40)
  %41 = load %struct._GtkWidget**, %struct._GtkWidget*** %widget_ptr, align 8
  %tobool39 = icmp ne %struct._GtkWidget** %41, null
  br i1 %tobool39, label %if.then.40, label %if.end.41

if.then.40:                                       ; preds = %if.end.36
  %42 = load %struct._GtkWidget*, %struct._GtkWidget** %menuitem, align 8
  %43 = load %struct._GtkWidget**, %struct._GtkWidget*** %widget_ptr, align 8
  store %struct._GtkWidget* %42, %struct._GtkWidget** %43, align 8
  br label %if.end.41

if.end.41:                                        ; preds = %if.then.40, %if.end.36
  %44 = load %struct._GtkWidget*, %struct._GtkWidget** %menuitem, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %44)
  %45 = load i32, i32* %item_data, align 4
  %46 = load i32, i32* %initial.addr, align 4
  %cmp = icmp eq i32 %45, %46
  br i1 %cmp, label %if.then.43, label %if.end.44

if.then.43:                                       ; preds = %if.end.41
  %47 = load i32, i32* %i, align 4
  store i32 %47, i32* %initial_index, align 4
  br label %if.end.44

if.end.44:                                        ; preds = %if.then.43, %if.end.41
  %arraydecay45 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %gp_offset_p46 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay45, i32 0, i32 0
  %gp_offset47 = load i32, i32* %gp_offset_p46
  %fits_in_gp48 = icmp ule i32 %gp_offset47, 40
  br i1 %fits_in_gp48, label %vaarg.in_reg.49, label %vaarg.in_mem.51

vaarg.in_reg.49:                                  ; preds = %if.end.44
  %48 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay45, i32 0, i32 3
  %reg_save_area50 = load i8*, i8** %48
  %49 = getelementptr i8, i8* %reg_save_area50, i32 %gp_offset47
  %50 = bitcast i8* %49 to i8**
  %51 = add i32 %gp_offset47, 8
  store i32 %51, i32* %gp_offset_p46
  br label %vaarg.end.55

vaarg.in_mem.51:                                  ; preds = %if.end.44
  %overflow_arg_area_p52 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay45, i32 0, i32 2
  %overflow_arg_area53 = load i8*, i8** %overflow_arg_area_p52
  %52 = bitcast i8* %overflow_arg_area53 to i8**
  %overflow_arg_area.next54 = getelementptr i8, i8* %overflow_arg_area53, i32 8
  store i8* %overflow_arg_area.next54, i8** %overflow_arg_area_p52
  br label %vaarg.end.55

vaarg.end.55:                                     ; preds = %vaarg.in_mem.51, %vaarg.in_reg.49
  %vaarg.addr56 = phi i8** [ %50, %vaarg.in_reg.49 ], [ %52, %vaarg.in_mem.51 ]
  %53 = load i8*, i8** %vaarg.addr56
  store i8* %53, i8** %label, align 8
  br label %for.inc

for.inc:                                          ; preds = %vaarg.end.55
  %54 = load i32, i32* %i, align 4
  %inc = add nsw i32 %54, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %arraydecay57 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay5758 = bitcast %struct.__va_list_tag* %arraydecay57 to i8*
  call void @llvm.va_end(i8* %arraydecay5758)
  %55 = load i32, i32* %menu_only.addr, align 4
  %tobool59 = icmp ne i32 %55, 0
  br i1 %tobool59, label %if.end.66, label %if.then.60

if.then.60:                                       ; preds = %for.end
  %call61 = call %struct._GtkWidget* @gtk_option_menu_new()
  store %struct._GtkWidget* %call61, %struct._GtkWidget** %optionmenu, align 8
  %56 = load %struct._GtkWidget*, %struct._GtkWidget** %optionmenu, align 8
  %57 = bitcast %struct._GtkWidget* %56 to %struct._GTypeInstance*
  %call62 = call i64 @gtk_option_menu_get_type() #6
  %call63 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %57, i64 %call62)
  %58 = bitcast %struct._GTypeInstance* %call63 to %struct._GtkOptionMenu*
  %59 = load %struct._GtkWidget*, %struct._GtkWidget** %menu, align 8
  call void @gtk_option_menu_set_menu(%struct._GtkOptionMenu* %58, %struct._GtkWidget* %59)
  %60 = load %struct._GtkWidget*, %struct._GtkWidget** %optionmenu, align 8
  %61 = bitcast %struct._GtkWidget* %60 to %struct._GTypeInstance*
  %call64 = call i64 @gtk_option_menu_get_type() #6
  %call65 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %61, i64 %call64)
  %62 = bitcast %struct._GTypeInstance* %call65 to %struct._GtkOptionMenu*
  %63 = load i32, i32* %initial_index, align 4
  call void @gtk_option_menu_set_history(%struct._GtkOptionMenu* %62, i32 %63)
  %64 = load %struct._GtkWidget*, %struct._GtkWidget** %optionmenu, align 8
  store %struct._GtkWidget* %64, %struct._GtkWidget** %retval
  br label %return

if.end.66:                                        ; preds = %for.end
  %65 = load %struct._GtkWidget*, %struct._GtkWidget** %menu, align 8
  store %struct._GtkWidget* %65, %struct._GtkWidget** %retval
  br label %return

return:                                           ; preds = %if.end.66, %if.then.60
  %66 = load %struct._GtkWidget*, %struct._GtkWidget** %retval
  ret %struct._GtkWidget* %66
}

; Function Attrs: nounwind uwtable
define void @gimp_option_menu_set_history(%struct._GtkOptionMenu* %option_menu, i8* %item_data) #0 {
entry:
  %option_menu.addr = alloca %struct._GtkOptionMenu*, align 8
  %item_data.addr = alloca i8*, align 8
  %children = alloca %struct._GList*, align 8
  %list = alloca %struct._GList*, align 8
  %history = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %menu_item = alloca %struct._GtkWidget*, align 8
  %__inst19 = alloca %struct._GTypeInstance*, align 8
  %__t24 = alloca i64, align 8
  %__r27 = alloca i32, align 4
  %tmp42 = alloca i32, align 4
  store %struct._GtkOptionMenu* %option_menu, %struct._GtkOptionMenu** %option_menu.addr, align 8
  store i8* %item_data, i8** %item_data.addr, align 8
  store i32 0, i32* %history, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GtkOptionMenu*, %struct._GtkOptionMenu** %option_menu.addr, align 8
  %1 = bitcast %struct._GtkOptionMenu* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gtk_option_menu_get_type() #6
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #5
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.gimp_option_menu_set_history, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GtkOptionMenu*, %struct._GtkOptionMenu** %option_menu.addr, align 8
  %menu = getelementptr inbounds %struct._GtkOptionMenu, %struct._GtkOptionMenu* %13, i32 0, i32 1
  %14 = load %struct._GtkWidget*, %struct._GtkWidget** %menu, align 8
  %15 = bitcast %struct._GtkWidget* %14 to %struct._GTypeInstance*
  %call11 = call i64 @gtk_container_get_type() #6
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %15, i64 %call11)
  %16 = bitcast %struct._GTypeInstance* %call12 to %struct._GtkContainer*
  %call13 = call %struct._GList* @gtk_container_get_children(%struct._GtkContainer* %16)
  store %struct._GList* %call13, %struct._GList** %children, align 8
  %17 = load %struct._GList*, %struct._GList** %children, align 8
  store %struct._GList* %17, %struct._GList** %list, align 8
  br label %for.cond

for.cond:                                         ; preds = %cond.end, %do.end
  %18 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool14 = icmp ne %struct._GList* %18, null
  br i1 %tobool14, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %19 = load %struct._GList*, %struct._GList** %list, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %19, i32 0, i32 0
  %20 = load i8*, i8** %data, align 8
  %21 = bitcast i8* %20 to %struct._GTypeInstance*
  %call16 = call i64 @gtk_widget_get_type() #6
  %call17 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %21, i64 %call16)
  %22 = bitcast %struct._GTypeInstance* %call17 to %struct._GtkWidget*
  store %struct._GtkWidget* %22, %struct._GtkWidget** %menu_item, align 8
  %23 = load %struct._GtkWidget*, %struct._GtkWidget** %menu_item, align 8
  %24 = bitcast %struct._GtkWidget* %23 to %struct._GTypeInstance*
  %call20 = call i64 @gtk_bin_get_type() #6
  %call21 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %24, i64 %call20)
  %25 = bitcast %struct._GTypeInstance* %call21 to %struct._GtkBin*
  %call22 = call %struct._GtkWidget* @gtk_bin_get_child(%struct._GtkBin* %25)
  %26 = bitcast %struct._GtkWidget* %call22 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %26, %struct._GTypeInstance** %__inst19, align 8
  %call25 = call i64 @gtk_label_get_type() #6
  store i64 %call25, i64* %__t24, align 8
  %27 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst19, align 8
  %tobool28 = icmp ne %struct._GTypeInstance* %27, null
  br i1 %tobool28, label %if.else.30, label %if.then.29

if.then.29:                                       ; preds = %for.body
  store i32 0, i32* %__r27, align 4
  br label %if.end.41

if.else.30:                                       ; preds = %for.body
  %28 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst19, align 8
  %g_class31 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %28, i32 0, i32 0
  %29 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class31, align 8
  %tobool32 = icmp ne %struct._GTypeClass* %29, null
  br i1 %tobool32, label %land.lhs.true.33, label %if.else.38

land.lhs.true.33:                                 ; preds = %if.else.30
  %30 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst19, align 8
  %g_class34 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %30, i32 0, i32 0
  %31 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class34, align 8
  %g_type35 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %31, i32 0, i32 0
  %32 = load i64, i64* %g_type35, align 8
  %33 = load i64, i64* %__t24, align 8
  %cmp36 = icmp eq i64 %32, %33
  br i1 %cmp36, label %if.then.37, label %if.else.38

if.then.37:                                       ; preds = %land.lhs.true.33
  store i32 1, i32* %__r27, align 4
  br label %if.end.40

if.else.38:                                       ; preds = %land.lhs.true.33, %if.else.30
  %34 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst19, align 8
  %35 = load i64, i64* %__t24, align 8
  %call39 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %34, i64 %35) #5
  store i32 %call39, i32* %__r27, align 4
  br label %if.end.40

if.end.40:                                        ; preds = %if.else.38, %if.then.37
  br label %if.end.41

if.end.41:                                        ; preds = %if.end.40, %if.then.29
  %36 = load i32, i32* %__r27, align 4
  store i32 %36, i32* %tmp42
  %37 = load i32, i32* %tmp42
  %tobool43 = icmp ne i32 %37, 0
  br i1 %tobool43, label %land.lhs.true.44, label %if.end.49

land.lhs.true.44:                                 ; preds = %if.end.41
  %38 = load %struct._GtkWidget*, %struct._GtkWidget** %menu_item, align 8
  %39 = bitcast %struct._GtkWidget* %38 to %struct._GTypeInstance*
  %call45 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %39, i64 80)
  %40 = bitcast %struct._GTypeInstance* %call45 to %struct._GObject*
  %call46 = call i8* @g_object_get_data(%struct._GObject* %40, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0))
  %41 = load i8*, i8** %item_data.addr, align 8
  %cmp47 = icmp eq i8* %call46, %41
  br i1 %cmp47, label %if.then.48, label %if.end.49

if.then.48:                                       ; preds = %land.lhs.true.44
  br label %for.end

if.end.49:                                        ; preds = %land.lhs.true.44, %if.end.41
  %42 = load i32, i32* %history, align 4
  %inc = add nsw i32 %42, 1
  store i32 %inc, i32* %history, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end.49
  %43 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool50 = icmp ne %struct._GList* %43, null
  br i1 %tobool50, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.inc
  %44 = load %struct._GList*, %struct._GList** %list, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %44, i32 0, i32 1
  %45 = load %struct._GList*, %struct._GList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.inc
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GList* [ %45, %cond.true ], [ null, %cond.false ]
  store %struct._GList* %cond, %struct._GList** %list, align 8
  br label %for.cond

for.end:                                          ; preds = %if.then.48, %for.cond
  %46 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool51 = icmp ne %struct._GList* %46, null
  br i1 %tobool51, label %if.then.52, label %if.end.53

if.then.52:                                       ; preds = %for.end
  %47 = load %struct._GtkOptionMenu*, %struct._GtkOptionMenu** %option_menu.addr, align 8
  %48 = load i32, i32* %history, align 4
  call void @gtk_option_menu_set_history(%struct._GtkOptionMenu* %47, i32 %48)
  br label %if.end.53

if.end.53:                                        ; preds = %if.then.52, %for.end
  %49 = load %struct._GList*, %struct._GList** %children, align 8
  call void @g_list_free(%struct._GList* %49)
  br label %return

return:                                           ; preds = %if.end.53, %if.else.9
  ret void
}

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #3

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

declare %struct._GList* @gtk_container_get_children(%struct._GtkContainer*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_container_get_type() #4

; Function Attrs: nounwind readnone
declare i64 @gtk_widget_get_type() #4

declare %struct._GtkWidget* @gtk_bin_get_child(%struct._GtkBin*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_bin_get_type() #4

; Function Attrs: nounwind readnone
declare i64 @gtk_label_get_type() #4

declare i8* @g_object_get_data(%struct._GObject*, i8*) #1

declare void @g_list_free(%struct._GList*) #1

; Function Attrs: nounwind uwtable
define void @gimp_int_option_menu_set_history(%struct._GtkOptionMenu* %option_menu, i32 %item_data) #0 {
entry:
  %option_menu.addr = alloca %struct._GtkOptionMenu*, align 8
  %item_data.addr = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GtkOptionMenu* %option_menu, %struct._GtkOptionMenu** %option_menu.addr, align 8
  store i32 %item_data, i32* %item_data.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GtkOptionMenu*, %struct._GtkOptionMenu** %option_menu.addr, align 8
  %1 = bitcast %struct._GtkOptionMenu* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gtk_option_menu_get_type() #6
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #5
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__func__.gimp_int_option_menu_set_history, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GtkOptionMenu*, %struct._GtkOptionMenu** %option_menu.addr, align 8
  %14 = load i32, i32* %item_data.addr, align 4
  %conv = sext i32 %14 to i64
  %15 = inttoptr i64 %conv to i8*
  call void @gimp_option_menu_set_history(%struct._GtkOptionMenu* %13, i8* %15)
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_option_menu_set_sensitive(%struct._GtkOptionMenu* %option_menu, i32 (i8*, i8*)* %callback, i8* %callback_data) #0 {
entry:
  %option_menu.addr = alloca %struct._GtkOptionMenu*, align 8
  %callback.addr = alloca i32 (i8*, i8*)*, align 8
  %callback_data.addr = alloca i8*, align 8
  %children = alloca %struct._GList*, align 8
  %list = alloca %struct._GList*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %menu_item = alloca %struct._GtkWidget*, align 8
  %__inst25 = alloca %struct._GTypeInstance*, align 8
  %__t30 = alloca i64, align 8
  %__r33 = alloca i32, align 4
  %tmp48 = alloca i32, align 4
  %item_data = alloca i8*, align 8
  %sensitive = alloca i32, align 4
  store %struct._GtkOptionMenu* %option_menu, %struct._GtkOptionMenu** %option_menu.addr, align 8
  store i32 (i8*, i8*)* %callback, i32 (i8*, i8*)** %callback.addr, align 8
  store i8* %callback_data, i8** %callback_data.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GtkOptionMenu*, %struct._GtkOptionMenu** %option_menu.addr, align 8
  %1 = bitcast %struct._GtkOptionMenu* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gtk_option_menu_get_type() #6
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #5
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.gimp_option_menu_set_sensitive, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %callback.addr, align 8
  %cmp12 = icmp ne i32 (i8*, i8*)* %13, null
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %do.body.11
  br label %if.end.15

if.else.14:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.gimp_option_menu_set_sensitive, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i32 0, i32 0))
  br label %return

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  %14 = load %struct._GtkOptionMenu*, %struct._GtkOptionMenu** %option_menu.addr, align 8
  %menu = getelementptr inbounds %struct._GtkOptionMenu, %struct._GtkOptionMenu* %14, i32 0, i32 1
  %15 = load %struct._GtkWidget*, %struct._GtkWidget** %menu, align 8
  %16 = bitcast %struct._GtkWidget* %15 to %struct._GTypeInstance*
  %call17 = call i64 @gtk_container_get_type() #6
  %call18 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %16, i64 %call17)
  %17 = bitcast %struct._GTypeInstance* %call18 to %struct._GtkContainer*
  %call19 = call %struct._GList* @gtk_container_get_children(%struct._GtkContainer* %17)
  store %struct._GList* %call19, %struct._GList** %children, align 8
  %18 = load %struct._GList*, %struct._GList** %children, align 8
  store %struct._GList* %18, %struct._GList** %list, align 8
  br label %for.cond

for.cond:                                         ; preds = %cond.end, %do.end.16
  %19 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool20 = icmp ne %struct._GList* %19, null
  br i1 %tobool20, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %20 = load %struct._GList*, %struct._GList** %list, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %20, i32 0, i32 0
  %21 = load i8*, i8** %data, align 8
  %22 = bitcast i8* %21 to %struct._GTypeInstance*
  %call22 = call i64 @gtk_widget_get_type() #6
  %call23 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %22, i64 %call22)
  %23 = bitcast %struct._GTypeInstance* %call23 to %struct._GtkWidget*
  store %struct._GtkWidget* %23, %struct._GtkWidget** %menu_item, align 8
  %24 = load %struct._GtkWidget*, %struct._GtkWidget** %menu_item, align 8
  %25 = bitcast %struct._GtkWidget* %24 to %struct._GTypeInstance*
  %call26 = call i64 @gtk_bin_get_type() #6
  %call27 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %25, i64 %call26)
  %26 = bitcast %struct._GTypeInstance* %call27 to %struct._GtkBin*
  %call28 = call %struct._GtkWidget* @gtk_bin_get_child(%struct._GtkBin* %26)
  %27 = bitcast %struct._GtkWidget* %call28 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %27, %struct._GTypeInstance** %__inst25, align 8
  %call31 = call i64 @gtk_label_get_type() #6
  store i64 %call31, i64* %__t30, align 8
  %28 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst25, align 8
  %tobool34 = icmp ne %struct._GTypeInstance* %28, null
  br i1 %tobool34, label %if.else.36, label %if.then.35

if.then.35:                                       ; preds = %for.body
  store i32 0, i32* %__r33, align 4
  br label %if.end.47

if.else.36:                                       ; preds = %for.body
  %29 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst25, align 8
  %g_class37 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %29, i32 0, i32 0
  %30 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class37, align 8
  %tobool38 = icmp ne %struct._GTypeClass* %30, null
  br i1 %tobool38, label %land.lhs.true.39, label %if.else.44

land.lhs.true.39:                                 ; preds = %if.else.36
  %31 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst25, align 8
  %g_class40 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %31, i32 0, i32 0
  %32 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class40, align 8
  %g_type41 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %32, i32 0, i32 0
  %33 = load i64, i64* %g_type41, align 8
  %34 = load i64, i64* %__t30, align 8
  %cmp42 = icmp eq i64 %33, %34
  br i1 %cmp42, label %if.then.43, label %if.else.44

if.then.43:                                       ; preds = %land.lhs.true.39
  store i32 1, i32* %__r33, align 4
  br label %if.end.46

if.else.44:                                       ; preds = %land.lhs.true.39, %if.else.36
  %35 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst25, align 8
  %36 = load i64, i64* %__t30, align 8
  %call45 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %35, i64 %36) #5
  store i32 %call45, i32* %__r33, align 4
  br label %if.end.46

if.end.46:                                        ; preds = %if.else.44, %if.then.43
  br label %if.end.47

if.end.47:                                        ; preds = %if.end.46, %if.then.35
  %37 = load i32, i32* %__r33, align 4
  store i32 %37, i32* %tmp48
  %38 = load i32, i32* %tmp48
  %tobool49 = icmp ne i32 %38, 0
  br i1 %tobool49, label %if.then.50, label %if.end.56

if.then.50:                                       ; preds = %if.end.47
  %39 = load %struct._GtkWidget*, %struct._GtkWidget** %menu_item, align 8
  %40 = bitcast %struct._GtkWidget* %39 to %struct._GTypeInstance*
  %call53 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %40, i64 80)
  %41 = bitcast %struct._GTypeInstance* %call53 to %struct._GObject*
  %call54 = call i8* @g_object_get_data(%struct._GObject* %41, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0))
  store i8* %call54, i8** %item_data, align 8
  %42 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %callback.addr, align 8
  %43 = load i8*, i8** %item_data, align 8
  %44 = load i8*, i8** %callback_data.addr, align 8
  %call55 = call i32 %42(i8* %43, i8* %44)
  store i32 %call55, i32* %sensitive, align 4
  %45 = load %struct._GtkWidget*, %struct._GtkWidget** %menu_item, align 8
  %46 = load i32, i32* %sensitive, align 4
  call void @gtk_widget_set_sensitive(%struct._GtkWidget* %45, i32 %46)
  br label %if.end.56

if.end.56:                                        ; preds = %if.then.50, %if.end.47
  br label %for.inc

for.inc:                                          ; preds = %if.end.56
  %47 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool57 = icmp ne %struct._GList* %47, null
  br i1 %tobool57, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.inc
  %48 = load %struct._GList*, %struct._GList** %list, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %48, i32 0, i32 1
  %49 = load %struct._GList*, %struct._GList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.inc
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GList* [ %49, %cond.true ], [ null, %cond.false ]
  store %struct._GList* %cond, %struct._GList** %list, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %50 = load %struct._GList*, %struct._GList** %children, align 8
  call void @g_list_free(%struct._GList* %50)
  br label %return

return:                                           ; preds = %for.end, %if.else.14, %if.else.9
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_int_option_menu_set_sensitive(%struct._GtkOptionMenu* %option_menu, i32 (i32, i8*)* %callback, i8* %callback_data) #0 {
entry:
  %option_menu.addr = alloca %struct._GtkOptionMenu*, align 8
  %callback.addr = alloca i32 (i32, i8*)*, align 8
  %callback_data.addr = alloca i8*, align 8
  %children = alloca %struct._GList*, align 8
  %list = alloca %struct._GList*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %menu_item = alloca %struct._GtkWidget*, align 8
  %__inst25 = alloca %struct._GTypeInstance*, align 8
  %__t30 = alloca i64, align 8
  %__r33 = alloca i32, align 4
  %tmp48 = alloca i32, align 4
  %item_data = alloca i32, align 4
  %sensitive = alloca i32, align 4
  store %struct._GtkOptionMenu* %option_menu, %struct._GtkOptionMenu** %option_menu.addr, align 8
  store i32 (i32, i8*)* %callback, i32 (i32, i8*)** %callback.addr, align 8
  store i8* %callback_data, i8** %callback_data.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GtkOptionMenu*, %struct._GtkOptionMenu** %option_menu.addr, align 8
  %1 = bitcast %struct._GtkOptionMenu* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gtk_option_menu_get_type() #6
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #5
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__func__.gimp_int_option_menu_set_sensitive, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load i32 (i32, i8*)*, i32 (i32, i8*)** %callback.addr, align 8
  %cmp12 = icmp ne i32 (i32, i8*)* %13, null
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %do.body.11
  br label %if.end.15

if.else.14:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__func__.gimp_int_option_menu_set_sensitive, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i32 0, i32 0))
  br label %return

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  %14 = load %struct._GtkOptionMenu*, %struct._GtkOptionMenu** %option_menu.addr, align 8
  %menu = getelementptr inbounds %struct._GtkOptionMenu, %struct._GtkOptionMenu* %14, i32 0, i32 1
  %15 = load %struct._GtkWidget*, %struct._GtkWidget** %menu, align 8
  %16 = bitcast %struct._GtkWidget* %15 to %struct._GTypeInstance*
  %call17 = call i64 @gtk_container_get_type() #6
  %call18 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %16, i64 %call17)
  %17 = bitcast %struct._GTypeInstance* %call18 to %struct._GtkContainer*
  %call19 = call %struct._GList* @gtk_container_get_children(%struct._GtkContainer* %17)
  store %struct._GList* %call19, %struct._GList** %children, align 8
  %18 = load %struct._GList*, %struct._GList** %children, align 8
  store %struct._GList* %18, %struct._GList** %list, align 8
  br label %for.cond

for.cond:                                         ; preds = %cond.end, %do.end.16
  %19 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool20 = icmp ne %struct._GList* %19, null
  br i1 %tobool20, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %20 = load %struct._GList*, %struct._GList** %list, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %20, i32 0, i32 0
  %21 = load i8*, i8** %data, align 8
  %22 = bitcast i8* %21 to %struct._GTypeInstance*
  %call22 = call i64 @gtk_widget_get_type() #6
  %call23 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %22, i64 %call22)
  %23 = bitcast %struct._GTypeInstance* %call23 to %struct._GtkWidget*
  store %struct._GtkWidget* %23, %struct._GtkWidget** %menu_item, align 8
  %24 = load %struct._GtkWidget*, %struct._GtkWidget** %menu_item, align 8
  %25 = bitcast %struct._GtkWidget* %24 to %struct._GTypeInstance*
  %call26 = call i64 @gtk_bin_get_type() #6
  %call27 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %25, i64 %call26)
  %26 = bitcast %struct._GTypeInstance* %call27 to %struct._GtkBin*
  %call28 = call %struct._GtkWidget* @gtk_bin_get_child(%struct._GtkBin* %26)
  %27 = bitcast %struct._GtkWidget* %call28 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %27, %struct._GTypeInstance** %__inst25, align 8
  %call31 = call i64 @gtk_label_get_type() #6
  store i64 %call31, i64* %__t30, align 8
  %28 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst25, align 8
  %tobool34 = icmp ne %struct._GTypeInstance* %28, null
  br i1 %tobool34, label %if.else.36, label %if.then.35

if.then.35:                                       ; preds = %for.body
  store i32 0, i32* %__r33, align 4
  br label %if.end.47

if.else.36:                                       ; preds = %for.body
  %29 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst25, align 8
  %g_class37 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %29, i32 0, i32 0
  %30 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class37, align 8
  %tobool38 = icmp ne %struct._GTypeClass* %30, null
  br i1 %tobool38, label %land.lhs.true.39, label %if.else.44

land.lhs.true.39:                                 ; preds = %if.else.36
  %31 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst25, align 8
  %g_class40 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %31, i32 0, i32 0
  %32 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class40, align 8
  %g_type41 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %32, i32 0, i32 0
  %33 = load i64, i64* %g_type41, align 8
  %34 = load i64, i64* %__t30, align 8
  %cmp42 = icmp eq i64 %33, %34
  br i1 %cmp42, label %if.then.43, label %if.else.44

if.then.43:                                       ; preds = %land.lhs.true.39
  store i32 1, i32* %__r33, align 4
  br label %if.end.46

if.else.44:                                       ; preds = %land.lhs.true.39, %if.else.36
  %35 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst25, align 8
  %36 = load i64, i64* %__t30, align 8
  %call45 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %35, i64 %36) #5
  store i32 %call45, i32* %__r33, align 4
  br label %if.end.46

if.end.46:                                        ; preds = %if.else.44, %if.then.43
  br label %if.end.47

if.end.47:                                        ; preds = %if.end.46, %if.then.35
  %37 = load i32, i32* %__r33, align 4
  store i32 %37, i32* %tmp48
  %38 = load i32, i32* %tmp48
  %tobool49 = icmp ne i32 %38, 0
  br i1 %tobool49, label %if.then.50, label %if.end.56

if.then.50:                                       ; preds = %if.end.47
  %39 = load %struct._GtkWidget*, %struct._GtkWidget** %menu_item, align 8
  %40 = bitcast %struct._GtkWidget* %39 to %struct._GTypeInstance*
  %call53 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %40, i64 80)
  %41 = bitcast %struct._GTypeInstance* %call53 to %struct._GObject*
  %call54 = call i8* @g_object_get_data(%struct._GObject* %41, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0))
  %42 = ptrtoint i8* %call54 to i64
  %conv = trunc i64 %42 to i32
  store i32 %conv, i32* %item_data, align 4
  %43 = load i32 (i32, i8*)*, i32 (i32, i8*)** %callback.addr, align 8
  %44 = load i32, i32* %item_data, align 4
  %45 = load i8*, i8** %callback_data.addr, align 8
  %call55 = call i32 %43(i32 %44, i8* %45)
  store i32 %call55, i32* %sensitive, align 4
  %46 = load %struct._GtkWidget*, %struct._GtkWidget** %menu_item, align 8
  %47 = load i32, i32* %sensitive, align 4
  call void @gtk_widget_set_sensitive(%struct._GtkWidget* %46, i32 %47)
  br label %if.end.56

if.end.56:                                        ; preds = %if.then.50, %if.end.47
  br label %for.inc

for.inc:                                          ; preds = %if.end.56
  %48 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool57 = icmp ne %struct._GList* %48, null
  br i1 %tobool57, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.inc
  %49 = load %struct._GList*, %struct._GList** %list, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %49, i32 0, i32 1
  %50 = load %struct._GList*, %struct._GList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.inc
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GList* [ %50, %cond.true ], [ null, %cond.false ]
  store %struct._GList* %cond, %struct._GList** %list, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %51 = load %struct._GList*, %struct._GList** %children, align 8
  call void @g_list_free(%struct._GList* %51)
  br label %return

return:                                           ; preds = %for.end, %if.else.14, %if.else.9
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_menu_item_update(%struct._GtkWidget* %widget, i8* %data) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %data.addr = alloca i8*, align 8
  %item_val = alloca i32*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = bitcast i8* %0 to i32*
  store i32* %1, i32** %item_val, align 8
  %2 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %3 = bitcast %struct._GtkWidget* %2 to %struct._GTypeInstance*
  %call = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %3, i64 80)
  %4 = bitcast %struct._GTypeInstance* %call to %struct._GObject*
  %call1 = call i8* @g_object_get_data(%struct._GObject* %4, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0))
  %5 = ptrtoint i8* %call1 to i64
  %conv = trunc i64 %5 to i32
  %6 = load i32*, i32** %item_val, align 8
  store i32 %conv, i32* %6, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define %struct._GtkWidget* @gimp_pixmap_button_new(i8** %xpm_data, i8* %text) #0 {
entry:
  %xpm_data.addr = alloca i8**, align 8
  %text.addr = alloca i8*, align 8
  %button = alloca %struct._GtkWidget*, align 8
  %pixmap = alloca %struct._GtkWidget*, align 8
  %abox = alloca %struct._GtkWidget*, align 8
  %hbox = alloca %struct._GtkWidget*, align 8
  %label = alloca %struct._GtkWidget*, align 8
  store i8** %xpm_data, i8*** %xpm_data.addr, align 8
  store i8* %text, i8** %text.addr, align 8
  %call = call %struct._GtkWidget* @gtk_button_new()
  store %struct._GtkWidget* %call, %struct._GtkWidget** %button, align 8
  %0 = load i8**, i8*** %xpm_data.addr, align 8
  %call1 = call %struct._GtkWidget* @gimp_pixmap_new(i8** %0)
  store %struct._GtkWidget* %call1, %struct._GtkWidget** %pixmap, align 8
  %1 = load i8*, i8** %text.addr, align 8
  %tobool = icmp ne i8* %1, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call2 = call %struct._GtkWidget* @gtk_alignment_new(float 5.000000e-01, float 5.000000e-01, float 0.000000e+00, float 0.000000e+00)
  store %struct._GtkWidget* %call2, %struct._GtkWidget** %abox, align 8
  %2 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %3 = bitcast %struct._GtkWidget* %2 to %struct._GTypeInstance*
  %call3 = call i64 @gtk_container_get_type() #6
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %3, i64 %call3)
  %4 = bitcast %struct._GTypeInstance* %call4 to %struct._GtkContainer*
  %5 = load %struct._GtkWidget*, %struct._GtkWidget** %abox, align 8
  call void @gtk_container_add(%struct._GtkContainer* %4, %struct._GtkWidget* %5)
  %6 = load %struct._GtkWidget*, %struct._GtkWidget** %abox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %6)
  %call5 = call %struct._GtkWidget* @gtk_box_new(i32 0, i32 0)
  store %struct._GtkWidget* %call5, %struct._GtkWidget** %hbox, align 8
  %7 = load %struct._GtkWidget*, %struct._GtkWidget** %abox, align 8
  %8 = bitcast %struct._GtkWidget* %7 to %struct._GTypeInstance*
  %call6 = call i64 @gtk_container_get_type() #6
  %call7 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %8, i64 %call6)
  %9 = bitcast %struct._GTypeInstance* %call7 to %struct._GtkContainer*
  %10 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_container_add(%struct._GtkContainer* %9, %struct._GtkWidget* %10)
  %11 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %11)
  %12 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %13 = bitcast %struct._GtkWidget* %12 to %struct._GTypeInstance*
  %call8 = call i64 @gtk_box_get_type() #6
  %call9 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %13, i64 %call8)
  %14 = bitcast %struct._GTypeInstance* %call9 to %struct._GtkBox*
  %15 = load %struct._GtkWidget*, %struct._GtkWidget** %pixmap, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %14, %struct._GtkWidget* %15, i32 0, i32 0, i32 4)
  %16 = load %struct._GtkWidget*, %struct._GtkWidget** %pixmap, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %16)
  %17 = load i8*, i8** %text.addr, align 8
  %call10 = call %struct._GtkWidget* @gtk_label_new_with_mnemonic(i8* %17)
  store %struct._GtkWidget* %call10, %struct._GtkWidget** %label, align 8
  %18 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  %19 = bitcast %struct._GtkWidget* %18 to %struct._GTypeInstance*
  %call11 = call i64 @gtk_label_get_type() #6
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %19, i64 %call11)
  %20 = bitcast %struct._GTypeInstance* %call12 to %struct._GtkLabel*
  %21 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_label_set_mnemonic_widget(%struct._GtkLabel* %20, %struct._GtkWidget* %21)
  %22 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %23 = bitcast %struct._GtkWidget* %22 to %struct._GTypeInstance*
  %call13 = call i64 @gtk_box_get_type() #6
  %call14 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %23, i64 %call13)
  %24 = bitcast %struct._GTypeInstance* %call14 to %struct._GtkBox*
  %25 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %24, %struct._GtkWidget* %25, i32 0, i32 0, i32 4)
  %26 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %26)
  br label %if.end

if.else:                                          ; preds = %entry
  %27 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %28 = bitcast %struct._GtkWidget* %27 to %struct._GTypeInstance*
  %call15 = call i64 @gtk_container_get_type() #6
  %call16 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %28, i64 %call15)
  %29 = bitcast %struct._GTypeInstance* %call16 to %struct._GtkContainer*
  %30 = load %struct._GtkWidget*, %struct._GtkWidget** %pixmap, align 8
  call void @gtk_container_add(%struct._GtkContainer* %29, %struct._GtkWidget* %30)
  %31 = load %struct._GtkWidget*, %struct._GtkWidget** %pixmap, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %31)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %32 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  ret %struct._GtkWidget* %32
}

declare %struct._GtkWidget* @gtk_button_new() #1

declare %struct._GtkWidget* @gimp_pixmap_new(i8**) #1

declare %struct._GtkWidget* @gtk_alignment_new(float, float, float, float) #1

declare void @gtk_container_add(%struct._GtkContainer*, %struct._GtkWidget*) #1

declare %struct._GtkWidget* @gtk_box_new(i32, i32) #1

declare void @gtk_box_pack_start(%struct._GtkBox*, %struct._GtkWidget*, i32, i32, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_box_get_type() #4

declare %struct._GtkWidget* @gtk_label_new_with_mnemonic(i8*) #1

declare void @gtk_label_set_mnemonic_widget(%struct._GtkLabel*, %struct._GtkWidget*) #1

; Function Attrs: nounwind uwtable
define void @gimp_unit_menu_update(%struct._GtkWidget* %widget, i8* %data) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %data.addr = alloca i8*, align 8
  %val = alloca i32*, align 8
  %spinbutton = alloca %struct._GtkWidget*, align 8
  %digits = alloca i32, align 4
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = bitcast i8* %0 to i32*
  store i32* %1, i32** %val, align 8
  %2 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %3 = bitcast %struct._GtkWidget* %2 to %struct._GTypeInstance*
  %call = call i64 @gimp_unit_menu_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %3, i64 %call)
  %4 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpUnitMenu*
  %call2 = call i32 @gimp_unit_menu_get_unit(%struct._GimpUnitMenu* %4)
  %5 = load i32*, i32** %val, align 8
  store i32 %call2, i32* %5, align 4
  %6 = load i32*, i32** %val, align 8
  %7 = load i32, i32* %6, align 4
  %cmp = icmp eq i32 %7, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end.25

cond.false:                                       ; preds = %entry
  %8 = load i32*, i32** %val, align 8
  %9 = load i32, i32* %8, align 4
  %cmp3 = icmp eq i32 %9, 65536
  br i1 %cmp3, label %cond.true.4, label %cond.false.5

cond.true.4:                                      ; preds = %cond.false
  br label %cond.end.23

cond.false.5:                                     ; preds = %cond.false
  %10 = load i32*, i32** %val, align 8
  %11 = load i32, i32* %10, align 4
  %call6 = call i32 @gimp_unit_get_digits(i32 %11)
  %cmp7 = icmp sgt i32 3, %call6
  br i1 %cmp7, label %cond.true.8, label %cond.false.9

cond.true.8:                                      ; preds = %cond.false.5
  br label %cond.end

cond.false.9:                                     ; preds = %cond.false.5
  %12 = load i32*, i32** %val, align 8
  %13 = load i32, i32* %12, align 4
  %call10 = call i32 @gimp_unit_get_digits(i32 %13)
  br label %cond.end

cond.end:                                         ; preds = %cond.false.9, %cond.true.8
  %cond = phi i32 [ 3, %cond.true.8 ], [ %call10, %cond.false.9 ]
  %cmp11 = icmp slt i32 6, %cond
  br i1 %cmp11, label %cond.true.12, label %cond.false.13

cond.true.12:                                     ; preds = %cond.end
  br label %cond.end.21

cond.false.13:                                    ; preds = %cond.end
  %14 = load i32*, i32** %val, align 8
  %15 = load i32, i32* %14, align 4
  %call14 = call i32 @gimp_unit_get_digits(i32 %15)
  %cmp15 = icmp sgt i32 3, %call14
  br i1 %cmp15, label %cond.true.16, label %cond.false.17

cond.true.16:                                     ; preds = %cond.false.13
  br label %cond.end.19

cond.false.17:                                    ; preds = %cond.false.13
  %16 = load i32*, i32** %val, align 8
  %17 = load i32, i32* %16, align 4
  %call18 = call i32 @gimp_unit_get_digits(i32 %17)
  br label %cond.end.19

cond.end.19:                                      ; preds = %cond.false.17, %cond.true.16
  %cond20 = phi i32 [ 3, %cond.true.16 ], [ %call18, %cond.false.17 ]
  br label %cond.end.21

cond.end.21:                                      ; preds = %cond.end.19, %cond.true.12
  %cond22 = phi i32 [ 6, %cond.true.12 ], [ %cond20, %cond.end.19 ]
  br label %cond.end.23

cond.end.23:                                      ; preds = %cond.end.21, %cond.true.4
  %cond24 = phi i32 [ 2, %cond.true.4 ], [ %cond22, %cond.end.21 ]
  br label %cond.end.25

cond.end.25:                                      ; preds = %cond.end.23, %cond.true
  %cond26 = phi i32 [ 0, %cond.true ], [ %cond24, %cond.end.23 ]
  store i32 %cond26, i32* %digits, align 4
  %18 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %19 = bitcast %struct._GtkWidget* %18 to %struct._GTypeInstance*
  %call27 = call i64 @gimp_unit_menu_get_type() #6
  %call28 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %19, i64 %call27)
  %20 = bitcast %struct._GTypeInstance* %call28 to %struct._GimpUnitMenu*
  %call29 = call i32 @gimp_unit_menu_get_pixel_digits(%struct._GimpUnitMenu* %20)
  %21 = load i32, i32* %digits, align 4
  %add = add nsw i32 %21, %call29
  store i32 %add, i32* %digits, align 4
  %22 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %23 = bitcast %struct._GtkWidget* %22 to %struct._GTypeInstance*
  %call30 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %23, i64 80)
  %24 = bitcast %struct._GTypeInstance* %call30 to %struct._GObject*
  %call31 = call i8* @g_object_get_data(%struct._GObject* %24, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i32 0, i32 0))
  %25 = bitcast i8* %call31 to %struct._GtkWidget*
  store %struct._GtkWidget* %25, %struct._GtkWidget** %spinbutton, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %cond.end.25
  %26 = load %struct._GtkWidget*, %struct._GtkWidget** %spinbutton, align 8
  %tobool = icmp ne %struct._GtkWidget* %26, null
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %27 = load %struct._GtkWidget*, %struct._GtkWidget** %spinbutton, align 8
  %28 = bitcast %struct._GtkWidget* %27 to %struct._GTypeInstance*
  %call32 = call i64 @gtk_spin_button_get_type() #6
  %call33 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %28, i64 %call32)
  %29 = bitcast %struct._GTypeInstance* %call33 to %struct._GtkSpinButton*
  %30 = load i32, i32* %digits, align 4
  call void @gtk_spin_button_set_digits(%struct._GtkSpinButton* %29, i32 %30)
  %31 = load %struct._GtkWidget*, %struct._GtkWidget** %spinbutton, align 8
  %32 = bitcast %struct._GtkWidget* %31 to %struct._GTypeInstance*
  %call34 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %32, i64 80)
  %33 = bitcast %struct._GTypeInstance* %call34 to %struct._GObject*
  %call35 = call i8* @g_object_get_data(%struct._GObject* %33, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i32 0, i32 0))
  %34 = bitcast i8* %call35 to %struct._GtkWidget*
  store %struct._GtkWidget* %34, %struct._GtkWidget** %spinbutton, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

declare i32 @gimp_unit_menu_get_unit(%struct._GimpUnitMenu*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_unit_menu_get_type() #4

declare i32 @gimp_unit_get_digits(i32) #1

declare i32 @gimp_unit_menu_get_pixel_digits(%struct._GimpUnitMenu*) #1

declare void @gtk_spin_button_set_digits(%struct._GtkSpinButton*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_spin_button_get_type() #4

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly }
attributes #6 = { nounwind readnone }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
