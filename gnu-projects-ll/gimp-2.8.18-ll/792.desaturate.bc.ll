; ModuleID = './app/base/desaturate.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._PixelRegion = type { i8*, %struct._TileManager*, %struct._Tile*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._TileManager = type opaque
%struct._Tile = type opaque

@.str = private unnamed_addr constant [10 x i8] c"Gimp-Base\00", align 1
@__func__.desaturate_region = private unnamed_addr constant [18 x i8] c"desaturate_region\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"mode != NULL\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"srcPR->bytes == destPR->bytes\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"srcPR->bytes == 3 || srcPR->bytes == 4\00", align 1

; Function Attrs: nounwind uwtable
define void @desaturate_region(i32* %mode, %struct._PixelRegion* %srcPR, %struct._PixelRegion* %destPR) #0 {
entry:
  %mode.addr = alloca i32*, align 8
  %srcPR.addr = alloca %struct._PixelRegion*, align 8
  %destPR.addr = alloca %struct._PixelRegion*, align 8
  store i32* %mode, i32** %mode.addr, align 8
  store %struct._PixelRegion* %srcPR, %struct._PixelRegion** %srcPR.addr, align 8
  store %struct._PixelRegion* %destPR, %struct._PixelRegion** %destPR.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load i32*, i32** %mode.addr, align 8
  %cmp = icmp ne i32* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.desaturate_region, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0))
  br label %sw.epilog

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %do.body.1

do.body.1:                                        ; preds = %do.end
  %1 = load %struct._PixelRegion*, %struct._PixelRegion** %srcPR.addr, align 8
  %bytes = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %1, i32 0, i32 10
  %2 = load i32, i32* %bytes, align 4
  %3 = load %struct._PixelRegion*, %struct._PixelRegion** %destPR.addr, align 8
  %bytes2 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %3, i32 0, i32 10
  %4 = load i32, i32* %bytes2, align 4
  %cmp3 = icmp eq i32 %2, %4
  br i1 %cmp3, label %if.then.4, label %if.else.5

if.then.4:                                        ; preds = %do.body.1
  br label %if.end.6

if.else.5:                                        ; preds = %do.body.1
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.desaturate_region, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i32 0, i32 0))
  br label %sw.epilog

if.end.6:                                         ; preds = %if.then.4
  br label %do.end.7

do.end.7:                                         ; preds = %if.end.6
  br label %do.body.8

do.body.8:                                        ; preds = %do.end.7
  %5 = load %struct._PixelRegion*, %struct._PixelRegion** %srcPR.addr, align 8
  %bytes9 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %5, i32 0, i32 10
  %6 = load i32, i32* %bytes9, align 4
  %cmp10 = icmp eq i32 %6, 3
  br i1 %cmp10, label %if.then.13, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.body.8
  %7 = load %struct._PixelRegion*, %struct._PixelRegion** %srcPR.addr, align 8
  %bytes11 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %7, i32 0, i32 10
  %8 = load i32, i32* %bytes11, align 4
  %cmp12 = icmp eq i32 %8, 4
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %lor.lhs.false, %do.body.8
  br label %if.end.15

if.else.14:                                       ; preds = %lor.lhs.false
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.desaturate_region, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i32 0, i32 0))
  br label %sw.epilog

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  %9 = load i32*, i32** %mode.addr, align 8
  %10 = load i32, i32* %9, align 4
  switch i32 %10, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.17
    i32 2, label %sw.bb.19
  ]

sw.bb:                                            ; preds = %do.end.16
  %11 = load %struct._PixelRegion*, %struct._PixelRegion** %srcPR.addr, align 8
  %12 = load %struct._PixelRegion*, %struct._PixelRegion** %destPR.addr, align 8
  %13 = load %struct._PixelRegion*, %struct._PixelRegion** %srcPR.addr, align 8
  %call = call i32 @pixel_region_has_alpha(%struct._PixelRegion* %13)
  call void @desaturate_region_lightness(%struct._PixelRegion* %11, %struct._PixelRegion* %12, i32 %call)
  br label %sw.epilog

sw.bb.17:                                         ; preds = %do.end.16
  %14 = load %struct._PixelRegion*, %struct._PixelRegion** %srcPR.addr, align 8
  %15 = load %struct._PixelRegion*, %struct._PixelRegion** %destPR.addr, align 8
  %16 = load %struct._PixelRegion*, %struct._PixelRegion** %srcPR.addr, align 8
  %call18 = call i32 @pixel_region_has_alpha(%struct._PixelRegion* %16)
  call void @desaturate_region_luminosity(%struct._PixelRegion* %14, %struct._PixelRegion* %15, i32 %call18)
  br label %sw.epilog

sw.bb.19:                                         ; preds = %do.end.16
  %17 = load %struct._PixelRegion*, %struct._PixelRegion** %srcPR.addr, align 8
  %18 = load %struct._PixelRegion*, %struct._PixelRegion** %destPR.addr, align 8
  %19 = load %struct._PixelRegion*, %struct._PixelRegion** %srcPR.addr, align 8
  %call20 = call i32 @pixel_region_has_alpha(%struct._PixelRegion* %19)
  call void @desaturate_region_average(%struct._PixelRegion* %17, %struct._PixelRegion* %18, i32 %call20)
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.else, %if.else.5, %if.else.14, %do.end.16, %sw.bb.19, %sw.bb.17, %sw.bb
  ret void
}

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @desaturate_region_lightness(%struct._PixelRegion* %srcPR, %struct._PixelRegion* %destPR, i32 %has_alpha) #0 {
entry:
  %srcPR.addr = alloca %struct._PixelRegion*, align 8
  %destPR.addr = alloca %struct._PixelRegion*, align 8
  %has_alpha.addr = alloca i32, align 4
  %src = alloca i8*, align 8
  %dest = alloca i8*, align 8
  %h = alloca i32, align 4
  %s = alloca i8*, align 8
  %d = alloca i8*, align 8
  %j = alloca i32, align 4
  %min = alloca i32, align 4
  %max = alloca i32, align 4
  %lightness = alloca i32, align 4
  store %struct._PixelRegion* %srcPR, %struct._PixelRegion** %srcPR.addr, align 8
  store %struct._PixelRegion* %destPR, %struct._PixelRegion** %destPR.addr, align 8
  store i32 %has_alpha, i32* %has_alpha.addr, align 4
  %0 = load %struct._PixelRegion*, %struct._PixelRegion** %srcPR.addr, align 8
  %data = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %0, i32 0, i32 0
  %1 = load i8*, i8** %data, align 8
  store i8* %1, i8** %src, align 8
  %2 = load %struct._PixelRegion*, %struct._PixelRegion** %destPR.addr, align 8
  %data1 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %2, i32 0, i32 0
  %3 = load i8*, i8** %data1, align 8
  store i8* %3, i8** %dest, align 8
  %4 = load %struct._PixelRegion*, %struct._PixelRegion** %srcPR.addr, align 8
  %h2 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %4, i32 0, i32 9
  %5 = load i32, i32* %h2, align 4
  store i32 %5, i32* %h, align 4
  br label %while.cond

while.cond:                                       ; preds = %for.end, %entry
  %6 = load i32, i32* %h, align 4
  %dec = add nsw i32 %6, -1
  store i32 %dec, i32* %h, align 4
  %tobool = icmp ne i32 %6, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %7 = load i8*, i8** %src, align 8
  store i8* %7, i8** %s, align 8
  %8 = load i8*, i8** %dest, align 8
  store i8* %8, i8** %d, align 8
  store i32 0, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.body
  %9 = load i32, i32* %j, align 4
  %10 = load %struct._PixelRegion*, %struct._PixelRegion** %srcPR.addr, align 8
  %w = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %10, i32 0, i32 8
  %11 = load i32, i32* %w, align 4
  %cmp = icmp slt i32 %9, %11
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %12 = load i8*, i8** %s, align 8
  %arrayidx = getelementptr inbounds i8, i8* %12, i64 0
  %13 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %13 to i32
  %14 = load i8*, i8** %s, align 8
  %arrayidx3 = getelementptr inbounds i8, i8* %14, i64 1
  %15 = load i8, i8* %arrayidx3, align 1
  %conv4 = zext i8 %15 to i32
  %cmp5 = icmp sgt i32 %conv, %conv4
  br i1 %cmp5, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  %16 = load i8*, i8** %s, align 8
  %arrayidx7 = getelementptr inbounds i8, i8* %16, i64 0
  %17 = load i8, i8* %arrayidx7, align 1
  %conv8 = zext i8 %17 to i32
  br label %cond.end

cond.false:                                       ; preds = %for.body
  %18 = load i8*, i8** %s, align 8
  %arrayidx9 = getelementptr inbounds i8, i8* %18, i64 1
  %19 = load i8, i8* %arrayidx9, align 1
  %conv10 = zext i8 %19 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv8, %cond.true ], [ %conv10, %cond.false ]
  store i32 %cond, i32* %max, align 4
  %20 = load i32, i32* %max, align 4
  %21 = load i8*, i8** %s, align 8
  %arrayidx11 = getelementptr inbounds i8, i8* %21, i64 2
  %22 = load i8, i8* %arrayidx11, align 1
  %conv12 = zext i8 %22 to i32
  %cmp13 = icmp sgt i32 %20, %conv12
  br i1 %cmp13, label %cond.true.15, label %cond.false.16

cond.true.15:                                     ; preds = %cond.end
  %23 = load i32, i32* %max, align 4
  br label %cond.end.19

cond.false.16:                                    ; preds = %cond.end
  %24 = load i8*, i8** %s, align 8
  %arrayidx17 = getelementptr inbounds i8, i8* %24, i64 2
  %25 = load i8, i8* %arrayidx17, align 1
  %conv18 = zext i8 %25 to i32
  br label %cond.end.19

cond.end.19:                                      ; preds = %cond.false.16, %cond.true.15
  %cond20 = phi i32 [ %23, %cond.true.15 ], [ %conv18, %cond.false.16 ]
  store i32 %cond20, i32* %max, align 4
  %26 = load i8*, i8** %s, align 8
  %arrayidx21 = getelementptr inbounds i8, i8* %26, i64 0
  %27 = load i8, i8* %arrayidx21, align 1
  %conv22 = zext i8 %27 to i32
  %28 = load i8*, i8** %s, align 8
  %arrayidx23 = getelementptr inbounds i8, i8* %28, i64 1
  %29 = load i8, i8* %arrayidx23, align 1
  %conv24 = zext i8 %29 to i32
  %cmp25 = icmp slt i32 %conv22, %conv24
  br i1 %cmp25, label %cond.true.27, label %cond.false.30

cond.true.27:                                     ; preds = %cond.end.19
  %30 = load i8*, i8** %s, align 8
  %arrayidx28 = getelementptr inbounds i8, i8* %30, i64 0
  %31 = load i8, i8* %arrayidx28, align 1
  %conv29 = zext i8 %31 to i32
  br label %cond.end.33

cond.false.30:                                    ; preds = %cond.end.19
  %32 = load i8*, i8** %s, align 8
  %arrayidx31 = getelementptr inbounds i8, i8* %32, i64 1
  %33 = load i8, i8* %arrayidx31, align 1
  %conv32 = zext i8 %33 to i32
  br label %cond.end.33

cond.end.33:                                      ; preds = %cond.false.30, %cond.true.27
  %cond34 = phi i32 [ %conv29, %cond.true.27 ], [ %conv32, %cond.false.30 ]
  store i32 %cond34, i32* %min, align 4
  %34 = load i32, i32* %min, align 4
  %35 = load i8*, i8** %s, align 8
  %arrayidx35 = getelementptr inbounds i8, i8* %35, i64 2
  %36 = load i8, i8* %arrayidx35, align 1
  %conv36 = zext i8 %36 to i32
  %cmp37 = icmp slt i32 %34, %conv36
  br i1 %cmp37, label %cond.true.39, label %cond.false.40

cond.true.39:                                     ; preds = %cond.end.33
  %37 = load i32, i32* %min, align 4
  br label %cond.end.43

cond.false.40:                                    ; preds = %cond.end.33
  %38 = load i8*, i8** %s, align 8
  %arrayidx41 = getelementptr inbounds i8, i8* %38, i64 2
  %39 = load i8, i8* %arrayidx41, align 1
  %conv42 = zext i8 %39 to i32
  br label %cond.end.43

cond.end.43:                                      ; preds = %cond.false.40, %cond.true.39
  %cond44 = phi i32 [ %37, %cond.true.39 ], [ %conv42, %cond.false.40 ]
  store i32 %cond44, i32* %min, align 4
  %40 = load i32, i32* %max, align 4
  %41 = load i32, i32* %min, align 4
  %add = add nsw i32 %40, %41
  %div = sdiv i32 %add, 2
  store i32 %div, i32* %lightness, align 4
  %42 = load i32, i32* %lightness, align 4
  %conv45 = trunc i32 %42 to i8
  %43 = load i8*, i8** %d, align 8
  %arrayidx46 = getelementptr inbounds i8, i8* %43, i64 0
  store i8 %conv45, i8* %arrayidx46, align 1
  %44 = load i32, i32* %lightness, align 4
  %conv47 = trunc i32 %44 to i8
  %45 = load i8*, i8** %d, align 8
  %arrayidx48 = getelementptr inbounds i8, i8* %45, i64 1
  store i8 %conv47, i8* %arrayidx48, align 1
  %46 = load i32, i32* %lightness, align 4
  %conv49 = trunc i32 %46 to i8
  %47 = load i8*, i8** %d, align 8
  %arrayidx50 = getelementptr inbounds i8, i8* %47, i64 2
  store i8 %conv49, i8* %arrayidx50, align 1
  %48 = load i32, i32* %has_alpha.addr, align 4
  %tobool51 = icmp ne i32 %48, 0
  br i1 %tobool51, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end.43
  %49 = load i8*, i8** %s, align 8
  %arrayidx52 = getelementptr inbounds i8, i8* %49, i64 3
  %50 = load i8, i8* %arrayidx52, align 1
  %51 = load i8*, i8** %d, align 8
  %arrayidx53 = getelementptr inbounds i8, i8* %51, i64 3
  store i8 %50, i8* %arrayidx53, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end.43
  %52 = load %struct._PixelRegion*, %struct._PixelRegion** %destPR.addr, align 8
  %bytes = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %52, i32 0, i32 10
  %53 = load i32, i32* %bytes, align 4
  %54 = load i8*, i8** %d, align 8
  %idx.ext = sext i32 %53 to i64
  %add.ptr = getelementptr inbounds i8, i8* %54, i64 %idx.ext
  store i8* %add.ptr, i8** %d, align 8
  %55 = load %struct._PixelRegion*, %struct._PixelRegion** %srcPR.addr, align 8
  %bytes54 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %55, i32 0, i32 10
  %56 = load i32, i32* %bytes54, align 4
  %57 = load i8*, i8** %s, align 8
  %idx.ext55 = sext i32 %56 to i64
  %add.ptr56 = getelementptr inbounds i8, i8* %57, i64 %idx.ext55
  store i8* %add.ptr56, i8** %s, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %58 = load i32, i32* %j, align 4
  %inc = add nsw i32 %58, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %59 = load %struct._PixelRegion*, %struct._PixelRegion** %srcPR.addr, align 8
  %rowstride = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %59, i32 0, i32 5
  %60 = load i32, i32* %rowstride, align 4
  %61 = load i8*, i8** %src, align 8
  %idx.ext57 = sext i32 %60 to i64
  %add.ptr58 = getelementptr inbounds i8, i8* %61, i64 %idx.ext57
  store i8* %add.ptr58, i8** %src, align 8
  %62 = load %struct._PixelRegion*, %struct._PixelRegion** %destPR.addr, align 8
  %rowstride59 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %62, i32 0, i32 5
  %63 = load i32, i32* %rowstride59, align 4
  %64 = load i8*, i8** %dest, align 8
  %idx.ext60 = sext i32 %63 to i64
  %add.ptr61 = getelementptr inbounds i8, i8* %64, i64 %idx.ext60
  store i8* %add.ptr61, i8** %dest, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

declare i32 @pixel_region_has_alpha(%struct._PixelRegion*) #1

; Function Attrs: nounwind uwtable
define internal void @desaturate_region_luminosity(%struct._PixelRegion* %srcPR, %struct._PixelRegion* %destPR, i32 %has_alpha) #0 {
entry:
  %srcPR.addr = alloca %struct._PixelRegion*, align 8
  %destPR.addr = alloca %struct._PixelRegion*, align 8
  %has_alpha.addr = alloca i32, align 4
  %src = alloca i8*, align 8
  %dest = alloca i8*, align 8
  %h = alloca i32, align 4
  %s = alloca i8*, align 8
  %d = alloca i8*, align 8
  %j = alloca i32, align 4
  %luminosity = alloca i32, align 4
  store %struct._PixelRegion* %srcPR, %struct._PixelRegion** %srcPR.addr, align 8
  store %struct._PixelRegion* %destPR, %struct._PixelRegion** %destPR.addr, align 8
  store i32 %has_alpha, i32* %has_alpha.addr, align 4
  %0 = load %struct._PixelRegion*, %struct._PixelRegion** %srcPR.addr, align 8
  %data = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %0, i32 0, i32 0
  %1 = load i8*, i8** %data, align 8
  store i8* %1, i8** %src, align 8
  %2 = load %struct._PixelRegion*, %struct._PixelRegion** %destPR.addr, align 8
  %data1 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %2, i32 0, i32 0
  %3 = load i8*, i8** %data1, align 8
  store i8* %3, i8** %dest, align 8
  %4 = load %struct._PixelRegion*, %struct._PixelRegion** %srcPR.addr, align 8
  %h2 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %4, i32 0, i32 9
  %5 = load i32, i32* %h2, align 4
  store i32 %5, i32* %h, align 4
  br label %while.cond

while.cond:                                       ; preds = %for.end, %entry
  %6 = load i32, i32* %h, align 4
  %dec = add nsw i32 %6, -1
  store i32 %dec, i32* %h, align 4
  %tobool = icmp ne i32 %6, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %7 = load i8*, i8** %src, align 8
  store i8* %7, i8** %s, align 8
  %8 = load i8*, i8** %dest, align 8
  store i8* %8, i8** %d, align 8
  store i32 0, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.body
  %9 = load i32, i32* %j, align 4
  %10 = load %struct._PixelRegion*, %struct._PixelRegion** %srcPR.addr, align 8
  %w = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %10, i32 0, i32 8
  %11 = load i32, i32* %w, align 4
  %cmp = icmp slt i32 %9, %11
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %12 = load i8*, i8** %s, align 8
  %arrayidx = getelementptr inbounds i8, i8* %12, i64 0
  %13 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %13 to i32
  %conv3 = sitofp i32 %conv to double
  %mul = fmul double %conv3, 2.126000e-01
  %14 = load i8*, i8** %s, align 8
  %arrayidx4 = getelementptr inbounds i8, i8* %14, i64 1
  %15 = load i8, i8* %arrayidx4, align 1
  %conv5 = zext i8 %15 to i32
  %conv6 = sitofp i32 %conv5 to double
  %mul7 = fmul double %conv6, 7.152000e-01
  %add = fadd double %mul, %mul7
  %16 = load i8*, i8** %s, align 8
  %arrayidx8 = getelementptr inbounds i8, i8* %16, i64 2
  %17 = load i8, i8* %arrayidx8, align 1
  %conv9 = zext i8 %17 to i32
  %conv10 = sitofp i32 %conv9 to double
  %mul11 = fmul double %conv10, 7.220000e-02
  %add12 = fadd double %add, %mul11
  %add13 = fadd double %add12, 5.000000e-01
  %conv14 = fptosi double %add13 to i32
  store i32 %conv14, i32* %luminosity, align 4
  %18 = load i32, i32* %luminosity, align 4
  %conv15 = trunc i32 %18 to i8
  %19 = load i8*, i8** %d, align 8
  %arrayidx16 = getelementptr inbounds i8, i8* %19, i64 0
  store i8 %conv15, i8* %arrayidx16, align 1
  %20 = load i32, i32* %luminosity, align 4
  %conv17 = trunc i32 %20 to i8
  %21 = load i8*, i8** %d, align 8
  %arrayidx18 = getelementptr inbounds i8, i8* %21, i64 1
  store i8 %conv17, i8* %arrayidx18, align 1
  %22 = load i32, i32* %luminosity, align 4
  %conv19 = trunc i32 %22 to i8
  %23 = load i8*, i8** %d, align 8
  %arrayidx20 = getelementptr inbounds i8, i8* %23, i64 2
  store i8 %conv19, i8* %arrayidx20, align 1
  %24 = load i32, i32* %has_alpha.addr, align 4
  %tobool21 = icmp ne i32 %24, 0
  br i1 %tobool21, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %25 = load i8*, i8** %s, align 8
  %arrayidx22 = getelementptr inbounds i8, i8* %25, i64 3
  %26 = load i8, i8* %arrayidx22, align 1
  %27 = load i8*, i8** %d, align 8
  %arrayidx23 = getelementptr inbounds i8, i8* %27, i64 3
  store i8 %26, i8* %arrayidx23, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %28 = load %struct._PixelRegion*, %struct._PixelRegion** %destPR.addr, align 8
  %bytes = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %28, i32 0, i32 10
  %29 = load i32, i32* %bytes, align 4
  %30 = load i8*, i8** %d, align 8
  %idx.ext = sext i32 %29 to i64
  %add.ptr = getelementptr inbounds i8, i8* %30, i64 %idx.ext
  store i8* %add.ptr, i8** %d, align 8
  %31 = load %struct._PixelRegion*, %struct._PixelRegion** %srcPR.addr, align 8
  %bytes24 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %31, i32 0, i32 10
  %32 = load i32, i32* %bytes24, align 4
  %33 = load i8*, i8** %s, align 8
  %idx.ext25 = sext i32 %32 to i64
  %add.ptr26 = getelementptr inbounds i8, i8* %33, i64 %idx.ext25
  store i8* %add.ptr26, i8** %s, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %34 = load i32, i32* %j, align 4
  %inc = add nsw i32 %34, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %35 = load %struct._PixelRegion*, %struct._PixelRegion** %srcPR.addr, align 8
  %rowstride = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %35, i32 0, i32 5
  %36 = load i32, i32* %rowstride, align 4
  %37 = load i8*, i8** %src, align 8
  %idx.ext27 = sext i32 %36 to i64
  %add.ptr28 = getelementptr inbounds i8, i8* %37, i64 %idx.ext27
  store i8* %add.ptr28, i8** %src, align 8
  %38 = load %struct._PixelRegion*, %struct._PixelRegion** %destPR.addr, align 8
  %rowstride29 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %38, i32 0, i32 5
  %39 = load i32, i32* %rowstride29, align 4
  %40 = load i8*, i8** %dest, align 8
  %idx.ext30 = sext i32 %39 to i64
  %add.ptr31 = getelementptr inbounds i8, i8* %40, i64 %idx.ext30
  store i8* %add.ptr31, i8** %dest, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @desaturate_region_average(%struct._PixelRegion* %srcPR, %struct._PixelRegion* %destPR, i32 %has_alpha) #0 {
entry:
  %srcPR.addr = alloca %struct._PixelRegion*, align 8
  %destPR.addr = alloca %struct._PixelRegion*, align 8
  %has_alpha.addr = alloca i32, align 4
  %src = alloca i8*, align 8
  %dest = alloca i8*, align 8
  %h = alloca i32, align 4
  %s = alloca i8*, align 8
  %d = alloca i8*, align 8
  %j = alloca i32, align 4
  %average = alloca i32, align 4
  store %struct._PixelRegion* %srcPR, %struct._PixelRegion** %srcPR.addr, align 8
  store %struct._PixelRegion* %destPR, %struct._PixelRegion** %destPR.addr, align 8
  store i32 %has_alpha, i32* %has_alpha.addr, align 4
  %0 = load %struct._PixelRegion*, %struct._PixelRegion** %srcPR.addr, align 8
  %data = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %0, i32 0, i32 0
  %1 = load i8*, i8** %data, align 8
  store i8* %1, i8** %src, align 8
  %2 = load %struct._PixelRegion*, %struct._PixelRegion** %destPR.addr, align 8
  %data1 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %2, i32 0, i32 0
  %3 = load i8*, i8** %data1, align 8
  store i8* %3, i8** %dest, align 8
  %4 = load %struct._PixelRegion*, %struct._PixelRegion** %srcPR.addr, align 8
  %h2 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %4, i32 0, i32 9
  %5 = load i32, i32* %h2, align 4
  store i32 %5, i32* %h, align 4
  br label %while.cond

while.cond:                                       ; preds = %for.end, %entry
  %6 = load i32, i32* %h, align 4
  %dec = add nsw i32 %6, -1
  store i32 %dec, i32* %h, align 4
  %tobool = icmp ne i32 %6, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %7 = load i8*, i8** %src, align 8
  store i8* %7, i8** %s, align 8
  %8 = load i8*, i8** %dest, align 8
  store i8* %8, i8** %d, align 8
  store i32 0, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.body
  %9 = load i32, i32* %j, align 4
  %10 = load %struct._PixelRegion*, %struct._PixelRegion** %srcPR.addr, align 8
  %w = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %10, i32 0, i32 8
  %11 = load i32, i32* %w, align 4
  %cmp = icmp slt i32 %9, %11
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %12 = load i8*, i8** %s, align 8
  %arrayidx = getelementptr inbounds i8, i8* %12, i64 0
  %13 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %13 to i32
  %14 = load i8*, i8** %s, align 8
  %arrayidx3 = getelementptr inbounds i8, i8* %14, i64 1
  %15 = load i8, i8* %arrayidx3, align 1
  %conv4 = zext i8 %15 to i32
  %add = add nsw i32 %conv, %conv4
  %16 = load i8*, i8** %s, align 8
  %arrayidx5 = getelementptr inbounds i8, i8* %16, i64 2
  %17 = load i8, i8* %arrayidx5, align 1
  %conv6 = zext i8 %17 to i32
  %add7 = add nsw i32 %add, %conv6
  %add8 = add nsw i32 %add7, 1
  %div = sdiv i32 %add8, 3
  store i32 %div, i32* %average, align 4
  %18 = load i32, i32* %average, align 4
  %conv9 = trunc i32 %18 to i8
  %19 = load i8*, i8** %d, align 8
  %arrayidx10 = getelementptr inbounds i8, i8* %19, i64 0
  store i8 %conv9, i8* %arrayidx10, align 1
  %20 = load i32, i32* %average, align 4
  %conv11 = trunc i32 %20 to i8
  %21 = load i8*, i8** %d, align 8
  %arrayidx12 = getelementptr inbounds i8, i8* %21, i64 1
  store i8 %conv11, i8* %arrayidx12, align 1
  %22 = load i32, i32* %average, align 4
  %conv13 = trunc i32 %22 to i8
  %23 = load i8*, i8** %d, align 8
  %arrayidx14 = getelementptr inbounds i8, i8* %23, i64 2
  store i8 %conv13, i8* %arrayidx14, align 1
  %24 = load i32, i32* %has_alpha.addr, align 4
  %tobool15 = icmp ne i32 %24, 0
  br i1 %tobool15, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %25 = load i8*, i8** %s, align 8
  %arrayidx16 = getelementptr inbounds i8, i8* %25, i64 3
  %26 = load i8, i8* %arrayidx16, align 1
  %27 = load i8*, i8** %d, align 8
  %arrayidx17 = getelementptr inbounds i8, i8* %27, i64 3
  store i8 %26, i8* %arrayidx17, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %28 = load %struct._PixelRegion*, %struct._PixelRegion** %destPR.addr, align 8
  %bytes = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %28, i32 0, i32 10
  %29 = load i32, i32* %bytes, align 4
  %30 = load i8*, i8** %d, align 8
  %idx.ext = sext i32 %29 to i64
  %add.ptr = getelementptr inbounds i8, i8* %30, i64 %idx.ext
  store i8* %add.ptr, i8** %d, align 8
  %31 = load %struct._PixelRegion*, %struct._PixelRegion** %srcPR.addr, align 8
  %bytes18 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %31, i32 0, i32 10
  %32 = load i32, i32* %bytes18, align 4
  %33 = load i8*, i8** %s, align 8
  %idx.ext19 = sext i32 %32 to i64
  %add.ptr20 = getelementptr inbounds i8, i8* %33, i64 %idx.ext19
  store i8* %add.ptr20, i8** %s, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %34 = load i32, i32* %j, align 4
  %inc = add nsw i32 %34, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %35 = load %struct._PixelRegion*, %struct._PixelRegion** %srcPR.addr, align 8
  %rowstride = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %35, i32 0, i32 5
  %36 = load i32, i32* %rowstride, align 4
  %37 = load i8*, i8** %src, align 8
  %idx.ext21 = sext i32 %36 to i64
  %add.ptr22 = getelementptr inbounds i8, i8* %37, i64 %idx.ext21
  store i8* %add.ptr22, i8** %src, align 8
  %38 = load %struct._PixelRegion*, %struct._PixelRegion** %destPR.addr, align 8
  %rowstride23 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %38, i32 0, i32 5
  %39 = load i32, i32* %rowstride23, align 4
  %40 = load i8*, i8** %dest, align 8
  %idx.ext24 = sext i32 %39 to i64
  %add.ptr25 = getelementptr inbounds i8, i8* %40, i64 %idx.ext24
  store i8* %add.ptr25, i8** %dest, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
