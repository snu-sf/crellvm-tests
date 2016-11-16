; ModuleID = './plug-ins/selection-to-path/pxl-outline.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pixel_outline_type = type { %struct.coordinate_type*, i32, i32 }
%struct.coordinate_type = type { i32, i32 }
%struct.pixel_outline_list_type = type { %struct.pixel_outline_type*, i32 }
%struct.bitmap_type = type { %struct.dimensions_type, i8* }
%struct.dimensions_type = type { i32, i32 }

@.str = private unnamed_addr constant [18 x i8] c"Selection to Path\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"append_coordinate: Bad edge (%d)\00", align 1

; Function Attrs: nounwind uwtable
define { %struct.pixel_outline_type*, i32 } @find_outline_pixels() #0 {
entry:
  %retval = alloca %struct.pixel_outline_list_type, align 8
  %outline_list = alloca %struct.pixel_outline_list_type, align 8
  %row = alloca i32, align 4
  %col = alloca i32, align 4
  %height = alloca i32, align 4
  %width = alloca i32, align 4
  %marked = alloca %struct.bitmap_type, align 8
  %edge = alloca i32, align 4
  %outline = alloca %struct.pixel_outline_type, align 8
  %clockwise = alloca i32, align 4
  %coerce = alloca %struct.pixel_outline_type, align 8
  %call = call i32 @sel_get_width()
  %call1 = call i32 @sel_get_height()
  %call2 = call { i64, i8* } @local_new_bitmap(i32 %call, i32 %call1)
  %0 = bitcast %struct.bitmap_type* %marked to { i64, i8* }*
  %1 = getelementptr { i64, i8* }, { i64, i8* }* %0, i32 0, i32 0
  %2 = extractvalue { i64, i8* } %call2, 0
  store i64 %2, i64* %1, align 8
  %3 = getelementptr { i64, i8* }, { i64, i8* }* %0, i32 0, i32 1
  %4 = extractvalue { i64, i8* } %call2, 1
  store i8* %4, i8** %3, align 8
  %call3 = call i8* @gettext(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i32 0, i32 0)) #3
  %call4 = call i32 @gimp_progress_init(i8* %call3)
  %length = getelementptr inbounds %struct.pixel_outline_list_type, %struct.pixel_outline_list_type* %outline_list, i32 0, i32 1
  store i32 0, i32* %length, align 4
  %data = getelementptr inbounds %struct.pixel_outline_list_type, %struct.pixel_outline_list_type* %outline_list, i32 0, i32 0
  store %struct.pixel_outline_type* null, %struct.pixel_outline_type** %data, align 8
  %call5 = call i32 @sel_get_height()
  store i32 %call5, i32* %height, align 4
  %call6 = call i32 @sel_get_width()
  store i32 %call6, i32* %width, align 4
  store i32 0, i32* %row, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.25, %entry
  %5 = load i32, i32* %row, align 4
  %6 = load i32, i32* %height, align 4
  %cmp = icmp ult i32 %5, %6
  br i1 %cmp, label %for.body, label %for.end.27

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %col, align 4
  br label %for.cond.7

for.cond.7:                                       ; preds = %for.inc, %for.body
  %7 = load i32, i32* %col, align 4
  %8 = load i32, i32* %width, align 4
  %cmp8 = icmp ult i32 %7, %8
  br i1 %cmp8, label %for.body.9, label %for.end

for.body.9:                                       ; preds = %for.cond.7
  %9 = load i32, i32* %row, align 4
  %10 = load i32, i32* %col, align 4
  %call10 = call i32 @sel_pixel_is_white(i32 %9, i32 %10)
  %tobool = icmp ne i32 %call10, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body.9
  br label %for.inc

if.end:                                           ; preds = %for.body.9
  %11 = load i32, i32* %row, align 4
  %12 = load i32, i32* %col, align 4
  %13 = bitcast %struct.bitmap_type* %marked to { i64, i8* }*
  %14 = getelementptr { i64, i8* }, { i64, i8* }* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 1
  %16 = getelementptr { i64, i8* }, { i64, i8* }* %13, i32 0, i32 1
  %17 = load i8*, i8** %16, align 1
  %call11 = call i32 @next_unmarked_outline_edge(i32 %11, i32 %12, i32 1, i64 %15, i8* %17)
  store i32 %call11, i32* %edge, align 4
  %18 = load i32, i32* %edge, align 4
  %cmp12 = icmp ne i32 %18, 4
  br i1 %cmp12, label %if.then.13, label %if.end.17

if.then.13:                                       ; preds = %if.end
  %19 = load i32, i32* %edge, align 4
  %cmp14 = icmp eq i32 %19, 3
  %conv = zext i1 %cmp14 to i32
  store i32 %conv, i32* %clockwise, align 4
  %20 = load i32, i32* %edge, align 4
  %21 = load i32, i32* %row, align 4
  %22 = load i32, i32* %col, align 4
  %call15 = call { %struct.coordinate_type*, i64 } @find_one_outline(i32 %20, i32 %21, i32 %22, %struct.bitmap_type* %marked)
  %23 = bitcast %struct.pixel_outline_type* %coerce to { %struct.coordinate_type*, i64 }*
  %24 = getelementptr { %struct.coordinate_type*, i64 }, { %struct.coordinate_type*, i64 }* %23, i32 0, i32 0
  %25 = extractvalue { %struct.coordinate_type*, i64 } %call15, 0
  store %struct.coordinate_type* %25, %struct.coordinate_type** %24, align 8
  %26 = getelementptr { %struct.coordinate_type*, i64 }, { %struct.coordinate_type*, i64 }* %23, i32 0, i32 1
  %27 = extractvalue { %struct.coordinate_type*, i64 } %call15, 1
  store i64 %27, i64* %26, align 8
  %28 = bitcast %struct.pixel_outline_type* %outline to i8*
  %29 = bitcast %struct.pixel_outline_type* %coerce to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %28, i8* %29, i64 16, i32 8, i1 false)
  %30 = load i32, i32* %clockwise, align 4
  %clockwise16 = getelementptr inbounds %struct.pixel_outline_type, %struct.pixel_outline_type* %outline, i32 0, i32 2
  store i32 %30, i32* %clockwise16, align 4
  %31 = bitcast %struct.pixel_outline_type* %outline to { %struct.coordinate_type*, i64 }*
  %32 = getelementptr { %struct.coordinate_type*, i64 }, { %struct.coordinate_type*, i64 }* %31, i32 0, i32 0
  %33 = load %struct.coordinate_type*, %struct.coordinate_type** %32, align 1
  %34 = getelementptr { %struct.coordinate_type*, i64 }, { %struct.coordinate_type*, i64 }* %31, i32 0, i32 1
  %35 = load i64, i64* %34, align 1
  call void @append_pixel_outline(%struct.pixel_outline_list_type* %outline_list, %struct.coordinate_type* %33, i64 %35)
  br label %if.end.17

if.end.17:                                        ; preds = %if.then.13, %if.end
  br label %for.inc

for.inc:                                          ; preds = %if.end.17, %if.then
  %36 = load i32, i32* %col, align 4
  %inc = add i32 %36, 1
  store i32 %inc, i32* %col, align 4
  br label %for.cond.7

for.end:                                          ; preds = %for.cond.7
  %37 = load i32, i32* %row, align 4
  %and = and i32 %37, 15
  %cmp18 = icmp eq i32 %and, 0
  br i1 %cmp18, label %if.then.20, label %if.end.24

if.then.20:                                       ; preds = %for.end
  %38 = load i32, i32* %row, align 4
  %conv21 = uitofp i32 %38 to double
  %39 = load i32, i32* %height, align 4
  %conv22 = sitofp i32 %39 to double
  %div = fdiv double %conv21, %conv22
  %call23 = call i32 @gimp_progress_update(double %div)
  br label %if.end.24

if.end.24:                                        ; preds = %if.then.20, %for.end
  br label %for.inc.25

for.inc.25:                                       ; preds = %if.end.24
  %40 = load i32, i32* %row, align 4
  %inc26 = add i32 %40, 1
  store i32 %inc26, i32* %row, align 4
  br label %for.cond

for.end.27:                                       ; preds = %for.cond
  %call28 = call i32 @gimp_progress_update(double 1.000000e+00)
  call void @local_free_bitmap(%struct.bitmap_type* %marked)
  %41 = bitcast %struct.pixel_outline_list_type* %retval to i8*
  %42 = bitcast %struct.pixel_outline_list_type* %outline_list to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %41, i8* %42, i64 16, i32 8, i1 false)
  %43 = bitcast %struct.pixel_outline_list_type* %retval to { %struct.pixel_outline_type*, i32 }*
  %44 = load { %struct.pixel_outline_type*, i32 }, { %struct.pixel_outline_type*, i32 }* %43, align 8
  ret { %struct.pixel_outline_type*, i32 } %44
}

; Function Attrs: nounwind uwtable
define internal { i64, i8* } @local_new_bitmap(i32 %width, i32 %height) #0 {
entry:
  %retval = alloca %struct.bitmap_type, align 8
  %width.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  %answer = alloca %struct.bitmap_type, align 8
  %size = alloca i32, align 4
  store i32 %width, i32* %width.addr, align 4
  store i32 %height, i32* %height.addr, align 4
  %0 = load i32, i32* %width.addr, align 4
  %1 = load i32, i32* %height.addr, align 4
  %mul = mul i32 %0, %1
  store i32 %mul, i32* %size, align 4
  %2 = load i32, i32* %height.addr, align 4
  %dimensions = getelementptr inbounds %struct.bitmap_type, %struct.bitmap_type* %answer, i32 0, i32 0
  %height1 = getelementptr inbounds %struct.dimensions_type, %struct.dimensions_type* %dimensions, i32 0, i32 0
  store i32 %2, i32* %height1, align 4
  %3 = load i32, i32* %width.addr, align 4
  %dimensions2 = getelementptr inbounds %struct.bitmap_type, %struct.bitmap_type* %answer, i32 0, i32 0
  %width3 = getelementptr inbounds %struct.dimensions_type, %struct.dimensions_type* %dimensions2, i32 0, i32 1
  store i32 %3, i32* %width3, align 4
  %4 = load i32, i32* %size, align 4
  %conv = zext i32 %4 to i64
  %call = call noalias i8* @g_malloc0_n(i64 %conv, i64 1)
  %bitmap = getelementptr inbounds %struct.bitmap_type, %struct.bitmap_type* %answer, i32 0, i32 1
  store i8* %call, i8** %bitmap, align 8
  %5 = bitcast %struct.bitmap_type* %retval to i8*
  %6 = bitcast %struct.bitmap_type* %answer to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %5, i8* %6, i64 16, i32 8, i1 false)
  %7 = bitcast %struct.bitmap_type* %retval to { i64, i8* }*
  %8 = load { i64, i8* }, { i64, i8* }* %7, align 8
  ret { i64, i8* } %8
}

declare i32 @sel_get_width() #1

declare i32 @sel_get_height() #1

declare i32 @gimp_progress_init(i8*) #1

; Function Attrs: nounwind
declare i8* @gettext(i8*) #2

declare i32 @sel_pixel_is_white(i32, i32) #1

declare i32 @next_unmarked_outline_edge(i32, i32, i32, i64, i8*) #1

; Function Attrs: nounwind uwtable
define internal { %struct.coordinate_type*, i64 } @find_one_outline(i32 %original_edge, i32 %original_row, i32 %original_col, %struct.bitmap_type* %marked) #0 {
entry:
  %retval = alloca %struct.pixel_outline_type, align 8
  %original_edge.addr = alloca i32, align 4
  %original_row.addr = alloca i32, align 4
  %original_col.addr = alloca i32, align 4
  %marked.addr = alloca %struct.bitmap_type*, align 8
  %outline = alloca %struct.pixel_outline_type, align 8
  %row = alloca i32, align 4
  %col = alloca i32, align 4
  %edge = alloca i32, align 4
  store i32 %original_edge, i32* %original_edge.addr, align 4
  store i32 %original_row, i32* %original_row.addr, align 4
  store i32 %original_col, i32* %original_col.addr, align 4
  store %struct.bitmap_type* %marked, %struct.bitmap_type** %marked.addr, align 8
  %call = call { %struct.coordinate_type*, i64 } @new_pixel_outline()
  %0 = bitcast %struct.pixel_outline_type* %outline to { %struct.coordinate_type*, i64 }*
  %1 = getelementptr { %struct.coordinate_type*, i64 }, { %struct.coordinate_type*, i64 }* %0, i32 0, i32 0
  %2 = extractvalue { %struct.coordinate_type*, i64 } %call, 0
  store %struct.coordinate_type* %2, %struct.coordinate_type** %1, align 8
  %3 = getelementptr { %struct.coordinate_type*, i64 }, { %struct.coordinate_type*, i64 }* %0, i32 0, i32 1
  %4 = extractvalue { %struct.coordinate_type*, i64 } %call, 1
  store i64 %4, i64* %3, align 8
  %5 = load i32, i32* %original_row.addr, align 4
  store i32 %5, i32* %row, align 4
  %6 = load i32, i32* %original_col.addr, align 4
  store i32 %6, i32* %col, align 4
  %7 = load i32, i32* %original_edge.addr, align 4
  store i32 %7, i32* %edge, align 4
  br label %do.body

do.body:                                          ; preds = %lor.end, %entry
  %8 = load i32, i32* %col, align 4
  %call1 = call i32 @sel_get_height()
  %9 = load i32, i32* %row, align 4
  %sub = sub i32 %call1, %9
  %10 = load i32, i32* %edge, align 4
  call void @append_coordinate(%struct.pixel_outline_type* %outline, i32 %8, i32 %sub, i32 %10)
  %11 = load i32, i32* %edge, align 4
  %12 = load i32, i32* %row, align 4
  %13 = load i32, i32* %col, align 4
  %14 = load %struct.bitmap_type*, %struct.bitmap_type** %marked.addr, align 8
  call void @mark_edge(i32 %11, i32 %12, i32 %13, %struct.bitmap_type* %14)
  call void @next_outline_edge(i32* %edge, i32* %row, i32* %col)
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %15 = load i32, i32* %row, align 4
  %16 = load i32, i32* %original_row.addr, align 4
  %cmp = icmp ne i32 %15, %16
  br i1 %cmp, label %lor.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.cond
  %17 = load i32, i32* %col, align 4
  %18 = load i32, i32* %original_col.addr, align 4
  %cmp2 = icmp ne i32 %17, %18
  br i1 %cmp2, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %lor.lhs.false
  %19 = load i32, i32* %edge, align 4
  %20 = load i32, i32* %original_edge.addr, align 4
  %cmp3 = icmp ne i32 %19, %20
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false, %do.cond
  %21 = phi i1 [ true, %lor.lhs.false ], [ true, %do.cond ], [ %cmp3, %lor.rhs ]
  br i1 %21, label %do.body, label %do.end

do.end:                                           ; preds = %lor.end
  %22 = bitcast %struct.pixel_outline_type* %retval to i8*
  %23 = bitcast %struct.pixel_outline_type* %outline to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %22, i8* %23, i64 16, i32 8, i1 false)
  %24 = bitcast %struct.pixel_outline_type* %retval to { %struct.coordinate_type*, i64 }*
  %25 = load { %struct.coordinate_type*, i64 }, { %struct.coordinate_type*, i64 }* %24, align 8
  ret { %struct.coordinate_type*, i64 } %25
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #3

; Function Attrs: nounwind uwtable
define internal void @append_pixel_outline(%struct.pixel_outline_list_type* %outline_list, %struct.coordinate_type* %outline.coerce0, i64 %outline.coerce1) #0 {
entry:
  %outline = alloca %struct.pixel_outline_type, align 8
  %outline_list.addr = alloca %struct.pixel_outline_list_type*, align 8
  %0 = bitcast %struct.pixel_outline_type* %outline to { %struct.coordinate_type*, i64 }*
  %1 = getelementptr { %struct.coordinate_type*, i64 }, { %struct.coordinate_type*, i64 }* %0, i32 0, i32 0
  store %struct.coordinate_type* %outline.coerce0, %struct.coordinate_type** %1
  %2 = getelementptr { %struct.coordinate_type*, i64 }, { %struct.coordinate_type*, i64 }* %0, i32 0, i32 1
  store i64 %outline.coerce1, i64* %2
  store %struct.pixel_outline_list_type* %outline_list, %struct.pixel_outline_list_type** %outline_list.addr, align 8
  %3 = load %struct.pixel_outline_list_type*, %struct.pixel_outline_list_type** %outline_list.addr, align 8
  %length = getelementptr inbounds %struct.pixel_outline_list_type, %struct.pixel_outline_list_type* %3, i32 0, i32 1
  %4 = load i32, i32* %length, align 4
  %inc = add i32 %4, 1
  store i32 %inc, i32* %length, align 4
  %5 = load %struct.pixel_outline_list_type*, %struct.pixel_outline_list_type** %outline_list.addr, align 8
  %data = getelementptr inbounds %struct.pixel_outline_list_type, %struct.pixel_outline_list_type* %5, i32 0, i32 0
  %6 = load %struct.pixel_outline_type*, %struct.pixel_outline_type** %data, align 8
  %7 = bitcast %struct.pixel_outline_type* %6 to i8*
  %8 = load %struct.pixel_outline_list_type*, %struct.pixel_outline_list_type** %outline_list.addr, align 8
  %length1 = getelementptr inbounds %struct.pixel_outline_list_type, %struct.pixel_outline_list_type* %8, i32 0, i32 1
  %9 = load i32, i32* %length1, align 4
  %conv = zext i32 %9 to i64
  %mul = mul i64 %conv, 16
  %call = call i8* @g_realloc(i8* %7, i64 %mul)
  %10 = bitcast i8* %call to %struct.pixel_outline_type*
  %11 = load %struct.pixel_outline_list_type*, %struct.pixel_outline_list_type** %outline_list.addr, align 8
  %data2 = getelementptr inbounds %struct.pixel_outline_list_type, %struct.pixel_outline_list_type* %11, i32 0, i32 0
  store %struct.pixel_outline_type* %10, %struct.pixel_outline_type** %data2, align 8
  %12 = load %struct.pixel_outline_list_type*, %struct.pixel_outline_list_type** %outline_list.addr, align 8
  %length3 = getelementptr inbounds %struct.pixel_outline_list_type, %struct.pixel_outline_list_type* %12, i32 0, i32 1
  %13 = load i32, i32* %length3, align 4
  %sub = sub i32 %13, 1
  %idxprom = zext i32 %sub to i64
  %14 = load %struct.pixel_outline_list_type*, %struct.pixel_outline_list_type** %outline_list.addr, align 8
  %data4 = getelementptr inbounds %struct.pixel_outline_list_type, %struct.pixel_outline_list_type* %14, i32 0, i32 0
  %15 = load %struct.pixel_outline_type*, %struct.pixel_outline_type** %data4, align 8
  %arrayidx = getelementptr inbounds %struct.pixel_outline_type, %struct.pixel_outline_type* %15, i64 %idxprom
  %16 = bitcast %struct.pixel_outline_type* %arrayidx to i8*
  %17 = bitcast %struct.pixel_outline_type* %outline to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %16, i8* %17, i64 16, i32 8, i1 false)
  ret void
}

declare i32 @gimp_progress_update(double) #1

; Function Attrs: nounwind uwtable
define internal void @local_free_bitmap(%struct.bitmap_type* %b) #0 {
entry:
  %b.addr = alloca %struct.bitmap_type*, align 8
  store %struct.bitmap_type* %b, %struct.bitmap_type** %b.addr, align 8
  %0 = load %struct.bitmap_type*, %struct.bitmap_type** %b.addr, align 8
  %bitmap = getelementptr inbounds %struct.bitmap_type, %struct.bitmap_type* %0, i32 0, i32 1
  %1 = load i8*, i8** %bitmap, align 8
  %cmp = icmp ne i8* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.bitmap_type*, %struct.bitmap_type** %b.addr, align 8
  %bitmap1 = getelementptr inbounds %struct.bitmap_type, %struct.bitmap_type* %2, i32 0, i32 1
  call void @safe_free(i8** %bitmap1)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define void @free_pixel_outline_list(%struct.pixel_outline_list_type* %outline_list) #0 {
entry:
  %outline_list.addr = alloca %struct.pixel_outline_list_type*, align 8
  %this_outline = alloca i32, align 4
  %o = alloca %struct.pixel_outline_type, align 8
  store %struct.pixel_outline_list_type* %outline_list, %struct.pixel_outline_list_type** %outline_list.addr, align 8
  store i32 0, i32* %this_outline, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %this_outline, align 4
  %1 = load %struct.pixel_outline_list_type*, %struct.pixel_outline_list_type** %outline_list.addr, align 8
  %length = getelementptr inbounds %struct.pixel_outline_list_type, %struct.pixel_outline_list_type* %1, i32 0, i32 1
  %2 = load i32, i32* %length, align 4
  %cmp = icmp ult i32 %0, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %this_outline, align 4
  %idxprom = zext i32 %3 to i64
  %4 = load %struct.pixel_outline_list_type*, %struct.pixel_outline_list_type** %outline_list.addr, align 8
  %data = getelementptr inbounds %struct.pixel_outline_list_type, %struct.pixel_outline_list_type* %4, i32 0, i32 0
  %5 = load %struct.pixel_outline_type*, %struct.pixel_outline_type** %data, align 8
  %arrayidx = getelementptr inbounds %struct.pixel_outline_type, %struct.pixel_outline_type* %5, i64 %idxprom
  %6 = bitcast %struct.pixel_outline_type* %o to i8*
  %7 = bitcast %struct.pixel_outline_type* %arrayidx to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %6, i8* %7, i64 16, i32 8, i1 false)
  %data1 = getelementptr inbounds %struct.pixel_outline_type, %struct.pixel_outline_type* %o, i32 0, i32 0
  %8 = bitcast %struct.coordinate_type** %data1 to i8**
  call void @safe_free(i8** %8)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %9 = load i32, i32* %this_outline, align 4
  %inc = add i32 %9, 1
  store i32 %inc, i32* %this_outline, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %10 = load %struct.pixel_outline_list_type*, %struct.pixel_outline_list_type** %outline_list.addr, align 8
  %data2 = getelementptr inbounds %struct.pixel_outline_list_type, %struct.pixel_outline_list_type* %10, i32 0, i32 0
  %11 = load %struct.pixel_outline_type*, %struct.pixel_outline_type** %data2, align 8
  %cmp3 = icmp ne %struct.pixel_outline_type* %11, null
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %for.end
  %12 = load %struct.pixel_outline_list_type*, %struct.pixel_outline_list_type** %outline_list.addr, align 8
  %data4 = getelementptr inbounds %struct.pixel_outline_list_type, %struct.pixel_outline_list_type* %12, i32 0, i32 0
  %13 = bitcast %struct.pixel_outline_type** %data4 to i8**
  call void @safe_free(i8** %13)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end
  ret void
}

declare void @safe_free(i8**) #1

declare noalias i8* @g_malloc0_n(i64, i64) #1

; Function Attrs: nounwind uwtable
define internal { %struct.coordinate_type*, i64 } @new_pixel_outline() #0 {
entry:
  %retval = alloca %struct.pixel_outline_type, align 8
  %pixel_outline = alloca %struct.pixel_outline_type, align 8
  %length = getelementptr inbounds %struct.pixel_outline_type, %struct.pixel_outline_type* %pixel_outline, i32 0, i32 1
  store i32 0, i32* %length, align 4
  %data = getelementptr inbounds %struct.pixel_outline_type, %struct.pixel_outline_type* %pixel_outline, i32 0, i32 0
  store %struct.coordinate_type* null, %struct.coordinate_type** %data, align 8
  %0 = bitcast %struct.pixel_outline_type* %retval to i8*
  %1 = bitcast %struct.pixel_outline_type* %pixel_outline to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* %1, i64 16, i32 8, i1 false)
  %2 = bitcast %struct.pixel_outline_type* %retval to { %struct.coordinate_type*, i64 }*
  %3 = load { %struct.coordinate_type*, i64 }, { %struct.coordinate_type*, i64 }* %2, align 8
  ret { %struct.coordinate_type*, i64 } %3
}

; Function Attrs: nounwind uwtable
define internal void @append_coordinate(%struct.pixel_outline_type* %o, i32 %x, i32 %y, i32 %edge) #0 {
entry:
  %o.addr = alloca %struct.pixel_outline_type*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %edge.addr = alloca i32, align 4
  %c = alloca %struct.coordinate_type, align 4
  store %struct.pixel_outline_type* %o, %struct.pixel_outline_type** %o.addr, align 8
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  store i32 %edge, i32* %edge.addr, align 4
  %0 = load i32, i32* %x.addr, align 4
  %x1 = getelementptr inbounds %struct.coordinate_type, %struct.coordinate_type* %c, i32 0, i32 0
  store i32 %0, i32* %x1, align 4
  %1 = load i32, i32* %y.addr, align 4
  %y2 = getelementptr inbounds %struct.coordinate_type, %struct.coordinate_type* %c, i32 0, i32 1
  store i32 %1, i32* %y2, align 4
  %2 = load i32, i32* %edge.addr, align 4
  switch i32 %2, label %sw.default [
    i32 1, label %sw.bb
    i32 0, label %sw.bb.4
    i32 3, label %sw.bb.9
    i32 2, label %sw.bb.12
  ]

sw.bb:                                            ; preds = %entry
  %y3 = getelementptr inbounds %struct.coordinate_type, %struct.coordinate_type* %c, i32 0, i32 1
  %3 = load i32, i32* %y3, align 4
  %inc = add nsw i32 %3, 1
  store i32 %inc, i32* %y3, align 4
  br label %sw.epilog

sw.bb.4:                                          ; preds = %entry
  %x5 = getelementptr inbounds %struct.coordinate_type, %struct.coordinate_type* %c, i32 0, i32 0
  %4 = load i32, i32* %x5, align 4
  %inc6 = add nsw i32 %4, 1
  store i32 %inc6, i32* %x5, align 4
  %y7 = getelementptr inbounds %struct.coordinate_type, %struct.coordinate_type* %c, i32 0, i32 1
  %5 = load i32, i32* %y7, align 4
  %inc8 = add nsw i32 %5, 1
  store i32 %inc8, i32* %y7, align 4
  br label %sw.epilog

sw.bb.9:                                          ; preds = %entry
  %x10 = getelementptr inbounds %struct.coordinate_type, %struct.coordinate_type* %c, i32 0, i32 0
  %6 = load i32, i32* %x10, align 4
  %inc11 = add nsw i32 %6, 1
  store i32 %inc11, i32* %x10, align 4
  br label %sw.epilog

sw.bb.12:                                         ; preds = %entry
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %7 = load i32, i32* %edge.addr, align 4
  call void (i8*, ...) @g_printerr(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i32 0, i32 0), i32 %7)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.12, %sw.bb.9, %sw.bb.4, %sw.bb
  %8 = load %struct.pixel_outline_type*, %struct.pixel_outline_type** %o.addr, align 8
  %9 = bitcast %struct.coordinate_type* %c to i64*
  %10 = load i64, i64* %9, align 4
  call void @append_outline_pixel(%struct.pixel_outline_type* %8, i64 %10)
  ret void
}

declare void @mark_edge(i32, i32, i32, %struct.bitmap_type*) #1

declare void @next_outline_edge(i32*, i32*, i32*) #1

declare void @g_printerr(i8*, ...) #1

; Function Attrs: nounwind uwtable
define internal void @append_outline_pixel(%struct.pixel_outline_type* %o, i64 %c.coerce) #0 {
entry:
  %c = alloca %struct.coordinate_type, align 8
  %o.addr = alloca %struct.pixel_outline_type*, align 8
  %0 = bitcast %struct.coordinate_type* %c to i64*
  store i64 %c.coerce, i64* %0, align 8
  store %struct.pixel_outline_type* %o, %struct.pixel_outline_type** %o.addr, align 8
  %1 = load %struct.pixel_outline_type*, %struct.pixel_outline_type** %o.addr, align 8
  %length = getelementptr inbounds %struct.pixel_outline_type, %struct.pixel_outline_type* %1, i32 0, i32 1
  %2 = load i32, i32* %length, align 4
  %inc = add i32 %2, 1
  store i32 %inc, i32* %length, align 4
  %3 = load %struct.pixel_outline_type*, %struct.pixel_outline_type** %o.addr, align 8
  %data = getelementptr inbounds %struct.pixel_outline_type, %struct.pixel_outline_type* %3, i32 0, i32 0
  %4 = load %struct.coordinate_type*, %struct.coordinate_type** %data, align 8
  %5 = bitcast %struct.coordinate_type* %4 to i8*
  %6 = load %struct.pixel_outline_type*, %struct.pixel_outline_type** %o.addr, align 8
  %length1 = getelementptr inbounds %struct.pixel_outline_type, %struct.pixel_outline_type* %6, i32 0, i32 1
  %7 = load i32, i32* %length1, align 4
  %conv = zext i32 %7 to i64
  %mul = mul i64 %conv, 8
  %call = call i8* @g_realloc(i8* %5, i64 %mul)
  %8 = bitcast i8* %call to %struct.coordinate_type*
  %9 = load %struct.pixel_outline_type*, %struct.pixel_outline_type** %o.addr, align 8
  %data2 = getelementptr inbounds %struct.pixel_outline_type, %struct.pixel_outline_type* %9, i32 0, i32 0
  store %struct.coordinate_type* %8, %struct.coordinate_type** %data2, align 8
  %10 = load %struct.pixel_outline_type*, %struct.pixel_outline_type** %o.addr, align 8
  %length3 = getelementptr inbounds %struct.pixel_outline_type, %struct.pixel_outline_type* %10, i32 0, i32 1
  %11 = load i32, i32* %length3, align 4
  %sub = sub i32 %11, 1
  %idxprom = zext i32 %sub to i64
  %12 = load %struct.pixel_outline_type*, %struct.pixel_outline_type** %o.addr, align 8
  %data4 = getelementptr inbounds %struct.pixel_outline_type, %struct.pixel_outline_type* %12, i32 0, i32 0
  %13 = load %struct.coordinate_type*, %struct.coordinate_type** %data4, align 8
  %arrayidx = getelementptr inbounds %struct.coordinate_type, %struct.coordinate_type* %13, i64 %idxprom
  %14 = bitcast %struct.coordinate_type* %arrayidx to i8*
  %15 = bitcast %struct.coordinate_type* %c to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %14, i8* %15, i64 8, i32 4, i1 false)
  ret void
}

declare i8* @g_realloc(i8*, i64) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
