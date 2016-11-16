; ModuleID = './plug-ins/gfig/gfig-style.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.GFigContext = type { i32, i32, i32, i32, %struct._GFigObj*, %struct._GfigObject*, %struct._GtkWidget*, %struct._Style, %struct.BrushDesc, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GimpRGB*, %struct._GimpRGB*, i32, i32 }
%struct._GFigObj = type { i8*, i8*, i8*, float, %struct.GfigOpts, %struct._GList*, i32, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget* }
%struct.GfigOpts = type { i32, i32, i32, i32, i32, i32, double, double, double, double, i32 }
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct._GfigObject = type { i32, %struct.GfigObjectClass*, i32, %struct.DobjPoints*, %struct._Style, i32 }
%struct.GfigObjectClass = type { i32, i8*, void (%struct._GfigObject*, %struct._cairo*)*, void (%struct._GfigObject*)*, %struct._GfigObject* (%struct._GfigObject*)*, void (%struct._GdkPoint*)* }
%struct._cairo = type opaque
%struct._GdkPoint = type { i32, i32 }
%struct.DobjPoints = type { %struct.DobjPoints*, %struct._GdkPoint, i32 }
%struct._Style = type { i8*, i8*, i32, i32, i32, i32, double, double, double, i32, double, i8*, i8*, i32, %struct._GimpRGB, %struct._GimpRGB, i32, i32 }
%struct._GimpRGB = type { double, double, double, double }
%struct.BrushDesc = type { i8*, double, i32, i32, i32, i32, i8*, i16, i16, i8* }
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
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct._GString = type { i8*, i64, i64 }
%struct._GimpColorButton = type { %struct._GimpButton, i8*, i32, %struct._GtkWidget*, %struct._GtkWidget*, i8* }
%struct._GimpButton = type { %struct._GtkButton, i32 }
%struct._GtkButton = type { %struct._GtkBin, %struct._GdkDrawable*, i8*, i32, i16 }
%struct._GtkBin = type { %struct._GtkContainer, %struct._GtkWidget* }
%struct._GtkContainer = type { %struct._GtkWidget, %struct._GtkWidget*, i24 }
%struct._GtkToggleButton = type { %struct._GtkButton, i8 }
%struct._GimpBrushSelectButton = type { %struct._GimpSelectButton }
%struct._GimpSelectButton = type { %struct._GtkBox, i8* }
%struct._GtkBox = type { %struct._GtkContainer, %struct._GList*, i16, i8 }
%struct._GimpPatternSelectButton = type { %struct._GimpSelectButton }
%struct._GimpGradientSelectButton = type { %struct._GimpSelectButton }
%struct._GimpIntComboBox = type { %struct._GtkComboBox, i8*, void ()*, void ()*, void ()* }
%struct._GtkComboBox = type { %struct._GtkBin, %struct._GtkComboBoxPrivate* }
%struct._GtkComboBoxPrivate = type opaque

@.str = private unnamed_addr constant [16 x i8] c"<Style %99[^>]>\00", align 1
@gfig_context = external global %struct.GFigContext*, align 8
@.str.1 = private unnamed_addr constant [14 x i8] c"default style\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"Loading style '%s' -- \00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"</Style>\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"Error reading style data\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"BrushName\00", align 1
@.str.6 = private unnamed_addr constant [46 x i8] c"Error loading style: got NULL for brush name.\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"Pattern\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"Gradient\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"Foreground\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"Background\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"FillType\00", align 1
@.str.12 = private unnamed_addr constant [10 x i8] c"PaintType\00", align 1
@.str.13 = private unnamed_addr constant [12 x i8] c"FillOpacity\00", align 1
@.str.14 = private unnamed_addr constant [6 x i8] c"done\0A\00", align 1
@.str.15 = private unnamed_addr constant [8 x i8] c"<Style \00", align 1
@.str.16 = private unnamed_addr constant [32 x i8] c"Error trying to skip style data\00", align 1
@.str.17 = private unnamed_addr constant [26 x i8] c"Loading global styles -- \00", align 1
@.str.18 = private unnamed_addr constant [34 x i8] c"Saving style %s, brush name '%s'\0A\00", align 1
@.str.19 = private unnamed_addr constant [12 x i8] c"<Style %s>\0A\00", align 1
@.str.20 = private unnamed_addr constant [20 x i8] c"BrushName:      %s\0A\00", align 1
@.str.21 = private unnamed_addr constant [50 x i8] c"Error saving style %s: saving NULL for brush name\00", align 1
@.str.22 = private unnamed_addr constant [21 x i8] c"PaintType:       %d\0A\00", align 1
@.str.23 = private unnamed_addr constant [20 x i8] c"FillType:       %d\0A\00", align 1
@.str.24 = private unnamed_addr constant [20 x i8] c"FillOpacity:    %s\0A\00", align 1
@.str.25 = private unnamed_addr constant [20 x i8] c"Pattern:        %s\0A\00", align 1
@.str.26 = private unnamed_addr constant [20 x i8] c"Gradient:       %s\0A\00", align 1
@.str.27 = private unnamed_addr constant [25 x i8] c"Foreground: %s %s %s %s\0A\00", align 1
@.str.28 = private unnamed_addr constant [25 x i8] c"Background: %s %s %s %s\0A\00", align 1
@.str.29 = private unnamed_addr constant [10 x i8] c"</Style>\0A\00", align 1
@.str.30 = private unnamed_addr constant [31 x i8] c"Saving style %s as attributes\0A\00", align 1
@.str.31 = private unnamed_addr constant [16 x i8] c"BrushName=\22%s\22 \00", align 1
@.str.32 = private unnamed_addr constant [26 x i8] c"Foreground=\22%s %s %s %s\22 \00", align 1
@.str.33 = private unnamed_addr constant [26 x i8] c"Background=\22%s %s %s %s\22 \00", align 1
@.str.34 = private unnamed_addr constant [13 x i8] c"FillType=%d \00", align 1
@.str.35 = private unnamed_addr constant [14 x i8] c"PaintType=%d \00", align 1
@.str.36 = private unnamed_addr constant [16 x i8] c"FillOpacity=%s \00", align 1
@.str.37 = private unnamed_addr constant [23 x i8] c"Saving global styles.\0A\00", align 1
@.str.38 = private unnamed_addr constant [46 x i8] c"Setting foreground color from color selector\0A\00", align 1
@.str.39 = private unnamed_addr constant [46 x i8] c"Setting background color from color selector\0A\00", align 1
@.str.40 = private unnamed_addr constant [39 x i8] c"Eror: name is NULL in gfig_style_copy.\00", align 1
@.str.41 = private unnamed_addr constant [30 x i8] c"Copying style %s as style %s\0A\00", align 1
@.str.42 = private unnamed_addr constant [44 x i8] c"Error copying style %s: brush name is NULL.\00", align 1
@.str.43 = private unnamed_addr constant [24 x i8] c"Applying style '%s' -- \00", align 1
@.str.44 = private unnamed_addr constant [55 x i8] c"Style apply: Failed to set brush to '%s' in style '%s'\00", align 1
@.str.45 = private unnamed_addr constant [7 x i8] c"done.\0A\00", align 1
@.str.46 = private unnamed_addr constant [45 x i8] c"Error: name is NULL in gfig_read_gimp_style.\00", align 1
@.str.47 = private unnamed_addr constant [35 x i8] c"Reading Gimp settings as style %s\0A\00", align 1
@.str.48 = private unnamed_addr constant [36 x i8] c"Setting context from style '%s' -- \00", align 1
@.str.49 = private unnamed_addr constant [48 x i8] c"Style from context: Failed to set brush to '%s'\00", align 1
@.str.50 = private unnamed_addr constant [7 x i8] c"object\00", align 1
@.str.51 = private unnamed_addr constant [41 x i8] c"Setting foreground color to %lg %lg %lg\0A\00", align 1
@.str.52 = private unnamed_addr constant [25 x i8] c"Failed to get brush info\00", align 1
@.str.53 = private unnamed_addr constant [25 x i8] c"Parameter '%s' not found\00", align 1
@.str.54 = private unnamed_addr constant [28 x i8] c"%%%lus %%%lus %%%lus %%%lus\00", align 1

; Function Attrs: nounwind uwtable
define i32 @gfig_load_style(%struct._Style* %style, %struct._IO_FILE* %fp) #0 {
entry:
  %retval = alloca i32, align 4
  %style.addr = alloca %struct._Style*, align 8
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %offset = alloca i64, align 8
  %load_buf2 = alloca [256 x i8], align 16
  %style_text = alloca [100 x i8*], align 16
  %nitems = alloca i32, align 4
  %value = alloca i32, align 4
  %k = alloca i32, align 4
  %name = alloca [100 x i8], align 16
  store %struct._Style* %style, %struct._Style** %style.addr, align 8
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8
  store i32 0, i32* %nitems, align 4
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call = call i64 @ftell(%struct._IO_FILE* %0)
  store i64 %call, i64* %offset, align 8
  %arraydecay = getelementptr inbounds [256 x i8], [256 x i8]* %load_buf2, i32 0, i32 0
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call1 = call i8* @get_line(i8* %arraydecay, i32 256, %struct._IO_FILE* %1, i32 0)
  %arraydecay2 = getelementptr inbounds [256 x i8], [256 x i8]* %load_buf2, i32 0, i32 0
  %arraydecay3 = getelementptr inbounds [100 x i8], [100 x i8]* %name, i32 0, i32 0
  %call4 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %arraydecay2, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i32 0, i32 0), i8* %arraydecay3) #5
  %cmp = icmp ne i32 1, %call4
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct._Style*, %struct._Style** %style.addr, align 8
  %3 = load %struct.GFigContext*, %struct.GFigContext** @gfig_context, align 8
  %default_style = getelementptr inbounds %struct.GFigContext, %struct.GFigContext* %3, i32 0, i32 7
  call void @gfig_style_copy(%struct._Style* %2, %struct._Style* %default_style, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0))
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %5 = load i64, i64* %offset, align 8
  %call5 = call i32 @fseek(%struct._IO_FILE* %4, i64 %5, i32 0)
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %6 = load %struct.GFigContext*, %struct.GFigContext** @gfig_context, align 8
  %debug_styles = getelementptr inbounds %struct.GFigContext, %struct.GFigContext* %6, i32 0, i32 0
  %7 = load i32, i32* %debug_styles, align 4
  %tobool = icmp ne i32 %7, 0
  br i1 %tobool, label %if.then.6, label %if.end.8

if.then.6:                                        ; preds = %if.end
  %arraydecay7 = getelementptr inbounds [100 x i8], [100 x i8]* %name, i32 0, i32 0
  call void (i8*, ...) @g_printerr(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i32 0, i32 0), i8* %arraydecay7)
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.6, %if.end
  %arraydecay9 = getelementptr inbounds [100 x i8], [100 x i8]* %name, i32 0, i32 0
  %call10 = call noalias i8* @g_strdup(i8* %arraydecay9)
  %8 = load %struct._Style*, %struct._Style** %style.addr, align 8
  %name11 = getelementptr inbounds %struct._Style, %struct._Style* %8, i32 0, i32 0
  store i8* %call10, i8** %name11, align 8
  br label %while.body

while.body:                                       ; preds = %if.end.8, %if.end.25
  %arraydecay12 = getelementptr inbounds [256 x i8], [256 x i8]* %load_buf2, i32 0, i32 0
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call13 = call i8* @get_line(i8* %arraydecay12, i32 256, %struct._IO_FILE* %9, i32 0)
  %arraydecay14 = getelementptr inbounds [256 x i8], [256 x i8]* %load_buf2, i32 0, i32 0
  %call15 = call i32 @strcmp(i8* %arraydecay14, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i32 0, i32 0)) #6
  %tobool16 = icmp ne i32 %call15, 0
  br i1 %tobool16, label %lor.lhs.false, label %if.then.19

lor.lhs.false:                                    ; preds = %while.body
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call17 = call i32 @feof(%struct._IO_FILE* %10) #5
  %tobool18 = icmp ne i32 %call17, 0
  br i1 %tobool18, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %lor.lhs.false, %while.body
  br label %while.end

if.end.20:                                        ; preds = %lor.lhs.false
  %arraydecay21 = getelementptr inbounds [256 x i8], [256 x i8]* %load_buf2, i32 0, i32 0
  %call22 = call noalias i8* @g_strdup(i8* %arraydecay21)
  %11 = load i32, i32* %nitems, align 4
  %idxprom = sext i32 %11 to i64
  %arrayidx = getelementptr inbounds [100 x i8*], [100 x i8*]* %style_text, i32 0, i64 %idxprom
  store i8* %call22, i8** %arrayidx, align 8
  %12 = load i32, i32* %nitems, align 4
  %inc = add nsw i32 %12, 1
  store i32 %inc, i32* %nitems, align 4
  %13 = load i32, i32* %nitems, align 4
  %cmp23 = icmp sge i32 %13, 100
  br i1 %cmp23, label %if.then.24, label %if.end.25

if.then.24:                                       ; preds = %if.end.20
  br label %while.end

if.end.25:                                        ; preds = %if.end.20
  br label %while.body

while.end:                                        ; preds = %if.then.24, %if.then.19
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call26 = call i32 @feof(%struct._IO_FILE* %14) #5
  %tobool27 = icmp ne i32 %call26, 0
  br i1 %tobool27, label %if.then.30, label %lor.lhs.false.28

lor.lhs.false.28:                                 ; preds = %while.end
  %15 = load i32, i32* %nitems, align 4
  %cmp29 = icmp sge i32 %15, 100
  br i1 %cmp29, label %if.then.30, label %if.end.31

if.then.30:                                       ; preds = %lor.lhs.false.28, %while.end
  call void (i8*, ...) @g_message(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i32 0, i32 0))
  store i32 1, i32* %retval
  br label %return

if.end.31:                                        ; preds = %lor.lhs.false.28
  %arraydecay32 = getelementptr inbounds [100 x i8*], [100 x i8*]* %style_text, i32 0, i32 0
  %16 = load i32, i32* %nitems, align 4
  %17 = load %struct._Style*, %struct._Style** %style.addr, align 8
  %brush_name = getelementptr inbounds %struct._Style, %struct._Style* %17, i32 0, i32 1
  call void @gfig_read_parameter_string(i8** %arraydecay32, i32 %16, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i32 0, i32 0), i8** %brush_name)
  %18 = load %struct._Style*, %struct._Style** %style.addr, align 8
  %brush_name33 = getelementptr inbounds %struct._Style, %struct._Style* %18, i32 0, i32 1
  %19 = load i8*, i8** %brush_name33, align 8
  %cmp34 = icmp eq i8* %19, null
  br i1 %cmp34, label %if.then.35, label %if.end.36

if.then.35:                                       ; preds = %if.end.31
  call void (i8*, ...) @g_message(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.6, i32 0, i32 0))
  br label %if.end.36

if.end.36:                                        ; preds = %if.then.35, %if.end.31
  %arraydecay37 = getelementptr inbounds [100 x i8*], [100 x i8*]* %style_text, i32 0, i32 0
  %20 = load i32, i32* %nitems, align 4
  %21 = load %struct._Style*, %struct._Style** %style.addr, align 8
  %pattern = getelementptr inbounds %struct._Style, %struct._Style* %21, i32 0, i32 11
  call void @gfig_read_parameter_string(i8** %arraydecay37, i32 %20, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i32 0, i32 0), i8** %pattern)
  %arraydecay38 = getelementptr inbounds [100 x i8*], [100 x i8*]* %style_text, i32 0, i32 0
  %22 = load i32, i32* %nitems, align 4
  %23 = load %struct._Style*, %struct._Style** %style.addr, align 8
  %gradient = getelementptr inbounds %struct._Style, %struct._Style* %23, i32 0, i32 12
  call void @gfig_read_parameter_string(i8** %arraydecay38, i32 %22, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i32 0, i32 0), i8** %gradient)
  %arraydecay39 = getelementptr inbounds [100 x i8*], [100 x i8*]* %style_text, i32 0, i32 0
  %24 = load i32, i32* %nitems, align 4
  %25 = load %struct._Style*, %struct._Style** %style.addr, align 8
  %foreground = getelementptr inbounds %struct._Style, %struct._Style* %25, i32 0, i32 14
  call void @gfig_read_parameter_gimp_rgb(i8** %arraydecay39, i32 %24, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i32 0, i32 0), %struct._GimpRGB* %foreground)
  %arraydecay40 = getelementptr inbounds [100 x i8*], [100 x i8*]* %style_text, i32 0, i32 0
  %26 = load i32, i32* %nitems, align 4
  %27 = load %struct._Style*, %struct._Style** %style.addr, align 8
  %background = getelementptr inbounds %struct._Style, %struct._Style* %27, i32 0, i32 15
  call void @gfig_read_parameter_gimp_rgb(i8** %arraydecay40, i32 %26, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i32 0, i32 0), %struct._GimpRGB* %background)
  %arraydecay41 = getelementptr inbounds [100 x i8*], [100 x i8*]* %style_text, i32 0, i32 0
  %28 = load i32, i32* %nitems, align 4
  call void @gfig_read_parameter_int(i8** %arraydecay41, i32 %28, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i32 0, i32 0), i32* %value)
  %29 = load i32, i32* %value, align 4
  %30 = load %struct._Style*, %struct._Style** %style.addr, align 8
  %fill_type = getelementptr inbounds %struct._Style, %struct._Style* %30, i32 0, i32 9
  store i32 %29, i32* %fill_type, align 4
  %arraydecay42 = getelementptr inbounds [100 x i8*], [100 x i8*]* %style_text, i32 0, i32 0
  %31 = load i32, i32* %nitems, align 4
  call void @gfig_read_parameter_int(i8** %arraydecay42, i32 %31, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i32 0, i32 0), i32* %value)
  %32 = load i32, i32* %value, align 4
  %33 = load %struct._Style*, %struct._Style** %style.addr, align 8
  %paint_type = getelementptr inbounds %struct._Style, %struct._Style* %33, i32 0, i32 13
  store i32 %32, i32* %paint_type, align 4
  %arraydecay43 = getelementptr inbounds [100 x i8*], [100 x i8*]* %style_text, i32 0, i32 0
  %34 = load i32, i32* %nitems, align 4
  %35 = load %struct._Style*, %struct._Style** %style.addr, align 8
  %fill_opacity = getelementptr inbounds %struct._Style, %struct._Style* %35, i32 0, i32 10
  call void @gfig_read_parameter_double(i8** %arraydecay43, i32 %34, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.13, i32 0, i32 0), double* %fill_opacity)
  store i32 0, i32* %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.36
  %36 = load i32, i32* %k, align 4
  %37 = load i32, i32* %nitems, align 4
  %cmp44 = icmp slt i32 %36, %37
  br i1 %cmp44, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %38 = load i32, i32* %k, align 4
  %idxprom45 = sext i32 %38 to i64
  %arrayidx46 = getelementptr inbounds [100 x i8*], [100 x i8*]* %style_text, i32 0, i64 %idxprom45
  %39 = load i8*, i8** %arrayidx46, align 8
  call void @g_free(i8* %39)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %40 = load i32, i32* %k, align 4
  %inc47 = add nsw i32 %40, 1
  store i32 %inc47, i32* %k, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %41 = load %struct.GFigContext*, %struct.GFigContext** @gfig_context, align 8
  %debug_styles48 = getelementptr inbounds %struct.GFigContext, %struct.GFigContext* %41, i32 0, i32 0
  %42 = load i32, i32* %debug_styles48, align 4
  %tobool49 = icmp ne i32 %42, 0
  br i1 %tobool49, label %if.then.50, label %if.end.51

if.then.50:                                       ; preds = %for.end
  call void (i8*, ...) @g_printerr(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i32 0, i32 0))
  br label %if.end.51

if.end.51:                                        ; preds = %if.then.50, %for.end
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.51, %if.then.30, %if.then
  %43 = load i32, i32* %retval
  ret i32 %43
}

declare i64 @ftell(%struct._IO_FILE*) #1

declare i8* @get_line(i8*, i32, %struct._IO_FILE*, i32) #1

; Function Attrs: nounwind
declare i32 @__isoc99_sscanf(i8*, i8*, ...) #2

; Function Attrs: nounwind uwtable
define void @gfig_style_copy(%struct._Style* %style1, %struct._Style* %style0, i8* %name) #0 {
entry:
  %style1.addr = alloca %struct._Style*, align 8
  %style0.addr = alloca %struct._Style*, align 8
  %name.addr = alloca i8*, align 8
  store %struct._Style* %style1, %struct._Style** %style1.addr, align 8
  store %struct._Style* %style0, %struct._Style** %style0.addr, align 8
  store i8* %name, i8** %name.addr, align 8
  %0 = load i8*, i8** %name.addr, align 8
  %tobool = icmp ne i8* %0, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %name.addr, align 8
  %call = call noalias i8* @g_strdup(i8* %1)
  %2 = load %struct._Style*, %struct._Style** %style1.addr, align 8
  %name1 = getelementptr inbounds %struct._Style, %struct._Style* %2, i32 0, i32 0
  store i8* %call, i8** %name1, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  call void (i8*, ...) @g_message(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.40, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %3 = load %struct.GFigContext*, %struct.GFigContext** @gfig_context, align 8
  %debug_styles = getelementptr inbounds %struct.GFigContext, %struct.GFigContext* %3, i32 0, i32 0
  %4 = load i32, i32* %debug_styles, align 4
  %tobool2 = icmp ne i32 %4, 0
  br i1 %tobool2, label %if.then.3, label %if.end.5

if.then.3:                                        ; preds = %if.end
  %5 = load %struct._Style*, %struct._Style** %style0.addr, align 8
  %name4 = getelementptr inbounds %struct._Style, %struct._Style* %5, i32 0, i32 0
  %6 = load i8*, i8** %name4, align 8
  %7 = load i8*, i8** %name.addr, align 8
  call void (i8*, ...) @g_printerr(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.41, i32 0, i32 0), i8* %6, i8* %7)
  br label %if.end.5

if.end.5:                                         ; preds = %if.then.3, %if.end
  %8 = load %struct._Style*, %struct._Style** %style1.addr, align 8
  %foreground = getelementptr inbounds %struct._Style, %struct._Style* %8, i32 0, i32 14
  %9 = load %struct._Style*, %struct._Style** %style0.addr, align 8
  %foreground6 = getelementptr inbounds %struct._Style, %struct._Style* %9, i32 0, i32 14
  call void @gfig_rgba_copy(%struct._GimpRGB* %foreground, %struct._GimpRGB* %foreground6)
  %10 = load %struct._Style*, %struct._Style** %style1.addr, align 8
  %background = getelementptr inbounds %struct._Style, %struct._Style* %10, i32 0, i32 15
  %11 = load %struct._Style*, %struct._Style** %style0.addr, align 8
  %background7 = getelementptr inbounds %struct._Style, %struct._Style* %11, i32 0, i32 15
  call void @gfig_rgba_copy(%struct._GimpRGB* %background, %struct._GimpRGB* %background7)
  %12 = load %struct._Style*, %struct._Style** %style0.addr, align 8
  %brush_name = getelementptr inbounds %struct._Style, %struct._Style* %12, i32 0, i32 1
  %13 = load i8*, i8** %brush_name, align 8
  %tobool8 = icmp ne i8* %13, null
  br i1 %tobool8, label %if.end.11, label %if.then.9

if.then.9:                                        ; preds = %if.end.5
  %14 = load %struct._Style*, %struct._Style** %style0.addr, align 8
  %name10 = getelementptr inbounds %struct._Style, %struct._Style* %14, i32 0, i32 0
  %15 = load i8*, i8** %name10, align 8
  call void (i8*, ...) @g_message(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.42, i32 0, i32 0), i8* %15)
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.9, %if.end.5
  %16 = load %struct._Style*, %struct._Style** %style0.addr, align 8
  %brush_name12 = getelementptr inbounds %struct._Style, %struct._Style* %16, i32 0, i32 1
  %17 = load i8*, i8** %brush_name12, align 8
  %call13 = call noalias i8* @g_strdup(i8* %17)
  %18 = load %struct._Style*, %struct._Style** %style1.addr, align 8
  %brush_name14 = getelementptr inbounds %struct._Style, %struct._Style* %18, i32 0, i32 1
  store i8* %call13, i8** %brush_name14, align 8
  %19 = load %struct._Style*, %struct._Style** %style0.addr, align 8
  %gradient = getelementptr inbounds %struct._Style, %struct._Style* %19, i32 0, i32 12
  %20 = load i8*, i8** %gradient, align 8
  %call15 = call noalias i8* @g_strdup(i8* %20)
  %21 = load %struct._Style*, %struct._Style** %style1.addr, align 8
  %gradient16 = getelementptr inbounds %struct._Style, %struct._Style* %21, i32 0, i32 12
  store i8* %call15, i8** %gradient16, align 8
  %22 = load %struct._Style*, %struct._Style** %style0.addr, align 8
  %pattern = getelementptr inbounds %struct._Style, %struct._Style* %22, i32 0, i32 11
  %23 = load i8*, i8** %pattern, align 8
  %call17 = call noalias i8* @g_strdup(i8* %23)
  %24 = load %struct._Style*, %struct._Style** %style1.addr, align 8
  %pattern18 = getelementptr inbounds %struct._Style, %struct._Style* %24, i32 0, i32 11
  store i8* %call17, i8** %pattern18, align 8
  %25 = load %struct._Style*, %struct._Style** %style0.addr, align 8
  %fill_type = getelementptr inbounds %struct._Style, %struct._Style* %25, i32 0, i32 9
  %26 = load i32, i32* %fill_type, align 4
  %27 = load %struct._Style*, %struct._Style** %style1.addr, align 8
  %fill_type19 = getelementptr inbounds %struct._Style, %struct._Style* %27, i32 0, i32 9
  store i32 %26, i32* %fill_type19, align 4
  %28 = load %struct._Style*, %struct._Style** %style0.addr, align 8
  %fill_opacity = getelementptr inbounds %struct._Style, %struct._Style* %28, i32 0, i32 10
  %29 = load double, double* %fill_opacity, align 8
  %30 = load %struct._Style*, %struct._Style** %style1.addr, align 8
  %fill_opacity20 = getelementptr inbounds %struct._Style, %struct._Style* %30, i32 0, i32 10
  store double %29, double* %fill_opacity20, align 8
  %31 = load %struct._Style*, %struct._Style** %style0.addr, align 8
  %paint_type = getelementptr inbounds %struct._Style, %struct._Style* %31, i32 0, i32 13
  %32 = load i32, i32* %paint_type, align 4
  %33 = load %struct._Style*, %struct._Style** %style1.addr, align 8
  %paint_type21 = getelementptr inbounds %struct._Style, %struct._Style* %33, i32 0, i32 13
  store i32 %32, i32* %paint_type21, align 4
  ret void
}

declare i32 @fseek(%struct._IO_FILE*, i64, i32) #1

declare void @g_printerr(i8*, ...) #1

declare noalias i8* @g_strdup(i8*) #1

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #3

; Function Attrs: nounwind
declare i32 @feof(%struct._IO_FILE*) #2

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

; Function Attrs: nounwind uwtable
define internal void @gfig_read_parameter_string(i8** %text, i32 %nitems, i8* %name, i8** %style_entry) #0 {
entry:
  %text.addr = alloca i8**, align 8
  %nitems.addr = alloca i32, align 4
  %name.addr = alloca i8*, align 8
  %style_entry.addr = alloca i8**, align 8
  %n = alloca i32, align 4
  %ptr = alloca i8*, align 8
  %tmpstr = alloca i8*, align 8
  store i8** %text, i8*** %text.addr, align 8
  store i32 %nitems, i32* %nitems.addr, align 4
  store i8* %name, i8** %name.addr, align 8
  store i8** %style_entry, i8*** %style_entry.addr, align 8
  store i32 0, i32* %n, align 4
  %0 = load i8**, i8*** %style_entry.addr, align 8
  store i8* null, i8** %0, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.11, %entry
  %1 = load i32, i32* %n, align 4
  %2 = load i32, i32* %nitems.addr, align 4
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load i32, i32* %n, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load i8**, i8*** %text.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %4, i64 %idxprom
  %5 = load i8*, i8** %arrayidx, align 8
  %call = call i8* @strchr(i8* %5, i32 58) #6
  store i8* %call, i8** %ptr, align 8
  %6 = load i8*, i8** %ptr, align 8
  %tobool = icmp ne i8* %6, null
  br i1 %tobool, label %if.then, label %if.end.11

if.then:                                          ; preds = %while.body
  %7 = load i32, i32* %n, align 4
  %idxprom1 = sext i32 %7 to i64
  %8 = load i8**, i8*** %text.addr, align 8
  %arrayidx2 = getelementptr inbounds i8*, i8** %8, i64 %idxprom1
  %9 = load i8*, i8** %arrayidx2, align 8
  %10 = load i8*, i8** %ptr, align 8
  %11 = load i32, i32* %n, align 4
  %idxprom3 = sext i32 %11 to i64
  %12 = load i8**, i8*** %text.addr, align 8
  %arrayidx4 = getelementptr inbounds i8*, i8** %12, i64 %idxprom3
  %13 = load i8*, i8** %arrayidx4, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %10 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %13 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %call5 = call noalias i8* @g_strndup(i8* %9, i64 %sub.ptr.sub)
  store i8* %call5, i8** %tmpstr, align 8
  %14 = load i8*, i8** %ptr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %14, i32 1
  store i8* %incdec.ptr, i8** %ptr, align 8
  %15 = load i8*, i8** %tmpstr, align 8
  %16 = load i8*, i8** %name.addr, align 8
  %call6 = call i32 @strcmp(i8* %15, i8* %16) #6
  %tobool7 = icmp ne i32 %call6, 0
  br i1 %tobool7, label %if.end, label %if.then.8

if.then.8:                                        ; preds = %if.then
  %17 = load i8*, i8** %ptr, align 8
  %call9 = call i8* @g_strchug(i8* %17)
  %call10 = call noalias i8* @g_strdup(i8* %call9)
  %18 = load i8**, i8*** %style_entry.addr, align 8
  store i8* %call10, i8** %18, align 8
  %19 = load i8*, i8** %tmpstr, align 8
  call void @g_free(i8* %19)
  br label %return

if.end:                                           ; preds = %if.then
  %20 = load i8*, i8** %tmpstr, align 8
  call void @g_free(i8* %20)
  br label %if.end.11

if.end.11:                                        ; preds = %if.end, %while.body
  %21 = load i32, i32* %n, align 4
  %inc = add nsw i32 %21, 1
  store i32 %inc, i32* %n, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %22 = load i8*, i8** %name.addr, align 8
  call void (i8*, ...) @g_message(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.53, i32 0, i32 0), i8* %22)
  br label %return

return:                                           ; preds = %while.end, %if.then.8
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gfig_read_parameter_gimp_rgb(i8** %text, i32 %nitems, i8* %name, %struct._GimpRGB* %style_entry) #0 {
entry:
  %text.addr = alloca i8**, align 8
  %nitems.addr = alloca i32, align 4
  %name.addr = alloca i8*, align 8
  %style_entry.addr = alloca %struct._GimpRGB*, align 8
  %n = alloca i32, align 4
  %ptr = alloca i8*, align 8
  %tmpstr = alloca i8*, align 8
  %endptr = alloca i8*, align 8
  %fmt_str = alloca [32 x i8], align 16
  %colorstr_r = alloca [39 x i8], align 16
  %colorstr_g = alloca [39 x i8], align 16
  %colorstr_b = alloca [39 x i8], align 16
  %colorstr_a = alloca [39 x i8], align 16
  store i8** %text, i8*** %text.addr, align 8
  store i32 %nitems, i32* %nitems.addr, align 4
  store i8* %name, i8** %name.addr, align 8
  store %struct._GimpRGB* %style_entry, %struct._GimpRGB** %style_entry.addr, align 8
  store i32 0, i32* %n, align 4
  %0 = load %struct._GimpRGB*, %struct._GimpRGB** %style_entry.addr, align 8
  %a = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %0, i32 0, i32 3
  store double 0.000000e+00, double* %a, align 8
  %1 = load %struct._GimpRGB*, %struct._GimpRGB** %style_entry.addr, align 8
  %b = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %1, i32 0, i32 2
  store double 0.000000e+00, double* %b, align 8
  %2 = load %struct._GimpRGB*, %struct._GimpRGB** %style_entry.addr, align 8
  %g = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %2, i32 0, i32 1
  store double 0.000000e+00, double* %g, align 8
  %3 = load %struct._GimpRGB*, %struct._GimpRGB** %style_entry.addr, align 8
  %r = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %3, i32 0, i32 0
  store double 0.000000e+00, double* %r, align 8
  %arraydecay = getelementptr inbounds [32 x i8], [32 x i8]* %fmt_str, i32 0, i32 0
  %call = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %arraydecay, i64 32, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.54, i32 0, i32 0), i64 38, i64 38, i64 38, i64 38) #5
  br label %while.cond

while.cond:                                       ; preds = %if.end.28, %entry
  %4 = load i32, i32* %n, align 4
  %5 = load i32, i32* %nitems.addr, align 4
  %cmp = icmp slt i32 %4, %5
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %6 = load i32, i32* %n, align 4
  %idxprom = sext i32 %6 to i64
  %7 = load i8**, i8*** %text.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %7, i64 %idxprom
  %8 = load i8*, i8** %arrayidx, align 8
  %call1 = call i8* @strchr(i8* %8, i32 58) #6
  store i8* %call1, i8** %ptr, align 8
  %9 = load i8*, i8** %ptr, align 8
  %tobool = icmp ne i8* %9, null
  br i1 %tobool, label %if.then, label %if.end.28

if.then:                                          ; preds = %while.body
  %10 = load i32, i32* %n, align 4
  %idxprom2 = sext i32 %10 to i64
  %11 = load i8**, i8*** %text.addr, align 8
  %arrayidx3 = getelementptr inbounds i8*, i8** %11, i64 %idxprom2
  %12 = load i8*, i8** %arrayidx3, align 8
  %13 = load i8*, i8** %ptr, align 8
  %14 = load i32, i32* %n, align 4
  %idxprom4 = sext i32 %14 to i64
  %15 = load i8**, i8*** %text.addr, align 8
  %arrayidx5 = getelementptr inbounds i8*, i8** %15, i64 %idxprom4
  %16 = load i8*, i8** %arrayidx5, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %13 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %16 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %call6 = call noalias i8* @g_strndup(i8* %12, i64 %sub.ptr.sub)
  store i8* %call6, i8** %tmpstr, align 8
  %17 = load i8*, i8** %ptr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %17, i32 1
  store i8* %incdec.ptr, i8** %ptr, align 8
  %18 = load i8*, i8** %tmpstr, align 8
  %19 = load i8*, i8** %name.addr, align 8
  %call7 = call i32 @strcmp(i8* %18, i8* %19) #6
  %tobool8 = icmp ne i32 %call7, 0
  br i1 %tobool8, label %if.end, label %if.then.9

if.then.9:                                        ; preds = %if.then
  %20 = load i8*, i8** %ptr, align 8
  %arraydecay10 = getelementptr inbounds [32 x i8], [32 x i8]* %fmt_str, i32 0, i32 0
  %arraydecay11 = getelementptr inbounds [39 x i8], [39 x i8]* %colorstr_r, i32 0, i32 0
  %arraydecay12 = getelementptr inbounds [39 x i8], [39 x i8]* %colorstr_g, i32 0, i32 0
  %arraydecay13 = getelementptr inbounds [39 x i8], [39 x i8]* %colorstr_b, i32 0, i32 0
  %arraydecay14 = getelementptr inbounds [39 x i8], [39 x i8]* %colorstr_a, i32 0, i32 0
  %call15 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %20, i8* %arraydecay10, i8* %arraydecay11, i8* %arraydecay12, i8* %arraydecay13, i8* %arraydecay14) #5
  %arraydecay16 = getelementptr inbounds [39 x i8], [39 x i8]* %colorstr_r, i32 0, i32 0
  %call17 = call double @g_ascii_strtod(i8* %arraydecay16, i8** %endptr)
  %21 = load %struct._GimpRGB*, %struct._GimpRGB** %style_entry.addr, align 8
  %r18 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %21, i32 0, i32 0
  store double %call17, double* %r18, align 8
  %arraydecay19 = getelementptr inbounds [39 x i8], [39 x i8]* %colorstr_g, i32 0, i32 0
  %call20 = call double @g_ascii_strtod(i8* %arraydecay19, i8** %endptr)
  %22 = load %struct._GimpRGB*, %struct._GimpRGB** %style_entry.addr, align 8
  %g21 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %22, i32 0, i32 1
  store double %call20, double* %g21, align 8
  %arraydecay22 = getelementptr inbounds [39 x i8], [39 x i8]* %colorstr_b, i32 0, i32 0
  %call23 = call double @g_ascii_strtod(i8* %arraydecay22, i8** %endptr)
  %23 = load %struct._GimpRGB*, %struct._GimpRGB** %style_entry.addr, align 8
  %b24 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %23, i32 0, i32 2
  store double %call23, double* %b24, align 8
  %arraydecay25 = getelementptr inbounds [39 x i8], [39 x i8]* %colorstr_a, i32 0, i32 0
  %call26 = call double @g_ascii_strtod(i8* %arraydecay25, i8** %endptr)
  %24 = load %struct._GimpRGB*, %struct._GimpRGB** %style_entry.addr, align 8
  %a27 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %24, i32 0, i32 3
  store double %call26, double* %a27, align 8
  %25 = load i8*, i8** %tmpstr, align 8
  call void @g_free(i8* %25)
  br label %while.end

if.end:                                           ; preds = %if.then
  %26 = load i8*, i8** %tmpstr, align 8
  call void @g_free(i8* %26)
  br label %if.end.28

if.end.28:                                        ; preds = %if.end, %while.body
  %27 = load i32, i32* %n, align 4
  %inc = add nsw i32 %27, 1
  store i32 %inc, i32* %n, align 4
  br label %while.cond

while.end:                                        ; preds = %if.then.9, %while.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gfig_read_parameter_int(i8** %text, i32 %nitems, i8* %name, i32* %style_entry) #0 {
entry:
  %text.addr = alloca i8**, align 8
  %nitems.addr = alloca i32, align 4
  %name.addr = alloca i8*, align 8
  %style_entry.addr = alloca i32*, align 8
  %n = alloca i32, align 4
  %ptr = alloca i8*, align 8
  %tmpstr = alloca i8*, align 8
  store i8** %text, i8*** %text.addr, align 8
  store i32 %nitems, i32* %nitems.addr, align 4
  store i8* %name, i8** %name.addr, align 8
  store i32* %style_entry, i32** %style_entry.addr, align 8
  store i32 0, i32* %n, align 4
  %0 = load i32*, i32** %style_entry.addr, align 8
  store i32 0, i32* %0, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end.11, %entry
  %1 = load i32, i32* %n, align 4
  %2 = load i32, i32* %nitems.addr, align 4
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load i32, i32* %n, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load i8**, i8*** %text.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %4, i64 %idxprom
  %5 = load i8*, i8** %arrayidx, align 8
  %call = call i8* @strchr(i8* %5, i32 58) #6
  store i8* %call, i8** %ptr, align 8
  %6 = load i8*, i8** %ptr, align 8
  %tobool = icmp ne i8* %6, null
  br i1 %tobool, label %if.then, label %if.end.11

if.then:                                          ; preds = %while.body
  %7 = load i32, i32* %n, align 4
  %idxprom1 = sext i32 %7 to i64
  %8 = load i8**, i8*** %text.addr, align 8
  %arrayidx2 = getelementptr inbounds i8*, i8** %8, i64 %idxprom1
  %9 = load i8*, i8** %arrayidx2, align 8
  %10 = load i8*, i8** %ptr, align 8
  %11 = load i32, i32* %n, align 4
  %idxprom3 = sext i32 %11 to i64
  %12 = load i8**, i8*** %text.addr, align 8
  %arrayidx4 = getelementptr inbounds i8*, i8** %12, i64 %idxprom3
  %13 = load i8*, i8** %arrayidx4, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %10 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %13 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %call5 = call noalias i8* @g_strndup(i8* %9, i64 %sub.ptr.sub)
  store i8* %call5, i8** %tmpstr, align 8
  %14 = load i8*, i8** %ptr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %14, i32 1
  store i8* %incdec.ptr, i8** %ptr, align 8
  %15 = load i8*, i8** %tmpstr, align 8
  %16 = load i8*, i8** %name.addr, align 8
  %call6 = call i32 @strcmp(i8* %15, i8* %16) #6
  %tobool7 = icmp ne i32 %call6, 0
  br i1 %tobool7, label %if.end, label %if.then.8

if.then.8:                                        ; preds = %if.then
  %17 = load i8*, i8** %ptr, align 8
  %call9 = call i8* @g_strchug(i8* %17)
  %call10 = call i32 @atoi(i8* %call9) #6
  %18 = load i32*, i32** %style_entry.addr, align 8
  store i32 %call10, i32* %18, align 4
  %19 = load i8*, i8** %tmpstr, align 8
  call void @g_free(i8* %19)
  br label %while.end

if.end:                                           ; preds = %if.then
  %20 = load i8*, i8** %tmpstr, align 8
  call void @g_free(i8* %20)
  br label %if.end.11

if.end.11:                                        ; preds = %if.end, %while.body
  %21 = load i32, i32* %n, align 4
  %inc = add nsw i32 %21, 1
  store i32 %inc, i32* %n, align 4
  br label %while.cond

while.end:                                        ; preds = %if.then.8, %while.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gfig_read_parameter_double(i8** %text, i32 %nitems, i8* %name, double* %style_entry) #0 {
entry:
  %text.addr = alloca i8**, align 8
  %nitems.addr = alloca i32, align 4
  %name.addr = alloca i8*, align 8
  %style_entry.addr = alloca double*, align 8
  %n = alloca i32, align 4
  %ptr = alloca i8*, align 8
  %endptr = alloca i8*, align 8
  %tmpstr = alloca i8*, align 8
  store i8** %text, i8*** %text.addr, align 8
  store i32 %nitems, i32* %nitems.addr, align 4
  store i8* %name, i8** %name.addr, align 8
  store double* %style_entry, double** %style_entry.addr, align 8
  store i32 0, i32* %n, align 4
  %0 = load double*, double** %style_entry.addr, align 8
  store double 0.000000e+00, double* %0, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.11, %entry
  %1 = load i32, i32* %n, align 4
  %2 = load i32, i32* %nitems.addr, align 4
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load i32, i32* %n, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load i8**, i8*** %text.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %4, i64 %idxprom
  %5 = load i8*, i8** %arrayidx, align 8
  %call = call i8* @strchr(i8* %5, i32 58) #6
  store i8* %call, i8** %ptr, align 8
  %6 = load i8*, i8** %ptr, align 8
  %tobool = icmp ne i8* %6, null
  br i1 %tobool, label %if.then, label %if.end.11

if.then:                                          ; preds = %while.body
  %7 = load i32, i32* %n, align 4
  %idxprom1 = sext i32 %7 to i64
  %8 = load i8**, i8*** %text.addr, align 8
  %arrayidx2 = getelementptr inbounds i8*, i8** %8, i64 %idxprom1
  %9 = load i8*, i8** %arrayidx2, align 8
  %10 = load i8*, i8** %ptr, align 8
  %11 = load i32, i32* %n, align 4
  %idxprom3 = sext i32 %11 to i64
  %12 = load i8**, i8*** %text.addr, align 8
  %arrayidx4 = getelementptr inbounds i8*, i8** %12, i64 %idxprom3
  %13 = load i8*, i8** %arrayidx4, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %10 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %13 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %call5 = call noalias i8* @g_strndup(i8* %9, i64 %sub.ptr.sub)
  store i8* %call5, i8** %tmpstr, align 8
  %14 = load i8*, i8** %ptr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %14, i32 1
  store i8* %incdec.ptr, i8** %ptr, align 8
  %15 = load i8*, i8** %tmpstr, align 8
  %16 = load i8*, i8** %name.addr, align 8
  %call6 = call i32 @strcmp(i8* %15, i8* %16) #6
  %tobool7 = icmp ne i32 %call6, 0
  br i1 %tobool7, label %if.end, label %if.then.8

if.then.8:                                        ; preds = %if.then
  %17 = load i8*, i8** %ptr, align 8
  %call9 = call i8* @g_strchug(i8* %17)
  %call10 = call double @g_ascii_strtod(i8* %call9, i8** %endptr)
  %18 = load double*, double** %style_entry.addr, align 8
  store double %call10, double* %18, align 8
  %19 = load i8*, i8** %tmpstr, align 8
  call void @g_free(i8* %19)
  br label %while.end

if.end:                                           ; preds = %if.then
  %20 = load i8*, i8** %tmpstr, align 8
  call void @g_free(i8* %20)
  br label %if.end.11

if.end.11:                                        ; preds = %if.end, %while.body
  %21 = load i32, i32* %n, align 4
  %inc = add nsw i32 %21, 1
  store i32 %inc, i32* %n, align 4
  br label %while.cond

while.end:                                        ; preds = %if.then.8, %while.cond
  ret void
}

declare void @g_free(i8*) #1

; Function Attrs: nounwind uwtable
define i32 @gfig_skip_style(%struct._Style* %style, %struct._IO_FILE* %fp) #0 {
entry:
  %retval = alloca i32, align 4
  %style.addr = alloca %struct._Style*, align 8
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %offset = alloca i64, align 8
  %load_buf2 = alloca [256 x i8], align 16
  store %struct._Style* %style, %struct._Style** %style.addr, align 8
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call = call i64 @ftell(%struct._IO_FILE* %0)
  store i64 %call, i64* %offset, align 8
  %arraydecay = getelementptr inbounds [256 x i8], [256 x i8]* %load_buf2, i32 0, i32 0
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call1 = call i8* @get_line(i8* %arraydecay, i32 256, %struct._IO_FILE* %1, i32 0)
  %arraydecay2 = getelementptr inbounds [256 x i8], [256 x i8]* %load_buf2, i32 0, i32 0
  %call3 = call i32 @strncmp(i8* %arraydecay2, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i32 0, i32 0), i64 7) #6
  %tobool = icmp ne i32 %call3, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %3 = load i64, i64* %offset, align 8
  %call4 = call i32 @fseek(%struct._IO_FILE* %2, i64 %3, i32 0)
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  br label %while.body

while.body:                                       ; preds = %if.end, %if.end.13
  %arraydecay5 = getelementptr inbounds [256 x i8], [256 x i8]* %load_buf2, i32 0, i32 0
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call6 = call i8* @get_line(i8* %arraydecay5, i32 256, %struct._IO_FILE* %4, i32 0)
  %arraydecay7 = getelementptr inbounds [256 x i8], [256 x i8]* %load_buf2, i32 0, i32 0
  %call8 = call i32 @strcmp(i8* %arraydecay7, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i32 0, i32 0)) #6
  %tobool9 = icmp ne i32 %call8, 0
  br i1 %tobool9, label %lor.lhs.false, label %if.then.12

lor.lhs.false:                                    ; preds = %while.body
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call10 = call i32 @feof(%struct._IO_FILE* %5) #5
  %tobool11 = icmp ne i32 %call10, 0
  br i1 %tobool11, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %lor.lhs.false, %while.body
  br label %while.end

if.end.13:                                        ; preds = %lor.lhs.false
  br label %while.body

while.end:                                        ; preds = %if.then.12
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call14 = call i32 @feof(%struct._IO_FILE* %6) #5
  %tobool15 = icmp ne i32 %call14, 0
  br i1 %tobool15, label %if.then.16, label %if.end.17

if.then.16:                                       ; preds = %while.end
  call void (i8*, ...) @g_message(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.16, i32 0, i32 0))
  store i32 1, i32* %retval
  br label %return

if.end.17:                                        ; preds = %while.end
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.17, %if.then.16, %if.then
  %7 = load i32, i32* %retval
  ret i32 %7
}

; Function Attrs: nounwind readonly
declare i32 @strncmp(i8*, i8*, i64) #3

; Function Attrs: nounwind uwtable
define i32 @gfig_load_styles(%struct._GFigObj* %gfig, %struct._IO_FILE* %fp) #0 {
entry:
  %gfig.addr = alloca %struct._GFigObj*, align 8
  %fp.addr = alloca %struct._IO_FILE*, align 8
  store %struct._GFigObj* %gfig, %struct._GFigObj** %gfig.addr, align 8
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8
  %0 = load %struct.GFigContext*, %struct.GFigContext** @gfig_context, align 8
  %debug_styles = getelementptr inbounds %struct.GFigContext, %struct.GFigContext* %0, i32 0, i32 0
  %1 = load i32, i32* %debug_styles, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void (i8*, ...) @g_printerr(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.17, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load %struct.GFigContext*, %struct.GFigContext** @gfig_context, align 8
  %default_style = getelementptr inbounds %struct.GFigContext, %struct.GFigContext* %2, i32 0, i32 7
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call = call i32 @gfig_load_style(%struct._Style* %default_style, %struct._IO_FILE* %3)
  %4 = load %struct.GFigContext*, %struct.GFigContext** @gfig_context, align 8
  %debug_styles1 = getelementptr inbounds %struct.GFigContext, %struct.GFigContext* %4, i32 0, i32 0
  %5 = load i32, i32* %debug_styles1, align 4
  %tobool2 = icmp ne i32 %5, 0
  br i1 %tobool2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  call void (i8*, ...) @g_printerr(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i32 0, i32 0))
  br label %if.end.4

if.end.4:                                         ; preds = %if.then.3, %if.end
  ret i32 0
}

; Function Attrs: nounwind uwtable
define void @gfig_save_style(%struct._Style* %style, %struct._GString* %string) #0 {
entry:
  %style.addr = alloca %struct._Style*, align 8
  %string.addr = alloca %struct._GString*, align 8
  %buffer = alloca [39 x i8], align 16
  %buffer_r = alloca [39 x i8], align 16
  %buffer_g = alloca [39 x i8], align 16
  %buffer_b = alloca [39 x i8], align 16
  %buffer_a = alloca [39 x i8], align 16
  %blen = alloca i32, align 4
  store %struct._Style* %style, %struct._Style** %style.addr, align 8
  store %struct._GString* %string, %struct._GString** %string.addr, align 8
  store i32 39, i32* %blen, align 4
  %0 = load %struct.GFigContext*, %struct.GFigContext** @gfig_context, align 8
  %debug_styles = getelementptr inbounds %struct.GFigContext, %struct.GFigContext* %0, i32 0, i32 0
  %1 = load i32, i32* %debug_styles, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct._Style*, %struct._Style** %style.addr, align 8
  %name = getelementptr inbounds %struct._Style, %struct._Style* %2, i32 0, i32 0
  %3 = load i8*, i8** %name, align 8
  %4 = load %struct._Style*, %struct._Style** %style.addr, align 8
  %brush_name = getelementptr inbounds %struct._Style, %struct._Style* %4, i32 0, i32 1
  %5 = load i8*, i8** %brush_name, align 8
  call void (i8*, ...) @g_printerr(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.18, i32 0, i32 0), i8* %3, i8* %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %6 = load %struct._GString*, %struct._GString** %string.addr, align 8
  %7 = load %struct._Style*, %struct._Style** %style.addr, align 8
  %name1 = getelementptr inbounds %struct._Style, %struct._Style* %7, i32 0, i32 0
  %8 = load i8*, i8** %name1, align 8
  call void (%struct._GString*, i8*, ...) @g_string_append_printf(%struct._GString* %6, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.19, i32 0, i32 0), i8* %8)
  %9 = load %struct._GString*, %struct._GString** %string.addr, align 8
  %10 = load %struct._Style*, %struct._Style** %style.addr, align 8
  %brush_name2 = getelementptr inbounds %struct._Style, %struct._Style* %10, i32 0, i32 1
  %11 = load i8*, i8** %brush_name2, align 8
  call void (%struct._GString*, i8*, ...) @g_string_append_printf(%struct._GString* %9, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.20, i32 0, i32 0), i8* %11)
  %12 = load %struct._Style*, %struct._Style** %style.addr, align 8
  %brush_name3 = getelementptr inbounds %struct._Style, %struct._Style* %12, i32 0, i32 1
  %13 = load i8*, i8** %brush_name3, align 8
  %tobool4 = icmp ne i8* %13, null
  br i1 %tobool4, label %if.end.7, label %if.then.5

if.then.5:                                        ; preds = %if.end
  %14 = load %struct._Style*, %struct._Style** %style.addr, align 8
  %name6 = getelementptr inbounds %struct._Style, %struct._Style* %14, i32 0, i32 0
  %15 = load i8*, i8** %name6, align 8
  call void (i8*, ...) @g_message(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.21, i32 0, i32 0), i8* %15)
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.5, %if.end
  %16 = load %struct._GString*, %struct._GString** %string.addr, align 8
  %17 = load %struct._Style*, %struct._Style** %style.addr, align 8
  %paint_type = getelementptr inbounds %struct._Style, %struct._Style* %17, i32 0, i32 13
  %18 = load i32, i32* %paint_type, align 4
  call void (%struct._GString*, i8*, ...) @g_string_append_printf(%struct._GString* %16, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.22, i32 0, i32 0), i32 %18)
  %19 = load %struct._GString*, %struct._GString** %string.addr, align 8
  %20 = load %struct._Style*, %struct._Style** %style.addr, align 8
  %fill_type = getelementptr inbounds %struct._Style, %struct._Style* %20, i32 0, i32 9
  %21 = load i32, i32* %fill_type, align 4
  call void (%struct._GString*, i8*, ...) @g_string_append_printf(%struct._GString* %19, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.23, i32 0, i32 0), i32 %21)
  %22 = load %struct._GString*, %struct._GString** %string.addr, align 8
  %arraydecay = getelementptr inbounds [39 x i8], [39 x i8]* %buffer, i32 0, i32 0
  %23 = load i32, i32* %blen, align 4
  %24 = load %struct._Style*, %struct._Style** %style.addr, align 8
  %fill_opacity = getelementptr inbounds %struct._Style, %struct._Style* %24, i32 0, i32 10
  %25 = load double, double* %fill_opacity, align 8
  %call = call i8* @g_ascii_dtostr(i8* %arraydecay, i32 %23, double %25)
  call void (%struct._GString*, i8*, ...) @g_string_append_printf(%struct._GString* %22, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.24, i32 0, i32 0), i8* %call)
  %26 = load %struct._GString*, %struct._GString** %string.addr, align 8
  %27 = load %struct._Style*, %struct._Style** %style.addr, align 8
  %pattern = getelementptr inbounds %struct._Style, %struct._Style* %27, i32 0, i32 11
  %28 = load i8*, i8** %pattern, align 8
  call void (%struct._GString*, i8*, ...) @g_string_append_printf(%struct._GString* %26, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.25, i32 0, i32 0), i8* %28)
  %29 = load %struct._GString*, %struct._GString** %string.addr, align 8
  %30 = load %struct._Style*, %struct._Style** %style.addr, align 8
  %gradient = getelementptr inbounds %struct._Style, %struct._Style* %30, i32 0, i32 12
  %31 = load i8*, i8** %gradient, align 8
  call void (%struct._GString*, i8*, ...) @g_string_append_printf(%struct._GString* %29, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.26, i32 0, i32 0), i8* %31)
  %32 = load %struct._GString*, %struct._GString** %string.addr, align 8
  %arraydecay8 = getelementptr inbounds [39 x i8], [39 x i8]* %buffer_r, i32 0, i32 0
  %33 = load i32, i32* %blen, align 4
  %34 = load %struct._Style*, %struct._Style** %style.addr, align 8
  %foreground = getelementptr inbounds %struct._Style, %struct._Style* %34, i32 0, i32 14
  %r = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %foreground, i32 0, i32 0
  %35 = load double, double* %r, align 8
  %call9 = call i8* @g_ascii_dtostr(i8* %arraydecay8, i32 %33, double %35)
  %arraydecay10 = getelementptr inbounds [39 x i8], [39 x i8]* %buffer_g, i32 0, i32 0
  %36 = load i32, i32* %blen, align 4
  %37 = load %struct._Style*, %struct._Style** %style.addr, align 8
  %foreground11 = getelementptr inbounds %struct._Style, %struct._Style* %37, i32 0, i32 14
  %g = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %foreground11, i32 0, i32 1
  %38 = load double, double* %g, align 8
  %call12 = call i8* @g_ascii_dtostr(i8* %arraydecay10, i32 %36, double %38)
  %arraydecay13 = getelementptr inbounds [39 x i8], [39 x i8]* %buffer_b, i32 0, i32 0
  %39 = load i32, i32* %blen, align 4
  %40 = load %struct._Style*, %struct._Style** %style.addr, align 8
  %foreground14 = getelementptr inbounds %struct._Style, %struct._Style* %40, i32 0, i32 14
  %b = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %foreground14, i32 0, i32 2
  %41 = load double, double* %b, align 8
  %call15 = call i8* @g_ascii_dtostr(i8* %arraydecay13, i32 %39, double %41)
  %arraydecay16 = getelementptr inbounds [39 x i8], [39 x i8]* %buffer_a, i32 0, i32 0
  %42 = load i32, i32* %blen, align 4
  %43 = load %struct._Style*, %struct._Style** %style.addr, align 8
  %foreground17 = getelementptr inbounds %struct._Style, %struct._Style* %43, i32 0, i32 14
  %a = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %foreground17, i32 0, i32 3
  %44 = load double, double* %a, align 8
  %call18 = call i8* @g_ascii_dtostr(i8* %arraydecay16, i32 %42, double %44)
  call void (%struct._GString*, i8*, ...) @g_string_append_printf(%struct._GString* %32, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.27, i32 0, i32 0), i8* %call9, i8* %call12, i8* %call15, i8* %call18)
  %45 = load %struct._GString*, %struct._GString** %string.addr, align 8
  %arraydecay19 = getelementptr inbounds [39 x i8], [39 x i8]* %buffer_r, i32 0, i32 0
  %46 = load i32, i32* %blen, align 4
  %47 = load %struct._Style*, %struct._Style** %style.addr, align 8
  %background = getelementptr inbounds %struct._Style, %struct._Style* %47, i32 0, i32 15
  %r20 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %background, i32 0, i32 0
  %48 = load double, double* %r20, align 8
  %call21 = call i8* @g_ascii_dtostr(i8* %arraydecay19, i32 %46, double %48)
  %arraydecay22 = getelementptr inbounds [39 x i8], [39 x i8]* %buffer_g, i32 0, i32 0
  %49 = load i32, i32* %blen, align 4
  %50 = load %struct._Style*, %struct._Style** %style.addr, align 8
  %background23 = getelementptr inbounds %struct._Style, %struct._Style* %50, i32 0, i32 15
  %g24 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %background23, i32 0, i32 1
  %51 = load double, double* %g24, align 8
  %call25 = call i8* @g_ascii_dtostr(i8* %arraydecay22, i32 %49, double %51)
  %arraydecay26 = getelementptr inbounds [39 x i8], [39 x i8]* %buffer_b, i32 0, i32 0
  %52 = load i32, i32* %blen, align 4
  %53 = load %struct._Style*, %struct._Style** %style.addr, align 8
  %background27 = getelementptr inbounds %struct._Style, %struct._Style* %53, i32 0, i32 15
  %b28 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %background27, i32 0, i32 2
  %54 = load double, double* %b28, align 8
  %call29 = call i8* @g_ascii_dtostr(i8* %arraydecay26, i32 %52, double %54)
  %arraydecay30 = getelementptr inbounds [39 x i8], [39 x i8]* %buffer_a, i32 0, i32 0
  %55 = load i32, i32* %blen, align 4
  %56 = load %struct._Style*, %struct._Style** %style.addr, align 8
  %background31 = getelementptr inbounds %struct._Style, %struct._Style* %56, i32 0, i32 15
  %a32 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %background31, i32 0, i32 3
  %57 = load double, double* %a32, align 8
  %call33 = call i8* @g_ascii_dtostr(i8* %arraydecay30, i32 %55, double %57)
  call void (%struct._GString*, i8*, ...) @g_string_append_printf(%struct._GString* %45, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.28, i32 0, i32 0), i8* %call21, i8* %call25, i8* %call29, i8* %call33)
  %58 = load %struct._GString*, %struct._GString** %string.addr, align 8
  call void (%struct._GString*, i8*, ...) @g_string_append_printf(%struct._GString* %58, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.29, i32 0, i32 0))
  ret void
}

declare void @g_string_append_printf(%struct._GString*, i8*, ...) #1

declare i8* @g_ascii_dtostr(i8*, i32, double) #1

; Function Attrs: nounwind uwtable
define void @gfig_style_save_as_attributes(%struct._Style* %style, %struct._GString* %string) #0 {
entry:
  %style.addr = alloca %struct._Style*, align 8
  %string.addr = alloca %struct._GString*, align 8
  %buffer = alloca [39 x i8], align 16
  %buffer_r = alloca [39 x i8], align 16
  %buffer_g = alloca [39 x i8], align 16
  %buffer_b = alloca [39 x i8], align 16
  %buffer_a = alloca [39 x i8], align 16
  %blen = alloca i32, align 4
  store %struct._Style* %style, %struct._Style** %style.addr, align 8
  store %struct._GString* %string, %struct._GString** %string.addr, align 8
  store i32 39, i32* %blen, align 4
  %0 = load %struct.GFigContext*, %struct.GFigContext** @gfig_context, align 8
  %debug_styles = getelementptr inbounds %struct.GFigContext, %struct.GFigContext* %0, i32 0, i32 0
  %1 = load i32, i32* %debug_styles, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct._Style*, %struct._Style** %style.addr, align 8
  %name = getelementptr inbounds %struct._Style, %struct._Style* %2, i32 0, i32 0
  %3 = load i8*, i8** %name, align 8
  call void (i8*, ...) @g_printerr(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.30, i32 0, i32 0), i8* %3)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load %struct._GString*, %struct._GString** %string.addr, align 8
  %5 = load %struct._Style*, %struct._Style** %style.addr, align 8
  %brush_name = getelementptr inbounds %struct._Style, %struct._Style* %5, i32 0, i32 1
  %6 = load i8*, i8** %brush_name, align 8
  call void (%struct._GString*, i8*, ...) @g_string_append_printf(%struct._GString* %4, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.31, i32 0, i32 0), i8* %6)
  %7 = load %struct._GString*, %struct._GString** %string.addr, align 8
  %arraydecay = getelementptr inbounds [39 x i8], [39 x i8]* %buffer_r, i32 0, i32 0
  %8 = load i32, i32* %blen, align 4
  %9 = load %struct._Style*, %struct._Style** %style.addr, align 8
  %foreground = getelementptr inbounds %struct._Style, %struct._Style* %9, i32 0, i32 14
  %r = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %foreground, i32 0, i32 0
  %10 = load double, double* %r, align 8
  %call = call i8* @g_ascii_dtostr(i8* %arraydecay, i32 %8, double %10)
  %arraydecay1 = getelementptr inbounds [39 x i8], [39 x i8]* %buffer_g, i32 0, i32 0
  %11 = load i32, i32* %blen, align 4
  %12 = load %struct._Style*, %struct._Style** %style.addr, align 8
  %foreground2 = getelementptr inbounds %struct._Style, %struct._Style* %12, i32 0, i32 14
  %g = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %foreground2, i32 0, i32 1
  %13 = load double, double* %g, align 8
  %call3 = call i8* @g_ascii_dtostr(i8* %arraydecay1, i32 %11, double %13)
  %arraydecay4 = getelementptr inbounds [39 x i8], [39 x i8]* %buffer_b, i32 0, i32 0
  %14 = load i32, i32* %blen, align 4
  %15 = load %struct._Style*, %struct._Style** %style.addr, align 8
  %foreground5 = getelementptr inbounds %struct._Style, %struct._Style* %15, i32 0, i32 14
  %b = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %foreground5, i32 0, i32 2
  %16 = load double, double* %b, align 8
  %call6 = call i8* @g_ascii_dtostr(i8* %arraydecay4, i32 %14, double %16)
  %arraydecay7 = getelementptr inbounds [39 x i8], [39 x i8]* %buffer_a, i32 0, i32 0
  %17 = load i32, i32* %blen, align 4
  %18 = load %struct._Style*, %struct._Style** %style.addr, align 8
  %foreground8 = getelementptr inbounds %struct._Style, %struct._Style* %18, i32 0, i32 14
  %a = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %foreground8, i32 0, i32 3
  %19 = load double, double* %a, align 8
  %call9 = call i8* @g_ascii_dtostr(i8* %arraydecay7, i32 %17, double %19)
  call void (%struct._GString*, i8*, ...) @g_string_append_printf(%struct._GString* %7, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.32, i32 0, i32 0), i8* %call, i8* %call3, i8* %call6, i8* %call9)
  %20 = load %struct._GString*, %struct._GString** %string.addr, align 8
  %arraydecay10 = getelementptr inbounds [39 x i8], [39 x i8]* %buffer_r, i32 0, i32 0
  %21 = load i32, i32* %blen, align 4
  %22 = load %struct._Style*, %struct._Style** %style.addr, align 8
  %background = getelementptr inbounds %struct._Style, %struct._Style* %22, i32 0, i32 15
  %r11 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %background, i32 0, i32 0
  %23 = load double, double* %r11, align 8
  %call12 = call i8* @g_ascii_dtostr(i8* %arraydecay10, i32 %21, double %23)
  %arraydecay13 = getelementptr inbounds [39 x i8], [39 x i8]* %buffer_g, i32 0, i32 0
  %24 = load i32, i32* %blen, align 4
  %25 = load %struct._Style*, %struct._Style** %style.addr, align 8
  %background14 = getelementptr inbounds %struct._Style, %struct._Style* %25, i32 0, i32 15
  %g15 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %background14, i32 0, i32 1
  %26 = load double, double* %g15, align 8
  %call16 = call i8* @g_ascii_dtostr(i8* %arraydecay13, i32 %24, double %26)
  %arraydecay17 = getelementptr inbounds [39 x i8], [39 x i8]* %buffer_b, i32 0, i32 0
  %27 = load i32, i32* %blen, align 4
  %28 = load %struct._Style*, %struct._Style** %style.addr, align 8
  %background18 = getelementptr inbounds %struct._Style, %struct._Style* %28, i32 0, i32 15
  %b19 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %background18, i32 0, i32 2
  %29 = load double, double* %b19, align 8
  %call20 = call i8* @g_ascii_dtostr(i8* %arraydecay17, i32 %27, double %29)
  %arraydecay21 = getelementptr inbounds [39 x i8], [39 x i8]* %buffer_a, i32 0, i32 0
  %30 = load i32, i32* %blen, align 4
  %31 = load %struct._Style*, %struct._Style** %style.addr, align 8
  %background22 = getelementptr inbounds %struct._Style, %struct._Style* %31, i32 0, i32 15
  %a23 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %background22, i32 0, i32 3
  %32 = load double, double* %a23, align 8
  %call24 = call i8* @g_ascii_dtostr(i8* %arraydecay21, i32 %30, double %32)
  call void (%struct._GString*, i8*, ...) @g_string_append_printf(%struct._GString* %20, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.33, i32 0, i32 0), i8* %call12, i8* %call16, i8* %call20, i8* %call24)
  %33 = load %struct._GString*, %struct._GString** %string.addr, align 8
  %34 = load %struct._Style*, %struct._Style** %style.addr, align 8
  %fill_type = getelementptr inbounds %struct._Style, %struct._Style* %34, i32 0, i32 9
  %35 = load i32, i32* %fill_type, align 4
  call void (%struct._GString*, i8*, ...) @g_string_append_printf(%struct._GString* %33, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.34, i32 0, i32 0), i32 %35)
  %36 = load %struct._GString*, %struct._GString** %string.addr, align 8
  %37 = load %struct._Style*, %struct._Style** %style.addr, align 8
  %paint_type = getelementptr inbounds %struct._Style, %struct._Style* %37, i32 0, i32 13
  %38 = load i32, i32* %paint_type, align 4
  call void (%struct._GString*, i8*, ...) @g_string_append_printf(%struct._GString* %36, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.35, i32 0, i32 0), i32 %38)
  %39 = load %struct._GString*, %struct._GString** %string.addr, align 8
  %arraydecay25 = getelementptr inbounds [39 x i8], [39 x i8]* %buffer, i32 0, i32 0
  %40 = load i32, i32* %blen, align 4
  %41 = load %struct._Style*, %struct._Style** %style.addr, align 8
  %fill_opacity = getelementptr inbounds %struct._Style, %struct._Style* %41, i32 0, i32 10
  %42 = load double, double* %fill_opacity, align 8
  %call26 = call i8* @g_ascii_dtostr(i8* %arraydecay25, i32 %40, double %42)
  call void (%struct._GString*, i8*, ...) @g_string_append_printf(%struct._GString* %39, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.36, i32 0, i32 0), i8* %call26)
  ret void
}

; Function Attrs: nounwind uwtable
define void @gfig_save_styles(%struct._GString* %string) #0 {
entry:
  %string.addr = alloca %struct._GString*, align 8
  store %struct._GString* %string, %struct._GString** %string.addr, align 8
  %0 = load %struct.GFigContext*, %struct.GFigContext** @gfig_context, align 8
  %debug_styles = getelementptr inbounds %struct.GFigContext, %struct.GFigContext* %0, i32 0, i32 0
  %1 = load i32, i32* %debug_styles, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void (i8*, ...) @g_printerr(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.37, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load %struct.GFigContext*, %struct.GFigContext** @gfig_context, align 8
  %default_style = getelementptr inbounds %struct.GFigContext, %struct.GFigContext* %2, i32 0, i32 7
  %3 = load %struct._GString*, %struct._GString** %string.addr, align 8
  call void @gfig_save_style(%struct._Style* %default_style, %struct._GString* %3)
  ret void
}

; Function Attrs: nounwind uwtable
define void @set_foreground_callback(%struct._GimpColorButton* %button, i8* %data) #0 {
entry:
  %button.addr = alloca %struct._GimpColorButton*, align 8
  %data.addr = alloca i8*, align 8
  %color2 = alloca %struct._GimpRGB, align 8
  %current_style = alloca %struct._Style*, align 8
  store %struct._GimpColorButton* %button, %struct._GimpColorButton** %button.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load %struct.GFigContext*, %struct.GFigContext** @gfig_context, align 8
  %debug_styles = getelementptr inbounds %struct.GFigContext, %struct.GFigContext* %0, i32 0, i32 0
  %1 = load i32, i32* %debug_styles, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void (i8*, ...) @g_printerr(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.38, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %call = call %struct._Style* @gfig_context_get_current_style()
  store %struct._Style* %call, %struct._Style** %current_style, align 8
  %2 = load %struct._GimpColorButton*, %struct._GimpColorButton** %button.addr, align 8
  call void @gimp_color_button_get_color(%struct._GimpColorButton* %2, %struct._GimpRGB* %color2)
  %3 = load %struct._Style*, %struct._Style** %current_style, align 8
  %foreground = getelementptr inbounds %struct._Style, %struct._Style* %3, i32 0, i32 14
  %r = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %color2, i32 0, i32 0
  %4 = load double, double* %r, align 8
  %g = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %color2, i32 0, i32 1
  %5 = load double, double* %g, align 8
  %b = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %color2, i32 0, i32 2
  %6 = load double, double* %b, align 8
  %a = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %color2, i32 0, i32 3
  %7 = load double, double* %a, align 8
  call void @gimp_rgba_set(%struct._GimpRGB* %foreground, double %4, double %5, double %6, double %7)
  call void @gfig_paint_callback()
  ret void
}

; Function Attrs: nounwind uwtable
define %struct._Style* @gfig_context_get_current_style() #0 {
entry:
  %retval = alloca %struct._Style*, align 8
  %0 = load %struct.GFigContext*, %struct.GFigContext** @gfig_context, align 8
  %selected_obj = getelementptr inbounds %struct.GFigContext, %struct.GFigContext* %0, i32 0, i32 5
  %1 = load %struct._GfigObject*, %struct._GfigObject** %selected_obj, align 8
  %tobool = icmp ne %struct._GfigObject* %1, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load %struct.GFigContext*, %struct.GFigContext** @gfig_context, align 8
  %selected_obj1 = getelementptr inbounds %struct.GFigContext, %struct.GFigContext* %2, i32 0, i32 5
  %3 = load %struct._GfigObject*, %struct._GfigObject** %selected_obj1, align 8
  %style = getelementptr inbounds %struct._GfigObject, %struct._GfigObject* %3, i32 0, i32 4
  store %struct._Style* %style, %struct._Style** %retval
  br label %return

if.else:                                          ; preds = %entry
  %4 = load %struct.GFigContext*, %struct.GFigContext** @gfig_context, align 8
  %default_style = getelementptr inbounds %struct.GFigContext, %struct.GFigContext* %4, i32 0, i32 7
  store %struct._Style* %default_style, %struct._Style** %retval
  br label %return

return:                                           ; preds = %if.else, %if.then
  %5 = load %struct._Style*, %struct._Style** %retval
  ret %struct._Style* %5
}

declare void @gimp_color_button_get_color(%struct._GimpColorButton*, %struct._GimpRGB*) #1

declare void @gimp_rgba_set(%struct._GimpRGB*, double, double, double, double) #1

declare void @gfig_paint_callback() #1

; Function Attrs: nounwind uwtable
define void @set_background_callback(%struct._GimpColorButton* %button, i8* %data) #0 {
entry:
  %button.addr = alloca %struct._GimpColorButton*, align 8
  %data.addr = alloca i8*, align 8
  %color2 = alloca %struct._GimpRGB, align 8
  %current_style = alloca %struct._Style*, align 8
  store %struct._GimpColorButton* %button, %struct._GimpColorButton** %button.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load %struct.GFigContext*, %struct.GFigContext** @gfig_context, align 8
  %debug_styles = getelementptr inbounds %struct.GFigContext, %struct.GFigContext* %0, i32 0, i32 0
  %1 = load i32, i32* %debug_styles, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void (i8*, ...) @g_printerr(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.39, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %call = call %struct._Style* @gfig_context_get_current_style()
  store %struct._Style* %call, %struct._Style** %current_style, align 8
  %2 = load %struct._GimpColorButton*, %struct._GimpColorButton** %button.addr, align 8
  call void @gimp_color_button_get_color(%struct._GimpColorButton* %2, %struct._GimpRGB* %color2)
  %3 = load %struct._Style*, %struct._Style** %current_style, align 8
  %background = getelementptr inbounds %struct._Style, %struct._Style* %3, i32 0, i32 15
  %r = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %color2, i32 0, i32 0
  %4 = load double, double* %r, align 8
  %g = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %color2, i32 0, i32 1
  %5 = load double, double* %g, align 8
  %b = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %color2, i32 0, i32 2
  %6 = load double, double* %b, align 8
  %a = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %color2, i32 0, i32 3
  %7 = load double, double* %a, align 8
  call void @gimp_rgba_set(%struct._GimpRGB* %background, double %4, double %5, double %6, double %7)
  call void @gfig_paint_callback()
  ret void
}

; Function Attrs: nounwind uwtable
define void @set_paint_type_callback(%struct._GtkToggleButton* %toggle, i8* %data) #0 {
entry:
  %toggle.addr = alloca %struct._GtkToggleButton*, align 8
  %data.addr = alloca i8*, align 8
  %paint_type = alloca i32, align 4
  %current_style = alloca %struct._Style*, align 8
  store %struct._GtkToggleButton* %toggle, %struct._GtkToggleButton** %toggle.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %call = call %struct._Style* @gfig_context_get_current_style()
  store %struct._Style* %call, %struct._Style** %current_style, align 8
  %0 = load %struct._GtkToggleButton*, %struct._GtkToggleButton** %toggle.addr, align 8
  %call1 = call i32 @gtk_toggle_button_get_active(%struct._GtkToggleButton* %0)
  store i32 %call1, i32* %paint_type, align 4
  %1 = load i32, i32* %paint_type, align 4
  %2 = load %struct._Style*, %struct._Style** %current_style, align 8
  %paint_type2 = getelementptr inbounds %struct._Style, %struct._Style* %2, i32 0, i32 13
  store i32 %1, i32* %paint_type2, align 4
  call void @gfig_paint_callback()
  %3 = load i8*, i8** %data.addr, align 8
  %4 = bitcast i8* %3 to %struct._GTypeInstance*
  %call3 = call i64 @gtk_widget_get_type() #7
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call3)
  %5 = bitcast %struct._GTypeInstance* %call4 to %struct._GtkWidget*
  %6 = load i32, i32* %paint_type, align 4
  call void @gtk_widget_set_sensitive(%struct._GtkWidget* %5, i32 %6)
  ret void
}

declare i32 @gtk_toggle_button_get_active(%struct._GtkToggleButton*) #1

declare void @gtk_widget_set_sensitive(%struct._GtkWidget*, i32) #1

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_widget_get_type() #4

; Function Attrs: nounwind uwtable
define void @gfig_brush_changed_callback(%struct._GimpBrushSelectButton* %button, i8* %brush_name, double %opacity, i32 %spacing, i32 %paint_mode, i32 %width, i32 %height, i8* %mask_data, i32 %dialog_closing, i8* %user_data) #0 {
entry:
  %button.addr = alloca %struct._GimpBrushSelectButton*, align 8
  %brush_name.addr = alloca i8*, align 8
  %opacity.addr = alloca double, align 8
  %spacing.addr = alloca i32, align 4
  %paint_mode.addr = alloca i32, align 4
  %width.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  %mask_data.addr = alloca i8*, align 8
  %dialog_closing.addr = alloca i32, align 4
  %user_data.addr = alloca i8*, align 8
  %current_style = alloca %struct._Style*, align 8
  store %struct._GimpBrushSelectButton* %button, %struct._GimpBrushSelectButton** %button.addr, align 8
  store i8* %brush_name, i8** %brush_name.addr, align 8
  store double %opacity, double* %opacity.addr, align 8
  store i32 %spacing, i32* %spacing.addr, align 4
  store i32 %paint_mode, i32* %paint_mode.addr, align 4
  store i32 %width, i32* %width.addr, align 4
  store i32 %height, i32* %height.addr, align 4
  store i8* %mask_data, i8** %mask_data.addr, align 8
  store i32 %dialog_closing, i32* %dialog_closing.addr, align 4
  store i8* %user_data, i8** %user_data.addr, align 8
  %call = call %struct._Style* @gfig_context_get_current_style()
  store %struct._Style* %call, %struct._Style** %current_style, align 8
  %0 = load i8*, i8** %brush_name.addr, align 8
  %call1 = call noalias i8* @g_strdup(i8* %0)
  %1 = load %struct._Style*, %struct._Style** %current_style, align 8
  %brush_name2 = getelementptr inbounds %struct._Style, %struct._Style* %1, i32 0, i32 1
  store i8* %call1, i8** %brush_name2, align 8
  %2 = load i8*, i8** %brush_name.addr, align 8
  %call3 = call noalias i8* @g_strdup(i8* %2)
  %3 = load %struct.GFigContext*, %struct.GFigContext** @gfig_context, align 8
  %bdesc = getelementptr inbounds %struct.GFigContext, %struct.GFigContext* %3, i32 0, i32 8
  %name = getelementptr inbounds %struct.BrushDesc, %struct.BrushDesc* %bdesc, i32 0, i32 0
  store i8* %call3, i8** %name, align 8
  %4 = load i32, i32* %width.addr, align 4
  %5 = load %struct.GFigContext*, %struct.GFigContext** @gfig_context, align 8
  %bdesc4 = getelementptr inbounds %struct.GFigContext, %struct.GFigContext* %5, i32 0, i32 8
  %width5 = getelementptr inbounds %struct.BrushDesc, %struct.BrushDesc* %bdesc4, i32 0, i32 4
  store i32 %4, i32* %width5, align 4
  %6 = load i32, i32* %height.addr, align 4
  %7 = load %struct.GFigContext*, %struct.GFigContext** @gfig_context, align 8
  %bdesc6 = getelementptr inbounds %struct.GFigContext, %struct.GFigContext* %7, i32 0, i32 8
  %height7 = getelementptr inbounds %struct.BrushDesc, %struct.BrushDesc* %bdesc6, i32 0, i32 5
  store i32 %6, i32* %height7, align 4
  %8 = load i8*, i8** %brush_name.addr, align 8
  %call8 = call i32 @gimp_context_set_brush(i8* %8)
  %call9 = call i32 @gimp_context_set_brush_default_size()
  call void @gfig_paint_callback()
  ret void
}

declare i32 @gimp_context_set_brush(i8*) #1

declare i32 @gimp_context_set_brush_default_size() #1

; Function Attrs: nounwind uwtable
define void @gfig_pattern_changed_callback(%struct._GimpPatternSelectButton* %button, i8* %pattern_name, i32 %width, i32 %height, i32 %bpp, i8* %mask_data, i32 %dialog_closing, i8* %user_data) #0 {
entry:
  %button.addr = alloca %struct._GimpPatternSelectButton*, align 8
  %pattern_name.addr = alloca i8*, align 8
  %width.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  %bpp.addr = alloca i32, align 4
  %mask_data.addr = alloca i8*, align 8
  %dialog_closing.addr = alloca i32, align 4
  %user_data.addr = alloca i8*, align 8
  %current_style = alloca %struct._Style*, align 8
  store %struct._GimpPatternSelectButton* %button, %struct._GimpPatternSelectButton** %button.addr, align 8
  store i8* %pattern_name, i8** %pattern_name.addr, align 8
  store i32 %width, i32* %width.addr, align 4
  store i32 %height, i32* %height.addr, align 4
  store i32 %bpp, i32* %bpp.addr, align 4
  store i8* %mask_data, i8** %mask_data.addr, align 8
  store i32 %dialog_closing, i32* %dialog_closing.addr, align 4
  store i8* %user_data, i8** %user_data.addr, align 8
  %call = call %struct._Style* @gfig_context_get_current_style()
  store %struct._Style* %call, %struct._Style** %current_style, align 8
  %0 = load i8*, i8** %pattern_name.addr, align 8
  %call1 = call noalias i8* @g_strdup(i8* %0)
  %1 = load %struct._Style*, %struct._Style** %current_style, align 8
  %pattern = getelementptr inbounds %struct._Style, %struct._Style* %1, i32 0, i32 11
  store i8* %call1, i8** %pattern, align 8
  call void @gfig_paint_callback()
  ret void
}

; Function Attrs: nounwind uwtable
define void @gfig_gradient_changed_callback(%struct._GimpGradientSelectButton* %button, i8* %gradient_name, i32 %width, double* %grad_data, i32 %dialog_closing, i8* %user_data) #0 {
entry:
  %button.addr = alloca %struct._GimpGradientSelectButton*, align 8
  %gradient_name.addr = alloca i8*, align 8
  %width.addr = alloca i32, align 4
  %grad_data.addr = alloca double*, align 8
  %dialog_closing.addr = alloca i32, align 4
  %user_data.addr = alloca i8*, align 8
  %current_style = alloca %struct._Style*, align 8
  store %struct._GimpGradientSelectButton* %button, %struct._GimpGradientSelectButton** %button.addr, align 8
  store i8* %gradient_name, i8** %gradient_name.addr, align 8
  store i32 %width, i32* %width.addr, align 4
  store double* %grad_data, double** %grad_data.addr, align 8
  store i32 %dialog_closing, i32* %dialog_closing.addr, align 4
  store i8* %user_data, i8** %user_data.addr, align 8
  %call = call %struct._Style* @gfig_context_get_current_style()
  store %struct._Style* %call, %struct._Style** %current_style, align 8
  %0 = load i8*, i8** %gradient_name.addr, align 8
  %call1 = call noalias i8* @g_strdup(i8* %0)
  %1 = load %struct._Style*, %struct._Style** %current_style, align 8
  %gradient = getelementptr inbounds %struct._Style, %struct._Style* %1, i32 0, i32 12
  store i8* %call1, i8** %gradient, align 8
  call void @gfig_paint_callback()
  ret void
}

; Function Attrs: nounwind uwtable
define void @gfig_rgba_copy(%struct._GimpRGB* %color1, %struct._GimpRGB* %color2) #0 {
entry:
  %color1.addr = alloca %struct._GimpRGB*, align 8
  %color2.addr = alloca %struct._GimpRGB*, align 8
  store %struct._GimpRGB* %color1, %struct._GimpRGB** %color1.addr, align 8
  store %struct._GimpRGB* %color2, %struct._GimpRGB** %color2.addr, align 8
  %0 = load %struct._GimpRGB*, %struct._GimpRGB** %color2.addr, align 8
  %r = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %0, i32 0, i32 0
  %1 = load double, double* %r, align 8
  %2 = load %struct._GimpRGB*, %struct._GimpRGB** %color1.addr, align 8
  %r1 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %2, i32 0, i32 0
  store double %1, double* %r1, align 8
  %3 = load %struct._GimpRGB*, %struct._GimpRGB** %color2.addr, align 8
  %g = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %3, i32 0, i32 1
  %4 = load double, double* %g, align 8
  %5 = load %struct._GimpRGB*, %struct._GimpRGB** %color1.addr, align 8
  %g2 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %5, i32 0, i32 1
  store double %4, double* %g2, align 8
  %6 = load %struct._GimpRGB*, %struct._GimpRGB** %color2.addr, align 8
  %b = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %6, i32 0, i32 2
  %7 = load double, double* %b, align 8
  %8 = load %struct._GimpRGB*, %struct._GimpRGB** %color1.addr, align 8
  %b3 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %8, i32 0, i32 2
  store double %7, double* %b3, align 8
  %9 = load %struct._GimpRGB*, %struct._GimpRGB** %color2.addr, align 8
  %a = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %9, i32 0, i32 3
  %10 = load double, double* %a, align 8
  %11 = load %struct._GimpRGB*, %struct._GimpRGB** %color1.addr, align 8
  %a4 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %11, i32 0, i32 3
  store double %10, double* %a4, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @gfig_style_apply(%struct._Style* %style) #0 {
entry:
  %style.addr = alloca %struct._Style*, align 8
  store %struct._Style* %style, %struct._Style** %style.addr, align 8
  %0 = load %struct.GFigContext*, %struct.GFigContext** @gfig_context, align 8
  %debug_styles = getelementptr inbounds %struct.GFigContext, %struct.GFigContext* %0, i32 0, i32 0
  %1 = load i32, i32* %debug_styles, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct._Style*, %struct._Style** %style.addr, align 8
  %name = getelementptr inbounds %struct._Style, %struct._Style* %2, i32 0, i32 0
  %3 = load i8*, i8** %name, align 8
  call void (i8*, ...) @g_printerr(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.43, i32 0, i32 0), i8* %3)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load %struct._Style*, %struct._Style** %style.addr, align 8
  %foreground = getelementptr inbounds %struct._Style, %struct._Style* %4, i32 0, i32 14
  %call = call i32 @gimp_context_set_foreground(%struct._GimpRGB* %foreground)
  %5 = load %struct._Style*, %struct._Style** %style.addr, align 8
  %background = getelementptr inbounds %struct._Style, %struct._Style* %5, i32 0, i32 15
  %call1 = call i32 @gimp_context_set_background(%struct._GimpRGB* %background)
  %6 = load %struct._Style*, %struct._Style** %style.addr, align 8
  %brush_name = getelementptr inbounds %struct._Style, %struct._Style* %6, i32 0, i32 1
  %7 = load i8*, i8** %brush_name, align 8
  %call2 = call i32 @gimp_context_set_brush(i8* %7)
  %tobool3 = icmp ne i32 %call2, 0
  br i1 %tobool3, label %if.end.7, label %if.then.4

if.then.4:                                        ; preds = %if.end
  %8 = load %struct._Style*, %struct._Style** %style.addr, align 8
  %brush_name5 = getelementptr inbounds %struct._Style, %struct._Style* %8, i32 0, i32 1
  %9 = load i8*, i8** %brush_name5, align 8
  %10 = load %struct._Style*, %struct._Style** %style.addr, align 8
  %name6 = getelementptr inbounds %struct._Style, %struct._Style* %10, i32 0, i32 0
  %11 = load i8*, i8** %name6, align 8
  call void (i8*, ...) @g_message(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.44, i32 0, i32 0), i8* %9, i8* %11)
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.4, %if.end
  %call8 = call i32 @gimp_context_set_brush_default_size()
  %12 = load %struct._Style*, %struct._Style** %style.addr, align 8
  %pattern = getelementptr inbounds %struct._Style, %struct._Style* %12, i32 0, i32 11
  %13 = load i8*, i8** %pattern, align 8
  %call9 = call i32 @gimp_context_set_pattern(i8* %13)
  %14 = load %struct._Style*, %struct._Style** %style.addr, align 8
  %gradient = getelementptr inbounds %struct._Style, %struct._Style* %14, i32 0, i32 12
  %15 = load i8*, i8** %gradient, align 8
  %call10 = call i32 @gimp_context_set_gradient(i8* %15)
  %16 = load %struct.GFigContext*, %struct.GFigContext** @gfig_context, align 8
  %debug_styles11 = getelementptr inbounds %struct.GFigContext, %struct.GFigContext* %16, i32 0, i32 0
  %17 = load i32, i32* %debug_styles11, align 4
  %tobool12 = icmp ne i32 %17, 0
  br i1 %tobool12, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %if.end.7
  call void (i8*, ...) @g_printerr(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.45, i32 0, i32 0))
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.13, %if.end.7
  ret void
}

declare i32 @gimp_context_set_foreground(%struct._GimpRGB*) #1

declare i32 @gimp_context_set_background(%struct._GimpRGB*) #1

declare i32 @gimp_context_set_pattern(i8*) #1

declare i32 @gimp_context_set_gradient(i8*) #1

; Function Attrs: nounwind uwtable
define void @gfig_read_gimp_style(%struct._Style* %style, i8* %name) #0 {
entry:
  %style.addr = alloca %struct._Style*, align 8
  %name.addr = alloca i8*, align 8
  %dummy = alloca i32, align 4
  store %struct._Style* %style, %struct._Style** %style.addr, align 8
  store i8* %name, i8** %name.addr, align 8
  %0 = load i8*, i8** %name.addr, align 8
  %tobool = icmp ne i8* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void (i8*, ...) @g_message(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.46, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load %struct.GFigContext*, %struct.GFigContext** @gfig_context, align 8
  %debug_styles = getelementptr inbounds %struct.GFigContext, %struct.GFigContext* %1, i32 0, i32 0
  %2 = load i32, i32* %debug_styles, align 4
  %tobool1 = icmp ne i32 %2, 0
  br i1 %tobool1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  %3 = load i8*, i8** %name.addr, align 8
  call void (i8*, ...) @g_printerr(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.47, i32 0, i32 0), i8* %3)
  br label %if.end.3

if.end.3:                                         ; preds = %if.then.2, %if.end
  %4 = load i8*, i8** %name.addr, align 8
  %call = call noalias i8* @g_strdup(i8* %4)
  %5 = load %struct._Style*, %struct._Style** %style.addr, align 8
  %name4 = getelementptr inbounds %struct._Style, %struct._Style* %5, i32 0, i32 0
  store i8* %call, i8** %name4, align 8
  %6 = load %struct._Style*, %struct._Style** %style.addr, align 8
  %foreground = getelementptr inbounds %struct._Style, %struct._Style* %6, i32 0, i32 14
  %call5 = call i32 @gimp_context_get_foreground(%struct._GimpRGB* %foreground)
  %7 = load %struct._Style*, %struct._Style** %style.addr, align 8
  %background = getelementptr inbounds %struct._Style, %struct._Style* %7, i32 0, i32 15
  %call6 = call i32 @gimp_context_get_background(%struct._GimpRGB* %background)
  %call7 = call i8* @gimp_context_get_brush()
  %8 = load %struct._Style*, %struct._Style** %style.addr, align 8
  %brush_name = getelementptr inbounds %struct._Style, %struct._Style* %8, i32 0, i32 1
  store i8* %call7, i8** %brush_name, align 8
  %9 = load %struct._Style*, %struct._Style** %style.addr, align 8
  %brush_name8 = getelementptr inbounds %struct._Style, %struct._Style* %9, i32 0, i32 1
  %10 = load i8*, i8** %brush_name8, align 8
  %11 = load %struct._Style*, %struct._Style** %style.addr, align 8
  %brush_width = getelementptr inbounds %struct._Style, %struct._Style* %11, i32 0, i32 2
  %12 = load %struct._Style*, %struct._Style** %style.addr, align 8
  %brush_height = getelementptr inbounds %struct._Style, %struct._Style* %12, i32 0, i32 3
  %call9 = call i32 @gimp_brush_get_info(i8* %10, i32* %brush_width, i32* %brush_height, i32* %dummy, i32* %dummy)
  %13 = load %struct._Style*, %struct._Style** %style.addr, align 8
  %brush_name10 = getelementptr inbounds %struct._Style, %struct._Style* %13, i32 0, i32 1
  %14 = load i8*, i8** %brush_name10, align 8
  %15 = load %struct._Style*, %struct._Style** %style.addr, align 8
  %brush_spacing = getelementptr inbounds %struct._Style, %struct._Style* %15, i32 0, i32 4
  %call11 = call i32 @gimp_brush_get_spacing(i8* %14, i32* %brush_spacing)
  %call12 = call i8* @gimp_context_get_gradient()
  %16 = load %struct._Style*, %struct._Style** %style.addr, align 8
  %gradient = getelementptr inbounds %struct._Style, %struct._Style* %16, i32 0, i32 12
  store i8* %call12, i8** %gradient, align 8
  %call13 = call i8* @gimp_context_get_pattern()
  %17 = load %struct._Style*, %struct._Style** %style.addr, align 8
  %pattern = getelementptr inbounds %struct._Style, %struct._Style* %17, i32 0, i32 11
  store i8* %call13, i8** %pattern, align 8
  %18 = load %struct._Style*, %struct._Style** %style.addr, align 8
  %fill_opacity = getelementptr inbounds %struct._Style, %struct._Style* %18, i32 0, i32 10
  store double 1.000000e+02, double* %fill_opacity, align 8
  %19 = load %struct._Style*, %struct._Style** %style.addr, align 8
  %brush_name14 = getelementptr inbounds %struct._Style, %struct._Style* %19, i32 0, i32 1
  %20 = load i8*, i8** %brush_name14, align 8
  %21 = load %struct.GFigContext*, %struct.GFigContext** @gfig_context, align 8
  %bdesc = getelementptr inbounds %struct.GFigContext, %struct.GFigContext* %21, i32 0, i32 8
  %name15 = getelementptr inbounds %struct.BrushDesc, %struct.BrushDesc* %bdesc, i32 0, i32 0
  store i8* %20, i8** %name15, align 8
  %22 = load %struct._Style*, %struct._Style** %style.addr, align 8
  %brush_width16 = getelementptr inbounds %struct._Style, %struct._Style* %22, i32 0, i32 2
  %23 = load i32, i32* %brush_width16, align 4
  %24 = load %struct.GFigContext*, %struct.GFigContext** @gfig_context, align 8
  %bdesc17 = getelementptr inbounds %struct.GFigContext, %struct.GFigContext* %24, i32 0, i32 8
  %width = getelementptr inbounds %struct.BrushDesc, %struct.BrushDesc* %bdesc17, i32 0, i32 4
  store i32 %23, i32* %width, align 4
  %25 = load %struct._Style*, %struct._Style** %style.addr, align 8
  %brush_height18 = getelementptr inbounds %struct._Style, %struct._Style* %25, i32 0, i32 3
  %26 = load i32, i32* %brush_height18, align 4
  %27 = load %struct.GFigContext*, %struct.GFigContext** @gfig_context, align 8
  %bdesc19 = getelementptr inbounds %struct.GFigContext, %struct.GFigContext* %27, i32 0, i32 8
  %height = getelementptr inbounds %struct.BrushDesc, %struct.BrushDesc* %bdesc19, i32 0, i32 5
  store i32 %26, i32* %height, align 4
  ret void
}

declare i32 @gimp_context_get_foreground(%struct._GimpRGB*) #1

declare i32 @gimp_context_get_background(%struct._GimpRGB*) #1

declare i8* @gimp_context_get_brush() #1

declare i32 @gimp_brush_get_info(i8*, i32*, i32*, i32*, i32*) #1

declare i32 @gimp_brush_get_spacing(i8*, i32*) #1

declare i8* @gimp_context_get_gradient() #1

declare i8* @gimp_context_get_pattern() #1

; Function Attrs: nounwind uwtable
define void @gfig_style_set_context_from_style(%struct._Style* %style) #0 {
entry:
  %style.addr = alloca %struct._Style*, align 8
  %enable_repaint = alloca i32, align 4
  store %struct._Style* %style, %struct._Style** %style.addr, align 8
  %0 = load %struct.GFigContext*, %struct.GFigContext** @gfig_context, align 8
  %debug_styles = getelementptr inbounds %struct.GFigContext, %struct.GFigContext* %0, i32 0, i32 0
  %1 = load i32, i32* %debug_styles, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct._Style*, %struct._Style** %style.addr, align 8
  %name = getelementptr inbounds %struct._Style, %struct._Style* %2, i32 0, i32 0
  %3 = load i8*, i8** %name, align 8
  call void (i8*, ...) @g_printerr(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.48, i32 0, i32 0), i8* %3)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load %struct.GFigContext*, %struct.GFigContext** @gfig_context, align 8
  %enable_repaint1 = getelementptr inbounds %struct.GFigContext, %struct.GFigContext* %4, i32 0, i32 18
  %5 = load i32, i32* %enable_repaint1, align 4
  store i32 %5, i32* %enable_repaint, align 4
  %6 = load %struct.GFigContext*, %struct.GFigContext** @gfig_context, align 8
  %enable_repaint2 = getelementptr inbounds %struct.GFigContext, %struct.GFigContext* %6, i32 0, i32 18
  store i32 0, i32* %enable_repaint2, align 4
  %7 = load %struct.GFigContext*, %struct.GFigContext** @gfig_context, align 8
  %fg_color_button = getelementptr inbounds %struct.GFigContext, %struct.GFigContext* %7, i32 0, i32 9
  %8 = load %struct._GtkWidget*, %struct._GtkWidget** %fg_color_button, align 8
  %9 = bitcast %struct._GtkWidget* %8 to %struct._GTypeInstance*
  %call = call i64 @gimp_color_button_get_type() #7
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %9, i64 %call)
  %10 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpColorButton*
  %11 = load %struct._Style*, %struct._Style** %style.addr, align 8
  %foreground = getelementptr inbounds %struct._Style, %struct._Style* %11, i32 0, i32 14
  call void @gimp_color_button_set_color(%struct._GimpColorButton* %10, %struct._GimpRGB* %foreground)
  %12 = load %struct.GFigContext*, %struct.GFigContext** @gfig_context, align 8
  %bg_color_button = getelementptr inbounds %struct.GFigContext, %struct.GFigContext* %12, i32 0, i32 10
  %13 = load %struct._GtkWidget*, %struct._GtkWidget** %bg_color_button, align 8
  %14 = bitcast %struct._GtkWidget* %13 to %struct._GTypeInstance*
  %call4 = call i64 @gimp_color_button_get_type() #7
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 %call4)
  %15 = bitcast %struct._GTypeInstance* %call5 to %struct._GimpColorButton*
  %16 = load %struct._Style*, %struct._Style** %style.addr, align 8
  %background = getelementptr inbounds %struct._Style, %struct._Style* %16, i32 0, i32 15
  call void @gimp_color_button_set_color(%struct._GimpColorButton* %15, %struct._GimpRGB* %background)
  %17 = load %struct._Style*, %struct._Style** %style.addr, align 8
  %brush_name = getelementptr inbounds %struct._Style, %struct._Style* %17, i32 0, i32 1
  %18 = load i8*, i8** %brush_name, align 8
  %call6 = call i32 @gimp_context_set_brush(i8* %18)
  %tobool7 = icmp ne i32 %call6, 0
  br i1 %tobool7, label %if.end.10, label %if.then.8

if.then.8:                                        ; preds = %if.end
  %19 = load %struct._Style*, %struct._Style** %style.addr, align 8
  %brush_name9 = getelementptr inbounds %struct._Style, %struct._Style* %19, i32 0, i32 1
  %20 = load i8*, i8** %brush_name9, align 8
  call void (i8*, ...) @g_message(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.49, i32 0, i32 0), i8* %20)
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.8, %if.end
  %call11 = call i32 @gimp_context_set_brush_default_size()
  %21 = load %struct.GFigContext*, %struct.GFigContext** @gfig_context, align 8
  %brush_select = getelementptr inbounds %struct.GFigContext, %struct.GFigContext* %21, i32 0, i32 11
  %22 = load %struct._GtkWidget*, %struct._GtkWidget** %brush_select, align 8
  %23 = bitcast %struct._GtkWidget* %22 to %struct._GTypeInstance*
  %call12 = call i64 @gimp_brush_select_button_get_type() #7
  %call13 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %23, i64 %call12)
  %24 = bitcast %struct._GTypeInstance* %call13 to %struct._GimpBrushSelectButton*
  %25 = load %struct._Style*, %struct._Style** %style.addr, align 8
  %brush_name14 = getelementptr inbounds %struct._Style, %struct._Style* %25, i32 0, i32 1
  %26 = load i8*, i8** %brush_name14, align 8
  call void @gimp_brush_select_button_set_brush(%struct._GimpBrushSelectButton* %24, i8* %26, double -1.000000e+00, i32 -1, i32 -1)
  %27 = load %struct.GFigContext*, %struct.GFigContext** @gfig_context, align 8
  %pattern_select = getelementptr inbounds %struct.GFigContext, %struct.GFigContext* %27, i32 0, i32 12
  %28 = load %struct._GtkWidget*, %struct._GtkWidget** %pattern_select, align 8
  %29 = bitcast %struct._GtkWidget* %28 to %struct._GTypeInstance*
  %call15 = call i64 @gimp_pattern_select_button_get_type() #7
  %call16 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %29, i64 %call15)
  %30 = bitcast %struct._GTypeInstance* %call16 to %struct._GimpPatternSelectButton*
  %31 = load %struct._Style*, %struct._Style** %style.addr, align 8
  %pattern = getelementptr inbounds %struct._Style, %struct._Style* %31, i32 0, i32 11
  %32 = load i8*, i8** %pattern, align 8
  call void @gimp_pattern_select_button_set_pattern(%struct._GimpPatternSelectButton* %30, i8* %32)
  %33 = load %struct.GFigContext*, %struct.GFigContext** @gfig_context, align 8
  %gradient_select = getelementptr inbounds %struct.GFigContext, %struct.GFigContext* %33, i32 0, i32 13
  %34 = load %struct._GtkWidget*, %struct._GtkWidget** %gradient_select, align 8
  %35 = bitcast %struct._GtkWidget* %34 to %struct._GTypeInstance*
  %call17 = call i64 @gimp_gradient_select_button_get_type() #7
  %call18 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %35, i64 %call17)
  %36 = bitcast %struct._GTypeInstance* %call18 to %struct._GimpGradientSelectButton*
  %37 = load %struct._Style*, %struct._Style** %style.addr, align 8
  %gradient = getelementptr inbounds %struct._Style, %struct._Style* %37, i32 0, i32 12
  %38 = load i8*, i8** %gradient, align 8
  call void @gimp_gradient_select_button_set_gradient(%struct._GimpGradientSelectButton* %36, i8* %38)
  %39 = load %struct._Style*, %struct._Style** %style.addr, align 8
  %brush_name19 = getelementptr inbounds %struct._Style, %struct._Style* %39, i32 0, i32 1
  %40 = load i8*, i8** %brush_name19, align 8
  %41 = load %struct.GFigContext*, %struct.GFigContext** @gfig_context, align 8
  %bdesc = getelementptr inbounds %struct.GFigContext, %struct.GFigContext* %41, i32 0, i32 8
  %name20 = getelementptr inbounds %struct.BrushDesc, %struct.BrushDesc* %bdesc, i32 0, i32 0
  store i8* %40, i8** %name20, align 8
  %42 = load %struct.GFigContext*, %struct.GFigContext** @gfig_context, align 8
  %debug_styles21 = getelementptr inbounds %struct.GFigContext, %struct.GFigContext* %42, i32 0, i32 0
  %43 = load i32, i32* %debug_styles21, align 4
  %tobool22 = icmp ne i32 %43, 0
  br i1 %tobool22, label %if.then.23, label %if.end.24

if.then.23:                                       ; preds = %if.end.10
  call void (i8*, ...) @g_printerr(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.45, i32 0, i32 0))
  br label %if.end.24

if.end.24:                                        ; preds = %if.then.23, %if.end.10
  %44 = load %struct.GFigContext*, %struct.GFigContext** @gfig_context, align 8
  %fillstyle_combo = getelementptr inbounds %struct.GFigContext, %struct.GFigContext* %44, i32 0, i32 14
  %45 = load %struct._GtkWidget*, %struct._GtkWidget** %fillstyle_combo, align 8
  %46 = bitcast %struct._GtkWidget* %45 to %struct._GTypeInstance*
  %call25 = call i64 @gimp_int_combo_box_get_type() #7
  %call26 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %46, i64 %call25)
  %47 = bitcast %struct._GTypeInstance* %call26 to %struct._GimpIntComboBox*
  %48 = load %struct._Style*, %struct._Style** %style.addr, align 8
  %fill_type = getelementptr inbounds %struct._Style, %struct._Style* %48, i32 0, i32 9
  %49 = load i32, i32* %fill_type, align 4
  %call27 = call i32 @gimp_int_combo_box_set_active(%struct._GimpIntComboBox* %47, i32 %49)
  %50 = load %struct.GFigContext*, %struct.GFigContext** @gfig_context, align 8
  %paint_type_toggle = getelementptr inbounds %struct.GFigContext, %struct.GFigContext* %50, i32 0, i32 15
  %51 = load %struct._GtkWidget*, %struct._GtkWidget** %paint_type_toggle, align 8
  %52 = bitcast %struct._GtkWidget* %51 to %struct._GTypeInstance*
  %call28 = call i64 @gtk_toggle_button_get_type() #7
  %call29 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %52, i64 %call28)
  %53 = bitcast %struct._GTypeInstance* %call29 to %struct._GtkToggleButton*
  %54 = load %struct._Style*, %struct._Style** %style.addr, align 8
  %paint_type = getelementptr inbounds %struct._Style, %struct._Style* %54, i32 0, i32 13
  %55 = load i32, i32* %paint_type, align 4
  call void @gtk_toggle_button_set_active(%struct._GtkToggleButton* %53, i32 %55)
  %56 = load i32, i32* %enable_repaint, align 4
  %57 = load %struct.GFigContext*, %struct.GFigContext** @gfig_context, align 8
  %enable_repaint30 = getelementptr inbounds %struct.GFigContext, %struct.GFigContext* %57, i32 0, i32 18
  store i32 %56, i32* %enable_repaint30, align 4
  ret void
}

declare void @gimp_color_button_set_color(%struct._GimpColorButton*, %struct._GimpRGB*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_color_button_get_type() #4

declare void @gimp_brush_select_button_set_brush(%struct._GimpBrushSelectButton*, i8*, double, i32, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_brush_select_button_get_type() #4

declare void @gimp_pattern_select_button_set_pattern(%struct._GimpPatternSelectButton*, i8*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_pattern_select_button_get_type() #4

declare void @gimp_gradient_select_button_set_gradient(%struct._GimpGradientSelectButton*, i8*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_gradient_select_button_get_type() #4

declare i32 @gimp_int_combo_box_set_active(%struct._GimpIntComboBox*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_int_combo_box_get_type() #4

declare void @gtk_toggle_button_set_active(%struct._GtkToggleButton*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_toggle_button_get_type() #4

; Function Attrs: nounwind uwtable
define void @gfig_style_set_style_from_context(%struct._Style* %style) #0 {
entry:
  %style.addr = alloca %struct._Style*, align 8
  %current_style = alloca %struct._Style*, align 8
  %color = alloca %struct._GimpRGB, align 8
  %value = alloca i32, align 4
  store %struct._Style* %style, %struct._Style** %style.addr, align 8
  %0 = load %struct._Style*, %struct._Style** %style.addr, align 8
  %name = getelementptr inbounds %struct._Style, %struct._Style* %0, i32 0, i32 0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.50, i32 0, i32 0), i8** %name, align 8
  %call = call %struct._Style* @gfig_context_get_current_style()
  store %struct._Style* %call, %struct._Style** %current_style, align 8
  %1 = load %struct.GFigContext*, %struct.GFigContext** @gfig_context, align 8
  %fg_color_button = getelementptr inbounds %struct.GFigContext, %struct.GFigContext* %1, i32 0, i32 9
  %2 = load %struct._GtkWidget*, %struct._GtkWidget** %fg_color_button, align 8
  %3 = bitcast %struct._GtkWidget* %2 to %struct._GTypeInstance*
  %call1 = call i64 @gimp_color_button_get_type() #7
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %3, i64 %call1)
  %4 = bitcast %struct._GTypeInstance* %call2 to %struct._GimpColorButton*
  call void @gimp_color_button_get_color(%struct._GimpColorButton* %4, %struct._GimpRGB* %color)
  %5 = load %struct.GFigContext*, %struct.GFigContext** @gfig_context, align 8
  %debug_styles = getelementptr inbounds %struct.GFigContext, %struct.GFigContext* %5, i32 0, i32 0
  %6 = load i32, i32* %debug_styles, align 4
  %tobool = icmp ne i32 %6, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %r = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %color, i32 0, i32 0
  %7 = load double, double* %r, align 8
  %g = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %color, i32 0, i32 1
  %8 = load double, double* %g, align 8
  %b = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %color, i32 0, i32 2
  %9 = load double, double* %b, align 8
  call void (i8*, ...) @g_printerr(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.51, i32 0, i32 0), double %7, double %8, double %9)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %10 = load %struct._Style*, %struct._Style** %style.addr, align 8
  %foreground = getelementptr inbounds %struct._Style, %struct._Style* %10, i32 0, i32 14
  call void @gfig_rgba_copy(%struct._GimpRGB* %foreground, %struct._GimpRGB* %color)
  %11 = load %struct.GFigContext*, %struct.GFigContext** @gfig_context, align 8
  %bg_color_button = getelementptr inbounds %struct.GFigContext, %struct.GFigContext* %11, i32 0, i32 10
  %12 = load %struct._GtkWidget*, %struct._GtkWidget** %bg_color_button, align 8
  %13 = bitcast %struct._GtkWidget* %12 to %struct._GTypeInstance*
  %call3 = call i64 @gimp_color_button_get_type() #7
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %13, i64 %call3)
  %14 = bitcast %struct._GTypeInstance* %call4 to %struct._GimpColorButton*
  call void @gimp_color_button_get_color(%struct._GimpColorButton* %14, %struct._GimpRGB* %color)
  %15 = load %struct._Style*, %struct._Style** %style.addr, align 8
  %background = getelementptr inbounds %struct._Style, %struct._Style* %15, i32 0, i32 15
  call void @gfig_rgba_copy(%struct._GimpRGB* %background, %struct._GimpRGB* %color)
  %16 = load %struct._Style*, %struct._Style** %current_style, align 8
  %brush_name = getelementptr inbounds %struct._Style, %struct._Style* %16, i32 0, i32 1
  %17 = load i8*, i8** %brush_name, align 8
  %18 = load %struct._Style*, %struct._Style** %style.addr, align 8
  %brush_name5 = getelementptr inbounds %struct._Style, %struct._Style* %18, i32 0, i32 1
  store i8* %17, i8** %brush_name5, align 8
  %19 = load %struct._Style*, %struct._Style** %style.addr, align 8
  %pattern = getelementptr inbounds %struct._Style, %struct._Style* %19, i32 0, i32 11
  %20 = load i8*, i8** %pattern, align 8
  %tobool6 = icmp ne i8* %20, null
  br i1 %tobool6, label %lor.lhs.false, label %if.then.11

lor.lhs.false:                                    ; preds = %if.end
  %21 = load %struct._Style*, %struct._Style** %style.addr, align 8
  %pattern7 = getelementptr inbounds %struct._Style, %struct._Style* %21, i32 0, i32 11
  %22 = load i8*, i8** %pattern7, align 8
  %23 = load %struct._Style*, %struct._Style** %current_style, align 8
  %pattern8 = getelementptr inbounds %struct._Style, %struct._Style* %23, i32 0, i32 11
  %24 = load i8*, i8** %pattern8, align 8
  %call9 = call i32 @strcmp(i8* %22, i8* %24) #6
  %tobool10 = icmp ne i32 %call9, 0
  br i1 %tobool10, label %if.then.11, label %if.end.15

if.then.11:                                       ; preds = %lor.lhs.false, %if.end
  %25 = load %struct._Style*, %struct._Style** %current_style, align 8
  %pattern12 = getelementptr inbounds %struct._Style, %struct._Style* %25, i32 0, i32 11
  %26 = load i8*, i8** %pattern12, align 8
  %call13 = call noalias i8* @g_strdup(i8* %26)
  %27 = load %struct._Style*, %struct._Style** %style.addr, align 8
  %pattern14 = getelementptr inbounds %struct._Style, %struct._Style* %27, i32 0, i32 11
  store i8* %call13, i8** %pattern14, align 8
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.11, %lor.lhs.false
  %28 = load %struct._Style*, %struct._Style** %current_style, align 8
  %gradient = getelementptr inbounds %struct._Style, %struct._Style* %28, i32 0, i32 12
  %29 = load i8*, i8** %gradient, align 8
  %30 = load %struct._Style*, %struct._Style** %style.addr, align 8
  %gradient16 = getelementptr inbounds %struct._Style, %struct._Style* %30, i32 0, i32 12
  store i8* %29, i8** %gradient16, align 8
  %31 = load %struct.GFigContext*, %struct.GFigContext** @gfig_context, align 8
  %fillstyle_combo = getelementptr inbounds %struct.GFigContext, %struct.GFigContext* %31, i32 0, i32 14
  %32 = load %struct._GtkWidget*, %struct._GtkWidget** %fillstyle_combo, align 8
  %33 = bitcast %struct._GtkWidget* %32 to %struct._GTypeInstance*
  %call17 = call i64 @gimp_int_combo_box_get_type() #7
  %call18 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %33, i64 %call17)
  %34 = bitcast %struct._GTypeInstance* %call18 to %struct._GimpIntComboBox*
  %call19 = call i32 @gimp_int_combo_box_get_active(%struct._GimpIntComboBox* %34, i32* %value)
  %tobool20 = icmp ne i32 %call19, 0
  br i1 %tobool20, label %if.then.21, label %if.end.22

if.then.21:                                       ; preds = %if.end.15
  %35 = load i32, i32* %value, align 4
  %36 = load %struct._Style*, %struct._Style** %style.addr, align 8
  %fill_type = getelementptr inbounds %struct._Style, %struct._Style* %36, i32 0, i32 9
  store i32 %35, i32* %fill_type, align 4
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.21, %if.end.15
  %37 = load %struct._Style*, %struct._Style** %style.addr, align 8
  %fill_opacity = getelementptr inbounds %struct._Style, %struct._Style* %37, i32 0, i32 10
  store double 1.000000e+02, double* %fill_opacity, align 8
  %38 = load %struct.GFigContext*, %struct.GFigContext** @gfig_context, align 8
  %paint_type_toggle = getelementptr inbounds %struct.GFigContext, %struct.GFigContext* %38, i32 0, i32 15
  %39 = load %struct._GtkWidget*, %struct._GtkWidget** %paint_type_toggle, align 8
  %40 = bitcast %struct._GtkWidget* %39 to %struct._GTypeInstance*
  %call23 = call i64 @gtk_toggle_button_get_type() #7
  %call24 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %40, i64 %call23)
  %41 = bitcast %struct._GTypeInstance* %call24 to %struct._GtkToggleButton*
  %call25 = call i32 @gtk_toggle_button_get_active(%struct._GtkToggleButton* %41)
  %42 = load %struct._Style*, %struct._Style** %style.addr, align 8
  %paint_type = getelementptr inbounds %struct._Style, %struct._Style* %42, i32 0, i32 13
  store i32 %call25, i32* %paint_type, align 4
  ret void
}

declare i32 @gimp_int_combo_box_get_active(%struct._GimpIntComboBox*, i32*) #1

; Function Attrs: nounwind uwtable
define void @mygimp_brush_info(i32* %width, i32* %height) #0 {
entry:
  %width.addr = alloca i32*, align 8
  %height.addr = alloca i32*, align 8
  %name = alloca i8*, align 8
  %dummy = alloca i32, align 4
  store i32* %width, i32** %width.addr, align 8
  store i32* %height, i32** %height.addr, align 8
  %call = call i8* @gimp_context_get_brush()
  store i8* %call, i8** %name, align 8
  %0 = load i8*, i8** %name, align 8
  %tobool = icmp ne i8* %0, null
  br i1 %tobool, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %1 = load i8*, i8** %name, align 8
  %2 = load i32*, i32** %width.addr, align 8
  %3 = load i32*, i32** %height.addr, align 8
  %call1 = call i32 @gimp_brush_get_info(i8* %1, i32* %2, i32* %3, i32* %dummy, i32* %dummy)
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %4 = load i32*, i32** %width.addr, align 8
  %5 = load i32, i32* %4, align 4
  %cmp = icmp sgt i32 %5, 32
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  %6 = load i32*, i32** %width.addr, align 8
  %7 = load i32, i32* %6, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.then
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %7, %cond.true ], [ 32, %cond.false ]
  %8 = load i32*, i32** %width.addr, align 8
  store i32 %cond, i32* %8, align 4
  %9 = load i32*, i32** %height.addr, align 8
  %10 = load i32, i32* %9, align 4
  %cmp3 = icmp sgt i32 %10, 32
  br i1 %cmp3, label %cond.true.4, label %cond.false.5

cond.true.4:                                      ; preds = %cond.end
  %11 = load i32*, i32** %height.addr, align 8
  %12 = load i32, i32* %11, align 4
  br label %cond.end.6

cond.false.5:                                     ; preds = %cond.end
  br label %cond.end.6

cond.end.6:                                       ; preds = %cond.false.5, %cond.true.4
  %cond7 = phi i32 [ %12, %cond.true.4 ], [ 32, %cond.false.5 ]
  %13 = load i32*, i32** %height.addr, align 8
  store i32 %cond7, i32* %13, align 4
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %entry
  call void (i8*, ...) @g_message(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.52, i32 0, i32 0))
  %14 = load i32*, i32** %height.addr, align 8
  store i32 48, i32* %14, align 4
  %15 = load i32*, i32** %width.addr, align 8
  store i32 48, i32* %15, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %cond.end.6
  %16 = load i8*, i8** %name, align 8
  call void @g_free(i8* %16)
  ret void
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #5

declare void @g_logv(i8*, i32, i8*, %struct.__va_list_tag*) #1

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #5

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) #3

declare noalias i8* @g_strndup(i8*, i64) #1

declare i8* @g_strchug(i8*) #1

; Function Attrs: nounwind
declare i32 @snprintf(i8*, i64, i8*, ...) #2

declare double @g_ascii_strtod(i8*, i8**) #1

; Function Attrs: nounwind readonly
declare i32 @atoi(i8*) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nounwind readonly }
attributes #7 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
