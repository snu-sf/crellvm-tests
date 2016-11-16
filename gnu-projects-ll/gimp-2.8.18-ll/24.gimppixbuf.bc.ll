; ModuleID = './libgimp/gimppixbuf.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GdkPixbuf = type opaque

@.str = private unnamed_addr constant [8 x i8] c"LibGimp\00", align 1
@__func__.gimp_image_get_thumbnail = private unnamed_addr constant [25 x i8] c"gimp_image_get_thumbnail\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"width > 0 && width <= 1024\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"height > 0 && height <= 1024\00", align 1
@__func__.gimp_drawable_get_thumbnail = private unnamed_addr constant [28 x i8] c"gimp_drawable_get_thumbnail\00", align 1
@__func__.gimp_drawable_get_sub_thumbnail = private unnamed_addr constant [32 x i8] c"gimp_drawable_get_sub_thumbnail\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"src_x >= 0\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"src_y >= 0\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"src_width > 0\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"src_height > 0\00", align 1
@.str.7 = private unnamed_addr constant [37 x i8] c"dest_width > 0 && dest_width <= 1024\00", align 1
@.str.8 = private unnamed_addr constant [39 x i8] c"dest_height > 0 && dest_height <= 1024\00", align 1
@.str.9 = private unnamed_addr constant [45 x i8] c"file %s: line %d (%s): should not be reached\00", align 1
@.str.10 = private unnamed_addr constant [13 x i8] c"gimppixbuf.c\00", align 1
@__func__.gimp_pixbuf_from_data = private unnamed_addr constant [22 x i8] c"gimp_pixbuf_from_data\00", align 1

; Function Attrs: nounwind uwtable
define %struct._GdkPixbuf* @gimp_image_get_thumbnail(i32 %image_ID, i32 %width, i32 %height, i32 %alpha) #0 {
entry:
  %retval = alloca %struct._GdkPixbuf*, align 8
  %image_ID.addr = alloca i32, align 4
  %width.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  %alpha.addr = alloca i32, align 4
  %thumb_width = alloca i32, align 4
  %thumb_height = alloca i32, align 4
  %thumb_bpp = alloca i32, align 4
  %data = alloca i8*, align 8
  store i32 %image_ID, i32* %image_ID.addr, align 4
  store i32 %width, i32* %width.addr, align 4
  store i32 %height, i32* %height.addr, align 4
  store i32 %alpha, i32* %alpha.addr, align 4
  %0 = load i32, i32* %width.addr, align 4
  store i32 %0, i32* %thumb_width, align 4
  %1 = load i32, i32* %height.addr, align 4
  store i32 %1, i32* %thumb_height, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %2 = load i32, i32* %width.addr, align 4
  %cmp = icmp sgt i32 %2, 0
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %do.body
  %3 = load i32, i32* %width.addr, align 4
  %cmp1 = icmp sle i32 %3, 1024
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.gimp_image_get_thumbnail, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i32 0, i32 0))
  store %struct._GdkPixbuf* null, %struct._GdkPixbuf** %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %do.body.2

do.body.2:                                        ; preds = %do.end
  %4 = load i32, i32* %height.addr, align 4
  %cmp3 = icmp sgt i32 %4, 0
  br i1 %cmp3, label %land.lhs.true.4, label %if.else.7

land.lhs.true.4:                                  ; preds = %do.body.2
  %5 = load i32, i32* %height.addr, align 4
  %cmp5 = icmp sle i32 %5, 1024
  br i1 %cmp5, label %if.then.6, label %if.else.7

if.then.6:                                        ; preds = %land.lhs.true.4
  br label %if.end.8

if.else.7:                                        ; preds = %land.lhs.true.4, %do.body.2
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.gimp_image_get_thumbnail, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i32 0, i32 0))
  store %struct._GdkPixbuf* null, %struct._GdkPixbuf** %retval
  br label %return

if.end.8:                                         ; preds = %if.then.6
  br label %do.end.9

do.end.9:                                         ; preds = %if.end.8
  %6 = load i32, i32* %image_ID.addr, align 4
  %call = call i8* @gimp_image_get_thumbnail_data(i32 %6, i32* %thumb_width, i32* %thumb_height, i32* %thumb_bpp)
  store i8* %call, i8** %data, align 8
  %7 = load i8*, i8** %data, align 8
  %tobool = icmp ne i8* %7, null
  br i1 %tobool, label %if.then.10, label %if.else.12

if.then.10:                                       ; preds = %do.end.9
  %8 = load i8*, i8** %data, align 8
  %9 = load i32, i32* %thumb_width, align 4
  %10 = load i32, i32* %thumb_height, align 4
  %11 = load i32, i32* %thumb_bpp, align 4
  %12 = load i32, i32* %alpha.addr, align 4
  %call11 = call %struct._GdkPixbuf* @gimp_pixbuf_from_data(i8* %8, i32 %9, i32 %10, i32 %11, i32 %12)
  store %struct._GdkPixbuf* %call11, %struct._GdkPixbuf** %retval
  br label %return

if.else.12:                                       ; preds = %do.end.9
  store %struct._GdkPixbuf* null, %struct._GdkPixbuf** %retval
  br label %return

return:                                           ; preds = %if.else.12, %if.then.10, %if.else.7, %if.else
  %13 = load %struct._GdkPixbuf*, %struct._GdkPixbuf** %retval
  ret %struct._GdkPixbuf* %13
}

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

declare i8* @gimp_image_get_thumbnail_data(i32, i32*, i32*, i32*) #1

; Function Attrs: nounwind uwtable
define internal %struct._GdkPixbuf* @gimp_pixbuf_from_data(i8* %data, i32 %width, i32 %height, i32 %bpp, i32 %alpha) #0 {
entry:
  %retval = alloca %struct._GdkPixbuf*, align 8
  %data.addr = alloca i8*, align 8
  %width.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  %bpp.addr = alloca i32, align 4
  %alpha.addr = alloca i32, align 4
  %pixbuf = alloca %struct._GdkPixbuf*, align 8
  %src = alloca i8*, align 8
  %pixels = alloca i8*, align 8
  %rowstride = alloca i32, align 4
  %y = alloca i32, align 4
  %dest = alloca i8*, align 8
  %x = alloca i32, align 4
  %src16 = alloca i8*, align 8
  %pixels17 = alloca i8*, align 8
  %rowstride19 = alloca i32, align 4
  %y21 = alloca i32, align 4
  %dest25 = alloca i8*, align 8
  %x26 = alloca i32, align 4
  %tmp = alloca %struct._GdkPixbuf*, align 8
  %check_size = alloca i32, align 4
  store i8* %data, i8** %data.addr, align 8
  store i32 %width, i32* %width.addr, align 4
  store i32 %height, i32* %height.addr, align 4
  store i32 %bpp, i32* %bpp.addr, align 4
  store i32 %alpha, i32* %alpha.addr, align 4
  %0 = load i32, i32* %bpp.addr, align 4
  switch i32 %0, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.14
    i32 3, label %sw.bb.46
    i32 4, label %sw.bb.48
  ]

sw.bb:                                            ; preds = %entry
  %1 = load i32, i32* %width.addr, align 4
  %2 = load i32, i32* %height.addr, align 4
  %call = call %struct._GdkPixbuf* @gdk_pixbuf_new(i32 0, i32 0, i32 8, i32 %1, i32 %2)
  store %struct._GdkPixbuf* %call, %struct._GdkPixbuf** %pixbuf, align 8
  %3 = load i8*, i8** %data.addr, align 8
  store i8* %3, i8** %src, align 8
  %4 = load %struct._GdkPixbuf*, %struct._GdkPixbuf** %pixbuf, align 8
  %call1 = call i8* @gdk_pixbuf_get_pixels(%struct._GdkPixbuf* %4)
  store i8* %call1, i8** %pixels, align 8
  %5 = load %struct._GdkPixbuf*, %struct._GdkPixbuf** %pixbuf, align 8
  %call2 = call i32 @gdk_pixbuf_get_rowstride(%struct._GdkPixbuf* %5)
  store i32 %call2, i32* %rowstride, align 4
  store i32 0, i32* %y, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.11, %sw.bb
  %6 = load i32, i32* %y, align 4
  %7 = load i32, i32* %height.addr, align 4
  %cmp = icmp slt i32 %6, %7
  br i1 %cmp, label %for.body, label %for.end.13

for.body:                                         ; preds = %for.cond
  %8 = load i8*, i8** %pixels, align 8
  store i8* %8, i8** %dest, align 8
  store i32 0, i32* %x, align 4
  br label %for.cond.3

for.cond.3:                                       ; preds = %for.inc, %for.body
  %9 = load i32, i32* %x, align 4
  %10 = load i32, i32* %width.addr, align 4
  %cmp4 = icmp slt i32 %9, %10
  br i1 %cmp4, label %for.body.5, label %for.end

for.body.5:                                       ; preds = %for.cond.3
  %11 = load i8*, i8** %src, align 8
  %arrayidx = getelementptr inbounds i8, i8* %11, i64 0
  %12 = load i8, i8* %arrayidx, align 1
  %13 = load i8*, i8** %dest, align 8
  %arrayidx6 = getelementptr inbounds i8, i8* %13, i64 2
  store i8 %12, i8* %arrayidx6, align 1
  %14 = load i8*, i8** %dest, align 8
  %arrayidx7 = getelementptr inbounds i8, i8* %14, i64 1
  store i8 %12, i8* %arrayidx7, align 1
  %15 = load i8*, i8** %dest, align 8
  %arrayidx8 = getelementptr inbounds i8, i8* %15, i64 0
  store i8 %12, i8* %arrayidx8, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body.5
  %16 = load i32, i32* %x, align 4
  %inc = add nsw i32 %16, 1
  store i32 %inc, i32* %x, align 4
  %17 = load i8*, i8** %src, align 8
  %add.ptr = getelementptr inbounds i8, i8* %17, i64 1
  store i8* %add.ptr, i8** %src, align 8
  %18 = load i8*, i8** %dest, align 8
  %add.ptr9 = getelementptr inbounds i8, i8* %18, i64 3
  store i8* %add.ptr9, i8** %dest, align 8
  br label %for.cond.3

for.end:                                          ; preds = %for.cond.3
  %19 = load i32, i32* %rowstride, align 4
  %20 = load i8*, i8** %pixels, align 8
  %idx.ext = sext i32 %19 to i64
  %add.ptr10 = getelementptr inbounds i8, i8* %20, i64 %idx.ext
  store i8* %add.ptr10, i8** %pixels, align 8
  br label %for.inc.11

for.inc.11:                                       ; preds = %for.end
  %21 = load i32, i32* %y, align 4
  %inc12 = add nsw i32 %21, 1
  store i32 %inc12, i32* %y, align 4
  br label %for.cond

for.end.13:                                       ; preds = %for.cond
  %22 = load i8*, i8** %data.addr, align 8
  call void @g_free(i8* %22)
  store i32 3, i32* %bpp.addr, align 4
  br label %sw.epilog

sw.bb.14:                                         ; preds = %entry
  %23 = load i32, i32* %width.addr, align 4
  %24 = load i32, i32* %height.addr, align 4
  %call15 = call %struct._GdkPixbuf* @gdk_pixbuf_new(i32 0, i32 1, i32 8, i32 %23, i32 %24)
  store %struct._GdkPixbuf* %call15, %struct._GdkPixbuf** %pixbuf, align 8
  %25 = load i8*, i8** %data.addr, align 8
  store i8* %25, i8** %src16, align 8
  %26 = load %struct._GdkPixbuf*, %struct._GdkPixbuf** %pixbuf, align 8
  %call18 = call i8* @gdk_pixbuf_get_pixels(%struct._GdkPixbuf* %26)
  store i8* %call18, i8** %pixels17, align 8
  %27 = load %struct._GdkPixbuf*, %struct._GdkPixbuf** %pixbuf, align 8
  %call20 = call i32 @gdk_pixbuf_get_rowstride(%struct._GdkPixbuf* %27)
  store i32 %call20, i32* %rowstride19, align 4
  store i32 0, i32* %y21, align 4
  br label %for.cond.22

for.cond.22:                                      ; preds = %for.inc.43, %sw.bb.14
  %28 = load i32, i32* %y21, align 4
  %29 = load i32, i32* %height.addr, align 4
  %cmp23 = icmp slt i32 %28, %29
  br i1 %cmp23, label %for.body.24, label %for.end.45

for.body.24:                                      ; preds = %for.cond.22
  %30 = load i8*, i8** %pixels17, align 8
  store i8* %30, i8** %dest25, align 8
  store i32 0, i32* %x26, align 4
  br label %for.cond.27

for.cond.27:                                      ; preds = %for.inc.36, %for.body.24
  %31 = load i32, i32* %x26, align 4
  %32 = load i32, i32* %width.addr, align 4
  %cmp28 = icmp slt i32 %31, %32
  br i1 %cmp28, label %for.body.29, label %for.end.40

for.body.29:                                      ; preds = %for.cond.27
  %33 = load i8*, i8** %src16, align 8
  %arrayidx30 = getelementptr inbounds i8, i8* %33, i64 0
  %34 = load i8, i8* %arrayidx30, align 1
  %35 = load i8*, i8** %dest25, align 8
  %arrayidx31 = getelementptr inbounds i8, i8* %35, i64 2
  store i8 %34, i8* %arrayidx31, align 1
  %36 = load i8*, i8** %dest25, align 8
  %arrayidx32 = getelementptr inbounds i8, i8* %36, i64 1
  store i8 %34, i8* %arrayidx32, align 1
  %37 = load i8*, i8** %dest25, align 8
  %arrayidx33 = getelementptr inbounds i8, i8* %37, i64 0
  store i8 %34, i8* %arrayidx33, align 1
  %38 = load i8*, i8** %src16, align 8
  %arrayidx34 = getelementptr inbounds i8, i8* %38, i64 1
  %39 = load i8, i8* %arrayidx34, align 1
  %40 = load i8*, i8** %dest25, align 8
  %arrayidx35 = getelementptr inbounds i8, i8* %40, i64 3
  store i8 %39, i8* %arrayidx35, align 1
  br label %for.inc.36

for.inc.36:                                       ; preds = %for.body.29
  %41 = load i32, i32* %x26, align 4
  %inc37 = add nsw i32 %41, 1
  store i32 %inc37, i32* %x26, align 4
  %42 = load i8*, i8** %src16, align 8
  %add.ptr38 = getelementptr inbounds i8, i8* %42, i64 2
  store i8* %add.ptr38, i8** %src16, align 8
  %43 = load i8*, i8** %dest25, align 8
  %add.ptr39 = getelementptr inbounds i8, i8* %43, i64 4
  store i8* %add.ptr39, i8** %dest25, align 8
  br label %for.cond.27

for.end.40:                                       ; preds = %for.cond.27
  %44 = load i32, i32* %rowstride19, align 4
  %45 = load i8*, i8** %pixels17, align 8
  %idx.ext41 = sext i32 %44 to i64
  %add.ptr42 = getelementptr inbounds i8, i8* %45, i64 %idx.ext41
  store i8* %add.ptr42, i8** %pixels17, align 8
  br label %for.inc.43

for.inc.43:                                       ; preds = %for.end.40
  %46 = load i32, i32* %y21, align 4
  %inc44 = add nsw i32 %46, 1
  store i32 %inc44, i32* %y21, align 4
  br label %for.cond.22

for.end.45:                                       ; preds = %for.cond.22
  %47 = load i8*, i8** %data.addr, align 8
  call void @g_free(i8* %47)
  store i32 4, i32* %bpp.addr, align 4
  br label %sw.epilog

sw.bb.46:                                         ; preds = %entry
  %48 = load i8*, i8** %data.addr, align 8
  %49 = load i32, i32* %width.addr, align 4
  %50 = load i32, i32* %height.addr, align 4
  %51 = load i32, i32* %width.addr, align 4
  %52 = load i32, i32* %bpp.addr, align 4
  %mul = mul nsw i32 %51, %52
  %call47 = call %struct._GdkPixbuf* @gdk_pixbuf_new_from_data(i8* %48, i32 0, i32 0, i32 8, i32 %49, i32 %50, i32 %mul, void (i8*, i8*)* bitcast (void (i8*)* @g_free to void (i8*, i8*)*), i8* null)
  store %struct._GdkPixbuf* %call47, %struct._GdkPixbuf** %pixbuf, align 8
  br label %sw.epilog

sw.bb.48:                                         ; preds = %entry
  %53 = load i8*, i8** %data.addr, align 8
  %54 = load i32, i32* %width.addr, align 4
  %55 = load i32, i32* %height.addr, align 4
  %56 = load i32, i32* %width.addr, align 4
  %57 = load i32, i32* %bpp.addr, align 4
  %mul49 = mul nsw i32 %56, %57
  %call50 = call %struct._GdkPixbuf* @gdk_pixbuf_new_from_data(i8* %53, i32 0, i32 1, i32 8, i32 %54, i32 %55, i32 %mul49, void (i8*, i8*)* bitcast (void (i8*)* @g_free to void (i8*, i8*)*), i8* null)
  store %struct._GdkPixbuf* %call50, %struct._GdkPixbuf** %pixbuf, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %sw.default
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i32 8, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i32 0, i32 0), i32 267, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.gimp_pixbuf_from_data, i32 0, i32 0))
  store %struct._GdkPixbuf* null, %struct._GdkPixbuf** %retval
  br label %return

do.end:                                           ; No predecessors!
  store %struct._GdkPixbuf* null, %struct._GdkPixbuf** %retval
  br label %return

sw.epilog:                                        ; preds = %sw.bb.48, %sw.bb.46, %for.end.45, %for.end.13
  %58 = load i32, i32* %bpp.addr, align 4
  %cmp51 = icmp eq i32 %58, 4
  br i1 %cmp51, label %if.then, label %if.end

if.then:                                          ; preds = %sw.epilog
  store i32 0, i32* %check_size, align 4
  %59 = load i32, i32* %alpha.addr, align 4
  switch i32 %59, label %sw.epilog.56 [
    i32 0, label %sw.bb.53
    i32 1, label %sw.bb.54
    i32 2, label %sw.bb.55
  ]

sw.bb.53:                                         ; preds = %if.then
  %60 = load %struct._GdkPixbuf*, %struct._GdkPixbuf** %pixbuf, align 8
  store %struct._GdkPixbuf* %60, %struct._GdkPixbuf** %retval
  br label %return

sw.bb.54:                                         ; preds = %if.then
  store i32 4, i32* %check_size, align 4
  br label %sw.epilog.56

sw.bb.55:                                         ; preds = %if.then
  store i32 8, i32* %check_size, align 4
  br label %sw.epilog.56

sw.epilog.56:                                     ; preds = %if.then, %sw.bb.55, %sw.bb.54
  %61 = load i32, i32* %width.addr, align 4
  %62 = load i32, i32* %height.addr, align 4
  %call57 = call %struct._GdkPixbuf* @gdk_pixbuf_new(i32 0, i32 0, i32 8, i32 %61, i32 %62)
  store %struct._GdkPixbuf* %call57, %struct._GdkPixbuf** %tmp, align 8
  %63 = load %struct._GdkPixbuf*, %struct._GdkPixbuf** %pixbuf, align 8
  %64 = load %struct._GdkPixbuf*, %struct._GdkPixbuf** %tmp, align 8
  %65 = load i32, i32* %width.addr, align 4
  %66 = load i32, i32* %height.addr, align 4
  %67 = load i32, i32* %check_size, align 4
  call void @gdk_pixbuf_composite_color(%struct._GdkPixbuf* %63, %struct._GdkPixbuf* %64, i32 0, i32 0, i32 %65, i32 %66, double 0.000000e+00, double 0.000000e+00, double 1.000000e+00, double 1.000000e+00, i32 0, i32 255, i32 0, i32 0, i32 %67, i32 1717986918, i32 -1717986919)
  %68 = load %struct._GdkPixbuf*, %struct._GdkPixbuf** %pixbuf, align 8
  %69 = bitcast %struct._GdkPixbuf* %68 to i8*
  call void @g_object_unref(i8* %69)
  %70 = load %struct._GdkPixbuf*, %struct._GdkPixbuf** %tmp, align 8
  store %struct._GdkPixbuf* %70, %struct._GdkPixbuf** %pixbuf, align 8
  br label %if.end

if.end:                                           ; preds = %sw.epilog.56, %sw.epilog
  %71 = load %struct._GdkPixbuf*, %struct._GdkPixbuf** %pixbuf, align 8
  store %struct._GdkPixbuf* %71, %struct._GdkPixbuf** %retval
  br label %return

return:                                           ; preds = %if.end, %sw.bb.53, %do.end, %do.body
  %72 = load %struct._GdkPixbuf*, %struct._GdkPixbuf** %retval
  ret %struct._GdkPixbuf* %72
}

; Function Attrs: nounwind uwtable
define %struct._GdkPixbuf* @gimp_drawable_get_thumbnail(i32 %drawable_ID, i32 %width, i32 %height, i32 %alpha) #0 {
entry:
  %retval = alloca %struct._GdkPixbuf*, align 8
  %drawable_ID.addr = alloca i32, align 4
  %width.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  %alpha.addr = alloca i32, align 4
  %thumb_width = alloca i32, align 4
  %thumb_height = alloca i32, align 4
  %thumb_bpp = alloca i32, align 4
  %data = alloca i8*, align 8
  store i32 %drawable_ID, i32* %drawable_ID.addr, align 4
  store i32 %width, i32* %width.addr, align 4
  store i32 %height, i32* %height.addr, align 4
  store i32 %alpha, i32* %alpha.addr, align 4
  %0 = load i32, i32* %width.addr, align 4
  store i32 %0, i32* %thumb_width, align 4
  %1 = load i32, i32* %height.addr, align 4
  store i32 %1, i32* %thumb_height, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %2 = load i32, i32* %width.addr, align 4
  %cmp = icmp sgt i32 %2, 0
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %do.body
  %3 = load i32, i32* %width.addr, align 4
  %cmp1 = icmp sle i32 %3, 1024
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.gimp_drawable_get_thumbnail, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i32 0, i32 0))
  store %struct._GdkPixbuf* null, %struct._GdkPixbuf** %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %do.body.2

do.body.2:                                        ; preds = %do.end
  %4 = load i32, i32* %height.addr, align 4
  %cmp3 = icmp sgt i32 %4, 0
  br i1 %cmp3, label %land.lhs.true.4, label %if.else.7

land.lhs.true.4:                                  ; preds = %do.body.2
  %5 = load i32, i32* %height.addr, align 4
  %cmp5 = icmp sle i32 %5, 1024
  br i1 %cmp5, label %if.then.6, label %if.else.7

if.then.6:                                        ; preds = %land.lhs.true.4
  br label %if.end.8

if.else.7:                                        ; preds = %land.lhs.true.4, %do.body.2
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.gimp_drawable_get_thumbnail, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i32 0, i32 0))
  store %struct._GdkPixbuf* null, %struct._GdkPixbuf** %retval
  br label %return

if.end.8:                                         ; preds = %if.then.6
  br label %do.end.9

do.end.9:                                         ; preds = %if.end.8
  %6 = load i32, i32* %drawable_ID.addr, align 4
  %call = call i8* @gimp_drawable_get_thumbnail_data(i32 %6, i32* %thumb_width, i32* %thumb_height, i32* %thumb_bpp)
  store i8* %call, i8** %data, align 8
  %7 = load i8*, i8** %data, align 8
  %tobool = icmp ne i8* %7, null
  br i1 %tobool, label %if.then.10, label %if.end.12

if.then.10:                                       ; preds = %do.end.9
  %8 = load i8*, i8** %data, align 8
  %9 = load i32, i32* %thumb_width, align 4
  %10 = load i32, i32* %thumb_height, align 4
  %11 = load i32, i32* %thumb_bpp, align 4
  %12 = load i32, i32* %alpha.addr, align 4
  %call11 = call %struct._GdkPixbuf* @gimp_pixbuf_from_data(i8* %8, i32 %9, i32 %10, i32 %11, i32 %12)
  store %struct._GdkPixbuf* %call11, %struct._GdkPixbuf** %retval
  br label %return

if.end.12:                                        ; preds = %do.end.9
  store %struct._GdkPixbuf* null, %struct._GdkPixbuf** %retval
  br label %return

return:                                           ; preds = %if.end.12, %if.then.10, %if.else.7, %if.else
  %13 = load %struct._GdkPixbuf*, %struct._GdkPixbuf** %retval
  ret %struct._GdkPixbuf* %13
}

declare i8* @gimp_drawable_get_thumbnail_data(i32, i32*, i32*, i32*) #1

; Function Attrs: nounwind uwtable
define %struct._GdkPixbuf* @gimp_drawable_get_sub_thumbnail(i32 %drawable_ID, i32 %src_x, i32 %src_y, i32 %src_width, i32 %src_height, i32 %dest_width, i32 %dest_height, i32 %alpha) #0 {
entry:
  %retval = alloca %struct._GdkPixbuf*, align 8
  %drawable_ID.addr = alloca i32, align 4
  %src_x.addr = alloca i32, align 4
  %src_y.addr = alloca i32, align 4
  %src_width.addr = alloca i32, align 4
  %src_height.addr = alloca i32, align 4
  %dest_width.addr = alloca i32, align 4
  %dest_height.addr = alloca i32, align 4
  %alpha.addr = alloca i32, align 4
  %thumb_width = alloca i32, align 4
  %thumb_height = alloca i32, align 4
  %thumb_bpp = alloca i32, align 4
  %data = alloca i8*, align 8
  store i32 %drawable_ID, i32* %drawable_ID.addr, align 4
  store i32 %src_x, i32* %src_x.addr, align 4
  store i32 %src_y, i32* %src_y.addr, align 4
  store i32 %src_width, i32* %src_width.addr, align 4
  store i32 %src_height, i32* %src_height.addr, align 4
  store i32 %dest_width, i32* %dest_width.addr, align 4
  store i32 %dest_height, i32* %dest_height.addr, align 4
  store i32 %alpha, i32* %alpha.addr, align 4
  %0 = load i32, i32* %dest_width.addr, align 4
  store i32 %0, i32* %thumb_width, align 4
  %1 = load i32, i32* %dest_height.addr, align 4
  store i32 %1, i32* %thumb_height, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %2 = load i32, i32* %src_x.addr, align 4
  %cmp = icmp sge i32 %2, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__func__.gimp_drawable_get_sub_thumbnail, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i32 0, i32 0))
  store %struct._GdkPixbuf* null, %struct._GdkPixbuf** %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %do.body.1

do.body.1:                                        ; preds = %do.end
  %3 = load i32, i32* %src_y.addr, align 4
  %cmp2 = icmp sge i32 %3, 0
  br i1 %cmp2, label %if.then.3, label %if.else.4

if.then.3:                                        ; preds = %do.body.1
  br label %if.end.5

if.else.4:                                        ; preds = %do.body.1
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__func__.gimp_drawable_get_sub_thumbnail, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0))
  store %struct._GdkPixbuf* null, %struct._GdkPixbuf** %retval
  br label %return

if.end.5:                                         ; preds = %if.then.3
  br label %do.end.6

do.end.6:                                         ; preds = %if.end.5
  br label %do.body.7

do.body.7:                                        ; preds = %do.end.6
  %4 = load i32, i32* %src_width.addr, align 4
  %cmp8 = icmp sgt i32 %4, 0
  br i1 %cmp8, label %if.then.9, label %if.else.10

if.then.9:                                        ; preds = %do.body.7
  br label %if.end.11

if.else.10:                                       ; preds = %do.body.7
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__func__.gimp_drawable_get_sub_thumbnail, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i32 0, i32 0))
  store %struct._GdkPixbuf* null, %struct._GdkPixbuf** %retval
  br label %return

if.end.11:                                        ; preds = %if.then.9
  br label %do.end.12

do.end.12:                                        ; preds = %if.end.11
  br label %do.body.13

do.body.13:                                       ; preds = %do.end.12
  %5 = load i32, i32* %src_height.addr, align 4
  %cmp14 = icmp sgt i32 %5, 0
  br i1 %cmp14, label %if.then.15, label %if.else.16

if.then.15:                                       ; preds = %do.body.13
  br label %if.end.17

if.else.16:                                       ; preds = %do.body.13
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__func__.gimp_drawable_get_sub_thumbnail, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i32 0, i32 0))
  store %struct._GdkPixbuf* null, %struct._GdkPixbuf** %retval
  br label %return

if.end.17:                                        ; preds = %if.then.15
  br label %do.end.18

do.end.18:                                        ; preds = %if.end.17
  br label %do.body.19

do.body.19:                                       ; preds = %do.end.18
  %6 = load i32, i32* %dest_width.addr, align 4
  %cmp20 = icmp sgt i32 %6, 0
  br i1 %cmp20, label %land.lhs.true, label %if.else.23

land.lhs.true:                                    ; preds = %do.body.19
  %7 = load i32, i32* %dest_width.addr, align 4
  %cmp21 = icmp sle i32 %7, 1024
  br i1 %cmp21, label %if.then.22, label %if.else.23

if.then.22:                                       ; preds = %land.lhs.true
  br label %if.end.24

if.else.23:                                       ; preds = %land.lhs.true, %do.body.19
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__func__.gimp_drawable_get_sub_thumbnail, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.7, i32 0, i32 0))
  store %struct._GdkPixbuf* null, %struct._GdkPixbuf** %retval
  br label %return

if.end.24:                                        ; preds = %if.then.22
  br label %do.end.25

do.end.25:                                        ; preds = %if.end.24
  br label %do.body.26

do.body.26:                                       ; preds = %do.end.25
  %8 = load i32, i32* %dest_height.addr, align 4
  %cmp27 = icmp sgt i32 %8, 0
  br i1 %cmp27, label %land.lhs.true.28, label %if.else.31

land.lhs.true.28:                                 ; preds = %do.body.26
  %9 = load i32, i32* %dest_height.addr, align 4
  %cmp29 = icmp sle i32 %9, 1024
  br i1 %cmp29, label %if.then.30, label %if.else.31

if.then.30:                                       ; preds = %land.lhs.true.28
  br label %if.end.32

if.else.31:                                       ; preds = %land.lhs.true.28, %do.body.26
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__func__.gimp_drawable_get_sub_thumbnail, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.8, i32 0, i32 0))
  store %struct._GdkPixbuf* null, %struct._GdkPixbuf** %retval
  br label %return

if.end.32:                                        ; preds = %if.then.30
  br label %do.end.33

do.end.33:                                        ; preds = %if.end.32
  %10 = load i32, i32* %drawable_ID.addr, align 4
  %11 = load i32, i32* %src_x.addr, align 4
  %12 = load i32, i32* %src_y.addr, align 4
  %13 = load i32, i32* %src_width.addr, align 4
  %14 = load i32, i32* %src_height.addr, align 4
  %call = call i8* @gimp_drawable_get_sub_thumbnail_data(i32 %10, i32 %11, i32 %12, i32 %13, i32 %14, i32* %thumb_width, i32* %thumb_height, i32* %thumb_bpp)
  store i8* %call, i8** %data, align 8
  %15 = load i8*, i8** %data, align 8
  %tobool = icmp ne i8* %15, null
  br i1 %tobool, label %if.then.34, label %if.end.36

if.then.34:                                       ; preds = %do.end.33
  %16 = load i8*, i8** %data, align 8
  %17 = load i32, i32* %thumb_width, align 4
  %18 = load i32, i32* %thumb_height, align 4
  %19 = load i32, i32* %thumb_bpp, align 4
  %20 = load i32, i32* %alpha.addr, align 4
  %call35 = call %struct._GdkPixbuf* @gimp_pixbuf_from_data(i8* %16, i32 %17, i32 %18, i32 %19, i32 %20)
  store %struct._GdkPixbuf* %call35, %struct._GdkPixbuf** %retval
  br label %return

if.end.36:                                        ; preds = %do.end.33
  store %struct._GdkPixbuf* null, %struct._GdkPixbuf** %retval
  br label %return

return:                                           ; preds = %if.end.36, %if.then.34, %if.else.31, %if.else.23, %if.else.16, %if.else.10, %if.else.4, %if.else
  %21 = load %struct._GdkPixbuf*, %struct._GdkPixbuf** %retval
  ret %struct._GdkPixbuf* %21
}

declare i8* @gimp_drawable_get_sub_thumbnail_data(i32, i32, i32, i32, i32, i32*, i32*, i32*) #1

declare %struct._GdkPixbuf* @gdk_pixbuf_new(i32, i32, i32, i32, i32) #1

declare i8* @gdk_pixbuf_get_pixels(%struct._GdkPixbuf*) #1

declare i32 @gdk_pixbuf_get_rowstride(%struct._GdkPixbuf*) #1

declare void @g_free(i8*) #1

declare %struct._GdkPixbuf* @gdk_pixbuf_new_from_data(i8*, i32, i32, i32, i32, i32, i32, void (i8*, i8*)*, i8*) #1

declare void @g_log(i8*, i32, i8*, ...) #1

declare void @gdk_pixbuf_composite_color(%struct._GdkPixbuf*, %struct._GdkPixbuf*, i32, i32, i32, i32, double, double, double, double, i32, i32, i32, i32, i32, i32, i32) #1

declare void @g_object_unref(i8*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
