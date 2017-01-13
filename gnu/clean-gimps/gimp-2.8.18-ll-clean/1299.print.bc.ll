; ModuleID = './plug-ins/print/print.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GimpPlugInInfo = type { void ()*, void ()*, void ()*, void (i8*, i32, %struct._GimpParam*, i32*, %struct._GimpParam**)* }
%struct._GimpParam = type { i32, %union._GimpParamData }
%union._GimpParamData = type { %struct._GimpRGB }
%struct._GimpRGB = type { double, double, double, double }
%struct._GimpParamDef = type { i32, i8*, i8* }
%struct._GError = type { i32, i32, i8* }
%struct._GtkPrintOperation = type { %struct._GObject, %struct._GtkPrintOperationPrivate* }
%struct._GObject = type { %struct._GTypeInstance, i32, %struct._GData* }
%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GData = type opaque
%struct._GtkPrintOperationPrivate = type opaque
%struct.PrintData = type { i32, i32, i32, double, double, i32, double, double, i32, i32, i32, %struct._GtkPrintOperation* }
%struct._GClosure = type { i32, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i8*, %struct._GClosureNotifyData* }
%struct._GValue = type { i64, [2 x %union.anon] }
%union.anon = type { i64 }
%struct._GClosureNotifyData = type { i8*, {}* }
%struct._GtkWindow = type <{ %struct._GtkBin, i8*, i8*, i8*, i8*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWindow*, %struct._GtkWindowGeometryInfo*, %struct._GdkDrawable*, %struct._GtkWindowGroup*, i16, i32, [2 x i8], i32, i32, i32, i32, i32, i32, %struct._GdkScreen* }>
%struct._GtkBin = type { %struct._GtkContainer, %struct._GtkWidget* }
%struct._GtkContainer = type { %struct._GtkWidget, %struct._GtkWidget*, i24 }
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
%struct._GtkWindowGeometryInfo = type opaque
%struct._GdkDrawable = type { %struct._GObject }
%struct._GtkWindowGroup = type { %struct._GObject, %struct._GSList* }
%struct._GdkScreen = type { %struct._GObject, i8, [32 x %struct._GdkGC*], [32 x %struct._GdkGC*], [32 x %struct._GdkGC*], %struct._cairo_font_options*, double }
%struct._cairo_font_options = type opaque
%struct._GtkMessageDialog = type { %struct._GtkDialog, %struct._GtkWidget*, %struct._GtkWidget* }
%struct._GtkDialog = type { %struct._GtkWindow, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget* }
%struct._GtkPrintContext = type opaque

@PLUG_IN_INFO = constant %struct._GimpPlugInInfo { void ()* null, void ()* null, void ()* @query, void (i8*, i32, %struct._GimpParam*, i32*, %struct._GimpParam**)* @run }, align 8
@query.print_args = internal constant [2 x %struct._GimpParamDef] [%struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i32 0, i32 0) }, %struct._GimpParamDef { i32 13, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i32 0, i32 0) }], align 16
@.str = private unnamed_addr constant [9 x i8] c"run-mode\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"The run mode { RUN-INTERACTIVE (0) }\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"image\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"Image to print\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"file-print-gtk\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"Print the image\00", align 1
@.str.6 = private unnamed_addr constant [42 x i8] c"Print the image using the GTK+ Print API.\00", align 1
@.str.7 = private unnamed_addr constant [42 x i8] c"Bill Skaggs, Sven Neumann, Stefan R\C3\B6llin\00", align 1
@.str.8 = private unnamed_addr constant [43 x i8] c"Bill Skaggs <weskaggs@primate.ucdavis.edu>\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"2006 - 2008\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"_Print...\00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@.str.12 = private unnamed_addr constant [18 x i8] c"<Image>/File/Send\00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"gtk-print\00", align 1
@run.values = internal global [2 x %struct._GimpParam] zeroinitializer, align 16
@.str.14 = private unnamed_addr constant [20 x i8] c"gimp20-std-plug-ins\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"UTF-8\00", align 1
@.str.16 = private unnamed_addr constant [12 x i8] c"begin-print\00", align 1
@.str.17 = private unnamed_addr constant [10 x i8] c"draw-page\00", align 1
@.str.18 = private unnamed_addr constant [10 x i8] c"end-print\00", align 1
@.str.19 = private unnamed_addr constant [6 x i8] c"print\00", align 1
@.str.20 = private unnamed_addr constant [21 x i8] c"create-custom-widget\00", align 1
@.str.21 = private unnamed_addr constant [15 x i8] c"Image Settings\00", align 1
@.str.22 = private unnamed_addr constant [9 x i8] c"Printing\00", align 1
@.str.23 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.24 = private unnamed_addr constant [41 x i8] c"An error occurred while trying to print:\00", align 1

; Function Attrs: nounwind uwtable
define internal void @query() #0 {
entry:
  call void @gimp_install_procedure(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i32 0, i32 0), i32 1, i32 2, i32 0, %struct._GimpParamDef* getelementptr inbounds ([2 x %struct._GimpParamDef], [2 x %struct._GimpParamDef]* @query.print_args, i32 0, i32 0), %struct._GimpParamDef* null)
  %call = call i32 @gimp_plugin_menu_register(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.12, i32 0, i32 0))
  %call1 = call i32 @gimp_plugin_icon_register(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i32 0, i32 0))
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @run(i8* %name, i32 %nparams, %struct._GimpParam* %param, i32* %nreturn_vals, %struct._GimpParam** %return_vals) #0 {
entry:
  %name.addr = alloca i8*, align 8
  %nparams.addr = alloca i32, align 4
  %param.addr = alloca %struct._GimpParam*, align 8
  %nreturn_vals.addr = alloca i32*, align 8
  %return_vals.addr = alloca %struct._GimpParam**, align 8
  %run_mode = alloca i32, align 4
  %status = alloca i32, align 4
  %image_ID = alloca i32, align 4
  %error = alloca %struct._GError*, align 8
  store i8* %name, i8** %name.addr, align 8
  store i32 %nparams, i32* %nparams.addr, align 4
  store %struct._GimpParam* %param, %struct._GimpParam** %param.addr, align 8
  store i32* %nreturn_vals, i32** %nreturn_vals.addr, align 8
  store %struct._GimpParam** %return_vals, %struct._GimpParam*** %return_vals.addr, align 8
  store %struct._GError* null, %struct._GError** %error, align 8
  %0 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %0, i64 0
  %data = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx, i32 0, i32 1
  %d_int32 = bitcast %union._GimpParamData* %data to i32*
  %1 = load i32, i32* %d_int32, align 4
  store i32 %1, i32* %run_mode, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %call = call i8* @gimp_locale_directory() #5
  %call1 = call i8* @bindtextdomain(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i32 0, i32 0), i8* %call) #6
  %call2 = call i8* @bind_textdomain_codeset(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i32 0, i32 0)) #6
  %call3 = call i8* @textdomain(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i32 0, i32 0)) #6
  br label %do.end

do.end:                                           ; preds = %do.body
  %2 = load i32*, i32** %nreturn_vals.addr, align 8
  store i32 1, i32* %2, align 4
  %3 = load %struct._GimpParam**, %struct._GimpParam*** %return_vals.addr, align 8
  store %struct._GimpParam* getelementptr inbounds ([2 x %struct._GimpParam], [2 x %struct._GimpParam]* @run.values, i32 0, i32 0), %struct._GimpParam** %3, align 8
  call void @g_thread_init(i8* null)
  store i32 21, i32* getelementptr inbounds ([2 x %struct._GimpParam], [2 x %struct._GimpParam]* @run.values, i32 0, i64 0, i32 0), align 4
  store i32 0, i32* bitcast (%union._GimpParamData* getelementptr inbounds ([2 x %struct._GimpParam], [2 x %struct._GimpParam]* @run.values, i32 0, i64 0, i32 1) to i32*), align 4
  %4 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx4 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %4, i64 1
  %data5 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx4, i32 0, i32 1
  %d_int326 = bitcast %union._GimpParamData* %data5 to i32*
  %5 = load i32, i32* %d_int326, align 4
  store i32 %5, i32* %image_ID, align 4
  %6 = load i8*, i8** %name.addr, align 8
  %call7 = call i32 @strcmp(i8* %6, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i32 0, i32 0)) #7
  %cmp = icmp eq i32 %call7, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.end
  %7 = load i32, i32* %image_ID, align 4
  %8 = load i32, i32* %run_mode, align 4
  %cmp8 = icmp eq i32 %8, 0
  %conv = zext i1 %cmp8 to i32
  %call9 = call i32 @print_image(i32 %7, i32 %conv, %struct._GError** %error)
  store i32 %call9, i32* %status, align 4
  %9 = load %struct._GError*, %struct._GError** %error, align 8
  %tobool = icmp ne %struct._GError* %9, null
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %if.then
  %10 = load i32, i32* %run_mode, align 4
  %cmp10 = icmp eq i32 %10, 0
  br i1 %cmp10, label %if.then.12, label %if.end

if.then.12:                                       ; preds = %land.lhs.true
  %11 = load %struct._GError*, %struct._GError** %error, align 8
  %message = getelementptr inbounds %struct._GError, %struct._GError* %11, i32 0, i32 2
  %12 = load i8*, i8** %message, align 8
  call void @print_show_error(i8* %12)
  br label %if.end

if.end:                                           ; preds = %if.then.12, %land.lhs.true, %if.then
  br label %if.end.13

if.else:                                          ; preds = %do.end
  store i32 1, i32* %status, align 4
  br label %if.end.13

if.end.13:                                        ; preds = %if.else, %if.end
  %13 = load i32, i32* %status, align 4
  %cmp14 = icmp ne i32 %13, 3
  br i1 %cmp14, label %land.lhs.true.16, label %if.end.20

land.lhs.true.16:                                 ; preds = %if.end.13
  %14 = load %struct._GError*, %struct._GError** %error, align 8
  %tobool17 = icmp ne %struct._GError* %14, null
  br i1 %tobool17, label %if.then.18, label %if.end.20

if.then.18:                                       ; preds = %land.lhs.true.16
  %15 = load i32*, i32** %nreturn_vals.addr, align 8
  store i32 2, i32* %15, align 4
  store i32 4, i32* getelementptr inbounds ([2 x %struct._GimpParam], [2 x %struct._GimpParam]* @run.values, i32 0, i64 1, i32 0), align 4
  %16 = load %struct._GError*, %struct._GError** %error, align 8
  %message19 = getelementptr inbounds %struct._GError, %struct._GError* %16, i32 0, i32 2
  %17 = load i8*, i8** %message19, align 8
  store i8* %17, i8** bitcast (%union._GimpParamData* getelementptr inbounds ([2 x %struct._GimpParam], [2 x %struct._GimpParam]* @run.values, i32 0, i64 1, i32 1) to i8**), align 8
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.18, %land.lhs.true.16, %if.end.13
  %18 = load i32, i32* %status, align 4
  store i32 %18, i32* bitcast (%union._GimpParamData* getelementptr inbounds ([2 x %struct._GimpParam], [2 x %struct._GimpParam]* @run.values, i32 0, i64 0, i32 1) to i32*), align 4
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  store i32 0, i32* %retval
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  %0 = load i32, i32* %argc.addr, align 4
  %1 = load i8**, i8*** %argv.addr, align 8
  %call = call i32 @gimp_main(%struct._GimpPlugInInfo* @PLUG_IN_INFO, i32 %0, i8** %1)
  ret i32 %call
}

declare i32 @gimp_main(%struct._GimpPlugInInfo*, i32, i8**) #1

declare void @gimp_install_procedure(i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, %struct._GimpParamDef*, %struct._GimpParamDef*) #1

declare i32 @gimp_plugin_menu_register(i8*, i8*) #1

declare i32 @gimp_plugin_icon_register(i8*, i32, i8*) #1

; Function Attrs: nounwind
declare i8* @bindtextdomain(i8*, i8*) #2

; Function Attrs: nounwind readnone
declare i8* @gimp_locale_directory() #3

; Function Attrs: nounwind
declare i8* @bind_textdomain_codeset(i8*, i8*) #2

; Function Attrs: nounwind
declare i8* @textdomain(i8*) #2

declare void @g_thread_init(i8*) #1

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #4

; Function Attrs: nounwind uwtable
define internal i32 @print_image(i32 %image_ID, i32 %interactive, %struct._GError** %error) #0 {
entry:
  %retval = alloca i32, align 4
  %image_ID.addr = alloca i32, align 4
  %interactive.addr = alloca i32, align 4
  %error.addr = alloca %struct._GError**, align 8
  %operation = alloca %struct._GtkPrintOperation*, align 8
  %result = alloca i32, align 4
  %layer = alloca i32, align 4
  %data = alloca %struct.PrintData, align 8
  store i32 %image_ID, i32* %image_ID.addr, align 4
  store i32 %interactive, i32* %interactive.addr, align 4
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  %0 = load i32, i32* %image_ID.addr, align 4
  %1 = load i32, i32* %image_ID.addr, align 4
  %call = call i32 @gimp_layer_new_from_visible(i32 %0, i32 %1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i32 0, i32 0))
  store i32 %call, i32* %layer, align 4
  %call1 = call %struct._GtkPrintOperation* @gtk_print_operation_new()
  store %struct._GtkPrintOperation* %call1, %struct._GtkPrintOperation** %operation, align 8
  %2 = load %struct._GtkPrintOperation*, %struct._GtkPrintOperation** %operation, align 8
  call void @gtk_print_operation_set_n_pages(%struct._GtkPrintOperation* %2, i32 1)
  %3 = load %struct._GtkPrintOperation*, %struct._GtkPrintOperation** %operation, align 8
  %4 = load i32, i32* %image_ID.addr, align 4
  call void @print_operation_set_name(%struct._GtkPrintOperation* %3, i32 %4)
  %5 = load %struct._GtkPrintOperation*, %struct._GtkPrintOperation** %operation, align 8
  %6 = load i32, i32* %image_ID.addr, align 4
  call void @print_page_setup_load(%struct._GtkPrintOperation* %5, i32 %6)
  %7 = load i32, i32* %image_ID.addr, align 4
  %image_id = getelementptr inbounds %struct.PrintData, %struct.PrintData* %data, i32 0, i32 0
  store i32 %7, i32* %image_id, align 4
  %8 = load i32, i32* %layer, align 4
  %drawable_id = getelementptr inbounds %struct.PrintData, %struct.PrintData* %data, i32 0, i32 1
  store i32 %8, i32* %drawable_id, align 4
  %call2 = call i32 @gimp_get_default_unit()
  %unit = getelementptr inbounds %struct.PrintData, %struct.PrintData* %data, i32 0, i32 2
  store i32 %call2, i32* %unit, align 4
  %9 = load i32, i32* %image_ID.addr, align 4
  %call3 = call i32 @gimp_image_get_unit(i32 %9)
  %image_unit = getelementptr inbounds %struct.PrintData, %struct.PrintData* %data, i32 0, i32 5
  store i32 %call3, i32* %image_unit, align 4
  %offset_x = getelementptr inbounds %struct.PrintData, %struct.PrintData* %data, i32 0, i32 6
  store double 0.000000e+00, double* %offset_x, align 8
  %offset_y = getelementptr inbounds %struct.PrintData, %struct.PrintData* %data, i32 0, i32 7
  store double 0.000000e+00, double* %offset_y, align 8
  %center = getelementptr inbounds %struct.PrintData, %struct.PrintData* %data, i32 0, i32 8
  store i32 3, i32* %center, align 4
  %use_full_page = getelementptr inbounds %struct.PrintData, %struct.PrintData* %data, i32 0, i32 9
  store i32 0, i32* %use_full_page, align 4
  %draw_crop_marks = getelementptr inbounds %struct.PrintData, %struct.PrintData* %data, i32 0, i32 10
  store i32 0, i32* %draw_crop_marks, align 4
  %10 = load %struct._GtkPrintOperation*, %struct._GtkPrintOperation** %operation, align 8
  %operation4 = getelementptr inbounds %struct.PrintData, %struct.PrintData* %data, i32 0, i32 11
  store %struct._GtkPrintOperation* %10, %struct._GtkPrintOperation** %operation4, align 8
  %11 = load i32, i32* %image_ID.addr, align 4
  %xres = getelementptr inbounds %struct.PrintData, %struct.PrintData* %data, i32 0, i32 3
  %yres = getelementptr inbounds %struct.PrintData, %struct.PrintData* %data, i32 0, i32 4
  %call5 = call i32 @gimp_image_get_resolution(i32 %11, double* %xres, double* %yres)
  %call6 = call i32 @print_settings_load(%struct.PrintData* %data)
  %12 = load %struct._GtkPrintOperation*, %struct._GtkPrintOperation** %operation, align 8
  call void @gtk_print_operation_set_unit(%struct._GtkPrintOperation* %12, i32 0)
  %13 = load %struct._GtkPrintOperation*, %struct._GtkPrintOperation** %operation, align 8
  %14 = bitcast %struct._GtkPrintOperation* %13 to i8*
  %15 = bitcast %struct.PrintData* %data to i8*
  %call7 = call i64 @g_signal_connect_data(i8* %14, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.16, i32 0, i32 0), void ()* bitcast (void (%struct._GtkPrintOperation*, %struct._GtkPrintContext*, %struct.PrintData*)* @begin_print to void ()*), i8* %15, void (i8*, %struct._GClosure*)* null, i32 0)
  %16 = load %struct._GtkPrintOperation*, %struct._GtkPrintOperation** %operation, align 8
  %17 = bitcast %struct._GtkPrintOperation* %16 to i8*
  %18 = bitcast %struct.PrintData* %data to i8*
  %call8 = call i64 @g_signal_connect_data(i8* %17, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.17, i32 0, i32 0), void ()* bitcast (void (%struct._GtkPrintOperation*, %struct._GtkPrintContext*, i32, %struct.PrintData*)* @draw_page to void ()*), i8* %18, void (i8*, %struct._GClosure*)* null, i32 0)
  %19 = load %struct._GtkPrintOperation*, %struct._GtkPrintOperation** %operation, align 8
  %20 = bitcast %struct._GtkPrintOperation* %19 to i8*
  %21 = bitcast i32* %layer to i8*
  %call9 = call i64 @g_signal_connect_data(i8* %20, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.18, i32 0, i32 0), void ()* bitcast (void (%struct._GtkPrintOperation*, %struct._GtkPrintContext*, i32*)* @end_print to void ()*), i8* %21, void (i8*, %struct._GClosure*)* null, i32 0)
  %22 = load i32, i32* %interactive.addr, align 4
  %tobool = icmp ne i32 %22, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @gimp_ui_init(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i32 0, i32 0), i32 0)
  %23 = load %struct._GtkPrintOperation*, %struct._GtkPrintOperation** %operation, align 8
  %24 = bitcast %struct._GtkPrintOperation* %23 to i8*
  %25 = bitcast %struct.PrintData* %data to i8*
  %call10 = call i64 @g_signal_connect_data(i8* %24, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.18, i32 0, i32 0), void ()* bitcast (void (%struct.PrintData*)* @print_settings_save to void ()*), i8* %25, void (i8*, %struct._GClosure*)* null, i32 2)
  %26 = load %struct._GtkPrintOperation*, %struct._GtkPrintOperation** %operation, align 8
  %27 = bitcast %struct._GtkPrintOperation* %26 to i8*
  %28 = bitcast %struct.PrintData* %data to i8*
  %call11 = call i64 @g_signal_connect_data(i8* %27, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.20, i32 0, i32 0), void ()* bitcast (%struct._GtkWidget* (%struct._GtkPrintOperation*, %struct.PrintData*)* @create_custom_widget to void ()*), i8* %28, void (i8*, %struct._GClosure*)* null, i32 0)
  %29 = load %struct._GtkPrintOperation*, %struct._GtkPrintOperation** %operation, align 8
  %call12 = call i8* @gettext(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.21, i32 0, i32 0)) #6
  call void @gtk_print_operation_set_custom_tab_label(%struct._GtkPrintOperation* %29, i8* %call12)
  %30 = load %struct._GtkPrintOperation*, %struct._GtkPrintOperation** %operation, align 8
  call void @gtk_print_operation_set_embed_page_setup(%struct._GtkPrintOperation* %30, i32 1)
  %31 = load %struct._GtkPrintOperation*, %struct._GtkPrintOperation** %operation, align 8
  %32 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call13 = call i32 @gtk_print_operation_run(%struct._GtkPrintOperation* %31, i32 0, %struct._GtkWindow* null, %struct._GError** %32)
  store i32 %call13, i32* %result, align 4
  %33 = load i32, i32* %result, align 4
  %cmp = icmp eq i32 %33, 1
  br i1 %cmp, label %if.then.15, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then
  %34 = load i32, i32* %result, align 4
  %cmp14 = icmp eq i32 %34, 3
  br i1 %cmp14, label %if.then.15, label %if.end

if.then.15:                                       ; preds = %lor.lhs.false, %if.then
  %35 = load %struct._GtkPrintOperation*, %struct._GtkPrintOperation** %operation, align 8
  %36 = load i32, i32* %image_ID.addr, align 4
  call void @print_page_setup_save(%struct._GtkPrintOperation* %35, i32 %36)
  br label %if.end

if.end:                                           ; preds = %if.then.15, %lor.lhs.false
  br label %if.end.17

if.else:                                          ; preds = %entry
  %37 = load %struct._GtkPrintOperation*, %struct._GtkPrintOperation** %operation, align 8
  %38 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call16 = call i32 @gtk_print_operation_run(%struct._GtkPrintOperation* %37, i32 1, %struct._GtkWindow* null, %struct._GError** %38)
  store i32 %call16, i32* %result, align 4
  br label %if.end.17

if.end.17:                                        ; preds = %if.else, %if.end
  %39 = load %struct._GtkPrintOperation*, %struct._GtkPrintOperation** %operation, align 8
  %40 = bitcast %struct._GtkPrintOperation* %39 to i8*
  call void @g_object_unref(i8* %40)
  %41 = load i32, i32* %layer, align 4
  %call18 = call i32 @gimp_item_is_valid(i32 %41)
  %tobool19 = icmp ne i32 %call18, 0
  br i1 %tobool19, label %if.then.20, label %if.end.22

if.then.20:                                       ; preds = %if.end.17
  %42 = load i32, i32* %layer, align 4
  %call21 = call i32 @gimp_item_delete(i32 %42)
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.20, %if.end.17
  %43 = load i32, i32* %result, align 4
  switch i32 %43, label %sw.epilog [
    i32 1, label %sw.bb
    i32 3, label %sw.bb
    i32 2, label %sw.bb.23
    i32 0, label %sw.bb.24
  ]

sw.bb:                                            ; preds = %if.end.22, %if.end.22
  store i32 3, i32* %retval
  br label %return

sw.bb.23:                                         ; preds = %if.end.22
  store i32 4, i32* %retval
  br label %return

sw.bb.24:                                         ; preds = %if.end.22
  store i32 0, i32* %retval
  br label %return

sw.epilog:                                        ; preds = %if.end.22
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %sw.epilog, %sw.bb.24, %sw.bb.23, %sw.bb
  %44 = load i32, i32* %retval
  ret i32 %44
}

; Function Attrs: nounwind uwtable
define internal void @print_show_error(i8* %message) #0 {
entry:
  %message.addr = alloca i8*, align 8
  %dialog = alloca %struct._GtkWidget*, align 8
  store i8* %message, i8** %message.addr, align 8
  %call = call i8* @gettext(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.24, i32 0, i32 0)) #6
  %call1 = call %struct._GtkWidget* (%struct._GtkWindow*, i32, i32, i32, i8*, ...) @gtk_message_dialog_new(%struct._GtkWindow* null, i32 0, i32 3, i32 1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.23, i32 0, i32 0), i8* %call)
  store %struct._GtkWidget* %call1, %struct._GtkWidget** %dialog, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call2 = call i64 @gtk_message_dialog_get_type() #5
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call2)
  %2 = bitcast %struct._GTypeInstance* %call3 to %struct._GtkMessageDialog*
  %3 = load i8*, i8** %message.addr, align 8
  call void (%struct._GtkMessageDialog*, i8*, ...) @gtk_message_dialog_format_secondary_text(%struct._GtkMessageDialog* %2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.23, i32 0, i32 0), i8* %3)
  %4 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %5 = bitcast %struct._GtkWidget* %4 to %struct._GTypeInstance*
  %call4 = call i64 @gtk_dialog_get_type() #5
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 %call4)
  %6 = bitcast %struct._GTypeInstance* %call5 to %struct._GtkDialog*
  %call6 = call i32 @gtk_dialog_run(%struct._GtkDialog* %6)
  %7 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  call void @gtk_widget_destroy(%struct._GtkWidget* %7)
  ret void
}

declare i32 @gimp_layer_new_from_visible(i32, i32, i8*) #1

declare %struct._GtkPrintOperation* @gtk_print_operation_new() #1

declare void @gtk_print_operation_set_n_pages(%struct._GtkPrintOperation*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @print_operation_set_name(%struct._GtkPrintOperation* %operation, i32 %image_ID) #0 {
entry:
  %operation.addr = alloca %struct._GtkPrintOperation*, align 8
  %image_ID.addr = alloca i32, align 4
  %name = alloca i8*, align 8
  store %struct._GtkPrintOperation* %operation, %struct._GtkPrintOperation** %operation.addr, align 8
  store i32 %image_ID, i32* %image_ID.addr, align 4
  %0 = load i32, i32* %image_ID.addr, align 4
  %call = call i8* @gimp_image_get_name(i32 %0)
  store i8* %call, i8** %name, align 8
  %1 = load %struct._GtkPrintOperation*, %struct._GtkPrintOperation** %operation.addr, align 8
  %2 = load i8*, i8** %name, align 8
  call void @gtk_print_operation_set_job_name(%struct._GtkPrintOperation* %1, i8* %2)
  %3 = load i8*, i8** %name, align 8
  call void @g_free(i8* %3)
  ret void
}

declare void @print_page_setup_load(%struct._GtkPrintOperation*, i32) #1

declare i32 @gimp_get_default_unit() #1

declare i32 @gimp_image_get_unit(i32) #1

declare i32 @gimp_image_get_resolution(i32, double*, double*) #1

declare i32 @print_settings_load(%struct.PrintData*) #1

declare void @gtk_print_operation_set_unit(%struct._GtkPrintOperation*, i32) #1

declare i64 @g_signal_connect_data(i8*, i8*, void ()*, i8*, void (i8*, %struct._GClosure*)*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @begin_print(%struct._GtkPrintOperation* %operation, %struct._GtkPrintContext* %context, %struct.PrintData* %data) #0 {
entry:
  %operation.addr = alloca %struct._GtkPrintOperation*, align 8
  %context.addr = alloca %struct._GtkPrintContext*, align 8
  %data.addr = alloca %struct.PrintData*, align 8
  store %struct._GtkPrintOperation* %operation, %struct._GtkPrintOperation** %operation.addr, align 8
  store %struct._GtkPrintContext* %context, %struct._GtkPrintContext** %context.addr, align 8
  store %struct.PrintData* %data, %struct.PrintData** %data.addr, align 8
  %0 = load %struct._GtkPrintOperation*, %struct._GtkPrintOperation** %operation.addr, align 8
  %1 = load %struct.PrintData*, %struct.PrintData** %data.addr, align 8
  %use_full_page = getelementptr inbounds %struct.PrintData, %struct.PrintData* %1, i32 0, i32 9
  %2 = load i32, i32* %use_full_page, align 4
  call void @gtk_print_operation_set_use_full_page(%struct._GtkPrintOperation* %0, i32 %2)
  %call = call i8* @gettext(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.22, i32 0, i32 0)) #6
  %call1 = call i32 @gimp_progress_init(i8* %call)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @draw_page(%struct._GtkPrintOperation* %operation, %struct._GtkPrintContext* %context, i32 %page_nr, %struct.PrintData* %data) #0 {
entry:
  %operation.addr = alloca %struct._GtkPrintOperation*, align 8
  %context.addr = alloca %struct._GtkPrintContext*, align 8
  %page_nr.addr = alloca i32, align 4
  %data.addr = alloca %struct.PrintData*, align 8
  %error = alloca %struct._GError*, align 8
  store %struct._GtkPrintOperation* %operation, %struct._GtkPrintOperation** %operation.addr, align 8
  store %struct._GtkPrintContext* %context, %struct._GtkPrintContext** %context.addr, align 8
  store i32 %page_nr, i32* %page_nr.addr, align 4
  store %struct.PrintData* %data, %struct.PrintData** %data.addr, align 8
  store %struct._GError* null, %struct._GError** %error, align 8
  %0 = load %struct._GtkPrintContext*, %struct._GtkPrintContext** %context.addr, align 8
  %1 = load %struct.PrintData*, %struct.PrintData** %data.addr, align 8
  %call = call i32 @print_draw_page(%struct._GtkPrintContext* %0, %struct.PrintData* %1, %struct._GError** %error)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call1 = call i32 @gimp_progress_update(double 1.000000e+00)
  br label %if.end

if.else:                                          ; preds = %entry
  %2 = load %struct._GError*, %struct._GError** %error, align 8
  %message = getelementptr inbounds %struct._GError, %struct._GError* %2, i32 0, i32 2
  %3 = load i8*, i8** %message, align 8
  call void @print_show_error(i8* %3)
  %4 = load %struct._GError*, %struct._GError** %error, align 8
  call void @g_error_free(%struct._GError* %4)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @end_print(%struct._GtkPrintOperation* %operation, %struct._GtkPrintContext* %context, i32* %layer_ID) #0 {
entry:
  %operation.addr = alloca %struct._GtkPrintOperation*, align 8
  %context.addr = alloca %struct._GtkPrintContext*, align 8
  %layer_ID.addr = alloca i32*, align 8
  store %struct._GtkPrintOperation* %operation, %struct._GtkPrintOperation** %operation.addr, align 8
  store %struct._GtkPrintContext* %context, %struct._GtkPrintContext** %context.addr, align 8
  store i32* %layer_ID, i32** %layer_ID.addr, align 8
  %0 = load i32*, i32** %layer_ID.addr, align 8
  %1 = load i32, i32* %0, align 4
  %call = call i32 @gimp_item_is_valid(i32 %1)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i32*, i32** %layer_ID.addr, align 8
  %3 = load i32, i32* %2, align 4
  %call1 = call i32 @gimp_item_delete(i32 %3)
  %4 = load i32*, i32** %layer_ID.addr, align 8
  store i32 -1, i32* %4, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %call2 = call i32 @gimp_progress_end()
  %call3 = call i32 @g_timeout_add_seconds(i32 1, i32 (i8*)* bitcast (i32 ()* @gtk_true to i32 (i8*)*), i8* null)
  ret void
}

declare void @gimp_ui_init(i8*, i32) #1

declare void @print_settings_save(%struct.PrintData*) #1

; Function Attrs: nounwind uwtable
define internal %struct._GtkWidget* @create_custom_widget(%struct._GtkPrintOperation* %operation, %struct.PrintData* %data) #0 {
entry:
  %operation.addr = alloca %struct._GtkPrintOperation*, align 8
  %data.addr = alloca %struct.PrintData*, align 8
  store %struct._GtkPrintOperation* %operation, %struct._GtkPrintOperation** %operation.addr, align 8
  store %struct.PrintData* %data, %struct.PrintData** %data.addr, align 8
  %0 = load %struct.PrintData*, %struct.PrintData** %data.addr, align 8
  %call = call %struct._GtkWidget* @print_page_layout_gui(%struct.PrintData* %0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i32 0, i32 0))
  ret %struct._GtkWidget* %call
}

declare void @gtk_print_operation_set_custom_tab_label(%struct._GtkPrintOperation*, i8*) #1

; Function Attrs: nounwind
declare i8* @gettext(i8*) #2

declare void @gtk_print_operation_set_embed_page_setup(%struct._GtkPrintOperation*, i32) #1

declare i32 @gtk_print_operation_run(%struct._GtkPrintOperation*, i32, %struct._GtkWindow*, %struct._GError**) #1

declare void @print_page_setup_save(%struct._GtkPrintOperation*, i32) #1

declare void @g_object_unref(i8*) #1

declare i32 @gimp_item_is_valid(i32) #1

declare i32 @gimp_item_delete(i32) #1

declare i8* @gimp_image_get_name(i32) #1

declare void @gtk_print_operation_set_job_name(%struct._GtkPrintOperation*, i8*) #1

declare void @g_free(i8*) #1

declare void @gtk_print_operation_set_use_full_page(%struct._GtkPrintOperation*, i32) #1

declare i32 @gimp_progress_init(i8*) #1

declare i32 @print_draw_page(%struct._GtkPrintContext*, %struct.PrintData*, %struct._GError**) #1

declare i32 @gimp_progress_update(double) #1

declare void @g_error_free(%struct._GError*) #1

declare i32 @gimp_progress_end() #1

declare i32 @g_timeout_add_seconds(i32, i32 (i8*)*, i8*) #1

; Function Attrs: nounwind readnone
declare i32 @gtk_true() #3

declare %struct._GtkWidget* @print_page_layout_gui(%struct.PrintData*, i8*) #1

declare %struct._GtkWidget* @gtk_message_dialog_new(%struct._GtkWindow*, i32, i32, i32, i8*, ...) #1

declare void @gtk_message_dialog_format_secondary_text(%struct._GtkMessageDialog*, i8*, ...) #1

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_message_dialog_get_type() #3

declare i32 @gtk_dialog_run(%struct._GtkDialog*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_dialog_get_type() #3

declare void @gtk_widget_destroy(%struct._GtkWidget*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone }
attributes #6 = { nounwind }
attributes #7 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
