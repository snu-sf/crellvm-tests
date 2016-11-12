; ModuleID = './app/paint-funcs/subsample-region.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._PixelRegion = type { i8*, %struct._TileManager*, %struct._Tile*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._TileManager = type opaque
%struct._Tile = type opaque

@.str = private unnamed_addr constant [17 x i8] c"Gimp-Paint-Funcs\00", align 1
@__func__.subsample_indexed_region = private unnamed_addr constant [25 x i8] c"subsample_indexed_region\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"cmap != NULL\00", align 1

; Function Attrs: nounwind uwtable
define void @subsample_region(%struct._PixelRegion* %srcPR, %struct._PixelRegion* %destPR, i32 %subsample) #0 {
entry:
  %srcPR.addr = alloca %struct._PixelRegion*, align 8
  %destPR.addr = alloca %struct._PixelRegion*, align 8
  %subsample.addr = alloca i32, align 4
  %width = alloca i32, align 4
  %height = alloca i32, align 4
  %orig_width = alloca i32, align 4
  %orig_height = alloca i32, align 4
  %x_ratio = alloca double, align 8
  %y_ratio = alloca double, align 8
  %bytes = alloca i32, align 4
  %destwidth = alloca i32, align 4
  %has_alpha = alloca i32, align 4
  %src = alloca i8*, align 8
  %s = alloca i8*, align 8
  %dest = alloca i8*, align 8
  %d = alloca i8*, align 8
  %row = alloca double*, align 8
  %r = alloca double*, align 8
  %src_row = alloca i32, align 4
  %src_col = alloca i32, align 4
  %x_sum = alloca double, align 8
  %y_sum = alloca double, align 8
  %x_last = alloca double, align 8
  %y_last = alloca double, align 8
  %x_frac = alloca double*, align 8
  %y_frac = alloca double, align 8
  %tot_frac = alloca double, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %b = alloca i32, align 4
  %frac = alloca i32, align 4
  %advance_dest = alloca i32, align 4
  %local_frac = alloca double, align 8
  %alpha = alloca double, align 8
  store %struct._PixelRegion* %srcPR, %struct._PixelRegion** %srcPR.addr, align 8
  store %struct._PixelRegion* %destPR, %struct._PixelRegion** %destPR.addr, align 8
  store i32 %subsample, i32* %subsample.addr, align 4
  %0 = load %struct._PixelRegion*, %struct._PixelRegion** %destPR.addr, align 8
  %w = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %0, i32 0, i32 8
  %1 = load i32, i32* %w, align 4
  store i32 %1, i32* %width, align 4
  %2 = load %struct._PixelRegion*, %struct._PixelRegion** %destPR.addr, align 8
  %h = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %2, i32 0, i32 9
  %3 = load i32, i32* %h, align 4
  store i32 %3, i32* %height, align 4
  %4 = load %struct._PixelRegion*, %struct._PixelRegion** %srcPR.addr, align 8
  %w1 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %4, i32 0, i32 8
  %5 = load i32, i32* %w1, align 4
  %6 = load i32, i32* %subsample.addr, align 4
  %div = sdiv i32 %5, %6
  store i32 %div, i32* %orig_width, align 4
  %7 = load %struct._PixelRegion*, %struct._PixelRegion** %srcPR.addr, align 8
  %h2 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %7, i32 0, i32 9
  %8 = load i32, i32* %h2, align 4
  %9 = load i32, i32* %subsample.addr, align 4
  %div3 = sdiv i32 %8, %9
  store i32 %div3, i32* %orig_height, align 4
  %10 = load i32, i32* %orig_width, align 4
  %conv = sitofp i32 %10 to double
  %11 = load i32, i32* %width, align 4
  %conv4 = sitofp i32 %11 to double
  %div5 = fdiv double %conv, %conv4
  store double %div5, double* %x_ratio, align 8
  %12 = load i32, i32* %orig_height, align 4
  %conv6 = sitofp i32 %12 to double
  %13 = load i32, i32* %height, align 4
  %conv7 = sitofp i32 %13 to double
  %div8 = fdiv double %conv6, %conv7
  store double %div8, double* %y_ratio, align 8
  %14 = load %struct._PixelRegion*, %struct._PixelRegion** %destPR.addr, align 8
  %bytes9 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %14, i32 0, i32 10
  %15 = load i32, i32* %bytes9, align 4
  store i32 %15, i32* %bytes, align 4
  %16 = load %struct._PixelRegion*, %struct._PixelRegion** %destPR.addr, align 8
  %rowstride = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %16, i32 0, i32 5
  %17 = load i32, i32* %rowstride, align 4
  store i32 %17, i32* %destwidth, align 4
  %18 = load %struct._PixelRegion*, %struct._PixelRegion** %srcPR.addr, align 8
  %call = call i32 @pixel_region_has_alpha(%struct._PixelRegion* %18)
  store i32 %call, i32* %has_alpha, align 4
  %19 = load i32, i32* %orig_width, align 4
  %20 = load i32, i32* %bytes, align 4
  %mul = mul nsw i32 %19, %20
  %conv10 = sext i32 %mul to i64
  %call11 = call noalias i8* @g_malloc_n(i64 %conv10, i64 1)
  store i8* %call11, i8** %src, align 8
  %21 = load %struct._PixelRegion*, %struct._PixelRegion** %destPR.addr, align 8
  %data = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %21, i32 0, i32 0
  %22 = load i8*, i8** %data, align 8
  store i8* %22, i8** %dest, align 8
  %23 = load i32, i32* %width, align 4
  %24 = load i32, i32* %bytes, align 4
  %mul12 = mul nsw i32 %23, %24
  %conv13 = sext i32 %mul12 to i64
  %call14 = call noalias i8* @g_malloc_n(i64 %conv13, i64 8)
  %25 = bitcast i8* %call14 to double*
  store double* %25, double** %row, align 8
  %26 = load i32, i32* %width, align 4
  %27 = load i32, i32* %orig_width, align 4
  %add = add nsw i32 %26, %27
  %conv15 = sext i32 %add to i64
  %call16 = call noalias i8* @g_malloc_n(i64 %conv15, i64 8)
  %28 = bitcast i8* %call16 to double*
  store double* %28, double** %x_frac, align 8
  store i32 0, i32* %src_col, align 4
  %29 = load i32, i32* %src_col, align 4
  %conv17 = sitofp i32 %29 to double
  store double %conv17, double* %x_sum, align 8
  %30 = load double, double* %x_sum, align 8
  store double %30, double* %x_last, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %31 = load i32, i32* %i, align 4
  %32 = load i32, i32* %width, align 4
  %33 = load i32, i32* %orig_width, align 4
  %add18 = add nsw i32 %32, %33
  %cmp = icmp slt i32 %31, %add18
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %34 = load double, double* %x_sum, align 8
  %35 = load double, double* %x_ratio, align 8
  %add20 = fadd double %34, %35
  %36 = load i32, i32* %src_col, align 4
  %add21 = add nsw i32 %36, 1
  %conv22 = sitofp i32 %add21 to double
  %add23 = fadd double %conv22, 1.000000e-04
  %cmp24 = fcmp ole double %add20, %add23
  br i1 %cmp24, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %37 = load double, double* %x_ratio, align 8
  %38 = load double, double* %x_sum, align 8
  %add26 = fadd double %38, %37
  store double %add26, double* %x_sum, align 8
  %39 = load double, double* %x_sum, align 8
  %40 = load double, double* %x_last, align 8
  %sub = fsub double %39, %40
  %41 = load i32, i32* %i, align 4
  %idxprom = sext i32 %41 to i64
  %42 = load double*, double** %x_frac, align 8
  %arrayidx = getelementptr inbounds double, double* %42, i64 %idxprom
  store double %sub, double* %arrayidx, align 8
  br label %if.end

if.else:                                          ; preds = %for.body
  %43 = load i32, i32* %src_col, align 4
  %inc = add nsw i32 %43, 1
  store i32 %inc, i32* %src_col, align 4
  %44 = load i32, i32* %src_col, align 4
  %conv27 = sitofp i32 %44 to double
  %45 = load double, double* %x_last, align 8
  %sub28 = fsub double %conv27, %45
  %46 = load i32, i32* %i, align 4
  %idxprom29 = sext i32 %46 to i64
  %47 = load double*, double** %x_frac, align 8
  %arrayidx30 = getelementptr inbounds double, double* %47, i64 %idxprom29
  store double %sub28, double* %arrayidx30, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %48 = load i32, i32* %i, align 4
  %idxprom31 = sext i32 %48 to i64
  %49 = load double*, double** %x_frac, align 8
  %arrayidx32 = getelementptr inbounds double, double* %49, i64 %idxprom31
  %50 = load double, double* %arrayidx32, align 8
  %51 = load double, double* %x_last, align 8
  %add33 = fadd double %51, %50
  store double %add33, double* %x_last, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %52 = load i32, i32* %i, align 4
  %inc34 = add nsw i32 %52, 1
  store i32 %inc34, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %53 = load double*, double** %row, align 8
  %54 = bitcast double* %53 to i8*
  %55 = load i32, i32* %width, align 4
  %conv35 = sext i32 %55 to i64
  %mul36 = mul i64 8, %conv35
  %56 = load i32, i32* %bytes, align 4
  %conv37 = sext i32 %56 to i64
  %mul38 = mul i64 %mul36, %conv37
  call void @llvm.memset.p0i8.i64(i8* %54, i8 0, i64 %mul38, i32 8, i1 false)
  store i32 0, i32* %src_row, align 4
  %57 = load i32, i32* %src_row, align 4
  %conv39 = sitofp i32 %57 to double
  store double %conv39, double* %y_sum, align 8
  %58 = load double, double* %y_sum, align 8
  store double %58, double* %y_last, align 8
  %59 = load %struct._PixelRegion*, %struct._PixelRegion** %srcPR.addr, align 8
  %60 = load %struct._PixelRegion*, %struct._PixelRegion** %srcPR.addr, align 8
  %x = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %60, i32 0, i32 6
  %61 = load i32, i32* %x, align 4
  %62 = load %struct._PixelRegion*, %struct._PixelRegion** %srcPR.addr, align 8
  %y = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %62, i32 0, i32 7
  %63 = load i32, i32* %y, align 4
  %64 = load i32, i32* %src_row, align 4
  %65 = load i32, i32* %subsample.addr, align 4
  %mul40 = mul nsw i32 %64, %65
  %add41 = add nsw i32 %63, %mul40
  %66 = load i32, i32* %orig_width, align 4
  %67 = load i32, i32* %subsample.addr, align 4
  %mul42 = mul nsw i32 %66, %67
  %68 = load i8*, i8** %src, align 8
  %69 = load i32, i32* %subsample.addr, align 4
  call void @pixel_region_get_row(%struct._PixelRegion* %59, i32 %61, i32 %add41, i32 %mul42, i8* %68, i32 %69)
  store i32 0, i32* %i, align 4
  br label %for.cond.43

for.cond.43:                                      ; preds = %if.end.206, %for.end
  %70 = load i32, i32* %i, align 4
  %71 = load i32, i32* %height, align 4
  %cmp44 = icmp slt i32 %70, %71
  br i1 %cmp44, label %for.body.46, label %for.end.207

for.body.46:                                      ; preds = %for.cond.43
  store i32 0, i32* %src_col, align 4
  %72 = load i32, i32* %src_col, align 4
  %conv47 = sitofp i32 %72 to double
  store double %conv47, double* %x_sum, align 8
  %73 = load double, double* %y_sum, align 8
  %74 = load double, double* %y_ratio, align 8
  %add48 = fadd double %73, %74
  %75 = load i32, i32* %src_row, align 4
  %add49 = add nsw i32 %75, 1
  %conv50 = sitofp i32 %add49 to double
  %add51 = fadd double %conv50, 1.000000e-04
  %cmp52 = fcmp ole double %add48, %add51
  br i1 %cmp52, label %if.then.54, label %if.else.57

if.then.54:                                       ; preds = %for.body.46
  %76 = load double, double* %y_ratio, align 8
  %77 = load double, double* %y_sum, align 8
  %add55 = fadd double %77, %76
  store double %add55, double* %y_sum, align 8
  %78 = load double, double* %y_sum, align 8
  %79 = load double, double* %y_last, align 8
  %sub56 = fsub double %78, %79
  store double %sub56, double* %y_frac, align 8
  store i32 1, i32* %advance_dest, align 4
  br label %if.end.61

if.else.57:                                       ; preds = %for.body.46
  %80 = load i32, i32* %src_row, align 4
  %inc58 = add nsw i32 %80, 1
  store i32 %inc58, i32* %src_row, align 4
  %81 = load i32, i32* %src_row, align 4
  %conv59 = sitofp i32 %81 to double
  %82 = load double, double* %y_last, align 8
  %sub60 = fsub double %conv59, %82
  store double %sub60, double* %y_frac, align 8
  store i32 0, i32* %advance_dest, align 4
  br label %if.end.61

if.end.61:                                        ; preds = %if.else.57, %if.then.54
  %83 = load double, double* %y_frac, align 8
  %84 = load double, double* %y_last, align 8
  %add62 = fadd double %84, %83
  store double %add62, double* %y_last, align 8
  %85 = load i8*, i8** %src, align 8
  store i8* %85, i8** %s, align 8
  %86 = load double*, double** %row, align 8
  store double* %86, double** %r, align 8
  store i32 0, i32* %frac, align 4
  %87 = load i32, i32* %width, align 4
  store i32 %87, i32* %j, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end.124, %if.end.61
  %88 = load i32, i32* %j, align 4
  %tobool = icmp ne i32 %88, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %89 = load i32, i32* %frac, align 4
  %inc63 = add nsw i32 %89, 1
  store i32 %inc63, i32* %frac, align 4
  %idxprom64 = sext i32 %89 to i64
  %90 = load double*, double** %x_frac, align 8
  %arrayidx65 = getelementptr inbounds double, double* %90, i64 %idxprom64
  %91 = load double, double* %arrayidx65, align 8
  %92 = load double, double* %y_frac, align 8
  %mul66 = fmul double %91, %92
  store double %mul66, double* %tot_frac, align 8
  %93 = load i32, i32* %has_alpha, align 4
  %tobool67 = icmp ne i32 %93, 0
  br i1 %tobool67, label %if.then.68, label %if.else.95

if.then.68:                                       ; preds = %while.body
  %94 = load double, double* %tot_frac, align 8
  %95 = load i32, i32* %bytes, align 4
  %sub69 = sub nsw i32 %95, 1
  %idxprom70 = sext i32 %sub69 to i64
  %96 = load i8*, i8** %s, align 8
  %arrayidx71 = getelementptr inbounds i8, i8* %96, i64 %idxprom70
  %97 = load i8, i8* %arrayidx71, align 1
  %conv72 = uitofp i8 %97 to double
  %mul73 = fmul double %94, %conv72
  %div74 = fdiv double %mul73, 2.550000e+02
  store double %div74, double* %local_frac, align 8
  store i32 0, i32* %b, align 4
  br label %for.cond.75

for.cond.75:                                      ; preds = %for.inc.88, %if.then.68
  %98 = load i32, i32* %b, align 4
  %99 = load i32, i32* %bytes, align 4
  %sub76 = sub nsw i32 %99, 1
  %cmp77 = icmp slt i32 %98, %sub76
  br i1 %cmp77, label %for.body.79, label %for.end.90

for.body.79:                                      ; preds = %for.cond.75
  %100 = load i32, i32* %b, align 4
  %idxprom80 = sext i32 %100 to i64
  %101 = load i8*, i8** %s, align 8
  %arrayidx81 = getelementptr inbounds i8, i8* %101, i64 %idxprom80
  %102 = load i8, i8* %arrayidx81, align 1
  %conv82 = zext i8 %102 to i32
  %conv83 = sitofp i32 %conv82 to double
  %103 = load double, double* %local_frac, align 8
  %mul84 = fmul double %conv83, %103
  %104 = load i32, i32* %b, align 4
  %idxprom85 = sext i32 %104 to i64
  %105 = load double*, double** %r, align 8
  %arrayidx86 = getelementptr inbounds double, double* %105, i64 %idxprom85
  %106 = load double, double* %arrayidx86, align 8
  %add87 = fadd double %106, %mul84
  store double %add87, double* %arrayidx86, align 8
  br label %for.inc.88

for.inc.88:                                       ; preds = %for.body.79
  %107 = load i32, i32* %b, align 4
  %inc89 = add nsw i32 %107, 1
  store i32 %inc89, i32* %b, align 4
  br label %for.cond.75

for.end.90:                                       ; preds = %for.cond.75
  %108 = load double, double* %local_frac, align 8
  %109 = load i32, i32* %bytes, align 4
  %sub91 = sub nsw i32 %109, 1
  %idxprom92 = sext i32 %sub91 to i64
  %110 = load double*, double** %r, align 8
  %arrayidx93 = getelementptr inbounds double, double* %110, i64 %idxprom92
  %111 = load double, double* %arrayidx93, align 8
  %add94 = fadd double %111, %108
  store double %add94, double* %arrayidx93, align 8
  br label %if.end.111

if.else.95:                                       ; preds = %while.body
  store i32 0, i32* %b, align 4
  br label %for.cond.96

for.cond.96:                                      ; preds = %for.inc.108, %if.else.95
  %112 = load i32, i32* %b, align 4
  %113 = load i32, i32* %bytes, align 4
  %cmp97 = icmp slt i32 %112, %113
  br i1 %cmp97, label %for.body.99, label %for.end.110

for.body.99:                                      ; preds = %for.cond.96
  %114 = load i32, i32* %b, align 4
  %idxprom100 = sext i32 %114 to i64
  %115 = load i8*, i8** %s, align 8
  %arrayidx101 = getelementptr inbounds i8, i8* %115, i64 %idxprom100
  %116 = load i8, i8* %arrayidx101, align 1
  %conv102 = zext i8 %116 to i32
  %conv103 = sitofp i32 %conv102 to double
  %117 = load double, double* %tot_frac, align 8
  %mul104 = fmul double %conv103, %117
  %118 = load i32, i32* %b, align 4
  %idxprom105 = sext i32 %118 to i64
  %119 = load double*, double** %r, align 8
  %arrayidx106 = getelementptr inbounds double, double* %119, i64 %idxprom105
  %120 = load double, double* %arrayidx106, align 8
  %add107 = fadd double %120, %mul104
  store double %add107, double* %arrayidx106, align 8
  br label %for.inc.108

for.inc.108:                                      ; preds = %for.body.99
  %121 = load i32, i32* %b, align 4
  %inc109 = add nsw i32 %121, 1
  store i32 %inc109, i32* %b, align 4
  br label %for.cond.96

for.end.110:                                      ; preds = %for.cond.96
  br label %if.end.111

if.end.111:                                       ; preds = %for.end.110, %for.end.90
  %122 = load double, double* %x_sum, align 8
  %123 = load double, double* %x_ratio, align 8
  %add112 = fadd double %122, %123
  %124 = load i32, i32* %src_col, align 4
  %add113 = add nsw i32 %124, 1
  %conv114 = sitofp i32 %add113 to double
  %add115 = fadd double %conv114, 1.000000e-04
  %cmp116 = fcmp ole double %add112, %add115
  br i1 %cmp116, label %if.then.118, label %if.else.120

if.then.118:                                      ; preds = %if.end.111
  %125 = load i32, i32* %bytes, align 4
  %126 = load double*, double** %r, align 8
  %idx.ext = sext i32 %125 to i64
  %add.ptr = getelementptr inbounds double, double* %126, i64 %idx.ext
  store double* %add.ptr, double** %r, align 8
  %127 = load double, double* %x_ratio, align 8
  %128 = load double, double* %x_sum, align 8
  %add119 = fadd double %128, %127
  store double %add119, double* %x_sum, align 8
  %129 = load i32, i32* %j, align 4
  %dec = add nsw i32 %129, -1
  store i32 %dec, i32* %j, align 4
  br label %if.end.124

if.else.120:                                      ; preds = %if.end.111
  %130 = load i32, i32* %bytes, align 4
  %131 = load i8*, i8** %s, align 8
  %idx.ext121 = sext i32 %130 to i64
  %add.ptr122 = getelementptr inbounds i8, i8* %131, i64 %idx.ext121
  store i8* %add.ptr122, i8** %s, align 8
  %132 = load i32, i32* %src_col, align 4
  %inc123 = add nsw i32 %132, 1
  store i32 %inc123, i32* %src_col, align 4
  br label %if.end.124

if.end.124:                                       ; preds = %if.else.120, %if.then.118
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %133 = load i32, i32* %advance_dest, align 4
  %tobool125 = icmp ne i32 %133, 0
  br i1 %tobool125, label %if.then.126, label %if.else.200

if.then.126:                                      ; preds = %while.end
  %134 = load double, double* %x_ratio, align 8
  %135 = load double, double* %y_ratio, align 8
  %mul127 = fmul double %134, %135
  %div128 = fdiv double 1.000000e+00, %mul127
  store double %div128, double* %tot_frac, align 8
  %136 = load i8*, i8** %dest, align 8
  store i8* %136, i8** %d, align 8
  %137 = load double*, double** %row, align 8
  store double* %137, double** %r, align 8
  %138 = load i32, i32* %width, align 4
  store i32 %138, i32* %j, align 4
  br label %while.cond.129

while.cond.129:                                   ; preds = %if.end.189, %if.then.126
  %139 = load i32, i32* %j, align 4
  %dec130 = add nsw i32 %139, -1
  store i32 %dec130, i32* %j, align 4
  %tobool131 = icmp ne i32 %139, 0
  br i1 %tobool131, label %while.body.132, label %while.end.194

while.body.132:                                   ; preds = %while.cond.129
  %140 = load i32, i32* %has_alpha, align 4
  %tobool133 = icmp ne i32 %140, 0
  br i1 %tobool133, label %if.then.134, label %if.else.174

if.then.134:                                      ; preds = %while.body.132
  %141 = load i32, i32* %bytes, align 4
  %sub135 = sub nsw i32 %141, 1
  %idxprom136 = sext i32 %sub135 to i64
  %142 = load double*, double** %r, align 8
  %arrayidx137 = getelementptr inbounds double, double* %142, i64 %idxprom136
  %143 = load double, double* %arrayidx137, align 8
  store double %143, double* %alpha, align 8
  %144 = load double, double* %alpha, align 8
  %cmp138 = fcmp ogt double %144, 1.000000e-04
  br i1 %cmp138, label %if.then.140, label %if.else.163

if.then.140:                                      ; preds = %if.then.134
  store i32 0, i32* %b, align 4
  br label %for.cond.141

for.cond.141:                                     ; preds = %for.inc.153, %if.then.140
  %145 = load i32, i32* %b, align 4
  %146 = load i32, i32* %bytes, align 4
  %sub142 = sub nsw i32 %146, 1
  %cmp143 = icmp slt i32 %145, %sub142
  br i1 %cmp143, label %for.body.145, label %for.end.155

for.body.145:                                     ; preds = %for.cond.141
  %147 = load i32, i32* %b, align 4
  %idxprom146 = sext i32 %147 to i64
  %148 = load double*, double** %r, align 8
  %arrayidx147 = getelementptr inbounds double, double* %148, i64 %idxprom146
  %149 = load double, double* %arrayidx147, align 8
  %150 = load double, double* %alpha, align 8
  %div148 = fdiv double %149, %150
  %add149 = fadd double %div148, 5.000000e-01
  %conv150 = fptoui double %add149 to i8
  %151 = load i32, i32* %b, align 4
  %idxprom151 = sext i32 %151 to i64
  %152 = load i8*, i8** %d, align 8
  %arrayidx152 = getelementptr inbounds i8, i8* %152, i64 %idxprom151
  store i8 %conv150, i8* %arrayidx152, align 1
  br label %for.inc.153

for.inc.153:                                      ; preds = %for.body.145
  %153 = load i32, i32* %b, align 4
  %inc154 = add nsw i32 %153, 1
  store i32 %inc154, i32* %b, align 4
  br label %for.cond.141

for.end.155:                                      ; preds = %for.cond.141
  %154 = load double, double* %alpha, align 8
  %155 = load double, double* %tot_frac, align 8
  %mul156 = fmul double %154, %155
  %mul157 = fmul double %mul156, 2.550000e+02
  %add158 = fadd double %mul157, 5.000000e-01
  %conv159 = fptoui double %add158 to i8
  %156 = load i32, i32* %bytes, align 4
  %sub160 = sub nsw i32 %156, 1
  %idxprom161 = sext i32 %sub160 to i64
  %157 = load i8*, i8** %d, align 8
  %arrayidx162 = getelementptr inbounds i8, i8* %157, i64 %idxprom161
  store i8 %conv159, i8* %arrayidx162, align 1
  br label %if.end.173

if.else.163:                                      ; preds = %if.then.134
  store i32 0, i32* %b, align 4
  br label %for.cond.164

for.cond.164:                                     ; preds = %for.inc.170, %if.else.163
  %158 = load i32, i32* %b, align 4
  %159 = load i32, i32* %bytes, align 4
  %cmp165 = icmp slt i32 %158, %159
  br i1 %cmp165, label %for.body.167, label %for.end.172

for.body.167:                                     ; preds = %for.cond.164
  %160 = load i32, i32* %b, align 4
  %idxprom168 = sext i32 %160 to i64
  %161 = load i8*, i8** %d, align 8
  %arrayidx169 = getelementptr inbounds i8, i8* %161, i64 %idxprom168
  store i8 0, i8* %arrayidx169, align 1
  br label %for.inc.170

for.inc.170:                                      ; preds = %for.body.167
  %162 = load i32, i32* %b, align 4
  %inc171 = add nsw i32 %162, 1
  store i32 %inc171, i32* %b, align 4
  br label %for.cond.164

for.end.172:                                      ; preds = %for.cond.164
  br label %if.end.173

if.end.173:                                       ; preds = %for.end.172, %for.end.155
  br label %if.end.189

if.else.174:                                      ; preds = %while.body.132
  store i32 0, i32* %b, align 4
  br label %for.cond.175

for.cond.175:                                     ; preds = %for.inc.186, %if.else.174
  %163 = load i32, i32* %b, align 4
  %164 = load i32, i32* %bytes, align 4
  %cmp176 = icmp slt i32 %163, %164
  br i1 %cmp176, label %for.body.178, label %for.end.188

for.body.178:                                     ; preds = %for.cond.175
  %165 = load i32, i32* %b, align 4
  %idxprom179 = sext i32 %165 to i64
  %166 = load double*, double** %r, align 8
  %arrayidx180 = getelementptr inbounds double, double* %166, i64 %idxprom179
  %167 = load double, double* %arrayidx180, align 8
  %168 = load double, double* %tot_frac, align 8
  %mul181 = fmul double %167, %168
  %add182 = fadd double %mul181, 5.000000e-01
  %conv183 = fptoui double %add182 to i8
  %169 = load i32, i32* %b, align 4
  %idxprom184 = sext i32 %169 to i64
  %170 = load i8*, i8** %d, align 8
  %arrayidx185 = getelementptr inbounds i8, i8* %170, i64 %idxprom184
  store i8 %conv183, i8* %arrayidx185, align 1
  br label %for.inc.186

for.inc.186:                                      ; preds = %for.body.178
  %171 = load i32, i32* %b, align 4
  %inc187 = add nsw i32 %171, 1
  store i32 %inc187, i32* %b, align 4
  br label %for.cond.175

for.end.188:                                      ; preds = %for.cond.175
  br label %if.end.189

if.end.189:                                       ; preds = %for.end.188, %if.end.173
  %172 = load i32, i32* %bytes, align 4
  %173 = load double*, double** %r, align 8
  %idx.ext190 = sext i32 %172 to i64
  %add.ptr191 = getelementptr inbounds double, double* %173, i64 %idx.ext190
  store double* %add.ptr191, double** %r, align 8
  %174 = load i32, i32* %bytes, align 4
  %175 = load i8*, i8** %d, align 8
  %idx.ext192 = sext i32 %174 to i64
  %add.ptr193 = getelementptr inbounds i8, i8* %175, i64 %idx.ext192
  store i8* %add.ptr193, i8** %d, align 8
  br label %while.cond.129

while.end.194:                                    ; preds = %while.cond.129
  %176 = load i32, i32* %destwidth, align 4
  %177 = load i8*, i8** %dest, align 8
  %idx.ext195 = sext i32 %176 to i64
  %add.ptr196 = getelementptr inbounds i8, i8* %177, i64 %idx.ext195
  store i8* %add.ptr196, i8** %dest, align 8
  %178 = load double*, double** %row, align 8
  %179 = bitcast double* %178 to i8*
  %180 = load i32, i32* %destwidth, align 4
  %conv197 = sext i32 %180 to i64
  %mul198 = mul i64 8, %conv197
  call void @llvm.memset.p0i8.i64(i8* %179, i8 0, i64 %mul198, i32 8, i1 false)
  %181 = load i32, i32* %i, align 4
  %inc199 = add nsw i32 %181, 1
  store i32 %inc199, i32* %i, align 4
  br label %if.end.206

if.else.200:                                      ; preds = %while.end
  %182 = load %struct._PixelRegion*, %struct._PixelRegion** %srcPR.addr, align 8
  %183 = load %struct._PixelRegion*, %struct._PixelRegion** %srcPR.addr, align 8
  %x201 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %183, i32 0, i32 6
  %184 = load i32, i32* %x201, align 4
  %185 = load %struct._PixelRegion*, %struct._PixelRegion** %srcPR.addr, align 8
  %y202 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %185, i32 0, i32 7
  %186 = load i32, i32* %y202, align 4
  %187 = load i32, i32* %src_row, align 4
  %188 = load i32, i32* %subsample.addr, align 4
  %mul203 = mul nsw i32 %187, %188
  %add204 = add nsw i32 %186, %mul203
  %189 = load i32, i32* %orig_width, align 4
  %190 = load i32, i32* %subsample.addr, align 4
  %mul205 = mul nsw i32 %189, %190
  %191 = load i8*, i8** %src, align 8
  %192 = load i32, i32* %subsample.addr, align 4
  call void @pixel_region_get_row(%struct._PixelRegion* %182, i32 %184, i32 %add204, i32 %mul205, i8* %191, i32 %192)
  br label %if.end.206

if.end.206:                                       ; preds = %if.else.200, %while.end.194
  br label %for.cond.43

for.end.207:                                      ; preds = %for.cond.43
  %193 = load double*, double** %row, align 8
  %194 = bitcast double* %193 to i8*
  call void @g_free(i8* %194)
  %195 = load double*, double** %x_frac, align 8
  %196 = bitcast double* %195 to i8*
  call void @g_free(i8* %196)
  %197 = load i8*, i8** %src, align 8
  call void @g_free(i8* %197)
  ret void
}

declare i32 @pixel_region_has_alpha(%struct._PixelRegion*) #1

declare noalias i8* @g_malloc_n(i64, i64) #1

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #2

declare void @pixel_region_get_row(%struct._PixelRegion*, i32, i32, i32, i8*, i32) #1

declare void @g_free(i8*) #1

; Function Attrs: nounwind uwtable
define void @subsample_indexed_region(%struct._PixelRegion* %srcPR, %struct._PixelRegion* %destPR, i8* %cmap, i32 %subsample) #0 {
entry:
  %srcPR.addr = alloca %struct._PixelRegion*, align 8
  %destPR.addr = alloca %struct._PixelRegion*, align 8
  %cmap.addr = alloca i8*, align 8
  %subsample.addr = alloca i32, align 4
  %width = alloca i32, align 4
  %height = alloca i32, align 4
  %orig_width = alloca i32, align 4
  %orig_height = alloca i32, align 4
  %x_ratio = alloca double, align 8
  %y_ratio = alloca double, align 8
  %bytes = alloca i32, align 4
  %destwidth = alloca i32, align 4
  %has_alpha = alloca i32, align 4
  %src = alloca i8*, align 8
  %s = alloca i8*, align 8
  %dest = alloca i8*, align 8
  %d = alloca i8*, align 8
  %row = alloca double*, align 8
  %r = alloca double*, align 8
  %src_row = alloca i32, align 4
  %src_col = alloca i32, align 4
  %x_sum = alloca double, align 8
  %y_sum = alloca double, align 8
  %x_last = alloca double, align 8
  %y_last = alloca double, align 8
  %x_frac = alloca double*, align 8
  %y_frac = alloca double, align 8
  %tot_frac = alloca double, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %b = alloca i32, align 4
  %frac = alloca i32, align 4
  %advance_dest = alloca i32, align 4
  %index = alloca i32, align 4
  %alpha = alloca double, align 8
  store %struct._PixelRegion* %srcPR, %struct._PixelRegion** %srcPR.addr, align 8
  store %struct._PixelRegion* %destPR, %struct._PixelRegion** %destPR.addr, align 8
  store i8* %cmap, i8** %cmap.addr, align 8
  store i32 %subsample, i32* %subsample.addr, align 4
  %0 = load %struct._PixelRegion*, %struct._PixelRegion** %destPR.addr, align 8
  %w = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %0, i32 0, i32 8
  %1 = load i32, i32* %w, align 4
  store i32 %1, i32* %width, align 4
  %2 = load %struct._PixelRegion*, %struct._PixelRegion** %destPR.addr, align 8
  %h = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %2, i32 0, i32 9
  %3 = load i32, i32* %h, align 4
  store i32 %3, i32* %height, align 4
  %4 = load %struct._PixelRegion*, %struct._PixelRegion** %srcPR.addr, align 8
  %w1 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %4, i32 0, i32 8
  %5 = load i32, i32* %w1, align 4
  %6 = load i32, i32* %subsample.addr, align 4
  %div = sdiv i32 %5, %6
  store i32 %div, i32* %orig_width, align 4
  %7 = load %struct._PixelRegion*, %struct._PixelRegion** %srcPR.addr, align 8
  %h2 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %7, i32 0, i32 9
  %8 = load i32, i32* %h2, align 4
  %9 = load i32, i32* %subsample.addr, align 4
  %div3 = sdiv i32 %8, %9
  store i32 %div3, i32* %orig_height, align 4
  %10 = load i32, i32* %orig_width, align 4
  %conv = sitofp i32 %10 to double
  %11 = load i32, i32* %width, align 4
  %conv4 = sitofp i32 %11 to double
  %div5 = fdiv double %conv, %conv4
  store double %div5, double* %x_ratio, align 8
  %12 = load i32, i32* %orig_height, align 4
  %conv6 = sitofp i32 %12 to double
  %13 = load i32, i32* %height, align 4
  %conv7 = sitofp i32 %13 to double
  %div8 = fdiv double %conv6, %conv7
  store double %div8, double* %y_ratio, align 8
  %14 = load %struct._PixelRegion*, %struct._PixelRegion** %destPR.addr, align 8
  %bytes9 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %14, i32 0, i32 10
  %15 = load i32, i32* %bytes9, align 4
  store i32 %15, i32* %bytes, align 4
  %16 = load %struct._PixelRegion*, %struct._PixelRegion** %destPR.addr, align 8
  %rowstride = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %16, i32 0, i32 5
  %17 = load i32, i32* %rowstride, align 4
  store i32 %17, i32* %destwidth, align 4
  %18 = load %struct._PixelRegion*, %struct._PixelRegion** %srcPR.addr, align 8
  %call = call i32 @pixel_region_has_alpha(%struct._PixelRegion* %18)
  store i32 %call, i32* %has_alpha, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %19 = load i8*, i8** %cmap.addr, align 8
  %cmp = icmp ne i8* %19, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.subsample_indexed_region, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0))
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %20 = load i32, i32* %orig_width, align 4
  %21 = load i32, i32* %bytes, align 4
  %mul = mul nsw i32 %20, %21
  %conv11 = sext i32 %mul to i64
  %call12 = call noalias i8* @g_malloc_n(i64 %conv11, i64 1)
  store i8* %call12, i8** %src, align 8
  %22 = load %struct._PixelRegion*, %struct._PixelRegion** %destPR.addr, align 8
  %data = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %22, i32 0, i32 0
  %23 = load i8*, i8** %data, align 8
  store i8* %23, i8** %dest, align 8
  %24 = load i32, i32* %width, align 4
  %25 = load i32, i32* %bytes, align 4
  %mul13 = mul nsw i32 %24, %25
  %conv14 = sext i32 %mul13 to i64
  %call15 = call noalias i8* @g_malloc0_n(i64 %conv14, i64 8)
  %26 = bitcast i8* %call15 to double*
  store double* %26, double** %row, align 8
  %27 = load i32, i32* %width, align 4
  %28 = load i32, i32* %orig_width, align 4
  %add = add nsw i32 %27, %28
  %conv16 = sext i32 %add to i64
  %call17 = call noalias i8* @g_malloc_n(i64 %conv16, i64 8)
  %29 = bitcast i8* %call17 to double*
  store double* %29, double** %x_frac, align 8
  store i32 0, i32* %src_col, align 4
  %30 = load i32, i32* %src_col, align 4
  %conv18 = sitofp i32 %30 to double
  store double %conv18, double* %x_sum, align 8
  %31 = load double, double* %x_sum, align 8
  store double %31, double* %x_last, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.end
  %32 = load i32, i32* %i, align 4
  %33 = load i32, i32* %width, align 4
  %34 = load i32, i32* %orig_width, align 4
  %add19 = add nsw i32 %33, %34
  %cmp20 = icmp slt i32 %32, %add19
  br i1 %cmp20, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %35 = load double, double* %x_sum, align 8
  %36 = load double, double* %x_ratio, align 8
  %add22 = fadd double %35, %36
  %37 = load i32, i32* %src_col, align 4
  %add23 = add nsw i32 %37, 1
  %conv24 = sitofp i32 %add23 to double
  %add25 = fadd double %conv24, 1.000000e-04
  %cmp26 = fcmp ole double %add22, %add25
  br i1 %cmp26, label %if.then.28, label %if.else.30

if.then.28:                                       ; preds = %for.body
  %38 = load double, double* %x_ratio, align 8
  %39 = load double, double* %x_sum, align 8
  %add29 = fadd double %39, %38
  store double %add29, double* %x_sum, align 8
  %40 = load double, double* %x_sum, align 8
  %41 = load double, double* %x_last, align 8
  %sub = fsub double %40, %41
  %42 = load i32, i32* %i, align 4
  %idxprom = sext i32 %42 to i64
  %43 = load double*, double** %x_frac, align 8
  %arrayidx = getelementptr inbounds double, double* %43, i64 %idxprom
  store double %sub, double* %arrayidx, align 8
  br label %if.end.35

if.else.30:                                       ; preds = %for.body
  %44 = load i32, i32* %src_col, align 4
  %inc = add nsw i32 %44, 1
  store i32 %inc, i32* %src_col, align 4
  %45 = load i32, i32* %src_col, align 4
  %conv31 = sitofp i32 %45 to double
  %46 = load double, double* %x_last, align 8
  %sub32 = fsub double %conv31, %46
  %47 = load i32, i32* %i, align 4
  %idxprom33 = sext i32 %47 to i64
  %48 = load double*, double** %x_frac, align 8
  %arrayidx34 = getelementptr inbounds double, double* %48, i64 %idxprom33
  store double %sub32, double* %arrayidx34, align 8
  br label %if.end.35

if.end.35:                                        ; preds = %if.else.30, %if.then.28
  %49 = load i32, i32* %i, align 4
  %idxprom36 = sext i32 %49 to i64
  %50 = load double*, double** %x_frac, align 8
  %arrayidx37 = getelementptr inbounds double, double* %50, i64 %idxprom36
  %51 = load double, double* %arrayidx37, align 8
  %52 = load double, double* %x_last, align 8
  %add38 = fadd double %52, %51
  store double %add38, double* %x_last, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end.35
  %53 = load i32, i32* %i, align 4
  %inc39 = add nsw i32 %53, 1
  store i32 %inc39, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %src_row, align 4
  %54 = load i32, i32* %src_row, align 4
  %conv40 = sitofp i32 %54 to double
  store double %conv40, double* %y_sum, align 8
  %55 = load double, double* %y_sum, align 8
  store double %55, double* %y_last, align 8
  %56 = load %struct._PixelRegion*, %struct._PixelRegion** %srcPR.addr, align 8
  %57 = load %struct._PixelRegion*, %struct._PixelRegion** %srcPR.addr, align 8
  %x = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %57, i32 0, i32 6
  %58 = load i32, i32* %x, align 4
  %59 = load %struct._PixelRegion*, %struct._PixelRegion** %srcPR.addr, align 8
  %y = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %59, i32 0, i32 7
  %60 = load i32, i32* %y, align 4
  %61 = load i32, i32* %src_row, align 4
  %62 = load i32, i32* %subsample.addr, align 4
  %mul41 = mul nsw i32 %61, %62
  %add42 = add nsw i32 %60, %mul41
  %63 = load i32, i32* %orig_width, align 4
  %64 = load i32, i32* %subsample.addr, align 4
  %mul43 = mul nsw i32 %63, %64
  %65 = load i8*, i8** %src, align 8
  %66 = load i32, i32* %subsample.addr, align 4
  call void @pixel_region_get_row(%struct._PixelRegion* %56, i32 %58, i32 %add42, i32 %mul43, i8* %65, i32 %66)
  store i32 0, i32* %i, align 4
  br label %for.cond.44

for.cond.44:                                      ; preds = %if.end.224, %for.end
  %67 = load i32, i32* %i, align 4
  %68 = load i32, i32* %height, align 4
  %cmp45 = icmp slt i32 %67, %68
  br i1 %cmp45, label %for.body.47, label %for.end.225

for.body.47:                                      ; preds = %for.cond.44
  store i32 0, i32* %src_col, align 4
  %69 = load i32, i32* %src_col, align 4
  %conv48 = sitofp i32 %69 to double
  store double %conv48, double* %x_sum, align 8
  %70 = load double, double* %y_sum, align 8
  %71 = load double, double* %y_ratio, align 8
  %add49 = fadd double %70, %71
  %72 = load i32, i32* %src_row, align 4
  %add50 = add nsw i32 %72, 1
  %conv51 = sitofp i32 %add50 to double
  %add52 = fadd double %conv51, 1.000000e-04
  %cmp53 = fcmp ole double %add49, %add52
  br i1 %cmp53, label %if.then.55, label %if.else.58

if.then.55:                                       ; preds = %for.body.47
  %73 = load double, double* %y_ratio, align 8
  %74 = load double, double* %y_sum, align 8
  %add56 = fadd double %74, %73
  store double %add56, double* %y_sum, align 8
  %75 = load double, double* %y_sum, align 8
  %76 = load double, double* %y_last, align 8
  %sub57 = fsub double %75, %76
  store double %sub57, double* %y_frac, align 8
  store i32 1, i32* %advance_dest, align 4
  br label %if.end.62

if.else.58:                                       ; preds = %for.body.47
  %77 = load i32, i32* %src_row, align 4
  %inc59 = add nsw i32 %77, 1
  store i32 %inc59, i32* %src_row, align 4
  %78 = load i32, i32* %src_row, align 4
  %conv60 = sitofp i32 %78 to double
  %79 = load double, double* %y_last, align 8
  %sub61 = fsub double %conv60, %79
  store double %sub61, double* %y_frac, align 8
  store i32 0, i32* %advance_dest, align 4
  br label %if.end.62

if.end.62:                                        ; preds = %if.else.58, %if.then.55
  %80 = load double, double* %y_frac, align 8
  %81 = load double, double* %y_last, align 8
  %add63 = fadd double %81, %80
  store double %add63, double* %y_last, align 8
  %82 = load i8*, i8** %src, align 8
  store i8* %82, i8** %s, align 8
  %83 = load double*, double** %row, align 8
  store double* %83, double** %r, align 8
  store i32 0, i32* %frac, align 4
  %84 = load i32, i32* %width, align 4
  store i32 %84, i32* %j, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end.142, %if.end.62
  %85 = load i32, i32* %j, align 4
  %tobool = icmp ne i32 %85, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %86 = load i8*, i8** %s, align 8
  %87 = load i8, i8* %86, align 1
  %conv64 = zext i8 %87 to i32
  %mul65 = mul nsw i32 %conv64, 3
  store i32 %mul65, i32* %index, align 4
  %88 = load i32, i32* %frac, align 4
  %inc66 = add nsw i32 %88, 1
  store i32 %inc66, i32* %frac, align 4
  %idxprom67 = sext i32 %88 to i64
  %89 = load double*, double** %x_frac, align 8
  %arrayidx68 = getelementptr inbounds double, double* %89, i64 %idxprom67
  %90 = load double, double* %arrayidx68, align 8
  %91 = load double, double* %y_frac, align 8
  %mul69 = fmul double %90, %91
  store double %mul69, double* %tot_frac, align 8
  %92 = load i32, i32* %has_alpha, align 4
  %tobool70 = icmp ne i32 %92, 0
  br i1 %tobool70, label %if.then.71, label %if.else.103

if.then.71:                                       ; preds = %while.body
  %93 = load i8*, i8** %s, align 8
  %arrayidx72 = getelementptr inbounds i8, i8* %93, i64 1
  %94 = load i8, i8* %arrayidx72, align 1
  %conv73 = zext i8 %94 to i32
  %and = and i32 %conv73, 128
  %tobool74 = icmp ne i32 %and, 0
  br i1 %tobool74, label %if.then.75, label %if.end.102

if.then.75:                                       ; preds = %if.then.71
  %95 = load i32, i32* %index, align 4
  %inc76 = add nsw i32 %95, 1
  store i32 %inc76, i32* %index, align 4
  %idxprom77 = sext i32 %95 to i64
  %96 = load i8*, i8** %cmap.addr, align 8
  %arrayidx78 = getelementptr inbounds i8, i8* %96, i64 %idxprom77
  %97 = load i8, i8* %arrayidx78, align 1
  %conv79 = zext i8 %97 to i32
  %conv80 = sitofp i32 %conv79 to double
  %98 = load double, double* %tot_frac, align 8
  %mul81 = fmul double %conv80, %98
  %99 = load double*, double** %r, align 8
  %arrayidx82 = getelementptr inbounds double, double* %99, i64 0
  %100 = load double, double* %arrayidx82, align 8
  %add83 = fadd double %100, %mul81
  store double %add83, double* %arrayidx82, align 8
  %101 = load i32, i32* %index, align 4
  %inc84 = add nsw i32 %101, 1
  store i32 %inc84, i32* %index, align 4
  %idxprom85 = sext i32 %101 to i64
  %102 = load i8*, i8** %cmap.addr, align 8
  %arrayidx86 = getelementptr inbounds i8, i8* %102, i64 %idxprom85
  %103 = load i8, i8* %arrayidx86, align 1
  %conv87 = zext i8 %103 to i32
  %conv88 = sitofp i32 %conv87 to double
  %104 = load double, double* %tot_frac, align 8
  %mul89 = fmul double %conv88, %104
  %105 = load double*, double** %r, align 8
  %arrayidx90 = getelementptr inbounds double, double* %105, i64 1
  %106 = load double, double* %arrayidx90, align 8
  %add91 = fadd double %106, %mul89
  store double %add91, double* %arrayidx90, align 8
  %107 = load i32, i32* %index, align 4
  %inc92 = add nsw i32 %107, 1
  store i32 %inc92, i32* %index, align 4
  %idxprom93 = sext i32 %107 to i64
  %108 = load i8*, i8** %cmap.addr, align 8
  %arrayidx94 = getelementptr inbounds i8, i8* %108, i64 %idxprom93
  %109 = load i8, i8* %arrayidx94, align 1
  %conv95 = zext i8 %109 to i32
  %conv96 = sitofp i32 %conv95 to double
  %110 = load double, double* %tot_frac, align 8
  %mul97 = fmul double %conv96, %110
  %111 = load double*, double** %r, align 8
  %arrayidx98 = getelementptr inbounds double, double* %111, i64 2
  %112 = load double, double* %arrayidx98, align 8
  %add99 = fadd double %112, %mul97
  store double %add99, double* %arrayidx98, align 8
  %113 = load double, double* %tot_frac, align 8
  %114 = load double*, double** %r, align 8
  %arrayidx100 = getelementptr inbounds double, double* %114, i64 3
  %115 = load double, double* %arrayidx100, align 8
  %add101 = fadd double %115, %113
  store double %add101, double* %arrayidx100, align 8
  br label %if.end.102

if.end.102:                                       ; preds = %if.then.75, %if.then.71
  br label %if.end.128

if.else.103:                                      ; preds = %while.body
  %116 = load i32, i32* %index, align 4
  %inc104 = add nsw i32 %116, 1
  store i32 %inc104, i32* %index, align 4
  %idxprom105 = sext i32 %116 to i64
  %117 = load i8*, i8** %cmap.addr, align 8
  %arrayidx106 = getelementptr inbounds i8, i8* %117, i64 %idxprom105
  %118 = load i8, i8* %arrayidx106, align 1
  %conv107 = zext i8 %118 to i32
  %conv108 = sitofp i32 %conv107 to double
  %119 = load double, double* %tot_frac, align 8
  %mul109 = fmul double %conv108, %119
  %120 = load double*, double** %r, align 8
  %arrayidx110 = getelementptr inbounds double, double* %120, i64 0
  %121 = load double, double* %arrayidx110, align 8
  %add111 = fadd double %121, %mul109
  store double %add111, double* %arrayidx110, align 8
  %122 = load i32, i32* %index, align 4
  %inc112 = add nsw i32 %122, 1
  store i32 %inc112, i32* %index, align 4
  %idxprom113 = sext i32 %122 to i64
  %123 = load i8*, i8** %cmap.addr, align 8
  %arrayidx114 = getelementptr inbounds i8, i8* %123, i64 %idxprom113
  %124 = load i8, i8* %arrayidx114, align 1
  %conv115 = zext i8 %124 to i32
  %conv116 = sitofp i32 %conv115 to double
  %125 = load double, double* %tot_frac, align 8
  %mul117 = fmul double %conv116, %125
  %126 = load double*, double** %r, align 8
  %arrayidx118 = getelementptr inbounds double, double* %126, i64 1
  %127 = load double, double* %arrayidx118, align 8
  %add119 = fadd double %127, %mul117
  store double %add119, double* %arrayidx118, align 8
  %128 = load i32, i32* %index, align 4
  %inc120 = add nsw i32 %128, 1
  store i32 %inc120, i32* %index, align 4
  %idxprom121 = sext i32 %128 to i64
  %129 = load i8*, i8** %cmap.addr, align 8
  %arrayidx122 = getelementptr inbounds i8, i8* %129, i64 %idxprom121
  %130 = load i8, i8* %arrayidx122, align 1
  %conv123 = zext i8 %130 to i32
  %conv124 = sitofp i32 %conv123 to double
  %131 = load double, double* %tot_frac, align 8
  %mul125 = fmul double %conv124, %131
  %132 = load double*, double** %r, align 8
  %arrayidx126 = getelementptr inbounds double, double* %132, i64 2
  %133 = load double, double* %arrayidx126, align 8
  %add127 = fadd double %133, %mul125
  store double %add127, double* %arrayidx126, align 8
  br label %if.end.128

if.end.128:                                       ; preds = %if.else.103, %if.end.102
  %134 = load double, double* %x_sum, align 8
  %135 = load double, double* %x_ratio, align 8
  %add129 = fadd double %134, %135
  %136 = load i32, i32* %src_col, align 4
  %add130 = add nsw i32 %136, 1
  %conv131 = sitofp i32 %add130 to double
  %add132 = fadd double %conv131, 1.000000e-04
  %cmp133 = fcmp ole double %add129, %add132
  br i1 %cmp133, label %if.then.135, label %if.else.137

if.then.135:                                      ; preds = %if.end.128
  %137 = load i32, i32* %bytes, align 4
  %138 = load double*, double** %r, align 8
  %idx.ext = sext i32 %137 to i64
  %add.ptr = getelementptr inbounds double, double* %138, i64 %idx.ext
  store double* %add.ptr, double** %r, align 8
  %139 = load double, double* %x_ratio, align 8
  %140 = load double, double* %x_sum, align 8
  %add136 = fadd double %140, %139
  store double %add136, double* %x_sum, align 8
  %141 = load i32, i32* %j, align 4
  %dec = add nsw i32 %141, -1
  store i32 %dec, i32* %j, align 4
  br label %if.end.142

if.else.137:                                      ; preds = %if.end.128
  %142 = load %struct._PixelRegion*, %struct._PixelRegion** %srcPR.addr, align 8
  %bytes138 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %142, i32 0, i32 10
  %143 = load i32, i32* %bytes138, align 4
  %144 = load i8*, i8** %s, align 8
  %idx.ext139 = sext i32 %143 to i64
  %add.ptr140 = getelementptr inbounds i8, i8* %144, i64 %idx.ext139
  store i8* %add.ptr140, i8** %s, align 8
  %145 = load i32, i32* %src_col, align 4
  %inc141 = add nsw i32 %145, 1
  store i32 %inc141, i32* %src_col, align 4
  br label %if.end.142

if.end.142:                                       ; preds = %if.else.137, %if.then.135
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %146 = load i32, i32* %advance_dest, align 4
  %tobool143 = icmp ne i32 %146, 0
  br i1 %tobool143, label %if.then.144, label %if.else.218

if.then.144:                                      ; preds = %while.end
  %147 = load double, double* %x_ratio, align 8
  %148 = load double, double* %y_ratio, align 8
  %mul145 = fmul double %147, %148
  %div146 = fdiv double 1.000000e+00, %mul145
  store double %div146, double* %tot_frac, align 8
  %149 = load i8*, i8** %dest, align 8
  store i8* %149, i8** %d, align 8
  %150 = load double*, double** %row, align 8
  store double* %150, double** %r, align 8
  %151 = load i32, i32* %width, align 4
  store i32 %151, i32* %j, align 4
  br label %while.cond.147

while.cond.147:                                   ; preds = %if.end.207, %if.then.144
  %152 = load i32, i32* %j, align 4
  %dec148 = add nsw i32 %152, -1
  store i32 %dec148, i32* %j, align 4
  %tobool149 = icmp ne i32 %152, 0
  br i1 %tobool149, label %while.body.150, label %while.end.212

while.body.150:                                   ; preds = %while.cond.147
  %153 = load i32, i32* %has_alpha, align 4
  %tobool151 = icmp ne i32 %153, 0
  br i1 %tobool151, label %if.then.152, label %if.else.192

if.then.152:                                      ; preds = %while.body.150
  %154 = load i32, i32* %bytes, align 4
  %sub153 = sub nsw i32 %154, 1
  %idxprom154 = sext i32 %sub153 to i64
  %155 = load double*, double** %r, align 8
  %arrayidx155 = getelementptr inbounds double, double* %155, i64 %idxprom154
  %156 = load double, double* %arrayidx155, align 8
  store double %156, double* %alpha, align 8
  %157 = load double, double* %alpha, align 8
  %cmp156 = fcmp ogt double %157, 1.000000e-04
  br i1 %cmp156, label %if.then.158, label %if.else.181

if.then.158:                                      ; preds = %if.then.152
  store i32 0, i32* %b, align 4
  br label %for.cond.159

for.cond.159:                                     ; preds = %for.inc.171, %if.then.158
  %158 = load i32, i32* %b, align 4
  %159 = load i32, i32* %bytes, align 4
  %sub160 = sub nsw i32 %159, 1
  %cmp161 = icmp slt i32 %158, %sub160
  br i1 %cmp161, label %for.body.163, label %for.end.173

for.body.163:                                     ; preds = %for.cond.159
  %160 = load i32, i32* %b, align 4
  %idxprom164 = sext i32 %160 to i64
  %161 = load double*, double** %r, align 8
  %arrayidx165 = getelementptr inbounds double, double* %161, i64 %idxprom164
  %162 = load double, double* %arrayidx165, align 8
  %163 = load double, double* %alpha, align 8
  %div166 = fdiv double %162, %163
  %add167 = fadd double %div166, 5.000000e-01
  %conv168 = fptoui double %add167 to i8
  %164 = load i32, i32* %b, align 4
  %idxprom169 = sext i32 %164 to i64
  %165 = load i8*, i8** %d, align 8
  %arrayidx170 = getelementptr inbounds i8, i8* %165, i64 %idxprom169
  store i8 %conv168, i8* %arrayidx170, align 1
  br label %for.inc.171

for.inc.171:                                      ; preds = %for.body.163
  %166 = load i32, i32* %b, align 4
  %inc172 = add nsw i32 %166, 1
  store i32 %inc172, i32* %b, align 4
  br label %for.cond.159

for.end.173:                                      ; preds = %for.cond.159
  %167 = load double, double* %alpha, align 8
  %168 = load double, double* %tot_frac, align 8
  %mul174 = fmul double %167, %168
  %mul175 = fmul double %mul174, 2.550000e+02
  %add176 = fadd double %mul175, 5.000000e-01
  %conv177 = fptoui double %add176 to i8
  %169 = load i32, i32* %bytes, align 4
  %sub178 = sub nsw i32 %169, 1
  %idxprom179 = sext i32 %sub178 to i64
  %170 = load i8*, i8** %d, align 8
  %arrayidx180 = getelementptr inbounds i8, i8* %170, i64 %idxprom179
  store i8 %conv177, i8* %arrayidx180, align 1
  br label %if.end.191

if.else.181:                                      ; preds = %if.then.152
  store i32 0, i32* %b, align 4
  br label %for.cond.182

for.cond.182:                                     ; preds = %for.inc.188, %if.else.181
  %171 = load i32, i32* %b, align 4
  %172 = load i32, i32* %bytes, align 4
  %cmp183 = icmp slt i32 %171, %172
  br i1 %cmp183, label %for.body.185, label %for.end.190

for.body.185:                                     ; preds = %for.cond.182
  %173 = load i32, i32* %b, align 4
  %idxprom186 = sext i32 %173 to i64
  %174 = load i8*, i8** %d, align 8
  %arrayidx187 = getelementptr inbounds i8, i8* %174, i64 %idxprom186
  store i8 0, i8* %arrayidx187, align 1
  br label %for.inc.188

for.inc.188:                                      ; preds = %for.body.185
  %175 = load i32, i32* %b, align 4
  %inc189 = add nsw i32 %175, 1
  store i32 %inc189, i32* %b, align 4
  br label %for.cond.182

for.end.190:                                      ; preds = %for.cond.182
  br label %if.end.191

if.end.191:                                       ; preds = %for.end.190, %for.end.173
  br label %if.end.207

if.else.192:                                      ; preds = %while.body.150
  store i32 0, i32* %b, align 4
  br label %for.cond.193

for.cond.193:                                     ; preds = %for.inc.204, %if.else.192
  %176 = load i32, i32* %b, align 4
  %177 = load i32, i32* %bytes, align 4
  %cmp194 = icmp slt i32 %176, %177
  br i1 %cmp194, label %for.body.196, label %for.end.206

for.body.196:                                     ; preds = %for.cond.193
  %178 = load i32, i32* %b, align 4
  %idxprom197 = sext i32 %178 to i64
  %179 = load double*, double** %r, align 8
  %arrayidx198 = getelementptr inbounds double, double* %179, i64 %idxprom197
  %180 = load double, double* %arrayidx198, align 8
  %181 = load double, double* %tot_frac, align 8
  %mul199 = fmul double %180, %181
  %add200 = fadd double %mul199, 5.000000e-01
  %conv201 = fptoui double %add200 to i8
  %182 = load i32, i32* %b, align 4
  %idxprom202 = sext i32 %182 to i64
  %183 = load i8*, i8** %d, align 8
  %arrayidx203 = getelementptr inbounds i8, i8* %183, i64 %idxprom202
  store i8 %conv201, i8* %arrayidx203, align 1
  br label %for.inc.204

for.inc.204:                                      ; preds = %for.body.196
  %184 = load i32, i32* %b, align 4
  %inc205 = add nsw i32 %184, 1
  store i32 %inc205, i32* %b, align 4
  br label %for.cond.193

for.end.206:                                      ; preds = %for.cond.193
  br label %if.end.207

if.end.207:                                       ; preds = %for.end.206, %if.end.191
  %185 = load i32, i32* %bytes, align 4
  %186 = load double*, double** %r, align 8
  %idx.ext208 = sext i32 %185 to i64
  %add.ptr209 = getelementptr inbounds double, double* %186, i64 %idx.ext208
  store double* %add.ptr209, double** %r, align 8
  %187 = load i32, i32* %bytes, align 4
  %188 = load i8*, i8** %d, align 8
  %idx.ext210 = sext i32 %187 to i64
  %add.ptr211 = getelementptr inbounds i8, i8* %188, i64 %idx.ext210
  store i8* %add.ptr211, i8** %d, align 8
  br label %while.cond.147

while.end.212:                                    ; preds = %while.cond.147
  %189 = load i32, i32* %destwidth, align 4
  %190 = load i8*, i8** %dest, align 8
  %idx.ext213 = sext i32 %189 to i64
  %add.ptr214 = getelementptr inbounds i8, i8* %190, i64 %idx.ext213
  store i8* %add.ptr214, i8** %dest, align 8
  %191 = load double*, double** %row, align 8
  %192 = bitcast double* %191 to i8*
  %193 = load i32, i32* %destwidth, align 4
  %conv215 = sext i32 %193 to i64
  %mul216 = mul i64 8, %conv215
  call void @llvm.memset.p0i8.i64(i8* %192, i8 0, i64 %mul216, i32 8, i1 false)
  %194 = load i32, i32* %i, align 4
  %inc217 = add nsw i32 %194, 1
  store i32 %inc217, i32* %i, align 4
  br label %if.end.224

if.else.218:                                      ; preds = %while.end
  %195 = load %struct._PixelRegion*, %struct._PixelRegion** %srcPR.addr, align 8
  %196 = load %struct._PixelRegion*, %struct._PixelRegion** %srcPR.addr, align 8
  %x219 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %196, i32 0, i32 6
  %197 = load i32, i32* %x219, align 4
  %198 = load %struct._PixelRegion*, %struct._PixelRegion** %srcPR.addr, align 8
  %y220 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %198, i32 0, i32 7
  %199 = load i32, i32* %y220, align 4
  %200 = load i32, i32* %src_row, align 4
  %201 = load i32, i32* %subsample.addr, align 4
  %mul221 = mul nsw i32 %200, %201
  %add222 = add nsw i32 %199, %mul221
  %202 = load i32, i32* %orig_width, align 4
  %203 = load i32, i32* %subsample.addr, align 4
  %mul223 = mul nsw i32 %202, %203
  %204 = load i8*, i8** %src, align 8
  %205 = load i32, i32* %subsample.addr, align 4
  call void @pixel_region_get_row(%struct._PixelRegion* %195, i32 %197, i32 %add222, i32 %mul223, i8* %204, i32 %205)
  br label %if.end.224

if.end.224:                                       ; preds = %if.else.218, %while.end.212
  br label %for.cond.44

for.end.225:                                      ; preds = %for.cond.44
  %206 = load double*, double** %row, align 8
  %207 = bitcast double* %206 to i8*
  call void @g_free(i8* %207)
  %208 = load double*, double** %x_frac, align 8
  %209 = bitcast double* %208 to i8*
  call void @g_free(i8* %209)
  %210 = load i8*, i8** %src, align 8
  call void @g_free(i8* %210)
  br label %return

return:                                           ; preds = %for.end.225, %if.else
  ret void
}

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

declare noalias i8* @g_malloc0_n(i64, i64) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
