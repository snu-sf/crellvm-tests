; ModuleID = './app/base/temp-buf.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._TempBuf = type { i32, i32, i32, i32, i32, i8* }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct._PixelRegion = type { i8*, %struct._TileManager*, %struct._Tile*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._TileManager = type opaque
%struct._Tile = type opaque

@.str = private unnamed_addr constant [10 x i8] c"Gimp-Base\00", align 1
@__func__.temp_buf_new = private unnamed_addr constant [13 x i8] c"temp_buf_new\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"width > 0 && height > 0\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"bytes > 0\00", align 1
@__func__.temp_buf_copy = private unnamed_addr constant [14 x i8] c"temp_buf_copy\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"src != NULL\00", align 1
@.str.4 = private unnamed_addr constant [69 x i8] c"! dest || (dest->width == src->width && dest->height == src->height)\00", align 1
@.str.5 = private unnamed_addr constant [48 x i8] c"temp_buf_copy(): unimplemented color conversion\00", align 1
@__func__.temp_buf_resize = private unnamed_addr constant [16 x i8] c"temp_buf_resize\00", align 1
@__func__.temp_buf_scale = private unnamed_addr constant [15 x i8] c"temp_buf_scale\00", align 1
@.str.6 = private unnamed_addr constant [32 x i8] c"new_width > 0 && new_height > 0\00", align 1
@__func__.temp_buf_copy_area = private unnamed_addr constant [19 x i8] c"temp_buf_copy_area\00", align 1
@.str.7 = private unnamed_addr constant [35 x i8] c"!dest || dest->bytes == src->bytes\00", align 1
@.str.8 = private unnamed_addr constant [19 x i8] c"width + dest_x > 0\00", align 1
@.str.9 = private unnamed_addr constant [20 x i8] c"height + dest_y > 0\00", align 1
@.str.10 = private unnamed_addr constant [39 x i8] c"!dest || dest->width >= width + dest_x\00", align 1
@.str.11 = private unnamed_addr constant [41 x i8] c"!dest || dest->height >= height + dest_y\00", align 1
@__func__.temp_buf_demultiply = private unnamed_addr constant [20 x i8] c"temp_buf_demultiply\00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c"buf != NULL\00", align 1
@.str.13 = private unnamed_addr constant [45 x i8] c"file %s: line %d (%s): should not be reached\00", align 1
@.str.14 = private unnamed_addr constant [11 x i8] c"temp-buf.c\00", align 1
@__func__.temp_buf_free = private unnamed_addr constant [14 x i8] c"temp_buf_free\00", align 1
@__func__.temp_buf_dump = private unnamed_addr constant [14 x i8] c"temp_buf_dump\00", align 1
@.str.15 = private unnamed_addr constant [9 x i8] c"fd != -1\00", align 1
@.str.16 = private unnamed_addr constant [32 x i8] c"temp_buf_get_data (buf) != NULL\00", align 1
@__func__.temp_buf_to_color = private unnamed_addr constant [18 x i8] c"temp_buf_to_color\00", align 1
@.str.17 = private unnamed_addr constant [20 x i8] c"src_buf->bytes == 1\00", align 1
@.str.18 = private unnamed_addr constant [20 x i8] c"src_buf->bytes == 2\00", align 1
@__func__.temp_buf_to_gray = private unnamed_addr constant [17 x i8] c"temp_buf_to_gray\00", align 1
@.str.19 = private unnamed_addr constant [20 x i8] c"src_buf->bytes == 3\00", align 1
@.str.20 = private unnamed_addr constant [20 x i8] c"src_buf->bytes == 4\00", align 1

; Function Attrs: nounwind uwtable
define %struct._TempBuf* @temp_buf_new(i32 %width, i32 %height, i32 %bytes, i32 %x, i32 %y, i8* %color) #0 {
entry:
  %retval = alloca %struct._TempBuf*, align 8
  %width.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  %bytes.addr = alloca i32, align 4
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %color.addr = alloca i8*, align 8
  %temp = alloca %struct._TempBuf*, align 8
  %i = alloca i64, align 8
  %dptr = alloca i8*, align 8
  %c = alloca i8*, align 8
  %j = alloca i32, align 4
  store i32 %width, i32* %width.addr, align 4
  store i32 %height, i32* %height.addr, align 4
  store i32 %bytes, i32* %bytes.addr, align 4
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  store i8* %color, i8** %color.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load i32, i32* %width.addr, align 4
  %cmp = icmp sgt i32 %0, 0
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %do.body
  %1 = load i32, i32* %height.addr, align 4
  %cmp1 = icmp sgt i32 %1, 0
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.temp_buf_new, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i32 0, i32 0))
  store %struct._TempBuf* null, %struct._TempBuf** %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %do.body.2

do.body.2:                                        ; preds = %do.end
  %2 = load i32, i32* %bytes.addr, align 4
  %cmp3 = icmp sgt i32 %2, 0
  br i1 %cmp3, label %if.then.4, label %if.else.5

if.then.4:                                        ; preds = %do.body.2
  br label %if.end.6

if.else.5:                                        ; preds = %do.body.2
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.temp_buf_new, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0))
  store %struct._TempBuf* null, %struct._TempBuf** %retval
  br label %return

if.end.6:                                         ; preds = %if.then.4
  br label %do.end.7

do.end.7:                                         ; preds = %if.end.6
  %call = call noalias i8* @g_slice_alloc(i64 32)
  %3 = bitcast i8* %call to %struct._TempBuf*
  store %struct._TempBuf* %3, %struct._TempBuf** %temp, align 8
  %4 = load i32, i32* %bytes.addr, align 4
  %5 = load %struct._TempBuf*, %struct._TempBuf** %temp, align 8
  %bytes8 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %5, i32 0, i32 0
  store i32 %4, i32* %bytes8, align 4
  %6 = load i32, i32* %width.addr, align 4
  %7 = load %struct._TempBuf*, %struct._TempBuf** %temp, align 8
  %width9 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %7, i32 0, i32 1
  store i32 %6, i32* %width9, align 4
  %8 = load i32, i32* %height.addr, align 4
  %9 = load %struct._TempBuf*, %struct._TempBuf** %temp, align 8
  %height10 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %9, i32 0, i32 2
  store i32 %8, i32* %height10, align 4
  %10 = load i32, i32* %x.addr, align 4
  %11 = load %struct._TempBuf*, %struct._TempBuf** %temp, align 8
  %x11 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %11, i32 0, i32 3
  store i32 %10, i32* %x11, align 4
  %12 = load i32, i32* %y.addr, align 4
  %13 = load %struct._TempBuf*, %struct._TempBuf** %temp, align 8
  %y12 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %13, i32 0, i32 4
  store i32 %12, i32* %y12, align 4
  %14 = load i32, i32* %width.addr, align 4
  %15 = load i32, i32* %height.addr, align 4
  %mul = mul nsw i32 %14, %15
  %16 = load i32, i32* %bytes.addr, align 4
  %mul13 = mul nsw i32 %mul, %16
  %conv = sext i32 %mul13 to i64
  %call14 = call noalias i8* @g_malloc_n(i64 %conv, i64 1)
  %17 = load %struct._TempBuf*, %struct._TempBuf** %temp, align 8
  %data = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %17, i32 0, i32 5
  store i8* %call14, i8** %data, align 8
  %18 = load i8*, i8** %color.addr, align 8
  %tobool = icmp ne i8* %18, null
  br i1 %tobool, label %if.then.15, label %if.end.56

if.then.15:                                       ; preds = %do.end.7
  store i64 1, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.15
  %19 = load i64, i64* %i, align 8
  %20 = load i32, i32* %bytes.addr, align 4
  %conv16 = sext i32 %20 to i64
  %cmp17 = icmp slt i64 %19, %conv16
  br i1 %cmp17, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %21 = load i8*, i8** %color.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %21, i64 0
  %22 = load i8, i8* %arrayidx, align 1
  %conv19 = zext i8 %22 to i32
  %23 = load i64, i64* %i, align 8
  %24 = load i8*, i8** %color.addr, align 8
  %arrayidx20 = getelementptr inbounds i8, i8* %24, i64 %23
  %25 = load i8, i8* %arrayidx20, align 1
  %conv21 = zext i8 %25 to i32
  %cmp22 = icmp ne i32 %conv19, %conv21
  br i1 %cmp22, label %if.then.24, label %if.end.25

if.then.24:                                       ; preds = %for.body
  br label %for.end

if.end.25:                                        ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.25
  %26 = load i64, i64* %i, align 8
  %inc = add nsw i64 %26, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %if.then.24, %for.cond
  %27 = load i64, i64* %i, align 8
  %28 = load i32, i32* %bytes.addr, align 4
  %conv26 = sext i32 %28 to i64
  %cmp27 = icmp eq i64 %27, %conv26
  br i1 %cmp27, label %if.then.29, label %if.else.35

if.then.29:                                       ; preds = %for.end
  %29 = load %struct._TempBuf*, %struct._TempBuf** %temp, align 8
  %data30 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %29, i32 0, i32 5
  %30 = load i8*, i8** %data30, align 8
  %31 = load i8*, i8** %color.addr, align 8
  %32 = load i8, i8* %31, align 1
  %conv31 = zext i8 %32 to i32
  %33 = trunc i32 %conv31 to i8
  %34 = load i32, i32* %width.addr, align 4
  %35 = load i32, i32* %height.addr, align 4
  %mul32 = mul nsw i32 %34, %35
  %36 = load i32, i32* %bytes.addr, align 4
  %mul33 = mul nsw i32 %mul32, %36
  %conv34 = sext i32 %mul33 to i64
  call void @llvm.memset.p0i8.i64(i8* %30, i8 %33, i64 %conv34, i32 1, i1 false)
  br label %if.end.55

if.else.35:                                       ; preds = %for.end
  %37 = load %struct._TempBuf*, %struct._TempBuf** %temp, align 8
  %data36 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %37, i32 0, i32 5
  %38 = load i8*, i8** %data36, align 8
  store i8* %38, i8** %dptr, align 8
  %39 = load i32, i32* %width.addr, align 4
  %sub = sub nsw i32 %39, 1
  %conv37 = sext i32 %sub to i64
  store i64 %conv37, i64* %i, align 8
  br label %for.cond.38

for.cond.38:                                      ; preds = %for.inc.44, %if.else.35
  %40 = load i64, i64* %i, align 8
  %cmp39 = icmp sge i64 %40, 0
  br i1 %cmp39, label %for.body.41, label %for.end.46

for.body.41:                                      ; preds = %for.cond.38
  %41 = load i8*, i8** %color.addr, align 8
  store i8* %41, i8** %c, align 8
  %42 = load i32, i32* %bytes.addr, align 4
  store i32 %42, i32* %j, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %for.body.41
  %43 = load i32, i32* %j, align 4
  %dec = add nsw i32 %43, -1
  store i32 %dec, i32* %j, align 4
  %tobool42 = icmp ne i32 %43, 0
  br i1 %tobool42, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %44 = load i8*, i8** %c, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %44, i32 1
  store i8* %incdec.ptr, i8** %c, align 8
  %45 = load i8, i8* %44, align 1
  %46 = load i8*, i8** %dptr, align 8
  %incdec.ptr43 = getelementptr inbounds i8, i8* %46, i32 1
  store i8* %incdec.ptr43, i8** %dptr, align 8
  store i8 %45, i8* %46, align 1
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %for.inc.44

for.inc.44:                                       ; preds = %while.end
  %47 = load i64, i64* %i, align 8
  %dec45 = add nsw i64 %47, -1
  store i64 %dec45, i64* %i, align 8
  br label %for.cond.38

for.end.46:                                       ; preds = %for.cond.38
  %48 = load i32, i32* %width.addr, align 4
  %49 = load i32, i32* %bytes.addr, align 4
  %mul47 = mul nsw i32 %49, %48
  store i32 %mul47, i32* %bytes.addr, align 4
  br label %while.cond.48

while.cond.48:                                    ; preds = %while.body.51, %for.end.46
  %50 = load i32, i32* %height.addr, align 4
  %dec49 = add nsw i32 %50, -1
  store i32 %dec49, i32* %height.addr, align 4
  %tobool50 = icmp ne i32 %dec49, 0
  br i1 %tobool50, label %while.body.51, label %while.end.54

while.body.51:                                    ; preds = %while.cond.48
  %51 = load i8*, i8** %dptr, align 8
  %52 = load %struct._TempBuf*, %struct._TempBuf** %temp, align 8
  %data52 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %52, i32 0, i32 5
  %53 = load i8*, i8** %data52, align 8
  %54 = load i32, i32* %bytes.addr, align 4
  %conv53 = sext i32 %54 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %51, i8* %53, i64 %conv53, i32 1, i1 false)
  %55 = load i32, i32* %bytes.addr, align 4
  %56 = load i8*, i8** %dptr, align 8
  %idx.ext = sext i32 %55 to i64
  %add.ptr = getelementptr inbounds i8, i8* %56, i64 %idx.ext
  store i8* %add.ptr, i8** %dptr, align 8
  br label %while.cond.48

while.end.54:                                     ; preds = %while.cond.48
  br label %if.end.55

if.end.55:                                        ; preds = %while.end.54, %if.then.29
  br label %if.end.56

if.end.56:                                        ; preds = %if.end.55, %do.end.7
  %57 = load %struct._TempBuf*, %struct._TempBuf** %temp, align 8
  store %struct._TempBuf* %57, %struct._TempBuf** %retval
  br label %return

return:                                           ; preds = %if.end.56, %if.else.5, %if.else
  %58 = load %struct._TempBuf*, %struct._TempBuf** %retval
  ret %struct._TempBuf* %58
}

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

declare noalias i8* @g_slice_alloc(i64) #1

declare noalias i8* @g_malloc_n(i64, i64) #1

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #2

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #2

; Function Attrs: nounwind uwtable
define %struct._TempBuf* @temp_buf_copy(%struct._TempBuf* %src, %struct._TempBuf* %dest) #0 {
entry:
  %retval = alloca %struct._TempBuf*, align 8
  %src.addr = alloca %struct._TempBuf*, align 8
  %dest.addr = alloca %struct._TempBuf*, align 8
  store %struct._TempBuf* %src, %struct._TempBuf** %src.addr, align 8
  store %struct._TempBuf* %dest, %struct._TempBuf** %dest.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._TempBuf*, %struct._TempBuf** %src.addr, align 8
  %cmp = icmp ne %struct._TempBuf* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.temp_buf_copy, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i32 0, i32 0))
  store %struct._TempBuf* null, %struct._TempBuf** %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %do.body.1

do.body.1:                                        ; preds = %do.end
  %1 = load %struct._TempBuf*, %struct._TempBuf** %dest.addr, align 8
  %tobool = icmp ne %struct._TempBuf* %1, null
  br i1 %tobool, label %lor.lhs.false, label %if.then.6

lor.lhs.false:                                    ; preds = %do.body.1
  %2 = load %struct._TempBuf*, %struct._TempBuf** %dest.addr, align 8
  %width = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %2, i32 0, i32 1
  %3 = load i32, i32* %width, align 4
  %4 = load %struct._TempBuf*, %struct._TempBuf** %src.addr, align 8
  %width2 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %4, i32 0, i32 1
  %5 = load i32, i32* %width2, align 4
  %cmp3 = icmp eq i32 %3, %5
  br i1 %cmp3, label %land.lhs.true, label %if.else.7

land.lhs.true:                                    ; preds = %lor.lhs.false
  %6 = load %struct._TempBuf*, %struct._TempBuf** %dest.addr, align 8
  %height = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %6, i32 0, i32 2
  %7 = load i32, i32* %height, align 4
  %8 = load %struct._TempBuf*, %struct._TempBuf** %src.addr, align 8
  %height4 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %8, i32 0, i32 2
  %9 = load i32, i32* %height4, align 4
  %cmp5 = icmp eq i32 %7, %9
  br i1 %cmp5, label %if.then.6, label %if.else.7

if.then.6:                                        ; preds = %land.lhs.true, %do.body.1
  br label %if.end.8

if.else.7:                                        ; preds = %land.lhs.true, %lor.lhs.false
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.temp_buf_copy, i32 0, i32 0), i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.4, i32 0, i32 0))
  store %struct._TempBuf* null, %struct._TempBuf** %retval
  br label %return

if.end.8:                                         ; preds = %if.then.6
  br label %do.end.9

do.end.9:                                         ; preds = %if.end.8
  %10 = load %struct._TempBuf*, %struct._TempBuf** %dest.addr, align 8
  %tobool10 = icmp ne %struct._TempBuf* %10, null
  br i1 %tobool10, label %if.end.14, label %if.then.11

if.then.11:                                       ; preds = %do.end.9
  %11 = load %struct._TempBuf*, %struct._TempBuf** %src.addr, align 8
  %width12 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %11, i32 0, i32 1
  %12 = load i32, i32* %width12, align 4
  %13 = load %struct._TempBuf*, %struct._TempBuf** %src.addr, align 8
  %height13 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %13, i32 0, i32 2
  %14 = load i32, i32* %height13, align 4
  %15 = load %struct._TempBuf*, %struct._TempBuf** %src.addr, align 8
  %bytes = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %15, i32 0, i32 0
  %16 = load i32, i32* %bytes, align 4
  %call = call %struct._TempBuf* @temp_buf_new(i32 %12, i32 %14, i32 %16, i32 0, i32 0, i8* null)
  store %struct._TempBuf* %call, %struct._TempBuf** %dest.addr, align 8
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.11, %do.end.9
  %17 = load %struct._TempBuf*, %struct._TempBuf** %dest.addr, align 8
  %tobool15 = icmp ne %struct._TempBuf* %17, null
  br i1 %tobool15, label %if.end.17, label %if.then.16

if.then.16:                                       ; preds = %if.end.14
  store %struct._TempBuf* null, %struct._TempBuf** %retval
  br label %return

if.end.17:                                        ; preds = %if.end.14
  %18 = load %struct._TempBuf*, %struct._TempBuf** %src.addr, align 8
  %bytes18 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %18, i32 0, i32 0
  %19 = load i32, i32* %bytes18, align 4
  %20 = load %struct._TempBuf*, %struct._TempBuf** %dest.addr, align 8
  %bytes19 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %20, i32 0, i32 0
  %21 = load i32, i32* %bytes19, align 4
  %cmp20 = icmp ne i32 %19, %21
  br i1 %cmp20, label %if.then.21, label %if.else.54

if.then.21:                                       ; preds = %if.end.17
  %22 = load %struct._TempBuf*, %struct._TempBuf** %src.addr, align 8
  %bytes22 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %22, i32 0, i32 0
  %23 = load i32, i32* %bytes22, align 4
  %cmp23 = icmp eq i32 %23, 4
  br i1 %cmp23, label %land.lhs.true.24, label %if.else.28

land.lhs.true.24:                                 ; preds = %if.then.21
  %24 = load %struct._TempBuf*, %struct._TempBuf** %dest.addr, align 8
  %bytes25 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %24, i32 0, i32 0
  %25 = load i32, i32* %bytes25, align 4
  %cmp26 = icmp eq i32 %25, 2
  br i1 %cmp26, label %if.then.27, label %if.else.28

if.then.27:                                       ; preds = %land.lhs.true.24
  %26 = load %struct._TempBuf*, %struct._TempBuf** %src.addr, align 8
  %27 = load %struct._TempBuf*, %struct._TempBuf** %dest.addr, align 8
  call void @temp_buf_to_gray(%struct._TempBuf* %26, %struct._TempBuf* %27)
  br label %if.end.53

if.else.28:                                       ; preds = %land.lhs.true.24, %if.then.21
  %28 = load %struct._TempBuf*, %struct._TempBuf** %src.addr, align 8
  %bytes29 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %28, i32 0, i32 0
  %29 = load i32, i32* %bytes29, align 4
  %cmp30 = icmp eq i32 %29, 3
  br i1 %cmp30, label %land.lhs.true.31, label %if.else.35

land.lhs.true.31:                                 ; preds = %if.else.28
  %30 = load %struct._TempBuf*, %struct._TempBuf** %dest.addr, align 8
  %bytes32 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %30, i32 0, i32 0
  %31 = load i32, i32* %bytes32, align 4
  %cmp33 = icmp eq i32 %31, 1
  br i1 %cmp33, label %if.then.34, label %if.else.35

if.then.34:                                       ; preds = %land.lhs.true.31
  %32 = load %struct._TempBuf*, %struct._TempBuf** %src.addr, align 8
  %33 = load %struct._TempBuf*, %struct._TempBuf** %dest.addr, align 8
  call void @temp_buf_to_gray(%struct._TempBuf* %32, %struct._TempBuf* %33)
  br label %if.end.52

if.else.35:                                       ; preds = %land.lhs.true.31, %if.else.28
  %34 = load %struct._TempBuf*, %struct._TempBuf** %src.addr, align 8
  %bytes36 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %34, i32 0, i32 0
  %35 = load i32, i32* %bytes36, align 4
  %cmp37 = icmp eq i32 %35, 2
  br i1 %cmp37, label %land.lhs.true.38, label %if.else.42

land.lhs.true.38:                                 ; preds = %if.else.35
  %36 = load %struct._TempBuf*, %struct._TempBuf** %dest.addr, align 8
  %bytes39 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %36, i32 0, i32 0
  %37 = load i32, i32* %bytes39, align 4
  %cmp40 = icmp eq i32 %37, 4
  br i1 %cmp40, label %if.then.41, label %if.else.42

if.then.41:                                       ; preds = %land.lhs.true.38
  %38 = load %struct._TempBuf*, %struct._TempBuf** %src.addr, align 8
  %39 = load %struct._TempBuf*, %struct._TempBuf** %dest.addr, align 8
  call void @temp_buf_to_color(%struct._TempBuf* %38, %struct._TempBuf* %39)
  br label %if.end.51

if.else.42:                                       ; preds = %land.lhs.true.38, %if.else.35
  %40 = load %struct._TempBuf*, %struct._TempBuf** %src.addr, align 8
  %bytes43 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %40, i32 0, i32 0
  %41 = load i32, i32* %bytes43, align 4
  %cmp44 = icmp eq i32 %41, 1
  br i1 %cmp44, label %land.lhs.true.45, label %if.else.49

land.lhs.true.45:                                 ; preds = %if.else.42
  %42 = load %struct._TempBuf*, %struct._TempBuf** %dest.addr, align 8
  %bytes46 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %42, i32 0, i32 0
  %43 = load i32, i32* %bytes46, align 4
  %cmp47 = icmp eq i32 %43, 3
  br i1 %cmp47, label %if.then.48, label %if.else.49

if.then.48:                                       ; preds = %land.lhs.true.45
  %44 = load %struct._TempBuf*, %struct._TempBuf** %src.addr, align 8
  %45 = load %struct._TempBuf*, %struct._TempBuf** %dest.addr, align 8
  call void @temp_buf_to_color(%struct._TempBuf* %44, %struct._TempBuf* %45)
  br label %if.end.50

if.else.49:                                       ; preds = %land.lhs.true.45, %if.else.42
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.5, i32 0, i32 0))
  br label %if.end.50

if.end.50:                                        ; preds = %if.else.49, %if.then.48
  br label %if.end.51

if.end.51:                                        ; preds = %if.end.50, %if.then.41
  br label %if.end.52

if.end.52:                                        ; preds = %if.end.51, %if.then.34
  br label %if.end.53

if.end.53:                                        ; preds = %if.end.52, %if.then.27
  br label %if.end.58

if.else.54:                                       ; preds = %if.end.17
  %46 = load %struct._TempBuf*, %struct._TempBuf** %dest.addr, align 8
  %call55 = call i8* @temp_buf_get_data(%struct._TempBuf* %46)
  %47 = load %struct._TempBuf*, %struct._TempBuf** %src.addr, align 8
  %call56 = call i8* @temp_buf_get_data(%struct._TempBuf* %47)
  %48 = load %struct._TempBuf*, %struct._TempBuf** %src.addr, align 8
  %call57 = call i64 @temp_buf_get_data_size(%struct._TempBuf* %48)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %call55, i8* %call56, i64 %call57, i32 1, i1 false)
  br label %if.end.58

if.end.58:                                        ; preds = %if.else.54, %if.end.53
  %49 = load %struct._TempBuf*, %struct._TempBuf** %dest.addr, align 8
  store %struct._TempBuf* %49, %struct._TempBuf** %retval
  br label %return

return:                                           ; preds = %if.end.58, %if.then.16, %if.else.7, %if.else
  %50 = load %struct._TempBuf*, %struct._TempBuf** %retval
  ret %struct._TempBuf* %50
}

; Function Attrs: nounwind uwtable
define internal void @temp_buf_to_gray(%struct._TempBuf* %src_buf, %struct._TempBuf* %dest_buf) #0 {
entry:
  %src_buf.addr = alloca %struct._TempBuf*, align 8
  %dest_buf.addr = alloca %struct._TempBuf*, align 8
  %src = alloca i8*, align 8
  %dest = alloca i8*, align 8
  %num_pixels = alloca i64, align 8
  %lum = alloca i32, align 4
  %lum32 = alloca i32, align 4
  store %struct._TempBuf* %src_buf, %struct._TempBuf** %src_buf.addr, align 8
  store %struct._TempBuf* %dest_buf, %struct._TempBuf** %dest_buf.addr, align 8
  %0 = load %struct._TempBuf*, %struct._TempBuf** %src_buf.addr, align 8
  %call = call i8* @temp_buf_get_data(%struct._TempBuf* %0)
  store i8* %call, i8** %src, align 8
  %1 = load %struct._TempBuf*, %struct._TempBuf** %dest_buf.addr, align 8
  %call1 = call i8* @temp_buf_get_data(%struct._TempBuf* %1)
  store i8* %call1, i8** %dest, align 8
  %2 = load %struct._TempBuf*, %struct._TempBuf** %src_buf.addr, align 8
  %width = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %2, i32 0, i32 1
  %3 = load i32, i32* %width, align 4
  %4 = load %struct._TempBuf*, %struct._TempBuf** %src_buf.addr, align 8
  %height = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %4, i32 0, i32 2
  %5 = load i32, i32* %height, align 4
  %mul = mul nsw i32 %3, %5
  %conv = sext i32 %mul to i64
  store i64 %conv, i64* %num_pixels, align 8
  %6 = load %struct._TempBuf*, %struct._TempBuf** %dest_buf.addr, align 8
  %bytes = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %6, i32 0, i32 0
  %7 = load i32, i32* %bytes, align 4
  switch i32 %7, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.19
  ]

sw.bb:                                            ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %sw.bb
  %8 = load %struct._TempBuf*, %struct._TempBuf** %src_buf.addr, align 8
  %bytes2 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %8, i32 0, i32 0
  %9 = load i32, i32* %bytes2, align 4
  %cmp = icmp eq i32 %9, 3
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.temp_buf_to_gray, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.19, i32 0, i32 0))
  br label %sw.epilog

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %while.cond

while.cond:                                       ; preds = %while.body, %do.end
  %10 = load i64, i64* %num_pixels, align 8
  %dec = add nsw i64 %10, -1
  store i64 %dec, i64* %num_pixels, align 8
  %tobool = icmp ne i64 %10, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %11 = load i8*, i8** %src, align 8
  %arrayidx = getelementptr inbounds i8, i8* %11, i64 0
  %12 = load i8, i8* %arrayidx, align 1
  %conv4 = zext i8 %12 to i32
  %conv5 = sitofp i32 %conv4 to double
  %mul6 = fmul double %conv5, 2.126000e-01
  %13 = load i8*, i8** %src, align 8
  %arrayidx7 = getelementptr inbounds i8, i8* %13, i64 1
  %14 = load i8, i8* %arrayidx7, align 1
  %conv8 = zext i8 %14 to i32
  %conv9 = sitofp i32 %conv8 to double
  %mul10 = fmul double %conv9, 7.152000e-01
  %add = fadd double %mul6, %mul10
  %15 = load i8*, i8** %src, align 8
  %arrayidx11 = getelementptr inbounds i8, i8* %15, i64 2
  %16 = load i8, i8* %arrayidx11, align 1
  %conv12 = zext i8 %16 to i32
  %conv13 = sitofp i32 %conv12 to double
  %mul14 = fmul double %conv13, 7.220000e-02
  %add15 = fadd double %add, %mul14
  %add16 = fadd double %add15, 5.000000e-01
  %conv17 = fptosi double %add16 to i32
  store i32 %conv17, i32* %lum, align 4
  %17 = load i32, i32* %lum, align 4
  %conv18 = trunc i32 %17 to i8
  %18 = load i8*, i8** %dest, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %18, i32 1
  store i8* %incdec.ptr, i8** %dest, align 8
  store i8 %conv18, i8* %18, align 1
  %19 = load i8*, i8** %src, align 8
  %add.ptr = getelementptr inbounds i8, i8* %19, i64 3
  store i8* %add.ptr, i8** %src, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %sw.epilog

sw.bb.19:                                         ; preds = %entry
  br label %do.body.20

do.body.20:                                       ; preds = %sw.bb.19
  %20 = load %struct._TempBuf*, %struct._TempBuf** %src_buf.addr, align 8
  %bytes21 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %20, i32 0, i32 0
  %21 = load i32, i32* %bytes21, align 4
  %cmp22 = icmp eq i32 %21, 4
  br i1 %cmp22, label %if.then.24, label %if.else.25

if.then.24:                                       ; preds = %do.body.20
  br label %if.end.26

if.else.25:                                       ; preds = %do.body.20
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.temp_buf_to_gray, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.20, i32 0, i32 0))
  br label %sw.epilog

if.end.26:                                        ; preds = %if.then.24
  br label %do.end.27

do.end.27:                                        ; preds = %if.end.26
  br label %while.cond.28

while.cond.28:                                    ; preds = %while.body.31, %do.end.27
  %22 = load i64, i64* %num_pixels, align 8
  %dec29 = add nsw i64 %22, -1
  store i64 %dec29, i64* %num_pixels, align 8
  %tobool30 = icmp ne i64 %22, 0
  br i1 %tobool30, label %while.body.31, label %while.end.54

while.body.31:                                    ; preds = %while.cond.28
  %23 = load i8*, i8** %src, align 8
  %arrayidx33 = getelementptr inbounds i8, i8* %23, i64 0
  %24 = load i8, i8* %arrayidx33, align 1
  %conv34 = zext i8 %24 to i32
  %conv35 = sitofp i32 %conv34 to double
  %mul36 = fmul double %conv35, 2.126000e-01
  %25 = load i8*, i8** %src, align 8
  %arrayidx37 = getelementptr inbounds i8, i8* %25, i64 1
  %26 = load i8, i8* %arrayidx37, align 1
  %conv38 = zext i8 %26 to i32
  %conv39 = sitofp i32 %conv38 to double
  %mul40 = fmul double %conv39, 7.152000e-01
  %add41 = fadd double %mul36, %mul40
  %27 = load i8*, i8** %src, align 8
  %arrayidx42 = getelementptr inbounds i8, i8* %27, i64 2
  %28 = load i8, i8* %arrayidx42, align 1
  %conv43 = zext i8 %28 to i32
  %conv44 = sitofp i32 %conv43 to double
  %mul45 = fmul double %conv44, 7.220000e-02
  %add46 = fadd double %add41, %mul45
  %add47 = fadd double %add46, 5.000000e-01
  %conv48 = fptosi double %add47 to i32
  store i32 %conv48, i32* %lum32, align 4
  %29 = load i32, i32* %lum32, align 4
  %conv49 = trunc i32 %29 to i8
  %30 = load i8*, i8** %dest, align 8
  %incdec.ptr50 = getelementptr inbounds i8, i8* %30, i32 1
  store i8* %incdec.ptr50, i8** %dest, align 8
  store i8 %conv49, i8* %30, align 1
  %31 = load i8*, i8** %src, align 8
  %arrayidx51 = getelementptr inbounds i8, i8* %31, i64 3
  %32 = load i8, i8* %arrayidx51, align 1
  %33 = load i8*, i8** %dest, align 8
  %incdec.ptr52 = getelementptr inbounds i8, i8* %33, i32 1
  store i8* %incdec.ptr52, i8** %dest, align 8
  store i8 %32, i8* %33, align 1
  %34 = load i8*, i8** %src, align 8
  %add.ptr53 = getelementptr inbounds i8, i8* %34, i64 4
  store i8* %add.ptr53, i8** %src, align 8
  br label %while.cond.28

while.end.54:                                     ; preds = %while.cond.28
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %do.body.55

do.body.55:                                       ; preds = %sw.default
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i32 8, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.14, i32 0, i32 0), i32 499, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.temp_buf_to_gray, i32 0, i32 0))
  br label %sw.epilog

do.end.56:                                        ; No predecessors!
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.else, %if.else.25, %do.body.55, %do.end.56, %while.end.54, %while.end
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @temp_buf_to_color(%struct._TempBuf* %src_buf, %struct._TempBuf* %dest_buf) #0 {
entry:
  %src_buf.addr = alloca %struct._TempBuf*, align 8
  %dest_buf.addr = alloca %struct._TempBuf*, align 8
  %src = alloca i8*, align 8
  %dest = alloca i8*, align 8
  %num_pixels = alloca i64, align 8
  %tmp = alloca i8, align 1
  %tmp21 = alloca i8, align 1
  store %struct._TempBuf* %src_buf, %struct._TempBuf** %src_buf.addr, align 8
  store %struct._TempBuf* %dest_buf, %struct._TempBuf** %dest_buf.addr, align 8
  %0 = load %struct._TempBuf*, %struct._TempBuf** %src_buf.addr, align 8
  %call = call i8* @temp_buf_get_data(%struct._TempBuf* %0)
  store i8* %call, i8** %src, align 8
  %1 = load %struct._TempBuf*, %struct._TempBuf** %dest_buf.addr, align 8
  %call1 = call i8* @temp_buf_get_data(%struct._TempBuf* %1)
  store i8* %call1, i8** %dest, align 8
  %2 = load %struct._TempBuf*, %struct._TempBuf** %src_buf.addr, align 8
  %width = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %2, i32 0, i32 1
  %3 = load i32, i32* %width, align 4
  %4 = load %struct._TempBuf*, %struct._TempBuf** %src_buf.addr, align 8
  %height = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %4, i32 0, i32 2
  %5 = load i32, i32* %height, align 4
  %mul = mul nsw i32 %3, %5
  %conv = sext i32 %mul to i64
  store i64 %conv, i64* %num_pixels, align 8
  %6 = load %struct._TempBuf*, %struct._TempBuf** %dest_buf.addr, align 8
  %bytes = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %6, i32 0, i32 0
  %7 = load i32, i32* %bytes, align 4
  switch i32 %7, label %sw.default [
    i32 3, label %sw.bb
    i32 4, label %sw.bb.7
  ]

sw.bb:                                            ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %sw.bb
  %8 = load %struct._TempBuf*, %struct._TempBuf** %src_buf.addr, align 8
  %bytes2 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %8, i32 0, i32 0
  %9 = load i32, i32* %bytes2, align 4
  %cmp = icmp eq i32 %9, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.temp_buf_to_color, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.17, i32 0, i32 0))
  br label %sw.epilog

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %while.cond

while.cond:                                       ; preds = %while.body, %do.end
  %10 = load i64, i64* %num_pixels, align 8
  %dec = add nsw i64 %10, -1
  store i64 %dec, i64* %num_pixels, align 8
  %tobool = icmp ne i64 %10, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %11 = load i8*, i8** %src, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %11, i32 1
  store i8* %incdec.ptr, i8** %src, align 8
  %12 = load i8, i8* %11, align 1
  store i8 %12, i8* %tmp, align 1
  %13 = load i8*, i8** %dest, align 8
  %incdec.ptr4 = getelementptr inbounds i8, i8* %13, i32 1
  store i8* %incdec.ptr4, i8** %dest, align 8
  store i8 %12, i8* %13, align 1
  %14 = load i8, i8* %tmp, align 1
  %15 = load i8*, i8** %dest, align 8
  %incdec.ptr5 = getelementptr inbounds i8, i8* %15, i32 1
  store i8* %incdec.ptr5, i8** %dest, align 8
  store i8 %14, i8* %15, align 1
  %16 = load i8, i8* %tmp, align 1
  %17 = load i8*, i8** %dest, align 8
  %incdec.ptr6 = getelementptr inbounds i8, i8* %17, i32 1
  store i8* %incdec.ptr6, i8** %dest, align 8
  store i8 %16, i8* %17, align 1
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %sw.epilog

sw.bb.7:                                          ; preds = %entry
  br label %do.body.8

do.body.8:                                        ; preds = %sw.bb.7
  %18 = load %struct._TempBuf*, %struct._TempBuf** %src_buf.addr, align 8
  %bytes9 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %18, i32 0, i32 0
  %19 = load i32, i32* %bytes9, align 4
  %cmp10 = icmp eq i32 %19, 2
  br i1 %cmp10, label %if.then.12, label %if.else.13

if.then.12:                                       ; preds = %do.body.8
  br label %if.end.14

if.else.13:                                       ; preds = %do.body.8
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.temp_buf_to_color, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.18, i32 0, i32 0))
  br label %sw.epilog

if.end.14:                                        ; preds = %if.then.12
  br label %do.end.15

do.end.15:                                        ; preds = %if.end.14
  br label %while.cond.16

while.cond.16:                                    ; preds = %while.body.19, %do.end.15
  %20 = load i64, i64* %num_pixels, align 8
  %dec17 = add nsw i64 %20, -1
  store i64 %dec17, i64* %num_pixels, align 8
  %tobool18 = icmp ne i64 %20, 0
  br i1 %tobool18, label %while.body.19, label %while.end.28

while.body.19:                                    ; preds = %while.cond.16
  %21 = load i8*, i8** %src, align 8
  %incdec.ptr22 = getelementptr inbounds i8, i8* %21, i32 1
  store i8* %incdec.ptr22, i8** %src, align 8
  %22 = load i8, i8* %21, align 1
  store i8 %22, i8* %tmp21, align 1
  %23 = load i8*, i8** %dest, align 8
  %incdec.ptr23 = getelementptr inbounds i8, i8* %23, i32 1
  store i8* %incdec.ptr23, i8** %dest, align 8
  store i8 %22, i8* %23, align 1
  %24 = load i8, i8* %tmp21, align 1
  %25 = load i8*, i8** %dest, align 8
  %incdec.ptr24 = getelementptr inbounds i8, i8* %25, i32 1
  store i8* %incdec.ptr24, i8** %dest, align 8
  store i8 %24, i8* %25, align 1
  %26 = load i8, i8* %tmp21, align 1
  %27 = load i8*, i8** %dest, align 8
  %incdec.ptr25 = getelementptr inbounds i8, i8* %27, i32 1
  store i8* %incdec.ptr25, i8** %dest, align 8
  store i8 %26, i8* %27, align 1
  %28 = load i8*, i8** %src, align 8
  %incdec.ptr26 = getelementptr inbounds i8, i8* %28, i32 1
  store i8* %incdec.ptr26, i8** %src, align 8
  %29 = load i8, i8* %28, align 1
  %30 = load i8*, i8** %dest, align 8
  %incdec.ptr27 = getelementptr inbounds i8, i8* %30, i32 1
  store i8* %incdec.ptr27, i8** %dest, align 8
  store i8 %29, i8* %30, align 1
  br label %while.cond.16

while.end.28:                                     ; preds = %while.cond.16
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %do.body.29

do.body.29:                                       ; preds = %sw.default
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i32 8, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.14, i32 0, i32 0), i32 453, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.temp_buf_to_color, i32 0, i32 0))
  br label %sw.epilog

do.end.30:                                        ; No predecessors!
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.else, %if.else.13, %do.body.29, %do.end.30, %while.end.28, %while.end
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
  call void @g_logv(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i32 16, i8* %0, %struct.__va_list_tag* %arraydecay2)
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*
  call void @llvm.va_end(i8* %arraydecay34)
  ret void
}

; Function Attrs: nounwind uwtable
define i8* @temp_buf_get_data(%struct._TempBuf* %buf) #0 {
entry:
  %buf.addr = alloca %struct._TempBuf*, align 8
  store %struct._TempBuf* %buf, %struct._TempBuf** %buf.addr, align 8
  %0 = load %struct._TempBuf*, %struct._TempBuf** %buf.addr, align 8
  %data = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %0, i32 0, i32 5
  %1 = load i8*, i8** %data, align 8
  ret i8* %1
}

; Function Attrs: nounwind uwtable
define i64 @temp_buf_get_data_size(%struct._TempBuf* %buf) #0 {
entry:
  %buf.addr = alloca %struct._TempBuf*, align 8
  store %struct._TempBuf* %buf, %struct._TempBuf** %buf.addr, align 8
  %0 = load %struct._TempBuf*, %struct._TempBuf** %buf.addr, align 8
  %bytes = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %0, i32 0, i32 0
  %1 = load i32, i32* %bytes, align 4
  %2 = load %struct._TempBuf*, %struct._TempBuf** %buf.addr, align 8
  %width = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %2, i32 0, i32 1
  %3 = load i32, i32* %width, align 4
  %mul = mul nsw i32 %1, %3
  %4 = load %struct._TempBuf*, %struct._TempBuf** %buf.addr, align 8
  %height = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %4, i32 0, i32 2
  %5 = load i32, i32* %height, align 4
  %mul1 = mul nsw i32 %mul, %5
  %conv = sext i32 %mul1 to i64
  ret i64 %conv
}

; Function Attrs: nounwind uwtable
define %struct._TempBuf* @temp_buf_resize(%struct._TempBuf* %buf, i32 %bytes, i32 %x, i32 %y, i32 %width, i32 %height) #0 {
entry:
  %retval = alloca %struct._TempBuf*, align 8
  %buf.addr = alloca %struct._TempBuf*, align 8
  %bytes.addr = alloca i32, align 4
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %width.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  %size = alloca i64, align 8
  store %struct._TempBuf* %buf, %struct._TempBuf** %buf.addr, align 8
  store i32 %bytes, i32* %bytes.addr, align 4
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  store i32 %width, i32* %width.addr, align 4
  store i32 %height, i32* %height.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load i32, i32* %width.addr, align 4
  %cmp = icmp sgt i32 %0, 0
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %do.body
  %1 = load i32, i32* %height.addr, align 4
  %cmp1 = icmp sgt i32 %1, 0
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.temp_buf_resize, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i32 0, i32 0))
  store %struct._TempBuf* null, %struct._TempBuf** %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %2 = load %struct._TempBuf*, %struct._TempBuf** %buf.addr, align 8
  %tobool = icmp ne %struct._TempBuf* %2, null
  br i1 %tobool, label %if.else.3, label %if.then.2

if.then.2:                                        ; preds = %do.end
  %3 = load i32, i32* %width.addr, align 4
  %4 = load i32, i32* %height.addr, align 4
  %5 = load i32, i32* %bytes.addr, align 4
  %6 = load i32, i32* %x.addr, align 4
  %7 = load i32, i32* %y.addr, align 4
  %call = call %struct._TempBuf* @temp_buf_new(i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i8* null)
  store %struct._TempBuf* %call, %struct._TempBuf** %buf.addr, align 8
  br label %if.end.22

if.else.3:                                        ; preds = %do.end
  %8 = load i32, i32* %width.addr, align 4
  %9 = load i32, i32* %height.addr, align 4
  %mul = mul nsw i32 %8, %9
  %10 = load i32, i32* %bytes.addr, align 4
  %mul4 = mul nsw i32 %mul, %10
  %conv = sext i32 %mul4 to i64
  store i64 %conv, i64* %size, align 8
  %11 = load i64, i64* %size, align 8
  %12 = load %struct._TempBuf*, %struct._TempBuf** %buf.addr, align 8
  %width5 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %12, i32 0, i32 1
  %13 = load i32, i32* %width5, align 4
  %14 = load %struct._TempBuf*, %struct._TempBuf** %buf.addr, align 8
  %height6 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %14, i32 0, i32 2
  %15 = load i32, i32* %height6, align 4
  %mul7 = mul nsw i32 %13, %15
  %16 = load %struct._TempBuf*, %struct._TempBuf** %buf.addr, align 8
  %bytes8 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %16, i32 0, i32 0
  %17 = load i32, i32* %bytes8, align 4
  %mul9 = mul nsw i32 %mul7, %17
  %conv10 = sext i32 %mul9 to i64
  %cmp11 = icmp ne i64 %11, %conv10
  br i1 %cmp11, label %if.then.13, label %if.end.16

if.then.13:                                       ; preds = %if.else.3
  %18 = load %struct._TempBuf*, %struct._TempBuf** %buf.addr, align 8
  %data = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %18, i32 0, i32 5
  %19 = load i8*, i8** %data, align 8
  %20 = load i64, i64* %size, align 8
  %call14 = call i8* @g_realloc_n(i8* %19, i64 %20, i64 1)
  %21 = load %struct._TempBuf*, %struct._TempBuf** %buf.addr, align 8
  %data15 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %21, i32 0, i32 5
  store i8* %call14, i8** %data15, align 8
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.13, %if.else.3
  %22 = load i32, i32* %x.addr, align 4
  %23 = load %struct._TempBuf*, %struct._TempBuf** %buf.addr, align 8
  %x17 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %23, i32 0, i32 3
  store i32 %22, i32* %x17, align 4
  %24 = load i32, i32* %y.addr, align 4
  %25 = load %struct._TempBuf*, %struct._TempBuf** %buf.addr, align 8
  %y18 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %25, i32 0, i32 4
  store i32 %24, i32* %y18, align 4
  %26 = load i32, i32* %width.addr, align 4
  %27 = load %struct._TempBuf*, %struct._TempBuf** %buf.addr, align 8
  %width19 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %27, i32 0, i32 1
  store i32 %26, i32* %width19, align 4
  %28 = load i32, i32* %height.addr, align 4
  %29 = load %struct._TempBuf*, %struct._TempBuf** %buf.addr, align 8
  %height20 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %29, i32 0, i32 2
  store i32 %28, i32* %height20, align 4
  %30 = load i32, i32* %bytes.addr, align 4
  %31 = load %struct._TempBuf*, %struct._TempBuf** %buf.addr, align 8
  %bytes21 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %31, i32 0, i32 0
  store i32 %30, i32* %bytes21, align 4
  br label %if.end.22

if.end.22:                                        ; preds = %if.end.16, %if.then.2
  %32 = load %struct._TempBuf*, %struct._TempBuf** %buf.addr, align 8
  store %struct._TempBuf* %32, %struct._TempBuf** %retval
  br label %return

return:                                           ; preds = %if.end.22, %if.else
  %33 = load %struct._TempBuf*, %struct._TempBuf** %retval
  ret %struct._TempBuf* %33
}

declare i8* @g_realloc_n(i8*, i64, i64) #1

; Function Attrs: nounwind uwtable
define %struct._TempBuf* @temp_buf_scale(%struct._TempBuf* %src, i32 %new_width, i32 %new_height) #0 {
entry:
  %retval = alloca %struct._TempBuf*, align 8
  %src.addr = alloca %struct._TempBuf*, align 8
  %new_width.addr = alloca i32, align 4
  %new_height.addr = alloca i32, align 4
  %dest = alloca %struct._TempBuf*, align 8
  %src_data = alloca i8*, align 8
  %dest_data = alloca i8*, align 8
  %x_ratio = alloca double, align 8
  %y_ratio = alloca double, align 8
  %loop1 = alloca i32, align 4
  %loop2 = alloca i32, align 4
  %src_pixel = alloca i8*, align 8
  %dest_pixel = alloca i8*, align 8
  %i = alloca i32, align 4
  store %struct._TempBuf* %src, %struct._TempBuf** %src.addr, align 8
  store i32 %new_width, i32* %new_width.addr, align 4
  store i32 %new_height, i32* %new_height.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._TempBuf*, %struct._TempBuf** %src.addr, align 8
  %cmp = icmp ne %struct._TempBuf* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.temp_buf_scale, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i32 0, i32 0))
  store %struct._TempBuf* null, %struct._TempBuf** %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %do.body.1

do.body.1:                                        ; preds = %do.end
  %1 = load i32, i32* %new_width.addr, align 4
  %cmp2 = icmp sgt i32 %1, 0
  br i1 %cmp2, label %land.lhs.true, label %if.else.5

land.lhs.true:                                    ; preds = %do.body.1
  %2 = load i32, i32* %new_height.addr, align 4
  %cmp3 = icmp sgt i32 %2, 0
  br i1 %cmp3, label %if.then.4, label %if.else.5

if.then.4:                                        ; preds = %land.lhs.true
  br label %if.end.6

if.else.5:                                        ; preds = %land.lhs.true, %do.body.1
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.temp_buf_scale, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i32 0, i32 0))
  store %struct._TempBuf* null, %struct._TempBuf** %retval
  br label %return

if.end.6:                                         ; preds = %if.then.4
  br label %do.end.7

do.end.7:                                         ; preds = %if.end.6
  %3 = load i32, i32* %new_width.addr, align 4
  %4 = load i32, i32* %new_height.addr, align 4
  %5 = load %struct._TempBuf*, %struct._TempBuf** %src.addr, align 8
  %bytes = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %5, i32 0, i32 0
  %6 = load i32, i32* %bytes, align 4
  %call = call %struct._TempBuf* @temp_buf_new(i32 %3, i32 %4, i32 %6, i32 0, i32 0, i8* null)
  store %struct._TempBuf* %call, %struct._TempBuf** %dest, align 8
  %7 = load %struct._TempBuf*, %struct._TempBuf** %src.addr, align 8
  %call8 = call i8* @temp_buf_get_data(%struct._TempBuf* %7)
  store i8* %call8, i8** %src_data, align 8
  %8 = load %struct._TempBuf*, %struct._TempBuf** %dest, align 8
  %call9 = call i8* @temp_buf_get_data(%struct._TempBuf* %8)
  store i8* %call9, i8** %dest_data, align 8
  %9 = load %struct._TempBuf*, %struct._TempBuf** %src.addr, align 8
  %width = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %9, i32 0, i32 1
  %10 = load i32, i32* %width, align 4
  %conv = sitofp i32 %10 to double
  %11 = load i32, i32* %new_width.addr, align 4
  %conv10 = sitofp i32 %11 to double
  %div = fdiv double %conv, %conv10
  store double %div, double* %x_ratio, align 8
  %12 = load %struct._TempBuf*, %struct._TempBuf** %src.addr, align 8
  %height = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %12, i32 0, i32 2
  %13 = load i32, i32* %height, align 4
  %conv11 = sitofp i32 %13 to double
  %14 = load i32, i32* %new_height.addr, align 4
  %conv12 = sitofp i32 %14 to double
  %div13 = fdiv double %conv11, %conv12
  store double %div13, double* %y_ratio, align 8
  store i32 0, i32* %loop1, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.47, %do.end.7
  %15 = load i32, i32* %loop1, align 4
  %16 = load i32, i32* %new_height.addr, align 4
  %cmp14 = icmp slt i32 %15, %16
  br i1 %cmp14, label %for.body, label %for.end.49

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %loop2, align 4
  br label %for.cond.16

for.cond.16:                                      ; preds = %for.inc.44, %for.body
  %17 = load i32, i32* %loop2, align 4
  %18 = load i32, i32* %new_width.addr, align 4
  %cmp17 = icmp slt i32 %17, %18
  br i1 %cmp17, label %for.body.19, label %for.end.46

for.body.19:                                      ; preds = %for.cond.16
  %19 = load i8*, i8** %src_data, align 8
  %20 = load i32, i32* %loop2, align 4
  %conv20 = sitofp i32 %20 to double
  %21 = load double, double* %x_ratio, align 8
  %mul = fmul double %conv20, %21
  %conv21 = fptosi double %mul to i32
  %22 = load %struct._TempBuf*, %struct._TempBuf** %src.addr, align 8
  %bytes22 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %22, i32 0, i32 0
  %23 = load i32, i32* %bytes22, align 4
  %mul23 = mul nsw i32 %conv21, %23
  %idx.ext = sext i32 %mul23 to i64
  %add.ptr = getelementptr inbounds i8, i8* %19, i64 %idx.ext
  %24 = load i32, i32* %loop1, align 4
  %conv24 = sitofp i32 %24 to double
  %25 = load double, double* %y_ratio, align 8
  %mul25 = fmul double %conv24, %25
  %conv26 = fptosi double %mul25 to i32
  %26 = load %struct._TempBuf*, %struct._TempBuf** %src.addr, align 8
  %bytes27 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %26, i32 0, i32 0
  %27 = load i32, i32* %bytes27, align 4
  %mul28 = mul nsw i32 %conv26, %27
  %28 = load %struct._TempBuf*, %struct._TempBuf** %src.addr, align 8
  %width29 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %28, i32 0, i32 1
  %29 = load i32, i32* %width29, align 4
  %mul30 = mul nsw i32 %mul28, %29
  %idx.ext31 = sext i32 %mul30 to i64
  %add.ptr32 = getelementptr inbounds i8, i8* %add.ptr, i64 %idx.ext31
  store i8* %add.ptr32, i8** %src_pixel, align 8
  %30 = load i8*, i8** %dest_data, align 8
  %31 = load i32, i32* %loop2, align 4
  %32 = load i32, i32* %loop1, align 4
  %33 = load i32, i32* %new_width.addr, align 4
  %mul33 = mul nsw i32 %32, %33
  %add = add nsw i32 %31, %mul33
  %34 = load %struct._TempBuf*, %struct._TempBuf** %src.addr, align 8
  %bytes34 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %34, i32 0, i32 0
  %35 = load i32, i32* %bytes34, align 4
  %mul35 = mul nsw i32 %add, %35
  %idx.ext36 = sext i32 %mul35 to i64
  %add.ptr37 = getelementptr inbounds i8, i8* %30, i64 %idx.ext36
  store i8* %add.ptr37, i8** %dest_pixel, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.38

for.cond.38:                                      ; preds = %for.inc, %for.body.19
  %36 = load i32, i32* %i, align 4
  %37 = load %struct._TempBuf*, %struct._TempBuf** %src.addr, align 8
  %bytes39 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %37, i32 0, i32 0
  %38 = load i32, i32* %bytes39, align 4
  %cmp40 = icmp slt i32 %36, %38
  br i1 %cmp40, label %for.body.42, label %for.end

for.body.42:                                      ; preds = %for.cond.38
  %39 = load i8*, i8** %src_pixel, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %39, i32 1
  store i8* %incdec.ptr, i8** %src_pixel, align 8
  %40 = load i8, i8* %39, align 1
  %41 = load i8*, i8** %dest_pixel, align 8
  %incdec.ptr43 = getelementptr inbounds i8, i8* %41, i32 1
  store i8* %incdec.ptr43, i8** %dest_pixel, align 8
  store i8 %40, i8* %41, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body.42
  %42 = load i32, i32* %i, align 4
  %inc = add nsw i32 %42, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond.38

for.end:                                          ; preds = %for.cond.38
  br label %for.inc.44

for.inc.44:                                       ; preds = %for.end
  %43 = load i32, i32* %loop2, align 4
  %inc45 = add nsw i32 %43, 1
  store i32 %inc45, i32* %loop2, align 4
  br label %for.cond.16

for.end.46:                                       ; preds = %for.cond.16
  br label %for.inc.47

for.inc.47:                                       ; preds = %for.end.46
  %44 = load i32, i32* %loop1, align 4
  %inc48 = add nsw i32 %44, 1
  store i32 %inc48, i32* %loop1, align 4
  br label %for.cond

for.end.49:                                       ; preds = %for.cond
  %45 = load %struct._TempBuf*, %struct._TempBuf** %dest, align 8
  store %struct._TempBuf* %45, %struct._TempBuf** %retval
  br label %return

return:                                           ; preds = %for.end.49, %if.else.5, %if.else
  %46 = load %struct._TempBuf*, %struct._TempBuf** %retval
  ret %struct._TempBuf* %46
}

; Function Attrs: nounwind uwtable
define %struct._TempBuf* @temp_buf_copy_area(%struct._TempBuf* %src, %struct._TempBuf* %dest, i32 %x, i32 %y, i32 %width, i32 %height, i32 %dest_x, i32 %dest_y) #0 {
entry:
  %retval = alloca %struct._TempBuf*, align 8
  %src.addr = alloca %struct._TempBuf*, align 8
  %dest.addr = alloca %struct._TempBuf*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %width.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  %dest_x.addr = alloca i32, align 4
  %dest_y.addr = alloca i32, align 4
  %new = alloca %struct._TempBuf*, align 8
  %srcPR = alloca %struct._PixelRegion, align 8
  %destPR = alloca %struct._PixelRegion, align 8
  %empty = alloca [4 x i8], align 1
  %x1 = alloca i32, align 4
  %y1 = alloca i32, align 4
  %x2 = alloca i32, align 4
  %y2 = alloca i32, align 4
  store %struct._TempBuf* %src, %struct._TempBuf** %src.addr, align 8
  store %struct._TempBuf* %dest, %struct._TempBuf** %dest.addr, align 8
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  store i32 %width, i32* %width.addr, align 4
  store i32 %height, i32* %height.addr, align 4
  store i32 %dest_x, i32* %dest_x.addr, align 4
  store i32 %dest_y, i32* %dest_y.addr, align 4
  %0 = bitcast %struct._PixelRegion* %srcPR to i8*
  call void @llvm.memset.p0i8.i64(i8* %0, i8 0, i64 64, i32 8, i1 false)
  %1 = bitcast %struct._PixelRegion* %destPR to i8*
  call void @llvm.memset.p0i8.i64(i8* %1, i8 0, i64 64, i32 8, i1 false)
  %2 = bitcast [4 x i8]* %empty to i8*
  call void @llvm.memset.p0i8.i64(i8* %2, i8 0, i64 4, i32 1, i1 false)
  br label %do.body

do.body:                                          ; preds = %entry
  %3 = load %struct._TempBuf*, %struct._TempBuf** %src.addr, align 8
  %cmp = icmp ne %struct._TempBuf* %3, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.temp_buf_copy_area, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i32 0, i32 0))
  %4 = load %struct._TempBuf*, %struct._TempBuf** %dest.addr, align 8
  store %struct._TempBuf* %4, %struct._TempBuf** %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %do.body.1

do.body.1:                                        ; preds = %do.end
  %5 = load %struct._TempBuf*, %struct._TempBuf** %dest.addr, align 8
  %tobool = icmp ne %struct._TempBuf* %5, null
  br i1 %tobool, label %lor.lhs.false, label %if.then.4

lor.lhs.false:                                    ; preds = %do.body.1
  %6 = load %struct._TempBuf*, %struct._TempBuf** %dest.addr, align 8
  %bytes = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %6, i32 0, i32 0
  %7 = load i32, i32* %bytes, align 4
  %8 = load %struct._TempBuf*, %struct._TempBuf** %src.addr, align 8
  %bytes2 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %8, i32 0, i32 0
  %9 = load i32, i32* %bytes2, align 4
  %cmp3 = icmp eq i32 %7, %9
  br i1 %cmp3, label %if.then.4, label %if.else.5

if.then.4:                                        ; preds = %lor.lhs.false, %do.body.1
  br label %if.end.6

if.else.5:                                        ; preds = %lor.lhs.false
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.temp_buf_copy_area, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.7, i32 0, i32 0))
  %10 = load %struct._TempBuf*, %struct._TempBuf** %dest.addr, align 8
  store %struct._TempBuf* %10, %struct._TempBuf** %retval
  br label %return

if.end.6:                                         ; preds = %if.then.4
  br label %do.end.7

do.end.7:                                         ; preds = %if.end.6
  br label %do.body.8

do.body.8:                                        ; preds = %do.end.7
  %11 = load i32, i32* %width.addr, align 4
  %12 = load i32, i32* %dest_x.addr, align 4
  %add = add nsw i32 %11, %12
  %cmp9 = icmp sgt i32 %add, 0
  br i1 %cmp9, label %if.then.10, label %if.else.11

if.then.10:                                       ; preds = %do.body.8
  br label %if.end.12

if.else.11:                                       ; preds = %do.body.8
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.temp_buf_copy_area, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i32 0, i32 0))
  %13 = load %struct._TempBuf*, %struct._TempBuf** %dest.addr, align 8
  store %struct._TempBuf* %13, %struct._TempBuf** %retval
  br label %return

if.end.12:                                        ; preds = %if.then.10
  br label %do.end.13

do.end.13:                                        ; preds = %if.end.12
  br label %do.body.14

do.body.14:                                       ; preds = %do.end.13
  %14 = load i32, i32* %height.addr, align 4
  %15 = load i32, i32* %dest_y.addr, align 4
  %add15 = add nsw i32 %14, %15
  %cmp16 = icmp sgt i32 %add15, 0
  br i1 %cmp16, label %if.then.17, label %if.else.18

if.then.17:                                       ; preds = %do.body.14
  br label %if.end.19

if.else.18:                                       ; preds = %do.body.14
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.temp_buf_copy_area, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.9, i32 0, i32 0))
  %16 = load %struct._TempBuf*, %struct._TempBuf** %dest.addr, align 8
  store %struct._TempBuf* %16, %struct._TempBuf** %retval
  br label %return

if.end.19:                                        ; preds = %if.then.17
  br label %do.end.20

do.end.20:                                        ; preds = %if.end.19
  br label %do.body.21

do.body.21:                                       ; preds = %do.end.20
  %17 = load %struct._TempBuf*, %struct._TempBuf** %dest.addr, align 8
  %tobool22 = icmp ne %struct._TempBuf* %17, null
  br i1 %tobool22, label %lor.lhs.false.23, label %if.then.27

lor.lhs.false.23:                                 ; preds = %do.body.21
  %18 = load %struct._TempBuf*, %struct._TempBuf** %dest.addr, align 8
  %width24 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %18, i32 0, i32 1
  %19 = load i32, i32* %width24, align 4
  %20 = load i32, i32* %width.addr, align 4
  %21 = load i32, i32* %dest_x.addr, align 4
  %add25 = add nsw i32 %20, %21
  %cmp26 = icmp sge i32 %19, %add25
  br i1 %cmp26, label %if.then.27, label %if.else.28

if.then.27:                                       ; preds = %lor.lhs.false.23, %do.body.21
  br label %if.end.29

if.else.28:                                       ; preds = %lor.lhs.false.23
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.temp_buf_copy_area, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.10, i32 0, i32 0))
  %22 = load %struct._TempBuf*, %struct._TempBuf** %dest.addr, align 8
  store %struct._TempBuf* %22, %struct._TempBuf** %retval
  br label %return

if.end.29:                                        ; preds = %if.then.27
  br label %do.end.30

do.end.30:                                        ; preds = %if.end.29
  br label %do.body.31

do.body.31:                                       ; preds = %do.end.30
  %23 = load %struct._TempBuf*, %struct._TempBuf** %dest.addr, align 8
  %tobool32 = icmp ne %struct._TempBuf* %23, null
  br i1 %tobool32, label %lor.lhs.false.33, label %if.then.37

lor.lhs.false.33:                                 ; preds = %do.body.31
  %24 = load %struct._TempBuf*, %struct._TempBuf** %dest.addr, align 8
  %height34 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %24, i32 0, i32 2
  %25 = load i32, i32* %height34, align 4
  %26 = load i32, i32* %height.addr, align 4
  %27 = load i32, i32* %dest_y.addr, align 4
  %add35 = add nsw i32 %26, %27
  %cmp36 = icmp sge i32 %25, %add35
  br i1 %cmp36, label %if.then.37, label %if.else.38

if.then.37:                                       ; preds = %lor.lhs.false.33, %do.body.31
  br label %if.end.39

if.else.38:                                       ; preds = %lor.lhs.false.33
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.temp_buf_copy_area, i32 0, i32 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.11, i32 0, i32 0))
  %28 = load %struct._TempBuf*, %struct._TempBuf** %dest.addr, align 8
  store %struct._TempBuf* %28, %struct._TempBuf** %retval
  br label %return

if.end.39:                                        ; preds = %if.then.37
  br label %do.end.40

do.end.40:                                        ; preds = %if.end.39
  %29 = load i32, i32* %x.addr, align 4
  %30 = load %struct._TempBuf*, %struct._TempBuf** %src.addr, align 8
  %width41 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %30, i32 0, i32 1
  %31 = load i32, i32* %width41, align 4
  %sub = sub nsw i32 %31, 1
  %cmp42 = icmp sgt i32 %29, %sub
  br i1 %cmp42, label %cond.true, label %cond.false

cond.true:                                        ; preds = %do.end.40
  %32 = load %struct._TempBuf*, %struct._TempBuf** %src.addr, align 8
  %width43 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %32, i32 0, i32 1
  %33 = load i32, i32* %width43, align 4
  %sub44 = sub nsw i32 %33, 1
  br label %cond.end.48

cond.false:                                       ; preds = %do.end.40
  %34 = load i32, i32* %x.addr, align 4
  %cmp45 = icmp slt i32 %34, 0
  br i1 %cmp45, label %cond.true.46, label %cond.false.47

cond.true.46:                                     ; preds = %cond.false
  br label %cond.end

cond.false.47:                                    ; preds = %cond.false
  %35 = load i32, i32* %x.addr, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false.47, %cond.true.46
  %cond = phi i32 [ 0, %cond.true.46 ], [ %35, %cond.false.47 ]
  br label %cond.end.48

cond.end.48:                                      ; preds = %cond.end, %cond.true
  %cond49 = phi i32 [ %sub44, %cond.true ], [ %cond, %cond.end ]
  store i32 %cond49, i32* %x1, align 4
  %36 = load i32, i32* %y.addr, align 4
  %37 = load %struct._TempBuf*, %struct._TempBuf** %src.addr, align 8
  %height50 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %37, i32 0, i32 2
  %38 = load i32, i32* %height50, align 4
  %sub51 = sub nsw i32 %38, 1
  %cmp52 = icmp sgt i32 %36, %sub51
  br i1 %cmp52, label %cond.true.53, label %cond.false.56

cond.true.53:                                     ; preds = %cond.end.48
  %39 = load %struct._TempBuf*, %struct._TempBuf** %src.addr, align 8
  %height54 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %39, i32 0, i32 2
  %40 = load i32, i32* %height54, align 4
  %sub55 = sub nsw i32 %40, 1
  br label %cond.end.62

cond.false.56:                                    ; preds = %cond.end.48
  %41 = load i32, i32* %y.addr, align 4
  %cmp57 = icmp slt i32 %41, 0
  br i1 %cmp57, label %cond.true.58, label %cond.false.59

cond.true.58:                                     ; preds = %cond.false.56
  br label %cond.end.60

cond.false.59:                                    ; preds = %cond.false.56
  %42 = load i32, i32* %y.addr, align 4
  br label %cond.end.60

cond.end.60:                                      ; preds = %cond.false.59, %cond.true.58
  %cond61 = phi i32 [ 0, %cond.true.58 ], [ %42, %cond.false.59 ]
  br label %cond.end.62

cond.end.62:                                      ; preds = %cond.end.60, %cond.true.53
  %cond63 = phi i32 [ %sub55, %cond.true.53 ], [ %cond61, %cond.end.60 ]
  store i32 %cond63, i32* %y1, align 4
  %43 = load i32, i32* %x.addr, align 4
  %44 = load i32, i32* %width.addr, align 4
  %add64 = add nsw i32 %43, %44
  %sub65 = sub nsw i32 %add64, 1
  %45 = load %struct._TempBuf*, %struct._TempBuf** %src.addr, align 8
  %width66 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %45, i32 0, i32 1
  %46 = load i32, i32* %width66, align 4
  %sub67 = sub nsw i32 %46, 1
  %cmp68 = icmp sgt i32 %sub65, %sub67
  br i1 %cmp68, label %cond.true.69, label %cond.false.72

cond.true.69:                                     ; preds = %cond.end.62
  %47 = load %struct._TempBuf*, %struct._TempBuf** %src.addr, align 8
  %width70 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %47, i32 0, i32 1
  %48 = load i32, i32* %width70, align 4
  %sub71 = sub nsw i32 %48, 1
  br label %cond.end.82

cond.false.72:                                    ; preds = %cond.end.62
  %49 = load i32, i32* %x.addr, align 4
  %50 = load i32, i32* %width.addr, align 4
  %add73 = add nsw i32 %49, %50
  %sub74 = sub nsw i32 %add73, 1
  %cmp75 = icmp slt i32 %sub74, 0
  br i1 %cmp75, label %cond.true.76, label %cond.false.77

cond.true.76:                                     ; preds = %cond.false.72
  br label %cond.end.80

cond.false.77:                                    ; preds = %cond.false.72
  %51 = load i32, i32* %x.addr, align 4
  %52 = load i32, i32* %width.addr, align 4
  %add78 = add nsw i32 %51, %52
  %sub79 = sub nsw i32 %add78, 1
  br label %cond.end.80

cond.end.80:                                      ; preds = %cond.false.77, %cond.true.76
  %cond81 = phi i32 [ 0, %cond.true.76 ], [ %sub79, %cond.false.77 ]
  br label %cond.end.82

cond.end.82:                                      ; preds = %cond.end.80, %cond.true.69
  %cond83 = phi i32 [ %sub71, %cond.true.69 ], [ %cond81, %cond.end.80 ]
  store i32 %cond83, i32* %x2, align 4
  %53 = load i32, i32* %y.addr, align 4
  %54 = load i32, i32* %height.addr, align 4
  %add84 = add nsw i32 %53, %54
  %sub85 = sub nsw i32 %add84, 1
  %55 = load %struct._TempBuf*, %struct._TempBuf** %src.addr, align 8
  %height86 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %55, i32 0, i32 2
  %56 = load i32, i32* %height86, align 4
  %sub87 = sub nsw i32 %56, 1
  %cmp88 = icmp sgt i32 %sub85, %sub87
  br i1 %cmp88, label %cond.true.89, label %cond.false.92

cond.true.89:                                     ; preds = %cond.end.82
  %57 = load %struct._TempBuf*, %struct._TempBuf** %src.addr, align 8
  %height90 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %57, i32 0, i32 2
  %58 = load i32, i32* %height90, align 4
  %sub91 = sub nsw i32 %58, 1
  br label %cond.end.102

cond.false.92:                                    ; preds = %cond.end.82
  %59 = load i32, i32* %y.addr, align 4
  %60 = load i32, i32* %height.addr, align 4
  %add93 = add nsw i32 %59, %60
  %sub94 = sub nsw i32 %add93, 1
  %cmp95 = icmp slt i32 %sub94, 0
  br i1 %cmp95, label %cond.true.96, label %cond.false.97

cond.true.96:                                     ; preds = %cond.false.92
  br label %cond.end.100

cond.false.97:                                    ; preds = %cond.false.92
  %61 = load i32, i32* %y.addr, align 4
  %62 = load i32, i32* %height.addr, align 4
  %add98 = add nsw i32 %61, %62
  %sub99 = sub nsw i32 %add98, 1
  br label %cond.end.100

cond.end.100:                                     ; preds = %cond.false.97, %cond.true.96
  %cond101 = phi i32 [ 0, %cond.true.96 ], [ %sub99, %cond.false.97 ]
  br label %cond.end.102

cond.end.102:                                     ; preds = %cond.end.100, %cond.true.89
  %cond103 = phi i32 [ %sub91, %cond.true.89 ], [ %cond101, %cond.end.100 ]
  store i32 %cond103, i32* %y2, align 4
  %63 = load i32, i32* %x2, align 4
  %64 = load i32, i32* %x1, align 4
  %sub104 = sub nsw i32 %63, %64
  %tobool105 = icmp ne i32 %sub104, 0
  br i1 %tobool105, label %lor.lhs.false.106, label %if.then.109

lor.lhs.false.106:                                ; preds = %cond.end.102
  %65 = load i32, i32* %y2, align 4
  %66 = load i32, i32* %y1, align 4
  %sub107 = sub nsw i32 %65, %66
  %tobool108 = icmp ne i32 %sub107, 0
  br i1 %tobool108, label %if.end.110, label %if.then.109

if.then.109:                                      ; preds = %lor.lhs.false.106, %cond.end.102
  %67 = load %struct._TempBuf*, %struct._TempBuf** %dest.addr, align 8
  store %struct._TempBuf* %67, %struct._TempBuf** %retval
  br label %return

if.end.110:                                       ; preds = %lor.lhs.false.106
  %68 = load i32, i32* %x2, align 4
  %69 = load i32, i32* %x1, align 4
  %sub111 = sub nsw i32 %68, %69
  %add112 = add nsw i32 %sub111, 1
  store i32 %add112, i32* %width.addr, align 4
  %70 = load i32, i32* %y2, align 4
  %71 = load i32, i32* %y1, align 4
  %sub113 = sub nsw i32 %70, %71
  %add114 = add nsw i32 %sub113, 1
  store i32 %add114, i32* %height.addr, align 4
  %72 = load %struct._TempBuf*, %struct._TempBuf** %dest.addr, align 8
  %tobool115 = icmp ne %struct._TempBuf* %72, null
  br i1 %tobool115, label %if.else.120, label %if.then.116

if.then.116:                                      ; preds = %if.end.110
  %73 = load i32, i32* %width.addr, align 4
  %74 = load i32, i32* %dest_x.addr, align 4
  %add117 = add nsw i32 %73, %74
  %75 = load i32, i32* %height.addr, align 4
  %76 = load i32, i32* %dest_y.addr, align 4
  %add118 = add nsw i32 %75, %76
  %77 = load %struct._TempBuf*, %struct._TempBuf** %src.addr, align 8
  %bytes119 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %77, i32 0, i32 0
  %78 = load i32, i32* %bytes119, align 4
  %arraydecay = getelementptr inbounds [4 x i8], [4 x i8]* %empty, i32 0, i32 0
  %call = call %struct._TempBuf* @temp_buf_new(i32 %add117, i32 %add118, i32 %78, i32 0, i32 0, i8* %arraydecay)
  store %struct._TempBuf* %call, %struct._TempBuf** %new, align 8
  br label %if.end.121

if.else.120:                                      ; preds = %if.end.110
  %79 = load %struct._TempBuf*, %struct._TempBuf** %dest.addr, align 8
  store %struct._TempBuf* %79, %struct._TempBuf** %new, align 8
  br label %if.end.121

if.end.121:                                       ; preds = %if.else.120, %if.then.116
  %80 = load %struct._TempBuf*, %struct._TempBuf** %src.addr, align 8
  %81 = load i32, i32* %x1, align 4
  %82 = load i32, i32* %y1, align 4
  %83 = load i32, i32* %width.addr, align 4
  %84 = load i32, i32* %height.addr, align 4
  call void @pixel_region_init_temp_buf(%struct._PixelRegion* %srcPR, %struct._TempBuf* %80, i32 %81, i32 %82, i32 %83, i32 %84)
  %85 = load %struct._TempBuf*, %struct._TempBuf** %new, align 8
  %86 = load i32, i32* %dest_x.addr, align 4
  %87 = load i32, i32* %dest_y.addr, align 4
  %88 = load i32, i32* %width.addr, align 4
  %89 = load i32, i32* %height.addr, align 4
  call void @pixel_region_init_temp_buf(%struct._PixelRegion* %destPR, %struct._TempBuf* %85, i32 %86, i32 %87, i32 %88, i32 %89)
  call void @copy_region(%struct._PixelRegion* %srcPR, %struct._PixelRegion* %destPR)
  %90 = load %struct._TempBuf*, %struct._TempBuf** %new, align 8
  store %struct._TempBuf* %90, %struct._TempBuf** %retval
  br label %return

return:                                           ; preds = %if.end.121, %if.then.109, %if.else.38, %if.else.28, %if.else.18, %if.else.11, %if.else.5, %if.else
  %91 = load %struct._TempBuf*, %struct._TempBuf** %retval
  ret %struct._TempBuf* %91
}

declare void @pixel_region_init_temp_buf(%struct._PixelRegion*, %struct._TempBuf*, i32, i32, i32, i32) #1

declare void @copy_region(%struct._PixelRegion*, %struct._PixelRegion*) #1

; Function Attrs: nounwind uwtable
define void @temp_buf_demultiply(%struct._TempBuf* %buf) #0 {
entry:
  %buf.addr = alloca %struct._TempBuf*, align 8
  %data = alloca i8*, align 8
  %pixels = alloca i32, align 4
  store %struct._TempBuf* %buf, %struct._TempBuf** %buf.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._TempBuf*, %struct._TempBuf** %buf.addr, align 8
  %cmp = icmp ne %struct._TempBuf* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.temp_buf_demultiply, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i32 0, i32 0))
  br label %sw.epilog

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %1 = load %struct._TempBuf*, %struct._TempBuf** %buf.addr, align 8
  %bytes = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %1, i32 0, i32 0
  %2 = load i32, i32* %bytes, align 4
  switch i32 %2, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.1
    i32 3, label %sw.bb.6
    i32 4, label %sw.bb.7
  ]

sw.bb:                                            ; preds = %do.end
  br label %sw.epilog

sw.bb.1:                                          ; preds = %do.end
  %3 = load %struct._TempBuf*, %struct._TempBuf** %buf.addr, align 8
  %call = call i8* @temp_buf_get_data(%struct._TempBuf* %3)
  store i8* %call, i8** %data, align 8
  %4 = load %struct._TempBuf*, %struct._TempBuf** %buf.addr, align 8
  %width = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %4, i32 0, i32 1
  %5 = load i32, i32* %width, align 4
  %6 = load %struct._TempBuf*, %struct._TempBuf** %buf.addr, align 8
  %height = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %6, i32 0, i32 2
  %7 = load i32, i32* %height, align 4
  %mul = mul nsw i32 %5, %7
  store i32 %mul, i32* %pixels, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %sw.bb.1
  %8 = load i32, i32* %pixels, align 4
  %dec = add nsw i32 %8, -1
  store i32 %dec, i32* %pixels, align 4
  %tobool = icmp ne i32 %8, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %9 = load i8*, i8** %data, align 8
  %arrayidx = getelementptr inbounds i8, i8* %9, i64 0
  %10 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %10 to i32
  %shl = shl i32 %conv, 8
  %11 = load i8*, i8** %data, align 8
  %arrayidx2 = getelementptr inbounds i8, i8* %11, i64 1
  %12 = load i8, i8* %arrayidx2, align 1
  %conv3 = zext i8 %12 to i32
  %add = add nsw i32 %conv3, 1
  %div = sdiv i32 %shl, %add
  %conv4 = trunc i32 %div to i8
  %13 = load i8*, i8** %data, align 8
  %arrayidx5 = getelementptr inbounds i8, i8* %13, i64 0
  store i8 %conv4, i8* %arrayidx5, align 1
  %14 = load i8*, i8** %data, align 8
  %add.ptr = getelementptr inbounds i8, i8* %14, i64 2
  store i8* %add.ptr, i8** %data, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %sw.epilog

sw.bb.6:                                          ; preds = %do.end
  br label %sw.epilog

sw.bb.7:                                          ; preds = %do.end
  %15 = load %struct._TempBuf*, %struct._TempBuf** %buf.addr, align 8
  %call8 = call i8* @temp_buf_get_data(%struct._TempBuf* %15)
  store i8* %call8, i8** %data, align 8
  %16 = load %struct._TempBuf*, %struct._TempBuf** %buf.addr, align 8
  %width9 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %16, i32 0, i32 1
  %17 = load i32, i32* %width9, align 4
  %18 = load %struct._TempBuf*, %struct._TempBuf** %buf.addr, align 8
  %height10 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %18, i32 0, i32 2
  %19 = load i32, i32* %height10, align 4
  %mul11 = mul nsw i32 %17, %19
  store i32 %mul11, i32* %pixels, align 4
  br label %while.cond.12

while.cond.12:                                    ; preds = %while.body.15, %sw.bb.7
  %20 = load i32, i32* %pixels, align 4
  %dec13 = add nsw i32 %20, -1
  store i32 %dec13, i32* %pixels, align 4
  %tobool14 = icmp ne i32 %20, 0
  br i1 %tobool14, label %while.body.15, label %while.end.44

while.body.15:                                    ; preds = %while.cond.12
  %21 = load i8*, i8** %data, align 8
  %arrayidx16 = getelementptr inbounds i8, i8* %21, i64 0
  %22 = load i8, i8* %arrayidx16, align 1
  %conv17 = zext i8 %22 to i32
  %shl18 = shl i32 %conv17, 8
  %23 = load i8*, i8** %data, align 8
  %arrayidx19 = getelementptr inbounds i8, i8* %23, i64 3
  %24 = load i8, i8* %arrayidx19, align 1
  %conv20 = zext i8 %24 to i32
  %add21 = add nsw i32 %conv20, 1
  %div22 = sdiv i32 %shl18, %add21
  %conv23 = trunc i32 %div22 to i8
  %25 = load i8*, i8** %data, align 8
  %arrayidx24 = getelementptr inbounds i8, i8* %25, i64 0
  store i8 %conv23, i8* %arrayidx24, align 1
  %26 = load i8*, i8** %data, align 8
  %arrayidx25 = getelementptr inbounds i8, i8* %26, i64 1
  %27 = load i8, i8* %arrayidx25, align 1
  %conv26 = zext i8 %27 to i32
  %shl27 = shl i32 %conv26, 8
  %28 = load i8*, i8** %data, align 8
  %arrayidx28 = getelementptr inbounds i8, i8* %28, i64 3
  %29 = load i8, i8* %arrayidx28, align 1
  %conv29 = zext i8 %29 to i32
  %add30 = add nsw i32 %conv29, 1
  %div31 = sdiv i32 %shl27, %add30
  %conv32 = trunc i32 %div31 to i8
  %30 = load i8*, i8** %data, align 8
  %arrayidx33 = getelementptr inbounds i8, i8* %30, i64 1
  store i8 %conv32, i8* %arrayidx33, align 1
  %31 = load i8*, i8** %data, align 8
  %arrayidx34 = getelementptr inbounds i8, i8* %31, i64 2
  %32 = load i8, i8* %arrayidx34, align 1
  %conv35 = zext i8 %32 to i32
  %shl36 = shl i32 %conv35, 8
  %33 = load i8*, i8** %data, align 8
  %arrayidx37 = getelementptr inbounds i8, i8* %33, i64 3
  %34 = load i8, i8* %arrayidx37, align 1
  %conv38 = zext i8 %34 to i32
  %add39 = add nsw i32 %conv38, 1
  %div40 = sdiv i32 %shl36, %add39
  %conv41 = trunc i32 %div40 to i8
  %35 = load i8*, i8** %data, align 8
  %arrayidx42 = getelementptr inbounds i8, i8* %35, i64 2
  store i8 %conv41, i8* %arrayidx42, align 1
  %36 = load i8*, i8** %data, align 8
  %add.ptr43 = getelementptr inbounds i8, i8* %36, i64 4
  store i8* %add.ptr43, i8** %data, align 8
  br label %while.cond.12

while.end.44:                                     ; preds = %while.cond.12
  br label %sw.epilog

sw.default:                                       ; preds = %do.end
  br label %do.body.45

do.body.45:                                       ; preds = %sw.default
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i32 8, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.14, i32 0, i32 0), i32 339, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.temp_buf_demultiply, i32 0, i32 0))
  br label %sw.epilog

do.end.46:                                        ; No predecessors!
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.else, %do.body.45, %do.end.46, %while.end.44, %sw.bb.6, %while.end, %sw.bb
  ret void
}

declare void @g_log(i8*, i32, i8*, ...) #1

; Function Attrs: nounwind uwtable
define void @temp_buf_free(%struct._TempBuf* %buf) #0 {
entry:
  %buf.addr = alloca %struct._TempBuf*, align 8
  store %struct._TempBuf* %buf, %struct._TempBuf** %buf.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._TempBuf*, %struct._TempBuf** %buf.addr, align 8
  %cmp = icmp ne %struct._TempBuf* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.temp_buf_free, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i32 0, i32 0))
  br label %do.end.5

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %1 = load %struct._TempBuf*, %struct._TempBuf** %buf.addr, align 8
  %data = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %1, i32 0, i32 5
  %2 = load i8*, i8** %data, align 8
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %if.then.1, label %if.end.3

if.then.1:                                        ; preds = %do.end
  %3 = load %struct._TempBuf*, %struct._TempBuf** %buf.addr, align 8
  %data2 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %3, i32 0, i32 5
  %4 = load i8*, i8** %data2, align 8
  call void @g_free(i8* %4)
  br label %if.end.3

if.end.3:                                         ; preds = %if.then.1, %do.end
  br label %do.body.4

do.body.4:                                        ; preds = %if.end.3
  %5 = load %struct._TempBuf*, %struct._TempBuf** %buf.addr, align 8
  %6 = bitcast %struct._TempBuf* %5 to i8*
  call void @g_slice_free1(i64 32, i8* %6)
  br label %do.end.5

do.end.5:                                         ; preds = %if.else, %do.body.4
  ret void
}

declare void @g_free(i8*) #1

declare void @g_slice_free1(i64, i8*) #1

; Function Attrs: nounwind uwtable
define i8* @temp_buf_data_clear(%struct._TempBuf* %buf) #0 {
entry:
  %buf.addr = alloca %struct._TempBuf*, align 8
  store %struct._TempBuf* %buf, %struct._TempBuf** %buf.addr, align 8
  %0 = load %struct._TempBuf*, %struct._TempBuf** %buf.addr, align 8
  %data = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %0, i32 0, i32 5
  %1 = load i8*, i8** %data, align 8
  %2 = load %struct._TempBuf*, %struct._TempBuf** %buf.addr, align 8
  %height = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %2, i32 0, i32 2
  %3 = load i32, i32* %height, align 4
  %4 = load %struct._TempBuf*, %struct._TempBuf** %buf.addr, align 8
  %width = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %4, i32 0, i32 1
  %5 = load i32, i32* %width, align 4
  %mul = mul nsw i32 %3, %5
  %6 = load %struct._TempBuf*, %struct._TempBuf** %buf.addr, align 8
  %bytes = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %6, i32 0, i32 0
  %7 = load i32, i32* %bytes, align 4
  %mul1 = mul nsw i32 %mul, %7
  %conv = sext i32 %mul1 to i64
  call void @llvm.memset.p0i8.i64(i8* %1, i8 0, i64 %conv, i32 1, i1 false)
  %8 = load %struct._TempBuf*, %struct._TempBuf** %buf.addr, align 8
  %data2 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %8, i32 0, i32 5
  %9 = load i8*, i8** %data2, align 8
  ret i8* %9
}

; Function Attrs: nounwind uwtable
define i64 @temp_buf_get_memsize(%struct._TempBuf* %buf) #0 {
entry:
  %retval = alloca i64, align 8
  %buf.addr = alloca %struct._TempBuf*, align 8
  store %struct._TempBuf* %buf, %struct._TempBuf** %buf.addr, align 8
  %0 = load %struct._TempBuf*, %struct._TempBuf** %buf.addr, align 8
  %tobool = icmp ne %struct._TempBuf* %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct._TempBuf*, %struct._TempBuf** %buf.addr, align 8
  %call = call i64 @temp_buf_get_data_size(%struct._TempBuf* %1)
  %add = add i64 32, %call
  store i64 %add, i64* %retval
  br label %return

if.end:                                           ; preds = %entry
  store i64 0, i64* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %2 = load i64, i64* %retval
  ret i64 %2
}

; Function Attrs: nounwind uwtable
define void @temp_buf_dump(%struct._TempBuf* %buf, i8* %filename) #0 {
entry:
  %buf.addr = alloca %struct._TempBuf*, align 8
  %filename.addr = alloca i8*, align 8
  %fd = alloca i32, align 4
  store %struct._TempBuf* %buf, %struct._TempBuf** %buf.addr, align 8
  store i8* %filename, i8** %filename.addr, align 8
  %0 = load i8*, i8** %filename.addr, align 8
  %call = call i32 (i8*, i32, ...) @open(i8* %0, i32 577, i32 438)
  store i32 %call, i32* %fd, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %1 = load i32, i32* %fd, align 4
  %cmp = icmp ne i32 %1, -1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.temp_buf_dump, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i32 0, i32 0))
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %do.body.1

do.body.1:                                        ; preds = %do.end
  %2 = load %struct._TempBuf*, %struct._TempBuf** %buf.addr, align 8
  %cmp2 = icmp ne %struct._TempBuf* %2, null
  br i1 %cmp2, label %if.then.3, label %if.else.4

if.then.3:                                        ; preds = %do.body.1
  br label %if.end.5

if.else.4:                                        ; preds = %do.body.1
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.temp_buf_dump, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i32 0, i32 0))
  br label %return

if.end.5:                                         ; preds = %if.then.3
  br label %do.end.6

do.end.6:                                         ; preds = %if.end.5
  br label %do.body.7

do.body.7:                                        ; preds = %do.end.6
  %3 = load %struct._TempBuf*, %struct._TempBuf** %buf.addr, align 8
  %call8 = call i8* @temp_buf_get_data(%struct._TempBuf* %3)
  %cmp9 = icmp ne i8* %call8, null
  br i1 %cmp9, label %if.then.10, label %if.else.11

if.then.10:                                       ; preds = %do.body.7
  br label %if.end.12

if.else.11:                                       ; preds = %do.body.7
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.temp_buf_dump, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.16, i32 0, i32 0))
  br label %return

if.end.12:                                        ; preds = %if.then.10
  br label %do.end.13

do.end.13:                                        ; preds = %if.end.12
  %4 = load i32, i32* %fd, align 4
  %5 = load %struct._TempBuf*, %struct._TempBuf** %buf.addr, align 8
  %call14 = call i8* @temp_buf_get_data(%struct._TempBuf* %5)
  %6 = load %struct._TempBuf*, %struct._TempBuf** %buf.addr, align 8
  %call15 = call i64 @temp_buf_get_data_size(%struct._TempBuf* %6)
  %call16 = call i64 @write(i32 %4, i8* %call14, i64 %call15)
  %7 = load i32, i32* %fd, align 4
  %call17 = call i32 @close(i32 %7)
  br label %return

return:                                           ; preds = %do.end.13, %if.else.11, %if.else.4, %if.else
  ret void
}

declare i32 @open(i8*, i32, ...) #1

declare i64 @write(i32, i8*, i64) #1

declare i32 @close(i32) #1

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #2

declare void @g_logv(i8*, i32, i8*, %struct.__va_list_tag*) #1

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
