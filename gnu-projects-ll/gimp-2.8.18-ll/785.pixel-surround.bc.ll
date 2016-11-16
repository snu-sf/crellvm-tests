; ModuleID = './app/base/pixel-surround.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._PixelSurround = type { %struct._TileManager*, i32, i32, i32, i32, i32, %struct._Tile*, i32, i32, i32, i32, i32, i8*, i8*, i32 }
%struct._Tile = type opaque
%struct._TileManager = type opaque

@.str = private unnamed_addr constant [10 x i8] c"Gimp-Base\00", align 1
@__func__.pixel_surround_new = private unnamed_addr constant [19 x i8] c"pixel_surround_new\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"tiles != NULL\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"width < TILE_WIDTH\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"height < TILE_WIDTH\00", align 1
@__func__.pixel_surround_destroy = private unnamed_addr constant [23 x i8] c"pixel_surround_destroy\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"surround != NULL\00", align 1

; Function Attrs: nounwind uwtable
define %struct._PixelSurround* @pixel_surround_new(%struct._TileManager* %tiles, i32 %width, i32 %height, i32 %mode) #0 {
entry:
  %retval = alloca %struct._PixelSurround*, align 8
  %tiles.addr = alloca %struct._TileManager*, align 8
  %width.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  %mode.addr = alloca i32, align 4
  %surround = alloca %struct._PixelSurround*, align 8
  store %struct._TileManager* %tiles, %struct._TileManager** %tiles.addr, align 8
  store i32 %width, i32* %width.addr, align 4
  store i32 %height, i32* %height.addr, align 4
  store i32 %mode, i32* %mode.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._TileManager*, %struct._TileManager** %tiles.addr, align 8
  %cmp = icmp ne %struct._TileManager* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.pixel_surround_new, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0))
  store %struct._PixelSurround* null, %struct._PixelSurround** %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %do.body.1

do.body.1:                                        ; preds = %do.end
  %1 = load i32, i32* %width.addr, align 4
  %cmp2 = icmp slt i32 %1, 64
  br i1 %cmp2, label %if.then.3, label %if.else.4

if.then.3:                                        ; preds = %do.body.1
  br label %if.end.5

if.else.4:                                        ; preds = %do.body.1
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.pixel_surround_new, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i32 0, i32 0))
  store %struct._PixelSurround* null, %struct._PixelSurround** %retval
  br label %return

if.end.5:                                         ; preds = %if.then.3
  br label %do.end.6

do.end.6:                                         ; preds = %if.end.5
  br label %do.body.7

do.body.7:                                        ; preds = %do.end.6
  %2 = load i32, i32* %height.addr, align 4
  %cmp8 = icmp slt i32 %2, 64
  br i1 %cmp8, label %if.then.9, label %if.else.10

if.then.9:                                        ; preds = %do.body.7
  br label %if.end.11

if.else.10:                                       ; preds = %do.body.7
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.pixel_surround_new, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i32 0, i32 0))
  store %struct._PixelSurround* null, %struct._PixelSurround** %retval
  br label %return

if.end.11:                                        ; preds = %if.then.9
  br label %do.end.12

do.end.12:                                        ; preds = %if.end.11
  %call = call noalias i8* @g_slice_alloc0(i64 88)
  %3 = bitcast i8* %call to %struct._PixelSurround*
  store %struct._PixelSurround* %3, %struct._PixelSurround** %surround, align 8
  %4 = load %struct._TileManager*, %struct._TileManager** %tiles.addr, align 8
  %5 = load %struct._PixelSurround*, %struct._PixelSurround** %surround, align 8
  %mgr = getelementptr inbounds %struct._PixelSurround, %struct._PixelSurround* %5, i32 0, i32 0
  store %struct._TileManager* %4, %struct._TileManager** %mgr, align 8
  %6 = load %struct._PixelSurround*, %struct._PixelSurround** %surround, align 8
  %mgr13 = getelementptr inbounds %struct._PixelSurround, %struct._PixelSurround* %6, i32 0, i32 0
  %7 = load %struct._TileManager*, %struct._TileManager** %mgr13, align 8
  %call14 = call i32 @tile_manager_width(%struct._TileManager* %7)
  %sub = sub nsw i32 %call14, 1
  %8 = load %struct._PixelSurround*, %struct._PixelSurround** %surround, align 8
  %xmax = getelementptr inbounds %struct._PixelSurround, %struct._PixelSurround* %8, i32 0, i32 1
  store i32 %sub, i32* %xmax, align 4
  %9 = load %struct._PixelSurround*, %struct._PixelSurround** %surround, align 8
  %mgr15 = getelementptr inbounds %struct._PixelSurround, %struct._PixelSurround* %9, i32 0, i32 0
  %10 = load %struct._TileManager*, %struct._TileManager** %mgr15, align 8
  %call16 = call i32 @tile_manager_height(%struct._TileManager* %10)
  %sub17 = sub nsw i32 %call16, 1
  %11 = load %struct._PixelSurround*, %struct._PixelSurround** %surround, align 8
  %ymax = getelementptr inbounds %struct._PixelSurround, %struct._PixelSurround* %11, i32 0, i32 2
  store i32 %sub17, i32* %ymax, align 4
  %12 = load %struct._TileManager*, %struct._TileManager** %tiles.addr, align 8
  %call18 = call i32 @tile_manager_bpp(%struct._TileManager* %12)
  %13 = load %struct._PixelSurround*, %struct._PixelSurround** %surround, align 8
  %bpp = getelementptr inbounds %struct._PixelSurround, %struct._PixelSurround* %13, i32 0, i32 3
  store i32 %call18, i32* %bpp, align 4
  %14 = load i32, i32* %width.addr, align 4
  %15 = load %struct._PixelSurround*, %struct._PixelSurround** %surround, align 8
  %w = getelementptr inbounds %struct._PixelSurround, %struct._PixelSurround* %15, i32 0, i32 4
  store i32 %14, i32* %w, align 4
  %16 = load i32, i32* %height.addr, align 4
  %17 = load %struct._PixelSurround*, %struct._PixelSurround** %surround, align 8
  %h = getelementptr inbounds %struct._PixelSurround, %struct._PixelSurround* %17, i32 0, i32 5
  store i32 %16, i32* %h, align 4
  %18 = load i32, i32* %width.addr, align 4
  %19 = load %struct._PixelSurround*, %struct._PixelSurround** %surround, align 8
  %bpp19 = getelementptr inbounds %struct._PixelSurround, %struct._PixelSurround* %19, i32 0, i32 3
  %20 = load i32, i32* %bpp19, align 4
  %mul = mul nsw i32 %18, %20
  %21 = load %struct._PixelSurround*, %struct._PixelSurround** %surround, align 8
  %rowstride = getelementptr inbounds %struct._PixelSurround, %struct._PixelSurround* %21, i32 0, i32 11
  store i32 %mul, i32* %rowstride, align 4
  %22 = load %struct._PixelSurround*, %struct._PixelSurround** %surround, align 8
  %rowstride20 = getelementptr inbounds %struct._PixelSurround, %struct._PixelSurround* %22, i32 0, i32 11
  %23 = load i32, i32* %rowstride20, align 4
  %24 = load i32, i32* %height.addr, align 4
  %mul21 = mul nsw i32 %23, %24
  %conv = sext i32 %mul21 to i64
  %call22 = call noalias i8* @g_malloc0_n(i64 %conv, i64 1)
  %25 = load %struct._PixelSurround*, %struct._PixelSurround** %surround, align 8
  %bg = getelementptr inbounds %struct._PixelSurround, %struct._PixelSurround* %25, i32 0, i32 12
  store i8* %call22, i8** %bg, align 8
  %26 = load %struct._PixelSurround*, %struct._PixelSurround** %surround, align 8
  %rowstride23 = getelementptr inbounds %struct._PixelSurround, %struct._PixelSurround* %26, i32 0, i32 11
  %27 = load i32, i32* %rowstride23, align 4
  %28 = load i32, i32* %height.addr, align 4
  %mul24 = mul nsw i32 %27, %28
  %conv25 = sext i32 %mul24 to i64
  %call26 = call noalias i8* @g_malloc_n(i64 %conv25, i64 1)
  %29 = load %struct._PixelSurround*, %struct._PixelSurround** %surround, align 8
  %buf = getelementptr inbounds %struct._PixelSurround, %struct._PixelSurround* %29, i32 0, i32 13
  store i8* %call26, i8** %buf, align 8
  %30 = load i32, i32* %mode.addr, align 4
  %31 = load %struct._PixelSurround*, %struct._PixelSurround** %surround, align 8
  %mode27 = getelementptr inbounds %struct._PixelSurround, %struct._PixelSurround* %31, i32 0, i32 14
  store i32 %30, i32* %mode27, align 4
  %32 = load %struct._PixelSurround*, %struct._PixelSurround** %surround, align 8
  store %struct._PixelSurround* %32, %struct._PixelSurround** %retval
  br label %return

return:                                           ; preds = %do.end.12, %if.else.10, %if.else.4, %if.else
  %33 = load %struct._PixelSurround*, %struct._PixelSurround** %retval
  ret %struct._PixelSurround* %33
}

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

declare noalias i8* @g_slice_alloc0(i64) #1

declare i32 @tile_manager_width(%struct._TileManager*) #1

declare i32 @tile_manager_height(%struct._TileManager*) #1

declare i32 @tile_manager_bpp(%struct._TileManager*) #1

declare noalias i8* @g_malloc0_n(i64, i64) #1

declare noalias i8* @g_malloc_n(i64, i64) #1

; Function Attrs: nounwind uwtable
define void @pixel_surround_set_bg(%struct._PixelSurround* %surround, i8* %bg) #0 {
entry:
  %surround.addr = alloca %struct._PixelSurround*, align 8
  %bg.addr = alloca i8*, align 8
  %dest = alloca i8*, align 8
  %pixels = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct._PixelSurround* %surround, %struct._PixelSurround** %surround.addr, align 8
  store i8* %bg, i8** %bg.addr, align 8
  %0 = load %struct._PixelSurround*, %struct._PixelSurround** %surround.addr, align 8
  %bg1 = getelementptr inbounds %struct._PixelSurround, %struct._PixelSurround* %0, i32 0, i32 12
  %1 = load i8*, i8** %bg1, align 8
  store i8* %1, i8** %dest, align 8
  %2 = load %struct._PixelSurround*, %struct._PixelSurround** %surround.addr, align 8
  %w = getelementptr inbounds %struct._PixelSurround, %struct._PixelSurround* %2, i32 0, i32 4
  %3 = load i32, i32* %w, align 4
  %4 = load %struct._PixelSurround*, %struct._PixelSurround** %surround.addr, align 8
  %h = getelementptr inbounds %struct._PixelSurround, %struct._PixelSurround* %4, i32 0, i32 5
  %5 = load i32, i32* %h, align 4
  %mul = mul nsw i32 %3, %5
  store i32 %mul, i32* %pixels, align 4
  br label %while.cond

while.cond:                                       ; preds = %for.end, %entry
  %6 = load i32, i32* %pixels, align 4
  %dec = add nsw i32 %6, -1
  store i32 %dec, i32* %pixels, align 4
  %tobool = icmp ne i32 %6, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.body
  %7 = load i32, i32* %i, align 4
  %8 = load %struct._PixelSurround*, %struct._PixelSurround** %surround.addr, align 8
  %bpp = getelementptr inbounds %struct._PixelSurround, %struct._PixelSurround* %8, i32 0, i32 3
  %9 = load i32, i32* %bpp, align 4
  %cmp = icmp slt i32 %7, %9
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load i32, i32* %i, align 4
  %idxprom = sext i32 %10 to i64
  %11 = load i8*, i8** %bg.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %11, i64 %idxprom
  %12 = load i8, i8* %arrayidx, align 1
  %13 = load i8*, i8** %dest, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %13, i32 1
  store i8* %incdec.ptr, i8** %dest, align 8
  store i8 %12, i8* %13, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %14 = load i32, i32* %i, align 4
  %inc = add nsw i32 %14, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: nounwind uwtable
define i8* @pixel_surround_lock(%struct._PixelSurround* %surround, i32 %x, i32 %y, i32* %rowstride) #0 {
entry:
  %retval = alloca i8*, align 8
  %surround.addr = alloca %struct._PixelSurround*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %rowstride.addr = alloca i32*, align 8
  %src = alloca i8*, align 8
  %w = alloca i32, align 4
  %h = alloca i32, align 4
  %dest = alloca i8*, align 8
  %inc = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %rows = alloca i32, align 4
  store %struct._PixelSurround* %surround, %struct._PixelSurround** %surround.addr, align 8
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  store i32* %rowstride, i32** %rowstride.addr, align 8
  %0 = load %struct._PixelSurround*, %struct._PixelSurround** %surround.addr, align 8
  %1 = load i32, i32* %x.addr, align 4
  %2 = load i32, i32* %y.addr, align 4
  %3 = load i32*, i32** %rowstride.addr, align 8
  %call = call i8* @pixel_surround_get_data(%struct._PixelSurround* %0, i32 %1, i32 %2, i32* %w, i32* %h, i32* %3)
  store i8* %call, i8** %src, align 8
  %4 = load i32, i32* %w, align 4
  %5 = load %struct._PixelSurround*, %struct._PixelSurround** %surround.addr, align 8
  %w1 = getelementptr inbounds %struct._PixelSurround, %struct._PixelSurround* %5, i32 0, i32 4
  %6 = load i32, i32* %w1, align 4
  %cmp = icmp sge i32 %4, %6
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %7 = load i32, i32* %h, align 4
  %8 = load %struct._PixelSurround*, %struct._PixelSurround** %surround.addr, align 8
  %h2 = getelementptr inbounds %struct._PixelSurround, %struct._PixelSurround* %8, i32 0, i32 5
  %9 = load i32, i32* %h2, align 4
  %cmp3 = icmp sge i32 %7, %9
  br i1 %cmp3, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %10 = load i8*, i8** %src, align 8
  store i8* %10, i8** %retval
  br label %return

if.else:                                          ; preds = %land.lhs.true, %entry
  %11 = load %struct._PixelSurround*, %struct._PixelSurround** %surround.addr, align 8
  %buf = getelementptr inbounds %struct._PixelSurround, %struct._PixelSurround* %11, i32 0, i32 13
  %12 = load i8*, i8** %buf, align 8
  store i8* %12, i8** %dest, align 8
  %13 = load %struct._PixelSurround*, %struct._PixelSurround** %surround.addr, align 8
  %w4 = getelementptr inbounds %struct._PixelSurround, %struct._PixelSurround* %13, i32 0, i32 4
  %14 = load i32, i32* %w4, align 4
  store i32 %14, i32* %inc, align 4
  store i32 0, i32* %i, align 4
  store i32 0, i32* %j, align 4
  br label %start
                                                  ; No predecessors!
  br label %while.cond

while.cond:                                       ; preds = %for.end, %15
  %16 = load i32, i32* %i, align 4
  %17 = load %struct._PixelSurround*, %struct._PixelSurround** %surround.addr, align 8
  %w5 = getelementptr inbounds %struct._PixelSurround, %struct._PixelSurround* %17, i32 0, i32 4
  %18 = load i32, i32* %w5, align 4
  %cmp6 = icmp slt i32 %16, %18
  br i1 %cmp6, label %while.body, label %while.end.42

while.body:                                       ; preds = %while.cond
  %19 = load %struct._PixelSurround*, %struct._PixelSurround** %surround.addr, align 8
  %buf7 = getelementptr inbounds %struct._PixelSurround, %struct._PixelSurround* %19, i32 0, i32 13
  %20 = load i8*, i8** %buf7, align 8
  %21 = load i32, i32* %i, align 4
  %22 = load %struct._PixelSurround*, %struct._PixelSurround** %surround.addr, align 8
  %bpp = getelementptr inbounds %struct._PixelSurround, %struct._PixelSurround* %22, i32 0, i32 3
  %23 = load i32, i32* %bpp, align 4
  %mul = mul nsw i32 %21, %23
  %idx.ext = sext i32 %mul to i64
  %add.ptr = getelementptr inbounds i8, i8* %20, i64 %idx.ext
  store i8* %add.ptr, i8** %dest, align 8
  store i32 0, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %cond.end.39, %while.body
  %24 = load i32, i32* %j, align 4
  %25 = load %struct._PixelSurround*, %struct._PixelSurround** %surround.addr, align 8
  %h8 = getelementptr inbounds %struct._PixelSurround, %struct._PixelSurround* %25, i32 0, i32 5
  %26 = load i32, i32* %h8, align 4
  %cmp9 = icmp slt i32 %24, %26
  br i1 %cmp9, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %27 = load %struct._PixelSurround*, %struct._PixelSurround** %surround.addr, align 8
  %28 = load i32, i32* %x.addr, align 4
  %29 = load i32, i32* %i, align 4
  %add = add nsw i32 %28, %29
  %30 = load i32, i32* %y.addr, align 4
  %31 = load i32, i32* %j, align 4
  %add10 = add nsw i32 %30, %31
  %32 = load i32*, i32** %rowstride.addr, align 8
  %call11 = call i8* @pixel_surround_get_data(%struct._PixelSurround* %27, i32 %add, i32 %add10, i32* %w, i32* %h, i32* %32)
  store i8* %call11, i8** %src, align 8
  br label %start

start:                                            ; preds = %for.body, %if.else
  %33 = load i32, i32* %w, align 4
  %34 = load %struct._PixelSurround*, %struct._PixelSurround** %surround.addr, align 8
  %w12 = getelementptr inbounds %struct._PixelSurround, %struct._PixelSurround* %34, i32 0, i32 4
  %35 = load i32, i32* %w12, align 4
  %36 = load i32, i32* %i, align 4
  %sub = sub nsw i32 %35, %36
  %cmp13 = icmp slt i32 %33, %sub
  br i1 %cmp13, label %cond.true, label %cond.false

cond.true:                                        ; preds = %start
  %37 = load i32, i32* %w, align 4
  br label %cond.end

cond.false:                                       ; preds = %start
  %38 = load %struct._PixelSurround*, %struct._PixelSurround** %surround.addr, align 8
  %w14 = getelementptr inbounds %struct._PixelSurround, %struct._PixelSurround* %38, i32 0, i32 4
  %39 = load i32, i32* %w14, align 4
  %40 = load i32, i32* %i, align 4
  %sub15 = sub nsw i32 %39, %40
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %37, %cond.true ], [ %sub15, %cond.false ]
  store i32 %cond, i32* %w, align 4
  %41 = load i32, i32* %h, align 4
  %42 = load %struct._PixelSurround*, %struct._PixelSurround** %surround.addr, align 8
  %h16 = getelementptr inbounds %struct._PixelSurround, %struct._PixelSurround* %42, i32 0, i32 5
  %43 = load i32, i32* %h16, align 4
  %44 = load i32, i32* %j, align 4
  %sub17 = sub nsw i32 %43, %44
  %cmp18 = icmp slt i32 %41, %sub17
  br i1 %cmp18, label %cond.true.19, label %cond.false.20

cond.true.19:                                     ; preds = %cond.end
  %45 = load i32, i32* %h, align 4
  br label %cond.end.23

cond.false.20:                                    ; preds = %cond.end
  %46 = load %struct._PixelSurround*, %struct._PixelSurround** %surround.addr, align 8
  %h21 = getelementptr inbounds %struct._PixelSurround, %struct._PixelSurround* %46, i32 0, i32 5
  %47 = load i32, i32* %h21, align 4
  %48 = load i32, i32* %j, align 4
  %sub22 = sub nsw i32 %47, %48
  br label %cond.end.23

cond.end.23:                                      ; preds = %cond.false.20, %cond.true.19
  %cond24 = phi i32 [ %45, %cond.true.19 ], [ %sub22, %cond.false.20 ]
  store i32 %cond24, i32* %h, align 4
  %49 = load i32, i32* %h, align 4
  store i32 %49, i32* %rows, align 4
  br label %while.cond.25

while.cond.25:                                    ; preds = %while.body.26, %cond.end.23
  %50 = load i32, i32* %rows, align 4
  %dec = add nsw i32 %50, -1
  store i32 %dec, i32* %rows, align 4
  %tobool = icmp ne i32 %50, 0
  br i1 %tobool, label %while.body.26, label %while.end

while.body.26:                                    ; preds = %while.cond.25
  %51 = load i8*, i8** %dest, align 8
  %52 = load i8*, i8** %src, align 8
  %53 = load i32, i32* %w, align 4
  %54 = load %struct._PixelSurround*, %struct._PixelSurround** %surround.addr, align 8
  %bpp27 = getelementptr inbounds %struct._PixelSurround, %struct._PixelSurround* %54, i32 0, i32 3
  %55 = load i32, i32* %bpp27, align 4
  %mul28 = mul nsw i32 %53, %55
  %conv = sext i32 %mul28 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %51, i8* %52, i64 %conv, i32 1, i1 false)
  %56 = load i32*, i32** %rowstride.addr, align 8
  %57 = load i32, i32* %56, align 4
  %58 = load i8*, i8** %src, align 8
  %idx.ext29 = sext i32 %57 to i64
  %add.ptr30 = getelementptr inbounds i8, i8* %58, i64 %idx.ext29
  store i8* %add.ptr30, i8** %src, align 8
  %59 = load %struct._PixelSurround*, %struct._PixelSurround** %surround.addr, align 8
  %rowstride31 = getelementptr inbounds %struct._PixelSurround, %struct._PixelSurround* %59, i32 0, i32 11
  %60 = load i32, i32* %rowstride31, align 4
  %61 = load i8*, i8** %dest, align 8
  %idx.ext32 = sext i32 %60 to i64
  %add.ptr33 = getelementptr inbounds i8, i8* %61, i64 %idx.ext32
  store i8* %add.ptr33, i8** %dest, align 8
  br label %while.cond.25

while.end:                                        ; preds = %while.cond.25
  %62 = load i32, i32* %h, align 4
  %63 = load i32, i32* %j, align 4
  %add34 = add nsw i32 %63, %62
  store i32 %add34, i32* %j, align 4
  %64 = load i32, i32* %inc, align 4
  %65 = load i32, i32* %w, align 4
  %cmp35 = icmp slt i32 %64, %65
  br i1 %cmp35, label %cond.true.37, label %cond.false.38

cond.true.37:                                     ; preds = %while.end
  %66 = load i32, i32* %inc, align 4
  br label %cond.end.39

cond.false.38:                                    ; preds = %while.end
  %67 = load i32, i32* %w, align 4
  br label %cond.end.39

cond.end.39:                                      ; preds = %cond.false.38, %cond.true.37
  %cond40 = phi i32 [ %66, %cond.true.37 ], [ %67, %cond.false.38 ]
  store i32 %cond40, i32* %inc, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %68 = load i32, i32* %inc, align 4
  %69 = load i32, i32* %i, align 4
  %add41 = add nsw i32 %69, %68
  store i32 %add41, i32* %i, align 4
  br label %while.cond

while.end.42:                                     ; preds = %while.cond
  br label %if.end

if.end:                                           ; preds = %while.end.42
  %70 = load %struct._PixelSurround*, %struct._PixelSurround** %surround.addr, align 8
  %rowstride43 = getelementptr inbounds %struct._PixelSurround, %struct._PixelSurround* %70, i32 0, i32 11
  %71 = load i32, i32* %rowstride43, align 4
  %72 = load i32*, i32** %rowstride.addr, align 8
  store i32 %71, i32* %72, align 4
  %73 = load %struct._PixelSurround*, %struct._PixelSurround** %surround.addr, align 8
  %buf44 = getelementptr inbounds %struct._PixelSurround, %struct._PixelSurround* %73, i32 0, i32 13
  %74 = load i8*, i8** %buf44, align 8
  store i8* %74, i8** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %75 = load i8*, i8** %retval
  ret i8* %75
}

; Function Attrs: nounwind uwtable
define internal i8* @pixel_surround_get_data(%struct._PixelSurround* %surround, i32 %x, i32 %y, i32* %w, i32* %h, i32* %rowstride) #0 {
entry:
  %retval = alloca i8*, align 8
  %surround.addr = alloca %struct._PixelSurround*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %w.addr = alloca i32*, align 8
  %h.addr = alloca i32*, align 8
  %rowstride.addr = alloca i32*, align 8
  %edata = alloca i8*, align 8
  %ex = alloca i32, align 4
  %ey = alloca i32, align 4
  %ew = alloca i32, align 4
  %eh = alloca i32, align 4
  %estride = alloca i32, align 4
  %ecode = alloca i32, align 4
  store %struct._PixelSurround* %surround, %struct._PixelSurround** %surround.addr, align 8
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  store i32* %w, i32** %w.addr, align 8
  store i32* %h, i32** %h.addr, align 8
  store i32* %rowstride, i32** %rowstride.addr, align 8
  %0 = load %struct._PixelSurround*, %struct._PixelSurround** %surround.addr, align 8
  %tile = getelementptr inbounds %struct._PixelSurround, %struct._PixelSurround* %0, i32 0, i32 6
  %1 = load %struct._Tile*, %struct._Tile** %tile, align 8
  %tobool = icmp ne %struct._Tile* %1, null
  br i1 %tobool, label %if.then, label %if.end.12

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %x.addr, align 4
  %3 = load %struct._PixelSurround*, %struct._PixelSurround** %surround.addr, align 8
  %tile_x = getelementptr inbounds %struct._PixelSurround, %struct._PixelSurround* %3, i32 0, i32 7
  %4 = load i32, i32* %tile_x, align 4
  %cmp = icmp slt i32 %2, %4
  br i1 %cmp, label %if.then.9, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then
  %5 = load i32, i32* %x.addr, align 4
  %6 = load %struct._PixelSurround*, %struct._PixelSurround** %surround.addr, align 8
  %tile_x1 = getelementptr inbounds %struct._PixelSurround, %struct._PixelSurround* %6, i32 0, i32 7
  %7 = load i32, i32* %tile_x1, align 4
  %8 = load %struct._PixelSurround*, %struct._PixelSurround** %surround.addr, align 8
  %tile_w = getelementptr inbounds %struct._PixelSurround, %struct._PixelSurround* %8, i32 0, i32 9
  %9 = load i32, i32* %tile_w, align 4
  %add = add nsw i32 %7, %9
  %cmp2 = icmp sge i32 %5, %add
  br i1 %cmp2, label %if.then.9, label %lor.lhs.false.3

lor.lhs.false.3:                                  ; preds = %lor.lhs.false
  %10 = load i32, i32* %y.addr, align 4
  %11 = load %struct._PixelSurround*, %struct._PixelSurround** %surround.addr, align 8
  %tile_y = getelementptr inbounds %struct._PixelSurround, %struct._PixelSurround* %11, i32 0, i32 8
  %12 = load i32, i32* %tile_y, align 4
  %cmp4 = icmp slt i32 %10, %12
  br i1 %cmp4, label %if.then.9, label %lor.lhs.false.5

lor.lhs.false.5:                                  ; preds = %lor.lhs.false.3
  %13 = load i32, i32* %y.addr, align 4
  %14 = load %struct._PixelSurround*, %struct._PixelSurround** %surround.addr, align 8
  %tile_y6 = getelementptr inbounds %struct._PixelSurround, %struct._PixelSurround* %14, i32 0, i32 8
  %15 = load i32, i32* %tile_y6, align 4
  %16 = load %struct._PixelSurround*, %struct._PixelSurround** %surround.addr, align 8
  %tile_h = getelementptr inbounds %struct._PixelSurround, %struct._PixelSurround* %16, i32 0, i32 10
  %17 = load i32, i32* %tile_h, align 4
  %add7 = add nsw i32 %15, %17
  %cmp8 = icmp sge i32 %13, %add7
  br i1 %cmp8, label %if.then.9, label %if.end

if.then.9:                                        ; preds = %lor.lhs.false.5, %lor.lhs.false.3, %lor.lhs.false, %if.then
  %18 = load %struct._PixelSurround*, %struct._PixelSurround** %surround.addr, align 8
  %tile10 = getelementptr inbounds %struct._PixelSurround, %struct._PixelSurround* %18, i32 0, i32 6
  %19 = load %struct._Tile*, %struct._Tile** %tile10, align 8
  call void @tile_release(%struct._Tile* %19, i32 0)
  %20 = load %struct._PixelSurround*, %struct._PixelSurround** %surround.addr, align 8
  %tile11 = getelementptr inbounds %struct._PixelSurround, %struct._PixelSurround* %20, i32 0, i32 6
  store %struct._Tile* null, %struct._Tile** %tile11, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.9, %lor.lhs.false.5
  br label %if.end.12

if.end.12:                                        ; preds = %if.end, %entry
  %21 = load %struct._PixelSurround*, %struct._PixelSurround** %surround.addr, align 8
  %tile13 = getelementptr inbounds %struct._PixelSurround, %struct._PixelSurround* %21, i32 0, i32 6
  %22 = load %struct._Tile*, %struct._Tile** %tile13, align 8
  %tobool14 = icmp ne %struct._Tile* %22, null
  br i1 %tobool14, label %if.end.30, label %if.then.15

if.then.15:                                       ; preds = %if.end.12
  %23 = load %struct._PixelSurround*, %struct._PixelSurround** %surround.addr, align 8
  %mgr = getelementptr inbounds %struct._PixelSurround, %struct._PixelSurround* %23, i32 0, i32 0
  %24 = load %struct._TileManager*, %struct._TileManager** %mgr, align 8
  %25 = load i32, i32* %x.addr, align 4
  %26 = load i32, i32* %y.addr, align 4
  %call = call %struct._Tile* @tile_manager_get_tile(%struct._TileManager* %24, i32 %25, i32 %26, i32 1, i32 0)
  %27 = load %struct._PixelSurround*, %struct._PixelSurround** %surround.addr, align 8
  %tile16 = getelementptr inbounds %struct._PixelSurround, %struct._PixelSurround* %27, i32 0, i32 6
  store %struct._Tile* %call, %struct._Tile** %tile16, align 8
  %28 = load %struct._PixelSurround*, %struct._PixelSurround** %surround.addr, align 8
  %tile17 = getelementptr inbounds %struct._PixelSurround, %struct._PixelSurround* %28, i32 0, i32 6
  %29 = load %struct._Tile*, %struct._Tile** %tile17, align 8
  %tobool18 = icmp ne %struct._Tile* %29, null
  br i1 %tobool18, label %if.then.19, label %if.end.29

if.then.19:                                       ; preds = %if.then.15
  %30 = load i32, i32* %x.addr, align 4
  %and = and i32 %30, -64
  %31 = load %struct._PixelSurround*, %struct._PixelSurround** %surround.addr, align 8
  %tile_x20 = getelementptr inbounds %struct._PixelSurround, %struct._PixelSurround* %31, i32 0, i32 7
  store i32 %and, i32* %tile_x20, align 4
  %32 = load i32, i32* %y.addr, align 4
  %and21 = and i32 %32, -64
  %33 = load %struct._PixelSurround*, %struct._PixelSurround** %surround.addr, align 8
  %tile_y22 = getelementptr inbounds %struct._PixelSurround, %struct._PixelSurround* %33, i32 0, i32 8
  store i32 %and21, i32* %tile_y22, align 4
  %34 = load %struct._PixelSurround*, %struct._PixelSurround** %surround.addr, align 8
  %tile23 = getelementptr inbounds %struct._PixelSurround, %struct._PixelSurround* %34, i32 0, i32 6
  %35 = load %struct._Tile*, %struct._Tile** %tile23, align 8
  %call24 = call i32 @tile_ewidth(%struct._Tile* %35)
  %36 = load %struct._PixelSurround*, %struct._PixelSurround** %surround.addr, align 8
  %tile_w25 = getelementptr inbounds %struct._PixelSurround, %struct._PixelSurround* %36, i32 0, i32 9
  store i32 %call24, i32* %tile_w25, align 4
  %37 = load %struct._PixelSurround*, %struct._PixelSurround** %surround.addr, align 8
  %tile26 = getelementptr inbounds %struct._PixelSurround, %struct._PixelSurround* %37, i32 0, i32 6
  %38 = load %struct._Tile*, %struct._Tile** %tile26, align 8
  %call27 = call i32 @tile_eheight(%struct._Tile* %38)
  %39 = load %struct._PixelSurround*, %struct._PixelSurround** %surround.addr, align 8
  %tile_h28 = getelementptr inbounds %struct._PixelSurround, %struct._PixelSurround* %39, i32 0, i32 10
  store i32 %call27, i32* %tile_h28, align 4
  br label %if.end.29

if.end.29:                                        ; preds = %if.then.19, %if.then.15
  br label %if.end.30

if.end.30:                                        ; preds = %if.end.29, %if.end.12
  %40 = load %struct._PixelSurround*, %struct._PixelSurround** %surround.addr, align 8
  %tile31 = getelementptr inbounds %struct._PixelSurround, %struct._PixelSurround* %40, i32 0, i32 6
  %41 = load %struct._Tile*, %struct._Tile** %tile31, align 8
  %tobool32 = icmp ne %struct._Tile* %41, null
  br i1 %tobool32, label %if.then.33, label %if.end.44

if.then.33:                                       ; preds = %if.end.30
  %42 = load %struct._PixelSurround*, %struct._PixelSurround** %surround.addr, align 8
  %tile_x34 = getelementptr inbounds %struct._PixelSurround, %struct._PixelSurround* %42, i32 0, i32 7
  %43 = load i32, i32* %tile_x34, align 4
  %44 = load %struct._PixelSurround*, %struct._PixelSurround** %surround.addr, align 8
  %tile_w35 = getelementptr inbounds %struct._PixelSurround, %struct._PixelSurround* %44, i32 0, i32 9
  %45 = load i32, i32* %tile_w35, align 4
  %add36 = add nsw i32 %43, %45
  %46 = load i32, i32* %x.addr, align 4
  %sub = sub nsw i32 %add36, %46
  %47 = load i32*, i32** %w.addr, align 8
  store i32 %sub, i32* %47, align 4
  %48 = load %struct._PixelSurround*, %struct._PixelSurround** %surround.addr, align 8
  %tile_y37 = getelementptr inbounds %struct._PixelSurround, %struct._PixelSurround* %48, i32 0, i32 8
  %49 = load i32, i32* %tile_y37, align 4
  %50 = load %struct._PixelSurround*, %struct._PixelSurround** %surround.addr, align 8
  %tile_h38 = getelementptr inbounds %struct._PixelSurround, %struct._PixelSurround* %50, i32 0, i32 10
  %51 = load i32, i32* %tile_h38, align 4
  %add39 = add nsw i32 %49, %51
  %52 = load i32, i32* %y.addr, align 4
  %sub40 = sub nsw i32 %add39, %52
  %53 = load i32*, i32** %h.addr, align 8
  store i32 %sub40, i32* %53, align 4
  %54 = load %struct._PixelSurround*, %struct._PixelSurround** %surround.addr, align 8
  %tile_w41 = getelementptr inbounds %struct._PixelSurround, %struct._PixelSurround* %54, i32 0, i32 9
  %55 = load i32, i32* %tile_w41, align 4
  %56 = load %struct._PixelSurround*, %struct._PixelSurround** %surround.addr, align 8
  %bpp = getelementptr inbounds %struct._PixelSurround, %struct._PixelSurround* %56, i32 0, i32 3
  %57 = load i32, i32* %bpp, align 4
  %mul = mul nsw i32 %55, %57
  %58 = load i32*, i32** %rowstride.addr, align 8
  store i32 %mul, i32* %58, align 4
  %59 = load %struct._PixelSurround*, %struct._PixelSurround** %surround.addr, align 8
  %tile42 = getelementptr inbounds %struct._PixelSurround, %struct._PixelSurround* %59, i32 0, i32 6
  %60 = load %struct._Tile*, %struct._Tile** %tile42, align 8
  %61 = load i32, i32* %x.addr, align 4
  %62 = load i32, i32* %y.addr, align 4
  %call43 = call i8* @tile_data_pointer(%struct._Tile* %60, i32 %61, i32 %62)
  store i8* %call43, i8** %retval
  br label %return

if.end.44:                                        ; preds = %if.end.30
  %63 = load i32, i32* %x.addr, align 4
  %cmp45 = icmp slt i32 %63, 0
  br i1 %cmp45, label %if.then.46, label %if.else

if.then.46:                                       ; preds = %if.end.44
  %64 = load i32, i32* %x.addr, align 4
  %sub47 = sub nsw i32 0, %64
  %65 = load %struct._PixelSurround*, %struct._PixelSurround** %surround.addr, align 8
  %w48 = getelementptr inbounds %struct._PixelSurround, %struct._PixelSurround* %65, i32 0, i32 4
  %66 = load i32, i32* %w48, align 4
  %cmp49 = icmp slt i32 %sub47, %66
  br i1 %cmp49, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.46
  %67 = load i32, i32* %x.addr, align 4
  %sub50 = sub nsw i32 0, %67
  br label %cond.end

cond.false:                                       ; preds = %if.then.46
  %68 = load %struct._PixelSurround*, %struct._PixelSurround** %surround.addr, align 8
  %w51 = getelementptr inbounds %struct._PixelSurround, %struct._PixelSurround* %68, i32 0, i32 4
  %69 = load i32, i32* %w51, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %sub50, %cond.true ], [ %69, %cond.false ]
  %70 = load i32*, i32** %w.addr, align 8
  store i32 %cond, i32* %70, align 4
  br label %if.end.53

if.else:                                          ; preds = %if.end.44
  %71 = load %struct._PixelSurround*, %struct._PixelSurround** %surround.addr, align 8
  %w52 = getelementptr inbounds %struct._PixelSurround, %struct._PixelSurround* %71, i32 0, i32 4
  %72 = load i32, i32* %w52, align 4
  %73 = load i32*, i32** %w.addr, align 8
  store i32 %72, i32* %73, align 4
  br label %if.end.53

if.end.53:                                        ; preds = %if.else, %cond.end
  %74 = load i32, i32* %y.addr, align 4
  %cmp54 = icmp slt i32 %74, 0
  br i1 %cmp54, label %if.then.55, label %if.else.65

if.then.55:                                       ; preds = %if.end.53
  %75 = load i32, i32* %y.addr, align 4
  %sub56 = sub nsw i32 0, %75
  %76 = load %struct._PixelSurround*, %struct._PixelSurround** %surround.addr, align 8
  %h57 = getelementptr inbounds %struct._PixelSurround, %struct._PixelSurround* %76, i32 0, i32 5
  %77 = load i32, i32* %h57, align 4
  %cmp58 = icmp slt i32 %sub56, %77
  br i1 %cmp58, label %cond.true.59, label %cond.false.61

cond.true.59:                                     ; preds = %if.then.55
  %78 = load i32, i32* %y.addr, align 4
  %sub60 = sub nsw i32 0, %78
  br label %cond.end.63

cond.false.61:                                    ; preds = %if.then.55
  %79 = load %struct._PixelSurround*, %struct._PixelSurround** %surround.addr, align 8
  %h62 = getelementptr inbounds %struct._PixelSurround, %struct._PixelSurround* %79, i32 0, i32 5
  %80 = load i32, i32* %h62, align 4
  br label %cond.end.63

cond.end.63:                                      ; preds = %cond.false.61, %cond.true.59
  %cond64 = phi i32 [ %sub60, %cond.true.59 ], [ %80, %cond.false.61 ]
  %81 = load i32*, i32** %h.addr, align 8
  store i32 %cond64, i32* %81, align 4
  br label %if.end.67

if.else.65:                                       ; preds = %if.end.53
  %82 = load %struct._PixelSurround*, %struct._PixelSurround** %surround.addr, align 8
  %h66 = getelementptr inbounds %struct._PixelSurround, %struct._PixelSurround* %82, i32 0, i32 5
  %83 = load i32, i32* %h66, align 4
  %84 = load i32*, i32** %h.addr, align 8
  store i32 %83, i32* %84, align 4
  br label %if.end.67

if.end.67:                                        ; preds = %if.else.65, %cond.end.63
  %85 = load %struct._PixelSurround*, %struct._PixelSurround** %surround.addr, align 8
  %rowstride68 = getelementptr inbounds %struct._PixelSurround, %struct._PixelSurround* %85, i32 0, i32 11
  %86 = load i32, i32* %rowstride68, align 4
  %87 = load i32*, i32** %rowstride.addr, align 8
  store i32 %86, i32* %87, align 4
  %88 = load %struct._PixelSurround*, %struct._PixelSurround** %surround.addr, align 8
  %mode = getelementptr inbounds %struct._PixelSurround, %struct._PixelSurround* %88, i32 0, i32 14
  %89 = load i32, i32* %mode, align 4
  %cmp69 = icmp eq i32 %89, 0
  br i1 %cmp69, label %if.then.70, label %if.end.103

if.then.70:                                       ; preds = %if.end.67
  %90 = load i32, i32* %x.addr, align 4
  store i32 %90, i32* %ex, align 4
  %91 = load i32, i32* %y.addr, align 4
  store i32 %91, i32* %ey, align 4
  store i32 0, i32* %ecode, align 4
  %92 = load i32, i32* %ex, align 4
  %cmp71 = icmp slt i32 %92, 0
  br i1 %cmp71, label %if.then.72, label %if.else.73

if.then.72:                                       ; preds = %if.then.70
  store i32 0, i32* %ex, align 4
  %93 = load i32, i32* %ecode, align 4
  %or = or i32 %93, 1
  store i32 %or, i32* %ecode, align 4
  br label %if.end.79

if.else.73:                                       ; preds = %if.then.70
  %94 = load i32, i32* %ex, align 4
  %95 = load %struct._PixelSurround*, %struct._PixelSurround** %surround.addr, align 8
  %xmax = getelementptr inbounds %struct._PixelSurround, %struct._PixelSurround* %95, i32 0, i32 1
  %96 = load i32, i32* %xmax, align 4
  %cmp74 = icmp sgt i32 %94, %96
  br i1 %cmp74, label %if.then.75, label %if.end.78

if.then.75:                                       ; preds = %if.else.73
  %97 = load %struct._PixelSurround*, %struct._PixelSurround** %surround.addr, align 8
  %xmax76 = getelementptr inbounds %struct._PixelSurround, %struct._PixelSurround* %97, i32 0, i32 1
  %98 = load i32, i32* %xmax76, align 4
  store i32 %98, i32* %ex, align 4
  %99 = load i32, i32* %ecode, align 4
  %or77 = or i32 %99, 2
  store i32 %or77, i32* %ecode, align 4
  br label %if.end.78

if.end.78:                                        ; preds = %if.then.75, %if.else.73
  br label %if.end.79

if.end.79:                                        ; preds = %if.end.78, %if.then.72
  %100 = load i32, i32* %ey, align 4
  %cmp80 = icmp slt i32 %100, 0
  br i1 %cmp80, label %if.then.81, label %if.else.83

if.then.81:                                       ; preds = %if.end.79
  store i32 0, i32* %ey, align 4
  %101 = load i32, i32* %ecode, align 4
  %or82 = or i32 %101, 4
  store i32 %or82, i32* %ecode, align 4
  br label %if.end.89

if.else.83:                                       ; preds = %if.end.79
  %102 = load i32, i32* %ey, align 4
  %103 = load %struct._PixelSurround*, %struct._PixelSurround** %surround.addr, align 8
  %ymax = getelementptr inbounds %struct._PixelSurround, %struct._PixelSurround* %103, i32 0, i32 2
  %104 = load i32, i32* %ymax, align 4
  %cmp84 = icmp sgt i32 %102, %104
  br i1 %cmp84, label %if.then.85, label %if.end.88

if.then.85:                                       ; preds = %if.else.83
  %105 = load %struct._PixelSurround*, %struct._PixelSurround** %surround.addr, align 8
  %ymax86 = getelementptr inbounds %struct._PixelSurround, %struct._PixelSurround* %105, i32 0, i32 2
  %106 = load i32, i32* %ymax86, align 4
  store i32 %106, i32* %ey, align 4
  %107 = load i32, i32* %ecode, align 4
  %or87 = or i32 %107, 8
  store i32 %or87, i32* %ecode, align 4
  br label %if.end.88

if.end.88:                                        ; preds = %if.then.85, %if.else.83
  br label %if.end.89

if.end.89:                                        ; preds = %if.end.88, %if.then.81
  %108 = load %struct._PixelSurround*, %struct._PixelSurround** %surround.addr, align 8
  %109 = load i32, i32* %ex, align 4
  %110 = load i32, i32* %ey, align 4
  %call90 = call i8* @pixel_surround_get_data(%struct._PixelSurround* %108, i32 %109, i32 %110, i32* %ew, i32* %eh, i32* %estride)
  store i8* %call90, i8** %edata, align 8
  %111 = load i32, i32* %ecode, align 4
  switch i32 %111, label %sw.epilog [
    i32 5, label %sw.bb
    i32 6, label %sw.bb
    i32 9, label %sw.bb
    i32 10, label %sw.bb
    i32 4, label %sw.bb.91
    i32 8, label %sw.bb.91
    i32 1, label %sw.bb.97
    i32 2, label %sw.bb.97
  ]

sw.bb:                                            ; preds = %if.end.89, %if.end.89, %if.end.89, %if.end.89
  %112 = load %struct._PixelSurround*, %struct._PixelSurround** %surround.addr, align 8
  %113 = load i8*, i8** %edata, align 8
  call void @pixel_surround_set_bg(%struct._PixelSurround* %112, i8* %113)
  br label %sw.epilog

sw.bb.91:                                         ; preds = %if.end.89, %if.end.89
  %114 = load %struct._PixelSurround*, %struct._PixelSurround** %surround.addr, align 8
  %115 = load i8*, i8** %edata, align 8
  %116 = load i32, i32* %ew, align 4
  call void @pixel_surround_fill_row(%struct._PixelSurround* %114, i8* %115, i32 %116)
  %117 = load i32*, i32** %w.addr, align 8
  %118 = load i32, i32* %117, align 4
  %119 = load i32, i32* %ew, align 4
  %cmp92 = icmp slt i32 %118, %119
  br i1 %cmp92, label %cond.true.93, label %cond.false.94

cond.true.93:                                     ; preds = %sw.bb.91
  %120 = load i32*, i32** %w.addr, align 8
  %121 = load i32, i32* %120, align 4
  br label %cond.end.95

cond.false.94:                                    ; preds = %sw.bb.91
  %122 = load i32, i32* %ew, align 4
  br label %cond.end.95

cond.end.95:                                      ; preds = %cond.false.94, %cond.true.93
  %cond96 = phi i32 [ %121, %cond.true.93 ], [ %122, %cond.false.94 ]
  %123 = load i32*, i32** %w.addr, align 8
  store i32 %cond96, i32* %123, align 4
  br label %sw.epilog

sw.bb.97:                                         ; preds = %if.end.89, %if.end.89
  %124 = load %struct._PixelSurround*, %struct._PixelSurround** %surround.addr, align 8
  %125 = load i8*, i8** %edata, align 8
  %126 = load i32, i32* %estride, align 4
  %127 = load i32, i32* %eh, align 4
  call void @pixel_surround_fill_col(%struct._PixelSurround* %124, i8* %125, i32 %126, i32 %127)
  %128 = load i32*, i32** %h.addr, align 8
  %129 = load i32, i32* %128, align 4
  %130 = load i32, i32* %eh, align 4
  %cmp98 = icmp slt i32 %129, %130
  br i1 %cmp98, label %cond.true.99, label %cond.false.100

cond.true.99:                                     ; preds = %sw.bb.97
  %131 = load i32*, i32** %h.addr, align 8
  %132 = load i32, i32* %131, align 4
  br label %cond.end.101

cond.false.100:                                   ; preds = %sw.bb.97
  %133 = load i32, i32* %eh, align 4
  br label %cond.end.101

cond.end.101:                                     ; preds = %cond.false.100, %cond.true.99
  %cond102 = phi i32 [ %132, %cond.true.99 ], [ %133, %cond.false.100 ]
  %134 = load i32*, i32** %h.addr, align 8
  store i32 %cond102, i32* %134, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end.89, %cond.end.101, %cond.end.95, %sw.bb
  br label %if.end.103

if.end.103:                                       ; preds = %sw.epilog, %if.end.67
  %135 = load %struct._PixelSurround*, %struct._PixelSurround** %surround.addr, align 8
  %bg = getelementptr inbounds %struct._PixelSurround, %struct._PixelSurround* %135, i32 0, i32 12
  %136 = load i8*, i8** %bg, align 8
  store i8* %136, i8** %retval
  br label %return

return:                                           ; preds = %if.end.103, %if.then.33
  %137 = load i8*, i8** %retval
  ret i8* %137
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #2

; Function Attrs: nounwind uwtable
define void @pixel_surround_release(%struct._PixelSurround* %surround) #0 {
entry:
  %surround.addr = alloca %struct._PixelSurround*, align 8
  store %struct._PixelSurround* %surround, %struct._PixelSurround** %surround.addr, align 8
  %0 = load %struct._PixelSurround*, %struct._PixelSurround** %surround.addr, align 8
  %tile = getelementptr inbounds %struct._PixelSurround, %struct._PixelSurround* %0, i32 0, i32 6
  %1 = load %struct._Tile*, %struct._Tile** %tile, align 8
  %tobool = icmp ne %struct._Tile* %1, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct._PixelSurround*, %struct._PixelSurround** %surround.addr, align 8
  %tile1 = getelementptr inbounds %struct._PixelSurround, %struct._PixelSurround* %2, i32 0, i32 6
  %3 = load %struct._Tile*, %struct._Tile** %tile1, align 8
  call void @tile_release(%struct._Tile* %3, i32 0)
  %4 = load %struct._PixelSurround*, %struct._PixelSurround** %surround.addr, align 8
  %tile2 = getelementptr inbounds %struct._PixelSurround, %struct._PixelSurround* %4, i32 0, i32 6
  store %struct._Tile* null, %struct._Tile** %tile2, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare void @tile_release(%struct._Tile*, i32) #1

; Function Attrs: nounwind uwtable
define void @pixel_surround_destroy(%struct._PixelSurround* %surround) #0 {
entry:
  %surround.addr = alloca %struct._PixelSurround*, align 8
  store %struct._PixelSurround* %surround, %struct._PixelSurround** %surround.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._PixelSurround*, %struct._PixelSurround** %surround.addr, align 8
  %cmp = icmp ne %struct._PixelSurround* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.pixel_surround_destroy, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i32 0, i32 0))
  br label %do.end.2

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %1 = load %struct._PixelSurround*, %struct._PixelSurround** %surround.addr, align 8
  call void @pixel_surround_release(%struct._PixelSurround* %1)
  %2 = load %struct._PixelSurround*, %struct._PixelSurround** %surround.addr, align 8
  %buf = getelementptr inbounds %struct._PixelSurround, %struct._PixelSurround* %2, i32 0, i32 13
  %3 = load i8*, i8** %buf, align 8
  call void @g_free(i8* %3)
  %4 = load %struct._PixelSurround*, %struct._PixelSurround** %surround.addr, align 8
  %bg = getelementptr inbounds %struct._PixelSurround, %struct._PixelSurround* %4, i32 0, i32 12
  %5 = load i8*, i8** %bg, align 8
  call void @g_free(i8* %5)
  br label %do.body.1

do.body.1:                                        ; preds = %do.end
  %6 = load %struct._PixelSurround*, %struct._PixelSurround** %surround.addr, align 8
  %7 = bitcast %struct._PixelSurround* %6 to i8*
  call void @g_slice_free1(i64 88, i8* %7)
  br label %do.end.2

do.end.2:                                         ; preds = %if.else, %do.body.1
  ret void
}

declare void @g_free(i8*) #1

declare void @g_slice_free1(i64, i8*) #1

declare %struct._Tile* @tile_manager_get_tile(%struct._TileManager*, i32, i32, i32, i32) #1

declare i32 @tile_ewidth(%struct._Tile*) #1

declare i32 @tile_eheight(%struct._Tile*) #1

declare i8* @tile_data_pointer(%struct._Tile*, i32, i32) #1

; Function Attrs: nounwind uwtable
define internal void @pixel_surround_fill_row(%struct._PixelSurround* %surround, i8* %src, i32 %w) #0 {
entry:
  %surround.addr = alloca %struct._PixelSurround*, align 8
  %src.addr = alloca i8*, align 8
  %w.addr = alloca i32, align 4
  %dest = alloca i8*, align 8
  %bytes = alloca i32, align 4
  %rows = alloca i32, align 4
  store %struct._PixelSurround* %surround, %struct._PixelSurround** %surround.addr, align 8
  store i8* %src, i8** %src.addr, align 8
  store i32 %w, i32* %w.addr, align 4
  %0 = load %struct._PixelSurround*, %struct._PixelSurround** %surround.addr, align 8
  %bg = getelementptr inbounds %struct._PixelSurround, %struct._PixelSurround* %0, i32 0, i32 12
  %1 = load i8*, i8** %bg, align 8
  store i8* %1, i8** %dest, align 8
  %2 = load i32, i32* %w.addr, align 4
  %3 = load %struct._PixelSurround*, %struct._PixelSurround** %surround.addr, align 8
  %w1 = getelementptr inbounds %struct._PixelSurround, %struct._PixelSurround* %3, i32 0, i32 4
  %4 = load i32, i32* %w1, align 4
  %cmp = icmp slt i32 %2, %4
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %5 = load i32, i32* %w.addr, align 4
  br label %cond.end

cond.false:                                       ; preds = %entry
  %6 = load %struct._PixelSurround*, %struct._PixelSurround** %surround.addr, align 8
  %w2 = getelementptr inbounds %struct._PixelSurround, %struct._PixelSurround* %6, i32 0, i32 4
  %7 = load i32, i32* %w2, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %5, %cond.true ], [ %7, %cond.false ]
  %8 = load %struct._PixelSurround*, %struct._PixelSurround** %surround.addr, align 8
  %bpp = getelementptr inbounds %struct._PixelSurround, %struct._PixelSurround* %8, i32 0, i32 3
  %9 = load i32, i32* %bpp, align 4
  %mul = mul nsw i32 %cond, %9
  store i32 %mul, i32* %bytes, align 4
  %10 = load %struct._PixelSurround*, %struct._PixelSurround** %surround.addr, align 8
  %h = getelementptr inbounds %struct._PixelSurround, %struct._PixelSurround* %10, i32 0, i32 5
  %11 = load i32, i32* %h, align 4
  store i32 %11, i32* %rows, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %cond.end
  %12 = load i32, i32* %rows, align 4
  %dec = add nsw i32 %12, -1
  store i32 %dec, i32* %rows, align 4
  %tobool = icmp ne i32 %12, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %13 = load i8*, i8** %dest, align 8
  %14 = load i8*, i8** %src.addr, align 8
  %15 = load i32, i32* %bytes, align 4
  %conv = sext i32 %15 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* %14, i64 %conv, i32 1, i1 false)
  %16 = load %struct._PixelSurround*, %struct._PixelSurround** %surround.addr, align 8
  %rowstride = getelementptr inbounds %struct._PixelSurround, %struct._PixelSurround* %16, i32 0, i32 11
  %17 = load i32, i32* %rowstride, align 4
  %18 = load i8*, i8** %dest, align 8
  %idx.ext = sext i32 %17 to i64
  %add.ptr = getelementptr inbounds i8, i8* %18, i64 %idx.ext
  store i8* %add.ptr, i8** %dest, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @pixel_surround_fill_col(%struct._PixelSurround* %surround, i8* %src, i32 %rowstride, i32 %h) #0 {
entry:
  %surround.addr = alloca %struct._PixelSurround*, align 8
  %src.addr = alloca i8*, align 8
  %rowstride.addr = alloca i32, align 4
  %h.addr = alloca i32, align 4
  %dest = alloca i8*, align 8
  %cols = alloca i32, align 4
  %rows = alloca i32, align 4
  %s = alloca i8*, align 8
  %d = alloca i8*, align 8
  %r = alloca i32, align 4
  store %struct._PixelSurround* %surround, %struct._PixelSurround** %surround.addr, align 8
  store i8* %src, i8** %src.addr, align 8
  store i32 %rowstride, i32* %rowstride.addr, align 4
  store i32 %h, i32* %h.addr, align 4
  %0 = load %struct._PixelSurround*, %struct._PixelSurround** %surround.addr, align 8
  %bg = getelementptr inbounds %struct._PixelSurround, %struct._PixelSurround* %0, i32 0, i32 12
  %1 = load i8*, i8** %bg, align 8
  store i8* %1, i8** %dest, align 8
  %2 = load %struct._PixelSurround*, %struct._PixelSurround** %surround.addr, align 8
  %w = getelementptr inbounds %struct._PixelSurround, %struct._PixelSurround* %2, i32 0, i32 4
  %3 = load i32, i32* %w, align 4
  store i32 %3, i32* %cols, align 4
  %4 = load i32, i32* %h.addr, align 4
  %5 = load %struct._PixelSurround*, %struct._PixelSurround** %surround.addr, align 8
  %h1 = getelementptr inbounds %struct._PixelSurround, %struct._PixelSurround* %5, i32 0, i32 5
  %6 = load i32, i32* %h1, align 4
  %cmp = icmp slt i32 %4, %6
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %7 = load i32, i32* %h.addr, align 4
  br label %cond.end

cond.false:                                       ; preds = %entry
  %8 = load %struct._PixelSurround*, %struct._PixelSurround** %surround.addr, align 8
  %h2 = getelementptr inbounds %struct._PixelSurround, %struct._PixelSurround* %8, i32 0, i32 5
  %9 = load i32, i32* %h2, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %7, %cond.true ], [ %9, %cond.false ]
  store i32 %cond, i32* %rows, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.end, %cond.end
  %10 = load i32, i32* %cols, align 4
  %dec = add nsw i32 %10, -1
  store i32 %dec, i32* %cols, align 4
  %tobool = icmp ne i32 %10, 0
  br i1 %tobool, label %while.body, label %while.end.13

while.body:                                       ; preds = %while.cond
  %11 = load i8*, i8** %src.addr, align 8
  store i8* %11, i8** %s, align 8
  %12 = load i8*, i8** %dest, align 8
  store i8* %12, i8** %d, align 8
  %13 = load i32, i32* %rows, align 4
  store i32 %13, i32* %r, align 4
  br label %while.cond.3

while.cond.3:                                     ; preds = %while.body.6, %while.body
  %14 = load i32, i32* %r, align 4
  %dec4 = add nsw i32 %14, -1
  store i32 %dec4, i32* %r, align 4
  %tobool5 = icmp ne i32 %14, 0
  br i1 %tobool5, label %while.body.6, label %while.end

while.body.6:                                     ; preds = %while.cond.3
  %15 = load i8*, i8** %d, align 8
  %16 = load i8*, i8** %s, align 8
  %17 = load %struct._PixelSurround*, %struct._PixelSurround** %surround.addr, align 8
  %bpp = getelementptr inbounds %struct._PixelSurround, %struct._PixelSurround* %17, i32 0, i32 3
  %18 = load i32, i32* %bpp, align 4
  %conv = sext i32 %18 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %15, i8* %16, i64 %conv, i32 1, i1 false)
  %19 = load i32, i32* %rowstride.addr, align 4
  %20 = load i8*, i8** %s, align 8
  %idx.ext = sext i32 %19 to i64
  %add.ptr = getelementptr inbounds i8, i8* %20, i64 %idx.ext
  store i8* %add.ptr, i8** %s, align 8
  %21 = load %struct._PixelSurround*, %struct._PixelSurround** %surround.addr, align 8
  %rowstride7 = getelementptr inbounds %struct._PixelSurround, %struct._PixelSurround* %21, i32 0, i32 11
  %22 = load i32, i32* %rowstride7, align 4
  %23 = load i8*, i8** %d, align 8
  %idx.ext8 = sext i32 %22 to i64
  %add.ptr9 = getelementptr inbounds i8, i8* %23, i64 %idx.ext8
  store i8* %add.ptr9, i8** %d, align 8
  br label %while.cond.3

while.end:                                        ; preds = %while.cond.3
  %24 = load %struct._PixelSurround*, %struct._PixelSurround** %surround.addr, align 8
  %bpp10 = getelementptr inbounds %struct._PixelSurround, %struct._PixelSurround* %24, i32 0, i32 3
  %25 = load i32, i32* %bpp10, align 4
  %26 = load i8*, i8** %dest, align 8
  %idx.ext11 = sext i32 %25 to i64
  %add.ptr12 = getelementptr inbounds i8, i8* %26, i64 %idx.ext11
  store i8* %add.ptr12, i8** %dest, align 8
  br label %while.cond

while.end.13:                                     ; preds = %while.cond
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
