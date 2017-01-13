; ModuleID = './app/core/gimppreviewcache.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GSList = type { i8*, %struct._GSList* }
%struct._TempBuf = type { i32, i32, i32, i32, i32, i8* }
%struct.PreviewNearest = type { %struct._TempBuf*, i32, i32 }

; Function Attrs: nounwind uwtable
define void @gimp_preview_cache_invalidate(%struct._GSList** %plist) #0 {
entry:
  %plist.addr = alloca %struct._GSList**, align 8
  store %struct._GSList** %plist, %struct._GSList*** %plist.addr, align 8
  %0 = load %struct._GSList**, %struct._GSList*** %plist.addr, align 8
  %1 = load %struct._GSList*, %struct._GSList** %0, align 8
  call void @g_slist_free_full(%struct._GSList* %1, void (i8*)* bitcast (void (%struct._TempBuf*)* @temp_buf_free to void (i8*)*))
  %2 = load %struct._GSList**, %struct._GSList*** %plist.addr, align 8
  store %struct._GSList* null, %struct._GSList** %2, align 8
  ret void
}

declare void @g_slist_free_full(%struct._GSList*, void (i8*)*) #1

declare void @temp_buf_free(%struct._TempBuf*) #1

; Function Attrs: nounwind uwtable
define void @gimp_preview_cache_add(%struct._GSList** %plist, %struct._TempBuf* %buf) #0 {
entry:
  %plist.addr = alloca %struct._GSList**, align 8
  %buf.addr = alloca %struct._TempBuf*, align 8
  store %struct._GSList** %plist, %struct._GSList*** %plist.addr, align 8
  store %struct._TempBuf* %buf, %struct._TempBuf** %buf.addr, align 8
  %0 = load %struct._GSList**, %struct._GSList*** %plist.addr, align 8
  %1 = load %struct._GSList*, %struct._GSList** %0, align 8
  %call = call i32 @g_slist_length(%struct._GSList* %1)
  %cmp = icmp uge i32 %call, 5
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct._GSList**, %struct._GSList*** %plist.addr, align 8
  call void @preview_cache_remove_smallest(%struct._GSList** %2)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load %struct._GSList**, %struct._GSList*** %plist.addr, align 8
  %4 = load %struct._GSList*, %struct._GSList** %3, align 8
  %5 = load %struct._TempBuf*, %struct._TempBuf** %buf.addr, align 8
  %6 = bitcast %struct._TempBuf* %5 to i8*
  %call1 = call %struct._GSList* @g_slist_insert_sorted(%struct._GSList* %4, i8* %6, i32 (i8*, i8*)* @preview_cache_compare)
  %7 = load %struct._GSList**, %struct._GSList*** %plist.addr, align 8
  store %struct._GSList* %call1, %struct._GSList** %7, align 8
  ret void
}

declare i32 @g_slist_length(%struct._GSList*) #1

; Function Attrs: nounwind uwtable
define internal void @preview_cache_remove_smallest(%struct._GSList** %plist) #0 {
entry:
  %plist.addr = alloca %struct._GSList**, align 8
  %list = alloca %struct._GSList*, align 8
  %smallest = alloca %struct._TempBuf*, align 8
  %this = alloca %struct._TempBuf*, align 8
  store %struct._GSList** %plist, %struct._GSList*** %plist.addr, align 8
  store %struct._TempBuf* null, %struct._TempBuf** %smallest, align 8
  %0 = load %struct._GSList**, %struct._GSList*** %plist.addr, align 8
  %1 = load %struct._GSList*, %struct._GSList** %0, align 8
  store %struct._GSList* %1, %struct._GSList** %list, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load %struct._GSList*, %struct._GSList** %list, align 8
  %tobool = icmp ne %struct._GSList* %2, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load %struct._TempBuf*, %struct._TempBuf** %smallest, align 8
  %tobool1 = icmp ne %struct._TempBuf* %3, null
  br i1 %tobool1, label %if.else, label %if.then

if.then:                                          ; preds = %for.body
  %4 = load %struct._GSList*, %struct._GSList** %list, align 8
  %data = getelementptr inbounds %struct._GSList, %struct._GSList* %4, i32 0, i32 0
  %5 = load i8*, i8** %data, align 8
  %6 = bitcast i8* %5 to %struct._TempBuf*
  store %struct._TempBuf* %6, %struct._TempBuf** %smallest, align 8
  br label %if.end.7

if.else:                                          ; preds = %for.body
  %7 = load %struct._GSList*, %struct._GSList** %list, align 8
  %data2 = getelementptr inbounds %struct._GSList, %struct._GSList* %7, i32 0, i32 0
  %8 = load i8*, i8** %data2, align 8
  %9 = bitcast i8* %8 to %struct._TempBuf*
  store %struct._TempBuf* %9, %struct._TempBuf** %this, align 8
  %10 = load %struct._TempBuf*, %struct._TempBuf** %smallest, align 8
  %height = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %10, i32 0, i32 2
  %11 = load i32, i32* %height, align 4
  %12 = load %struct._TempBuf*, %struct._TempBuf** %smallest, align 8
  %width = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %12, i32 0, i32 1
  %13 = load i32, i32* %width, align 4
  %mul = mul nsw i32 %11, %13
  %14 = load %struct._TempBuf*, %struct._TempBuf** %this, align 8
  %height3 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %14, i32 0, i32 2
  %15 = load i32, i32* %height3, align 4
  %16 = load %struct._TempBuf*, %struct._TempBuf** %this, align 8
  %width4 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %16, i32 0, i32 1
  %17 = load i32, i32* %width4, align 4
  %mul5 = mul nsw i32 %15, %17
  %cmp = icmp sgt i32 %mul, %mul5
  br i1 %cmp, label %if.then.6, label %if.end

if.then.6:                                        ; preds = %if.else
  %18 = load %struct._TempBuf*, %struct._TempBuf** %this, align 8
  store %struct._TempBuf* %18, %struct._TempBuf** %smallest, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.6, %if.else
  br label %if.end.7

if.end.7:                                         ; preds = %if.end, %if.then
  br label %for.inc

for.inc:                                          ; preds = %if.end.7
  %19 = load %struct._GSList*, %struct._GSList** %list, align 8
  %next = getelementptr inbounds %struct._GSList, %struct._GSList* %19, i32 0, i32 1
  %20 = load %struct._GSList*, %struct._GSList** %next, align 8
  store %struct._GSList* %20, %struct._GSList** %list, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %21 = load %struct._TempBuf*, %struct._TempBuf** %smallest, align 8
  %tobool8 = icmp ne %struct._TempBuf* %21, null
  br i1 %tobool8, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %for.end
  %22 = load %struct._GSList**, %struct._GSList*** %plist.addr, align 8
  %23 = load %struct._GSList*, %struct._GSList** %22, align 8
  %24 = load %struct._TempBuf*, %struct._TempBuf** %smallest, align 8
  %25 = bitcast %struct._TempBuf* %24 to i8*
  %call = call %struct._GSList* @g_slist_remove(%struct._GSList* %23, i8* %25)
  %26 = load %struct._GSList**, %struct._GSList*** %plist.addr, align 8
  store %struct._GSList* %call, %struct._GSList** %26, align 8
  %27 = load %struct._TempBuf*, %struct._TempBuf** %smallest, align 8
  call void @temp_buf_free(%struct._TempBuf* %27)
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.9, %for.end
  ret void
}

declare %struct._GSList* @g_slist_insert_sorted(%struct._GSList*, i8*, i32 (i8*, i8*)*) #1

; Function Attrs: nounwind uwtable
define internal i32 @preview_cache_compare(i8* %a, i8* %b) #0 {
entry:
  %retval = alloca i32, align 4
  %a.addr = alloca i8*, align 8
  %b.addr = alloca i8*, align 8
  %buf1 = alloca %struct._TempBuf*, align 8
  %buf2 = alloca %struct._TempBuf*, align 8
  store i8* %a, i8** %a.addr, align 8
  store i8* %b, i8** %b.addr, align 8
  %0 = load i8*, i8** %a.addr, align 8
  %1 = bitcast i8* %0 to %struct._TempBuf*
  store %struct._TempBuf* %1, %struct._TempBuf** %buf1, align 8
  %2 = load i8*, i8** %b.addr, align 8
  %3 = bitcast i8* %2 to %struct._TempBuf*
  store %struct._TempBuf* %3, %struct._TempBuf** %buf2, align 8
  %4 = load %struct._TempBuf*, %struct._TempBuf** %buf1, align 8
  %width = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %4, i32 0, i32 1
  %5 = load i32, i32* %width, align 4
  %6 = load %struct._TempBuf*, %struct._TempBuf** %buf2, align 8
  %width1 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %6, i32 0, i32 1
  %7 = load i32, i32* %width1, align 4
  %cmp = icmp sgt i32 %5, %7
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %8 = load %struct._TempBuf*, %struct._TempBuf** %buf1, align 8
  %height = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %8, i32 0, i32 2
  %9 = load i32, i32* %height, align 4
  %10 = load %struct._TempBuf*, %struct._TempBuf** %buf2, align 8
  %height2 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %10, i32 0, i32 2
  %11 = load i32, i32* %height2, align 4
  %cmp3 = icmp sgt i32 %9, %11
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %12 = load i32, i32* %retval
  ret i32 %12
}

; Function Attrs: nounwind uwtable
define %struct._TempBuf* @gimp_preview_cache_get(%struct._GSList** %plist, i32 %width, i32 %height) #0 {
entry:
  %retval = alloca %struct._TempBuf*, align 8
  %plist.addr = alloca %struct._GSList**, align 8
  %width.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  %pn = alloca %struct.PreviewNearest, align 8
  %preview = alloca %struct._TempBuf*, align 8
  %pwidth = alloca i32, align 4
  %pheight = alloca i32, align 4
  %x_ratio = alloca double, align 8
  %y_ratio = alloca double, align 8
  %src_data = alloca i8*, align 8
  %dest_data = alloca i8*, align 8
  %loop1 = alloca i32, align 4
  %loop2 = alloca i32, align 4
  %i = alloca i32, align 4
  %src_pixel = alloca i8*, align 8
  %dest_pixel = alloca i8*, align 8
  store %struct._GSList** %plist, %struct._GSList*** %plist.addr, align 8
  store i32 %width, i32* %width.addr, align 4
  store i32 %height, i32* %height.addr, align 4
  %buf = getelementptr inbounds %struct.PreviewNearest, %struct.PreviewNearest* %pn, i32 0, i32 0
  store %struct._TempBuf* null, %struct._TempBuf** %buf, align 8
  %0 = load i32, i32* %width.addr, align 4
  %width1 = getelementptr inbounds %struct.PreviewNearest, %struct.PreviewNearest* %pn, i32 0, i32 1
  store i32 %0, i32* %width1, align 4
  %1 = load i32, i32* %height.addr, align 4
  %height2 = getelementptr inbounds %struct.PreviewNearest, %struct.PreviewNearest* %pn, i32 0, i32 2
  store i32 %1, i32* %height2, align 4
  %2 = load %struct._GSList**, %struct._GSList*** %plist.addr, align 8
  %3 = load %struct._GSList*, %struct._GSList** %2, align 8
  %4 = bitcast %struct.PreviewNearest* %pn to i8*
  call void @g_slist_foreach(%struct._GSList* %3, void (i8*, i8*)* @preview_cache_find_exact, i8* %4)
  %buf3 = getelementptr inbounds %struct.PreviewNearest, %struct.PreviewNearest* %pn, i32 0, i32 0
  %5 = load %struct._TempBuf*, %struct._TempBuf** %buf3, align 8
  %tobool = icmp ne %struct._TempBuf* %5, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %buf4 = getelementptr inbounds %struct.PreviewNearest, %struct.PreviewNearest* %pn, i32 0, i32 0
  %6 = load %struct._TempBuf*, %struct._TempBuf** %buf4, align 8
  store %struct._TempBuf* %6, %struct._TempBuf** %retval
  br label %return

if.end:                                           ; preds = %entry
  %7 = load %struct._GSList**, %struct._GSList*** %plist.addr, align 8
  %8 = load %struct._GSList*, %struct._GSList** %7, align 8
  %9 = bitcast %struct.PreviewNearest* %pn to i8*
  call void @g_slist_foreach(%struct._GSList* %8, void (i8*, i8*)* @preview_cache_find_biggest, i8* %9)
  %buf5 = getelementptr inbounds %struct.PreviewNearest, %struct.PreviewNearest* %pn, i32 0, i32 0
  %10 = load %struct._TempBuf*, %struct._TempBuf** %buf5, align 8
  %tobool6 = icmp ne %struct._TempBuf* %10, null
  br i1 %tobool6, label %if.then.7, label %if.end.61

if.then.7:                                        ; preds = %if.end
  %buf8 = getelementptr inbounds %struct.PreviewNearest, %struct.PreviewNearest* %pn, i32 0, i32 0
  %11 = load %struct._TempBuf*, %struct._TempBuf** %buf8, align 8
  %width9 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %11, i32 0, i32 1
  %12 = load i32, i32* %width9, align 4
  store i32 %12, i32* %pwidth, align 4
  %buf10 = getelementptr inbounds %struct.PreviewNearest, %struct.PreviewNearest* %pn, i32 0, i32 0
  %13 = load %struct._TempBuf*, %struct._TempBuf** %buf10, align 8
  %height11 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %13, i32 0, i32 2
  %14 = load i32, i32* %height11, align 4
  store i32 %14, i32* %pheight, align 4
  %15 = load i32, i32* %width.addr, align 4
  %16 = load i32, i32* %height.addr, align 4
  %buf12 = getelementptr inbounds %struct.PreviewNearest, %struct.PreviewNearest* %pn, i32 0, i32 0
  %17 = load %struct._TempBuf*, %struct._TempBuf** %buf12, align 8
  %bytes = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %17, i32 0, i32 0
  %18 = load i32, i32* %bytes, align 4
  %call = call %struct._TempBuf* @temp_buf_new(i32 %15, i32 %16, i32 %18, i32 0, i32 0, i8* null)
  store %struct._TempBuf* %call, %struct._TempBuf** %preview, align 8
  %19 = load i32, i32* %width.addr, align 4
  %tobool13 = icmp ne i32 %19, 0
  br i1 %tobool13, label %if.then.14, label %if.else

if.then.14:                                       ; preds = %if.then.7
  %20 = load i32, i32* %pwidth, align 4
  %conv = sitofp i32 %20 to double
  %21 = load i32, i32* %width.addr, align 4
  %conv15 = sitofp i32 %21 to double
  %div = fdiv double %conv, %conv15
  store double %div, double* %x_ratio, align 8
  br label %if.end.16

if.else:                                          ; preds = %if.then.7
  store double 0.000000e+00, double* %x_ratio, align 8
  br label %if.end.16

if.end.16:                                        ; preds = %if.else, %if.then.14
  %22 = load i32, i32* %height.addr, align 4
  %tobool17 = icmp ne i32 %22, 0
  br i1 %tobool17, label %if.then.18, label %if.else.22

if.then.18:                                       ; preds = %if.end.16
  %23 = load i32, i32* %pheight, align 4
  %conv19 = sitofp i32 %23 to double
  %24 = load i32, i32* %height.addr, align 4
  %conv20 = sitofp i32 %24 to double
  %div21 = fdiv double %conv19, %conv20
  store double %div21, double* %y_ratio, align 8
  br label %if.end.23

if.else.22:                                       ; preds = %if.end.16
  store double 0.000000e+00, double* %y_ratio, align 8
  br label %if.end.23

if.end.23:                                        ; preds = %if.else.22, %if.then.18
  %buf24 = getelementptr inbounds %struct.PreviewNearest, %struct.PreviewNearest* %pn, i32 0, i32 0
  %25 = load %struct._TempBuf*, %struct._TempBuf** %buf24, align 8
  %call25 = call i8* @temp_buf_get_data(%struct._TempBuf* %25)
  store i8* %call25, i8** %src_data, align 8
  %26 = load %struct._TempBuf*, %struct._TempBuf** %preview, align 8
  %call26 = call i8* @temp_buf_get_data(%struct._TempBuf* %26)
  store i8* %call26, i8** %dest_data, align 8
  store i32 0, i32* %loop1, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.58, %if.end.23
  %27 = load i32, i32* %loop1, align 4
  %28 = load i32, i32* %height.addr, align 4
  %cmp = icmp slt i32 %27, %28
  br i1 %cmp, label %for.body, label %for.end.60

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %loop2, align 4
  br label %for.cond.28

for.cond.28:                                      ; preds = %for.inc.55, %for.body
  %29 = load i32, i32* %loop2, align 4
  %30 = load i32, i32* %width.addr, align 4
  %cmp29 = icmp slt i32 %29, %30
  br i1 %cmp29, label %for.body.31, label %for.end.57

for.body.31:                                      ; preds = %for.cond.28
  %31 = load i8*, i8** %src_data, align 8
  %32 = load i32, i32* %loop2, align 4
  %conv32 = sitofp i32 %32 to double
  %33 = load double, double* %x_ratio, align 8
  %mul = fmul double %conv32, %33
  %conv33 = fptosi double %mul to i32
  %34 = load %struct._TempBuf*, %struct._TempBuf** %preview, align 8
  %bytes34 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %34, i32 0, i32 0
  %35 = load i32, i32* %bytes34, align 4
  %mul35 = mul nsw i32 %conv33, %35
  %idx.ext = sext i32 %mul35 to i64
  %add.ptr = getelementptr inbounds i8, i8* %31, i64 %idx.ext
  %36 = load i32, i32* %loop1, align 4
  %conv36 = sitofp i32 %36 to double
  %37 = load double, double* %y_ratio, align 8
  %mul37 = fmul double %conv36, %37
  %conv38 = fptosi double %mul37 to i32
  %38 = load i32, i32* %pwidth, align 4
  %mul39 = mul nsw i32 %conv38, %38
  %39 = load %struct._TempBuf*, %struct._TempBuf** %preview, align 8
  %bytes40 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %39, i32 0, i32 0
  %40 = load i32, i32* %bytes40, align 4
  %mul41 = mul nsw i32 %mul39, %40
  %idx.ext42 = sext i32 %mul41 to i64
  %add.ptr43 = getelementptr inbounds i8, i8* %add.ptr, i64 %idx.ext42
  store i8* %add.ptr43, i8** %src_pixel, align 8
  %41 = load i8*, i8** %dest_data, align 8
  %42 = load i32, i32* %loop2, align 4
  %43 = load i32, i32* %loop1, align 4
  %44 = load i32, i32* %width.addr, align 4
  %mul44 = mul nsw i32 %43, %44
  %add = add nsw i32 %42, %mul44
  %45 = load %struct._TempBuf*, %struct._TempBuf** %preview, align 8
  %bytes45 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %45, i32 0, i32 0
  %46 = load i32, i32* %bytes45, align 4
  %mul46 = mul nsw i32 %add, %46
  %idx.ext47 = sext i32 %mul46 to i64
  %add.ptr48 = getelementptr inbounds i8, i8* %41, i64 %idx.ext47
  store i8* %add.ptr48, i8** %dest_pixel, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.49

for.cond.49:                                      ; preds = %for.inc, %for.body.31
  %47 = load i32, i32* %i, align 4
  %48 = load %struct._TempBuf*, %struct._TempBuf** %preview, align 8
  %bytes50 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %48, i32 0, i32 0
  %49 = load i32, i32* %bytes50, align 4
  %cmp51 = icmp slt i32 %47, %49
  br i1 %cmp51, label %for.body.53, label %for.end

for.body.53:                                      ; preds = %for.cond.49
  %50 = load i8*, i8** %src_pixel, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %50, i32 1
  store i8* %incdec.ptr, i8** %src_pixel, align 8
  %51 = load i8, i8* %50, align 1
  %52 = load i8*, i8** %dest_pixel, align 8
  %incdec.ptr54 = getelementptr inbounds i8, i8* %52, i32 1
  store i8* %incdec.ptr54, i8** %dest_pixel, align 8
  store i8 %51, i8* %52, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body.53
  %53 = load i32, i32* %i, align 4
  %inc = add nsw i32 %53, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond.49

for.end:                                          ; preds = %for.cond.49
  br label %for.inc.55

for.inc.55:                                       ; preds = %for.end
  %54 = load i32, i32* %loop2, align 4
  %inc56 = add nsw i32 %54, 1
  store i32 %inc56, i32* %loop2, align 4
  br label %for.cond.28

for.end.57:                                       ; preds = %for.cond.28
  br label %for.inc.58

for.inc.58:                                       ; preds = %for.end.57
  %55 = load i32, i32* %loop1, align 4
  %inc59 = add nsw i32 %55, 1
  store i32 %inc59, i32* %loop1, align 4
  br label %for.cond

for.end.60:                                       ; preds = %for.cond
  %56 = load %struct._GSList**, %struct._GSList*** %plist.addr, align 8
  %57 = load %struct._TempBuf*, %struct._TempBuf** %preview, align 8
  call void @gimp_preview_cache_add(%struct._GSList** %56, %struct._TempBuf* %57)
  %58 = load %struct._TempBuf*, %struct._TempBuf** %preview, align 8
  store %struct._TempBuf* %58, %struct._TempBuf** %retval
  br label %return

if.end.61:                                        ; preds = %if.end
  store %struct._TempBuf* null, %struct._TempBuf** %retval
  br label %return

return:                                           ; preds = %if.end.61, %for.end.60, %if.then
  %59 = load %struct._TempBuf*, %struct._TempBuf** %retval
  ret %struct._TempBuf* %59
}

declare void @g_slist_foreach(%struct._GSList*, void (i8*, i8*)*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @preview_cache_find_exact(i8* %data, i8* %udata) #0 {
entry:
  %data.addr = alloca i8*, align 8
  %udata.addr = alloca i8*, align 8
  %buf = alloca %struct._TempBuf*, align 8
  %nearest = alloca %struct.PreviewNearest*, align 8
  store i8* %data, i8** %data.addr, align 8
  store i8* %udata, i8** %udata.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = bitcast i8* %0 to %struct._TempBuf*
  store %struct._TempBuf* %1, %struct._TempBuf** %buf, align 8
  %2 = load i8*, i8** %udata.addr, align 8
  %3 = bitcast i8* %2 to %struct.PreviewNearest*
  store %struct.PreviewNearest* %3, %struct.PreviewNearest** %nearest, align 8
  %4 = load %struct.PreviewNearest*, %struct.PreviewNearest** %nearest, align 8
  %buf1 = getelementptr inbounds %struct.PreviewNearest, %struct.PreviewNearest* %4, i32 0, i32 0
  %5 = load %struct._TempBuf*, %struct._TempBuf** %buf1, align 8
  %tobool = icmp ne %struct._TempBuf* %5, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %if.end.7

if.end:                                           ; preds = %entry
  %6 = load %struct._TempBuf*, %struct._TempBuf** %buf, align 8
  %width = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %6, i32 0, i32 1
  %7 = load i32, i32* %width, align 4
  %8 = load %struct.PreviewNearest*, %struct.PreviewNearest** %nearest, align 8
  %width2 = getelementptr inbounds %struct.PreviewNearest, %struct.PreviewNearest* %8, i32 0, i32 1
  %9 = load i32, i32* %width2, align 4
  %cmp = icmp eq i32 %7, %9
  br i1 %cmp, label %land.lhs.true, label %if.end.7

land.lhs.true:                                    ; preds = %if.end
  %10 = load %struct._TempBuf*, %struct._TempBuf** %buf, align 8
  %height = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %10, i32 0, i32 2
  %11 = load i32, i32* %height, align 4
  %12 = load %struct.PreviewNearest*, %struct.PreviewNearest** %nearest, align 8
  %height3 = getelementptr inbounds %struct.PreviewNearest, %struct.PreviewNearest* %12, i32 0, i32 2
  %13 = load i32, i32* %height3, align 4
  %cmp4 = icmp eq i32 %11, %13
  br i1 %cmp4, label %if.then.5, label %if.end.7

if.then.5:                                        ; preds = %land.lhs.true
  %14 = load %struct._TempBuf*, %struct._TempBuf** %buf, align 8
  %15 = load %struct.PreviewNearest*, %struct.PreviewNearest** %nearest, align 8
  %buf6 = getelementptr inbounds %struct.PreviewNearest, %struct.PreviewNearest* %15, i32 0, i32 0
  store %struct._TempBuf* %14, %struct._TempBuf** %buf6, align 8
  br label %if.end.7

if.end.7:                                         ; preds = %if.then, %if.then.5, %land.lhs.true, %if.end
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @preview_cache_find_biggest(i8* %data, i8* %udata) #0 {
entry:
  %data.addr = alloca i8*, align 8
  %udata.addr = alloca i8*, align 8
  %buf = alloca %struct._TempBuf*, align 8
  %nearest = alloca %struct.PreviewNearest*, align 8
  store i8* %data, i8** %data.addr, align 8
  store i8* %udata, i8** %udata.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = bitcast i8* %0 to %struct._TempBuf*
  store %struct._TempBuf* %1, %struct._TempBuf** %buf, align 8
  %2 = load i8*, i8** %udata.addr, align 8
  %3 = bitcast i8* %2 to %struct.PreviewNearest*
  store %struct.PreviewNearest* %3, %struct.PreviewNearest** %nearest, align 8
  %4 = load %struct._TempBuf*, %struct._TempBuf** %buf, align 8
  %width = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %4, i32 0, i32 1
  %5 = load i32, i32* %width, align 4
  %6 = load %struct.PreviewNearest*, %struct.PreviewNearest** %nearest, align 8
  %width1 = getelementptr inbounds %struct.PreviewNearest, %struct.PreviewNearest* %6, i32 0, i32 1
  %7 = load i32, i32* %width1, align 4
  %cmp = icmp sge i32 %5, %7
  br i1 %cmp, label %land.lhs.true, label %if.end.18

land.lhs.true:                                    ; preds = %entry
  %8 = load %struct._TempBuf*, %struct._TempBuf** %buf, align 8
  %height = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %8, i32 0, i32 2
  %9 = load i32, i32* %height, align 4
  %10 = load %struct.PreviewNearest*, %struct.PreviewNearest** %nearest, align 8
  %height2 = getelementptr inbounds %struct.PreviewNearest, %struct.PreviewNearest* %10, i32 0, i32 2
  %11 = load i32, i32* %height2, align 4
  %cmp3 = icmp sge i32 %9, %11
  br i1 %cmp3, label %if.then, label %if.end.18

if.then:                                          ; preds = %land.lhs.true
  %12 = load %struct.PreviewNearest*, %struct.PreviewNearest** %nearest, align 8
  %buf4 = getelementptr inbounds %struct.PreviewNearest, %struct.PreviewNearest* %12, i32 0, i32 0
  %13 = load %struct._TempBuf*, %struct._TempBuf** %buf4, align 8
  %tobool = icmp ne %struct._TempBuf* %13, null
  br i1 %tobool, label %if.then.5, label %if.end.16

if.then.5:                                        ; preds = %if.then
  %14 = load %struct.PreviewNearest*, %struct.PreviewNearest** %nearest, align 8
  %buf6 = getelementptr inbounds %struct.PreviewNearest, %struct.PreviewNearest* %14, i32 0, i32 0
  %15 = load %struct._TempBuf*, %struct._TempBuf** %buf6, align 8
  %width7 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %15, i32 0, i32 1
  %16 = load i32, i32* %width7, align 4
  %17 = load %struct._TempBuf*, %struct._TempBuf** %buf, align 8
  %width8 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %17, i32 0, i32 1
  %18 = load i32, i32* %width8, align 4
  %cmp9 = icmp sgt i32 %16, %18
  br i1 %cmp9, label %land.lhs.true.10, label %if.end

land.lhs.true.10:                                 ; preds = %if.then.5
  %19 = load %struct.PreviewNearest*, %struct.PreviewNearest** %nearest, align 8
  %buf11 = getelementptr inbounds %struct.PreviewNearest, %struct.PreviewNearest* %19, i32 0, i32 0
  %20 = load %struct._TempBuf*, %struct._TempBuf** %buf11, align 8
  %height12 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %20, i32 0, i32 2
  %21 = load i32, i32* %height12, align 4
  %22 = load %struct._TempBuf*, %struct._TempBuf** %buf, align 8
  %height13 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %22, i32 0, i32 2
  %23 = load i32, i32* %height13, align 4
  %cmp14 = icmp sgt i32 %21, %23
  br i1 %cmp14, label %if.then.15, label %if.end

if.then.15:                                       ; preds = %land.lhs.true.10
  br label %if.end.18

if.end:                                           ; preds = %land.lhs.true.10, %if.then.5
  br label %if.end.16

if.end.16:                                        ; preds = %if.end, %if.then
  %24 = load %struct._TempBuf*, %struct._TempBuf** %buf, align 8
  %25 = load %struct.PreviewNearest*, %struct.PreviewNearest** %nearest, align 8
  %buf17 = getelementptr inbounds %struct.PreviewNearest, %struct.PreviewNearest* %25, i32 0, i32 0
  store %struct._TempBuf* %24, %struct._TempBuf** %buf17, align 8
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.15, %if.end.16, %land.lhs.true, %entry
  ret void
}

declare %struct._TempBuf* @temp_buf_new(i32, i32, i32, i32, i32, i8*) #1

declare i8* @temp_buf_get_data(%struct._TempBuf*) #1

; Function Attrs: nounwind uwtable
define i64 @gimp_preview_cache_get_memsize(%struct._GSList* %cache) #0 {
entry:
  %retval = alloca i64, align 8
  %cache.addr = alloca %struct._GSList*, align 8
  %list = alloca %struct._GSList*, align 8
  %memsize = alloca i64, align 8
  store %struct._GSList* %cache, %struct._GSList** %cache.addr, align 8
  store i64 0, i64* %memsize, align 8
  %0 = load %struct._GSList*, %struct._GSList** %cache.addr, align 8
  %tobool = icmp ne %struct._GSList* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i64 0, i64* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._GSList*, %struct._GSList** %cache.addr, align 8
  store %struct._GSList* %1, %struct._GSList** %list, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %2 = load %struct._GSList*, %struct._GSList** %list, align 8
  %tobool1 = icmp ne %struct._GSList* %2, null
  br i1 %tobool1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load %struct._GSList*, %struct._GSList** %list, align 8
  %data = getelementptr inbounds %struct._GSList, %struct._GSList* %3, i32 0, i32 0
  %4 = load i8*, i8** %data, align 8
  %5 = bitcast i8* %4 to %struct._TempBuf*
  %call = call i64 @temp_buf_get_memsize(%struct._TempBuf* %5)
  %add = add i64 16, %call
  %6 = load i64, i64* %memsize, align 8
  %add2 = add i64 %6, %add
  store i64 %add2, i64* %memsize, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load %struct._GSList*, %struct._GSList** %list, align 8
  %next = getelementptr inbounds %struct._GSList, %struct._GSList* %7, i32 0, i32 1
  %8 = load %struct._GSList*, %struct._GSList** %next, align 8
  store %struct._GSList* %8, %struct._GSList** %list, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %9 = load i64, i64* %memsize, align 8
  store i64 %9, i64* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then
  %10 = load i64, i64* %retval
  ret i64 %10
}

declare i64 @temp_buf_get_memsize(%struct._TempBuf*) #1

declare %struct._GSList* @g_slist_remove(%struct._GSList*, i8*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
