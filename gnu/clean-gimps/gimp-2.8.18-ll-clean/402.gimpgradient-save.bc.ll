; ModuleID = './app/core/gimpgradient-save.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GimpData = type { %struct._GimpViewable }
%struct._GimpViewable = type { %struct._GimpObject }
%struct._GimpObject = type { %struct._GObject, %struct._GimpObjectPrivate* }
%struct._GObject = type { %struct._GTypeInstance, i32, %struct._GData* }
%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GData = type opaque
%struct._GimpObjectPrivate = type opaque
%struct._GError = type { i32, i32, i8* }
%struct._GimpGradient = type { %struct._GimpData, %struct._GimpGradientSegment* }
%struct._GimpGradientSegment = type { double, double, double, i32, %struct._GimpRGB, i32, %struct._GimpRGB, i32, i32, %struct._GimpGradientSegment*, %struct._GimpGradientSegment* }
%struct._GimpRGB = type { double, double, double, double }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@.str = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"Could not open '%s' for writing: %s\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"GIMP Gradient\0A\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"Name: %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"%f\00", align 1
@.str.6 = private unnamed_addr constant [46 x i8] c"%s %s %s %s %s %s %s %s %s %s %s %d %d %d %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"Gimp-Core\00", align 1
@__func__.gimp_gradient_save_pov = private unnamed_addr constant [23 x i8] c"gimp_gradient_save_pov\00", align 1
@.str.8 = private unnamed_addr constant [28 x i8] c"GIMP_IS_GRADIENT (gradient)\00", align 1
@.str.9 = private unnamed_addr constant [17 x i8] c"filename != NULL\00", align 1
@.str.10 = private unnamed_addr constant [32 x i8] c"error == NULL || *error == NULL\00", align 1
@.str.11 = private unnamed_addr constant [38 x i8] c"/* color_map file created by GIMP */\0A\00", align 1
@.str.12 = private unnamed_addr constant [38 x i8] c"/* http://www.gimp.org/           */\0A\00", align 1
@.str.13 = private unnamed_addr constant [13 x i8] c"color_map {\0A\00", align 1
@.str.14 = private unnamed_addr constant [35 x i8] c"\09[%s color rgbt <%s, %s, %s, %s>]\0A\00", align 1
@.str.15 = private unnamed_addr constant [19 x i8] c"} /* color_map */\0A\00", align 1

; Function Attrs: nounwind uwtable
define i32 @gimp_gradient_save(%struct._GimpData* %data, %struct._GError** %error) #0 {
entry:
  %retval = alloca i32, align 4
  %data.addr = alloca %struct._GimpData*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %gradient = alloca %struct._GimpGradient*, align 8
  %seg = alloca %struct._GimpGradientSegment*, align 8
  %num_segments = alloca i32, align 4
  %file = alloca %struct._IO_FILE*, align 8
  %buf = alloca [11 x [39 x i8]], align 16
  store %struct._GimpData* %data, %struct._GimpData** %data.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  %0 = load %struct._GimpData*, %struct._GimpData** %data.addr, align 8
  %1 = bitcast %struct._GimpData* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_gradient_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpGradient*
  store %struct._GimpGradient* %2, %struct._GimpGradient** %gradient, align 8
  %3 = load %struct._GimpData*, %struct._GimpData** %data.addr, align 8
  %call2 = call i8* @gimp_data_get_filename(%struct._GimpData* %3)
  %call3 = call %struct._IO_FILE* @fopen(i8* %call2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0))
  store %struct._IO_FILE* %call3, %struct._IO_FILE** %file, align 8
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %tobool = icmp ne %struct._IO_FILE* %4, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %5 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call4 = call i32 @gimp_data_error_quark() #5
  %call5 = call i8* @gettext(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i32 0, i32 0)) #6
  %6 = load %struct._GimpData*, %struct._GimpData** %data.addr, align 8
  %call6 = call i8* @gimp_data_get_filename(%struct._GimpData* %6)
  %call7 = call i8* @gimp_filename_to_utf8(i8* %call6)
  %call8 = call i32* @__errno_location() #5
  %7 = load i32, i32* %call8, align 4
  %call9 = call i8* @g_strerror(i32 %7) #5
  call void (%struct._GError**, i32, i32, i8*, ...) @g_set_error(%struct._GError** %5, i32 %call4, i32 0, i8* %call5, i8* %call7, i8* %call9)
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %call10 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %8, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0))
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %10 = load %struct._GimpGradient*, %struct._GimpGradient** %gradient, align 8
  %11 = bitcast %struct._GimpGradient* %10 to i8*
  %call11 = call i8* @gimp_object_get_name(i8* %11)
  %call12 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %9, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i32 0, i32 0), i8* %call11)
  store i32 0, i32* %num_segments, align 4
  %12 = load %struct._GimpGradient*, %struct._GimpGradient** %gradient, align 8
  %segments = getelementptr inbounds %struct._GimpGradient, %struct._GimpGradient* %12, i32 0, i32 1
  %13 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %segments, align 8
  store %struct._GimpGradientSegment* %13, %struct._GimpGradientSegment** %seg, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %14 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg, align 8
  %tobool13 = icmp ne %struct._GimpGradientSegment* %14, null
  br i1 %tobool13, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %15 = load i32, i32* %num_segments, align 4
  %inc = add nsw i32 %15, 1
  store i32 %inc, i32* %num_segments, align 4
  %16 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg, align 8
  %next = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %16, i32 0, i32 10
  %17 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %next, align 8
  store %struct._GimpGradientSegment* %17, %struct._GimpGradientSegment** %seg, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %19 = load i32, i32* %num_segments, align 4
  %call14 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %18, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i32 0, i32 0), i32 %19)
  %20 = load %struct._GimpGradient*, %struct._GimpGradient** %gradient, align 8
  %segments15 = getelementptr inbounds %struct._GimpGradient, %struct._GimpGradient* %20, i32 0, i32 1
  %21 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %segments15, align 8
  store %struct._GimpGradientSegment* %21, %struct._GimpGradientSegment** %seg, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.end
  %22 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg, align 8
  %tobool16 = icmp ne %struct._GimpGradientSegment* %22, null
  br i1 %tobool16, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds [11 x [39 x i8]], [11 x [39 x i8]]* %buf, i32 0, i64 0
  %arraydecay = getelementptr inbounds [39 x i8], [39 x i8]* %arrayidx, i32 0, i32 0
  %23 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg, align 8
  %left = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %23, i32 0, i32 0
  %24 = load double, double* %left, align 8
  %call17 = call i8* @g_ascii_formatd(i8* %arraydecay, i32 39, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i32 0, i32 0), double %24)
  %arrayidx18 = getelementptr inbounds [11 x [39 x i8]], [11 x [39 x i8]]* %buf, i32 0, i64 1
  %arraydecay19 = getelementptr inbounds [39 x i8], [39 x i8]* %arrayidx18, i32 0, i32 0
  %25 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg, align 8
  %middle = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %25, i32 0, i32 1
  %26 = load double, double* %middle, align 8
  %call20 = call i8* @g_ascii_formatd(i8* %arraydecay19, i32 39, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i32 0, i32 0), double %26)
  %arrayidx21 = getelementptr inbounds [11 x [39 x i8]], [11 x [39 x i8]]* %buf, i32 0, i64 2
  %arraydecay22 = getelementptr inbounds [39 x i8], [39 x i8]* %arrayidx21, i32 0, i32 0
  %27 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg, align 8
  %right = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %27, i32 0, i32 2
  %28 = load double, double* %right, align 8
  %call23 = call i8* @g_ascii_formatd(i8* %arraydecay22, i32 39, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i32 0, i32 0), double %28)
  %arrayidx24 = getelementptr inbounds [11 x [39 x i8]], [11 x [39 x i8]]* %buf, i32 0, i64 3
  %arraydecay25 = getelementptr inbounds [39 x i8], [39 x i8]* %arrayidx24, i32 0, i32 0
  %29 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg, align 8
  %left_color = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %29, i32 0, i32 4
  %r = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %left_color, i32 0, i32 0
  %30 = load double, double* %r, align 8
  %call26 = call i8* @g_ascii_formatd(i8* %arraydecay25, i32 39, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i32 0, i32 0), double %30)
  %arrayidx27 = getelementptr inbounds [11 x [39 x i8]], [11 x [39 x i8]]* %buf, i32 0, i64 4
  %arraydecay28 = getelementptr inbounds [39 x i8], [39 x i8]* %arrayidx27, i32 0, i32 0
  %31 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg, align 8
  %left_color29 = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %31, i32 0, i32 4
  %g = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %left_color29, i32 0, i32 1
  %32 = load double, double* %g, align 8
  %call30 = call i8* @g_ascii_formatd(i8* %arraydecay28, i32 39, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i32 0, i32 0), double %32)
  %arrayidx31 = getelementptr inbounds [11 x [39 x i8]], [11 x [39 x i8]]* %buf, i32 0, i64 5
  %arraydecay32 = getelementptr inbounds [39 x i8], [39 x i8]* %arrayidx31, i32 0, i32 0
  %33 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg, align 8
  %left_color33 = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %33, i32 0, i32 4
  %b = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %left_color33, i32 0, i32 2
  %34 = load double, double* %b, align 8
  %call34 = call i8* @g_ascii_formatd(i8* %arraydecay32, i32 39, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i32 0, i32 0), double %34)
  %arrayidx35 = getelementptr inbounds [11 x [39 x i8]], [11 x [39 x i8]]* %buf, i32 0, i64 6
  %arraydecay36 = getelementptr inbounds [39 x i8], [39 x i8]* %arrayidx35, i32 0, i32 0
  %35 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg, align 8
  %left_color37 = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %35, i32 0, i32 4
  %a = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %left_color37, i32 0, i32 3
  %36 = load double, double* %a, align 8
  %call38 = call i8* @g_ascii_formatd(i8* %arraydecay36, i32 39, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i32 0, i32 0), double %36)
  %arrayidx39 = getelementptr inbounds [11 x [39 x i8]], [11 x [39 x i8]]* %buf, i32 0, i64 7
  %arraydecay40 = getelementptr inbounds [39 x i8], [39 x i8]* %arrayidx39, i32 0, i32 0
  %37 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg, align 8
  %right_color = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %37, i32 0, i32 6
  %r41 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %right_color, i32 0, i32 0
  %38 = load double, double* %r41, align 8
  %call42 = call i8* @g_ascii_formatd(i8* %arraydecay40, i32 39, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i32 0, i32 0), double %38)
  %arrayidx43 = getelementptr inbounds [11 x [39 x i8]], [11 x [39 x i8]]* %buf, i32 0, i64 8
  %arraydecay44 = getelementptr inbounds [39 x i8], [39 x i8]* %arrayidx43, i32 0, i32 0
  %39 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg, align 8
  %right_color45 = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %39, i32 0, i32 6
  %g46 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %right_color45, i32 0, i32 1
  %40 = load double, double* %g46, align 8
  %call47 = call i8* @g_ascii_formatd(i8* %arraydecay44, i32 39, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i32 0, i32 0), double %40)
  %arrayidx48 = getelementptr inbounds [11 x [39 x i8]], [11 x [39 x i8]]* %buf, i32 0, i64 9
  %arraydecay49 = getelementptr inbounds [39 x i8], [39 x i8]* %arrayidx48, i32 0, i32 0
  %41 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg, align 8
  %right_color50 = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %41, i32 0, i32 6
  %b51 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %right_color50, i32 0, i32 2
  %42 = load double, double* %b51, align 8
  %call52 = call i8* @g_ascii_formatd(i8* %arraydecay49, i32 39, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i32 0, i32 0), double %42)
  %arrayidx53 = getelementptr inbounds [11 x [39 x i8]], [11 x [39 x i8]]* %buf, i32 0, i64 10
  %arraydecay54 = getelementptr inbounds [39 x i8], [39 x i8]* %arrayidx53, i32 0, i32 0
  %43 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg, align 8
  %right_color55 = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %43, i32 0, i32 6
  %a56 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %right_color55, i32 0, i32 3
  %44 = load double, double* %a56, align 8
  %call57 = call i8* @g_ascii_formatd(i8* %arraydecay54, i32 39, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i32 0, i32 0), double %44)
  %45 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %arrayidx58 = getelementptr inbounds [11 x [39 x i8]], [11 x [39 x i8]]* %buf, i32 0, i64 0
  %arraydecay59 = getelementptr inbounds [39 x i8], [39 x i8]* %arrayidx58, i32 0, i32 0
  %arrayidx60 = getelementptr inbounds [11 x [39 x i8]], [11 x [39 x i8]]* %buf, i32 0, i64 1
  %arraydecay61 = getelementptr inbounds [39 x i8], [39 x i8]* %arrayidx60, i32 0, i32 0
  %arrayidx62 = getelementptr inbounds [11 x [39 x i8]], [11 x [39 x i8]]* %buf, i32 0, i64 2
  %arraydecay63 = getelementptr inbounds [39 x i8], [39 x i8]* %arrayidx62, i32 0, i32 0
  %arrayidx64 = getelementptr inbounds [11 x [39 x i8]], [11 x [39 x i8]]* %buf, i32 0, i64 3
  %arraydecay65 = getelementptr inbounds [39 x i8], [39 x i8]* %arrayidx64, i32 0, i32 0
  %arrayidx66 = getelementptr inbounds [11 x [39 x i8]], [11 x [39 x i8]]* %buf, i32 0, i64 4
  %arraydecay67 = getelementptr inbounds [39 x i8], [39 x i8]* %arrayidx66, i32 0, i32 0
  %arrayidx68 = getelementptr inbounds [11 x [39 x i8]], [11 x [39 x i8]]* %buf, i32 0, i64 5
  %arraydecay69 = getelementptr inbounds [39 x i8], [39 x i8]* %arrayidx68, i32 0, i32 0
  %arrayidx70 = getelementptr inbounds [11 x [39 x i8]], [11 x [39 x i8]]* %buf, i32 0, i64 6
  %arraydecay71 = getelementptr inbounds [39 x i8], [39 x i8]* %arrayidx70, i32 0, i32 0
  %arrayidx72 = getelementptr inbounds [11 x [39 x i8]], [11 x [39 x i8]]* %buf, i32 0, i64 7
  %arraydecay73 = getelementptr inbounds [39 x i8], [39 x i8]* %arrayidx72, i32 0, i32 0
  %arrayidx74 = getelementptr inbounds [11 x [39 x i8]], [11 x [39 x i8]]* %buf, i32 0, i64 8
  %arraydecay75 = getelementptr inbounds [39 x i8], [39 x i8]* %arrayidx74, i32 0, i32 0
  %arrayidx76 = getelementptr inbounds [11 x [39 x i8]], [11 x [39 x i8]]* %buf, i32 0, i64 9
  %arraydecay77 = getelementptr inbounds [39 x i8], [39 x i8]* %arrayidx76, i32 0, i32 0
  %arrayidx78 = getelementptr inbounds [11 x [39 x i8]], [11 x [39 x i8]]* %buf, i32 0, i64 10
  %arraydecay79 = getelementptr inbounds [39 x i8], [39 x i8]* %arrayidx78, i32 0, i32 0
  %46 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg, align 8
  %type = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %46, i32 0, i32 7
  %47 = load i32, i32* %type, align 4
  %48 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg, align 8
  %color = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %48, i32 0, i32 8
  %49 = load i32, i32* %color, align 4
  %50 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg, align 8
  %left_color_type = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %50, i32 0, i32 3
  %51 = load i32, i32* %left_color_type, align 4
  %52 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg, align 8
  %right_color_type = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %52, i32 0, i32 5
  %53 = load i32, i32* %right_color_type, align 4
  %call80 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %45, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.6, i32 0, i32 0), i8* %arraydecay59, i8* %arraydecay61, i8* %arraydecay63, i8* %arraydecay65, i8* %arraydecay67, i8* %arraydecay69, i8* %arraydecay71, i8* %arraydecay73, i8* %arraydecay75, i8* %arraydecay77, i8* %arraydecay79, i32 %47, i32 %49, i32 %51, i32 %53)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %54 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg, align 8
  %next81 = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %54, i32 0, i32 10
  %55 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %next81, align 8
  store %struct._GimpGradientSegment* %55, %struct._GimpGradientSegment** %seg, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %56 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %call82 = call i32 @fclose(%struct._IO_FILE* %56)
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then
  %57 = load i32, i32* %retval
  ret i32 %57
}

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_gradient_get_type() #2

declare %struct._IO_FILE* @fopen(i8*, i8*) #1

declare i8* @gimp_data_get_filename(%struct._GimpData*) #1

declare void @g_set_error(%struct._GError**, i32, i32, i8*, ...) #1

; Function Attrs: nounwind readnone
declare i32 @gimp_data_error_quark() #2

; Function Attrs: nounwind
declare i8* @gettext(i8*) #3

declare i8* @gimp_filename_to_utf8(i8*) #1

; Function Attrs: nounwind readnone
declare i8* @g_strerror(i32) #2

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #2

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

declare i8* @gimp_object_get_name(i8*) #1

declare i8* @g_ascii_formatd(i8*, i32, i8*, double) #1

declare i32 @fclose(%struct._IO_FILE*) #1

; Function Attrs: nounwind uwtable
define i32 @gimp_gradient_save_pov(%struct._GimpGradient* %gradient, i8* %filename, %struct._GError** %error) #0 {
entry:
  %retval = alloca i32, align 4
  %gradient.addr = alloca %struct._GimpGradient*, align 8
  %filename.addr = alloca i8*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %file = alloca %struct._IO_FILE*, align 8
  %seg = alloca %struct._GimpGradientSegment*, align 8
  %buf = alloca [39 x i8], align 16
  %color_buf = alloca [4 x [39 x i8]], align 16
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpGradient* %gradient, %struct._GimpGradient** %gradient.addr, align 8
  store i8* %filename, i8** %filename.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpGradient*, %struct._GimpGradient** %gradient.addr, align 8
  %1 = bitcast %struct._GimpGradient* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_gradient_get_type() #5
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.gimp_gradient_save_pov, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load i8*, i8** %filename.addr, align 8
  %cmp12 = icmp ne i8* %13, null
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %do.body.11
  br label %if.end.15

if.else.14:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.gimp_gradient_save_pov, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  br label %do.body.17

do.body.17:                                       ; preds = %do.end.16
  %14 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %cmp18 = icmp eq %struct._GError** %14, null
  br i1 %cmp18, label %if.then.20, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.body.17
  %15 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %16 = load %struct._GError*, %struct._GError** %15, align 8
  %cmp19 = icmp eq %struct._GError* %16, null
  br i1 %cmp19, label %if.then.20, label %if.else.21

if.then.20:                                       ; preds = %lor.lhs.false, %do.body.17
  br label %if.end.22

if.else.21:                                       ; preds = %lor.lhs.false
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.gimp_gradient_save_pov, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.10, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.22:                                        ; preds = %if.then.20
  br label %do.end.23

do.end.23:                                        ; preds = %if.end.22
  %17 = load i8*, i8** %filename.addr, align 8
  %call24 = call %struct._IO_FILE* @fopen(i8* %17, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0))
  store %struct._IO_FILE* %call24, %struct._IO_FILE** %file, align 8
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %tobool25 = icmp ne %struct._IO_FILE* %18, null
  br i1 %tobool25, label %if.else.32, label %if.then.26

if.then.26:                                       ; preds = %do.end.23
  %19 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call27 = call i32 @gimp_data_error_quark() #5
  %call28 = call i8* @gettext(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i32 0, i32 0)) #6
  %20 = load i8*, i8** %filename.addr, align 8
  %call29 = call i8* @gimp_filename_to_utf8(i8* %20)
  %call30 = call i32* @__errno_location() #5
  %21 = load i32, i32* %call30, align 4
  %call31 = call i8* @g_strerror(i32 %21) #5
  call void (%struct._GError**, i32, i32, i8*, ...) @g_set_error(%struct._GError** %19, i32 %call27, i32 0, i8* %call28, i8* %call29, i8* %call31)
  store i32 0, i32* %retval
  br label %return

if.else.32:                                       ; preds = %do.end.23
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %call33 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %22, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.11, i32 0, i32 0))
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %call34 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %23, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.12, i32 0, i32 0))
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %call35 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %24, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13, i32 0, i32 0))
  %25 = load %struct._GimpGradient*, %struct._GimpGradient** %gradient.addr, align 8
  %segments = getelementptr inbounds %struct._GimpGradient, %struct._GimpGradient* %25, i32 0, i32 1
  %26 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %segments, align 8
  store %struct._GimpGradientSegment* %26, %struct._GimpGradientSegment** %seg, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else.32
  %27 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg, align 8
  %tobool36 = icmp ne %struct._GimpGradientSegment* %27, null
  br i1 %tobool36, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %arraydecay = getelementptr inbounds [39 x i8], [39 x i8]* %buf, i32 0, i32 0
  %28 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg, align 8
  %left = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %28, i32 0, i32 0
  %29 = load double, double* %left, align 8
  %call37 = call i8* @g_ascii_formatd(i8* %arraydecay, i32 39, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i32 0, i32 0), double %29)
  %arrayidx = getelementptr inbounds [4 x [39 x i8]], [4 x [39 x i8]]* %color_buf, i32 0, i64 0
  %arraydecay38 = getelementptr inbounds [39 x i8], [39 x i8]* %arrayidx, i32 0, i32 0
  %30 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg, align 8
  %left_color = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %30, i32 0, i32 4
  %r = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %left_color, i32 0, i32 0
  %31 = load double, double* %r, align 8
  %call39 = call i8* @g_ascii_formatd(i8* %arraydecay38, i32 39, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i32 0, i32 0), double %31)
  %arrayidx40 = getelementptr inbounds [4 x [39 x i8]], [4 x [39 x i8]]* %color_buf, i32 0, i64 1
  %arraydecay41 = getelementptr inbounds [39 x i8], [39 x i8]* %arrayidx40, i32 0, i32 0
  %32 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg, align 8
  %left_color42 = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %32, i32 0, i32 4
  %g = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %left_color42, i32 0, i32 1
  %33 = load double, double* %g, align 8
  %call43 = call i8* @g_ascii_formatd(i8* %arraydecay41, i32 39, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i32 0, i32 0), double %33)
  %arrayidx44 = getelementptr inbounds [4 x [39 x i8]], [4 x [39 x i8]]* %color_buf, i32 0, i64 2
  %arraydecay45 = getelementptr inbounds [39 x i8], [39 x i8]* %arrayidx44, i32 0, i32 0
  %34 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg, align 8
  %left_color46 = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %34, i32 0, i32 4
  %b = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %left_color46, i32 0, i32 2
  %35 = load double, double* %b, align 8
  %call47 = call i8* @g_ascii_formatd(i8* %arraydecay45, i32 39, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i32 0, i32 0), double %35)
  %arrayidx48 = getelementptr inbounds [4 x [39 x i8]], [4 x [39 x i8]]* %color_buf, i32 0, i64 3
  %arraydecay49 = getelementptr inbounds [39 x i8], [39 x i8]* %arrayidx48, i32 0, i32 0
  %36 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg, align 8
  %left_color50 = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %36, i32 0, i32 4
  %a = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %left_color50, i32 0, i32 3
  %37 = load double, double* %a, align 8
  %sub = fsub double 1.000000e+00, %37
  %call51 = call i8* @g_ascii_formatd(i8* %arraydecay49, i32 39, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i32 0, i32 0), double %sub)
  %38 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %arraydecay52 = getelementptr inbounds [39 x i8], [39 x i8]* %buf, i32 0, i32 0
  %arrayidx53 = getelementptr inbounds [4 x [39 x i8]], [4 x [39 x i8]]* %color_buf, i32 0, i64 0
  %arraydecay54 = getelementptr inbounds [39 x i8], [39 x i8]* %arrayidx53, i32 0, i32 0
  %arrayidx55 = getelementptr inbounds [4 x [39 x i8]], [4 x [39 x i8]]* %color_buf, i32 0, i64 1
  %arraydecay56 = getelementptr inbounds [39 x i8], [39 x i8]* %arrayidx55, i32 0, i32 0
  %arrayidx57 = getelementptr inbounds [4 x [39 x i8]], [4 x [39 x i8]]* %color_buf, i32 0, i64 2
  %arraydecay58 = getelementptr inbounds [39 x i8], [39 x i8]* %arrayidx57, i32 0, i32 0
  %arrayidx59 = getelementptr inbounds [4 x [39 x i8]], [4 x [39 x i8]]* %color_buf, i32 0, i64 3
  %arraydecay60 = getelementptr inbounds [39 x i8], [39 x i8]* %arrayidx59, i32 0, i32 0
  %call61 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %38, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.14, i32 0, i32 0), i8* %arraydecay52, i8* %arraydecay54, i8* %arraydecay56, i8* %arraydecay58, i8* %arraydecay60)
  %arraydecay62 = getelementptr inbounds [39 x i8], [39 x i8]* %buf, i32 0, i32 0
  %39 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg, align 8
  %middle = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %39, i32 0, i32 1
  %40 = load double, double* %middle, align 8
  %call63 = call i8* @g_ascii_formatd(i8* %arraydecay62, i32 39, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i32 0, i32 0), double %40)
  %arrayidx64 = getelementptr inbounds [4 x [39 x i8]], [4 x [39 x i8]]* %color_buf, i32 0, i64 0
  %arraydecay65 = getelementptr inbounds [39 x i8], [39 x i8]* %arrayidx64, i32 0, i32 0
  %41 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg, align 8
  %left_color66 = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %41, i32 0, i32 4
  %r67 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %left_color66, i32 0, i32 0
  %42 = load double, double* %r67, align 8
  %43 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg, align 8
  %right_color = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %43, i32 0, i32 6
  %r68 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %right_color, i32 0, i32 0
  %44 = load double, double* %r68, align 8
  %add = fadd double %42, %44
  %div = fdiv double %add, 2.000000e+00
  %call69 = call i8* @g_ascii_formatd(i8* %arraydecay65, i32 39, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i32 0, i32 0), double %div)
  %arrayidx70 = getelementptr inbounds [4 x [39 x i8]], [4 x [39 x i8]]* %color_buf, i32 0, i64 1
  %arraydecay71 = getelementptr inbounds [39 x i8], [39 x i8]* %arrayidx70, i32 0, i32 0
  %45 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg, align 8
  %left_color72 = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %45, i32 0, i32 4
  %g73 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %left_color72, i32 0, i32 1
  %46 = load double, double* %g73, align 8
  %47 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg, align 8
  %right_color74 = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %47, i32 0, i32 6
  %g75 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %right_color74, i32 0, i32 1
  %48 = load double, double* %g75, align 8
  %add76 = fadd double %46, %48
  %div77 = fdiv double %add76, 2.000000e+00
  %call78 = call i8* @g_ascii_formatd(i8* %arraydecay71, i32 39, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i32 0, i32 0), double %div77)
  %arrayidx79 = getelementptr inbounds [4 x [39 x i8]], [4 x [39 x i8]]* %color_buf, i32 0, i64 2
  %arraydecay80 = getelementptr inbounds [39 x i8], [39 x i8]* %arrayidx79, i32 0, i32 0
  %49 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg, align 8
  %left_color81 = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %49, i32 0, i32 4
  %b82 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %left_color81, i32 0, i32 2
  %50 = load double, double* %b82, align 8
  %51 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg, align 8
  %right_color83 = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %51, i32 0, i32 6
  %b84 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %right_color83, i32 0, i32 2
  %52 = load double, double* %b84, align 8
  %add85 = fadd double %50, %52
  %div86 = fdiv double %add85, 2.000000e+00
  %call87 = call i8* @g_ascii_formatd(i8* %arraydecay80, i32 39, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i32 0, i32 0), double %div86)
  %arrayidx88 = getelementptr inbounds [4 x [39 x i8]], [4 x [39 x i8]]* %color_buf, i32 0, i64 3
  %arraydecay89 = getelementptr inbounds [39 x i8], [39 x i8]* %arrayidx88, i32 0, i32 0
  %53 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg, align 8
  %left_color90 = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %53, i32 0, i32 4
  %a91 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %left_color90, i32 0, i32 3
  %54 = load double, double* %a91, align 8
  %55 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg, align 8
  %right_color92 = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %55, i32 0, i32 6
  %a93 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %right_color92, i32 0, i32 3
  %56 = load double, double* %a93, align 8
  %add94 = fadd double %54, %56
  %div95 = fdiv double %add94, 2.000000e+00
  %sub96 = fsub double 1.000000e+00, %div95
  %call97 = call i8* @g_ascii_formatd(i8* %arraydecay89, i32 39, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i32 0, i32 0), double %sub96)
  %57 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %arraydecay98 = getelementptr inbounds [39 x i8], [39 x i8]* %buf, i32 0, i32 0
  %arrayidx99 = getelementptr inbounds [4 x [39 x i8]], [4 x [39 x i8]]* %color_buf, i32 0, i64 0
  %arraydecay100 = getelementptr inbounds [39 x i8], [39 x i8]* %arrayidx99, i32 0, i32 0
  %arrayidx101 = getelementptr inbounds [4 x [39 x i8]], [4 x [39 x i8]]* %color_buf, i32 0, i64 1
  %arraydecay102 = getelementptr inbounds [39 x i8], [39 x i8]* %arrayidx101, i32 0, i32 0
  %arrayidx103 = getelementptr inbounds [4 x [39 x i8]], [4 x [39 x i8]]* %color_buf, i32 0, i64 2
  %arraydecay104 = getelementptr inbounds [39 x i8], [39 x i8]* %arrayidx103, i32 0, i32 0
  %arrayidx105 = getelementptr inbounds [4 x [39 x i8]], [4 x [39 x i8]]* %color_buf, i32 0, i64 3
  %arraydecay106 = getelementptr inbounds [39 x i8], [39 x i8]* %arrayidx105, i32 0, i32 0
  %call107 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %57, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.14, i32 0, i32 0), i8* %arraydecay98, i8* %arraydecay100, i8* %arraydecay102, i8* %arraydecay104, i8* %arraydecay106)
  %arraydecay108 = getelementptr inbounds [39 x i8], [39 x i8]* %buf, i32 0, i32 0
  %58 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg, align 8
  %right = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %58, i32 0, i32 2
  %59 = load double, double* %right, align 8
  %call109 = call i8* @g_ascii_formatd(i8* %arraydecay108, i32 39, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i32 0, i32 0), double %59)
  %arrayidx110 = getelementptr inbounds [4 x [39 x i8]], [4 x [39 x i8]]* %color_buf, i32 0, i64 0
  %arraydecay111 = getelementptr inbounds [39 x i8], [39 x i8]* %arrayidx110, i32 0, i32 0
  %60 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg, align 8
  %right_color112 = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %60, i32 0, i32 6
  %r113 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %right_color112, i32 0, i32 0
  %61 = load double, double* %r113, align 8
  %call114 = call i8* @g_ascii_formatd(i8* %arraydecay111, i32 39, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i32 0, i32 0), double %61)
  %arrayidx115 = getelementptr inbounds [4 x [39 x i8]], [4 x [39 x i8]]* %color_buf, i32 0, i64 1
  %arraydecay116 = getelementptr inbounds [39 x i8], [39 x i8]* %arrayidx115, i32 0, i32 0
  %62 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg, align 8
  %right_color117 = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %62, i32 0, i32 6
  %g118 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %right_color117, i32 0, i32 1
  %63 = load double, double* %g118, align 8
  %call119 = call i8* @g_ascii_formatd(i8* %arraydecay116, i32 39, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i32 0, i32 0), double %63)
  %arrayidx120 = getelementptr inbounds [4 x [39 x i8]], [4 x [39 x i8]]* %color_buf, i32 0, i64 2
  %arraydecay121 = getelementptr inbounds [39 x i8], [39 x i8]* %arrayidx120, i32 0, i32 0
  %64 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg, align 8
  %right_color122 = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %64, i32 0, i32 6
  %b123 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %right_color122, i32 0, i32 2
  %65 = load double, double* %b123, align 8
  %call124 = call i8* @g_ascii_formatd(i8* %arraydecay121, i32 39, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i32 0, i32 0), double %65)
  %arrayidx125 = getelementptr inbounds [4 x [39 x i8]], [4 x [39 x i8]]* %color_buf, i32 0, i64 3
  %arraydecay126 = getelementptr inbounds [39 x i8], [39 x i8]* %arrayidx125, i32 0, i32 0
  %66 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg, align 8
  %right_color127 = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %66, i32 0, i32 6
  %a128 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %right_color127, i32 0, i32 3
  %67 = load double, double* %a128, align 8
  %sub129 = fsub double 1.000000e+00, %67
  %call130 = call i8* @g_ascii_formatd(i8* %arraydecay126, i32 39, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i32 0, i32 0), double %sub129)
  %68 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %arraydecay131 = getelementptr inbounds [39 x i8], [39 x i8]* %buf, i32 0, i32 0
  %arrayidx132 = getelementptr inbounds [4 x [39 x i8]], [4 x [39 x i8]]* %color_buf, i32 0, i64 0
  %arraydecay133 = getelementptr inbounds [39 x i8], [39 x i8]* %arrayidx132, i32 0, i32 0
  %arrayidx134 = getelementptr inbounds [4 x [39 x i8]], [4 x [39 x i8]]* %color_buf, i32 0, i64 1
  %arraydecay135 = getelementptr inbounds [39 x i8], [39 x i8]* %arrayidx134, i32 0, i32 0
  %arrayidx136 = getelementptr inbounds [4 x [39 x i8]], [4 x [39 x i8]]* %color_buf, i32 0, i64 2
  %arraydecay137 = getelementptr inbounds [39 x i8], [39 x i8]* %arrayidx136, i32 0, i32 0
  %arrayidx138 = getelementptr inbounds [4 x [39 x i8]], [4 x [39 x i8]]* %color_buf, i32 0, i64 3
  %arraydecay139 = getelementptr inbounds [39 x i8], [39 x i8]* %arrayidx138, i32 0, i32 0
  %call140 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %68, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.14, i32 0, i32 0), i8* %arraydecay131, i8* %arraydecay133, i8* %arraydecay135, i8* %arraydecay137, i8* %arraydecay139)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %69 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg, align 8
  %next = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %69, i32 0, i32 10
  %70 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %next, align 8
  store %struct._GimpGradientSegment* %70, %struct._GimpGradientSegment** %seg, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %71 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %call141 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %71, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.15, i32 0, i32 0))
  %72 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %call142 = call i32 @fclose(%struct._IO_FILE* %72)
  br label %if.end.143

if.end.143:                                       ; preds = %for.end
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.143, %if.then.26, %if.else.21, %if.else.14, %if.else.9
  %73 = load i32, i32* %retval
  ret i32 %73
}

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #4

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone }
attributes #6 = { nounwind }
attributes #7 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
