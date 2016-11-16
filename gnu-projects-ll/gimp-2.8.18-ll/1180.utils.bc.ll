; ModuleID = './plug-ins/gimpressionist/utils.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct.smvector = type { double, double, double, double }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct._GError = type { i32, i32, i8* }
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
%struct._GtkTreeModel = type opaque
%struct._GtkTreeSelection = type { %struct._GObject, %struct._GtkTreeView*, i32, i32 (%struct._GtkTreeSelection*, %struct._GtkTreeModel*, %struct._GtkTreePath*, i32, i8*)*, i8*, void (i8*)* }
%struct._GtkTreeView = type { %struct._GtkContainer, %struct._GtkTreeViewPrivate* }
%struct._GtkContainer = type { %struct._GtkWidget, %struct._GtkWidget*, i24 }
%struct._GtkTreeViewPrivate = type opaque
%struct._GtkTreePath = type opaque
%struct._GtkTreeIter = type { i32, i8*, i8*, i8* }
%struct._GtkTreeViewColumn = type { %struct._GtkObject, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GdkDrawable*, %struct._GtkCellEditable*, float, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, %struct._GList*, i32, i32, i32, i32, i16 }
%struct._GtkCellEditable = type opaque
%struct._GDir = type opaque
%struct._GtkListStore = type { %struct._GObject, i32, i8*, i8*, %struct._GList*, i32, i32, i32, i64*, i32, i32 (%struct._GtkTreeModel*, %struct._GtkTreeIter*, %struct._GtkTreeIter*, i8*)*, i8*, void (i8*)*, i8 }
%struct._GtkBox = type { %struct._GtkContainer, %struct._GList*, i16, i8 }
%struct._GClosure = type { i32, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i8*, %struct._GClosureNotifyData* }
%struct._GValue = type { i64, [2 x %union.anon] }
%union.anon = type { i64 }
%struct._GClosureNotifyData = type { i8*, {}* }
%struct._GtkRadioButton = type { %struct._GtkCheckButton, %struct._GSList* }
%struct._GtkCheckButton = type { %struct._GtkToggleButton }
%struct._GtkToggleButton = type { %struct._GtkButton, i8 }
%struct._GtkButton = type { %struct._GtkBin, %struct._GdkDrawable*, i8*, i32, i16 }
%struct._GtkBin = type { %struct._GtkContainer, %struct._GtkWidget* }

@.str = private unnamed_addr constant [13 x i8] c"HUH? x = %f\0A\00", align 1
@parsepath_cached_path = internal global %struct._GList* null, align 8
@.str.1 = private unnamed_addr constant [20 x i8] c"gimpressionist-path\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"gimprc\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"gimpressionist\00", align 1
@.str.4 = private unnamed_addr constant [74 x i8] c"No %s in gimprc:\0AYou need to add an entry like\0A(%s \22%s\22)\0Ato your %s file.\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"gflare-path\00", align 1
@__func__.findfile = private unnamed_addr constant [9 x i8] c"findfile\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"fn != NULL\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"clicked\00", align 1

; Function Attrs: nounwind uwtable
define double @dist(double %x, double %y, double %end_x, double %end_y) #0 {
entry:
  %x.addr = alloca double, align 8
  %y.addr = alloca double, align 8
  %end_x.addr = alloca double, align 8
  %end_y.addr = alloca double, align 8
  %dx = alloca double, align 8
  %dy = alloca double, align 8
  store double %x, double* %x.addr, align 8
  store double %y, double* %y.addr, align 8
  store double %end_x, double* %end_x.addr, align 8
  store double %end_y, double* %end_y.addr, align 8
  %0 = load double, double* %end_x.addr, align 8
  %1 = load double, double* %x.addr, align 8
  %sub = fsub double %0, %1
  store double %sub, double* %dx, align 8
  %2 = load double, double* %end_y.addr, align 8
  %3 = load double, double* %y.addr, align 8
  %sub1 = fsub double %2, %3
  store double %sub1, double* %dy, align 8
  %4 = load double, double* %dx, align 8
  %5 = load double, double* %dx, align 8
  %mul = fmul double %4, %5
  %6 = load double, double* %dy, align 8
  %7 = load double, double* %dy, align 8
  %mul2 = fmul double %6, %7
  %add = fadd double %mul, %mul2
  %call = call double @sqrt(double %add) #5
  ret double %call
}

; Function Attrs: nounwind
declare double @sqrt(double) #1

; Function Attrs: nounwind uwtable
define double @getsiz_proto(double %x, double %y, i32 %n, %struct.smvector* %vec, double %smstrexp, i32 %voronoi) #0 {
entry:
  %x.addr = alloca double, align 8
  %y.addr = alloca double, align 8
  %n.addr = alloca i32, align 4
  %vec.addr = alloca %struct.smvector*, align 8
  %smstrexp.addr = alloca double, align 8
  %voronoi.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %sum = alloca double, align 8
  %ssum = alloca double, align 8
  %dst = alloca double, align 8
  %first = alloca i32, align 4
  %last = alloca i32, align 4
  %bestdist = alloca double, align 8
  %s = alloca double, align 8
  store double %x, double* %x.addr, align 8
  store double %y, double* %y.addr, align 8
  store i32 %n, i32* %n.addr, align 4
  store %struct.smvector* %vec, %struct.smvector** %vec.addr, align 8
  store double %smstrexp, double* %smstrexp.addr, align 8
  store i32 %voronoi, i32* %voronoi.addr, align 4
  store i32 0, i32* %first, align 4
  %0 = load double, double* %x.addr, align 8
  %cmp = fcmp olt double %0, 0.000000e+00
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load double, double* %x.addr, align 8
  %cmp1 = fcmp ogt double %1, 1.000000e+00
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %2 = load double, double* %x.addr, align 8
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), double %2)
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false
  %3 = load i32, i32* %voronoi.addr, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %if.end
  store double -1.000000e+00, double* %bestdist, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.2
  %4 = load i32, i32* %i, align 4
  %5 = load i32, i32* %n.addr, align 4
  %cmp3 = icmp slt i32 %4, %5
  br i1 %cmp3, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load double, double* %x.addr, align 8
  %7 = load double, double* %y.addr, align 8
  %8 = load i32, i32* %i, align 4
  %idxprom = sext i32 %8 to i64
  %9 = load %struct.smvector*, %struct.smvector** %vec.addr, align 8
  %arrayidx = getelementptr inbounds %struct.smvector, %struct.smvector* %9, i64 %idxprom
  %x4 = getelementptr inbounds %struct.smvector, %struct.smvector* %arrayidx, i32 0, i32 0
  %10 = load double, double* %x4, align 8
  %11 = load i32, i32* %i, align 4
  %idxprom5 = sext i32 %11 to i64
  %12 = load %struct.smvector*, %struct.smvector** %vec.addr, align 8
  %arrayidx6 = getelementptr inbounds %struct.smvector, %struct.smvector* %12, i64 %idxprom5
  %y7 = getelementptr inbounds %struct.smvector, %struct.smvector* %arrayidx6, i32 0, i32 1
  %13 = load double, double* %y7, align 8
  %call = call double @dist(double %6, double %7, double %10, double %13)
  store double %call, double* %dst, align 8
  %14 = load double, double* %bestdist, align 8
  %cmp8 = fcmp olt double %14, 0.000000e+00
  br i1 %cmp8, label %if.then.11, label %lor.lhs.false.9

lor.lhs.false.9:                                  ; preds = %for.body
  %15 = load double, double* %dst, align 8
  %16 = load double, double* %bestdist, align 8
  %cmp10 = fcmp olt double %15, %16
  br i1 %cmp10, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %lor.lhs.false.9, %for.body
  %17 = load double, double* %dst, align 8
  store double %17, double* %bestdist, align 8
  %18 = load i32, i32* %i, align 4
  store i32 %18, i32* %first, align 4
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.11, %lor.lhs.false.9
  br label %for.inc

for.inc:                                          ; preds = %if.end.12
  %19 = load i32, i32* %i, align 4
  %inc = add nsw i32 %19, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %20 = load i32, i32* %first, align 4
  %add = add nsw i32 %20, 1
  store i32 %add, i32* %last, align 4
  br label %if.end.13

if.else:                                          ; preds = %if.end
  store i32 0, i32* %first, align 4
  %21 = load i32, i32* %n.addr, align 4
  store i32 %21, i32* %last, align 4
  br label %if.end.13

if.end.13:                                        ; preds = %if.else, %for.end
  store double 0.000000e+00, double* %ssum, align 8
  store double 0.000000e+00, double* %sum, align 8
  %22 = load i32, i32* %first, align 4
  store i32 %22, i32* %i, align 4
  br label %for.cond.14

for.cond.14:                                      ; preds = %for.inc.35, %if.end.13
  %23 = load i32, i32* %i, align 4
  %24 = load i32, i32* %last, align 4
  %cmp15 = icmp slt i32 %23, %24
  br i1 %cmp15, label %for.body.16, label %for.end.37

for.body.16:                                      ; preds = %for.cond.14
  %25 = load i32, i32* %i, align 4
  %idxprom17 = sext i32 %25 to i64
  %26 = load %struct.smvector*, %struct.smvector** %vec.addr, align 8
  %arrayidx18 = getelementptr inbounds %struct.smvector, %struct.smvector* %26, i64 %idxprom17
  %str = getelementptr inbounds %struct.smvector, %struct.smvector* %arrayidx18, i32 0, i32 3
  %27 = load double, double* %str, align 8
  store double %27, double* %s, align 8
  %28 = load double, double* %x.addr, align 8
  %29 = load double, double* %y.addr, align 8
  %30 = load i32, i32* %i, align 4
  %idxprom19 = sext i32 %30 to i64
  %31 = load %struct.smvector*, %struct.smvector** %vec.addr, align 8
  %arrayidx20 = getelementptr inbounds %struct.smvector, %struct.smvector* %31, i64 %idxprom19
  %x21 = getelementptr inbounds %struct.smvector, %struct.smvector* %arrayidx20, i32 0, i32 0
  %32 = load double, double* %x21, align 8
  %33 = load i32, i32* %i, align 4
  %idxprom22 = sext i32 %33 to i64
  %34 = load %struct.smvector*, %struct.smvector** %vec.addr, align 8
  %arrayidx23 = getelementptr inbounds %struct.smvector, %struct.smvector* %34, i64 %idxprom22
  %y24 = getelementptr inbounds %struct.smvector, %struct.smvector* %arrayidx23, i32 0, i32 1
  %35 = load double, double* %y24, align 8
  %call25 = call double @dist(double %28, double %29, double %32, double %35)
  store double %call25, double* %dst, align 8
  %36 = load double, double* %dst, align 8
  %37 = load double, double* %smstrexp.addr, align 8
  %call26 = call double @pow(double %36, double %37) #5
  store double %call26, double* %dst, align 8
  %38 = load double, double* %dst, align 8
  %cmp27 = fcmp olt double %38, 1.000000e-04
  br i1 %cmp27, label %if.then.28, label %if.end.29

if.then.28:                                       ; preds = %for.body.16
  store double 1.000000e-04, double* %dst, align 8
  br label %if.end.29

if.end.29:                                        ; preds = %if.then.28, %for.body.16
  %39 = load double, double* %s, align 8
  %40 = load double, double* %dst, align 8
  %div = fdiv double %39, %40
  store double %div, double* %s, align 8
  %41 = load i32, i32* %i, align 4
  %idxprom30 = sext i32 %41 to i64
  %42 = load %struct.smvector*, %struct.smvector** %vec.addr, align 8
  %arrayidx31 = getelementptr inbounds %struct.smvector, %struct.smvector* %42, i64 %idxprom30
  %siz = getelementptr inbounds %struct.smvector, %struct.smvector* %arrayidx31, i32 0, i32 2
  %43 = load double, double* %siz, align 8
  %44 = load double, double* %s, align 8
  %mul = fmul double %43, %44
  %45 = load double, double* %sum, align 8
  %add32 = fadd double %45, %mul
  store double %add32, double* %sum, align 8
  %46 = load double, double* %dst, align 8
  %div33 = fdiv double 1.000000e+00, %46
  %47 = load double, double* %ssum, align 8
  %add34 = fadd double %47, %div33
  store double %add34, double* %ssum, align 8
  br label %for.inc.35

for.inc.35:                                       ; preds = %if.end.29
  %48 = load i32, i32* %i, align 4
  %inc36 = add nsw i32 %48, 1
  store i32 %inc36, i32* %i, align 4
  br label %for.cond.14

for.end.37:                                       ; preds = %for.cond.14
  %49 = load double, double* %sum, align 8
  %50 = load double, double* %ssum, align 8
  %div38 = fdiv double %49, %50
  %div39 = fdiv double %div38, 1.000000e+02
  store double %div39, double* %sum, align 8
  %51 = load double, double* %sum, align 8
  %cmp40 = fcmp ogt double %51, 1.000000e+00
  br i1 %cmp40, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.end.37
  br label %cond.end.44

cond.false:                                       ; preds = %for.end.37
  %52 = load double, double* %sum, align 8
  %cmp41 = fcmp olt double %52, 0.000000e+00
  br i1 %cmp41, label %cond.true.42, label %cond.false.43

cond.true.42:                                     ; preds = %cond.false
  br label %cond.end

cond.false.43:                                    ; preds = %cond.false
  %53 = load double, double* %sum, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false.43, %cond.true.42
  %cond = phi double [ 0.000000e+00, %cond.true.42 ], [ %53, %cond.false.43 ]
  br label %cond.end.44

cond.end.44:                                      ; preds = %cond.end, %cond.true
  %cond45 = phi double [ 1.000000e+00, %cond.true ], [ %cond, %cond.end ]
  ret double %cond45
}

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

; Function Attrs: nounwind
declare double @pow(double, double) #1

; Function Attrs: nounwind uwtable
define %struct._GList* @parsepath() #0 {
entry:
  %retval = alloca %struct._GList*, align 8
  %rc_path = alloca i8*, align 8
  %path = alloca i8*, align 8
  %gimprc = alloca i8*, align 8
  %full_path = alloca i8*, align 8
  %esc_path = alloca i8*, align 8
  %0 = load %struct._GList*, %struct._GList** @parsepath_cached_path, align 8
  %tobool = icmp ne %struct._GList* %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct._GList*, %struct._GList** @parsepath_cached_path, align 8
  store %struct._GList* %1, %struct._GList** %retval
  br label %return

if.end:                                           ; preds = %entry
  %call = call i8* @gimp_gimprc_query(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0))
  store i8* %call, i8** %path, align 8
  %2 = load i8*, i8** %path, align 8
  %tobool1 = icmp ne i8* %2, null
  br i1 %tobool1, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %if.end
  %3 = load i8*, i8** %path, align 8
  %call3 = call noalias i8* @g_filename_from_utf8(i8* %3, i64 -1, i64* null, i64* null, %struct._GError** null)
  store i8* %call3, i8** %rc_path, align 8
  %4 = load i8*, i8** %path, align 8
  call void @g_free(i8* %4)
  br label %if.end.10

if.else:                                          ; preds = %if.end
  %call4 = call noalias i8* @gimp_personal_rc_file(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0))
  store i8* %call4, i8** %gimprc, align 8
  %call5 = call noalias i8* @gimp_config_build_data_path(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i32 0, i32 0))
  store i8* %call5, i8** %full_path, align 8
  %5 = load i8*, i8** %full_path, align 8
  %call6 = call noalias i8* @g_strescape(i8* %5, i8* null)
  store i8* %call6, i8** %esc_path, align 8
  %call7 = call i8* @gettext(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.4, i32 0, i32 0)) #5
  %6 = load i8*, i8** %esc_path, align 8
  %7 = load i8*, i8** %gimprc, align 8
  %call8 = call i8* @gimp_filename_to_utf8(i8* %7)
  call void (i8*, ...) @g_message(i8* %call7, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i32 0, i32 0), i8* %6, i8* %call8)
  %8 = load i8*, i8** %gimprc, align 8
  call void @g_free(i8* %8)
  %9 = load i8*, i8** %esc_path, align 8
  call void @g_free(i8* %9)
  %10 = load i8*, i8** %full_path, align 8
  %call9 = call noalias i8* @gimp_config_path_expand(i8* %10, i32 1, %struct._GError** null)
  store i8* %call9, i8** %rc_path, align 8
  %11 = load i8*, i8** %full_path, align 8
  call void @g_free(i8* %11)
  br label %if.end.10

if.end.10:                                        ; preds = %if.else, %if.then.2
  %12 = load i8*, i8** %rc_path, align 8
  %call11 = call %struct._GList* @gimp_path_parse(i8* %12, i32 256, i32 0, %struct._GList** null)
  store %struct._GList* %call11, %struct._GList** @parsepath_cached_path, align 8
  %13 = load i8*, i8** %rc_path, align 8
  call void @g_free(i8* %13)
  %14 = load %struct._GList*, %struct._GList** @parsepath_cached_path, align 8
  store %struct._GList* %14, %struct._GList** %retval
  br label %return

return:                                           ; preds = %if.end.10, %if.then
  %15 = load %struct._GList*, %struct._GList** %retval
  ret %struct._GList* %15
}

declare i8* @gimp_gimprc_query(i8*) #2

declare noalias i8* @g_filename_from_utf8(i8*, i64, i64*, i64*, %struct._GError**) #2

declare void @g_free(i8*) #2

declare noalias i8* @gimp_personal_rc_file(i8*) #2

declare noalias i8* @gimp_config_build_data_path(i8*) #2

declare noalias i8* @g_strescape(i8*, i8*) #2

; Function Attrs: nounwind uwtable
define internal void @g_message(i8* %format, ...) #0 {
entry:
  %format.addr = alloca i8*, align 8
  %args = alloca [1 x %struct.__va_list_tag], align 16
  store i8* %format, i8** %format.addr, align 8
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay1)
  %0 = load i8*, i8** %format.addr, align 8
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  call void @g_logv(i8* null, i32 32, i8* %0, %struct.__va_list_tag* %arraydecay2)
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*
  call void @llvm.va_end(i8* %arraydecay34)
  ret void
}

; Function Attrs: nounwind
declare i8* @gettext(i8*) #1

declare i8* @gimp_filename_to_utf8(i8*) #2

declare noalias i8* @gimp_config_path_expand(i8*, i32, %struct._GError**) #2

declare %struct._GList* @gimp_path_parse(i8*, i32, i32, %struct._GList**) #2

; Function Attrs: nounwind uwtable
define void @free_parsepath_cache() #0 {
entry:
  %0 = load %struct._GList*, %struct._GList** @parsepath_cached_path, align 8
  %cmp = icmp ne %struct._GList* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._GList*, %struct._GList** @parsepath_cached_path, align 8
  call void @g_list_free_full(%struct._GList* %1, void (i8*)* @g_free)
  store %struct._GList* null, %struct._GList** @parsepath_cached_path, align 8
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

declare void @g_list_free_full(%struct._GList*, void (i8*)*) #2

; Function Attrs: nounwind uwtable
define i8* @findfile(i8* %fn) #0 {
entry:
  %retval = alloca i8*, align 8
  %fn.addr = alloca i8*, align 8
  %rcpath = alloca %struct._GList*, align 8
  %thispath = alloca %struct._GList*, align 8
  %filename = alloca i8*, align 8
  store i8* %fn, i8** %fn.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load i8*, i8** %fn.addr, align 8
  %cmp = icmp ne i8* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @__func__.findfile, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i32 0, i32 0))
  store i8* null, i8** %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %call = call %struct._GList* @parsepath()
  store %struct._GList* %call, %struct._GList** %rcpath, align 8
  %1 = load %struct._GList*, %struct._GList** %rcpath, align 8
  store %struct._GList* %1, %struct._GList** %thispath, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.5, %do.end
  %2 = load %struct._GList*, %struct._GList** %thispath, align 8
  %tobool = icmp ne %struct._GList* %2, null
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load %struct._GList*, %struct._GList** %thispath, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %3, i32 0, i32 0
  %4 = load i8*, i8** %data, align 8
  %5 = load i8*, i8** %fn.addr, align 8
  %call1 = call noalias i8* (i8*, ...) @g_build_filename(i8* %4, i8* %5, i8* null)
  store i8* %call1, i8** %filename, align 8
  %6 = load i8*, i8** %filename, align 8
  %call2 = call i32 @g_file_test(i8* %6, i32 1)
  %tobool3 = icmp ne i32 %call2, 0
  br i1 %tobool3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %while.body
  %7 = load i8*, i8** %filename, align 8
  store i8* %7, i8** %retval
  br label %return

if.end.5:                                         ; preds = %while.body
  %8 = load i8*, i8** %filename, align 8
  call void @g_free(i8* %8)
  %9 = load %struct._GList*, %struct._GList** %thispath, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %9, i32 0, i32 1
  %10 = load %struct._GList*, %struct._GList** %next, align 8
  store %struct._GList* %10, %struct._GList** %thispath, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store i8* null, i8** %retval
  br label %return

return:                                           ; preds = %while.end, %if.then.4, %if.else
  %11 = load i8*, i8** %retval
  ret i8* %11
}

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #2

declare noalias i8* @g_build_filename(i8*, ...) #2

declare i32 @g_file_test(i8*, i32) #2

; Function Attrs: nounwind uwtable
define void @reselect(%struct._GtkWidget* %view, i8* %fname) #0 {
entry:
  %view.addr = alloca %struct._GtkWidget*, align 8
  %fname.addr = alloca i8*, align 8
  %model = alloca %struct._GtkTreeModel*, align 8
  %selection = alloca %struct._GtkTreeSelection*, align 8
  %iter = alloca %struct._GtkTreeIter, align 8
  %tmpfile = alloca i8*, align 8
  %quit = alloca i32, align 4
  %name = alloca i8*, align 8
  %tree_path = alloca %struct._GtkTreePath*, align 8
  store %struct._GtkWidget* %view, %struct._GtkWidget** %view.addr, align 8
  store i8* %fname, i8** %fname.addr, align 8
  %0 = load i8*, i8** %fname.addr, align 8
  %call = call i8* @strrchr(i8* %0, i32 47) #6
  store i8* %call, i8** %tmpfile, align 8
  %1 = load i8*, i8** %tmpfile, align 8
  %tobool = icmp ne i8* %1, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %tmpfile, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %2, i32 1
  store i8* %incdec.ptr, i8** %tmpfile, align 8
  store i8* %incdec.ptr, i8** %fname.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load %struct._GtkWidget*, %struct._GtkWidget** %view.addr, align 8
  %4 = bitcast %struct._GtkWidget* %3 to %struct._GTypeInstance*
  %call1 = call i64 @gtk_tree_view_get_type() #7
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call1)
  %5 = bitcast %struct._GTypeInstance* %call2 to %struct._GtkTreeView*
  %call3 = call %struct._GtkTreeModel* @gtk_tree_view_get_model(%struct._GtkTreeView* %5)
  store %struct._GtkTreeModel* %call3, %struct._GtkTreeModel** %model, align 8
  %6 = load %struct._GtkWidget*, %struct._GtkWidget** %view.addr, align 8
  %7 = bitcast %struct._GtkWidget* %6 to %struct._GTypeInstance*
  %call4 = call i64 @gtk_tree_view_get_type() #7
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 %call4)
  %8 = bitcast %struct._GTypeInstance* %call5 to %struct._GtkTreeView*
  %call6 = call %struct._GtkTreeSelection* @gtk_tree_view_get_selection(%struct._GtkTreeView* %8)
  store %struct._GtkTreeSelection* %call6, %struct._GtkTreeSelection** %selection, align 8
  %9 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model, align 8
  %call7 = call i32 @gtk_tree_model_get_iter_first(%struct._GtkTreeModel* %9, %struct._GtkTreeIter* %iter)
  %tobool8 = icmp ne i32 %call7, 0
  br i1 %tobool8, label %if.then.9, label %if.end.20

if.then.9:                                        ; preds = %if.end
  store i32 0, i32* %quit, align 4
  br label %do.body

do.body:                                          ; preds = %land.end, %if.then.9
  %10 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model, align 8
  call void (%struct._GtkTreeModel*, %struct._GtkTreeIter*, ...) @gtk_tree_model_get(%struct._GtkTreeModel* %10, %struct._GtkTreeIter* %iter, i32 0, i8** %name, i32 -1)
  %11 = load i8*, i8** %name, align 8
  %12 = load i8*, i8** %fname.addr, align 8
  %call10 = call i32 @strcmp(i8* %11, i8* %12) #6
  %tobool11 = icmp ne i32 %call10, 0
  br i1 %tobool11, label %if.end.16, label %if.then.12

if.then.12:                                       ; preds = %do.body
  %13 = load %struct._GtkTreeSelection*, %struct._GtkTreeSelection** %selection, align 8
  call void @gtk_tree_selection_select_iter(%struct._GtkTreeSelection* %13, %struct._GtkTreeIter* %iter)
  %14 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model, align 8
  %call13 = call %struct._GtkTreePath* @gtk_tree_model_get_path(%struct._GtkTreeModel* %14, %struct._GtkTreeIter* %iter)
  store %struct._GtkTreePath* %call13, %struct._GtkTreePath** %tree_path, align 8
  %15 = load %struct._GtkWidget*, %struct._GtkWidget** %view.addr, align 8
  %16 = bitcast %struct._GtkWidget* %15 to %struct._GTypeInstance*
  %call14 = call i64 @gtk_tree_view_get_type() #7
  %call15 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %16, i64 %call14)
  %17 = bitcast %struct._GTypeInstance* %call15 to %struct._GtkTreeView*
  %18 = load %struct._GtkTreePath*, %struct._GtkTreePath** %tree_path, align 8
  call void @gtk_tree_view_scroll_to_cell(%struct._GtkTreeView* %17, %struct._GtkTreePath* %18, %struct._GtkTreeViewColumn* null, i32 1, float 5.000000e-01, float 5.000000e-01)
  %19 = load %struct._GtkTreePath*, %struct._GtkTreePath** %tree_path, align 8
  call void @gtk_tree_path_free(%struct._GtkTreePath* %19)
  store i32 1, i32* %quit, align 4
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.12, %do.body
  %20 = load i8*, i8** %name, align 8
  call void @g_free(i8* %20)
  br label %do.cond

do.cond:                                          ; preds = %if.end.16
  %21 = load i32, i32* %quit, align 4
  %tobool17 = icmp ne i32 %21, 0
  br i1 %tobool17, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %do.cond
  %22 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model, align 8
  %call18 = call i32 @gtk_tree_model_iter_next(%struct._GtkTreeModel* %22, %struct._GtkTreeIter* %iter)
  %tobool19 = icmp ne i32 %call18, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %do.cond
  %23 = phi i1 [ false, %do.cond ], [ %tobool19, %land.rhs ]
  br i1 %23, label %do.body, label %do.end

do.end:                                           ; preds = %land.end
  br label %if.end.20

if.end.20:                                        ; preds = %do.end, %if.end
  ret void
}

; Function Attrs: nounwind readonly
declare i8* @strrchr(i8*, i32) #3

declare %struct._GtkTreeModel* @gtk_tree_view_get_model(%struct._GtkTreeView*) #2

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #2

; Function Attrs: nounwind readnone
declare i64 @gtk_tree_view_get_type() #4

declare %struct._GtkTreeSelection* @gtk_tree_view_get_selection(%struct._GtkTreeView*) #2

declare i32 @gtk_tree_model_get_iter_first(%struct._GtkTreeModel*, %struct._GtkTreeIter*) #2

declare void @gtk_tree_model_get(%struct._GtkTreeModel*, %struct._GtkTreeIter*, ...) #2

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #3

declare void @gtk_tree_selection_select_iter(%struct._GtkTreeSelection*, %struct._GtkTreeIter*) #2

declare %struct._GtkTreePath* @gtk_tree_model_get_path(%struct._GtkTreeModel*, %struct._GtkTreeIter*) #2

declare void @gtk_tree_view_scroll_to_cell(%struct._GtkTreeView*, %struct._GtkTreePath*, %struct._GtkTreeViewColumn*, i32, float, float) #2

declare void @gtk_tree_path_free(%struct._GtkTreePath*) #2

declare i32 @gtk_tree_model_iter_next(%struct._GtkTreeModel*, %struct._GtkTreeIter*) #2

; Function Attrs: nounwind uwtable
define void @readdirintolist_extended(i8* %subdir, %struct._GtkWidget* %view, i8* %selected, i32 %with_filename_column, i8* (i8*, i8*, i8*)* %get_object_name_cb, i8* %context) #0 {
entry:
  %subdir.addr = alloca i8*, align 8
  %view.addr = alloca %struct._GtkWidget*, align 8
  %selected.addr = alloca i8*, align 8
  %with_filename_column.addr = alloca i32, align 4
  %get_object_name_cb.addr = alloca i8* (i8*, i8*, i8*)*, align 8
  %context.addr = alloca i8*, align 8
  %tmpdir = alloca i8*, align 8
  %thispath = alloca %struct._GList*, align 8
  store i8* %subdir, i8** %subdir.addr, align 8
  store %struct._GtkWidget* %view, %struct._GtkWidget** %view.addr, align 8
  store i8* %selected, i8** %selected.addr, align 8
  store i32 %with_filename_column, i32* %with_filename_column.addr, align 4
  store i8* (i8*, i8*, i8*)* %get_object_name_cb, i8* (i8*, i8*, i8*)** %get_object_name_cb.addr, align 8
  store i8* %context, i8** %context.addr, align 8
  %call = call %struct._GList* @parsepath()
  store %struct._GList* %call, %struct._GList** %thispath, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load %struct._GList*, %struct._GList** %thispath, align 8
  %tobool = icmp ne %struct._GList* %0, null
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load %struct._GList*, %struct._GList** %thispath, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %1, i32 0, i32 0
  %2 = load i8*, i8** %data, align 8
  %3 = load i8*, i8** %subdir.addr, align 8
  %call1 = call noalias i8* (i8*, ...) @g_build_filename(i8* %2, i8* %3, i8* null)
  store i8* %call1, i8** %tmpdir, align 8
  %4 = load i8*, i8** %tmpdir, align 8
  %5 = load %struct._GtkWidget*, %struct._GtkWidget** %view.addr, align 8
  %6 = load i8*, i8** %selected.addr, align 8
  %7 = load i32, i32* %with_filename_column.addr, align 4
  %8 = load i8* (i8*, i8*, i8*)*, i8* (i8*, i8*, i8*)** %get_object_name_cb.addr, align 8
  %9 = load i8*, i8** %context.addr, align 8
  call void @readdirintolist_real(i8* %4, %struct._GtkWidget* %5, i8* %6, i32 %7, i8* (i8*, i8*, i8*)* %8, i8* %9)
  %10 = load i8*, i8** %tmpdir, align 8
  call void @g_free(i8* %10)
  %11 = load %struct._GList*, %struct._GList** %thispath, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %11, i32 0, i32 1
  %12 = load %struct._GList*, %struct._GList** %next, align 8
  store %struct._GList* %12, %struct._GList** %thispath, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @readdirintolist_real(i8* %subdir, %struct._GtkWidget* %view, i8* %selected, i32 %with_filename_column, i8* (i8*, i8*, i8*)* %get_object_name_cb, i8* %context) #0 {
entry:
  %subdir.addr = alloca i8*, align 8
  %view.addr = alloca %struct._GtkWidget*, align 8
  %selected.addr = alloca i8*, align 8
  %with_filename_column.addr = alloca i32, align 4
  %get_object_name_cb.addr = alloca i8* (i8*, i8*, i8*)*, align 8
  %context.addr = alloca i8*, align 8
  %fpath = alloca i8*, align 8
  %de = alloca i8*, align 8
  %dir = alloca %struct._GDir*, align 8
  %flist = alloca %struct._GList*, align 8
  %iter = alloca %struct._GtkTreeIter, align 8
  %store = alloca %struct._GtkListStore*, align 8
  %selection = alloca %struct._GtkTreeSelection*, align 8
  %nsel = alloca i8*, align 8
  %file_exists = alloca i32, align 4
  %object_name = alloca i8*, align 8
  store i8* %subdir, i8** %subdir.addr, align 8
  store %struct._GtkWidget* %view, %struct._GtkWidget** %view.addr, align 8
  store i8* %selected, i8** %selected.addr, align 8
  store i32 %with_filename_column, i32* %with_filename_column.addr, align 4
  store i8* (i8*, i8*, i8*)* %get_object_name_cb, i8* (i8*, i8*, i8*)** %get_object_name_cb.addr, align 8
  store i8* %context, i8** %context.addr, align 8
  store %struct._GList* null, %struct._GList** %flist, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %view.addr, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call = call i64 @gtk_tree_view_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkTreeView*
  %call2 = call %struct._GtkTreeModel* @gtk_tree_view_get_model(%struct._GtkTreeView* %2)
  %3 = bitcast %struct._GtkTreeModel* %call2 to %struct._GTypeInstance*
  %call3 = call i64 @gtk_list_store_get_type() #7
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %3, i64 %call3)
  %4 = bitcast %struct._GTypeInstance* %call4 to %struct._GtkListStore*
  store %struct._GtkListStore* %4, %struct._GtkListStore** %store, align 8
  %5 = load i8*, i8** %selected.addr, align 8
  %tobool = icmp ne i8* %5, null
  br i1 %tobool, label %if.then, label %if.end.11

if.then:                                          ; preds = %entry
  %6 = load i8*, i8** %selected.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %6, i64 0
  %7 = load i8, i8* %arrayidx, align 1
  %tobool5 = icmp ne i8 %7, 0
  br i1 %tobool5, label %if.else, label %if.then.6

if.then.6:                                        ; preds = %if.then
  store i8* null, i8** %selected.addr, align 8
  br label %if.end.10

if.else:                                          ; preds = %if.then
  %8 = load i8*, i8** %selected.addr, align 8
  %call7 = call i8* @strrchr(i8* %8, i32 47) #6
  store i8* %call7, i8** %nsel, align 8
  %9 = load i8*, i8** %nsel, align 8
  %tobool8 = icmp ne i8* %9, null
  br i1 %tobool8, label %if.then.9, label %if.end

if.then.9:                                        ; preds = %if.else
  %10 = load i8*, i8** %nsel, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %10, i32 1
  store i8* %incdec.ptr, i8** %nsel, align 8
  store i8* %incdec.ptr, i8** %selected.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.9, %if.else
  br label %if.end.10

if.end.10:                                        ; preds = %if.end, %if.then.6
  br label %if.end.11

if.end.11:                                        ; preds = %if.end.10, %entry
  %11 = load i8*, i8** %subdir.addr, align 8
  %call12 = call %struct._GDir* @g_dir_open(i8* %11, i32 0, %struct._GError** null)
  store %struct._GDir* %call12, %struct._GDir** %dir, align 8
  %12 = load %struct._GDir*, %struct._GDir** %dir, align 8
  %tobool13 = icmp ne %struct._GDir* %12, null
  br i1 %tobool13, label %if.end.15, label %if.then.14

if.then.14:                                       ; preds = %if.end.11
  br label %if.end.60

if.end.15:                                        ; preds = %if.end.11
  br label %for.cond

for.cond:                                         ; preds = %if.end.24, %if.then.23, %if.end.15
  %13 = load %struct._GDir*, %struct._GDir** %dir, align 8
  %call16 = call i8* @g_dir_read_name(%struct._GDir* %13)
  store i8* %call16, i8** %de, align 8
  %14 = load i8*, i8** %de, align 8
  %tobool17 = icmp ne i8* %14, null
  br i1 %tobool17, label %if.end.19, label %if.then.18

if.then.18:                                       ; preds = %for.cond
  br label %for.end

if.end.19:                                        ; preds = %for.cond
  %15 = load i8*, i8** %subdir.addr, align 8
  %16 = load i8*, i8** %de, align 8
  %call20 = call noalias i8* (i8*, ...) @g_build_filename(i8* %15, i8* %16, i8* null)
  store i8* %call20, i8** %fpath, align 8
  %17 = load i8*, i8** %fpath, align 8
  %call21 = call i32 @g_file_test(i8* %17, i32 1)
  store i32 %call21, i32* %file_exists, align 4
  %18 = load i8*, i8** %fpath, align 8
  call void @g_free(i8* %18)
  %19 = load i32, i32* %file_exists, align 4
  %tobool22 = icmp ne i32 %19, 0
  br i1 %tobool22, label %if.end.24, label %if.then.23

if.then.23:                                       ; preds = %if.end.19
  br label %for.cond

if.end.24:                                        ; preds = %if.end.19
  %20 = load %struct._GList*, %struct._GList** %flist, align 8
  %21 = load i8*, i8** %de, align 8
  %call25 = call noalias i8* @g_strdup(i8* %21)
  %call26 = call %struct._GList* @g_list_insert_sorted(%struct._GList* %20, i8* %call25, i32 (i8*, i8*)* @g_ascii_strcasecmp)
  store %struct._GList* %call26, %struct._GList** %flist, align 8
  br label %for.cond

for.end:                                          ; preds = %if.then.18
  %22 = load %struct._GDir*, %struct._GDir** %dir, align 8
  call void @g_dir_close(%struct._GDir* %22)
  %23 = load %struct._GtkWidget*, %struct._GtkWidget** %view.addr, align 8
  %24 = bitcast %struct._GtkWidget* %23 to %struct._GTypeInstance*
  %call27 = call i64 @gtk_tree_view_get_type() #7
  %call28 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %24, i64 %call27)
  %25 = bitcast %struct._GTypeInstance* %call28 to %struct._GtkTreeView*
  %call29 = call %struct._GtkTreeSelection* @gtk_tree_view_get_selection(%struct._GtkTreeView* %25)
  store %struct._GtkTreeSelection* %call29, %struct._GtkTreeSelection** %selection, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.48, %for.end
  %26 = load %struct._GList*, %struct._GList** %flist, align 8
  %tobool30 = icmp ne %struct._GList* %26, null
  br i1 %tobool30, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %27 = load %struct._GtkListStore*, %struct._GtkListStore** %store, align 8
  call void @gtk_list_store_append(%struct._GtkListStore* %27, %struct._GtkTreeIter* %iter)
  %28 = load %struct._GtkListStore*, %struct._GtkListStore** %store, align 8
  %29 = load %struct._GList*, %struct._GList** %flist, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %29, i32 0, i32 0
  %30 = load i8*, i8** %data, align 8
  call void (%struct._GtkListStore*, %struct._GtkTreeIter*, ...) @gtk_list_store_set(%struct._GtkListStore* %28, %struct._GtkTreeIter* %iter, i32 0, i8* %30, i32 -1)
  %31 = load i32, i32* %with_filename_column.addr, align 4
  %tobool31 = icmp ne i32 %31, 0
  br i1 %tobool31, label %if.then.32, label %if.end.40

if.then.32:                                       ; preds = %while.body
  %32 = load i8* (i8*, i8*, i8*)*, i8* (i8*, i8*, i8*)** %get_object_name_cb.addr, align 8
  %33 = load i8*, i8** %subdir.addr, align 8
  %34 = load %struct._GList*, %struct._GList** %flist, align 8
  %data33 = getelementptr inbounds %struct._GList, %struct._GList* %34, i32 0, i32 0
  %35 = load i8*, i8** %data33, align 8
  %36 = load i8*, i8** %context.addr, align 8
  %call34 = call i8* %32(i8* %33, i8* %35, i8* %36)
  store i8* %call34, i8** %object_name, align 8
  %37 = load i8*, i8** %object_name, align 8
  %tobool35 = icmp ne i8* %37, null
  br i1 %tobool35, label %if.then.36, label %if.else.37

if.then.36:                                       ; preds = %if.then.32
  %38 = load %struct._GtkListStore*, %struct._GtkListStore** %store, align 8
  %39 = load i8*, i8** %object_name, align 8
  call void (%struct._GtkListStore*, %struct._GtkTreeIter*, ...) @gtk_list_store_set(%struct._GtkListStore* %38, %struct._GtkTreeIter* %iter, i32 1, i8* %39, i32 -1)
  %40 = load i8*, i8** %object_name, align 8
  call void @g_free(i8* %40)
  br label %if.end.39

if.else.37:                                       ; preds = %if.then.32
  %41 = load %struct._GtkListStore*, %struct._GtkListStore** %store, align 8
  %42 = load %struct._GList*, %struct._GList** %flist, align 8
  %data38 = getelementptr inbounds %struct._GList, %struct._GList* %42, i32 0, i32 0
  %43 = load i8*, i8** %data38, align 8
  call void (%struct._GtkListStore*, %struct._GtkTreeIter*, ...) @gtk_list_store_set(%struct._GtkListStore* %41, %struct._GtkTreeIter* %iter, i32 1, i8* %43, i32 -1)
  br label %if.end.39

if.end.39:                                        ; preds = %if.else.37, %if.then.36
  br label %if.end.40

if.end.40:                                        ; preds = %if.end.39, %while.body
  %44 = load i8*, i8** %selected.addr, align 8
  %tobool41 = icmp ne i8* %44, null
  br i1 %tobool41, label %if.then.42, label %if.end.48

if.then.42:                                       ; preds = %if.end.40
  %45 = load %struct._GList*, %struct._GList** %flist, align 8
  %data43 = getelementptr inbounds %struct._GList, %struct._GList* %45, i32 0, i32 0
  %46 = load i8*, i8** %data43, align 8
  %47 = load i8*, i8** %selected.addr, align 8
  %call44 = call i32 @strcmp(i8* %46, i8* %47) #6
  %tobool45 = icmp ne i32 %call44, 0
  br i1 %tobool45, label %if.end.47, label %if.then.46

if.then.46:                                       ; preds = %if.then.42
  %48 = load %struct._GtkTreeSelection*, %struct._GtkTreeSelection** %selection, align 8
  call void @gtk_tree_selection_select_iter(%struct._GtkTreeSelection* %48, %struct._GtkTreeIter* %iter)
  br label %if.end.47

if.end.47:                                        ; preds = %if.then.46, %if.then.42
  br label %if.end.48

if.end.48:                                        ; preds = %if.end.47, %if.end.40
  %49 = load %struct._GList*, %struct._GList** %flist, align 8
  %data49 = getelementptr inbounds %struct._GList, %struct._GList* %49, i32 0, i32 0
  %50 = load i8*, i8** %data49, align 8
  call void @g_free(i8* %50)
  %51 = load %struct._GList*, %struct._GList** %flist, align 8
  %52 = load %struct._GList*, %struct._GList** %flist, align 8
  %data50 = getelementptr inbounds %struct._GList, %struct._GList* %52, i32 0, i32 0
  %53 = load i8*, i8** %data50, align 8
  %call51 = call %struct._GList* @g_list_remove(%struct._GList* %51, i8* %53)
  store %struct._GList* %call51, %struct._GList** %flist, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %54 = load i8*, i8** %selected.addr, align 8
  %tobool52 = icmp ne i8* %54, null
  br i1 %tobool52, label %if.end.60, label %if.then.53

if.then.53:                                       ; preds = %while.end
  %55 = load %struct._GtkListStore*, %struct._GtkListStore** %store, align 8
  %56 = bitcast %struct._GtkListStore* %55 to %struct._GTypeInstance*
  %call54 = call i64 @gtk_tree_model_get_type() #7
  %call55 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %56, i64 %call54)
  %57 = bitcast %struct._GTypeInstance* %call55 to %struct._GtkTreeModel*
  %call56 = call i32 @gtk_tree_model_get_iter_first(%struct._GtkTreeModel* %57, %struct._GtkTreeIter* %iter)
  %tobool57 = icmp ne i32 %call56, 0
  br i1 %tobool57, label %if.then.58, label %if.end.59

if.then.58:                                       ; preds = %if.then.53
  %58 = load %struct._GtkTreeSelection*, %struct._GtkTreeSelection** %selection, align 8
  call void @gtk_tree_selection_select_iter(%struct._GtkTreeSelection* %58, %struct._GtkTreeIter* %iter)
  br label %if.end.59

if.end.59:                                        ; preds = %if.then.58, %if.then.53
  br label %if.end.60

if.end.60:                                        ; preds = %if.then.14, %if.end.59, %while.end
  ret void
}

; Function Attrs: nounwind uwtable
define void @readdirintolist(i8* %subdir, %struct._GtkWidget* %view, i8* %selected) #0 {
entry:
  %subdir.addr = alloca i8*, align 8
  %view.addr = alloca %struct._GtkWidget*, align 8
  %selected.addr = alloca i8*, align 8
  store i8* %subdir, i8** %subdir.addr, align 8
  store %struct._GtkWidget* %view, %struct._GtkWidget** %view.addr, align 8
  store i8* %selected, i8** %selected.addr, align 8
  %0 = load i8*, i8** %subdir.addr, align 8
  %1 = load %struct._GtkWidget*, %struct._GtkWidget** %view.addr, align 8
  %2 = load i8*, i8** %selected.addr, align 8
  call void @readdirintolist_extended(i8* %0, %struct._GtkWidget* %1, i8* %2, i32 0, i8* (i8*, i8*, i8*)* null, i8* null)
  ret void
}

; Function Attrs: nounwind uwtable
define %struct._GtkWidget* @create_radio_button(%struct._GtkWidget* %box, i32 %orient_type, void (%struct._GtkWidget*, i8*)* %callback, i8* %label, i8* %help_string, %struct._GSList** %radio_group, %struct._GtkWidget** %buttons_array) #0 {
entry:
  %box.addr = alloca %struct._GtkWidget*, align 8
  %orient_type.addr = alloca i32, align 4
  %callback.addr = alloca void (%struct._GtkWidget*, i8*)*, align 8
  %label.addr = alloca i8*, align 8
  %help_string.addr = alloca i8*, align 8
  %radio_group.addr = alloca %struct._GSList**, align 8
  %buttons_array.addr = alloca %struct._GtkWidget**, align 8
  %tmpw = alloca %struct._GtkWidget*, align 8
  store %struct._GtkWidget* %box, %struct._GtkWidget** %box.addr, align 8
  store i32 %orient_type, i32* %orient_type.addr, align 4
  store void (%struct._GtkWidget*, i8*)* %callback, void (%struct._GtkWidget*, i8*)** %callback.addr, align 8
  store i8* %label, i8** %label.addr, align 8
  store i8* %help_string, i8** %help_string.addr, align 8
  store %struct._GSList** %radio_group, %struct._GSList*** %radio_group.addr, align 8
  store %struct._GtkWidget** %buttons_array, %struct._GtkWidget*** %buttons_array.addr, align 8
  %0 = load %struct._GSList**, %struct._GSList*** %radio_group.addr, align 8
  %1 = load %struct._GSList*, %struct._GSList** %0, align 8
  %2 = load i8*, i8** %label.addr, align 8
  %call = call %struct._GtkWidget* @gtk_radio_button_new_with_label(%struct._GSList* %1, i8* %2)
  store %struct._GtkWidget* %call, %struct._GtkWidget** %tmpw, align 8
  %3 = load i32, i32* %orient_type.addr, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load %struct._GtkWidget**, %struct._GtkWidget*** %buttons_array.addr, align 8
  %arrayidx = getelementptr inbounds %struct._GtkWidget*, %struct._GtkWidget** %4, i64 %idxprom
  store %struct._GtkWidget* %call, %struct._GtkWidget** %arrayidx, align 8
  %5 = load %struct._GtkWidget*, %struct._GtkWidget** %box.addr, align 8
  %6 = bitcast %struct._GtkWidget* %5 to %struct._GTypeInstance*
  %call1 = call i64 @gtk_box_get_type() #7
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %6, i64 %call1)
  %7 = bitcast %struct._GTypeInstance* %call2 to %struct._GtkBox*
  %8 = load %struct._GtkWidget*, %struct._GtkWidget** %tmpw, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %7, %struct._GtkWidget* %8, i32 0, i32 0, i32 0)
  %9 = load %struct._GtkWidget*, %struct._GtkWidget** %tmpw, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %9)
  %10 = load %struct._GtkWidget*, %struct._GtkWidget** %tmpw, align 8
  %11 = bitcast %struct._GtkWidget* %10 to i8*
  %12 = load void (%struct._GtkWidget*, i8*)*, void (%struct._GtkWidget*, i8*)** %callback.addr, align 8
  %13 = bitcast void (%struct._GtkWidget*, i8*)* %12 to void ()*
  %14 = load i32, i32* %orient_type.addr, align 4
  %conv = sext i32 %14 to i64
  %15 = inttoptr i64 %conv to i8*
  %call3 = call i64 @g_signal_connect_data(i8* %11, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i32 0, i32 0), void ()* %13, i8* %15, void (i8*, %struct._GClosure*)* null, i32 0)
  %16 = load %struct._GtkWidget*, %struct._GtkWidget** %tmpw, align 8
  %17 = load i8*, i8** %help_string.addr, align 8
  call void @gimp_help_set_help_data(%struct._GtkWidget* %16, i8* %17, i8* null)
  %18 = load %struct._GtkWidget*, %struct._GtkWidget** %tmpw, align 8
  %19 = bitcast %struct._GtkWidget* %18 to %struct._GTypeInstance*
  %call4 = call i64 @gtk_radio_button_get_type() #7
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %19, i64 %call4)
  %20 = bitcast %struct._GTypeInstance* %call5 to %struct._GtkRadioButton*
  %call6 = call %struct._GSList* @gtk_radio_button_get_group(%struct._GtkRadioButton* %20)
  %21 = load %struct._GSList**, %struct._GSList*** %radio_group.addr, align 8
  store %struct._GSList* %call6, %struct._GSList** %21, align 8
  %22 = load %struct._GtkWidget*, %struct._GtkWidget** %tmpw, align 8
  ret %struct._GtkWidget* %22
}

declare %struct._GtkWidget* @gtk_radio_button_new_with_label(%struct._GSList*, i8*) #2

declare void @gtk_box_pack_start(%struct._GtkBox*, %struct._GtkWidget*, i32, i32, i32) #2

; Function Attrs: nounwind readnone
declare i64 @gtk_box_get_type() #4

declare void @gtk_widget_show(%struct._GtkWidget*) #2

declare i64 @g_signal_connect_data(i8*, i8*, void ()*, i8*, void (i8*, %struct._GClosure*)*, i32) #2

declare void @gimp_help_set_help_data(%struct._GtkWidget*, i8*, i8*) #2

declare %struct._GSList* @gtk_radio_button_get_group(%struct._GtkRadioButton*) #2

; Function Attrs: nounwind readnone
declare i64 @gtk_radio_button_get_type() #4

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #5

declare void @g_logv(i8*, i32, i8*, %struct.__va_list_tag*) #2

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #5

; Function Attrs: nounwind readnone
declare i64 @gtk_list_store_get_type() #4

declare %struct._GDir* @g_dir_open(i8*, i32, %struct._GError**) #2

declare i8* @g_dir_read_name(%struct._GDir*) #2

declare %struct._GList* @g_list_insert_sorted(%struct._GList*, i8*, i32 (i8*, i8*)*) #2

declare noalias i8* @g_strdup(i8*) #2

declare i32 @g_ascii_strcasecmp(i8*, i8*) #2

declare void @g_dir_close(%struct._GDir*) #2

declare void @gtk_list_store_append(%struct._GtkListStore*, %struct._GtkTreeIter*) #2

declare void @gtk_list_store_set(%struct._GtkListStore*, %struct._GtkTreeIter*, ...) #2

declare %struct._GList* @g_list_remove(%struct._GList*, i8*) #2

; Function Attrs: nounwind readnone
declare i64 @gtk_tree_model_get_type() #4

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nounwind readonly }
attributes #7 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
