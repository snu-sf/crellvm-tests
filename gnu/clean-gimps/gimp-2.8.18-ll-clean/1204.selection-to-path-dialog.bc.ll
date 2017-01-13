; ModuleID = './plug-ins/selection-to-path/selection-to-path-dialog.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GSList = type { i8*, %struct._GSList* }
%struct._GtkObject = type { %struct._GObject, i32 }
%struct._GObject = type { %struct._GTypeInstance, i32, %struct._GData* }
%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GData = type opaque
%struct._GtkAdjustment = type { %struct._GtkObject, double, double, double, double, double, double }
%struct._GtkToggleButton = type { %struct._GtkButton, i8 }
%struct._GtkButton = type { %struct._GtkBin, %struct._GdkDrawable*, i8*, i32, i16 }
%struct._GtkBin = type { %struct._GtkContainer, %struct._GtkWidget* }
%struct._GtkContainer = type { %struct._GtkWidget, %struct._GtkWidget*, i24 }
%struct._GtkWidget = type { %struct._GtkObject, i16, i8, i8, i8*, %struct._GtkStyle*, %struct._GtkRequisition, %struct._GdkRectangle, %struct._GdkDrawable*, %struct._GtkWidget* }
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
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.SELVALS = type { double, double, double, double, double, double, double, double, double, double, double, i32, double, double, double, double, double, double, double, double }
%struct._GtkTable = type { %struct._GtkContainer, %struct._GList*, %struct._GtkTableRowCol*, %struct._GtkTableRowCol*, i16, i16, i16, i16, i8 }
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct._GtkTableRowCol = type { i16, i16, i16, i8 }
%struct._GClosure = type { i32, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i8*, %struct._GClosureNotifyData* }
%struct._GValue = type { i64, [2 x %union.anon] }
%union.anon = type { i64 }
%struct._GClosureNotifyData = type { i8*, {}* }

@adjust_widgets = internal global %struct._GSList* null, align 8
@.str = private unnamed_addr constant [14 x i8] c"default_value\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"Internal widget list error\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"Align Threshold:\00", align 1
@.str.3 = private unnamed_addr constant [65 x i8] c"If two endpoints are closer than this,they are made to be equal.\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"value-changed\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"Corner Always Threshold:\00", align 1
@.str.6 = private unnamed_addr constant [183 x i8] c"If the angle defined by a point and its predecessors and successors is smaller than this, it's a corner, even if it's within `corner_surround' pixels of a point with a smaller angle.\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"Corner Surround:\00", align 1
@.str.8 = private unnamed_addr constant [77 x i8] c"Number of points to consider when determining if a point is a corner or not.\00", align 1
@.str.9 = private unnamed_addr constant [18 x i8] c"Corner Threshold:\00", align 1
@.str.10 = private unnamed_addr constant [99 x i8] c"If a point, its predecessors, and its successors define an angle smaller than this, it's a corner.\00", align 1
@.str.11 = private unnamed_addr constant [17 x i8] c"Error Threshold:\00", align 1
@.str.12 = private unnamed_addr constant [135 x i8] c"Amount of error at which a fitted spline is unacceptable.  If any pixel is further away than this from the fitted curve, we try again.\00", align 1
@.str.13 = private unnamed_addr constant [29 x i8] c"Filter Alternative Surround:\00", align 1
@.str.14 = private unnamed_addr constant [63 x i8] c"A second number of adjacent points to consider when filtering.\00", align 1
@.str.15 = private unnamed_addr constant [16 x i8] c"Filter Epsilon:\00", align 1
@.str.16 = private unnamed_addr constant [173 x i8] c"If the angles between the vectors produced by filter_surround and filter_alternative_surround points differ by more than this, use the one from filter_alternative_surround.\00", align 1
@.str.17 = private unnamed_addr constant [24 x i8] c"Filter Iteration Count:\00", align 1
@.str.18 = private unnamed_addr constant [242 x i8] c"Number of times to smooth original data points.  Increasing this number dramatically --- to 50 or so --- can produce vastly better results.  But if any points that ``should'' be corners aren't found, the curve goes to hell around that point.\00", align 1
@.str.19 = private unnamed_addr constant [16 x i8] c"Filter Percent:\00", align 1
@.str.20 = private unnamed_addr constant [75 x i8] c"To produce the new point, use the old point plus this times the neighbors.\00", align 1
@.str.21 = private unnamed_addr constant [27 x i8] c"Filter Secondary Surround:\00", align 1
@.str.22 = private unnamed_addr constant [91 x i8] c"Number of adjacent points to consider if `filter_surround' points defines a straight line.\00", align 1
@.str.23 = private unnamed_addr constant [17 x i8] c"Filter Surround:\00", align 1
@.str.24 = private unnamed_addr constant [54 x i8] c"Number of adjacent points to consider when filtering.\00", align 1
@.str.25 = private unnamed_addr constant [11 x i8] c"Keep Knees\00", align 1
@.str.26 = private unnamed_addr constant [73 x i8] c"Says whether or not to remove ``knee'' points after finding the outline.\00", align 1
@.str.27 = private unnamed_addr constant [8 x i8] c"toggled\00", align 1
@.str.28 = private unnamed_addr constant [26 x i8] c"Line Reversion Threshold:\00", align 1
@.str.29 = private unnamed_addr constant [238 x i8] c"If a spline is closer to a straight line than this, it remains a straight line, even if it would otherwise be changed back to a curve. This is weighted by the square of the curve length, to make shorter curves more likely to be reverted.\00", align 1
@.str.30 = private unnamed_addr constant [16 x i8] c"Line Threshold:\00", align 1
@.str.31 = private unnamed_addr constant [137 x i8] c"How many pixels (on the average) a spline can diverge from the line determined by its endpoints before it is changed to a straight line.\00", align 1
@.str.32 = private unnamed_addr constant [27 x i8] c"Reparametrize Improvement:\00", align 1
@.str.33 = private unnamed_addr constant [143 x i8] c"If reparameterization doesn't improve the fit by this much percent, stop doing it. Amount of error at which it is pointless to reparameterize.\00", align 1
@.str.34 = private unnamed_addr constant [25 x i8] c"Reparametrize Threshold:\00", align 1
@.str.35 = private unnamed_addr constant [346 x i8] c"Amount of error at which it is pointless to reparameterize.  This happens, for example, when we are trying to fit the outline of the outside of an `O' with a single spline.  The initial fit is not good enough for the Newton-Raphson iteration to improve it.  It may be that it would be better to detect the cases where we didn't find any corners.\00", align 1
@.str.36 = private unnamed_addr constant [18 x i8] c"Subdivide Search:\00", align 1
@.str.37 = private unnamed_addr constant [91 x i8] c"Percentage of the curve away from the worst point to look for a better place to subdivide.\00", align 1
@.str.38 = private unnamed_addr constant [20 x i8] c"Subdivide Surround:\00", align 1
@.str.39 = private unnamed_addr constant [97 x i8] c"Number of points to consider when deciding whether a given point is a better place to subdivide.\00", align 1
@.str.40 = private unnamed_addr constant [21 x i8] c"Subdivide Threshold:\00", align 1
@.str.41 = private unnamed_addr constant [110 x i8] c"How many pixels a point can diverge from a straight line and still be considered a better place to subdivide.\00", align 1
@.str.42 = private unnamed_addr constant [18 x i8] c"Tangent Surround:\00", align 1
@.str.43 = private unnamed_addr constant [117 x i8] c"Number of points to look at on either side of a point when computing the approximation to the tangent at that point.\00", align 1

; Function Attrs: nounwind uwtable
define void @reset_adv_dialog() #0 {
entry:
  %list = alloca %struct._GSList*, align 8
  %widget = alloca %struct._GtkObject*, align 8
  %value = alloca double*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst18 = alloca %struct._GTypeInstance*, align 8
  %__t20 = alloca i64, align 8
  %__r23 = alloca i32, align 4
  %tmp38 = alloca i32, align 4
  %0 = load %struct._GSList*, %struct._GSList** @adjust_widgets, align 8
  store %struct._GSList* %0, %struct._GSList** %list, align 8
  br label %for.cond

for.cond:                                         ; preds = %cond.end, %entry
  %1 = load %struct._GSList*, %struct._GSList** %list, align 8
  %tobool = icmp ne %struct._GSList* %1, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load %struct._GSList*, %struct._GSList** %list, align 8
  %data = getelementptr inbounds %struct._GSList, %struct._GSList* %2, i32 0, i32 0
  %3 = load i8*, i8** %data, align 8
  %4 = bitcast i8* %3 to %struct._GTypeInstance*
  %call = call i64 @gtk_object_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call)
  %5 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkObject*
  store %struct._GtkObject* %5, %struct._GtkObject** %widget, align 8
  %6 = load %struct._GtkObject*, %struct._GtkObject** %widget, align 8
  %7 = bitcast %struct._GtkObject* %6 to %struct._GTypeInstance*
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 80)
  %8 = bitcast %struct._GTypeInstance* %call2 to %struct._GObject*
  %call3 = call i8* @g_object_get_data(%struct._GObject* %8, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0))
  %9 = bitcast i8* %call3 to double*
  store double* %9, double** %value, align 8
  %10 = load %struct._GtkObject*, %struct._GtkObject** %widget, align 8
  %11 = bitcast %struct._GtkObject* %10 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %11, %struct._GTypeInstance** %__inst, align 8
  %call4 = call i64 @gtk_adjustment_get_type() #5
  store i64 %call4, i64* %__t, align 8
  %12 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool5 = icmp ne %struct._GTypeInstance* %12, null
  br i1 %tobool5, label %if.else, label %if.then

if.then:                                          ; preds = %for.body
  store i32 0, i32* %__r, align 4
  br label %if.end.11

if.else:                                          ; preds = %for.body
  %13 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %13, i32 0, i32 0
  %14 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool6 = icmp ne %struct._GTypeClass* %14, null
  br i1 %tobool6, label %land.lhs.true, label %if.else.9

land.lhs.true:                                    ; preds = %if.else
  %15 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class7 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %15, i32 0, i32 0
  %16 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class7, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %16, i32 0, i32 0
  %17 = load i64, i64* %g_type, align 8
  %18 = load i64, i64* %__t, align 8
  %cmp = icmp eq i64 %17, %18
  br i1 %cmp, label %if.then.8, label %if.else.9

if.then.8:                                        ; preds = %land.lhs.true
  store i32 1, i32* %__r, align 4
  br label %if.end

if.else.9:                                        ; preds = %land.lhs.true, %if.else
  %19 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %20 = load i64, i64* %__t, align 8
  %call10 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %19, i64 %20) #6
  store i32 %call10, i32* %__r, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.9, %if.then.8
  br label %if.end.11

if.end.11:                                        ; preds = %if.end, %if.then
  %21 = load i32, i32* %__r, align 4
  store i32 %21, i32* %tmp
  %22 = load i32, i32* %tmp
  %tobool12 = icmp ne i32 %22, 0
  br i1 %tobool12, label %if.then.13, label %if.else.16

if.then.13:                                       ; preds = %if.end.11
  %23 = load %struct._GtkObject*, %struct._GtkObject** %widget, align 8
  %24 = bitcast %struct._GtkObject* %23 to %struct._GTypeInstance*
  %call14 = call i64 @gtk_adjustment_get_type() #5
  %call15 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %24, i64 %call14)
  %25 = bitcast %struct._GTypeInstance* %call15 to %struct._GtkAdjustment*
  %26 = load double*, double** %value, align 8
  %27 = load double, double* %26, align 8
  call void @gtk_adjustment_set_value(%struct._GtkAdjustment* %25, double %27)
  br label %if.end.45

if.else.16:                                       ; preds = %if.end.11
  %28 = load %struct._GtkObject*, %struct._GtkObject** %widget, align 8
  %29 = bitcast %struct._GtkObject* %28 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %29, %struct._GTypeInstance** %__inst18, align 8
  %call21 = call i64 @gtk_toggle_button_get_type() #5
  store i64 %call21, i64* %__t20, align 8
  %30 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst18, align 8
  %tobool24 = icmp ne %struct._GTypeInstance* %30, null
  br i1 %tobool24, label %if.else.26, label %if.then.25

if.then.25:                                       ; preds = %if.else.16
  store i32 0, i32* %__r23, align 4
  br label %if.end.37

if.else.26:                                       ; preds = %if.else.16
  %31 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst18, align 8
  %g_class27 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %31, i32 0, i32 0
  %32 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class27, align 8
  %tobool28 = icmp ne %struct._GTypeClass* %32, null
  br i1 %tobool28, label %land.lhs.true.29, label %if.else.34

land.lhs.true.29:                                 ; preds = %if.else.26
  %33 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst18, align 8
  %g_class30 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %33, i32 0, i32 0
  %34 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class30, align 8
  %g_type31 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %34, i32 0, i32 0
  %35 = load i64, i64* %g_type31, align 8
  %36 = load i64, i64* %__t20, align 8
  %cmp32 = icmp eq i64 %35, %36
  br i1 %cmp32, label %if.then.33, label %if.else.34

if.then.33:                                       ; preds = %land.lhs.true.29
  store i32 1, i32* %__r23, align 4
  br label %if.end.36

if.else.34:                                       ; preds = %land.lhs.true.29, %if.else.26
  %37 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst18, align 8
  %38 = load i64, i64* %__t20, align 8
  %call35 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %37, i64 %38) #6
  store i32 %call35, i32* %__r23, align 4
  br label %if.end.36

if.end.36:                                        ; preds = %if.else.34, %if.then.33
  br label %if.end.37

if.end.37:                                        ; preds = %if.end.36, %if.then.25
  %39 = load i32, i32* %__r23, align 4
  store i32 %39, i32* %tmp38
  %40 = load i32, i32* %tmp38
  %tobool39 = icmp ne i32 %40, 0
  br i1 %tobool39, label %if.then.40, label %if.else.43

if.then.40:                                       ; preds = %if.end.37
  %41 = load %struct._GtkObject*, %struct._GtkObject** %widget, align 8
  %42 = bitcast %struct._GtkObject* %41 to %struct._GTypeInstance*
  %call41 = call i64 @gtk_toggle_button_get_type() #5
  %call42 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %42, i64 %call41)
  %43 = bitcast %struct._GTypeInstance* %call42 to %struct._GtkToggleButton*
  %44 = load double*, double** %value, align 8
  %45 = load double, double* %44, align 8
  %conv = fptosi double %45 to i32
  call void @gtk_toggle_button_set_active(%struct._GtkToggleButton* %43, i32 %conv)
  br label %if.end.44

if.else.43:                                       ; preds = %if.end.37
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i32 0, i32 0))
  br label %if.end.44

if.end.44:                                        ; preds = %if.else.43, %if.then.40
  br label %if.end.45

if.end.45:                                        ; preds = %if.end.44, %if.then.13
  br label %for.inc

for.inc:                                          ; preds = %if.end.45
  %46 = load %struct._GSList*, %struct._GSList** %list, align 8
  %tobool46 = icmp ne %struct._GSList* %46, null
  br i1 %tobool46, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.inc
  %47 = load %struct._GSList*, %struct._GSList** %list, align 8
  %next = getelementptr inbounds %struct._GSList, %struct._GSList* %47, i32 0, i32 1
  %48 = load %struct._GSList*, %struct._GSList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.inc
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GSList* [ %48, %cond.true ], [ null, %cond.false ]
  store %struct._GSList* %cond, %struct._GSList** %list, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_object_get_type() #2

declare i8* @g_object_get_data(%struct._GObject*, i8*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_adjustment_get_type() #2

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #3

declare void @gtk_adjustment_set_value(%struct._GtkAdjustment*, double) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_toggle_button_get_type() #2

declare void @gtk_toggle_button_set_active(%struct._GtkToggleButton*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @g_warning(i8* %format, ...) #0 {
entry:
  %format.addr = alloca i8*, align 8
  %args = alloca [1 x %struct.__va_list_tag], align 16
  store i8* %format, i8** %format.addr, align 8
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay1)
  %0 = load i8*, i8** %format.addr, align 8
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  call void @g_logv(i8* null, i32 16, i8* %0, %struct.__va_list_tag* %arraydecay2)
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*
  call void @llvm.va_end(i8* %arraydecay34)
  ret void
}

; Function Attrs: nounwind uwtable
define %struct._GtkWidget* @dialog_create_selection_area(%struct.SELVALS* %sels) #0 {
entry:
  %sels.addr = alloca %struct.SELVALS*, align 8
  %table = alloca %struct._GtkWidget*, align 8
  %check = alloca %struct._GtkWidget*, align 8
  %adj = alloca %struct._GtkObject*, align 8
  %row = alloca i32, align 4
  store %struct.SELVALS* %sels, %struct.SELVALS** %sels.addr, align 8
  %call = call %struct._GtkWidget* @gtk_table_new(i32 20, i32 3, i32 0)
  store %struct._GtkWidget* %call, %struct._GtkWidget** %table, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call1 = call i64 @gtk_table_get_type() #5
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call1)
  %2 = bitcast %struct._GTypeInstance* %call2 to %struct._GtkTable*
  call void @gtk_table_set_row_spacings(%struct._GtkTable* %2, i32 6)
  %3 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %4 = bitcast %struct._GtkWidget* %3 to %struct._GTypeInstance*
  %call3 = call i64 @gtk_table_get_type() #5
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call3)
  %5 = bitcast %struct._GTypeInstance* %call4 to %struct._GtkTable*
  call void @gtk_table_set_col_spacings(%struct._GtkTable* %5, i32 6)
  store i32 0, i32* %row, align 4
  %6 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %7 = bitcast %struct._GtkWidget* %6 to %struct._GTypeInstance*
  %call5 = call i64 @gtk_table_get_type() #5
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 %call5)
  %8 = bitcast %struct._GTypeInstance* %call6 to %struct._GtkTable*
  %9 = load i32, i32* %row, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %row, align 4
  %10 = load %struct.SELVALS*, %struct.SELVALS** %sels.addr, align 8
  %align_threshold = getelementptr inbounds %struct.SELVALS, %struct.SELVALS* %10, i32 0, i32 0
  %11 = load double, double* %align_threshold, align 8
  %call7 = call %struct._GtkObject* @gimp_scale_entry_new(%struct._GtkTable* %8, i32 0, i32 %9, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i32 0, i32 0), i32 100, i32 8, double %11, double 2.000000e-01, double 2.000000e+00, double 1.000000e-01, double 1.000000e-01, i32 2, i32 1, double 0.000000e+00, double 0.000000e+00, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.3, i32 0, i32 0), i8* null)
  store %struct._GtkObject* %call7, %struct._GtkObject** %adj, align 8
  %12 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %13 = bitcast %struct._GtkObject* %12 to i8*
  %14 = load %struct.SELVALS*, %struct.SELVALS** %sels.addr, align 8
  %align_threshold8 = getelementptr inbounds %struct.SELVALS, %struct.SELVALS* %14, i32 0, i32 0
  %15 = bitcast double* %align_threshold8 to i8*
  %call9 = call i64 @g_signal_connect_data(i8* %13, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, i8*)* @gimp_double_adjustment_update to void ()*), i8* %15, void (i8*, %struct._GClosure*)* null, i32 0)
  %16 = load %struct._GSList*, %struct._GSList** @adjust_widgets, align 8
  %17 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %18 = bitcast %struct._GtkObject* %17 to i8*
  %call10 = call %struct._GSList* @g_slist_append(%struct._GSList* %16, i8* %18)
  store %struct._GSList* %call10, %struct._GSList** @adjust_widgets, align 8
  %19 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %20 = bitcast %struct._GtkObject* %19 to %struct._GTypeInstance*
  %call11 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %20, i64 80)
  %21 = bitcast %struct._GTypeInstance* %call11 to %struct._GObject*
  %call12 = call i8* @def_val(double 5.000000e-01)
  call void @g_object_set_data(%struct._GObject* %21, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i8* %call12)
  %22 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %23 = bitcast %struct._GtkWidget* %22 to %struct._GTypeInstance*
  %call13 = call i64 @gtk_table_get_type() #5
  %call14 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %23, i64 %call13)
  %24 = bitcast %struct._GTypeInstance* %call14 to %struct._GtkTable*
  %25 = load i32, i32* %row, align 4
  %inc15 = add nsw i32 %25, 1
  store i32 %inc15, i32* %row, align 4
  %26 = load %struct.SELVALS*, %struct.SELVALS** %sels.addr, align 8
  %corner_always_threshold = getelementptr inbounds %struct.SELVALS, %struct.SELVALS* %26, i32 0, i32 1
  %27 = load double, double* %corner_always_threshold, align 8
  %call16 = call %struct._GtkObject* @gimp_scale_entry_new(%struct._GtkTable* %24, i32 0, i32 %25, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i32 0, i32 0), i32 100, i32 8, double %27, double 3.000000e+01, double 1.800000e+02, double 1.000000e+00, double 1.000000e+00, i32 2, i32 1, double 0.000000e+00, double 0.000000e+00, i8* getelementptr inbounds ([183 x i8], [183 x i8]* @.str.6, i32 0, i32 0), i8* null)
  store %struct._GtkObject* %call16, %struct._GtkObject** %adj, align 8
  %28 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %29 = bitcast %struct._GtkObject* %28 to i8*
  %30 = load %struct.SELVALS*, %struct.SELVALS** %sels.addr, align 8
  %corner_always_threshold17 = getelementptr inbounds %struct.SELVALS, %struct.SELVALS* %30, i32 0, i32 1
  %31 = bitcast double* %corner_always_threshold17 to i8*
  %call18 = call i64 @g_signal_connect_data(i8* %29, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, i8*)* @gimp_double_adjustment_update to void ()*), i8* %31, void (i8*, %struct._GClosure*)* null, i32 0)
  %32 = load %struct._GSList*, %struct._GSList** @adjust_widgets, align 8
  %33 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %34 = bitcast %struct._GtkObject* %33 to i8*
  %call19 = call %struct._GSList* @g_slist_append(%struct._GSList* %32, i8* %34)
  store %struct._GSList* %call19, %struct._GSList** @adjust_widgets, align 8
  %35 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %36 = bitcast %struct._GtkObject* %35 to %struct._GTypeInstance*
  %call20 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %36, i64 80)
  %37 = bitcast %struct._GTypeInstance* %call20 to %struct._GObject*
  %call21 = call i8* @def_val(double 6.000000e+01)
  call void @g_object_set_data(%struct._GObject* %37, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i8* %call21)
  %38 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %39 = bitcast %struct._GtkWidget* %38 to %struct._GTypeInstance*
  %call22 = call i64 @gtk_table_get_type() #5
  %call23 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %39, i64 %call22)
  %40 = bitcast %struct._GTypeInstance* %call23 to %struct._GtkTable*
  %41 = load i32, i32* %row, align 4
  %inc24 = add nsw i32 %41, 1
  store i32 %inc24, i32* %row, align 4
  %42 = load %struct.SELVALS*, %struct.SELVALS** %sels.addr, align 8
  %corner_surround = getelementptr inbounds %struct.SELVALS, %struct.SELVALS* %42, i32 0, i32 2
  %43 = load double, double* %corner_surround, align 8
  %call25 = call %struct._GtkObject* @gimp_scale_entry_new(%struct._GtkTable* %40, i32 0, i32 %41, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i32 0, i32 0), i32 100, i32 8, double %43, double 3.000000e+00, double 8.000000e+00, double 1.000000e+00, double 1.000000e+00, i32 0, i32 1, double 0.000000e+00, double 0.000000e+00, i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.8, i32 0, i32 0), i8* null)
  store %struct._GtkObject* %call25, %struct._GtkObject** %adj, align 8
  %44 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %45 = bitcast %struct._GtkObject* %44 to i8*
  %46 = load %struct.SELVALS*, %struct.SELVALS** %sels.addr, align 8
  %corner_surround26 = getelementptr inbounds %struct.SELVALS, %struct.SELVALS* %46, i32 0, i32 2
  %47 = bitcast double* %corner_surround26 to i8*
  %call27 = call i64 @g_signal_connect_data(i8* %45, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, i8*)* @gimp_double_adjustment_update to void ()*), i8* %47, void (i8*, %struct._GClosure*)* null, i32 0)
  %48 = load %struct._GSList*, %struct._GSList** @adjust_widgets, align 8
  %49 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %50 = bitcast %struct._GtkObject* %49 to i8*
  %call28 = call %struct._GSList* @g_slist_append(%struct._GSList* %48, i8* %50)
  store %struct._GSList* %call28, %struct._GSList** @adjust_widgets, align 8
  %51 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %52 = bitcast %struct._GtkObject* %51 to %struct._GTypeInstance*
  %call29 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %52, i64 80)
  %53 = bitcast %struct._GTypeInstance* %call29 to %struct._GObject*
  %call30 = call i8* @def_val(double 4.000000e+00)
  call void @g_object_set_data(%struct._GObject* %53, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i8* %call30)
  %54 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %55 = bitcast %struct._GtkWidget* %54 to %struct._GTypeInstance*
  %call31 = call i64 @gtk_table_get_type() #5
  %call32 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %55, i64 %call31)
  %56 = bitcast %struct._GTypeInstance* %call32 to %struct._GtkTable*
  %57 = load i32, i32* %row, align 4
  %inc33 = add nsw i32 %57, 1
  store i32 %inc33, i32* %row, align 4
  %58 = load %struct.SELVALS*, %struct.SELVALS** %sels.addr, align 8
  %corner_threshold = getelementptr inbounds %struct.SELVALS, %struct.SELVALS* %58, i32 0, i32 3
  %59 = load double, double* %corner_threshold, align 8
  %call34 = call %struct._GtkObject* @gimp_scale_entry_new(%struct._GtkTable* %56, i32 0, i32 %57, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.9, i32 0, i32 0), i32 100, i32 8, double %59, double 0.000000e+00, double 1.800000e+02, double 1.000000e+00, double 1.000000e+00, i32 2, i32 1, double 0.000000e+00, double 0.000000e+00, i8* getelementptr inbounds ([99 x i8], [99 x i8]* @.str.10, i32 0, i32 0), i8* null)
  store %struct._GtkObject* %call34, %struct._GtkObject** %adj, align 8
  %60 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %61 = bitcast %struct._GtkObject* %60 to i8*
  %62 = load %struct.SELVALS*, %struct.SELVALS** %sels.addr, align 8
  %corner_threshold35 = getelementptr inbounds %struct.SELVALS, %struct.SELVALS* %62, i32 0, i32 3
  %63 = bitcast double* %corner_threshold35 to i8*
  %call36 = call i64 @g_signal_connect_data(i8* %61, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, i8*)* @gimp_double_adjustment_update to void ()*), i8* %63, void (i8*, %struct._GClosure*)* null, i32 0)
  %64 = load %struct._GSList*, %struct._GSList** @adjust_widgets, align 8
  %65 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %66 = bitcast %struct._GtkObject* %65 to i8*
  %call37 = call %struct._GSList* @g_slist_append(%struct._GSList* %64, i8* %66)
  store %struct._GSList* %call37, %struct._GSList** @adjust_widgets, align 8
  %67 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %68 = bitcast %struct._GtkObject* %67 to %struct._GTypeInstance*
  %call38 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %68, i64 80)
  %69 = bitcast %struct._GTypeInstance* %call38 to %struct._GObject*
  %call39 = call i8* @def_val(double 1.000000e+02)
  call void @g_object_set_data(%struct._GObject* %69, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i8* %call39)
  %70 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %71 = bitcast %struct._GtkWidget* %70 to %struct._GTypeInstance*
  %call40 = call i64 @gtk_table_get_type() #5
  %call41 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %71, i64 %call40)
  %72 = bitcast %struct._GTypeInstance* %call41 to %struct._GtkTable*
  %73 = load i32, i32* %row, align 4
  %inc42 = add nsw i32 %73, 1
  store i32 %inc42, i32* %row, align 4
  %74 = load %struct.SELVALS*, %struct.SELVALS** %sels.addr, align 8
  %error_threshold = getelementptr inbounds %struct.SELVALS, %struct.SELVALS* %74, i32 0, i32 4
  %75 = load double, double* %error_threshold, align 8
  %call43 = call %struct._GtkObject* @gimp_scale_entry_new(%struct._GtkTable* %72, i32 0, i32 %73, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.11, i32 0, i32 0), i32 100, i32 8, double %75, double 2.000000e-01, double 1.000000e+01, double 1.000000e-01, double 1.000000e-01, i32 2, i32 1, double 0.000000e+00, double 0.000000e+00, i8* getelementptr inbounds ([135 x i8], [135 x i8]* @.str.12, i32 0, i32 0), i8* null)
  store %struct._GtkObject* %call43, %struct._GtkObject** %adj, align 8
  %76 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %77 = bitcast %struct._GtkObject* %76 to i8*
  %78 = load %struct.SELVALS*, %struct.SELVALS** %sels.addr, align 8
  %error_threshold44 = getelementptr inbounds %struct.SELVALS, %struct.SELVALS* %78, i32 0, i32 4
  %79 = bitcast double* %error_threshold44 to i8*
  %call45 = call i64 @g_signal_connect_data(i8* %77, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, i8*)* @gimp_double_adjustment_update to void ()*), i8* %79, void (i8*, %struct._GClosure*)* null, i32 0)
  %80 = load %struct._GSList*, %struct._GSList** @adjust_widgets, align 8
  %81 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %82 = bitcast %struct._GtkObject* %81 to i8*
  %call46 = call %struct._GSList* @g_slist_append(%struct._GSList* %80, i8* %82)
  store %struct._GSList* %call46, %struct._GSList** @adjust_widgets, align 8
  %83 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %84 = bitcast %struct._GtkObject* %83 to %struct._GTypeInstance*
  %call47 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %84, i64 80)
  %85 = bitcast %struct._GTypeInstance* %call47 to %struct._GObject*
  %call48 = call i8* @def_val(double 4.000000e-01)
  call void @g_object_set_data(%struct._GObject* %85, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i8* %call48)
  %86 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %87 = bitcast %struct._GtkWidget* %86 to %struct._GTypeInstance*
  %call49 = call i64 @gtk_table_get_type() #5
  %call50 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %87, i64 %call49)
  %88 = bitcast %struct._GTypeInstance* %call50 to %struct._GtkTable*
  %89 = load i32, i32* %row, align 4
  %inc51 = add nsw i32 %89, 1
  store i32 %inc51, i32* %row, align 4
  %90 = load %struct.SELVALS*, %struct.SELVALS** %sels.addr, align 8
  %filter_alternative_surround = getelementptr inbounds %struct.SELVALS, %struct.SELVALS* %90, i32 0, i32 5
  %91 = load double, double* %filter_alternative_surround, align 8
  %call52 = call %struct._GtkObject* @gimp_scale_entry_new(%struct._GtkTable* %88, i32 0, i32 %89, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.13, i32 0, i32 0), i32 100, i32 8, double %91, double 1.000000e+00, double 1.000000e+01, double 1.000000e+00, double 1.000000e+00, i32 0, i32 1, double 0.000000e+00, double 0.000000e+00, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.14, i32 0, i32 0), i8* null)
  store %struct._GtkObject* %call52, %struct._GtkObject** %adj, align 8
  %92 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %93 = bitcast %struct._GtkObject* %92 to i8*
  %94 = load %struct.SELVALS*, %struct.SELVALS** %sels.addr, align 8
  %filter_alternative_surround53 = getelementptr inbounds %struct.SELVALS, %struct.SELVALS* %94, i32 0, i32 5
  %95 = bitcast double* %filter_alternative_surround53 to i8*
  %call54 = call i64 @g_signal_connect_data(i8* %93, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, i8*)* @gimp_double_adjustment_update to void ()*), i8* %95, void (i8*, %struct._GClosure*)* null, i32 0)
  %96 = load %struct._GSList*, %struct._GSList** @adjust_widgets, align 8
  %97 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %98 = bitcast %struct._GtkObject* %97 to i8*
  %call55 = call %struct._GSList* @g_slist_append(%struct._GSList* %96, i8* %98)
  store %struct._GSList* %call55, %struct._GSList** @adjust_widgets, align 8
  %99 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %100 = bitcast %struct._GtkObject* %99 to %struct._GTypeInstance*
  %call56 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %100, i64 80)
  %101 = bitcast %struct._GTypeInstance* %call56 to %struct._GObject*
  %call57 = call i8* @def_val(double 1.000000e+00)
  call void @g_object_set_data(%struct._GObject* %101, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i8* %call57)
  %102 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %103 = bitcast %struct._GtkWidget* %102 to %struct._GTypeInstance*
  %call58 = call i64 @gtk_table_get_type() #5
  %call59 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %103, i64 %call58)
  %104 = bitcast %struct._GTypeInstance* %call59 to %struct._GtkTable*
  %105 = load i32, i32* %row, align 4
  %inc60 = add nsw i32 %105, 1
  store i32 %inc60, i32* %row, align 4
  %106 = load %struct.SELVALS*, %struct.SELVALS** %sels.addr, align 8
  %filter_epsilon = getelementptr inbounds %struct.SELVALS, %struct.SELVALS* %106, i32 0, i32 6
  %107 = load double, double* %filter_epsilon, align 8
  %call61 = call %struct._GtkObject* @gimp_scale_entry_new(%struct._GtkTable* %104, i32 0, i32 %105, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.15, i32 0, i32 0), i32 100, i32 8, double %107, double 5.000000e+00, double 4.000000e+01, double 1.000000e+00, double 1.000000e+00, i32 2, i32 1, double 0.000000e+00, double 0.000000e+00, i8* getelementptr inbounds ([173 x i8], [173 x i8]* @.str.16, i32 0, i32 0), i8* null)
  store %struct._GtkObject* %call61, %struct._GtkObject** %adj, align 8
  %108 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %109 = bitcast %struct._GtkObject* %108 to i8*
  %110 = load %struct.SELVALS*, %struct.SELVALS** %sels.addr, align 8
  %filter_epsilon62 = getelementptr inbounds %struct.SELVALS, %struct.SELVALS* %110, i32 0, i32 6
  %111 = bitcast double* %filter_epsilon62 to i8*
  %call63 = call i64 @g_signal_connect_data(i8* %109, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, i8*)* @gimp_double_adjustment_update to void ()*), i8* %111, void (i8*, %struct._GClosure*)* null, i32 0)
  %112 = load %struct._GSList*, %struct._GSList** @adjust_widgets, align 8
  %113 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %114 = bitcast %struct._GtkObject* %113 to i8*
  %call64 = call %struct._GSList* @g_slist_append(%struct._GSList* %112, i8* %114)
  store %struct._GSList* %call64, %struct._GSList** @adjust_widgets, align 8
  %115 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %116 = bitcast %struct._GtkObject* %115 to %struct._GTypeInstance*
  %call65 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %116, i64 80)
  %117 = bitcast %struct._GTypeInstance* %call65 to %struct._GObject*
  %call66 = call i8* @def_val(double 1.000000e+01)
  call void @g_object_set_data(%struct._GObject* %117, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i8* %call66)
  %118 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %119 = bitcast %struct._GtkWidget* %118 to %struct._GTypeInstance*
  %call67 = call i64 @gtk_table_get_type() #5
  %call68 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %119, i64 %call67)
  %120 = bitcast %struct._GTypeInstance* %call68 to %struct._GtkTable*
  %121 = load i32, i32* %row, align 4
  %inc69 = add nsw i32 %121, 1
  store i32 %inc69, i32* %row, align 4
  %122 = load %struct.SELVALS*, %struct.SELVALS** %sels.addr, align 8
  %filter_iteration_count = getelementptr inbounds %struct.SELVALS, %struct.SELVALS* %122, i32 0, i32 7
  %123 = load double, double* %filter_iteration_count, align 8
  %call70 = call %struct._GtkObject* @gimp_scale_entry_new(%struct._GtkTable* %120, i32 0, i32 %121, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.17, i32 0, i32 0), i32 100, i32 8, double %123, double 4.000000e+00, double 7.000000e+01, double 1.000000e+00, double 1.000000e+00, i32 0, i32 1, double 0.000000e+00, double 0.000000e+00, i8* getelementptr inbounds ([242 x i8], [242 x i8]* @.str.18, i32 0, i32 0), i8* null)
  store %struct._GtkObject* %call70, %struct._GtkObject** %adj, align 8
  %124 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %125 = bitcast %struct._GtkObject* %124 to i8*
  %126 = load %struct.SELVALS*, %struct.SELVALS** %sels.addr, align 8
  %filter_iteration_count71 = getelementptr inbounds %struct.SELVALS, %struct.SELVALS* %126, i32 0, i32 7
  %127 = bitcast double* %filter_iteration_count71 to i8*
  %call72 = call i64 @g_signal_connect_data(i8* %125, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, i8*)* @gimp_double_adjustment_update to void ()*), i8* %127, void (i8*, %struct._GClosure*)* null, i32 0)
  %128 = load %struct._GSList*, %struct._GSList** @adjust_widgets, align 8
  %129 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %130 = bitcast %struct._GtkObject* %129 to i8*
  %call73 = call %struct._GSList* @g_slist_append(%struct._GSList* %128, i8* %130)
  store %struct._GSList* %call73, %struct._GSList** @adjust_widgets, align 8
  %131 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %132 = bitcast %struct._GtkObject* %131 to %struct._GTypeInstance*
  %call74 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %132, i64 80)
  %133 = bitcast %struct._GTypeInstance* %call74 to %struct._GObject*
  %call75 = call i8* @def_val(double 4.000000e+00)
  call void @g_object_set_data(%struct._GObject* %133, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i8* %call75)
  %134 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %135 = bitcast %struct._GtkWidget* %134 to %struct._GTypeInstance*
  %call76 = call i64 @gtk_table_get_type() #5
  %call77 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %135, i64 %call76)
  %136 = bitcast %struct._GTypeInstance* %call77 to %struct._GtkTable*
  %137 = load i32, i32* %row, align 4
  %inc78 = add nsw i32 %137, 1
  store i32 %inc78, i32* %row, align 4
  %138 = load %struct.SELVALS*, %struct.SELVALS** %sels.addr, align 8
  %filter_percent = getelementptr inbounds %struct.SELVALS, %struct.SELVALS* %138, i32 0, i32 8
  %139 = load double, double* %filter_percent, align 8
  %call79 = call %struct._GtkObject* @gimp_scale_entry_new(%struct._GtkTable* %136, i32 0, i32 %137, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.19, i32 0, i32 0), i32 100, i32 8, double %139, double 0.000000e+00, double 1.000000e+00, double 5.000000e-02, double 1.000000e-02, i32 2, i32 1, double 0.000000e+00, double 0.000000e+00, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.20, i32 0, i32 0), i8* null)
  store %struct._GtkObject* %call79, %struct._GtkObject** %adj, align 8
  %140 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %141 = bitcast %struct._GtkObject* %140 to i8*
  %142 = load %struct.SELVALS*, %struct.SELVALS** %sels.addr, align 8
  %filter_percent80 = getelementptr inbounds %struct.SELVALS, %struct.SELVALS* %142, i32 0, i32 8
  %143 = bitcast double* %filter_percent80 to i8*
  %call81 = call i64 @g_signal_connect_data(i8* %141, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, i8*)* @gimp_double_adjustment_update to void ()*), i8* %143, void (i8*, %struct._GClosure*)* null, i32 0)
  %144 = load %struct._GSList*, %struct._GSList** @adjust_widgets, align 8
  %145 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %146 = bitcast %struct._GtkObject* %145 to i8*
  %call82 = call %struct._GSList* @g_slist_append(%struct._GSList* %144, i8* %146)
  store %struct._GSList* %call82, %struct._GSList** @adjust_widgets, align 8
  %147 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %148 = bitcast %struct._GtkObject* %147 to %struct._GTypeInstance*
  %call83 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %148, i64 80)
  %149 = bitcast %struct._GTypeInstance* %call83 to %struct._GObject*
  %call84 = call i8* @def_val(double 3.300000e-01)
  call void @g_object_set_data(%struct._GObject* %149, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i8* %call84)
  %150 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %151 = bitcast %struct._GtkWidget* %150 to %struct._GTypeInstance*
  %call85 = call i64 @gtk_table_get_type() #5
  %call86 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %151, i64 %call85)
  %152 = bitcast %struct._GTypeInstance* %call86 to %struct._GtkTable*
  %153 = load i32, i32* %row, align 4
  %inc87 = add nsw i32 %153, 1
  store i32 %inc87, i32* %row, align 4
  %154 = load %struct.SELVALS*, %struct.SELVALS** %sels.addr, align 8
  %filter_secondary_surround = getelementptr inbounds %struct.SELVALS, %struct.SELVALS* %154, i32 0, i32 9
  %155 = load double, double* %filter_secondary_surround, align 8
  %call88 = call %struct._GtkObject* @gimp_scale_entry_new(%struct._GtkTable* %152, i32 0, i32 %153, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.21, i32 0, i32 0), i32 100, i32 8, double %155, double 3.000000e+00, double 1.000000e+01, double 1.000000e+00, double 1.000000e+00, i32 0, i32 1, double 0.000000e+00, double 0.000000e+00, i8* getelementptr inbounds ([91 x i8], [91 x i8]* @.str.22, i32 0, i32 0), i8* null)
  store %struct._GtkObject* %call88, %struct._GtkObject** %adj, align 8
  %156 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %157 = bitcast %struct._GtkObject* %156 to i8*
  %158 = load %struct.SELVALS*, %struct.SELVALS** %sels.addr, align 8
  %filter_secondary_surround89 = getelementptr inbounds %struct.SELVALS, %struct.SELVALS* %158, i32 0, i32 9
  %159 = bitcast double* %filter_secondary_surround89 to i8*
  %call90 = call i64 @g_signal_connect_data(i8* %157, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, i8*)* @gimp_double_adjustment_update to void ()*), i8* %159, void (i8*, %struct._GClosure*)* null, i32 0)
  %160 = load %struct._GSList*, %struct._GSList** @adjust_widgets, align 8
  %161 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %162 = bitcast %struct._GtkObject* %161 to i8*
  %call91 = call %struct._GSList* @g_slist_append(%struct._GSList* %160, i8* %162)
  store %struct._GSList* %call91, %struct._GSList** @adjust_widgets, align 8
  %163 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %164 = bitcast %struct._GtkObject* %163 to %struct._GTypeInstance*
  %call92 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %164, i64 80)
  %165 = bitcast %struct._GTypeInstance* %call92 to %struct._GObject*
  %call93 = call i8* @def_val(double 3.000000e+00)
  call void @g_object_set_data(%struct._GObject* %165, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i8* %call93)
  %166 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %167 = bitcast %struct._GtkWidget* %166 to %struct._GTypeInstance*
  %call94 = call i64 @gtk_table_get_type() #5
  %call95 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %167, i64 %call94)
  %168 = bitcast %struct._GTypeInstance* %call95 to %struct._GtkTable*
  %169 = load i32, i32* %row, align 4
  %inc96 = add nsw i32 %169, 1
  store i32 %inc96, i32* %row, align 4
  %170 = load %struct.SELVALS*, %struct.SELVALS** %sels.addr, align 8
  %filter_surround = getelementptr inbounds %struct.SELVALS, %struct.SELVALS* %170, i32 0, i32 10
  %171 = load double, double* %filter_surround, align 8
  %call97 = call %struct._GtkObject* @gimp_scale_entry_new(%struct._GtkTable* %168, i32 0, i32 %169, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.23, i32 0, i32 0), i32 100, i32 8, double %171, double 2.000000e+00, double 1.000000e+01, double 1.000000e+00, double 1.000000e+00, i32 0, i32 1, double 0.000000e+00, double 0.000000e+00, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.24, i32 0, i32 0), i8* null)
  store %struct._GtkObject* %call97, %struct._GtkObject** %adj, align 8
  %172 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %173 = bitcast %struct._GtkObject* %172 to i8*
  %174 = load %struct.SELVALS*, %struct.SELVALS** %sels.addr, align 8
  %filter_surround98 = getelementptr inbounds %struct.SELVALS, %struct.SELVALS* %174, i32 0, i32 10
  %175 = bitcast double* %filter_surround98 to i8*
  %call99 = call i64 @g_signal_connect_data(i8* %173, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, i8*)* @gimp_double_adjustment_update to void ()*), i8* %175, void (i8*, %struct._GClosure*)* null, i32 0)
  %176 = load %struct._GSList*, %struct._GSList** @adjust_widgets, align 8
  %177 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %178 = bitcast %struct._GtkObject* %177 to i8*
  %call100 = call %struct._GSList* @g_slist_append(%struct._GSList* %176, i8* %178)
  store %struct._GSList* %call100, %struct._GSList** @adjust_widgets, align 8
  %179 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %180 = bitcast %struct._GtkObject* %179 to %struct._GTypeInstance*
  %call101 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %180, i64 80)
  %181 = bitcast %struct._GTypeInstance* %call101 to %struct._GObject*
  %call102 = call i8* @def_val(double 2.000000e+00)
  call void @g_object_set_data(%struct._GObject* %181, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i8* %call102)
  %call103 = call %struct._GtkWidget* @gtk_check_button_new_with_label(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.25, i32 0, i32 0))
  store %struct._GtkWidget* %call103, %struct._GtkWidget** %check, align 8
  %182 = load %struct._GtkWidget*, %struct._GtkWidget** %check, align 8
  %183 = bitcast %struct._GtkWidget* %182 to %struct._GTypeInstance*
  %call104 = call i64 @gtk_toggle_button_get_type() #5
  %call105 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %183, i64 %call104)
  %184 = bitcast %struct._GTypeInstance* %call105 to %struct._GtkToggleButton*
  %185 = load %struct.SELVALS*, %struct.SELVALS** %sels.addr, align 8
  %keep_knees = getelementptr inbounds %struct.SELVALS, %struct.SELVALS* %185, i32 0, i32 11
  %186 = load i32, i32* %keep_knees, align 4
  call void @gtk_toggle_button_set_active(%struct._GtkToggleButton* %184, i32 %186)
  %187 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %188 = bitcast %struct._GtkWidget* %187 to %struct._GTypeInstance*
  %call106 = call i64 @gtk_table_get_type() #5
  %call107 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %188, i64 %call106)
  %189 = bitcast %struct._GTypeInstance* %call107 to %struct._GtkTable*
  %190 = load %struct._GtkWidget*, %struct._GtkWidget** %check, align 8
  %191 = load i32, i32* %row, align 4
  %192 = load i32, i32* %row, align 4
  %add = add nsw i32 %192, 1
  call void @gtk_table_attach(%struct._GtkTable* %189, %struct._GtkWidget* %190, i32 1, i32 3, i32 %191, i32 %add, i32 5, i32 5, i32 0, i32 0)
  %193 = load %struct._GtkWidget*, %struct._GtkWidget** %check, align 8
  %194 = bitcast %struct._GtkWidget* %193 to %struct._GTypeInstance*
  %call108 = call i64 @gtk_widget_get_type() #5
  %call109 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %194, i64 %call108)
  %195 = bitcast %struct._GTypeInstance* %call109 to %struct._GtkWidget*
  call void @gimp_help_set_help_data(%struct._GtkWidget* %195, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.26, i32 0, i32 0), i8* null)
  %196 = load %struct._GtkWidget*, %struct._GtkWidget** %check, align 8
  %197 = bitcast %struct._GtkWidget* %196 to i8*
  %198 = load %struct.SELVALS*, %struct.SELVALS** %sels.addr, align 8
  %keep_knees110 = getelementptr inbounds %struct.SELVALS, %struct.SELVALS* %198, i32 0, i32 11
  %199 = bitcast i32* %keep_knees110 to i8*
  %call111 = call i64 @g_signal_connect_data(i8* %197, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.27, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i8*)* @gimp_toggle_button_update to void ()*), i8* %199, void (i8*, %struct._GClosure*)* null, i32 0)
  %200 = load %struct._GtkWidget*, %struct._GtkWidget** %check, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %200)
  %201 = load %struct._GSList*, %struct._GSList** @adjust_widgets, align 8
  %202 = load %struct._GtkWidget*, %struct._GtkWidget** %check, align 8
  %203 = bitcast %struct._GtkWidget* %202 to i8*
  %call112 = call %struct._GSList* @g_slist_append(%struct._GSList* %201, i8* %203)
  store %struct._GSList* %call112, %struct._GSList** @adjust_widgets, align 8
  %204 = load %struct._GtkWidget*, %struct._GtkWidget** %check, align 8
  %205 = bitcast %struct._GtkWidget* %204 to %struct._GTypeInstance*
  %call113 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %205, i64 80)
  %206 = bitcast %struct._GTypeInstance* %call113 to %struct._GObject*
  %call114 = call i8* @def_val(double 0.000000e+00)
  call void @g_object_set_data(%struct._GObject* %206, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i8* %call114)
  %207 = load i32, i32* %row, align 4
  %inc115 = add nsw i32 %207, 1
  store i32 %inc115, i32* %row, align 4
  %208 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %209 = bitcast %struct._GtkWidget* %208 to %struct._GTypeInstance*
  %call116 = call i64 @gtk_table_get_type() #5
  %call117 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %209, i64 %call116)
  %210 = bitcast %struct._GTypeInstance* %call117 to %struct._GtkTable*
  %211 = load i32, i32* %row, align 4
  %inc118 = add nsw i32 %211, 1
  store i32 %inc118, i32* %row, align 4
  %212 = load %struct.SELVALS*, %struct.SELVALS** %sels.addr, align 8
  %line_reversion_threshold = getelementptr inbounds %struct.SELVALS, %struct.SELVALS* %212, i32 0, i32 12
  %213 = load double, double* %line_reversion_threshold, align 8
  %call119 = call %struct._GtkObject* @gimp_scale_entry_new(%struct._GtkTable* %210, i32 0, i32 %211, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.28, i32 0, i32 0), i32 100, i32 8, double %213, double 1.000000e-02, double 2.000000e-01, double 1.000000e-02, double 1.000000e-02, i32 3, i32 1, double 0.000000e+00, double 0.000000e+00, i8* getelementptr inbounds ([238 x i8], [238 x i8]* @.str.29, i32 0, i32 0), i8* null)
  store %struct._GtkObject* %call119, %struct._GtkObject** %adj, align 8
  %214 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %215 = bitcast %struct._GtkObject* %214 to i8*
  %216 = load %struct.SELVALS*, %struct.SELVALS** %sels.addr, align 8
  %line_reversion_threshold120 = getelementptr inbounds %struct.SELVALS, %struct.SELVALS* %216, i32 0, i32 12
  %217 = bitcast double* %line_reversion_threshold120 to i8*
  %call121 = call i64 @g_signal_connect_data(i8* %215, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, i8*)* @gimp_double_adjustment_update to void ()*), i8* %217, void (i8*, %struct._GClosure*)* null, i32 0)
  %218 = load %struct._GSList*, %struct._GSList** @adjust_widgets, align 8
  %219 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %220 = bitcast %struct._GtkObject* %219 to i8*
  %call122 = call %struct._GSList* @g_slist_append(%struct._GSList* %218, i8* %220)
  store %struct._GSList* %call122, %struct._GSList** @adjust_widgets, align 8
  %221 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %222 = bitcast %struct._GtkObject* %221 to %struct._GTypeInstance*
  %call123 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %222, i64 80)
  %223 = bitcast %struct._GTypeInstance* %call123 to %struct._GObject*
  %call124 = call i8* @def_val(double 1.000000e-02)
  call void @g_object_set_data(%struct._GObject* %223, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i8* %call124)
  %224 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %225 = bitcast %struct._GtkWidget* %224 to %struct._GTypeInstance*
  %call125 = call i64 @gtk_table_get_type() #5
  %call126 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %225, i64 %call125)
  %226 = bitcast %struct._GTypeInstance* %call126 to %struct._GtkTable*
  %227 = load i32, i32* %row, align 4
  %inc127 = add nsw i32 %227, 1
  store i32 %inc127, i32* %row, align 4
  %228 = load %struct.SELVALS*, %struct.SELVALS** %sels.addr, align 8
  %line_threshold = getelementptr inbounds %struct.SELVALS, %struct.SELVALS* %228, i32 0, i32 13
  %229 = load double, double* %line_threshold, align 8
  %call128 = call %struct._GtkObject* @gimp_scale_entry_new(%struct._GtkTable* %226, i32 0, i32 %227, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.30, i32 0, i32 0), i32 100, i32 8, double %229, double 2.000000e-01, double 4.000000e+00, double 1.000000e-01, double 1.000000e-02, i32 2, i32 1, double 0.000000e+00, double 0.000000e+00, i8* getelementptr inbounds ([137 x i8], [137 x i8]* @.str.31, i32 0, i32 0), i8* null)
  store %struct._GtkObject* %call128, %struct._GtkObject** %adj, align 8
  %230 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %231 = bitcast %struct._GtkObject* %230 to i8*
  %232 = load %struct.SELVALS*, %struct.SELVALS** %sels.addr, align 8
  %line_threshold129 = getelementptr inbounds %struct.SELVALS, %struct.SELVALS* %232, i32 0, i32 13
  %233 = bitcast double* %line_threshold129 to i8*
  %call130 = call i64 @g_signal_connect_data(i8* %231, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, i8*)* @gimp_double_adjustment_update to void ()*), i8* %233, void (i8*, %struct._GClosure*)* null, i32 0)
  %234 = load %struct._GSList*, %struct._GSList** @adjust_widgets, align 8
  %235 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %236 = bitcast %struct._GtkObject* %235 to i8*
  %call131 = call %struct._GSList* @g_slist_append(%struct._GSList* %234, i8* %236)
  store %struct._GSList* %call131, %struct._GSList** @adjust_widgets, align 8
  %237 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %238 = bitcast %struct._GtkObject* %237 to %struct._GTypeInstance*
  %call132 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %238, i64 80)
  %239 = bitcast %struct._GTypeInstance* %call132 to %struct._GObject*
  %call133 = call i8* @def_val(double 5.000000e-01)
  call void @g_object_set_data(%struct._GObject* %239, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i8* %call133)
  %240 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %241 = bitcast %struct._GtkWidget* %240 to %struct._GTypeInstance*
  %call134 = call i64 @gtk_table_get_type() #5
  %call135 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %241, i64 %call134)
  %242 = bitcast %struct._GTypeInstance* %call135 to %struct._GtkTable*
  %243 = load i32, i32* %row, align 4
  %inc136 = add nsw i32 %243, 1
  store i32 %inc136, i32* %row, align 4
  %244 = load %struct.SELVALS*, %struct.SELVALS** %sels.addr, align 8
  %reparameterize_improvement = getelementptr inbounds %struct.SELVALS, %struct.SELVALS* %244, i32 0, i32 14
  %245 = load double, double* %reparameterize_improvement, align 8
  %call137 = call %struct._GtkObject* @gimp_scale_entry_new(%struct._GtkTable* %242, i32 0, i32 %243, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.32, i32 0, i32 0), i32 100, i32 8, double %245, double 0.000000e+00, double 1.000000e+00, double 5.000000e-02, double 1.000000e-02, i32 2, i32 1, double 0.000000e+00, double 0.000000e+00, i8* getelementptr inbounds ([143 x i8], [143 x i8]* @.str.33, i32 0, i32 0), i8* null)
  store %struct._GtkObject* %call137, %struct._GtkObject** %adj, align 8
  %246 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %247 = bitcast %struct._GtkObject* %246 to i8*
  %248 = load %struct.SELVALS*, %struct.SELVALS** %sels.addr, align 8
  %reparameterize_improvement138 = getelementptr inbounds %struct.SELVALS, %struct.SELVALS* %248, i32 0, i32 14
  %249 = bitcast double* %reparameterize_improvement138 to i8*
  %call139 = call i64 @g_signal_connect_data(i8* %247, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, i8*)* @gimp_double_adjustment_update to void ()*), i8* %249, void (i8*, %struct._GClosure*)* null, i32 0)
  %250 = load %struct._GSList*, %struct._GSList** @adjust_widgets, align 8
  %251 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %252 = bitcast %struct._GtkObject* %251 to i8*
  %call140 = call %struct._GSList* @g_slist_append(%struct._GSList* %250, i8* %252)
  store %struct._GSList* %call140, %struct._GSList** @adjust_widgets, align 8
  %253 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %254 = bitcast %struct._GtkObject* %253 to %struct._GTypeInstance*
  %call141 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %254, i64 80)
  %255 = bitcast %struct._GTypeInstance* %call141 to %struct._GObject*
  %call142 = call i8* @def_val(double 1.000000e-02)
  call void @g_object_set_data(%struct._GObject* %255, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i8* %call142)
  %256 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %257 = bitcast %struct._GtkWidget* %256 to %struct._GTypeInstance*
  %call143 = call i64 @gtk_table_get_type() #5
  %call144 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %257, i64 %call143)
  %258 = bitcast %struct._GTypeInstance* %call144 to %struct._GtkTable*
  %259 = load i32, i32* %row, align 4
  %inc145 = add nsw i32 %259, 1
  store i32 %inc145, i32* %row, align 4
  %260 = load %struct.SELVALS*, %struct.SELVALS** %sels.addr, align 8
  %reparameterize_threshold = getelementptr inbounds %struct.SELVALS, %struct.SELVALS* %260, i32 0, i32 15
  %261 = load double, double* %reparameterize_threshold, align 8
  %call146 = call %struct._GtkObject* @gimp_scale_entry_new(%struct._GtkTable* %258, i32 0, i32 %259, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.34, i32 0, i32 0), i32 100, i32 8, double %261, double 1.000000e+00, double 5.000000e+01, double 5.000000e-01, double 5.000000e-01, i32 2, i32 1, double 0.000000e+00, double 0.000000e+00, i8* getelementptr inbounds ([346 x i8], [346 x i8]* @.str.35, i32 0, i32 0), i8* null)
  store %struct._GtkObject* %call146, %struct._GtkObject** %adj, align 8
  %262 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %263 = bitcast %struct._GtkObject* %262 to i8*
  %264 = load %struct.SELVALS*, %struct.SELVALS** %sels.addr, align 8
  %reparameterize_threshold147 = getelementptr inbounds %struct.SELVALS, %struct.SELVALS* %264, i32 0, i32 15
  %265 = bitcast double* %reparameterize_threshold147 to i8*
  %call148 = call i64 @g_signal_connect_data(i8* %263, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, i8*)* @gimp_double_adjustment_update to void ()*), i8* %265, void (i8*, %struct._GClosure*)* null, i32 0)
  %266 = load %struct._GSList*, %struct._GSList** @adjust_widgets, align 8
  %267 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %268 = bitcast %struct._GtkObject* %267 to i8*
  %call149 = call %struct._GSList* @g_slist_append(%struct._GSList* %266, i8* %268)
  store %struct._GSList* %call149, %struct._GSList** @adjust_widgets, align 8
  %269 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %270 = bitcast %struct._GtkObject* %269 to %struct._GTypeInstance*
  %call150 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %270, i64 80)
  %271 = bitcast %struct._GTypeInstance* %call150 to %struct._GObject*
  %call151 = call i8* @def_val(double 1.000000e+00)
  call void @g_object_set_data(%struct._GObject* %271, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i8* %call151)
  %272 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %273 = bitcast %struct._GtkWidget* %272 to %struct._GTypeInstance*
  %call152 = call i64 @gtk_table_get_type() #5
  %call153 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %273, i64 %call152)
  %274 = bitcast %struct._GTypeInstance* %call153 to %struct._GtkTable*
  %275 = load i32, i32* %row, align 4
  %inc154 = add nsw i32 %275, 1
  store i32 %inc154, i32* %row, align 4
  %276 = load %struct.SELVALS*, %struct.SELVALS** %sels.addr, align 8
  %subdivide_search = getelementptr inbounds %struct.SELVALS, %struct.SELVALS* %276, i32 0, i32 16
  %277 = load double, double* %subdivide_search, align 8
  %call155 = call %struct._GtkObject* @gimp_scale_entry_new(%struct._GtkTable* %274, i32 0, i32 %275, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.36, i32 0, i32 0), i32 100, i32 8, double %277, double 5.000000e-02, double 1.000000e+00, double 5.000000e-02, double 1.000000e-02, i32 2, i32 1, double 0.000000e+00, double 0.000000e+00, i8* getelementptr inbounds ([91 x i8], [91 x i8]* @.str.37, i32 0, i32 0), i8* null)
  store %struct._GtkObject* %call155, %struct._GtkObject** %adj, align 8
  %278 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %279 = bitcast %struct._GtkObject* %278 to i8*
  %280 = load %struct.SELVALS*, %struct.SELVALS** %sels.addr, align 8
  %subdivide_search156 = getelementptr inbounds %struct.SELVALS, %struct.SELVALS* %280, i32 0, i32 16
  %281 = bitcast double* %subdivide_search156 to i8*
  %call157 = call i64 @g_signal_connect_data(i8* %279, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, i8*)* @gimp_double_adjustment_update to void ()*), i8* %281, void (i8*, %struct._GClosure*)* null, i32 0)
  %282 = load %struct._GSList*, %struct._GSList** @adjust_widgets, align 8
  %283 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %284 = bitcast %struct._GtkObject* %283 to i8*
  %call158 = call %struct._GSList* @g_slist_append(%struct._GSList* %282, i8* %284)
  store %struct._GSList* %call158, %struct._GSList** @adjust_widgets, align 8
  %285 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %286 = bitcast %struct._GtkObject* %285 to %struct._GTypeInstance*
  %call159 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %286, i64 80)
  %287 = bitcast %struct._GTypeInstance* %call159 to %struct._GObject*
  %call160 = call i8* @def_val(double 1.000000e-01)
  call void @g_object_set_data(%struct._GObject* %287, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i8* %call160)
  %288 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %289 = bitcast %struct._GtkWidget* %288 to %struct._GTypeInstance*
  %call161 = call i64 @gtk_table_get_type() #5
  %call162 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %289, i64 %call161)
  %290 = bitcast %struct._GTypeInstance* %call162 to %struct._GtkTable*
  %291 = load i32, i32* %row, align 4
  %inc163 = add nsw i32 %291, 1
  store i32 %inc163, i32* %row, align 4
  %292 = load %struct.SELVALS*, %struct.SELVALS** %sels.addr, align 8
  %subdivide_surround = getelementptr inbounds %struct.SELVALS, %struct.SELVALS* %292, i32 0, i32 17
  %293 = load double, double* %subdivide_surround, align 8
  %call164 = call %struct._GtkObject* @gimp_scale_entry_new(%struct._GtkTable* %290, i32 0, i32 %291, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.38, i32 0, i32 0), i32 100, i32 8, double %293, double 2.000000e+00, double 1.000000e+01, double 1.000000e+00, double 1.000000e+00, i32 0, i32 1, double 0.000000e+00, double 0.000000e+00, i8* getelementptr inbounds ([97 x i8], [97 x i8]* @.str.39, i32 0, i32 0), i8* null)
  store %struct._GtkObject* %call164, %struct._GtkObject** %adj, align 8
  %294 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %295 = bitcast %struct._GtkObject* %294 to i8*
  %296 = load %struct.SELVALS*, %struct.SELVALS** %sels.addr, align 8
  %subdivide_surround165 = getelementptr inbounds %struct.SELVALS, %struct.SELVALS* %296, i32 0, i32 17
  %297 = bitcast double* %subdivide_surround165 to i8*
  %call166 = call i64 @g_signal_connect_data(i8* %295, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, i8*)* @gimp_double_adjustment_update to void ()*), i8* %297, void (i8*, %struct._GClosure*)* null, i32 0)
  %298 = load %struct._GSList*, %struct._GSList** @adjust_widgets, align 8
  %299 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %300 = bitcast %struct._GtkObject* %299 to i8*
  %call167 = call %struct._GSList* @g_slist_append(%struct._GSList* %298, i8* %300)
  store %struct._GSList* %call167, %struct._GSList** @adjust_widgets, align 8
  %301 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %302 = bitcast %struct._GtkObject* %301 to %struct._GTypeInstance*
  %call168 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %302, i64 80)
  %303 = bitcast %struct._GTypeInstance* %call168 to %struct._GObject*
  %call169 = call i8* @def_val(double 4.000000e+00)
  call void @g_object_set_data(%struct._GObject* %303, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i8* %call169)
  %304 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %305 = bitcast %struct._GtkWidget* %304 to %struct._GTypeInstance*
  %call170 = call i64 @gtk_table_get_type() #5
  %call171 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %305, i64 %call170)
  %306 = bitcast %struct._GTypeInstance* %call171 to %struct._GtkTable*
  %307 = load i32, i32* %row, align 4
  %inc172 = add nsw i32 %307, 1
  store i32 %inc172, i32* %row, align 4
  %308 = load %struct.SELVALS*, %struct.SELVALS** %sels.addr, align 8
  %subdivide_threshold = getelementptr inbounds %struct.SELVALS, %struct.SELVALS* %308, i32 0, i32 18
  %309 = load double, double* %subdivide_threshold, align 8
  %call173 = call %struct._GtkObject* @gimp_scale_entry_new(%struct._GtkTable* %306, i32 0, i32 %307, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.40, i32 0, i32 0), i32 100, i32 8, double %309, double 1.000000e-02, double 1.000000e+00, double 1.000000e-02, double 1.000000e-02, i32 2, i32 1, double 0.000000e+00, double 0.000000e+00, i8* getelementptr inbounds ([110 x i8], [110 x i8]* @.str.41, i32 0, i32 0), i8* null)
  store %struct._GtkObject* %call173, %struct._GtkObject** %adj, align 8
  %310 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %311 = bitcast %struct._GtkObject* %310 to i8*
  %312 = load %struct.SELVALS*, %struct.SELVALS** %sels.addr, align 8
  %subdivide_threshold174 = getelementptr inbounds %struct.SELVALS, %struct.SELVALS* %312, i32 0, i32 18
  %313 = bitcast double* %subdivide_threshold174 to i8*
  %call175 = call i64 @g_signal_connect_data(i8* %311, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, i8*)* @gimp_double_adjustment_update to void ()*), i8* %313, void (i8*, %struct._GClosure*)* null, i32 0)
  %314 = load %struct._GSList*, %struct._GSList** @adjust_widgets, align 8
  %315 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %316 = bitcast %struct._GtkObject* %315 to i8*
  %call176 = call %struct._GSList* @g_slist_append(%struct._GSList* %314, i8* %316)
  store %struct._GSList* %call176, %struct._GSList** @adjust_widgets, align 8
  %317 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %318 = bitcast %struct._GtkObject* %317 to %struct._GTypeInstance*
  %call177 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %318, i64 80)
  %319 = bitcast %struct._GTypeInstance* %call177 to %struct._GObject*
  %call178 = call i8* @def_val(double 3.000000e-02)
  call void @g_object_set_data(%struct._GObject* %319, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i8* %call178)
  %320 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %321 = bitcast %struct._GtkWidget* %320 to %struct._GTypeInstance*
  %call179 = call i64 @gtk_table_get_type() #5
  %call180 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %321, i64 %call179)
  %322 = bitcast %struct._GTypeInstance* %call180 to %struct._GtkTable*
  %323 = load i32, i32* %row, align 4
  %inc181 = add nsw i32 %323, 1
  store i32 %inc181, i32* %row, align 4
  %324 = load %struct.SELVALS*, %struct.SELVALS** %sels.addr, align 8
  %tangent_surround = getelementptr inbounds %struct.SELVALS, %struct.SELVALS* %324, i32 0, i32 19
  %325 = load double, double* %tangent_surround, align 8
  %call182 = call %struct._GtkObject* @gimp_scale_entry_new(%struct._GtkTable* %322, i32 0, i32 %323, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.42, i32 0, i32 0), i32 100, i32 8, double %325, double 2.000000e+00, double 1.000000e+01, double 1.000000e+00, double 1.000000e+00, i32 0, i32 1, double 0.000000e+00, double 0.000000e+00, i8* getelementptr inbounds ([117 x i8], [117 x i8]* @.str.43, i32 0, i32 0), i8* null)
  store %struct._GtkObject* %call182, %struct._GtkObject** %adj, align 8
  %326 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %327 = bitcast %struct._GtkObject* %326 to i8*
  %328 = load %struct.SELVALS*, %struct.SELVALS** %sels.addr, align 8
  %tangent_surround183 = getelementptr inbounds %struct.SELVALS, %struct.SELVALS* %328, i32 0, i32 19
  %329 = bitcast double* %tangent_surround183 to i8*
  %call184 = call i64 @g_signal_connect_data(i8* %327, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, i8*)* @gimp_double_adjustment_update to void ()*), i8* %329, void (i8*, %struct._GClosure*)* null, i32 0)
  %330 = load %struct._GSList*, %struct._GSList** @adjust_widgets, align 8
  %331 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %332 = bitcast %struct._GtkObject* %331 to i8*
  %call185 = call %struct._GSList* @g_slist_append(%struct._GSList* %330, i8* %332)
  store %struct._GSList* %call185, %struct._GSList** @adjust_widgets, align 8
  %333 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %334 = bitcast %struct._GtkObject* %333 to %struct._GTypeInstance*
  %call186 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %334, i64 80)
  %335 = bitcast %struct._GTypeInstance* %call186 to %struct._GObject*
  %call187 = call i8* @def_val(double 3.000000e+00)
  call void @g_object_set_data(%struct._GObject* %335, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i8* %call187)
  %336 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  ret %struct._GtkWidget* %336
}

declare %struct._GtkWidget* @gtk_table_new(i32, i32, i32) #1

declare void @gtk_table_set_row_spacings(%struct._GtkTable*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_table_get_type() #2

declare void @gtk_table_set_col_spacings(%struct._GtkTable*, i32) #1

declare %struct._GtkObject* @gimp_scale_entry_new(%struct._GtkTable*, i32, i32, i8*, i32, i32, double, double, double, double, double, i32, i32, double, double, i8*, i8*) #1

declare i64 @g_signal_connect_data(i8*, i8*, void ()*, i8*, void (i8*, %struct._GClosure*)*, i32) #1

declare void @gimp_double_adjustment_update(%struct._GtkAdjustment*, i8*) #1

declare %struct._GSList* @g_slist_append(%struct._GSList*, i8*) #1

declare void @g_object_set_data(%struct._GObject*, i8*, i8*) #1

; Function Attrs: nounwind uwtable
define internal i8* @def_val(double %default_value) #0 {
entry:
  %default_value.addr = alloca double, align 8
  %value = alloca double*, align 8
  store double %default_value, double* %default_value.addr, align 8
  %call = call noalias i8* @g_malloc0_n(i64 1, i64 8)
  %0 = bitcast i8* %call to double*
  store double* %0, double** %value, align 8
  %1 = load double, double* %default_value.addr, align 8
  %2 = load double*, double** %value, align 8
  store double %1, double* %2, align 8
  %3 = load double*, double** %value, align 8
  %4 = bitcast double* %3 to i8*
  ret i8* %4
}

declare %struct._GtkWidget* @gtk_check_button_new_with_label(i8*) #1

declare void @gtk_table_attach(%struct._GtkTable*, %struct._GtkWidget*, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare void @gimp_help_set_help_data(%struct._GtkWidget*, i8*, i8*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_widget_get_type() #2

declare void @gimp_toggle_button_update(%struct._GtkWidget*, i8*) #1

declare void @gtk_widget_show(%struct._GtkWidget*) #1

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #4

declare void @g_logv(i8*, i32, i8*, %struct.__va_list_tag*) #1

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #4

declare noalias i8* @g_malloc0_n(i64, i64) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind readnone }
attributes #6 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
