; ModuleID = './libgimp/gimpregioniterator.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GimpRgnIterator = type { %struct._GimpDrawable*, i32, i32, i32, i32 }
%struct._GimpDrawable = type { i32, i32, i32, i32, i32, i32, %struct._GimpTile*, %struct._GimpTile* }
%struct._GimpTile = type { i32, i32, i32, i32, i16, i8, i8*, %struct._GimpDrawable* }
%struct._GimpPixelRgn = type { i8*, %struct._GimpDrawable*, i32, i32, i32, i32, i32, i32, i8, i32 }

@.str = private unnamed_addr constant [8 x i8] c"LibGimp\00", align 1
@__func__.gimp_rgn_iterator_new = private unnamed_addr constant [22 x i8] c"gimp_rgn_iterator_new\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"drawable != NULL\00", align 1
@__func__.gimp_rgn_iterator_free = private unnamed_addr constant [23 x i8] c"gimp_rgn_iterator_free\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"iter != NULL\00", align 1
@__func__.gimp_rgn_iterator_src = private unnamed_addr constant [22 x i8] c"gimp_rgn_iterator_src\00", align 1
@__func__.gimp_rgn_iterator_src_dest = private unnamed_addr constant [27 x i8] c"gimp_rgn_iterator_src_dest\00", align 1
@__func__.gimp_rgn_iterator_dest = private unnamed_addr constant [23 x i8] c"gimp_rgn_iterator_dest\00", align 1
@__func__.gimp_rgn_iterate1 = private unnamed_addr constant [18 x i8] c"gimp_rgn_iterate1\00", align 1
@__func__.gimp_rgn_iterate2 = private unnamed_addr constant [18 x i8] c"gimp_rgn_iterate2\00", align 1

; Function Attrs: nounwind uwtable
define %struct._GimpRgnIterator* @gimp_rgn_iterator_new(%struct._GimpDrawable* %drawable, i32 %unused) #0 {
entry:
  %retval = alloca %struct._GimpRgnIterator*, align 8
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %unused.addr = alloca i32, align 4
  %iter = alloca %struct._GimpRgnIterator*, align 8
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  store i32 %unused, i32* %unused.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %cmp = icmp ne %struct._GimpDrawable* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.gimp_rgn_iterator_new, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i32 0, i32 0))
  store %struct._GimpRgnIterator* null, %struct._GimpRgnIterator** %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %call = call noalias i8* @g_slice_alloc(i64 24)
  %1 = bitcast i8* %call to %struct._GimpRgnIterator*
  store %struct._GimpRgnIterator* %1, %struct._GimpRgnIterator** %iter, align 8
  %2 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %3 = load %struct._GimpRgnIterator*, %struct._GimpRgnIterator** %iter, align 8
  %drawable1 = getelementptr inbounds %struct._GimpRgnIterator, %struct._GimpRgnIterator* %3, i32 0, i32 0
  store %struct._GimpDrawable* %2, %struct._GimpDrawable** %drawable1, align 8
  %4 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %drawable_id = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %4, i32 0, i32 0
  %5 = load i32, i32* %drawable_id, align 4
  %6 = load %struct._GimpRgnIterator*, %struct._GimpRgnIterator** %iter, align 8
  %x1 = getelementptr inbounds %struct._GimpRgnIterator, %struct._GimpRgnIterator* %6, i32 0, i32 1
  %7 = load %struct._GimpRgnIterator*, %struct._GimpRgnIterator** %iter, align 8
  %y1 = getelementptr inbounds %struct._GimpRgnIterator, %struct._GimpRgnIterator* %7, i32 0, i32 2
  %8 = load %struct._GimpRgnIterator*, %struct._GimpRgnIterator** %iter, align 8
  %x2 = getelementptr inbounds %struct._GimpRgnIterator, %struct._GimpRgnIterator* %8, i32 0, i32 3
  %9 = load %struct._GimpRgnIterator*, %struct._GimpRgnIterator** %iter, align 8
  %y2 = getelementptr inbounds %struct._GimpRgnIterator, %struct._GimpRgnIterator* %9, i32 0, i32 4
  %call2 = call i32 @gimp_drawable_mask_bounds(i32 %5, i32* %x1, i32* %y1, i32* %x2, i32* %y2)
  %10 = load %struct._GimpRgnIterator*, %struct._GimpRgnIterator** %iter, align 8
  store %struct._GimpRgnIterator* %10, %struct._GimpRgnIterator** %retval
  br label %return

return:                                           ; preds = %do.end, %if.else
  %11 = load %struct._GimpRgnIterator*, %struct._GimpRgnIterator** %retval
  ret %struct._GimpRgnIterator* %11
}

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

declare noalias i8* @g_slice_alloc(i64) #1

declare i32 @gimp_drawable_mask_bounds(i32, i32*, i32*, i32*, i32*) #1

; Function Attrs: nounwind uwtable
define void @gimp_rgn_iterator_free(%struct._GimpRgnIterator* %iter) #0 {
entry:
  %iter.addr = alloca %struct._GimpRgnIterator*, align 8
  store %struct._GimpRgnIterator* %iter, %struct._GimpRgnIterator** %iter.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpRgnIterator*, %struct._GimpRgnIterator** %iter.addr, align 8
  %cmp = icmp ne %struct._GimpRgnIterator* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.gimp_rgn_iterator_free, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0))
  br label %do.end.2

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %do.body.1

do.body.1:                                        ; preds = %do.end
  %1 = load %struct._GimpRgnIterator*, %struct._GimpRgnIterator** %iter.addr, align 8
  %2 = bitcast %struct._GimpRgnIterator* %1 to i8*
  call void @g_slice_free1(i64 24, i8* %2)
  br label %do.end.2

do.end.2:                                         ; preds = %if.else, %do.body.1
  ret void
}

declare void @g_slice_free1(i64, i8*) #1

; Function Attrs: nounwind uwtable
define void @gimp_rgn_iterator_src(%struct._GimpRgnIterator* %iter, void (i32, i32, i8*, i32, i8*)* %func, i8* %data) #0 {
entry:
  %iter.addr = alloca %struct._GimpRgnIterator*, align 8
  %func.addr = alloca void (i32, i32, i8*, i32, i8*)*, align 8
  %data.addr = alloca i8*, align 8
  %srcPR = alloca %struct._GimpPixelRgn, align 8
  store %struct._GimpRgnIterator* %iter, %struct._GimpRgnIterator** %iter.addr, align 8
  store void (i32, i32, i8*, i32, i8*)* %func, void (i32, i32, i8*, i32, i8*)** %func.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpRgnIterator*, %struct._GimpRgnIterator** %iter.addr, align 8
  %cmp = icmp ne %struct._GimpRgnIterator* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.gimp_rgn_iterator_src, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0))
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %1 = load %struct._GimpRgnIterator*, %struct._GimpRgnIterator** %iter.addr, align 8
  %drawable = getelementptr inbounds %struct._GimpRgnIterator, %struct._GimpRgnIterator* %1, i32 0, i32 0
  %2 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %3 = load %struct._GimpRgnIterator*, %struct._GimpRgnIterator** %iter.addr, align 8
  %x1 = getelementptr inbounds %struct._GimpRgnIterator, %struct._GimpRgnIterator* %3, i32 0, i32 1
  %4 = load i32, i32* %x1, align 4
  %5 = load %struct._GimpRgnIterator*, %struct._GimpRgnIterator** %iter.addr, align 8
  %y1 = getelementptr inbounds %struct._GimpRgnIterator, %struct._GimpRgnIterator* %5, i32 0, i32 2
  %6 = load i32, i32* %y1, align 4
  %7 = load %struct._GimpRgnIterator*, %struct._GimpRgnIterator** %iter.addr, align 8
  %x2 = getelementptr inbounds %struct._GimpRgnIterator, %struct._GimpRgnIterator* %7, i32 0, i32 3
  %8 = load i32, i32* %x2, align 4
  %9 = load %struct._GimpRgnIterator*, %struct._GimpRgnIterator** %iter.addr, align 8
  %x11 = getelementptr inbounds %struct._GimpRgnIterator, %struct._GimpRgnIterator* %9, i32 0, i32 1
  %10 = load i32, i32* %x11, align 4
  %sub = sub nsw i32 %8, %10
  %11 = load %struct._GimpRgnIterator*, %struct._GimpRgnIterator** %iter.addr, align 8
  %y2 = getelementptr inbounds %struct._GimpRgnIterator, %struct._GimpRgnIterator* %11, i32 0, i32 4
  %12 = load i32, i32* %y2, align 4
  %13 = load %struct._GimpRgnIterator*, %struct._GimpRgnIterator** %iter.addr, align 8
  %y12 = getelementptr inbounds %struct._GimpRgnIterator, %struct._GimpRgnIterator* %13, i32 0, i32 2
  %14 = load i32, i32* %y12, align 4
  %sub3 = sub nsw i32 %12, %14
  call void @gimp_pixel_rgn_init(%struct._GimpPixelRgn* %srcPR, %struct._GimpDrawable* %2, i32 %4, i32 %6, i32 %sub, i32 %sub3, i32 0, i32 0)
  %15 = load %struct._GimpRgnIterator*, %struct._GimpRgnIterator** %iter.addr, align 8
  %16 = load void (i32, i32, i8*, i32, i8*)*, void (i32, i32, i8*, i32, i8*)** %func.addr, align 8
  %17 = load i8*, i8** %data.addr, align 8
  call void @gimp_rgn_iterator_iter_single(%struct._GimpRgnIterator* %15, %struct._GimpPixelRgn* %srcPR, void (i32, i32, i8*, i32, i8*)* %16, i8* %17)
  br label %return

return:                                           ; preds = %do.end, %if.else
  ret void
}

declare void @gimp_pixel_rgn_init(%struct._GimpPixelRgn*, %struct._GimpDrawable*, i32, i32, i32, i32, i32, i32) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_rgn_iterator_iter_single(%struct._GimpRgnIterator* %iter, %struct._GimpPixelRgn* %srcPR, void (i32, i32, i8*, i32, i8*)* %func, i8* %data) #0 {
entry:
  %iter.addr = alloca %struct._GimpRgnIterator*, align 8
  %srcPR.addr = alloca %struct._GimpPixelRgn*, align 8
  %func.addr = alloca void (i32, i32, i8*, i32, i8*)*, align 8
  %data.addr = alloca i8*, align 8
  %pr = alloca i8*, align 8
  %total_area = alloca i32, align 4
  %area_so_far = alloca i32, align 4
  %count = alloca i32, align 4
  %src = alloca i8*, align 8
  %y = alloca i32, align 4
  %s = alloca i8*, align 8
  %x = alloca i32, align 4
  store %struct._GimpRgnIterator* %iter, %struct._GimpRgnIterator** %iter.addr, align 8
  store %struct._GimpPixelRgn* %srcPR, %struct._GimpPixelRgn** %srcPR.addr, align 8
  store void (i32, i32, i8*, i32, i8*)* %func, void (i32, i32, i8*, i32, i8*)** %func.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load %struct._GimpRgnIterator*, %struct._GimpRgnIterator** %iter.addr, align 8
  %x2 = getelementptr inbounds %struct._GimpRgnIterator, %struct._GimpRgnIterator* %0, i32 0, i32 3
  %1 = load i32, i32* %x2, align 4
  %2 = load %struct._GimpRgnIterator*, %struct._GimpRgnIterator** %iter.addr, align 8
  %x1 = getelementptr inbounds %struct._GimpRgnIterator, %struct._GimpRgnIterator* %2, i32 0, i32 1
  %3 = load i32, i32* %x1, align 4
  %sub = sub nsw i32 %1, %3
  %4 = load %struct._GimpRgnIterator*, %struct._GimpRgnIterator** %iter.addr, align 8
  %y2 = getelementptr inbounds %struct._GimpRgnIterator, %struct._GimpRgnIterator* %4, i32 0, i32 4
  %5 = load i32, i32* %y2, align 4
  %6 = load %struct._GimpRgnIterator*, %struct._GimpRgnIterator** %iter.addr, align 8
  %y1 = getelementptr inbounds %struct._GimpRgnIterator, %struct._GimpRgnIterator* %6, i32 0, i32 2
  %7 = load i32, i32* %y1, align 4
  %sub1 = sub nsw i32 %5, %7
  %mul = mul nsw i32 %sub, %sub1
  store i32 %mul, i32* %total_area, align 4
  store i32 0, i32* %area_so_far, align 4
  %8 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %srcPR.addr, align 8
  %call = call i8* (i32, ...) @gimp_pixel_rgns_register(i32 1, %struct._GimpPixelRgn* %8)
  store i8* %call, i8** %pr, align 8
  store i32 0, i32* %count, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.27, %entry
  %9 = load i8*, i8** %pr, align 8
  %cmp = icmp ne i8* %9, null
  br i1 %cmp, label %for.body, label %for.end.30

for.body:                                         ; preds = %for.cond
  %10 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %srcPR.addr, align 8
  %data2 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %10, i32 0, i32 0
  %11 = load i8*, i8** %data2, align 8
  store i8* %11, i8** %src, align 8
  %12 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %srcPR.addr, align 8
  %y3 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %12, i32 0, i32 5
  %13 = load i32, i32* %y3, align 4
  store i32 %13, i32* %y, align 4
  br label %for.cond.4

for.cond.4:                                       ; preds = %for.inc.17, %for.body
  %14 = load i32, i32* %y, align 4
  %15 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %srcPR.addr, align 8
  %y5 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %15, i32 0, i32 5
  %16 = load i32, i32* %y5, align 4
  %17 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %srcPR.addr, align 8
  %h = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %17, i32 0, i32 7
  %18 = load i32, i32* %h, align 4
  %add = add nsw i32 %16, %18
  %cmp6 = icmp slt i32 %14, %add
  br i1 %cmp6, label %for.body.7, label %for.end.19

for.body.7:                                       ; preds = %for.cond.4
  %19 = load i8*, i8** %src, align 8
  store i8* %19, i8** %s, align 8
  %20 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %srcPR.addr, align 8
  %x8 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %20, i32 0, i32 4
  %21 = load i32, i32* %x8, align 4
  store i32 %21, i32* %x, align 4
  br label %for.cond.9

for.cond.9:                                       ; preds = %for.inc, %for.body.7
  %22 = load i32, i32* %x, align 4
  %23 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %srcPR.addr, align 8
  %x10 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %23, i32 0, i32 4
  %24 = load i32, i32* %x10, align 4
  %25 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %srcPR.addr, align 8
  %w = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %25, i32 0, i32 6
  %26 = load i32, i32* %w, align 4
  %add11 = add nsw i32 %24, %26
  %cmp12 = icmp slt i32 %22, %add11
  br i1 %cmp12, label %for.body.13, label %for.end

for.body.13:                                      ; preds = %for.cond.9
  %27 = load void (i32, i32, i8*, i32, i8*)*, void (i32, i32, i8*, i32, i8*)** %func.addr, align 8
  %28 = load i32, i32* %x, align 4
  %29 = load i32, i32* %y, align 4
  %30 = load i8*, i8** %s, align 8
  %31 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %srcPR.addr, align 8
  %bpp = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %31, i32 0, i32 2
  %32 = load i32, i32* %bpp, align 4
  %33 = load i8*, i8** %data.addr, align 8
  call void %27(i32 %28, i32 %29, i8* %30, i32 %32, i8* %33)
  %34 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %srcPR.addr, align 8
  %bpp14 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %34, i32 0, i32 2
  %35 = load i32, i32* %bpp14, align 4
  %36 = load i8*, i8** %s, align 8
  %idx.ext = sext i32 %35 to i64
  %add.ptr = getelementptr inbounds i8, i8* %36, i64 %idx.ext
  store i8* %add.ptr, i8** %s, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body.13
  %37 = load i32, i32* %x, align 4
  %inc = add nsw i32 %37, 1
  store i32 %inc, i32* %x, align 4
  br label %for.cond.9

for.end:                                          ; preds = %for.cond.9
  %38 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %srcPR.addr, align 8
  %rowstride = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %38, i32 0, i32 3
  %39 = load i32, i32* %rowstride, align 4
  %40 = load i8*, i8** %src, align 8
  %idx.ext15 = sext i32 %39 to i64
  %add.ptr16 = getelementptr inbounds i8, i8* %40, i64 %idx.ext15
  store i8* %add.ptr16, i8** %src, align 8
  br label %for.inc.17

for.inc.17:                                       ; preds = %for.end
  %41 = load i32, i32* %y, align 4
  %inc18 = add nsw i32 %41, 1
  store i32 %inc18, i32* %y, align 4
  br label %for.cond.4

for.end.19:                                       ; preds = %for.cond.4
  %42 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %srcPR.addr, align 8
  %w20 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %42, i32 0, i32 6
  %43 = load i32, i32* %w20, align 4
  %44 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %srcPR.addr, align 8
  %h21 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %44, i32 0, i32 7
  %45 = load i32, i32* %h21, align 4
  %mul22 = mul nsw i32 %43, %45
  %46 = load i32, i32* %area_so_far, align 4
  %add23 = add nsw i32 %46, %mul22
  store i32 %add23, i32* %area_so_far, align 4
  %47 = load i32, i32* %count, align 4
  %rem = srem i32 %47, 16
  %cmp24 = icmp eq i32 %rem, 0
  br i1 %cmp24, label %if.then, label %if.end

if.then:                                          ; preds = %for.end.19
  %48 = load i32, i32* %area_so_far, align 4
  %conv = sitofp i32 %48 to double
  %49 = load i32, i32* %total_area, align 4
  %conv25 = sitofp i32 %49 to double
  %div = fdiv double %conv, %conv25
  %call26 = call i32 @gimp_progress_update(double %div)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end.19
  br label %for.inc.27

for.inc.27:                                       ; preds = %if.end
  %50 = load i8*, i8** %pr, align 8
  %call28 = call i8* @gimp_pixel_rgns_process(i8* %50)
  store i8* %call28, i8** %pr, align 8
  %51 = load i32, i32* %count, align 4
  %inc29 = add nsw i32 %51, 1
  store i32 %inc29, i32* %count, align 4
  br label %for.cond

for.end.30:                                       ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_rgn_iterator_src_dest(%struct._GimpRgnIterator* %iter, void (i32, i32, i8*, i8*, i32, i8*)* %func, i8* %data) #0 {
entry:
  %iter.addr = alloca %struct._GimpRgnIterator*, align 8
  %func.addr = alloca void (i32, i32, i8*, i8*, i32, i8*)*, align 8
  %data.addr = alloca i8*, align 8
  %srcPR = alloca %struct._GimpPixelRgn, align 8
  %destPR = alloca %struct._GimpPixelRgn, align 8
  %x1 = alloca i32, align 4
  %y1 = alloca i32, align 4
  %x2 = alloca i32, align 4
  %y2 = alloca i32, align 4
  %bpp = alloca i32, align 4
  %count = alloca i32, align 4
  %pr = alloca i8*, align 8
  %total_area = alloca i32, align 4
  %area_so_far = alloca i32, align 4
  %src = alloca i8*, align 8
  %dest = alloca i8*, align 8
  %y = alloca i32, align 4
  %s = alloca i8*, align 8
  %d = alloca i8*, align 8
  %x = alloca i32, align 4
  store %struct._GimpRgnIterator* %iter, %struct._GimpRgnIterator** %iter.addr, align 8
  store void (i32, i32, i8*, i8*, i32, i8*)* %func, void (i32, i32, i8*, i8*, i32, i8*)** %func.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpRgnIterator*, %struct._GimpRgnIterator** %iter.addr, align 8
  %cmp = icmp ne %struct._GimpRgnIterator* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.gimp_rgn_iterator_src_dest, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0))
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %1 = load %struct._GimpRgnIterator*, %struct._GimpRgnIterator** %iter.addr, align 8
  %x11 = getelementptr inbounds %struct._GimpRgnIterator, %struct._GimpRgnIterator* %1, i32 0, i32 1
  %2 = load i32, i32* %x11, align 4
  store i32 %2, i32* %x1, align 4
  %3 = load %struct._GimpRgnIterator*, %struct._GimpRgnIterator** %iter.addr, align 8
  %y12 = getelementptr inbounds %struct._GimpRgnIterator, %struct._GimpRgnIterator* %3, i32 0, i32 2
  %4 = load i32, i32* %y12, align 4
  store i32 %4, i32* %y1, align 4
  %5 = load %struct._GimpRgnIterator*, %struct._GimpRgnIterator** %iter.addr, align 8
  %x23 = getelementptr inbounds %struct._GimpRgnIterator, %struct._GimpRgnIterator* %5, i32 0, i32 3
  %6 = load i32, i32* %x23, align 4
  store i32 %6, i32* %x2, align 4
  %7 = load %struct._GimpRgnIterator*, %struct._GimpRgnIterator** %iter.addr, align 8
  %y24 = getelementptr inbounds %struct._GimpRgnIterator, %struct._GimpRgnIterator* %7, i32 0, i32 4
  %8 = load i32, i32* %y24, align 4
  store i32 %8, i32* %y2, align 4
  %9 = load i32, i32* %x2, align 4
  %10 = load i32, i32* %x1, align 4
  %sub = sub nsw i32 %9, %10
  %11 = load i32, i32* %y2, align 4
  %12 = load i32, i32* %y1, align 4
  %sub5 = sub nsw i32 %11, %12
  %mul = mul nsw i32 %sub, %sub5
  store i32 %mul, i32* %total_area, align 4
  store i32 0, i32* %area_so_far, align 4
  %13 = load %struct._GimpRgnIterator*, %struct._GimpRgnIterator** %iter.addr, align 8
  %drawable = getelementptr inbounds %struct._GimpRgnIterator, %struct._GimpRgnIterator* %13, i32 0, i32 0
  %14 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %15 = load i32, i32* %x1, align 4
  %16 = load i32, i32* %y1, align 4
  %17 = load i32, i32* %x2, align 4
  %18 = load i32, i32* %x1, align 4
  %sub6 = sub nsw i32 %17, %18
  %19 = load i32, i32* %y2, align 4
  %20 = load i32, i32* %y1, align 4
  %sub7 = sub nsw i32 %19, %20
  call void @gimp_pixel_rgn_init(%struct._GimpPixelRgn* %srcPR, %struct._GimpDrawable* %14, i32 %15, i32 %16, i32 %sub6, i32 %sub7, i32 0, i32 0)
  %21 = load %struct._GimpRgnIterator*, %struct._GimpRgnIterator** %iter.addr, align 8
  %drawable8 = getelementptr inbounds %struct._GimpRgnIterator, %struct._GimpRgnIterator* %21, i32 0, i32 0
  %22 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable8, align 8
  %23 = load i32, i32* %x1, align 4
  %24 = load i32, i32* %y1, align 4
  %25 = load i32, i32* %x2, align 4
  %26 = load i32, i32* %x1, align 4
  %sub9 = sub nsw i32 %25, %26
  %27 = load i32, i32* %y2, align 4
  %28 = load i32, i32* %y1, align 4
  %sub10 = sub nsw i32 %27, %28
  call void @gimp_pixel_rgn_init(%struct._GimpPixelRgn* %destPR, %struct._GimpDrawable* %22, i32 %23, i32 %24, i32 %sub9, i32 %sub10, i32 1, i32 1)
  %bpp11 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %srcPR, i32 0, i32 2
  %29 = load i32, i32* %bpp11, align 4
  store i32 %29, i32* %bpp, align 4
  %call = call i8* (i32, ...) @gimp_pixel_rgns_register(i32 2, %struct._GimpPixelRgn* %srcPR, %struct._GimpPixelRgn* %destPR)
  store i8* %call, i8** %pr, align 8
  store i32 0, i32* %count, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.45, %do.end
  %30 = load i8*, i8** %pr, align 8
  %cmp12 = icmp ne i8* %30, null
  br i1 %cmp12, label %for.body, label %for.end.48

for.body:                                         ; preds = %for.cond
  %data13 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %srcPR, i32 0, i32 0
  %31 = load i8*, i8** %data13, align 8
  store i8* %31, i8** %src, align 8
  %data14 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %destPR, i32 0, i32 0
  %32 = load i8*, i8** %data14, align 8
  store i8* %32, i8** %dest, align 8
  %y15 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %srcPR, i32 0, i32 5
  %33 = load i32, i32* %y15, align 4
  store i32 %33, i32* %y, align 4
  br label %for.cond.16

for.cond.16:                                      ; preds = %for.inc.33, %for.body
  %34 = load i32, i32* %y, align 4
  %y17 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %srcPR, i32 0, i32 5
  %35 = load i32, i32* %y17, align 4
  %h = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %srcPR, i32 0, i32 7
  %36 = load i32, i32* %h, align 4
  %add = add nsw i32 %35, %36
  %cmp18 = icmp slt i32 %34, %add
  br i1 %cmp18, label %for.body.19, label %for.end.35

for.body.19:                                      ; preds = %for.cond.16
  %37 = load i8*, i8** %src, align 8
  store i8* %37, i8** %s, align 8
  %38 = load i8*, i8** %dest, align 8
  store i8* %38, i8** %d, align 8
  %x20 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %srcPR, i32 0, i32 4
  %39 = load i32, i32* %x20, align 4
  store i32 %39, i32* %x, align 4
  br label %for.cond.21

for.cond.21:                                      ; preds = %for.inc, %for.body.19
  %40 = load i32, i32* %x, align 4
  %x22 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %srcPR, i32 0, i32 4
  %41 = load i32, i32* %x22, align 4
  %w = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %srcPR, i32 0, i32 6
  %42 = load i32, i32* %w, align 4
  %add23 = add nsw i32 %41, %42
  %cmp24 = icmp slt i32 %40, %add23
  br i1 %cmp24, label %for.body.25, label %for.end

for.body.25:                                      ; preds = %for.cond.21
  %43 = load void (i32, i32, i8*, i8*, i32, i8*)*, void (i32, i32, i8*, i8*, i32, i8*)** %func.addr, align 8
  %44 = load i32, i32* %x, align 4
  %45 = load i32, i32* %y, align 4
  %46 = load i8*, i8** %s, align 8
  %47 = load i8*, i8** %d, align 8
  %48 = load i32, i32* %bpp, align 4
  %49 = load i8*, i8** %data.addr, align 8
  call void %43(i32 %44, i32 %45, i8* %46, i8* %47, i32 %48, i8* %49)
  %50 = load i32, i32* %bpp, align 4
  %51 = load i8*, i8** %s, align 8
  %idx.ext = sext i32 %50 to i64
  %add.ptr = getelementptr inbounds i8, i8* %51, i64 %idx.ext
  store i8* %add.ptr, i8** %s, align 8
  %52 = load i32, i32* %bpp, align 4
  %53 = load i8*, i8** %d, align 8
  %idx.ext26 = sext i32 %52 to i64
  %add.ptr27 = getelementptr inbounds i8, i8* %53, i64 %idx.ext26
  store i8* %add.ptr27, i8** %d, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body.25
  %54 = load i32, i32* %x, align 4
  %inc = add nsw i32 %54, 1
  store i32 %inc, i32* %x, align 4
  br label %for.cond.21

for.end:                                          ; preds = %for.cond.21
  %rowstride = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %srcPR, i32 0, i32 3
  %55 = load i32, i32* %rowstride, align 4
  %56 = load i8*, i8** %src, align 8
  %idx.ext28 = sext i32 %55 to i64
  %add.ptr29 = getelementptr inbounds i8, i8* %56, i64 %idx.ext28
  store i8* %add.ptr29, i8** %src, align 8
  %rowstride30 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %destPR, i32 0, i32 3
  %57 = load i32, i32* %rowstride30, align 4
  %58 = load i8*, i8** %dest, align 8
  %idx.ext31 = sext i32 %57 to i64
  %add.ptr32 = getelementptr inbounds i8, i8* %58, i64 %idx.ext31
  store i8* %add.ptr32, i8** %dest, align 8
  br label %for.inc.33

for.inc.33:                                       ; preds = %for.end
  %59 = load i32, i32* %y, align 4
  %inc34 = add nsw i32 %59, 1
  store i32 %inc34, i32* %y, align 4
  br label %for.cond.16

for.end.35:                                       ; preds = %for.cond.16
  %w36 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %srcPR, i32 0, i32 6
  %60 = load i32, i32* %w36, align 4
  %h37 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %srcPR, i32 0, i32 7
  %61 = load i32, i32* %h37, align 4
  %mul38 = mul nsw i32 %60, %61
  %62 = load i32, i32* %area_so_far, align 4
  %add39 = add nsw i32 %62, %mul38
  store i32 %add39, i32* %area_so_far, align 4
  %63 = load i32, i32* %count, align 4
  %rem = srem i32 %63, 16
  %cmp40 = icmp eq i32 %rem, 0
  br i1 %cmp40, label %if.then.41, label %if.end.44

if.then.41:                                       ; preds = %for.end.35
  %64 = load i32, i32* %area_so_far, align 4
  %conv = sitofp i32 %64 to double
  %65 = load i32, i32* %total_area, align 4
  %conv42 = sitofp i32 %65 to double
  %div = fdiv double %conv, %conv42
  %call43 = call i32 @gimp_progress_update(double %div)
  br label %if.end.44

if.end.44:                                        ; preds = %if.then.41, %for.end.35
  br label %for.inc.45

for.inc.45:                                       ; preds = %if.end.44
  %66 = load i8*, i8** %pr, align 8
  %call46 = call i8* @gimp_pixel_rgns_process(i8* %66)
  store i8* %call46, i8** %pr, align 8
  %67 = load i32, i32* %count, align 4
  %inc47 = add nsw i32 %67, 1
  store i32 %inc47, i32* %count, align 4
  br label %for.cond

for.end.48:                                       ; preds = %for.cond
  %68 = load %struct._GimpRgnIterator*, %struct._GimpRgnIterator** %iter.addr, align 8
  %drawable49 = getelementptr inbounds %struct._GimpRgnIterator, %struct._GimpRgnIterator* %68, i32 0, i32 0
  %69 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable49, align 8
  call void @gimp_drawable_flush(%struct._GimpDrawable* %69)
  %70 = load %struct._GimpRgnIterator*, %struct._GimpRgnIterator** %iter.addr, align 8
  %drawable50 = getelementptr inbounds %struct._GimpRgnIterator, %struct._GimpRgnIterator* %70, i32 0, i32 0
  %71 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable50, align 8
  %drawable_id = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %71, i32 0, i32 0
  %72 = load i32, i32* %drawable_id, align 4
  %call51 = call i32 @gimp_drawable_merge_shadow(i32 %72, i32 1)
  %73 = load %struct._GimpRgnIterator*, %struct._GimpRgnIterator** %iter.addr, align 8
  %drawable52 = getelementptr inbounds %struct._GimpRgnIterator, %struct._GimpRgnIterator* %73, i32 0, i32 0
  %74 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable52, align 8
  %drawable_id53 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %74, i32 0, i32 0
  %75 = load i32, i32* %drawable_id53, align 4
  %76 = load i32, i32* %x1, align 4
  %77 = load i32, i32* %y1, align 4
  %78 = load i32, i32* %x2, align 4
  %79 = load i32, i32* %x1, align 4
  %sub54 = sub nsw i32 %78, %79
  %80 = load i32, i32* %y2, align 4
  %81 = load i32, i32* %y1, align 4
  %sub55 = sub nsw i32 %80, %81
  %call56 = call i32 @gimp_drawable_update(i32 %75, i32 %76, i32 %77, i32 %sub54, i32 %sub55)
  br label %return

return:                                           ; preds = %for.end.48, %if.else
  ret void
}

declare i8* @gimp_pixel_rgns_register(i32, ...) #1

declare i32 @gimp_progress_update(double) #1

declare i8* @gimp_pixel_rgns_process(i8*) #1

declare void @gimp_drawable_flush(%struct._GimpDrawable*) #1

declare i32 @gimp_drawable_merge_shadow(i32, i32) #1

declare i32 @gimp_drawable_update(i32, i32, i32, i32, i32) #1

; Function Attrs: nounwind uwtable
define void @gimp_rgn_iterator_dest(%struct._GimpRgnIterator* %iter, void (i32, i32, i8*, i32, i8*)* %func, i8* %data) #0 {
entry:
  %iter.addr = alloca %struct._GimpRgnIterator*, align 8
  %func.addr = alloca void (i32, i32, i8*, i32, i8*)*, align 8
  %data.addr = alloca i8*, align 8
  %destPR = alloca %struct._GimpPixelRgn, align 8
  store %struct._GimpRgnIterator* %iter, %struct._GimpRgnIterator** %iter.addr, align 8
  store void (i32, i32, i8*, i32, i8*)* %func, void (i32, i32, i8*, i32, i8*)** %func.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpRgnIterator*, %struct._GimpRgnIterator** %iter.addr, align 8
  %cmp = icmp ne %struct._GimpRgnIterator* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.gimp_rgn_iterator_dest, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0))
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %1 = load %struct._GimpRgnIterator*, %struct._GimpRgnIterator** %iter.addr, align 8
  %drawable = getelementptr inbounds %struct._GimpRgnIterator, %struct._GimpRgnIterator* %1, i32 0, i32 0
  %2 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %3 = load %struct._GimpRgnIterator*, %struct._GimpRgnIterator** %iter.addr, align 8
  %x1 = getelementptr inbounds %struct._GimpRgnIterator, %struct._GimpRgnIterator* %3, i32 0, i32 1
  %4 = load i32, i32* %x1, align 4
  %5 = load %struct._GimpRgnIterator*, %struct._GimpRgnIterator** %iter.addr, align 8
  %y1 = getelementptr inbounds %struct._GimpRgnIterator, %struct._GimpRgnIterator* %5, i32 0, i32 2
  %6 = load i32, i32* %y1, align 4
  %7 = load %struct._GimpRgnIterator*, %struct._GimpRgnIterator** %iter.addr, align 8
  %x2 = getelementptr inbounds %struct._GimpRgnIterator, %struct._GimpRgnIterator* %7, i32 0, i32 3
  %8 = load i32, i32* %x2, align 4
  %9 = load %struct._GimpRgnIterator*, %struct._GimpRgnIterator** %iter.addr, align 8
  %x11 = getelementptr inbounds %struct._GimpRgnIterator, %struct._GimpRgnIterator* %9, i32 0, i32 1
  %10 = load i32, i32* %x11, align 4
  %sub = sub nsw i32 %8, %10
  %11 = load %struct._GimpRgnIterator*, %struct._GimpRgnIterator** %iter.addr, align 8
  %y2 = getelementptr inbounds %struct._GimpRgnIterator, %struct._GimpRgnIterator* %11, i32 0, i32 4
  %12 = load i32, i32* %y2, align 4
  %13 = load %struct._GimpRgnIterator*, %struct._GimpRgnIterator** %iter.addr, align 8
  %y12 = getelementptr inbounds %struct._GimpRgnIterator, %struct._GimpRgnIterator* %13, i32 0, i32 2
  %14 = load i32, i32* %y12, align 4
  %sub3 = sub nsw i32 %12, %14
  call void @gimp_pixel_rgn_init(%struct._GimpPixelRgn* %destPR, %struct._GimpDrawable* %2, i32 %4, i32 %6, i32 %sub, i32 %sub3, i32 1, i32 1)
  %15 = load %struct._GimpRgnIterator*, %struct._GimpRgnIterator** %iter.addr, align 8
  %16 = load void (i32, i32, i8*, i32, i8*)*, void (i32, i32, i8*, i32, i8*)** %func.addr, align 8
  %17 = load i8*, i8** %data.addr, align 8
  call void @gimp_rgn_iterator_iter_single(%struct._GimpRgnIterator* %15, %struct._GimpPixelRgn* %destPR, void (i32, i32, i8*, i32, i8*)* %16, i8* %17)
  %18 = load %struct._GimpRgnIterator*, %struct._GimpRgnIterator** %iter.addr, align 8
  %drawable4 = getelementptr inbounds %struct._GimpRgnIterator, %struct._GimpRgnIterator* %18, i32 0, i32 0
  %19 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable4, align 8
  call void @gimp_drawable_flush(%struct._GimpDrawable* %19)
  %20 = load %struct._GimpRgnIterator*, %struct._GimpRgnIterator** %iter.addr, align 8
  %drawable5 = getelementptr inbounds %struct._GimpRgnIterator, %struct._GimpRgnIterator* %20, i32 0, i32 0
  %21 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable5, align 8
  %drawable_id = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %21, i32 0, i32 0
  %22 = load i32, i32* %drawable_id, align 4
  %call = call i32 @gimp_drawable_merge_shadow(i32 %22, i32 1)
  %23 = load %struct._GimpRgnIterator*, %struct._GimpRgnIterator** %iter.addr, align 8
  %drawable6 = getelementptr inbounds %struct._GimpRgnIterator, %struct._GimpRgnIterator* %23, i32 0, i32 0
  %24 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable6, align 8
  %drawable_id7 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %24, i32 0, i32 0
  %25 = load i32, i32* %drawable_id7, align 4
  %26 = load %struct._GimpRgnIterator*, %struct._GimpRgnIterator** %iter.addr, align 8
  %x18 = getelementptr inbounds %struct._GimpRgnIterator, %struct._GimpRgnIterator* %26, i32 0, i32 1
  %27 = load i32, i32* %x18, align 4
  %28 = load %struct._GimpRgnIterator*, %struct._GimpRgnIterator** %iter.addr, align 8
  %y19 = getelementptr inbounds %struct._GimpRgnIterator, %struct._GimpRgnIterator* %28, i32 0, i32 2
  %29 = load i32, i32* %y19, align 4
  %30 = load %struct._GimpRgnIterator*, %struct._GimpRgnIterator** %iter.addr, align 8
  %x210 = getelementptr inbounds %struct._GimpRgnIterator, %struct._GimpRgnIterator* %30, i32 0, i32 3
  %31 = load i32, i32* %x210, align 4
  %32 = load %struct._GimpRgnIterator*, %struct._GimpRgnIterator** %iter.addr, align 8
  %x111 = getelementptr inbounds %struct._GimpRgnIterator, %struct._GimpRgnIterator* %32, i32 0, i32 1
  %33 = load i32, i32* %x111, align 4
  %sub12 = sub nsw i32 %31, %33
  %34 = load %struct._GimpRgnIterator*, %struct._GimpRgnIterator** %iter.addr, align 8
  %y213 = getelementptr inbounds %struct._GimpRgnIterator, %struct._GimpRgnIterator* %34, i32 0, i32 4
  %35 = load i32, i32* %y213, align 4
  %36 = load %struct._GimpRgnIterator*, %struct._GimpRgnIterator** %iter.addr, align 8
  %y114 = getelementptr inbounds %struct._GimpRgnIterator, %struct._GimpRgnIterator* %36, i32 0, i32 2
  %37 = load i32, i32* %y114, align 4
  %sub15 = sub nsw i32 %35, %37
  %call16 = call i32 @gimp_drawable_update(i32 %25, i32 %27, i32 %29, i32 %sub12, i32 %sub15)
  br label %return

return:                                           ; preds = %do.end, %if.else
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_rgn_iterate1(%struct._GimpDrawable* %drawable, i32 %unused, void (i8*, i32, i8*)* %func, i8* %data) #0 {
entry:
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %unused.addr = alloca i32, align 4
  %func.addr = alloca void (i8*, i32, i8*)*, align 8
  %data.addr = alloca i8*, align 8
  %srcPR = alloca %struct._GimpPixelRgn, align 8
  %x1 = alloca i32, align 4
  %y1 = alloca i32, align 4
  %x2 = alloca i32, align 4
  %y2 = alloca i32, align 4
  %pr = alloca i8*, align 8
  %total_area = alloca i32, align 4
  %area_so_far = alloca i32, align 4
  %count = alloca i32, align 4
  %src = alloca i8*, align 8
  %y = alloca i32, align 4
  %s = alloca i8*, align 8
  %x = alloca i32, align 4
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  store i32 %unused, i32* %unused.addr, align 4
  store void (i8*, i32, i8*)* %func, void (i8*, i32, i8*)** %func.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %cmp = icmp ne %struct._GimpDrawable* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.gimp_rgn_iterate1, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i32 0, i32 0))
  br label %for.end.33

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %1 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %drawable_id = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %1, i32 0, i32 0
  %2 = load i32, i32* %drawable_id, align 4
  %call = call i32 @gimp_drawable_mask_bounds(i32 %2, i32* %x1, i32* %y1, i32* %x2, i32* %y2)
  %3 = load i32, i32* %x2, align 4
  %4 = load i32, i32* %x1, align 4
  %sub = sub nsw i32 %3, %4
  %5 = load i32, i32* %y2, align 4
  %6 = load i32, i32* %y1, align 4
  %sub1 = sub nsw i32 %5, %6
  %mul = mul nsw i32 %sub, %sub1
  store i32 %mul, i32* %total_area, align 4
  store i32 0, i32* %area_so_far, align 4
  %7 = load i32, i32* %total_area, align 4
  %cmp2 = icmp sle i32 %7, 0
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %do.end
  br label %for.end.33

if.end.4:                                         ; preds = %do.end
  %8 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %9 = load i32, i32* %x1, align 4
  %10 = load i32, i32* %y1, align 4
  %11 = load i32, i32* %x2, align 4
  %12 = load i32, i32* %x1, align 4
  %sub5 = sub nsw i32 %11, %12
  %13 = load i32, i32* %y2, align 4
  %14 = load i32, i32* %y1, align 4
  %sub6 = sub nsw i32 %13, %14
  call void @gimp_pixel_rgn_init(%struct._GimpPixelRgn* %srcPR, %struct._GimpDrawable* %8, i32 %9, i32 %10, i32 %sub5, i32 %sub6, i32 0, i32 0)
  %call7 = call i8* (i32, ...) @gimp_pixel_rgns_register(i32 1, %struct._GimpPixelRgn* %srcPR)
  store i8* %call7, i8** %pr, align 8
  store i32 0, i32* %count, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.30, %if.end.4
  %15 = load i8*, i8** %pr, align 8
  %cmp8 = icmp ne i8* %15, null
  br i1 %cmp8, label %for.body, label %for.end.33

for.body:                                         ; preds = %for.cond
  %data9 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %srcPR, i32 0, i32 0
  %16 = load i8*, i8** %data9, align 8
  store i8* %16, i8** %src, align 8
  store i32 0, i32* %y, align 4
  br label %for.cond.10

for.cond.10:                                      ; preds = %for.inc.19, %for.body
  %17 = load i32, i32* %y, align 4
  %h = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %srcPR, i32 0, i32 7
  %18 = load i32, i32* %h, align 4
  %cmp11 = icmp slt i32 %17, %18
  br i1 %cmp11, label %for.body.12, label %for.end.21

for.body.12:                                      ; preds = %for.cond.10
  %19 = load i8*, i8** %src, align 8
  store i8* %19, i8** %s, align 8
  store i32 0, i32* %x, align 4
  br label %for.cond.13

for.cond.13:                                      ; preds = %for.inc, %for.body.12
  %20 = load i32, i32* %x, align 4
  %w = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %srcPR, i32 0, i32 6
  %21 = load i32, i32* %w, align 4
  %cmp14 = icmp slt i32 %20, %21
  br i1 %cmp14, label %for.body.15, label %for.end

for.body.15:                                      ; preds = %for.cond.13
  %22 = load void (i8*, i32, i8*)*, void (i8*, i32, i8*)** %func.addr, align 8
  %23 = load i8*, i8** %s, align 8
  %bpp = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %srcPR, i32 0, i32 2
  %24 = load i32, i32* %bpp, align 4
  %25 = load i8*, i8** %data.addr, align 8
  call void %22(i8* %23, i32 %24, i8* %25)
  %bpp16 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %srcPR, i32 0, i32 2
  %26 = load i32, i32* %bpp16, align 4
  %27 = load i8*, i8** %s, align 8
  %idx.ext = sext i32 %26 to i64
  %add.ptr = getelementptr inbounds i8, i8* %27, i64 %idx.ext
  store i8* %add.ptr, i8** %s, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body.15
  %28 = load i32, i32* %x, align 4
  %inc = add nsw i32 %28, 1
  store i32 %inc, i32* %x, align 4
  br label %for.cond.13

for.end:                                          ; preds = %for.cond.13
  %rowstride = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %srcPR, i32 0, i32 3
  %29 = load i32, i32* %rowstride, align 4
  %30 = load i8*, i8** %src, align 8
  %idx.ext17 = sext i32 %29 to i64
  %add.ptr18 = getelementptr inbounds i8, i8* %30, i64 %idx.ext17
  store i8* %add.ptr18, i8** %src, align 8
  br label %for.inc.19

for.inc.19:                                       ; preds = %for.end
  %31 = load i32, i32* %y, align 4
  %inc20 = add nsw i32 %31, 1
  store i32 %inc20, i32* %y, align 4
  br label %for.cond.10

for.end.21:                                       ; preds = %for.cond.10
  %w22 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %srcPR, i32 0, i32 6
  %32 = load i32, i32* %w22, align 4
  %h23 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %srcPR, i32 0, i32 7
  %33 = load i32, i32* %h23, align 4
  %mul24 = mul nsw i32 %32, %33
  %34 = load i32, i32* %area_so_far, align 4
  %add = add nsw i32 %34, %mul24
  store i32 %add, i32* %area_so_far, align 4
  %35 = load i32, i32* %count, align 4
  %rem = srem i32 %35, 16
  %cmp25 = icmp eq i32 %rem, 0
  br i1 %cmp25, label %if.then.26, label %if.end.29

if.then.26:                                       ; preds = %for.end.21
  %36 = load i32, i32* %area_so_far, align 4
  %conv = sitofp i32 %36 to double
  %37 = load i32, i32* %total_area, align 4
  %conv27 = sitofp i32 %37 to double
  %div = fdiv double %conv, %conv27
  %call28 = call i32 @gimp_progress_update(double %div)
  br label %if.end.29

if.end.29:                                        ; preds = %if.then.26, %for.end.21
  br label %for.inc.30

for.inc.30:                                       ; preds = %if.end.29
  %38 = load i8*, i8** %pr, align 8
  %call31 = call i8* @gimp_pixel_rgns_process(i8* %38)
  store i8* %call31, i8** %pr, align 8
  %39 = load i32, i32* %count, align 4
  %inc32 = add nsw i32 %39, 1
  store i32 %inc32, i32* %count, align 4
  br label %for.cond

for.end.33:                                       ; preds = %if.else, %if.then.3, %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_rgn_iterate2(%struct._GimpDrawable* %drawable, i32 %unused, void (i8*, i8*, i32, i8*)* %func, i8* %data) #0 {
entry:
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %unused.addr = alloca i32, align 4
  %func.addr = alloca void (i8*, i8*, i32, i8*)*, align 8
  %data.addr = alloca i8*, align 8
  %srcPR = alloca %struct._GimpPixelRgn, align 8
  %destPR = alloca %struct._GimpPixelRgn, align 8
  %x1 = alloca i32, align 4
  %y1 = alloca i32, align 4
  %x2 = alloca i32, align 4
  %y2 = alloca i32, align 4
  %pr = alloca i8*, align 8
  %total_area = alloca i32, align 4
  %area_so_far = alloca i32, align 4
  %count = alloca i32, align 4
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  store i32 %unused, i32* %unused.addr, align 4
  store void (i8*, i8*, i32, i8*)* %func, void (i8*, i8*, i32, i8*)** %func.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %cmp = icmp ne %struct._GimpDrawable* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.gimp_rgn_iterate2, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i32 0, i32 0))
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %1 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %drawable_id = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %1, i32 0, i32 0
  %2 = load i32, i32* %drawable_id, align 4
  %call = call i32 @gimp_drawable_mask_bounds(i32 %2, i32* %x1, i32* %y1, i32* %x2, i32* %y2)
  %3 = load i32, i32* %x2, align 4
  %4 = load i32, i32* %x1, align 4
  %sub = sub nsw i32 %3, %4
  %5 = load i32, i32* %y2, align 4
  %6 = load i32, i32* %y1, align 4
  %sub1 = sub nsw i32 %5, %6
  %mul = mul nsw i32 %sub, %sub1
  store i32 %mul, i32* %total_area, align 4
  store i32 0, i32* %area_so_far, align 4
  %7 = load i32, i32* %total_area, align 4
  %cmp2 = icmp sle i32 %7, 0
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %do.end
  br label %return

if.end.4:                                         ; preds = %do.end
  %8 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %9 = load i32, i32* %x1, align 4
  %10 = load i32, i32* %y1, align 4
  %11 = load i32, i32* %x2, align 4
  %12 = load i32, i32* %x1, align 4
  %sub5 = sub nsw i32 %11, %12
  %13 = load i32, i32* %y2, align 4
  %14 = load i32, i32* %y1, align 4
  %sub6 = sub nsw i32 %13, %14
  call void @gimp_pixel_rgn_init(%struct._GimpPixelRgn* %srcPR, %struct._GimpDrawable* %8, i32 %9, i32 %10, i32 %sub5, i32 %sub6, i32 0, i32 0)
  %15 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %16 = load i32, i32* %x1, align 4
  %17 = load i32, i32* %y1, align 4
  %18 = load i32, i32* %x2, align 4
  %19 = load i32, i32* %x1, align 4
  %sub7 = sub nsw i32 %18, %19
  %20 = load i32, i32* %y2, align 4
  %21 = load i32, i32* %y1, align 4
  %sub8 = sub nsw i32 %20, %21
  call void @gimp_pixel_rgn_init(%struct._GimpPixelRgn* %destPR, %struct._GimpDrawable* %15, i32 %16, i32 %17, i32 %sub7, i32 %sub8, i32 1, i32 1)
  %call9 = call i8* (i32, ...) @gimp_pixel_rgns_register(i32 2, %struct._GimpPixelRgn* %srcPR, %struct._GimpPixelRgn* %destPR)
  store i8* %call9, i8** %pr, align 8
  store i32 0, i32* %count, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.4
  %22 = load i8*, i8** %pr, align 8
  %cmp10 = icmp ne i8* %22, null
  br i1 %cmp10, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %23 = load void (i8*, i8*, i32, i8*)*, void (i8*, i8*, i32, i8*)** %func.addr, align 8
  %24 = load i8*, i8** %data.addr, align 8
  call void @gimp_rgn_render_region(%struct._GimpPixelRgn* %srcPR, %struct._GimpPixelRgn* %destPR, void (i8*, i8*, i32, i8*)* %23, i8* %24)
  %w = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %srcPR, i32 0, i32 6
  %25 = load i32, i32* %w, align 4
  %h = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %srcPR, i32 0, i32 7
  %26 = load i32, i32* %h, align 4
  %mul11 = mul nsw i32 %25, %26
  %27 = load i32, i32* %area_so_far, align 4
  %add = add nsw i32 %27, %mul11
  store i32 %add, i32* %area_so_far, align 4
  %28 = load i32, i32* %count, align 4
  %rem = srem i32 %28, 16
  %cmp12 = icmp eq i32 %rem, 0
  br i1 %cmp12, label %if.then.13, label %if.end.16

if.then.13:                                       ; preds = %for.body
  %29 = load i32, i32* %area_so_far, align 4
  %conv = sitofp i32 %29 to double
  %30 = load i32, i32* %total_area, align 4
  %conv14 = sitofp i32 %30 to double
  %div = fdiv double %conv, %conv14
  %call15 = call i32 @gimp_progress_update(double %div)
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.13, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.16
  %31 = load i8*, i8** %pr, align 8
  %call17 = call i8* @gimp_pixel_rgns_process(i8* %31)
  store i8* %call17, i8** %pr, align 8
  %32 = load i32, i32* %count, align 4
  %inc = add nsw i32 %32, 1
  store i32 %inc, i32* %count, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %33 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  call void @gimp_drawable_flush(%struct._GimpDrawable* %33)
  %34 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %drawable_id18 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %34, i32 0, i32 0
  %35 = load i32, i32* %drawable_id18, align 4
  %call19 = call i32 @gimp_drawable_merge_shadow(i32 %35, i32 1)
  %36 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %drawable_id20 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %36, i32 0, i32 0
  %37 = load i32, i32* %drawable_id20, align 4
  %38 = load i32, i32* %x1, align 4
  %39 = load i32, i32* %y1, align 4
  %40 = load i32, i32* %x2, align 4
  %41 = load i32, i32* %x1, align 4
  %sub21 = sub nsw i32 %40, %41
  %42 = load i32, i32* %y2, align 4
  %43 = load i32, i32* %y1, align 4
  %sub22 = sub nsw i32 %42, %43
  %call23 = call i32 @gimp_drawable_update(i32 %37, i32 %38, i32 %39, i32 %sub21, i32 %sub22)
  br label %return

return:                                           ; preds = %for.end, %if.then.3, %if.else
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_rgn_render_region(%struct._GimpPixelRgn* %srcPR, %struct._GimpPixelRgn* %destPR, void (i8*, i8*, i32, i8*)* %func, i8* %data) #0 {
entry:
  %srcPR.addr = alloca %struct._GimpPixelRgn*, align 8
  %destPR.addr = alloca %struct._GimpPixelRgn*, align 8
  %func.addr = alloca void (i8*, i8*, i32, i8*)*, align 8
  %data.addr = alloca i8*, align 8
  %src = alloca i8*, align 8
  %dest = alloca i8*, align 8
  %row = alloca i32, align 4
  store %struct._GimpPixelRgn* %srcPR, %struct._GimpPixelRgn** %srcPR.addr, align 8
  store %struct._GimpPixelRgn* %destPR, %struct._GimpPixelRgn** %destPR.addr, align 8
  store void (i8*, i8*, i32, i8*)* %func, void (i8*, i8*, i32, i8*)** %func.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %srcPR.addr, align 8
  %data1 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %0, i32 0, i32 0
  %1 = load i8*, i8** %data1, align 8
  store i8* %1, i8** %src, align 8
  %2 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %destPR.addr, align 8
  %data2 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %2, i32 0, i32 0
  %3 = load i8*, i8** %data2, align 8
  store i8* %3, i8** %dest, align 8
  store i32 0, i32* %row, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i32, i32* %row, align 4
  %5 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %srcPR.addr, align 8
  %h = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %5, i32 0, i32 7
  %6 = load i32, i32* %h, align 4
  %cmp = icmp slt i32 %4, %6
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load i8*, i8** %src, align 8
  %8 = load i8*, i8** %dest, align 8
  %9 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %srcPR.addr, align 8
  %w = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %9, i32 0, i32 6
  %10 = load i32, i32* %w, align 4
  %11 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %srcPR.addr, align 8
  %bpp = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %11, i32 0, i32 2
  %12 = load i32, i32* %bpp, align 4
  %13 = load void (i8*, i8*, i32, i8*)*, void (i8*, i8*, i32, i8*)** %func.addr, align 8
  %14 = load i8*, i8** %data.addr, align 8
  call void @gimp_rgn_render_row(i8* %7, i8* %8, i32 %10, i32 %12, void (i8*, i8*, i32, i8*)* %13, i8* %14)
  %15 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %srcPR.addr, align 8
  %rowstride = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %15, i32 0, i32 3
  %16 = load i32, i32* %rowstride, align 4
  %17 = load i8*, i8** %src, align 8
  %idx.ext = sext i32 %16 to i64
  %add.ptr = getelementptr inbounds i8, i8* %17, i64 %idx.ext
  store i8* %add.ptr, i8** %src, align 8
  %18 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %destPR.addr, align 8
  %rowstride3 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %18, i32 0, i32 3
  %19 = load i32, i32* %rowstride3, align 4
  %20 = load i8*, i8** %dest, align 8
  %idx.ext4 = sext i32 %19 to i64
  %add.ptr5 = getelementptr inbounds i8, i8* %20, i64 %idx.ext4
  store i8* %add.ptr5, i8** %dest, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %21 = load i32, i32* %row, align 4
  %inc = add nsw i32 %21, 1
  store i32 %inc, i32* %row, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_rgn_render_row(i8* %src, i8* %dest, i32 %col, i32 %bpp, void (i8*, i8*, i32, i8*)* %func, i8* %data) #0 {
entry:
  %src.addr = alloca i8*, align 8
  %dest.addr = alloca i8*, align 8
  %col.addr = alloca i32, align 4
  %bpp.addr = alloca i32, align 4
  %func.addr = alloca void (i8*, i8*, i32, i8*)*, align 8
  %data.addr = alloca i8*, align 8
  store i8* %src, i8** %src.addr, align 8
  store i8* %dest, i8** %dest.addr, align 8
  store i32 %col, i32* %col.addr, align 4
  store i32 %bpp, i32* %bpp.addr, align 4
  store void (i8*, i8*, i32, i8*)* %func, void (i8*, i8*, i32, i8*)** %func.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i32, i32* %col.addr, align 4
  %dec = add nsw i32 %0, -1
  store i32 %dec, i32* %col.addr, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load void (i8*, i8*, i32, i8*)*, void (i8*, i8*, i32, i8*)** %func.addr, align 8
  %2 = load i8*, i8** %src.addr, align 8
  %3 = load i8*, i8** %dest.addr, align 8
  %4 = load i32, i32* %bpp.addr, align 4
  %5 = load i8*, i8** %data.addr, align 8
  call void %1(i8* %2, i8* %3, i32 %4, i8* %5)
  %6 = load i32, i32* %bpp.addr, align 4
  %7 = load i8*, i8** %src.addr, align 8
  %idx.ext = sext i32 %6 to i64
  %add.ptr = getelementptr inbounds i8, i8* %7, i64 %idx.ext
  store i8* %add.ptr, i8** %src.addr, align 8
  %8 = load i32, i32* %bpp.addr, align 4
  %9 = load i8*, i8** %dest.addr, align 8
  %idx.ext1 = sext i32 %8 to i64
  %add.ptr2 = getelementptr inbounds i8, i8* %9, i64 %idx.ext1
  store i8* %add.ptr2, i8** %dest.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
