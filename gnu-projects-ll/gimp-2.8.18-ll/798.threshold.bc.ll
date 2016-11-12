; ModuleID = './app/base/threshold.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._Threshold = type { i32, i32, i32 }
%struct._PixelRegion = type { i8*, %struct._TileManager*, %struct._Tile*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._TileManager = type opaque
%struct._Tile = type opaque

; Function Attrs: nounwind uwtable
define void @threshold(%struct._Threshold* %tr, %struct._PixelRegion* %srcPR, %struct._PixelRegion* %destPR) #0 {
entry:
  %tr.addr = alloca %struct._Threshold*, align 8
  %srcPR.addr = alloca %struct._PixelRegion*, align 8
  %destPR.addr = alloca %struct._PixelRegion*, align 8
  %src = alloca i8*, align 8
  %s = alloca i8*, align 8
  %dest = alloca i8*, align 8
  %d = alloca i8*, align 8
  %has_alpha = alloca i32, align 4
  %alpha = alloca i32, align 4
  %w = alloca i32, align 4
  %h = alloca i32, align 4
  %b = alloca i32, align 4
  %value = alloca i32, align 4
  store %struct._Threshold* %tr, %struct._Threshold** %tr.addr, align 8
  store %struct._PixelRegion* %srcPR, %struct._PixelRegion** %srcPR.addr, align 8
  store %struct._PixelRegion* %destPR, %struct._PixelRegion** %destPR.addr, align 8
  %0 = load %struct._PixelRegion*, %struct._PixelRegion** %srcPR.addr, align 8
  %h1 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %0, i32 0, i32 9
  %1 = load i32, i32* %h1, align 4
  store i32 %1, i32* %h, align 4
  %2 = load %struct._PixelRegion*, %struct._PixelRegion** %srcPR.addr, align 8
  %data = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %2, i32 0, i32 0
  %3 = load i8*, i8** %data, align 8
  store i8* %3, i8** %src, align 8
  %4 = load %struct._PixelRegion*, %struct._PixelRegion** %destPR.addr, align 8
  %data2 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %4, i32 0, i32 0
  %5 = load i8*, i8** %data2, align 8
  store i8* %5, i8** %dest, align 8
  %6 = load %struct._PixelRegion*, %struct._PixelRegion** %srcPR.addr, align 8
  %call = call i32 @pixel_region_has_alpha(%struct._PixelRegion* %6)
  store i32 %call, i32* %has_alpha, align 4
  %7 = load i32, i32* %has_alpha, align 4
  %tobool = icmp ne i32 %7, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %8 = load %struct._PixelRegion*, %struct._PixelRegion** %srcPR.addr, align 8
  %bytes = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %8, i32 0, i32 10
  %9 = load i32, i32* %bytes, align 4
  %sub = sub nsw i32 %9, 1
  br label %cond.end

cond.false:                                       ; preds = %entry
  %10 = load %struct._PixelRegion*, %struct._PixelRegion** %srcPR.addr, align 8
  %bytes3 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %10, i32 0, i32 10
  %11 = load i32, i32* %bytes3, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %sub, %cond.true ], [ %11, %cond.false ]
  store i32 %cond, i32* %alpha, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.end, %cond.end
  %12 = load i32, i32* %h, align 4
  %dec = add nsw i32 %12, -1
  store i32 %dec, i32* %h, align 4
  %tobool4 = icmp ne i32 %12, 0
  br i1 %tobool4, label %while.body, label %while.end.70

while.body:                                       ; preds = %while.cond
  %13 = load %struct._PixelRegion*, %struct._PixelRegion** %srcPR.addr, align 8
  %w5 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %13, i32 0, i32 8
  %14 = load i32, i32* %w5, align 4
  store i32 %14, i32* %w, align 4
  %15 = load i8*, i8** %src, align 8
  store i8* %15, i8** %s, align 8
  %16 = load i8*, i8** %dest, align 8
  store i8* %16, i8** %d, align 8
  br label %while.cond.6

while.cond.6:                                     ; preds = %if.end.60, %while.body
  %17 = load i32, i32* %w, align 4
  %dec7 = add nsw i32 %17, -1
  store i32 %dec7, i32* %w, align 4
  %tobool8 = icmp ne i32 %17, 0
  br i1 %tobool8, label %while.body.9, label %while.end

while.body.9:                                     ; preds = %while.cond.6
  %18 = load %struct._Threshold*, %struct._Threshold** %tr.addr, align 8
  %color = getelementptr inbounds %struct._Threshold, %struct._Threshold* %18, i32 0, i32 0
  %19 = load i32, i32* %color, align 4
  %tobool10 = icmp ne i32 %19, 0
  br i1 %tobool10, label %if.then, label %if.else

if.then:                                          ; preds = %while.body.9
  %20 = load i8*, i8** %s, align 8
  %arrayidx = getelementptr inbounds i8, i8* %20, i64 0
  %21 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %21 to i32
  %22 = load i8*, i8** %s, align 8
  %arrayidx11 = getelementptr inbounds i8, i8* %22, i64 1
  %23 = load i8, i8* %arrayidx11, align 1
  %conv12 = zext i8 %23 to i32
  %cmp = icmp sgt i32 %conv, %conv12
  br i1 %cmp, label %cond.true.14, label %cond.false.17

cond.true.14:                                     ; preds = %if.then
  %24 = load i8*, i8** %s, align 8
  %arrayidx15 = getelementptr inbounds i8, i8* %24, i64 0
  %25 = load i8, i8* %arrayidx15, align 1
  %conv16 = zext i8 %25 to i32
  br label %cond.end.20

cond.false.17:                                    ; preds = %if.then
  %26 = load i8*, i8** %s, align 8
  %arrayidx18 = getelementptr inbounds i8, i8* %26, i64 1
  %27 = load i8, i8* %arrayidx18, align 1
  %conv19 = zext i8 %27 to i32
  br label %cond.end.20

cond.end.20:                                      ; preds = %cond.false.17, %cond.true.14
  %cond21 = phi i32 [ %conv16, %cond.true.14 ], [ %conv19, %cond.false.17 ]
  store i32 %cond21, i32* %value, align 4
  %28 = load i32, i32* %value, align 4
  %29 = load i8*, i8** %s, align 8
  %arrayidx22 = getelementptr inbounds i8, i8* %29, i64 2
  %30 = load i8, i8* %arrayidx22, align 1
  %conv23 = zext i8 %30 to i32
  %cmp24 = icmp sgt i32 %28, %conv23
  br i1 %cmp24, label %cond.true.26, label %cond.false.27

cond.true.26:                                     ; preds = %cond.end.20
  %31 = load i32, i32* %value, align 4
  br label %cond.end.30

cond.false.27:                                    ; preds = %cond.end.20
  %32 = load i8*, i8** %s, align 8
  %arrayidx28 = getelementptr inbounds i8, i8* %32, i64 2
  %33 = load i8, i8* %arrayidx28, align 1
  %conv29 = zext i8 %33 to i32
  br label %cond.end.30

cond.end.30:                                      ; preds = %cond.false.27, %cond.true.26
  %cond31 = phi i32 [ %31, %cond.true.26 ], [ %conv29, %cond.false.27 ]
  store i32 %cond31, i32* %value, align 4
  %34 = load i32, i32* %value, align 4
  %35 = load %struct._Threshold*, %struct._Threshold** %tr.addr, align 8
  %low_threshold = getelementptr inbounds %struct._Threshold, %struct._Threshold* %35, i32 0, i32 1
  %36 = load i32, i32* %low_threshold, align 4
  %cmp32 = icmp sge i32 %34, %36
  br i1 %cmp32, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %cond.end.30
  %37 = load i32, i32* %value, align 4
  %38 = load %struct._Threshold*, %struct._Threshold** %tr.addr, align 8
  %high_threshold = getelementptr inbounds %struct._Threshold, %struct._Threshold* %38, i32 0, i32 2
  %39 = load i32, i32* %high_threshold, align 4
  %cmp34 = icmp sle i32 %37, %39
  br label %land.end

land.end:                                         ; preds = %land.rhs, %cond.end.30
  %40 = phi i1 [ false, %cond.end.30 ], [ %cmp34, %land.rhs ]
  %cond36 = select i1 %40, i32 255, i32 0
  store i32 %cond36, i32* %value, align 4
  br label %if.end

if.else:                                          ; preds = %while.body.9
  %41 = load i8*, i8** %s, align 8
  %arrayidx37 = getelementptr inbounds i8, i8* %41, i64 0
  %42 = load i8, i8* %arrayidx37, align 1
  %conv38 = zext i8 %42 to i32
  %43 = load %struct._Threshold*, %struct._Threshold** %tr.addr, align 8
  %low_threshold39 = getelementptr inbounds %struct._Threshold, %struct._Threshold* %43, i32 0, i32 1
  %44 = load i32, i32* %low_threshold39, align 4
  %cmp40 = icmp sge i32 %conv38, %44
  br i1 %cmp40, label %land.rhs.42, label %land.end.48

land.rhs.42:                                      ; preds = %if.else
  %45 = load i8*, i8** %s, align 8
  %arrayidx43 = getelementptr inbounds i8, i8* %45, i64 0
  %46 = load i8, i8* %arrayidx43, align 1
  %conv44 = zext i8 %46 to i32
  %47 = load %struct._Threshold*, %struct._Threshold** %tr.addr, align 8
  %high_threshold45 = getelementptr inbounds %struct._Threshold, %struct._Threshold* %47, i32 0, i32 2
  %48 = load i32, i32* %high_threshold45, align 4
  %cmp46 = icmp sle i32 %conv44, %48
  br label %land.end.48

land.end.48:                                      ; preds = %land.rhs.42, %if.else
  %49 = phi i1 [ false, %if.else ], [ %cmp46, %land.rhs.42 ]
  %cond49 = select i1 %49, i32 255, i32 0
  store i32 %cond49, i32* %value, align 4
  br label %if.end

if.end:                                           ; preds = %land.end.48, %land.end
  store i32 0, i32* %b, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %50 = load i32, i32* %b, align 4
  %51 = load i32, i32* %alpha, align 4
  %cmp50 = icmp slt i32 %50, %51
  br i1 %cmp50, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %52 = load i32, i32* %value, align 4
  %conv52 = trunc i32 %52 to i8
  %53 = load i32, i32* %b, align 4
  %idxprom = sext i32 %53 to i64
  %54 = load i8*, i8** %d, align 8
  %arrayidx53 = getelementptr inbounds i8, i8* %54, i64 %idxprom
  store i8 %conv52, i8* %arrayidx53, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %55 = load i32, i32* %b, align 4
  %inc = add nsw i32 %55, 1
  store i32 %inc, i32* %b, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %56 = load i32, i32* %has_alpha, align 4
  %tobool54 = icmp ne i32 %56, 0
  br i1 %tobool54, label %if.then.55, label %if.end.60

if.then.55:                                       ; preds = %for.end
  %57 = load i32, i32* %alpha, align 4
  %idxprom56 = sext i32 %57 to i64
  %58 = load i8*, i8** %s, align 8
  %arrayidx57 = getelementptr inbounds i8, i8* %58, i64 %idxprom56
  %59 = load i8, i8* %arrayidx57, align 1
  %60 = load i32, i32* %alpha, align 4
  %idxprom58 = sext i32 %60 to i64
  %61 = load i8*, i8** %d, align 8
  %arrayidx59 = getelementptr inbounds i8, i8* %61, i64 %idxprom58
  store i8 %59, i8* %arrayidx59, align 1
  br label %if.end.60

if.end.60:                                        ; preds = %if.then.55, %for.end
  %62 = load %struct._PixelRegion*, %struct._PixelRegion** %srcPR.addr, align 8
  %bytes61 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %62, i32 0, i32 10
  %63 = load i32, i32* %bytes61, align 4
  %64 = load i8*, i8** %s, align 8
  %idx.ext = sext i32 %63 to i64
  %add.ptr = getelementptr inbounds i8, i8* %64, i64 %idx.ext
  store i8* %add.ptr, i8** %s, align 8
  %65 = load %struct._PixelRegion*, %struct._PixelRegion** %destPR.addr, align 8
  %bytes62 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %65, i32 0, i32 10
  %66 = load i32, i32* %bytes62, align 4
  %67 = load i8*, i8** %d, align 8
  %idx.ext63 = sext i32 %66 to i64
  %add.ptr64 = getelementptr inbounds i8, i8* %67, i64 %idx.ext63
  store i8* %add.ptr64, i8** %d, align 8
  br label %while.cond.6

while.end:                                        ; preds = %while.cond.6
  %68 = load %struct._PixelRegion*, %struct._PixelRegion** %srcPR.addr, align 8
  %rowstride = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %68, i32 0, i32 5
  %69 = load i32, i32* %rowstride, align 4
  %70 = load i8*, i8** %src, align 8
  %idx.ext65 = sext i32 %69 to i64
  %add.ptr66 = getelementptr inbounds i8, i8* %70, i64 %idx.ext65
  store i8* %add.ptr66, i8** %src, align 8
  %71 = load %struct._PixelRegion*, %struct._PixelRegion** %destPR.addr, align 8
  %rowstride67 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %71, i32 0, i32 5
  %72 = load i32, i32* %rowstride67, align 4
  %73 = load i8*, i8** %dest, align 8
  %idx.ext68 = sext i32 %72 to i64
  %add.ptr69 = getelementptr inbounds i8, i8* %73, i64 %idx.ext68
  store i8* %add.ptr69, i8** %dest, align 8
  br label %while.cond

while.end.70:                                     ; preds = %while.cond
  ret void
}

declare i32 @pixel_region_has_alpha(%struct._PixelRegion*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
