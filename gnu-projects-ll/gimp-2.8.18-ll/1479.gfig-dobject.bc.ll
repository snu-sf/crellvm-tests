; ModuleID = './plug-ins/gfig/gfig-dobject.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.GfigObjectClass = type { i32, i8*, void (%struct._GfigObject*, %struct._cairo*)*, void (%struct._GfigObject*)*, %struct._GfigObject* (%struct._GfigObject*)*, void (%struct._GdkPoint*)* }
%struct._GfigObject = type { i32, %struct.GfigObjectClass*, i32, %struct.DobjPoints*, %struct._Style, i32 }
%struct.DobjPoints = type { %struct.DobjPoints*, %struct._GdkPoint, i32 }
%struct._GdkPoint = type { i32, i32 }
%struct._Style = type { i8*, i8*, i32, i32, i32, i32, double, double, double, i32, double, i8*, i8*, i32, %struct._GimpRGB, %struct._GimpRGB, i32, i32 }
%struct._GimpRGB = type { double, double, double, double }
%struct._cairo = type opaque
%struct.GFigContext = type { i32, i32, i32, i32, %struct._GFigObj*, %struct._GfigObject*, %struct._GtkWidget*, %struct._Style, %struct.BrushDesc, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GimpRGB*, %struct._GimpRGB*, i32, i32 }
%struct._GFigObj = type { i8*, i8*, i8*, float, %struct.GfigOpts, %struct._GList*, i32, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget* }
%struct.GfigOpts = type { i32, i32, i32, i32, i32, i32, double, double, double, double, i32 }
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
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
%struct.SelectItVals = type { %struct.GfigOpts, i32, i32, i32, double, double, double, i32, i32, i32, i32, i32, double, i32, i32 }
%struct._GString = type { i8*, i64, i64 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@.str = private unnamed_addr constant [9 x i8] c"<EXTRA>\0A\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"%d\0A</EXTRA>\0A\00", align 1
@.str.2 = private unnamed_addr constant [43 x i8] c"Error loading object: type not recognized.\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"%d %d\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"<EXTRA>\00", align 1
@.str.5 = private unnamed_addr constant [39 x i8] c"Error while loading object (no points)\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.7 = private unnamed_addr constant [42 x i8] c"Error while loading object (no type data)\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"</EXTRA>\00", align 1
@.str.9 = private unnamed_addr constant [34 x i8] c"Syntax error while loading object\00", align 1
@dobj_class = external global [10 x %struct.GfigObjectClass], align 16
@gfig_context = external global %struct.GFigContext*, align 8
@operation_obj = internal global %struct._GfigObject* null, align 8
@selvals = external global %struct.SelectItVals, align 8
@move_all_pnt = internal global %struct._GdkPoint* null, align 8
@tmp_bezier = external global %struct._GfigObject*, align 8
@.str.10 = private unnamed_addr constant [7 x i8] c"Object\00", align 1
@.str.11 = private unnamed_addr constant [52 x i8] c"Internal error selvals.otype object operation start\00", align 1
@.str.12 = private unnamed_addr constant [38 x i8] c"Internal error in operation_obj->type\00", align 1
@.str.13 = private unnamed_addr constant [29 x i8] c"Internal error selvals.otype\00", align 1
@.str.14 = private unnamed_addr constant [7 x i8] c"%d %d\0A\00", align 1
@obj_show_single = external global i32, align 4
@need_to_scale = external global i32, align 4
@scale_x_factor = external global double, align 8
@scale_y_factor = external global double, align 8
@obj_creating = external global %struct._GfigObject*, align 8
@.str.15 = private unnamed_addr constant [45 x i8] c"Creating object, setting style from context\0A\00", align 1
@line_no = external global i32, align 4
@.str.16 = private unnamed_addr constant [19 x i8] c"Error reading file\00", align 1
@undo_level = external global i32, align 4
@undo_table = external global [10 x %struct._GList*], align 16
@.str.17 = private unnamed_addr constant [5 x i8] c"undo\00", align 1
@.str.18 = private unnamed_addr constant [59 x i8] c"Editing read-only object - you will not be able to save it\00", align 1
@.str.19 = private unnamed_addr constant [5 x i8] c"save\00", align 1
@.str.20 = private unnamed_addr constant [15 x i8] c"gfig-dobject.c\00", align 1
@__func__.d_pnt_add_line = private unnamed_addr constant [15 x i8] c"d_pnt_add_line\00", align 1
@.str.21 = private unnamed_addr constant [12 x i8] c"obj != NULL\00", align 1
@__func__.remove_obj_from_list = private unnamed_addr constant [21 x i8] c"remove_obj_from_list\00", align 1
@.str.22 = private unnamed_addr constant [16 x i8] c"del_obj != NULL\00", align 1
@.str.23 = private unnamed_addr constant [32 x i8] c"Hey where has the object gone ?\00", align 1
@__func__.update_pnts = private unnamed_addr constant [12 x i8] c"update_pnts\00", align 1
@__func__.get_diffs = private unnamed_addr constant [10 x i8] c"get_diffs\00", align 1

; Function Attrs: nounwind uwtable
define void @d_save_object(%struct._GfigObject* %obj, %struct._GString* %string) #0 {
entry:
  %obj.addr = alloca %struct._GfigObject*, align 8
  %string.addr = alloca %struct._GString*, align 8
  store %struct._GfigObject* %obj, %struct._GfigObject** %obj.addr, align 8
  store %struct._GString* %string, %struct._GString** %string.addr, align 8
  %0 = load %struct._GfigObject*, %struct._GfigObject** %obj.addr, align 8
  %1 = load %struct._GString*, %struct._GString** %string.addr, align 8
  call void @do_save_obj(%struct._GfigObject* %0, %struct._GString* %1)
  %2 = load %struct._GfigObject*, %struct._GfigObject** %obj.addr, align 8
  %type = getelementptr inbounds %struct._GfigObject, %struct._GfigObject* %2, i32 0, i32 0
  %3 = load i32, i32* %type, align 4
  switch i32 %3, label %sw.default [
    i32 9, label %sw.bb
    i32 6, label %sw.bb
    i32 8, label %sw.bb
    i32 7, label %sw.bb
  ]

sw.bb:                                            ; preds = %entry, %entry, %entry, %entry
  %4 = load %struct._GString*, %struct._GString** %string.addr, align 8
  call void (%struct._GString*, i8*, ...) @g_string_append_printf(%struct._GString* %4, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0))
  %5 = load %struct._GString*, %struct._GString** %string.addr, align 8
  %6 = load %struct._GfigObject*, %struct._GfigObject** %obj.addr, align 8
  %type_data = getelementptr inbounds %struct._GfigObject, %struct._GfigObject* %6, i32 0, i32 2
  %7 = load i32, i32* %type_data, align 4
  call void (%struct._GString*, i8*, ...) @g_string_append_printf(%struct._GString* %5, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i32 %7)
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb
  ret void
}

; Function Attrs: nounwind uwtable
define void @do_save_obj(%struct._GfigObject* %obj, %struct._GString* %string) #0 {
entry:
  %obj.addr = alloca %struct._GfigObject*, align 8
  %string.addr = alloca %struct._GString*, align 8
  %spnt = alloca %struct.DobjPoints*, align 8
  store %struct._GfigObject* %obj, %struct._GfigObject** %obj.addr, align 8
  store %struct._GString* %string, %struct._GString** %string.addr, align 8
  %0 = load %struct._GfigObject*, %struct._GfigObject** %obj.addr, align 8
  %points = getelementptr inbounds %struct._GfigObject, %struct._GfigObject* %0, i32 0, i32 3
  %1 = load %struct.DobjPoints*, %struct.DobjPoints** %points, align 8
  store %struct.DobjPoints* %1, %struct.DobjPoints** %spnt, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load %struct.DobjPoints*, %struct.DobjPoints** %spnt, align 8
  %tobool = icmp ne %struct.DobjPoints* %2, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load %struct._GString*, %struct._GString** %string.addr, align 8
  %4 = load %struct.DobjPoints*, %struct.DobjPoints** %spnt, align 8
  %pnt = getelementptr inbounds %struct.DobjPoints, %struct.DobjPoints* %4, i32 0, i32 1
  %x = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %pnt, i32 0, i32 0
  %5 = load i32, i32* %x, align 4
  %6 = load %struct.DobjPoints*, %struct.DobjPoints** %spnt, align 8
  %pnt1 = getelementptr inbounds %struct.DobjPoints, %struct.DobjPoints* %6, i32 0, i32 1
  %y = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %pnt1, i32 0, i32 1
  %7 = load i32, i32* %y, align 4
  call void (%struct._GString*, i8*, ...) @g_string_append_printf(%struct._GString* %3, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i32 0, i32 0), i32 %5, i32 %7)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %8 = load %struct.DobjPoints*, %struct.DobjPoints** %spnt, align 8
  %next = getelementptr inbounds %struct.DobjPoints, %struct.DobjPoints* %8, i32 0, i32 0
  %9 = load %struct.DobjPoints*, %struct.DobjPoints** %next, align 8
  store %struct.DobjPoints* %9, %struct.DobjPoints** %spnt, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

declare void @g_string_append_printf(%struct._GString*, i8*, ...) #1

; Function Attrs: nounwind uwtable
define %struct._GfigObject* @d_load_object(i8* %desc, %struct._IO_FILE* %fp) #0 {
entry:
  %retval = alloca %struct._GfigObject*, align 8
  %desc.addr = alloca i8*, align 8
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %new_obj = alloca %struct._GfigObject*, align 8
  %xpnt = alloca i32, align 4
  %ypnt = alloca i32, align 4
  %buf = alloca [256 x i8], align 16
  %type = alloca i32, align 4
  store i8* %desc, i8** %desc.addr, align 8
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8
  store %struct._GfigObject* null, %struct._GfigObject** %new_obj, align 8
  %0 = load i8*, i8** %desc.addr, align 8
  %call = call i32 @gfig_read_object_type(i8* %0)
  store i32 %call, i32* %type, align 4
  %1 = load i32, i32* %type, align 4
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void (i8*, ...) @g_message(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i32 0, i32 0))
  store %struct._GfigObject* null, %struct._GfigObject** %retval
  br label %return

if.end:                                           ; preds = %entry
  br label %while.cond

while.cond:                                       ; preds = %if.end.32, %if.end.26, %if.end
  %arraydecay = getelementptr inbounds [256 x i8], [256 x i8]* %buf, i32 0, i32 0
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call1 = call i8* @get_line(i8* %arraydecay, i32 256, %struct._IO_FILE* %2, i32 0)
  %tobool = icmp ne i8* %call1, null
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %arraydecay2 = getelementptr inbounds [256 x i8], [256 x i8]* %buf, i32 0, i32 0
  %call3 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %arraydecay2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0), i32* %xpnt, i32* %ypnt) #4
  %cmp4 = icmp ne i32 %call3, 2
  br i1 %cmp4, label %if.then.5, label %if.end.27

if.then.5:                                        ; preds = %while.body
  %arraydecay6 = getelementptr inbounds [256 x i8], [256 x i8]* %buf, i32 0, i32 0
  %call7 = call i32 @strcmp(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i32 0, i32 0), i8* %arraydecay6) #7
  %tobool8 = icmp ne i32 %call7, 0
  br i1 %tobool8, label %if.else, label %if.then.9

if.then.9:                                        ; preds = %if.then.5
  %3 = load %struct._GfigObject*, %struct._GfigObject** %new_obj, align 8
  %tobool10 = icmp ne %struct._GfigObject* %3, null
  br i1 %tobool10, label %if.end.12, label %if.then.11

if.then.11:                                       ; preds = %if.then.9
  call void (i8*, ...) @g_message(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.5, i32 0, i32 0))
  store %struct._GfigObject* null, %struct._GfigObject** %retval
  br label %return

if.end.12:                                        ; preds = %if.then.9
  %arraydecay13 = getelementptr inbounds [256 x i8], [256 x i8]* %buf, i32 0, i32 0
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call14 = call i8* @get_line(i8* %arraydecay13, i32 256, %struct._IO_FILE* %4, i32 0)
  %arraydecay15 = getelementptr inbounds [256 x i8], [256 x i8]* %buf, i32 0, i32 0
  %5 = load %struct._GfigObject*, %struct._GfigObject** %new_obj, align 8
  %type_data = getelementptr inbounds %struct._GfigObject, %struct._GfigObject* %5, i32 0, i32 2
  %call16 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %arraydecay15, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i32 0, i32 0), i32* %type_data) #4
  %cmp17 = icmp ne i32 %call16, 1
  br i1 %cmp17, label %if.then.18, label %if.end.19

if.then.18:                                       ; preds = %if.end.12
  call void (i8*, ...) @g_message(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.7, i32 0, i32 0))
  %6 = load %struct._GfigObject*, %struct._GfigObject** %new_obj, align 8
  %7 = bitcast %struct._GfigObject* %6 to i8*
  call void @g_free(i8* %7)
  store %struct._GfigObject* null, %struct._GfigObject** %retval
  br label %return

if.end.19:                                        ; preds = %if.end.12
  %arraydecay20 = getelementptr inbounds [256 x i8], [256 x i8]* %buf, i32 0, i32 0
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call21 = call i8* @get_line(i8* %arraydecay20, i32 256, %struct._IO_FILE* %8, i32 0)
  %arraydecay22 = getelementptr inbounds [256 x i8], [256 x i8]* %buf, i32 0, i32 0
  %call23 = call i32 @strcmp(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i32 0, i32 0), i8* %arraydecay22) #7
  %tobool24 = icmp ne i32 %call23, 0
  br i1 %tobool24, label %if.then.25, label %if.end.26

if.then.25:                                       ; preds = %if.end.19
  call void (i8*, ...) @g_message(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.9, i32 0, i32 0))
  %9 = load %struct._GfigObject*, %struct._GfigObject** %new_obj, align 8
  %10 = bitcast %struct._GfigObject* %9 to i8*
  call void @g_free(i8* %10)
  store %struct._GfigObject* null, %struct._GfigObject** %retval
  br label %return

if.end.26:                                        ; preds = %if.end.19
  br label %while.cond

if.else:                                          ; preds = %if.then.5
  %11 = load %struct._GfigObject*, %struct._GfigObject** %new_obj, align 8
  store %struct._GfigObject* %11, %struct._GfigObject** %retval
  br label %return

if.end.27:                                        ; preds = %while.body
  %12 = load %struct._GfigObject*, %struct._GfigObject** %new_obj, align 8
  %tobool28 = icmp ne %struct._GfigObject* %12, null
  br i1 %tobool28, label %if.else.31, label %if.then.29

if.then.29:                                       ; preds = %if.end.27
  %13 = load i32, i32* %type, align 4
  %14 = load i32, i32* %xpnt, align 4
  %15 = load i32, i32* %ypnt, align 4
  %call30 = call %struct._GfigObject* @d_new_object(i32 %13, i32 %14, i32 %15)
  store %struct._GfigObject* %call30, %struct._GfigObject** %new_obj, align 8
  br label %if.end.32

if.else.31:                                       ; preds = %if.end.27
  %16 = load %struct._GfigObject*, %struct._GfigObject** %new_obj, align 8
  %17 = load i32, i32* %xpnt, align 4
  %18 = load i32, i32* %ypnt, align 4
  call void @d_pnt_add_line(%struct._GfigObject* %16, i32 %17, i32 %18, i32 -1)
  br label %if.end.32

if.end.32:                                        ; preds = %if.else.31, %if.then.29
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %19 = load %struct._GfigObject*, %struct._GfigObject** %new_obj, align 8
  store %struct._GfigObject* %19, %struct._GfigObject** %retval
  br label %return

return:                                           ; preds = %while.end, %if.else, %if.then.25, %if.then.18, %if.then.11, %if.then
  %20 = load %struct._GfigObject*, %struct._GfigObject** %retval
  ret %struct._GfigObject* %20
}

; Function Attrs: nounwind uwtable
define internal i32 @gfig_read_object_type(i8* %desc) #0 {
entry:
  %retval = alloca i32, align 4
  %desc.addr = alloca i8*, align 8
  %ptr = alloca i8*, align 8
  %type = alloca i32, align 4
  store i8* %desc, i8** %desc.addr, align 8
  %0 = load i8*, i8** %desc.addr, align 8
  store i8* %0, i8** %ptr, align 8
  %1 = load i8*, i8** %ptr, align 8
  %2 = load i8, i8* %1, align 1
  %conv = sext i8 %2 to i32
  %cmp = icmp ne i32 %conv, 60
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load i8*, i8** %ptr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %3, i32 1
  store i8* %incdec.ptr, i8** %ptr, align 8
  store i32 1, i32* %type, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %4 = load i32, i32* %type, align 4
  %cmp2 = icmp ult i32 %4, 10
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i8*, i8** %ptr, align 8
  %6 = load i8*, i8** %ptr, align 8
  %7 = load i32, i32* %type, align 4
  %idxprom = zext i32 %7 to i64
  %arrayidx = getelementptr inbounds [10 x %struct.GfigObjectClass], [10 x %struct.GfigObjectClass]* @dobj_class, i32 0, i64 %idxprom
  %name = getelementptr inbounds %struct.GfigObjectClass, %struct.GfigObjectClass* %arrayidx, i32 0, i32 1
  %8 = load i8*, i8** %name, align 8
  %call = call i8* @strstr(i8* %6, i8* %8) #7
  %cmp4 = icmp eq i8* %5, %call
  br i1 %cmp4, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %for.body
  %9 = load i32, i32* %type, align 4
  store i32 %9, i32* %retval
  br label %return

if.end.7:                                         ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.7
  %10 = load i32, i32* %type, align 4
  %inc = add i32 %10, 1
  store i32 %inc, i32* %type, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then.6, %if.then
  %11 = load i32, i32* %retval
  ret i32 %11
}

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
define i8* @get_line(i8* %buf, i32 %s, %struct._IO_FILE* %from, i32 %init) #0 {
entry:
  %retval = alloca i8*, align 8
  %buf.addr = alloca i8*, align 8
  %s.addr = alloca i32, align 4
  %from.addr = alloca %struct._IO_FILE*, align 8
  %init.addr = alloca i32, align 4
  %slen = alloca i32, align 4
  %ret = alloca i8*, align 8
  store i8* %buf, i8** %buf.addr, align 8
  store i32 %s, i32* %s.addr, align 4
  store %struct._IO_FILE* %from, %struct._IO_FILE** %from.addr, align 8
  store i32 %init, i32* %init.addr, align 4
  %0 = load i32, i32* %init.addr, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 1, i32* @line_no, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  %1 = load i32, i32* @line_no, align 4
  %inc = add nsw i32 %1, 1
  store i32 %inc, i32* @line_no, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %do.body

do.body:                                          ; preds = %land.end, %if.end
  %2 = load i8*, i8** %buf.addr, align 8
  %3 = load i32, i32* %s.addr, align 4
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %from.addr, align 8
  %call = call i8* @fgets(i8* %2, i32 %3, %struct._IO_FILE* %4)
  store i8* %call, i8** %ret, align 8
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %from.addr, align 8
  %call1 = call i32 @ferror(%struct._IO_FILE* %5) #4
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %do.cond
  %6 = load i8*, i8** %buf.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %6, i64 0
  %7 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %7 to i32
  %cmp = icmp eq i32 %conv, 35
  br label %land.end

land.end:                                         ; preds = %land.rhs, %do.cond
  %8 = phi i1 [ false, %do.cond ], [ %cmp, %land.rhs ]
  br i1 %8, label %do.body, label %do.end

do.end:                                           ; preds = %land.end
  %9 = load i8*, i8** %buf.addr, align 8
  %call4 = call i64 @strlen(i8* %9) #7
  %conv5 = trunc i64 %call4 to i32
  store i32 %conv5, i32* %slen, align 4
  %10 = load i32, i32* %slen, align 4
  %cmp6 = icmp sgt i32 %10, 0
  br i1 %cmp6, label %if.then.8, label %if.end.10

if.then.8:                                        ; preds = %do.end
  %11 = load i32, i32* %slen, align 4
  %sub = sub nsw i32 %11, 1
  %idxprom = sext i32 %sub to i64
  %12 = load i8*, i8** %buf.addr, align 8
  %arrayidx9 = getelementptr inbounds i8, i8* %12, i64 %idxprom
  store i8 0, i8* %arrayidx9, align 1
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.8, %do.end
  %13 = load i32, i32* %slen, align 4
  %cmp11 = icmp sgt i32 %13, 1
  br i1 %cmp11, label %land.lhs.true, label %if.end.23

land.lhs.true:                                    ; preds = %if.end.10
  %14 = load i32, i32* %slen, align 4
  %sub13 = sub nsw i32 %14, 2
  %idxprom14 = sext i32 %sub13 to i64
  %15 = load i8*, i8** %buf.addr, align 8
  %arrayidx15 = getelementptr inbounds i8, i8* %15, i64 %idxprom14
  %16 = load i8, i8* %arrayidx15, align 1
  %conv16 = sext i8 %16 to i32
  %cmp17 = icmp eq i32 %conv16, 13
  br i1 %cmp17, label %if.then.19, label %if.end.23

if.then.19:                                       ; preds = %land.lhs.true
  %17 = load i32, i32* %slen, align 4
  %sub20 = sub nsw i32 %17, 2
  %idxprom21 = sext i32 %sub20 to i64
  %18 = load i8*, i8** %buf.addr, align 8
  %arrayidx22 = getelementptr inbounds i8, i8* %18, i64 %idxprom21
  store i8 0, i8* %arrayidx22, align 1
  br label %if.end.23

if.end.23:                                        ; preds = %if.then.19, %land.lhs.true, %if.end.10
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** %from.addr, align 8
  %call24 = call i32 @ferror(%struct._IO_FILE* %19) #4
  %tobool25 = icmp ne i32 %call24, 0
  br i1 %tobool25, label %if.then.26, label %if.end.28

if.then.26:                                       ; preds = %if.end.23
  %call27 = call i8* @gettext(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.16, i32 0, i32 0)) #4
  call void (i8*, ...) @g_warning(i8* %call27)
  store i8* null, i8** %retval
  br label %return

if.end.28:                                        ; preds = %if.end.23
  %20 = load i8*, i8** %ret, align 8
  store i8* %20, i8** %retval
  br label %return

return:                                           ; preds = %if.end.28, %if.then.26
  %21 = load i8*, i8** %retval
  ret i8* %21
}

; Function Attrs: nounwind
declare i32 @__isoc99_sscanf(i8*, i8*, ...) #2

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #3

declare void @g_free(i8*) #1

; Function Attrs: nounwind uwtable
define %struct._GfigObject* @d_new_object(i32 %type, i32 %x, i32 %y) #0 {
entry:
  %type.addr = alloca i32, align 4
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %nobj = alloca %struct._GfigObject*, align 8
  store i32 %type, i32* %type.addr, align 4
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  %call = call noalias i8* @g_malloc0_n(i64 1, i64 208)
  %0 = bitcast i8* %call to %struct._GfigObject*
  store %struct._GfigObject* %0, %struct._GfigObject** %nobj, align 8
  %1 = load i32, i32* %type.addr, align 4
  %2 = load %struct._GfigObject*, %struct._GfigObject** %nobj, align 8
  %type1 = getelementptr inbounds %struct._GfigObject, %struct._GfigObject* %2, i32 0, i32 0
  store i32 %1, i32* %type1, align 4
  %3 = load i32, i32* %type.addr, align 4
  %idxprom = zext i32 %3 to i64
  %arrayidx = getelementptr inbounds [10 x %struct.GfigObjectClass], [10 x %struct.GfigObjectClass]* @dobj_class, i32 0, i64 %idxprom
  %4 = load %struct._GfigObject*, %struct._GfigObject** %nobj, align 8
  %class = getelementptr inbounds %struct._GfigObject, %struct._GfigObject* %4, i32 0, i32 1
  store %struct.GfigObjectClass* %arrayidx, %struct.GfigObjectClass** %class, align 8
  %5 = load i32, i32* %x.addr, align 4
  %6 = load i32, i32* %y.addr, align 4
  %call2 = call %struct.DobjPoints* @new_dobjpoint(i32 %5, i32 %6)
  %7 = load %struct._GfigObject*, %struct._GfigObject** %nobj, align 8
  %points = getelementptr inbounds %struct._GfigObject, %struct._GfigObject* %7, i32 0, i32 3
  store %struct.DobjPoints* %call2, %struct.DobjPoints** %points, align 8
  %8 = load %struct._GfigObject*, %struct._GfigObject** %nobj, align 8
  %type_data = getelementptr inbounds %struct._GfigObject, %struct._GfigObject* %8, i32 0, i32 2
  store i32 0, i32* %type_data, align 4
  %9 = load i32, i32* %type.addr, align 4
  %cmp = icmp eq i32 %9, 9
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %10 = load %struct._GfigObject*, %struct._GfigObject** %nobj, align 8
  %type_data3 = getelementptr inbounds %struct._GfigObject, %struct._GfigObject* %10, i32 0, i32 2
  store i32 4, i32* %type_data3, align 4
  br label %if.end.17

if.else:                                          ; preds = %entry
  %11 = load i32, i32* %type.addr, align 4
  %cmp4 = icmp eq i32 %11, 6
  br i1 %cmp4, label %if.then.5, label %if.else.7

if.then.5:                                        ; preds = %if.else
  %12 = load %struct._GfigObject*, %struct._GfigObject** %nobj, align 8
  %type_data6 = getelementptr inbounds %struct._GfigObject, %struct._GfigObject* %12, i32 0, i32 2
  store i32 3, i32* %type_data6, align 4
  br label %if.end.16

if.else.7:                                        ; preds = %if.else
  %13 = load i32, i32* %type.addr, align 4
  %cmp8 = icmp eq i32 %13, 8
  br i1 %cmp8, label %if.then.9, label %if.else.11

if.then.9:                                        ; preds = %if.else.7
  %14 = load %struct._GfigObject*, %struct._GfigObject** %nobj, align 8
  %type_data10 = getelementptr inbounds %struct._GfigObject, %struct._GfigObject* %14, i32 0, i32 2
  store i32 4, i32* %type_data10, align 4
  br label %if.end.15

if.else.11:                                       ; preds = %if.else.7
  %15 = load i32, i32* %type.addr, align 4
  %cmp12 = icmp eq i32 %15, 7
  br i1 %cmp12, label %if.then.13, label %if.end

if.then.13:                                       ; preds = %if.else.11
  %16 = load %struct._GfigObject*, %struct._GfigObject** %nobj, align 8
  %type_data14 = getelementptr inbounds %struct._GfigObject, %struct._GfigObject* %16, i32 0, i32 2
  store i32 3, i32* %type_data14, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.13, %if.else.11
  br label %if.end.15

if.end.15:                                        ; preds = %if.end, %if.then.9
  br label %if.end.16

if.end.16:                                        ; preds = %if.end.15, %if.then.5
  br label %if.end.17

if.end.17:                                        ; preds = %if.end.16, %if.then
  %17 = load %struct._GfigObject*, %struct._GfigObject** %nobj, align 8
  ret %struct._GfigObject* %17
}

; Function Attrs: nounwind uwtable
define void @d_pnt_add_line(%struct._GfigObject* %obj, i32 %x, i32 %y, i32 %pos) #0 {
entry:
  %obj.addr = alloca %struct._GfigObject*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %pos.addr = alloca i32, align 4
  %npnts = alloca %struct.DobjPoints*, align 8
  %pnt = alloca %struct.DobjPoints*, align 8
  store %struct._GfigObject* %obj, %struct._GfigObject** %obj.addr, align 8
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  store i32 %pos, i32* %pos.addr, align 4
  %0 = load i32, i32* %x.addr, align 4
  %1 = load i32, i32* %y.addr, align 4
  %call = call %struct.DobjPoints* @new_dobjpoint(i32 %0, i32 %1)
  store %struct.DobjPoints* %call, %struct.DobjPoints** %npnts, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %2 = load %struct._GfigObject*, %struct._GfigObject** %obj.addr, align 8
  %cmp = icmp ne %struct._GfigObject* %2, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_assertion_message_expr(i8* null, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.20, i32 0, i32 0), i32 1036, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.d_pnt_add_line, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.21, i32 0, i32 0)) #8
  unreachable

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %3 = load i32, i32* %pos.addr, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.else.3, label %if.then.1

if.then.1:                                        ; preds = %do.end
  %4 = load %struct._GfigObject*, %struct._GfigObject** %obj.addr, align 8
  %points = getelementptr inbounds %struct._GfigObject, %struct._GfigObject* %4, i32 0, i32 3
  %5 = load %struct.DobjPoints*, %struct.DobjPoints** %points, align 8
  %6 = load %struct.DobjPoints*, %struct.DobjPoints** %npnts, align 8
  %next = getelementptr inbounds %struct.DobjPoints, %struct.DobjPoints* %6, i32 0, i32 0
  store %struct.DobjPoints* %5, %struct.DobjPoints** %next, align 8
  %7 = load %struct.DobjPoints*, %struct.DobjPoints** %npnts, align 8
  %8 = load %struct._GfigObject*, %struct._GfigObject** %obj.addr, align 8
  %points2 = getelementptr inbounds %struct._GfigObject, %struct._GfigObject* %8, i32 0, i32 3
  store %struct.DobjPoints* %7, %struct.DobjPoints** %points2, align 8
  br label %if.end.17

if.else.3:                                        ; preds = %do.end
  %9 = load %struct._GfigObject*, %struct._GfigObject** %obj.addr, align 8
  %points4 = getelementptr inbounds %struct._GfigObject, %struct._GfigObject* %9, i32 0, i32 3
  %10 = load %struct.DobjPoints*, %struct.DobjPoints** %points4, align 8
  store %struct.DobjPoints* %10, %struct.DobjPoints** %pnt, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.16, %if.else.3
  %11 = load i32, i32* %pos.addr, align 4
  %cmp5 = icmp slt i32 %11, 0
  br i1 %cmp5, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %while.cond
  %12 = load i32, i32* %pos.addr, align 4
  %dec = add nsw i32 %12, -1
  store i32 %dec, i32* %pos.addr, align 4
  %cmp6 = icmp sgt i32 %12, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %while.cond
  %13 = phi i1 [ true, %while.cond ], [ %cmp6, %lor.rhs ]
  br i1 %13, label %while.body, label %while.end

while.body:                                       ; preds = %lor.end
  %14 = load %struct.DobjPoints*, %struct.DobjPoints** %pnt, align 8
  %next7 = getelementptr inbounds %struct.DobjPoints, %struct.DobjPoints* %14, i32 0, i32 0
  %15 = load %struct.DobjPoints*, %struct.DobjPoints** %next7, align 8
  %tobool8 = icmp ne %struct.DobjPoints* %15, null
  br i1 %tobool8, label %lor.lhs.false, label %if.then.10

lor.lhs.false:                                    ; preds = %while.body
  %16 = load i32, i32* %pos.addr, align 4
  %tobool9 = icmp ne i32 %16, 0
  br i1 %tobool9, label %if.else.14, label %if.then.10

if.then.10:                                       ; preds = %lor.lhs.false, %while.body
  %17 = load %struct.DobjPoints*, %struct.DobjPoints** %pnt, align 8
  %next11 = getelementptr inbounds %struct.DobjPoints, %struct.DobjPoints* %17, i32 0, i32 0
  %18 = load %struct.DobjPoints*, %struct.DobjPoints** %next11, align 8
  %19 = load %struct.DobjPoints*, %struct.DobjPoints** %npnts, align 8
  %next12 = getelementptr inbounds %struct.DobjPoints, %struct.DobjPoints* %19, i32 0, i32 0
  store %struct.DobjPoints* %18, %struct.DobjPoints** %next12, align 8
  %20 = load %struct.DobjPoints*, %struct.DobjPoints** %npnts, align 8
  %21 = load %struct.DobjPoints*, %struct.DobjPoints** %pnt, align 8
  %next13 = getelementptr inbounds %struct.DobjPoints, %struct.DobjPoints* %21, i32 0, i32 0
  store %struct.DobjPoints* %20, %struct.DobjPoints** %next13, align 8
  br label %while.end

if.else.14:                                       ; preds = %lor.lhs.false
  %22 = load %struct.DobjPoints*, %struct.DobjPoints** %pnt, align 8
  %next15 = getelementptr inbounds %struct.DobjPoints, %struct.DobjPoints* %22, i32 0, i32 0
  %23 = load %struct.DobjPoints*, %struct.DobjPoints** %next15, align 8
  store %struct.DobjPoints* %23, %struct.DobjPoints** %pnt, align 8
  br label %if.end.16

if.end.16:                                        ; preds = %if.else.14
  br label %while.cond

while.end:                                        ; preds = %if.then.10, %lor.end
  br label %if.end.17

if.end.17:                                        ; preds = %while.end, %if.then.1
  ret void
}

declare noalias i8* @g_malloc0_n(i64, i64) #1

; Function Attrs: nounwind uwtable
define %struct.DobjPoints* @new_dobjpoint(i32 %x, i32 %y) #0 {
entry:
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %npnt = alloca %struct.DobjPoints*, align 8
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  %call = call noalias i8* @g_malloc0_n(i64 1, i64 24)
  %0 = bitcast i8* %call to %struct.DobjPoints*
  store %struct.DobjPoints* %0, %struct.DobjPoints** %npnt, align 8
  %1 = load i32, i32* %x.addr, align 4
  %2 = load %struct.DobjPoints*, %struct.DobjPoints** %npnt, align 8
  %pnt = getelementptr inbounds %struct.DobjPoints, %struct.DobjPoints* %2, i32 0, i32 1
  %x1 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %pnt, i32 0, i32 0
  store i32 %1, i32* %x1, align 4
  %3 = load i32, i32* %y.addr, align 4
  %4 = load %struct.DobjPoints*, %struct.DobjPoints** %npnt, align 8
  %pnt2 = getelementptr inbounds %struct.DobjPoints, %struct.DobjPoints* %4, i32 0, i32 1
  %y3 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %pnt2, i32 0, i32 1
  store i32 %3, i32* %y3, align 4
  %5 = load %struct.DobjPoints*, %struct.DobjPoints** %npnt, align 8
  ret %struct.DobjPoints* %5
}

; Function Attrs: nounwind uwtable
define void @gfig_init_object_classes() #0 {
entry:
  call void @d_arc_object_class_init()
  call void @d_line_object_class_init()
  call void @d_rectangle_object_class_init()
  call void @d_circle_object_class_init()
  call void @d_ellipse_object_class_init()
  call void @d_poly_object_class_init()
  call void @d_spiral_object_class_init()
  call void @d_star_object_class_init()
  call void @d_bezier_object_class_init()
  ret void
}

declare void @d_arc_object_class_init() #1

declare void @d_line_object_class_init() #1

declare void @d_rectangle_object_class_init() #1

declare void @d_circle_object_class_init() #1

declare void @d_ellipse_object_class_init() #1

declare void @d_poly_object_class_init() #1

declare void @d_spiral_object_class_init() #1

declare void @d_star_object_class_init() #1

declare void @d_bezier_object_class_init() #1

; Function Attrs: nounwind uwtable
define void @d_delete_dobjpoints(%struct.DobjPoints* %pnts) #0 {
entry:
  %pnts.addr = alloca %struct.DobjPoints*, align 8
  %next = alloca %struct.DobjPoints*, align 8
  %pnt2del = alloca %struct.DobjPoints*, align 8
  store %struct.DobjPoints* %pnts, %struct.DobjPoints** %pnts.addr, align 8
  %0 = load %struct.DobjPoints*, %struct.DobjPoints** %pnts.addr, align 8
  store %struct.DobjPoints* %0, %struct.DobjPoints** %pnt2del, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %1 = load %struct.DobjPoints*, %struct.DobjPoints** %pnt2del, align 8
  %tobool = icmp ne %struct.DobjPoints* %1, null
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load %struct.DobjPoints*, %struct.DobjPoints** %pnt2del, align 8
  %next1 = getelementptr inbounds %struct.DobjPoints, %struct.DobjPoints* %2, i32 0, i32 0
  %3 = load %struct.DobjPoints*, %struct.DobjPoints** %next1, align 8
  store %struct.DobjPoints* %3, %struct.DobjPoints** %next, align 8
  %4 = load %struct.DobjPoints*, %struct.DobjPoints** %pnt2del, align 8
  %5 = bitcast %struct.DobjPoints* %4 to i8*
  call void @g_free(i8* %5)
  %6 = load %struct.DobjPoints*, %struct.DobjPoints** %next, align 8
  store %struct.DobjPoints* %6, %struct.DobjPoints** %pnt2del, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: nounwind uwtable
define %struct.DobjPoints* @d_copy_dobjpoints(%struct.DobjPoints* %pnts) #0 {
entry:
  %pnts.addr = alloca %struct.DobjPoints*, align 8
  %ret = alloca %struct.DobjPoints*, align 8
  %head = alloca %struct.DobjPoints*, align 8
  %newpnt = alloca %struct.DobjPoints*, align 8
  %pnt2copy = alloca %struct.DobjPoints*, align 8
  store %struct.DobjPoints* %pnts, %struct.DobjPoints** %pnts.addr, align 8
  store %struct.DobjPoints* null, %struct.DobjPoints** %ret, align 8
  store %struct.DobjPoints* null, %struct.DobjPoints** %head, align 8
  %0 = load %struct.DobjPoints*, %struct.DobjPoints** %pnts.addr, align 8
  store %struct.DobjPoints* %0, %struct.DobjPoints** %pnt2copy, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load %struct.DobjPoints*, %struct.DobjPoints** %pnt2copy, align 8
  %tobool = icmp ne %struct.DobjPoints* %1, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load %struct.DobjPoints*, %struct.DobjPoints** %pnt2copy, align 8
  %pnt = getelementptr inbounds %struct.DobjPoints, %struct.DobjPoints* %2, i32 0, i32 1
  %x = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %pnt, i32 0, i32 0
  %3 = load i32, i32* %x, align 4
  %4 = load %struct.DobjPoints*, %struct.DobjPoints** %pnt2copy, align 8
  %pnt1 = getelementptr inbounds %struct.DobjPoints, %struct.DobjPoints* %4, i32 0, i32 1
  %y = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %pnt1, i32 0, i32 1
  %5 = load i32, i32* %y, align 4
  %call = call %struct.DobjPoints* @new_dobjpoint(i32 %3, i32 %5)
  store %struct.DobjPoints* %call, %struct.DobjPoints** %newpnt, align 8
  %6 = load %struct.DobjPoints*, %struct.DobjPoints** %ret, align 8
  %tobool2 = icmp ne %struct.DobjPoints* %6, null
  br i1 %tobool2, label %if.else, label %if.then

if.then:                                          ; preds = %for.body
  %7 = load %struct.DobjPoints*, %struct.DobjPoints** %newpnt, align 8
  store %struct.DobjPoints* %7, %struct.DobjPoints** %ret, align 8
  store %struct.DobjPoints* %7, %struct.DobjPoints** %head, align 8
  br label %if.end

if.else:                                          ; preds = %for.body
  %8 = load %struct.DobjPoints*, %struct.DobjPoints** %newpnt, align 8
  %9 = load %struct.DobjPoints*, %struct.DobjPoints** %head, align 8
  %next = getelementptr inbounds %struct.DobjPoints, %struct.DobjPoints* %9, i32 0, i32 0
  store %struct.DobjPoints* %8, %struct.DobjPoints** %next, align 8
  %10 = load %struct.DobjPoints*, %struct.DobjPoints** %newpnt, align 8
  store %struct.DobjPoints* %10, %struct.DobjPoints** %head, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %11 = load %struct.DobjPoints*, %struct.DobjPoints** %pnt2copy, align 8
  %next3 = getelementptr inbounds %struct.DobjPoints, %struct.DobjPoints* %11, i32 0, i32 0
  %12 = load %struct.DobjPoints*, %struct.DobjPoints** %next3, align 8
  store %struct.DobjPoints* %12, %struct.DobjPoints** %pnt2copy, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %13 = load %struct.DobjPoints*, %struct.DobjPoints** %ret, align 8
  ret %struct.DobjPoints* %13
}

; Function Attrs: nounwind uwtable
define void @object_operation_start(%struct._GdkPoint* %pnt, i32 %shift_down) #0 {
entry:
  %pnt.addr = alloca %struct._GdkPoint*, align 8
  %shift_down.addr = alloca i32, align 4
  %new_obj = alloca %struct._GfigObject*, align 8
  store %struct._GdkPoint* %pnt, %struct._GdkPoint** %pnt.addr, align 8
  store i32 %shift_down, i32* %shift_down.addr, align 4
  %0 = load %struct.GFigContext*, %struct.GFigContext** @gfig_context, align 8
  %current_obj = getelementptr inbounds %struct.GFigContext, %struct.GFigContext* %0, i32 0, i32 4
  %1 = load %struct._GFigObj*, %struct._GFigObj** %current_obj, align 8
  %2 = load %struct._GdkPoint*, %struct._GdkPoint** %pnt.addr, align 8
  %call = call %struct._GfigObject* @get_nearest_objs(%struct._GFigObj* %1, %struct._GdkPoint* %2)
  store %struct._GfigObject* %call, %struct._GfigObject** @operation_obj, align 8
  %3 = load i32, i32* %shift_down.addr, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %4 = load i32, i32* getelementptr inbounds (%struct.SelectItVals, %struct.SelectItVals* @selvals, i32 0, i32 14), align 4
  %cmp = icmp eq i32 %4, 11
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %call1 = call noalias i8* @g_malloc_n(i64 1, i64 8)
  %5 = bitcast i8* %call1 to %struct._GdkPoint*
  store %struct._GdkPoint* %5, %struct._GdkPoint** @move_all_pnt, align 8
  %6 = load %struct._GdkPoint*, %struct._GdkPoint** @move_all_pnt, align 8
  %7 = load %struct._GdkPoint*, %struct._GdkPoint** %pnt.addr, align 8
  %8 = bitcast %struct._GdkPoint* %6 to i8*
  %9 = bitcast %struct._GdkPoint* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %8, i8* %9, i64 8, i32 4, i1 false)
  call void @setup_undo()
  br label %sw.epilog.40

if.end:                                           ; preds = %land.lhs.true, %entry
  %10 = load %struct._GfigObject*, %struct._GfigObject** @operation_obj, align 8
  %tobool2 = icmp ne %struct._GfigObject* %10, null
  br i1 %tobool2, label %if.end.4, label %if.then.3

if.then.3:                                        ; preds = %if.end
  br label %sw.epilog.40

if.end.4:                                         ; preds = %if.end
  %11 = load %struct._GfigObject*, %struct._GfigObject** @operation_obj, align 8
  %12 = load %struct.GFigContext*, %struct.GFigContext** @gfig_context, align 8
  %selected_obj = getelementptr inbounds %struct.GFigContext, %struct.GFigContext* %12, i32 0, i32 5
  store %struct._GfigObject* %11, %struct._GfigObject** %selected_obj, align 8
  call void @setup_undo()
  %13 = load i32, i32* getelementptr inbounds (%struct.SelectItVals, %struct.SelectItVals* @selvals, i32 0, i32 14), align 4
  switch i32 %13, label %sw.default.39 [
    i32 11, label %sw.bb
    i32 12, label %sw.bb.8
    i32 13, label %sw.bb.25
    i32 15, label %sw.bb.35
    i32 16, label %sw.bb.37
    i32 14, label %sw.bb.38
  ]

sw.bb:                                            ; preds = %if.end.4
  %14 = load %struct._GfigObject*, %struct._GfigObject** @operation_obj, align 8
  %type = getelementptr inbounds %struct._GfigObject, %struct._GfigObject* %14, i32 0, i32 0
  %15 = load i32, i32* %type, align 4
  %cmp5 = icmp eq i32 %15, 9
  br i1 %cmp5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %sw.bb
  %16 = load %struct._GfigObject*, %struct._GfigObject** @operation_obj, align 8
  store %struct._GfigObject* %16, %struct._GfigObject** @tmp_bezier, align 8
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.6, %sw.bb
  br label %sw.epilog.40

sw.bb.8:                                          ; preds = %if.end.4
  %17 = load %struct._GfigObject*, %struct._GfigObject** @operation_obj, align 8
  %type9 = getelementptr inbounds %struct._GfigObject, %struct._GfigObject* %17, i32 0, i32 0
  %18 = load i32, i32* %type9, align 4
  %cmp10 = icmp eq i32 %18, 9
  br i1 %cmp10, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %sw.bb.8
  %19 = load %struct._GfigObject*, %struct._GfigObject** @operation_obj, align 8
  store %struct._GfigObject* %19, %struct._GfigObject** @tmp_bezier, align 8
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.11, %sw.bb.8
  %20 = load %struct._GfigObject*, %struct._GfigObject** @operation_obj, align 8
  %type13 = getelementptr inbounds %struct._GfigObject, %struct._GfigObject* %20, i32 0, i32 0
  %21 = load i32, i32* %type13, align 4
  %cmp14 = icmp eq i32 %21, 6
  br i1 %cmp14, label %land.lhs.true.17, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.12
  %22 = load %struct._GfigObject*, %struct._GfigObject** @operation_obj, align 8
  %type15 = getelementptr inbounds %struct._GfigObject, %struct._GfigObject* %22, i32 0, i32 0
  %23 = load i32, i32* %type15, align 4
  %cmp16 = icmp eq i32 %23, 7
  br i1 %cmp16, label %land.lhs.true.17, label %if.end.24

land.lhs.true.17:                                 ; preds = %lor.lhs.false, %if.end.12
  %24 = load i32, i32* %shift_down.addr, align 4
  %tobool18 = icmp ne i32 %24, 0
  br i1 %tobool18, label %if.then.19, label %if.end.24

if.then.19:                                       ; preds = %land.lhs.true.17
  %25 = load %struct._GfigObject*, %struct._GfigObject** @operation_obj, align 8
  %type20 = getelementptr inbounds %struct._GfigObject, %struct._GfigObject* %25, i32 0, i32 0
  %26 = load i32, i32* %type20, align 4
  switch i32 %26, label %sw.default [
    i32 6, label %sw.bb.21
    i32 7, label %sw.bb.22
  ]

sw.bb.21:                                         ; preds = %if.then.19
  %27 = load %struct._GfigObject*, %struct._GfigObject** @operation_obj, align 8
  call void @d_poly2lines(%struct._GfigObject* %27)
  br label %sw.epilog

sw.bb.22:                                         ; preds = %if.then.19
  %28 = load %struct._GfigObject*, %struct._GfigObject** @operation_obj, align 8
  call void @d_star2lines(%struct._GfigObject* %28)
  br label %sw.epilog

sw.default:                                       ; preds = %if.then.19
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.22, %sw.bb.21
  %29 = load %struct._GfigObject*, %struct._GfigObject** @operation_obj, align 8
  %points = getelementptr inbounds %struct._GfigObject, %struct._GfigObject* %29, i32 0, i32 3
  %30 = load %struct.DobjPoints*, %struct.DobjPoints** %points, align 8
  %31 = load %struct._GdkPoint*, %struct._GdkPoint** %pnt.addr, align 8
  %call23 = call i32 @scan_obj_points(%struct.DobjPoints* %30, %struct._GdkPoint* %31)
  %32 = load %struct.GFigContext*, %struct.GFigContext** @gfig_context, align 8
  %preview = getelementptr inbounds %struct.GFigContext, %struct.GFigContext* %32, i32 0, i32 6
  %33 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  call void @gtk_widget_queue_draw(%struct._GtkWidget* %33)
  br label %if.end.24

if.end.24:                                        ; preds = %sw.epilog, %land.lhs.true.17, %lor.lhs.false
  br label %sw.epilog.40

sw.bb.25:                                         ; preds = %if.end.4
  %34 = load %struct._GfigObject*, %struct._GfigObject** @operation_obj, align 8
  %class = getelementptr inbounds %struct._GfigObject, %struct._GfigObject* %34, i32 0, i32 1
  %35 = load %struct.GfigObjectClass*, %struct.GfigObjectClass** %class, align 8
  %copyfunc = getelementptr inbounds %struct.GfigObjectClass, %struct.GfigObjectClass* %35, i32 0, i32 4
  %36 = load %struct._GfigObject* (%struct._GfigObject*)*, %struct._GfigObject* (%struct._GfigObject*)** %copyfunc, align 8
  %37 = load %struct._GfigObject*, %struct._GfigObject** @operation_obj, align 8
  %call26 = call %struct._GfigObject* %36(%struct._GfigObject* %37)
  store %struct._GfigObject* %call26, %struct._GfigObject** %new_obj, align 8
  %38 = load %struct._GfigObject*, %struct._GfigObject** %new_obj, align 8
  %tobool27 = icmp ne %struct._GfigObject* %38, null
  br i1 %tobool27, label %if.then.28, label %if.end.34

if.then.28:                                       ; preds = %sw.bb.25
  %39 = load %struct._GfigObject*, %struct._GfigObject** %new_obj, align 8
  %style = getelementptr inbounds %struct._GfigObject, %struct._GfigObject* %39, i32 0, i32 4
  %40 = load %struct._GfigObject*, %struct._GfigObject** @operation_obj, align 8
  %style29 = getelementptr inbounds %struct._GfigObject, %struct._GfigObject* %40, i32 0, i32 4
  call void @gfig_style_copy(%struct._Style* %style, %struct._Style* %style29, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i32 0, i32 0))
  %41 = load %struct._GfigObject*, %struct._GfigObject** %new_obj, align 8
  %points30 = getelementptr inbounds %struct._GfigObject, %struct._GfigObject* %41, i32 0, i32 3
  %42 = load %struct.DobjPoints*, %struct.DobjPoints** %points30, align 8
  %43 = load %struct._GdkPoint*, %struct._GdkPoint** %pnt.addr, align 8
  %call31 = call i32 @scan_obj_points(%struct.DobjPoints* %42, %struct._GdkPoint* %43)
  %44 = load %struct.GFigContext*, %struct.GFigContext** @gfig_context, align 8
  %current_obj32 = getelementptr inbounds %struct.GFigContext, %struct.GFigContext* %44, i32 0, i32 4
  %45 = load %struct._GFigObj*, %struct._GFigObj** %current_obj32, align 8
  %46 = load %struct._GfigObject*, %struct._GfigObject** %new_obj, align 8
  call void @add_to_all_obj(%struct._GFigObj* %45, %struct._GfigObject* %46)
  %47 = load %struct._GfigObject*, %struct._GfigObject** %new_obj, align 8
  store %struct._GfigObject* %47, %struct._GfigObject** @operation_obj, align 8
  store i32 14, i32* getelementptr inbounds (%struct.SelectItVals, %struct.SelectItVals* @selvals, i32 0, i32 14), align 4
  %48 = load %struct.GFigContext*, %struct.GFigContext** @gfig_context, align 8
  %preview33 = getelementptr inbounds %struct.GFigContext, %struct.GFigContext* %48, i32 0, i32 6
  %49 = load %struct._GtkWidget*, %struct._GtkWidget** %preview33, align 8
  call void @gtk_widget_queue_draw(%struct._GtkWidget* %49)
  br label %if.end.34

if.end.34:                                        ; preds = %if.then.28, %sw.bb.25
  br label %sw.epilog.40

sw.bb.35:                                         ; preds = %if.end.4
  %50 = load %struct.GFigContext*, %struct.GFigContext** @gfig_context, align 8
  %current_obj36 = getelementptr inbounds %struct.GFigContext, %struct.GFigContext* %50, i32 0, i32 4
  %51 = load %struct._GFigObj*, %struct._GFigObj** %current_obj36, align 8
  %52 = load %struct._GfigObject*, %struct._GfigObject** @operation_obj, align 8
  call void @remove_obj_from_list(%struct._GFigObj* %51, %struct._GfigObject* %52)
  br label %sw.epilog.40

sw.bb.37:                                         ; preds = %if.end.4
  br label %sw.epilog.40

sw.bb.38:                                         ; preds = %if.end.4
  br label %sw.default.39

sw.default.39:                                    ; preds = %if.end.4, %sw.bb.38
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.11, i32 0, i32 0))
  br label %sw.epilog.40

sw.epilog.40:                                     ; preds = %if.then, %if.then.3, %sw.default.39, %sw.bb.37, %sw.bb.35, %if.end.34, %if.end.24, %if.end.7
  ret void
}

; Function Attrs: nounwind uwtable
define internal %struct._GfigObject* @get_nearest_objs(%struct._GFigObj* %obj, %struct._GdkPoint* %pnt) #0 {
entry:
  %retval = alloca %struct._GfigObject*, align 8
  %obj.addr = alloca %struct._GFigObj*, align 8
  %pnt.addr = alloca %struct._GdkPoint*, align 8
  %all = alloca %struct._GList*, align 8
  %test_obj = alloca %struct._GfigObject*, align 8
  %count = alloca i32, align 4
  store %struct._GFigObj* %obj, %struct._GFigObj** %obj.addr, align 8
  store %struct._GdkPoint* %pnt, %struct._GdkPoint** %pnt.addr, align 8
  store i32 0, i32* %count, align 4
  %0 = load %struct._GFigObj*, %struct._GFigObj** %obj.addr, align 8
  %tobool = icmp ne %struct._GFigObj* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._GfigObject* null, %struct._GfigObject** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._GFigObj*, %struct._GFigObj** %obj.addr, align 8
  %obj_list = getelementptr inbounds %struct._GFigObj, %struct._GFigObj* %1, i32 0, i32 5
  %2 = load %struct._GList*, %struct._GList** %obj_list, align 8
  store %struct._GList* %2, %struct._GList** %all, align 8
  br label %for.cond

for.cond:                                         ; preds = %cond.end, %if.end
  %3 = load %struct._GList*, %struct._GList** %all, align 8
  %tobool1 = icmp ne %struct._GList* %3, null
  br i1 %tobool1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load %struct._GList*, %struct._GList** %all, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %4, i32 0, i32 0
  %5 = load i8*, i8** %data, align 8
  %6 = bitcast i8* %5 to %struct._GfigObject*
  store %struct._GfigObject* %6, %struct._GfigObject** %test_obj, align 8
  %7 = load i32, i32* %count, align 4
  %8 = load i32, i32* @obj_show_single, align 4
  %cmp = icmp eq i32 %7, %8
  br i1 %cmp, label %if.then.3, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %9 = load i32, i32* @obj_show_single, align 4
  %cmp2 = icmp eq i32 %9, -1
  br i1 %cmp2, label %if.then.3, label %if.end.7

if.then.3:                                        ; preds = %lor.lhs.false, %for.body
  %10 = load %struct._GfigObject*, %struct._GfigObject** %test_obj, align 8
  %points = getelementptr inbounds %struct._GfigObject, %struct._GfigObject* %10, i32 0, i32 3
  %11 = load %struct.DobjPoints*, %struct.DobjPoints** %points, align 8
  %12 = load %struct._GdkPoint*, %struct._GdkPoint** %pnt.addr, align 8
  %call = call i32 @scan_obj_points(%struct.DobjPoints* %11, %struct._GdkPoint* %12)
  %tobool4 = icmp ne i32 %call, 0
  br i1 %tobool4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.then.3
  %13 = load %struct._GfigObject*, %struct._GfigObject** %test_obj, align 8
  store %struct._GfigObject* %13, %struct._GfigObject** %retval
  br label %return

if.end.6:                                         ; preds = %if.then.3
  br label %if.end.7

if.end.7:                                         ; preds = %if.end.6, %lor.lhs.false
  %14 = load i32, i32* %count, align 4
  %inc = add nsw i32 %14, 1
  store i32 %inc, i32* %count, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end.7
  %15 = load %struct._GList*, %struct._GList** %all, align 8
  %tobool8 = icmp ne %struct._GList* %15, null
  br i1 %tobool8, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.inc
  %16 = load %struct._GList*, %struct._GList** %all, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %16, i32 0, i32 1
  %17 = load %struct._GList*, %struct._GList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.inc
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GList* [ %17, %cond.true ], [ null, %cond.false ]
  store %struct._GList* %cond, %struct._GList** %all, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store %struct._GfigObject* null, %struct._GfigObject** %retval
  br label %return

return:                                           ; preds = %for.end, %if.then.5, %if.then
  %18 = load %struct._GfigObject*, %struct._GfigObject** %retval
  ret %struct._GfigObject* %18
}

declare noalias i8* @g_malloc_n(i64, i64) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #4

; Function Attrs: nounwind uwtable
define void @setup_undo() #0 {
entry:
  %loop = alloca i32, align 4
  %0 = load %struct.GFigContext*, %struct.GFigContext** @gfig_context, align 8
  %current_obj = getelementptr inbounds %struct.GFigContext, %struct.GFigContext* %0, i32 0, i32 4
  %1 = load %struct._GFigObj*, %struct._GFigObj** %current_obj, align 8
  %tobool = icmp ne %struct._GFigObj* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i32, i32* @undo_level, align 4
  %3 = load i32, i32* getelementptr inbounds (%struct.SelectItVals, %struct.SelectItVals* @selvals, i32 0, i32 2), align 4
  %sub = sub nsw i32 %3, 1
  %cmp = icmp sge i32 %2, %sub
  br i1 %cmp, label %if.then.1, label %if.else

if.then.1:                                        ; preds = %if.end
  %4 = load %struct._GList*, %struct._GList** getelementptr inbounds ([10 x %struct._GList*], [10 x %struct._GList*]* @undo_table, i32 0, i64 0), align 8
  %tobool2 = icmp ne %struct._GList* %4, null
  br i1 %tobool2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.then.1
  %5 = load %struct._GList*, %struct._GList** getelementptr inbounds ([10 x %struct._GList*], [10 x %struct._GList*]* @undo_table, i32 0, i64 0), align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %5, i32 0, i32 0
  %6 = load i8*, i8** %data, align 8
  %7 = bitcast i8* %6 to %struct._GfigObject*
  call void @free_one_obj(%struct._GfigObject* %7)
  br label %if.end.4

if.end.4:                                         ; preds = %if.then.3, %if.then.1
  store i32 0, i32* %loop, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.4
  %8 = load i32, i32* %loop, align 4
  %9 = load i32, i32* @undo_level, align 4
  %cmp5 = icmp slt i32 %8, %9
  br i1 %cmp5, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load i32, i32* %loop, align 4
  %add = add nsw i32 %10, 1
  %idxprom = sext i32 %add to i64
  %arrayidx = getelementptr inbounds [10 x %struct._GList*], [10 x %struct._GList*]* @undo_table, i32 0, i64 %idxprom
  %11 = load %struct._GList*, %struct._GList** %arrayidx, align 8
  %12 = load i32, i32* %loop, align 4
  %idxprom6 = sext i32 %12 to i64
  %arrayidx7 = getelementptr inbounds [10 x %struct._GList*], [10 x %struct._GList*]* @undo_table, i32 0, i64 %idxprom6
  store %struct._GList* %11, %struct._GList** %arrayidx7, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %13 = load i32, i32* %loop, align 4
  %inc = add nsw i32 %13, 1
  store i32 %inc, i32* %loop, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.9

if.else:                                          ; preds = %if.end
  %14 = load i32, i32* @undo_level, align 4
  %inc8 = add nsw i32 %14, 1
  store i32 %inc8, i32* @undo_level, align 4
  br label %if.end.9

if.end.9:                                         ; preds = %if.else, %for.end
  %15 = load %struct.GFigContext*, %struct.GFigContext** @gfig_context, align 8
  %current_obj10 = getelementptr inbounds %struct.GFigContext, %struct.GFigContext* %15, i32 0, i32 4
  %16 = load %struct._GFigObj*, %struct._GFigObj** %current_obj10, align 8
  %obj_list = getelementptr inbounds %struct._GFigObj, %struct._GFigObj* %16, i32 0, i32 5
  %17 = load %struct._GList*, %struct._GList** %obj_list, align 8
  %call = call %struct._GList* @copy_all_objs(%struct._GList* %17)
  %18 = load i32, i32* @undo_level, align 4
  %idxprom11 = sext i32 %18 to i64
  %arrayidx12 = getelementptr inbounds [10 x %struct._GList*], [10 x %struct._GList*]* @undo_table, i32 0, i64 %idxprom11
  store %struct._GList* %call, %struct._GList** %arrayidx12, align 8
  call void @gfig_dialog_action_set_sensitive(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i32 0, i32 0), i32 1)
  %19 = load %struct.GFigContext*, %struct.GFigContext** @gfig_context, align 8
  %current_obj13 = getelementptr inbounds %struct.GFigContext, %struct.GFigContext* %19, i32 0, i32 4
  %20 = load %struct._GFigObj*, %struct._GFigObj** %current_obj13, align 8
  %obj_status = getelementptr inbounds %struct._GFigObj, %struct._GFigObj* %20, i32 0, i32 6
  %21 = load i32, i32* %obj_status, align 4
  %or = or i32 %21, 1
  store i32 %or, i32* %obj_status, align 4
  br label %return

return:                                           ; preds = %if.end.9, %if.then
  ret void
}

declare void @d_poly2lines(%struct._GfigObject*) #1

declare void @d_star2lines(%struct._GfigObject*) #1

; Function Attrs: nounwind uwtable
define internal i32 @scan_obj_points(%struct.DobjPoints* %opnt, %struct._GdkPoint* %pnt) #0 {
entry:
  %retval = alloca i32, align 4
  %opnt.addr = alloca %struct.DobjPoints*, align 8
  %pnt.addr = alloca %struct._GdkPoint*, align 8
  store %struct.DobjPoints* %opnt, %struct.DobjPoints** %opnt.addr, align 8
  store %struct._GdkPoint* %pnt, %struct._GdkPoint** %pnt.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %0 = load %struct.DobjPoints*, %struct.DobjPoints** %opnt.addr, align 8
  %tobool = icmp ne %struct.DobjPoints* %0, null
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load %struct.DobjPoints*, %struct.DobjPoints** %opnt.addr, align 8
  %pnt1 = getelementptr inbounds %struct.DobjPoints, %struct.DobjPoints* %1, i32 0, i32 1
  %2 = load %struct._GdkPoint*, %struct._GdkPoint** %pnt.addr, align 8
  %call = call i32 @inside_sqr(%struct._GdkPoint* %pnt1, %struct._GdkPoint* %2)
  %tobool2 = icmp ne i32 %call, 0
  br i1 %tobool2, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %3 = load %struct.DobjPoints*, %struct.DobjPoints** %opnt.addr, align 8
  %found_me = getelementptr inbounds %struct.DobjPoints, %struct.DobjPoints* %3, i32 0, i32 2
  store i32 1, i32* %found_me, align 4
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %while.body
  %4 = load %struct.DobjPoints*, %struct.DobjPoints** %opnt.addr, align 8
  %found_me3 = getelementptr inbounds %struct.DobjPoints, %struct.DobjPoints* %4, i32 0, i32 2
  store i32 0, i32* %found_me3, align 4
  %5 = load %struct.DobjPoints*, %struct.DobjPoints** %opnt.addr, align 8
  %next = getelementptr inbounds %struct.DobjPoints, %struct.DobjPoints* %5, i32 0, i32 0
  %6 = load %struct.DobjPoints*, %struct.DobjPoints** %next, align 8
  store %struct.DobjPoints* %6, %struct.DobjPoints** %opnt.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %while.end, %if.then
  %7 = load i32, i32* %retval
  ret i32 %7
}

declare void @gtk_widget_queue_draw(%struct._GtkWidget*) #1

declare void @gfig_style_copy(%struct._Style*, %struct._Style*, i8*) #1

; Function Attrs: nounwind uwtable
define void @add_to_all_obj(%struct._GFigObj* %fobj, %struct._GfigObject* %obj) #0 {
entry:
  %fobj.addr = alloca %struct._GFigObj*, align 8
  %obj.addr = alloca %struct._GfigObject*, align 8
  %nobj = alloca %struct._GList*, align 8
  store %struct._GFigObj* %fobj, %struct._GFigObj** %fobj.addr, align 8
  store %struct._GfigObject* %obj, %struct._GfigObject** %obj.addr, align 8
  store %struct._GList* null, %struct._GList** %nobj, align 8
  %0 = load %struct._GList*, %struct._GList** %nobj, align 8
  %1 = load %struct._GfigObject*, %struct._GfigObject** %obj.addr, align 8
  %2 = bitcast %struct._GfigObject* %1 to i8*
  %call = call %struct._GList* @g_list_append(%struct._GList* %0, i8* %2)
  store %struct._GList* %call, %struct._GList** %nobj, align 8
  %3 = load i32, i32* @need_to_scale, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load %struct._GfigObject*, %struct._GfigObject** %obj.addr, align 8
  %points = getelementptr inbounds %struct._GfigObject, %struct._GfigObject* %4, i32 0, i32 3
  %5 = load %struct.DobjPoints*, %struct.DobjPoints** %points, align 8
  %6 = load double, double* @scale_x_factor, align 8
  %7 = load double, double* @scale_y_factor, align 8
  call void @scale_obj_points(%struct.DobjPoints* %5, double %6, double %7)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %8 = load %struct._GFigObj*, %struct._GFigObj** %fobj.addr, align 8
  %9 = load %struct._GList*, %struct._GList** %nobj, align 8
  call void @prepend_to_all_obj(%struct._GFigObj* %8, %struct._GList* %9)
  %10 = load %struct._GfigObject*, %struct._GfigObject** %obj.addr, align 8
  %11 = load %struct.GFigContext*, %struct.GFigContext** @gfig_context, align 8
  %selected_obj = getelementptr inbounds %struct.GFigContext, %struct.GFigContext* %11, i32 0, i32 5
  store %struct._GfigObject* %10, %struct._GfigObject** %selected_obj, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @remove_obj_from_list(%struct._GFigObj* %obj, %struct._GfigObject* %del_obj) #0 {
entry:
  %obj.addr = alloca %struct._GFigObj*, align 8
  %del_obj.addr = alloca %struct._GfigObject*, align 8
  store %struct._GFigObj* %obj, %struct._GFigObj** %obj.addr, align 8
  store %struct._GfigObject* %del_obj, %struct._GfigObject** %del_obj.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GfigObject*, %struct._GfigObject** %del_obj.addr, align 8
  %cmp = icmp ne %struct._GfigObject* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_assertion_message_expr(i8* null, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.20, i32 0, i32 0), i32 557, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.remove_obj_from_list, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.22, i32 0, i32 0)) #8
  unreachable

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %1 = load %struct._GFigObj*, %struct._GFigObj** %obj.addr, align 8
  %obj_list = getelementptr inbounds %struct._GFigObj, %struct._GFigObj* %1, i32 0, i32 5
  %2 = load %struct._GList*, %struct._GList** %obj_list, align 8
  %3 = load %struct._GfigObject*, %struct._GfigObject** %del_obj.addr, align 8
  %4 = bitcast %struct._GfigObject* %3 to i8*
  %call = call %struct._GList* @g_list_find(%struct._GList* %2, i8* %4)
  %tobool = icmp ne %struct._GList* %call, null
  br i1 %tobool, label %if.then.1, label %if.else.15

if.then.1:                                        ; preds = %do.end
  %5 = load %struct._GFigObj*, %struct._GFigObj** %obj.addr, align 8
  %obj_list2 = getelementptr inbounds %struct._GFigObj, %struct._GFigObj* %5, i32 0, i32 5
  %6 = load %struct._GList*, %struct._GList** %obj_list2, align 8
  %7 = load %struct._GfigObject*, %struct._GfigObject** %del_obj.addr, align 8
  %8 = bitcast %struct._GfigObject* %7 to i8*
  %call3 = call %struct._GList* @g_list_remove(%struct._GList* %6, i8* %8)
  %9 = load %struct._GFigObj*, %struct._GFigObj** %obj.addr, align 8
  %obj_list4 = getelementptr inbounds %struct._GFigObj, %struct._GFigObj* %9, i32 0, i32 5
  store %struct._GList* %call3, %struct._GList** %obj_list4, align 8
  %10 = load %struct._GfigObject*, %struct._GfigObject** %del_obj.addr, align 8
  call void @free_one_obj(%struct._GfigObject* %10)
  %11 = load %struct._GFigObj*, %struct._GFigObj** %obj.addr, align 8
  %obj_list5 = getelementptr inbounds %struct._GFigObj, %struct._GFigObj* %11, i32 0, i32 5
  %12 = load %struct._GList*, %struct._GList** %obj_list5, align 8
  %tobool6 = icmp ne %struct._GList* %12, null
  br i1 %tobool6, label %if.then.7, label %if.else.9

if.then.7:                                        ; preds = %if.then.1
  %13 = load %struct._GFigObj*, %struct._GFigObj** %obj.addr, align 8
  %obj_list8 = getelementptr inbounds %struct._GFigObj, %struct._GFigObj* %13, i32 0, i32 5
  %14 = load %struct._GList*, %struct._GList** %obj_list8, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %14, i32 0, i32 0
  %15 = load i8*, i8** %data, align 8
  %16 = bitcast i8* %15 to %struct._GfigObject*
  %17 = load %struct.GFigContext*, %struct.GFigContext** @gfig_context, align 8
  %selected_obj = getelementptr inbounds %struct.GFigContext, %struct.GFigContext* %17, i32 0, i32 5
  store %struct._GfigObject* %16, %struct._GfigObject** %selected_obj, align 8
  br label %if.end.11

if.else.9:                                        ; preds = %if.then.1
  %18 = load %struct.GFigContext*, %struct.GFigContext** @gfig_context, align 8
  %selected_obj10 = getelementptr inbounds %struct.GFigContext, %struct.GFigContext* %18, i32 0, i32 5
  store %struct._GfigObject* null, %struct._GfigObject** %selected_obj10, align 8
  br label %if.end.11

if.end.11:                                        ; preds = %if.else.9, %if.then.7
  %19 = load i32, i32* @obj_show_single, align 4
  %cmp12 = icmp ne i32 %19, -1
  br i1 %cmp12, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %if.end.11
  call void @draw_grid_clear()
  store i32 -1, i32* @obj_show_single, align 4
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.13, %if.end.11
  %20 = load %struct.GFigContext*, %struct.GFigContext** @gfig_context, align 8
  %preview = getelementptr inbounds %struct.GFigContext, %struct.GFigContext* %20, i32 0, i32 6
  %21 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  call void @gtk_widget_queue_draw(%struct._GtkWidget* %21)
  br label %if.end.17

if.else.15:                                       ; preds = %do.end
  %call16 = call i8* @gettext(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.23, i32 0, i32 0)) #4
  call void (i8*, ...) @g_warning(i8* %call16)
  br label %if.end.17

if.end.17:                                        ; preds = %if.else.15, %if.end.14
  ret void
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

; Function Attrs: nounwind uwtable
define void @object_operation_end(%struct._GdkPoint* %pnt, i32 %shift_down) #0 {
entry:
  %pnt.addr = alloca %struct._GdkPoint*, align 8
  %shift_down.addr = alloca i32, align 4
  store %struct._GdkPoint* %pnt, %struct._GdkPoint** %pnt.addr, align 8
  store i32 %shift_down, i32* %shift_down.addr, align 4
  %0 = load i32, i32* getelementptr inbounds (%struct.SelectItVals, %struct.SelectItVals* @selvals, i32 0, i32 14), align 4
  %cmp = icmp ne i32 %0, 15
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %1 = load %struct._GfigObject*, %struct._GfigObject** @operation_obj, align 8
  %tobool = icmp ne %struct._GfigObject* %1, null
  br i1 %tobool, label %land.lhs.true.1, label %if.end

land.lhs.true.1:                                  ; preds = %land.lhs.true
  %2 = load %struct._GfigObject*, %struct._GfigObject** @operation_obj, align 8
  %type = getelementptr inbounds %struct._GfigObject, %struct._GfigObject* %2, i32 0, i32 0
  %3 = load i32, i32* %type, align 4
  %cmp2 = icmp eq i32 %3, 9
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true.1
  store %struct._GfigObject* null, %struct._GfigObject** @tmp_bezier, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.1, %land.lhs.true, %entry
  %4 = load %struct._GfigObject*, %struct._GfigObject** @operation_obj, align 8
  %tobool3 = icmp ne %struct._GfigObject* %4, null
  br i1 %tobool3, label %land.lhs.true.4, label %if.end.7

land.lhs.true.4:                                  ; preds = %if.end
  %5 = load i32, i32* getelementptr inbounds (%struct.SelectItVals, %struct.SelectItVals* @selvals, i32 0, i32 14), align 4
  %cmp5 = icmp ne i32 %5, 15
  br i1 %cmp5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %land.lhs.true.4
  %6 = load %struct._GfigObject*, %struct._GfigObject** @operation_obj, align 8
  %style = getelementptr inbounds %struct._GfigObject, %struct._GfigObject* %6, i32 0, i32 4
  call void @gfig_style_set_context_from_style(%struct._Style* %style)
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.6, %land.lhs.true.4, %if.end
  store %struct._GfigObject* null, %struct._GfigObject** @operation_obj, align 8
  %7 = load %struct._GdkPoint*, %struct._GdkPoint** @move_all_pnt, align 8
  %tobool8 = icmp ne %struct._GdkPoint* %7, null
  br i1 %tobool8, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %if.end.7
  %8 = load %struct._GdkPoint*, %struct._GdkPoint** @move_all_pnt, align 8
  %9 = bitcast %struct._GdkPoint* %8 to i8*
  call void @g_free(i8* %9)
  store %struct._GdkPoint* null, %struct._GdkPoint** @move_all_pnt, align 8
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.9, %if.end.7
  %10 = load i32, i32* getelementptr inbounds (%struct.SelectItVals, %struct.SelectItVals* @selvals, i32 0, i32 14), align 4
  %cmp11 = icmp eq i32 %10, 14
  br i1 %cmp11, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %if.end.10
  store i32 13, i32* getelementptr inbounds (%struct.SelectItVals, %struct.SelectItVals* @selvals, i32 0, i32 14), align 4
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.12, %if.end.10
  ret void
}

declare void @gfig_style_set_context_from_style(%struct._Style*) #1

; Function Attrs: nounwind uwtable
define void @object_operation(%struct._GdkPoint* %to_pnt, i32 %shift_down) #0 {
entry:
  %to_pnt.addr = alloca %struct._GdkPoint*, align 8
  %shift_down.addr = alloca i32, align 4
  store %struct._GdkPoint* %to_pnt, %struct._GdkPoint** %to_pnt.addr, align 8
  store i32 %shift_down, i32* %shift_down.addr, align 4
  %0 = load %struct._GdkPoint*, %struct._GdkPoint** @move_all_pnt, align 8
  %tobool = icmp ne %struct._GdkPoint* %0, null
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, i32* %shift_down.addr, align 4
  %tobool1 = icmp ne i32 %1, 0
  br i1 %tobool1, label %land.lhs.true.2, label %if.end

land.lhs.true.2:                                  ; preds = %land.lhs.true
  %2 = load i32, i32* getelementptr inbounds (%struct.SelectItVals, %struct.SelectItVals* @selvals, i32 0, i32 14), align 4
  %cmp = icmp eq i32 %2, 11
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true.2
  %3 = load %struct._GdkPoint*, %struct._GdkPoint** %to_pnt.addr, align 8
  call void @do_move_all_obj(%struct._GdkPoint* %3)
  br label %sw.epilog.15

if.end:                                           ; preds = %land.lhs.true.2, %land.lhs.true, %entry
  %4 = load %struct._GfigObject*, %struct._GfigObject** @operation_obj, align 8
  %tobool3 = icmp ne %struct._GfigObject* %4, null
  br i1 %tobool3, label %if.end.5, label %if.then.4

if.then.4:                                        ; preds = %if.end
  br label %sw.epilog.15

if.end.5:                                         ; preds = %if.end
  %5 = load i32, i32* getelementptr inbounds (%struct.SelectItVals, %struct.SelectItVals* @selvals, i32 0, i32 14), align 4
  switch i32 %5, label %sw.default.14 [
    i32 11, label %sw.bb
    i32 14, label %sw.bb
    i32 12, label %sw.bb.7
    i32 15, label %sw.bb.12
    i32 16, label %sw.bb.12
    i32 13, label %sw.bb.13
  ]

sw.bb:                                            ; preds = %if.end.5, %if.end.5
  %6 = load %struct._GfigObject*, %struct._GfigObject** @operation_obj, align 8
  %type = getelementptr inbounds %struct._GfigObject, %struct._GfigObject* %6, i32 0, i32 0
  %7 = load i32, i32* %type, align 4
  switch i32 %7, label %sw.default [
    i32 1, label %sw.bb.6
    i32 2, label %sw.bb.6
    i32 3, label %sw.bb.6
    i32 4, label %sw.bb.6
    i32 6, label %sw.bb.6
    i32 5, label %sw.bb.6
    i32 7, label %sw.bb.6
    i32 8, label %sw.bb.6
    i32 9, label %sw.bb.6
  ]

sw.bb.6:                                          ; preds = %sw.bb, %sw.bb, %sw.bb, %sw.bb, %sw.bb, %sw.bb, %sw.bb, %sw.bb, %sw.bb
  %8 = load %struct._GfigObject*, %struct._GfigObject** @operation_obj, align 8
  %9 = load %struct._GdkPoint*, %struct._GdkPoint** %to_pnt.addr, align 8
  call void @do_move_obj(%struct._GfigObject* %8, %struct._GdkPoint* %9)
  br label %sw.epilog

sw.default:                                       ; preds = %sw.bb
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.12, i32 0, i32 0))
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.6
  br label %sw.epilog.15

sw.bb.7:                                          ; preds = %if.end.5
  %10 = load %struct._GfigObject*, %struct._GfigObject** @operation_obj, align 8
  %type8 = getelementptr inbounds %struct._GfigObject, %struct._GfigObject* %10, i32 0, i32 0
  %11 = load i32, i32* %type8, align 4
  switch i32 %11, label %sw.default.10 [
    i32 1, label %sw.bb.9
    i32 2, label %sw.bb.9
    i32 3, label %sw.bb.9
    i32 4, label %sw.bb.9
    i32 6, label %sw.bb.9
    i32 5, label %sw.bb.9
    i32 7, label %sw.bb.9
    i32 8, label %sw.bb.9
    i32 9, label %sw.bb.9
  ]

sw.bb.9:                                          ; preds = %sw.bb.7, %sw.bb.7, %sw.bb.7, %sw.bb.7, %sw.bb.7, %sw.bb.7, %sw.bb.7, %sw.bb.7, %sw.bb.7
  %12 = load %struct._GfigObject*, %struct._GfigObject** @operation_obj, align 8
  %13 = load %struct._GdkPoint*, %struct._GdkPoint** %to_pnt.addr, align 8
  call void @do_move_obj_pnt(%struct._GfigObject* %12, %struct._GdkPoint* %13)
  br label %sw.epilog.11

sw.default.10:                                    ; preds = %sw.bb.7
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.12, i32 0, i32 0))
  br label %sw.epilog.11

sw.epilog.11:                                     ; preds = %sw.default.10, %sw.bb.9
  br label %sw.epilog.15

sw.bb.12:                                         ; preds = %if.end.5, %if.end.5
  br label %sw.epilog.15

sw.bb.13:                                         ; preds = %if.end.5
  br label %sw.default.14

sw.default.14:                                    ; preds = %if.end.5, %sw.bb.13
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.13, i32 0, i32 0))
  br label %sw.epilog.15

sw.epilog.15:                                     ; preds = %if.then, %if.then.4, %sw.default.14, %sw.bb.12, %sw.epilog.11, %sw.epilog
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @do_move_all_obj(%struct._GdkPoint* %to_pnt) #0 {
entry:
  %to_pnt.addr = alloca %struct._GdkPoint*, align 8
  %xdiff = alloca i32, align 4
  %ydiff = alloca i32, align 4
  %all = alloca %struct._GList*, align 8
  %obj = alloca %struct._GfigObject*, align 8
  store %struct._GdkPoint* %to_pnt, %struct._GdkPoint** %to_pnt.addr, align 8
  %0 = load %struct._GdkPoint*, %struct._GdkPoint** @move_all_pnt, align 8
  %x = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %0, i32 0, i32 0
  %1 = load i32, i32* %x, align 4
  %2 = load %struct._GdkPoint*, %struct._GdkPoint** %to_pnt.addr, align 8
  %x1 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %2, i32 0, i32 0
  %3 = load i32, i32* %x1, align 4
  %sub = sub nsw i32 %1, %3
  store i32 %sub, i32* %xdiff, align 4
  %4 = load %struct._GdkPoint*, %struct._GdkPoint** @move_all_pnt, align 8
  %y = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %4, i32 0, i32 1
  %5 = load i32, i32* %y, align 4
  %6 = load %struct._GdkPoint*, %struct._GdkPoint** %to_pnt.addr, align 8
  %y2 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %6, i32 0, i32 1
  %7 = load i32, i32* %y2, align 4
  %sub3 = sub nsw i32 %5, %7
  store i32 %sub3, i32* %ydiff, align 4
  %8 = load i32, i32* %xdiff, align 4
  %tobool = icmp ne i32 %8, 0
  br i1 %tobool, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %9 = load i32, i32* %ydiff, align 4
  %tobool4 = icmp ne i32 %9, 0
  br i1 %tobool4, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %10 = load %struct.GFigContext*, %struct.GFigContext** @gfig_context, align 8
  %current_obj = getelementptr inbounds %struct.GFigContext, %struct.GFigContext* %10, i32 0, i32 4
  %11 = load %struct._GFigObj*, %struct._GFigObj** %current_obj, align 8
  %obj_list = getelementptr inbounds %struct._GFigObj, %struct._GFigObj* %11, i32 0, i32 5
  %12 = load %struct._GList*, %struct._GList** %obj_list, align 8
  store %struct._GList* %12, %struct._GList** %all, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %13 = load %struct._GList*, %struct._GList** %all, align 8
  %tobool5 = icmp ne %struct._GList* %13, null
  br i1 %tobool5, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %14 = load %struct._GList*, %struct._GList** %all, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %14, i32 0, i32 0
  %15 = load i8*, i8** %data, align 8
  %16 = bitcast i8* %15 to %struct._GfigObject*
  store %struct._GfigObject* %16, %struct._GfigObject** %obj, align 8
  %17 = load %struct._GfigObject*, %struct._GfigObject** %obj, align 8
  %18 = load i32, i32* %xdiff, align 4
  %19 = load i32, i32* %ydiff, align 4
  call void @update_pnts(%struct._GfigObject* %17, i32 %18, i32 %19)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %20 = load %struct._GList*, %struct._GList** %all, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %20, i32 0, i32 1
  %21 = load %struct._GList*, %struct._GList** %next, align 8
  store %struct._GList* %21, %struct._GList** %all, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %22 = load %struct._GdkPoint*, %struct._GdkPoint** @move_all_pnt, align 8
  %23 = load %struct._GdkPoint*, %struct._GdkPoint** %to_pnt.addr, align 8
  %24 = bitcast %struct._GdkPoint* %22 to i8*
  %25 = bitcast %struct._GdkPoint* %23 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %24, i8* %25, i64 8, i32 4, i1 false)
  %26 = load %struct.GFigContext*, %struct.GFigContext** @gfig_context, align 8
  %preview = getelementptr inbounds %struct.GFigContext, %struct.GFigContext* %26, i32 0, i32 6
  %27 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  call void @gtk_widget_queue_draw(%struct._GtkWidget* %27)
  br label %if.end

if.end:                                           ; preds = %for.end, %lor.lhs.false
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @do_move_obj(%struct._GfigObject* %obj, %struct._GdkPoint* %to_pnt) #0 {
entry:
  %obj.addr = alloca %struct._GfigObject*, align 8
  %to_pnt.addr = alloca %struct._GdkPoint*, align 8
  %xdiff = alloca i32, align 4
  %ydiff = alloca i32, align 4
  store %struct._GfigObject* %obj, %struct._GfigObject** %obj.addr, align 8
  store %struct._GdkPoint* %to_pnt, %struct._GdkPoint** %to_pnt.addr, align 8
  store i32 0, i32* %xdiff, align 4
  store i32 0, i32* %ydiff, align 4
  %0 = load %struct._GfigObject*, %struct._GfigObject** %obj.addr, align 8
  %1 = load %struct._GdkPoint*, %struct._GdkPoint** %to_pnt.addr, align 8
  %call = call %struct.DobjPoints* @get_diffs(%struct._GfigObject* %0, i32* %xdiff, i32* %ydiff, %struct._GdkPoint* %1)
  %2 = load i32, i32* %xdiff, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %3 = load i32, i32* %ydiff, align 4
  %tobool1 = icmp ne i32 %3, 0
  br i1 %tobool1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %4 = load %struct._GfigObject*, %struct._GfigObject** %obj.addr, align 8
  %5 = load i32, i32* %xdiff, align 4
  %6 = load i32, i32* %ydiff, align 4
  call void @update_pnts(%struct._GfigObject* %4, i32 %5, i32 %6)
  %7 = load %struct.GFigContext*, %struct.GFigContext** @gfig_context, align 8
  %preview = getelementptr inbounds %struct.GFigContext, %struct.GFigContext* %7, i32 0, i32 6
  %8 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  call void @gtk_widget_queue_draw(%struct._GtkWidget* %8)
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @do_move_obj_pnt(%struct._GfigObject* %obj, %struct._GdkPoint* %to_pnt) #0 {
entry:
  %obj.addr = alloca %struct._GfigObject*, align 8
  %to_pnt.addr = alloca %struct._GdkPoint*, align 8
  %spnt = alloca %struct.DobjPoints*, align 8
  %xdiff = alloca i32, align 4
  %ydiff = alloca i32, align 4
  store %struct._GfigObject* %obj, %struct._GfigObject** %obj.addr, align 8
  store %struct._GdkPoint* %to_pnt, %struct._GdkPoint** %to_pnt.addr, align 8
  store i32 0, i32* %xdiff, align 4
  store i32 0, i32* %ydiff, align 4
  %0 = load %struct._GfigObject*, %struct._GfigObject** %obj.addr, align 8
  %1 = load %struct._GdkPoint*, %struct._GdkPoint** %to_pnt.addr, align 8
  %call = call %struct.DobjPoints* @get_diffs(%struct._GfigObject* %0, i32* %xdiff, i32* %ydiff, %struct._GdkPoint* %1)
  store %struct.DobjPoints* %call, %struct.DobjPoints** %spnt, align 8
  %2 = load i32, i32* %xdiff, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %lor.lhs.false, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %3 = load i32, i32* %ydiff, align 4
  %tobool1 = icmp ne i32 %3, 0
  br i1 %tobool1, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %land.lhs.true, %entry
  %4 = load %struct.DobjPoints*, %struct.DobjPoints** %spnt, align 8
  %tobool2 = icmp ne %struct.DobjPoints* %4, null
  br i1 %tobool2, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %land.lhs.true
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %5 = load %struct.DobjPoints*, %struct.DobjPoints** %spnt, align 8
  %pnt = getelementptr inbounds %struct.DobjPoints, %struct.DobjPoints* %5, i32 0, i32 1
  %x = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %pnt, i32 0, i32 0
  %6 = load i32, i32* %x, align 4
  %7 = load i32, i32* %xdiff, align 4
  %sub = sub nsw i32 %6, %7
  %8 = load %struct.DobjPoints*, %struct.DobjPoints** %spnt, align 8
  %pnt3 = getelementptr inbounds %struct.DobjPoints, %struct.DobjPoints* %8, i32 0, i32 1
  %x4 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %pnt3, i32 0, i32 0
  store i32 %sub, i32* %x4, align 4
  %9 = load %struct.DobjPoints*, %struct.DobjPoints** %spnt, align 8
  %pnt5 = getelementptr inbounds %struct.DobjPoints, %struct.DobjPoints* %9, i32 0, i32 1
  %y = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %pnt5, i32 0, i32 1
  %10 = load i32, i32* %y, align 4
  %11 = load i32, i32* %ydiff, align 4
  %sub6 = sub nsw i32 %10, %11
  %12 = load %struct.DobjPoints*, %struct.DobjPoints** %spnt, align 8
  %pnt7 = getelementptr inbounds %struct.DobjPoints, %struct.DobjPoints* %12, i32 0, i32 1
  %y8 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %pnt7, i32 0, i32 1
  store i32 %sub6, i32* %y8, align 4
  %13 = load %struct.GFigContext*, %struct.GFigContext** @gfig_context, align 8
  %preview = getelementptr inbounds %struct.GFigContext, %struct.GFigContext* %13, i32 0, i32 6
  %14 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  call void @gtk_widget_queue_draw(%struct._GtkWidget* %14)
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define %struct._GList* @copy_all_objs(%struct._GList* %objs) #0 {
entry:
  %objs.addr = alloca %struct._GList*, align 8
  %new_all_objs = alloca %struct._GList*, align 8
  %object = alloca %struct._GfigObject*, align 8
  %new_object = alloca %struct._GfigObject*, align 8
  store %struct._GList* %objs, %struct._GList** %objs.addr, align 8
  store %struct._GList* null, %struct._GList** %new_all_objs, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load %struct._GList*, %struct._GList** %objs.addr, align 8
  %tobool = icmp ne %struct._GList* %0, null
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load %struct._GList*, %struct._GList** %objs.addr, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %1, i32 0, i32 0
  %2 = load i8*, i8** %data, align 8
  %3 = bitcast i8* %2 to %struct._GfigObject*
  store %struct._GfigObject* %3, %struct._GfigObject** %object, align 8
  %4 = load %struct._GfigObject*, %struct._GfigObject** %object, align 8
  %class = getelementptr inbounds %struct._GfigObject, %struct._GfigObject* %4, i32 0, i32 1
  %5 = load %struct.GfigObjectClass*, %struct.GfigObjectClass** %class, align 8
  %copyfunc = getelementptr inbounds %struct.GfigObjectClass, %struct.GfigObjectClass* %5, i32 0, i32 4
  %6 = load %struct._GfigObject* (%struct._GfigObject*)*, %struct._GfigObject* (%struct._GfigObject*)** %copyfunc, align 8
  %7 = load %struct._GfigObject*, %struct._GfigObject** %object, align 8
  %call = call %struct._GfigObject* %6(%struct._GfigObject* %7)
  store %struct._GfigObject* %call, %struct._GfigObject** %new_object, align 8
  %8 = load %struct._GfigObject*, %struct._GfigObject** %new_object, align 8
  %style = getelementptr inbounds %struct._GfigObject, %struct._GfigObject* %8, i32 0, i32 4
  %9 = load %struct._GfigObject*, %struct._GfigObject** %object, align 8
  %style1 = getelementptr inbounds %struct._GfigObject, %struct._GfigObject* %9, i32 0, i32 4
  call void @gfig_style_copy(%struct._Style* %style, %struct._Style* %style1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i32 0, i32 0))
  %10 = load %struct._GList*, %struct._GList** %new_all_objs, align 8
  %11 = load %struct._GfigObject*, %struct._GfigObject** %new_object, align 8
  %12 = bitcast %struct._GfigObject* %11 to i8*
  %call2 = call %struct._GList* @g_list_prepend(%struct._GList* %10, i8* %12)
  store %struct._GList* %call2, %struct._GList** %new_all_objs, align 8
  %13 = load %struct._GList*, %struct._GList** %objs.addr, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %13, i32 0, i32 1
  %14 = load %struct._GList*, %struct._GList** %next, align 8
  store %struct._GList* %14, %struct._GList** %objs.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %15 = load %struct._GList*, %struct._GList** %new_all_objs, align 8
  %call3 = call %struct._GList* @g_list_reverse(%struct._GList* %15)
  store %struct._GList* %call3, %struct._GList** %new_all_objs, align 8
  %16 = load %struct._GList*, %struct._GList** %new_all_objs, align 8
  ret %struct._GList* %16
}

declare %struct._GList* @g_list_prepend(%struct._GList*, i8*) #1

declare %struct._GList* @g_list_reverse(%struct._GList*) #1

; Function Attrs: nounwind uwtable
define void @draw_objects(%struct._GList* %objs, i32 %show_single, %struct._cairo* %cr) #0 {
entry:
  %objs.addr = alloca %struct._GList*, align 8
  %show_single.addr = alloca i32, align 4
  %cr.addr = alloca %struct._cairo*, align 8
  %count = alloca i32, align 4
  store %struct._GList* %objs, %struct._GList** %objs.addr, align 8
  store i32 %show_single, i32* %show_single.addr, align 4
  store %struct._cairo* %cr, %struct._cairo** %cr.addr, align 8
  store i32 0, i32* %count, align 4
  br label %while.cond

while.cond:                                       ; preds = %cond.end, %entry
  %0 = load %struct._GList*, %struct._GList** %objs.addr, align 8
  %tobool = icmp ne %struct._GList* %0, null
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load i32, i32* %show_single.addr, align 4
  %tobool1 = icmp ne i32 %1, 0
  br i1 %tobool1, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %while.body
  %2 = load i32, i32* %count, align 4
  %3 = load i32, i32* @obj_show_single, align 4
  %cmp = icmp eq i32 %2, %3
  br i1 %cmp, label %if.then, label %lor.lhs.false.2

lor.lhs.false.2:                                  ; preds = %lor.lhs.false
  %4 = load i32, i32* @obj_show_single, align 4
  %cmp3 = icmp eq i32 %4, -1
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false.2, %lor.lhs.false, %while.body
  %5 = load %struct._GList*, %struct._GList** %objs.addr, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %5, i32 0, i32 0
  %6 = load i8*, i8** %data, align 8
  %7 = bitcast i8* %6 to %struct._GfigObject*
  %8 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  call void @draw_one_obj(%struct._GfigObject* %7, %struct._cairo* %8)
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false.2
  %9 = load %struct._GList*, %struct._GList** %objs.addr, align 8
  %tobool4 = icmp ne %struct._GList* %9, null
  br i1 %tobool4, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %10 = load %struct._GList*, %struct._GList** %objs.addr, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %10, i32 0, i32 1
  %11 = load %struct._GList*, %struct._GList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GList* [ %11, %cond.true ], [ null, %cond.false ]
  store %struct._GList* %cond, %struct._GList** %objs.addr, align 8
  %12 = load i32, i32* %count, align 4
  %inc = add nsw i32 %12, 1
  store i32 %inc, i32* %count, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @draw_one_obj(%struct._GfigObject* %obj, %struct._cairo* %cr) #0 {
entry:
  %obj.addr = alloca %struct._GfigObject*, align 8
  %cr.addr = alloca %struct._cairo*, align 8
  store %struct._GfigObject* %obj, %struct._GfigObject** %obj.addr, align 8
  store %struct._cairo* %cr, %struct._cairo** %cr.addr, align 8
  %0 = load %struct._GfigObject*, %struct._GfigObject** %obj.addr, align 8
  %class = getelementptr inbounds %struct._GfigObject, %struct._GfigObject* %0, i32 0, i32 1
  %1 = load %struct.GfigObjectClass*, %struct.GfigObjectClass** %class, align 8
  %drawfunc = getelementptr inbounds %struct.GfigObjectClass, %struct.GfigObjectClass* %1, i32 0, i32 2
  %2 = load void (%struct._GfigObject*, %struct._cairo*)*, void (%struct._GfigObject*, %struct._cairo*)** %drawfunc, align 8
  %3 = load %struct._GfigObject*, %struct._GfigObject** %obj.addr, align 8
  %4 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  call void %2(%struct._GfigObject* %3, %struct._cairo* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define void @prepend_to_all_obj(%struct._GFigObj* %fobj, %struct._GList* %nobj) #0 {
entry:
  %fobj.addr = alloca %struct._GFigObj*, align 8
  %nobj.addr = alloca %struct._GList*, align 8
  store %struct._GFigObj* %fobj, %struct._GFigObj** %fobj.addr, align 8
  store %struct._GList* %nobj, %struct._GList** %nobj.addr, align 8
  call void @setup_undo()
  %0 = load %struct._GFigObj*, %struct._GFigObj** %fobj.addr, align 8
  %obj_list = getelementptr inbounds %struct._GFigObj, %struct._GFigObj* %0, i32 0, i32 5
  %1 = load %struct._GList*, %struct._GList** %obj_list, align 8
  %2 = load %struct._GList*, %struct._GList** %nobj.addr, align 8
  %call = call %struct._GList* @g_list_concat(%struct._GList* %1, %struct._GList* %2)
  %3 = load %struct._GFigObj*, %struct._GFigObj** %fobj.addr, align 8
  %obj_list1 = getelementptr inbounds %struct._GFigObj, %struct._GFigObj* %3, i32 0, i32 5
  store %struct._GList* %call, %struct._GList** %obj_list1, align 8
  ret void
}

declare %struct._GList* @g_list_concat(%struct._GList*, %struct._GList*) #1

declare %struct._GList* @g_list_append(%struct._GList*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @scale_obj_points(%struct.DobjPoints* %opnt, double %scale_x, double %scale_y) #0 {
entry:
  %opnt.addr = alloca %struct.DobjPoints*, align 8
  %scale_x.addr = alloca double, align 8
  %scale_y.addr = alloca double, align 8
  store %struct.DobjPoints* %opnt, %struct.DobjPoints** %opnt.addr, align 8
  store double %scale_x, double* %scale_x.addr, align 8
  store double %scale_y, double* %scale_y.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load %struct.DobjPoints*, %struct.DobjPoints** %opnt.addr, align 8
  %tobool = icmp ne %struct.DobjPoints* %0, null
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load %struct.DobjPoints*, %struct.DobjPoints** %opnt.addr, align 8
  %pnt = getelementptr inbounds %struct.DobjPoints, %struct.DobjPoints* %1, i32 0, i32 1
  %x = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %pnt, i32 0, i32 0
  %2 = load i32, i32* %x, align 4
  %conv = sitofp i32 %2 to double
  %3 = load double, double* %scale_x.addr, align 8
  %mul = fmul double %conv, %3
  %conv1 = fptosi double %mul to i32
  %4 = load %struct.DobjPoints*, %struct.DobjPoints** %opnt.addr, align 8
  %pnt2 = getelementptr inbounds %struct.DobjPoints, %struct.DobjPoints* %4, i32 0, i32 1
  %x3 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %pnt2, i32 0, i32 0
  store i32 %conv1, i32* %x3, align 4
  %5 = load %struct.DobjPoints*, %struct.DobjPoints** %opnt.addr, align 8
  %pnt4 = getelementptr inbounds %struct.DobjPoints, %struct.DobjPoints* %5, i32 0, i32 1
  %y = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %pnt4, i32 0, i32 1
  %6 = load i32, i32* %y, align 4
  %conv5 = sitofp i32 %6 to double
  %7 = load double, double* %scale_y.addr, align 8
  %mul6 = fmul double %conv5, %7
  %conv7 = fptosi double %mul6 to i32
  %8 = load %struct.DobjPoints*, %struct.DobjPoints** %opnt.addr, align 8
  %pnt8 = getelementptr inbounds %struct.DobjPoints, %struct.DobjPoints* %8, i32 0, i32 1
  %y9 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %pnt8, i32 0, i32 1
  store i32 %conv7, i32* %y9, align 4
  %9 = load %struct.DobjPoints*, %struct.DobjPoints** %opnt.addr, align 8
  %next = getelementptr inbounds %struct.DobjPoints, %struct.DobjPoints* %9, i32 0, i32 0
  %10 = load %struct.DobjPoints*, %struct.DobjPoints** %next, align 8
  store %struct.DobjPoints* %10, %struct.DobjPoints** %opnt.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @object_start(%struct._GdkPoint* %pnt, i32 %shift_down) #0 {
entry:
  %pnt.addr = alloca %struct._GdkPoint*, align 8
  %shift_down.addr = alloca i32, align 4
  store %struct._GdkPoint* %pnt, %struct._GdkPoint** %pnt.addr, align 8
  store i32 %shift_down, i32* %shift_down.addr, align 4
  %0 = load i32, i32* getelementptr inbounds (%struct.SelectItVals, %struct.SelectItVals* @selvals, i32 0, i32 11), align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  store i32 1, i32* @need_to_scale, align 4
  store i32 1, i32* getelementptr inbounds (%struct.SelectItVals, %struct.SelectItVals* @selvals, i32 0, i32 11), align 4
  br label %if.end

if.else:                                          ; preds = %entry
  store i32 0, i32* @need_to_scale, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %1 = load i32, i32* getelementptr inbounds (%struct.SelectItVals, %struct.SelectItVals* @selvals, i32 0, i32 14), align 4
  switch i32 %1, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.1
    i32 3, label %sw.bb.2
    i32 4, label %sw.bb.3
    i32 6, label %sw.bb.4
    i32 5, label %sw.bb.5
    i32 7, label %sw.bb.6
    i32 8, label %sw.bb.7
    i32 9, label %sw.bb.8
  ]

sw.bb:                                            ; preds = %if.end
  %2 = load %struct._GdkPoint*, %struct._GdkPoint** %pnt.addr, align 8
  %3 = load i32, i32* %shift_down.addr, align 4
  call void @d_line_start(%struct._GdkPoint* %2, i32 %3)
  br label %sw.epilog

sw.bb.1:                                          ; preds = %if.end
  %4 = load %struct._GdkPoint*, %struct._GdkPoint** %pnt.addr, align 8
  %5 = load i32, i32* %shift_down.addr, align 4
  call void @d_rectangle_start(%struct._GdkPoint* %4, i32 %5)
  br label %sw.epilog

sw.bb.2:                                          ; preds = %if.end
  %6 = load %struct._GdkPoint*, %struct._GdkPoint** %pnt.addr, align 8
  %7 = load i32, i32* %shift_down.addr, align 4
  call void @d_circle_start(%struct._GdkPoint* %6, i32 %7)
  br label %sw.epilog

sw.bb.3:                                          ; preds = %if.end
  %8 = load %struct._GdkPoint*, %struct._GdkPoint** %pnt.addr, align 8
  %9 = load i32, i32* %shift_down.addr, align 4
  call void @d_ellipse_start(%struct._GdkPoint* %8, i32 %9)
  br label %sw.epilog

sw.bb.4:                                          ; preds = %if.end
  %10 = load %struct._GdkPoint*, %struct._GdkPoint** %pnt.addr, align 8
  %11 = load i32, i32* %shift_down.addr, align 4
  call void @d_poly_start(%struct._GdkPoint* %10, i32 %11)
  br label %sw.epilog

sw.bb.5:                                          ; preds = %if.end
  %12 = load %struct._GdkPoint*, %struct._GdkPoint** %pnt.addr, align 8
  %13 = load i32, i32* %shift_down.addr, align 4
  call void @d_arc_start(%struct._GdkPoint* %12, i32 %13)
  br label %sw.epilog

sw.bb.6:                                          ; preds = %if.end
  %14 = load %struct._GdkPoint*, %struct._GdkPoint** %pnt.addr, align 8
  %15 = load i32, i32* %shift_down.addr, align 4
  call void @d_star_start(%struct._GdkPoint* %14, i32 %15)
  br label %sw.epilog

sw.bb.7:                                          ; preds = %if.end
  %16 = load %struct._GdkPoint*, %struct._GdkPoint** %pnt.addr, align 8
  %17 = load i32, i32* %shift_down.addr, align 4
  call void @d_spiral_start(%struct._GdkPoint* %16, i32 %17)
  br label %sw.epilog

sw.bb.8:                                          ; preds = %if.end
  %18 = load %struct._GdkPoint*, %struct._GdkPoint** %pnt.addr, align 8
  %19 = load i32, i32* %shift_down.addr, align 4
  call void @d_bezier_start(%struct._GdkPoint* %18, i32 %19)
  br label %sw.epilog

sw.default:                                       ; preds = %if.end
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.8, %sw.bb.7, %sw.bb.6, %sw.bb.5, %sw.bb.4, %sw.bb.3, %sw.bb.2, %sw.bb.1, %sw.bb
  %20 = load %struct._GfigObject*, %struct._GfigObject** @obj_creating, align 8
  %tobool9 = icmp ne %struct._GfigObject* %20, null
  br i1 %tobool9, label %if.then.10, label %if.end.14

if.then.10:                                       ; preds = %sw.epilog
  %21 = load %struct.GFigContext*, %struct.GFigContext** @gfig_context, align 8
  %debug_styles = getelementptr inbounds %struct.GFigContext, %struct.GFigContext* %21, i32 0, i32 0
  %22 = load i32, i32* %debug_styles, align 4
  %tobool11 = icmp ne i32 %22, 0
  br i1 %tobool11, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %if.then.10
  call void (i8*, ...) @g_printerr(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.15, i32 0, i32 0))
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.12, %if.then.10
  %23 = load %struct._GfigObject*, %struct._GfigObject** @obj_creating, align 8
  %style = getelementptr inbounds %struct._GfigObject, %struct._GfigObject* %23, i32 0, i32 4
  call void @gfig_style_set_style_from_context(%struct._Style* %style)
  br label %if.end.14

if.end.14:                                        ; preds = %if.end.13, %sw.epilog
  ret void
}

declare void @d_line_start(%struct._GdkPoint*, i32) #1

declare void @d_rectangle_start(%struct._GdkPoint*, i32) #1

declare void @d_circle_start(%struct._GdkPoint*, i32) #1

declare void @d_ellipse_start(%struct._GdkPoint*, i32) #1

declare void @d_poly_start(%struct._GdkPoint*, i32) #1

declare void @d_arc_start(%struct._GdkPoint*, i32) #1

declare void @d_star_start(%struct._GdkPoint*, i32) #1

declare void @d_spiral_start(%struct._GdkPoint*, i32) #1

declare void @d_bezier_start(%struct._GdkPoint*, i32) #1

declare void @g_printerr(i8*, ...) #1

declare void @gfig_style_set_style_from_context(%struct._Style*) #1

; Function Attrs: nounwind uwtable
define void @object_end(%struct._GdkPoint* %pnt, i32 %shift_down) #0 {
entry:
  %pnt.addr = alloca %struct._GdkPoint*, align 8
  %shift_down.addr = alloca i32, align 4
  store %struct._GdkPoint* %pnt, %struct._GdkPoint** %pnt.addr, align 8
  store i32 %shift_down, i32* %shift_down.addr, align 4
  %0 = load i32, i32* getelementptr inbounds (%struct.SelectItVals, %struct.SelectItVals* @selvals, i32 0, i32 14), align 4
  switch i32 %0, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.1
    i32 3, label %sw.bb.2
    i32 4, label %sw.bb.3
    i32 6, label %sw.bb.4
    i32 7, label %sw.bb.5
    i32 5, label %sw.bb.6
    i32 8, label %sw.bb.7
    i32 9, label %sw.bb.8
  ]

sw.bb:                                            ; preds = %entry
  %1 = load %struct._GdkPoint*, %struct._GdkPoint** %pnt.addr, align 8
  %2 = load i32, i32* %shift_down.addr, align 4
  call void @d_line_end(%struct._GdkPoint* %1, i32 %2)
  br label %sw.epilog

sw.bb.1:                                          ; preds = %entry
  %3 = load %struct._GdkPoint*, %struct._GdkPoint** %pnt.addr, align 8
  %4 = load i32, i32* %shift_down.addr, align 4
  call void @d_rectangle_end(%struct._GdkPoint* %3, i32 %4)
  br label %sw.epilog

sw.bb.2:                                          ; preds = %entry
  %5 = load %struct._GdkPoint*, %struct._GdkPoint** %pnt.addr, align 8
  %6 = load i32, i32* %shift_down.addr, align 4
  call void @d_circle_end(%struct._GdkPoint* %5, i32 %6)
  br label %sw.epilog

sw.bb.3:                                          ; preds = %entry
  %7 = load %struct._GdkPoint*, %struct._GdkPoint** %pnt.addr, align 8
  %8 = load i32, i32* %shift_down.addr, align 4
  call void @d_ellipse_end(%struct._GdkPoint* %7, i32 %8)
  br label %sw.epilog

sw.bb.4:                                          ; preds = %entry
  %9 = load %struct._GdkPoint*, %struct._GdkPoint** %pnt.addr, align 8
  %10 = load i32, i32* %shift_down.addr, align 4
  call void @d_poly_end(%struct._GdkPoint* %9, i32 %10)
  br label %sw.epilog

sw.bb.5:                                          ; preds = %entry
  %11 = load %struct._GdkPoint*, %struct._GdkPoint** %pnt.addr, align 8
  %12 = load i32, i32* %shift_down.addr, align 4
  call void @d_star_end(%struct._GdkPoint* %11, i32 %12)
  br label %sw.epilog

sw.bb.6:                                          ; preds = %entry
  %13 = load %struct._GdkPoint*, %struct._GdkPoint** %pnt.addr, align 8
  %14 = load i32, i32* %shift_down.addr, align 4
  call void @d_arc_end(%struct._GdkPoint* %13, i32 %14)
  br label %sw.epilog

sw.bb.7:                                          ; preds = %entry
  %15 = load %struct._GdkPoint*, %struct._GdkPoint** %pnt.addr, align 8
  %16 = load i32, i32* %shift_down.addr, align 4
  call void @d_spiral_end(%struct._GdkPoint* %15, i32 %16)
  br label %sw.epilog

sw.bb.8:                                          ; preds = %entry
  %17 = load %struct._GdkPoint*, %struct._GdkPoint** %pnt.addr, align 8
  %18 = load i32, i32* %shift_down.addr, align 4
  call void @d_bezier_end(%struct._GdkPoint* %17, i32 %18)
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.8, %sw.bb.7, %sw.bb.6, %sw.bb.5, %sw.bb.4, %sw.bb.3, %sw.bb.2, %sw.bb.1, %sw.bb
  %19 = load i32, i32* @need_to_scale, align 4
  %tobool = icmp ne i32 %19, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %sw.epilog
  store i32 0, i32* @need_to_scale, align 4
  store i32 0, i32* getelementptr inbounds (%struct.SelectItVals, %struct.SelectItVals* @selvals, i32 0, i32 11), align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.epilog
  ret void
}

declare void @d_line_end(%struct._GdkPoint*, i32) #1

declare void @d_rectangle_end(%struct._GdkPoint*, i32) #1

declare void @d_circle_end(%struct._GdkPoint*, i32) #1

declare void @d_ellipse_end(%struct._GdkPoint*, i32) #1

declare void @d_poly_end(%struct._GdkPoint*, i32) #1

declare void @d_star_end(%struct._GdkPoint*, i32) #1

declare void @d_arc_end(%struct._GdkPoint*, i32) #1

declare void @d_spiral_end(%struct._GdkPoint*, i32) #1

declare void @d_bezier_end(%struct._GdkPoint*, i32) #1

; Function Attrs: nounwind uwtable
define void @free_one_obj(%struct._GfigObject* %obj) #0 {
entry:
  %obj.addr = alloca %struct._GfigObject*, align 8
  store %struct._GfigObject* %obj, %struct._GfigObject** %obj.addr, align 8
  %0 = load %struct._GfigObject*, %struct._GfigObject** %obj.addr, align 8
  %points = getelementptr inbounds %struct._GfigObject, %struct._GfigObject* %0, i32 0, i32 3
  %1 = load %struct.DobjPoints*, %struct.DobjPoints** %points, align 8
  call void @d_delete_dobjpoints(%struct.DobjPoints* %1)
  %2 = load %struct._GfigObject*, %struct._GfigObject** %obj.addr, align 8
  %3 = bitcast %struct._GfigObject* %2 to i8*
  call void @g_free(i8* %3)
  ret void
}

; Function Attrs: nounwind uwtable
define void @free_all_objs(%struct._GList* %objs) #0 {
entry:
  %objs.addr = alloca %struct._GList*, align 8
  store %struct._GList* %objs, %struct._GList** %objs.addr, align 8
  %0 = load %struct._GList*, %struct._GList** %objs.addr, align 8
  call void @g_list_free_full(%struct._GList* %0, void (i8*)* bitcast (void (%struct._GfigObject*)* @free_one_obj to void (i8*)*))
  ret void
}

declare void @g_list_free_full(%struct._GList*, void (i8*)*) #1

declare i8* @fgets(i8*, i32, %struct._IO_FILE*) #1

; Function Attrs: nounwind
declare i32 @ferror(%struct._IO_FILE*) #2

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #3

; Function Attrs: nounwind
declare i8* @gettext(i8*) #2

; Function Attrs: nounwind uwtable
define void @clear_undo() #0 {
entry:
  %lv = alloca i32, align 4
  %0 = load i32, i32* @undo_level, align 4
  store i32 %0, i32* %lv, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %lv, align 4
  %cmp = icmp sge i32 %1, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %lv, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [10 x %struct._GList*], [10 x %struct._GList*]* @undo_table, i32 0, i64 %idxprom
  %3 = load %struct._GList*, %struct._GList** %arrayidx, align 8
  call void @free_all_objs(%struct._GList* %3)
  %4 = load i32, i32* %lv, align 4
  %idxprom1 = sext i32 %4 to i64
  %arrayidx2 = getelementptr inbounds [10 x %struct._GList*], [10 x %struct._GList*]* @undo_table, i32 0, i64 %idxprom1
  store %struct._GList* null, %struct._GList** %arrayidx2, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %5 = load i32, i32* %lv, align 4
  %dec = add nsw i32 %5, -1
  store i32 %dec, i32* %lv, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 -1, i32* @undo_level, align 4
  call void @gfig_dialog_action_set_sensitive(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i32 0, i32 0), i32 0)
  ret void
}

declare void @gfig_dialog_action_set_sensitive(i8*, i32) #1

; Function Attrs: nounwind uwtable
define void @new_obj_2edit(%struct._GFigObj* %obj) #0 {
entry:
  %obj.addr = alloca %struct._GFigObj*, align 8
  %old_current = alloca %struct._GFigObj*, align 8
  store %struct._GFigObj* %obj, %struct._GFigObj** %obj.addr, align 8
  %0 = load %struct.GFigContext*, %struct.GFigContext** @gfig_context, align 8
  %current_obj = getelementptr inbounds %struct.GFigContext, %struct.GFigContext* %0, i32 0, i32 4
  %1 = load %struct._GFigObj*, %struct._GFigObj** %current_obj, align 8
  store %struct._GFigObj* %1, %struct._GFigObj** %old_current, align 8
  call void @clear_undo()
  %2 = load %struct._GFigObj*, %struct._GFigObj** %obj.addr, align 8
  %3 = load %struct.GFigContext*, %struct.GFigContext** @gfig_context, align 8
  %current_obj1 = getelementptr inbounds %struct.GFigContext, %struct.GFigContext* %3, i32 0, i32 4
  store %struct._GFigObj* %2, %struct._GFigObj** %current_obj1, align 8
  store i32 -1, i32* @obj_show_single, align 4
  %4 = load %struct._GFigObj*, %struct._GFigObj** %old_current, align 8
  call void @options_update(%struct._GFigObj* %4)
  %5 = load %struct.GFigContext*, %struct.GFigContext** @gfig_context, align 8
  %preview = getelementptr inbounds %struct.GFigContext, %struct.GFigContext* %5, i32 0, i32 6
  %6 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  call void @gtk_widget_queue_draw(%struct._GtkWidget* %6)
  %7 = load %struct._GFigObj*, %struct._GFigObj** %obj.addr, align 8
  %obj_status = getelementptr inbounds %struct._GFigObj, %struct._GFigObj* %7, i32 0, i32 6
  %8 = load i32, i32* %obj_status, align 4
  %and = and i32 %8, 2
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call = call i8* @gettext(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.18, i32 0, i32 0)) #4
  call void (i8*, ...) @g_message(i8* %call)
  call void @gfig_dialog_action_set_sensitive(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i32 0, i32 0), i32 0)
  br label %if.end

if.else:                                          ; preds = %entry
  call void @gfig_dialog_action_set_sensitive(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i32 0, i32 0), i32 1)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

declare void @options_update(%struct._GFigObj*) #1

; Function Attrs: noreturn
declare void @g_assertion_message_expr(i8*, i8*, i32, i8*, i8*) #5

; Function Attrs: nounwind readonly
declare i8* @strstr(i8*, i8*) #3

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #4

declare void @g_logv(i8*, i32, i8*, %struct.__va_list_tag*) #1

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #4

; Function Attrs: nounwind uwtable
define internal i32 @inside_sqr(%struct._GdkPoint* %cpnt, %struct._GdkPoint* %testpnt) #0 {
entry:
  %cpnt.addr = alloca %struct._GdkPoint*, align 8
  %testpnt.addr = alloca %struct._GdkPoint*, align 8
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %tx = alloca i32, align 4
  %ty = alloca i32, align 4
  store %struct._GdkPoint* %cpnt, %struct._GdkPoint** %cpnt.addr, align 8
  store %struct._GdkPoint* %testpnt, %struct._GdkPoint** %testpnt.addr, align 8
  %0 = load %struct._GdkPoint*, %struct._GdkPoint** %cpnt.addr, align 8
  %x1 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %0, i32 0, i32 0
  %1 = load i32, i32* %x1, align 4
  store i32 %1, i32* %x, align 4
  %2 = load %struct._GdkPoint*, %struct._GdkPoint** %cpnt.addr, align 8
  %y2 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %2, i32 0, i32 1
  %3 = load i32, i32* %y2, align 4
  store i32 %3, i32* %y, align 4
  %4 = load %struct._GdkPoint*, %struct._GdkPoint** %testpnt.addr, align 8
  %x3 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %4, i32 0, i32 0
  %5 = load i32, i32* %x3, align 4
  store i32 %5, i32* %tx, align 4
  %6 = load %struct._GdkPoint*, %struct._GdkPoint** %testpnt.addr, align 8
  %y4 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %6, i32 0, i32 1
  %7 = load i32, i32* %y4, align 4
  store i32 %7, i32* %ty, align 4
  %8 = load i32, i32* %x, align 4
  %9 = load i32, i32* %tx, align 4
  %sub = sub nsw i32 %8, %9
  %call = call i32 @abs(i32 %sub) #9
  %cmp = icmp sle i32 %call, 8
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %10 = load i32, i32* %y, align 4
  %11 = load i32, i32* %ty, align 4
  %sub5 = sub nsw i32 %10, %11
  %call6 = call i32 @abs(i32 %sub5) #9
  %cmp7 = icmp slt i32 %call6, 8
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %12 = phi i1 [ false, %entry ], [ %cmp7, %land.rhs ]
  %land.ext = zext i1 %12 to i32
  ret i32 %land.ext
}

; Function Attrs: nounwind readnone
declare i32 @abs(i32) #6

declare %struct._GList* @g_list_find(%struct._GList*, i8*) #1

declare %struct._GList* @g_list_remove(%struct._GList*, i8*) #1

declare void @draw_grid_clear() #1

; Function Attrs: nounwind uwtable
define internal void @update_pnts(%struct._GfigObject* %obj, i32 %xdiff, i32 %ydiff) #0 {
entry:
  %obj.addr = alloca %struct._GfigObject*, align 8
  %xdiff.addr = alloca i32, align 4
  %ydiff.addr = alloca i32, align 4
  %spnt = alloca %struct.DobjPoints*, align 8
  store %struct._GfigObject* %obj, %struct._GfigObject** %obj.addr, align 8
  store i32 %xdiff, i32* %xdiff.addr, align 4
  store i32 %ydiff, i32* %ydiff.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GfigObject*, %struct._GfigObject** %obj.addr, align 8
  %cmp = icmp ne %struct._GfigObject* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_assertion_message_expr(i8* null, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.20, i32 0, i32 0), i32 541, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @__func__.update_pnts, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.21, i32 0, i32 0)) #8
  unreachable

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %1 = load %struct._GfigObject*, %struct._GfigObject** %obj.addr, align 8
  %points = getelementptr inbounds %struct._GfigObject, %struct._GfigObject* %1, i32 0, i32 3
  %2 = load %struct.DobjPoints*, %struct.DobjPoints** %points, align 8
  store %struct.DobjPoints* %2, %struct.DobjPoints** %spnt, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.end
  %3 = load %struct.DobjPoints*, %struct.DobjPoints** %spnt, align 8
  %tobool = icmp ne %struct.DobjPoints* %3, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %xdiff.addr, align 4
  %5 = load %struct.DobjPoints*, %struct.DobjPoints** %spnt, align 8
  %pnt = getelementptr inbounds %struct.DobjPoints, %struct.DobjPoints* %5, i32 0, i32 1
  %x = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %pnt, i32 0, i32 0
  %6 = load i32, i32* %x, align 4
  %sub = sub nsw i32 %6, %4
  store i32 %sub, i32* %x, align 4
  %7 = load i32, i32* %ydiff.addr, align 4
  %8 = load %struct.DobjPoints*, %struct.DobjPoints** %spnt, align 8
  %pnt1 = getelementptr inbounds %struct.DobjPoints, %struct.DobjPoints* %8, i32 0, i32 1
  %y = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %pnt1, i32 0, i32 1
  %9 = load i32, i32* %y, align 4
  %sub2 = sub nsw i32 %9, %7
  store i32 %sub2, i32* %y, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %10 = load %struct.DobjPoints*, %struct.DobjPoints** %spnt, align 8
  %next = getelementptr inbounds %struct.DobjPoints, %struct.DobjPoints* %10, i32 0, i32 0
  %11 = load %struct.DobjPoints*, %struct.DobjPoints** %next, align 8
  store %struct.DobjPoints* %11, %struct.DobjPoints** %spnt, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal %struct.DobjPoints* @get_diffs(%struct._GfigObject* %obj, i32* %xdiff, i32* %ydiff, %struct._GdkPoint* %to_pnt) #0 {
entry:
  %retval = alloca %struct.DobjPoints*, align 8
  %obj.addr = alloca %struct._GfigObject*, align 8
  %xdiff.addr = alloca i32*, align 8
  %ydiff.addr = alloca i32*, align 8
  %to_pnt.addr = alloca %struct._GdkPoint*, align 8
  %spnt = alloca %struct.DobjPoints*, align 8
  store %struct._GfigObject* %obj, %struct._GfigObject** %obj.addr, align 8
  store i32* %xdiff, i32** %xdiff.addr, align 8
  store i32* %ydiff, i32** %ydiff.addr, align 8
  store %struct._GdkPoint* %to_pnt, %struct._GdkPoint** %to_pnt.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GfigObject*, %struct._GfigObject** %obj.addr, align 8
  %cmp = icmp ne %struct._GfigObject* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_assertion_message_expr(i8* null, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.20, i32 0, i32 0), i32 273, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.get_diffs, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.21, i32 0, i32 0)) #8
  unreachable

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %1 = load %struct._GfigObject*, %struct._GfigObject** %obj.addr, align 8
  %points = getelementptr inbounds %struct._GfigObject, %struct._GfigObject* %1, i32 0, i32 3
  %2 = load %struct.DobjPoints*, %struct.DobjPoints** %points, align 8
  store %struct.DobjPoints* %2, %struct.DobjPoints** %spnt, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.end
  %3 = load %struct.DobjPoints*, %struct.DobjPoints** %spnt, align 8
  %tobool = icmp ne %struct.DobjPoints* %3, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load %struct.DobjPoints*, %struct.DobjPoints** %spnt, align 8
  %found_me = getelementptr inbounds %struct.DobjPoints, %struct.DobjPoints* %4, i32 0, i32 2
  %5 = load i32, i32* %found_me, align 4
  %tobool1 = icmp ne i32 %5, 0
  br i1 %tobool1, label %if.then.2, label %if.end.7

if.then.2:                                        ; preds = %for.body
  %6 = load %struct.DobjPoints*, %struct.DobjPoints** %spnt, align 8
  %pnt = getelementptr inbounds %struct.DobjPoints, %struct.DobjPoints* %6, i32 0, i32 1
  %x = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %pnt, i32 0, i32 0
  %7 = load i32, i32* %x, align 4
  %8 = load %struct._GdkPoint*, %struct._GdkPoint** %to_pnt.addr, align 8
  %x3 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %8, i32 0, i32 0
  %9 = load i32, i32* %x3, align 4
  %sub = sub nsw i32 %7, %9
  %10 = load i32*, i32** %xdiff.addr, align 8
  store i32 %sub, i32* %10, align 4
  %11 = load %struct.DobjPoints*, %struct.DobjPoints** %spnt, align 8
  %pnt4 = getelementptr inbounds %struct.DobjPoints, %struct.DobjPoints* %11, i32 0, i32 1
  %y = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %pnt4, i32 0, i32 1
  %12 = load i32, i32* %y, align 4
  %13 = load %struct._GdkPoint*, %struct._GdkPoint** %to_pnt.addr, align 8
  %y5 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %13, i32 0, i32 1
  %14 = load i32, i32* %y5, align 4
  %sub6 = sub nsw i32 %12, %14
  %15 = load i32*, i32** %ydiff.addr, align 8
  store i32 %sub6, i32* %15, align 4
  %16 = load %struct.DobjPoints*, %struct.DobjPoints** %spnt, align 8
  store %struct.DobjPoints* %16, %struct.DobjPoints** %retval
  br label %return

if.end.7:                                         ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.7
  %17 = load %struct.DobjPoints*, %struct.DobjPoints** %spnt, align 8
  %next = getelementptr inbounds %struct.DobjPoints, %struct.DobjPoints* %17, i32 0, i32 0
  %18 = load %struct.DobjPoints*, %struct.DobjPoints** %next, align 8
  store %struct.DobjPoints* %18, %struct.DobjPoints** %spnt, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store %struct.DobjPoints* null, %struct.DobjPoints** %retval
  br label %return

return:                                           ; preds = %for.end, %if.then.2
  %19 = load %struct.DobjPoints*, %struct.DobjPoints** %retval
  ret %struct.DobjPoints* %19
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind readonly }
attributes #8 = { noreturn }
attributes #9 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
