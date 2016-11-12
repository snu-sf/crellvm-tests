; ModuleID = './app/base/boundary.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._BoundSeg = type { i32, i32, i32, i32, i8 }
%struct._PixelRegion = type { i8*, %struct._TileManager*, %struct._Tile*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._TileManager = type opaque
%struct._Tile = type opaque
%struct._Boundary = type { %struct._BoundSeg*, i32, i32, i32*, i32*, i32*, i32*, i32 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct._GArray = type { i8*, i32 }

@.str = private unnamed_addr constant [10 x i8] c"Gimp-Base\00", align 1
@__func__.boundary_find = private unnamed_addr constant [14 x i8] c"boundary_find\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"maskPR != NULL\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"num_segs != NULL\00", align 1
@__func__.boundary_sort = private unnamed_addr constant [14 x i8] c"boundary_sort\00", align 1
@.str.3 = private unnamed_addr constant [66 x i8] c"(segs == NULL && num_segs == 0) || (segs != NULL && num_segs > 0)\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"num_groups != NULL\00", align 1
@.str.5 = private unnamed_addr constant [45 x i8] c"sort_boundary(): Unconnected boundary group!\00", align 1
@__func__.boundary_simplify = private unnamed_addr constant [18 x i8] c"boundary_simplify\00", align 1
@.str.6 = private unnamed_addr constant [84 x i8] c"(sorted_segs == NULL && num_groups == 0) || (sorted_segs != NULL && num_groups > 0)\00", align 1

; Function Attrs: nounwind uwtable
define %struct._BoundSeg* @boundary_find(%struct._PixelRegion* %maskPR, i32 %type, i32 %x1, i32 %y1, i32 %x2, i32 %y2, i8 zeroext %threshold, i32* %num_segs) #0 {
entry:
  %retval = alloca %struct._BoundSeg*, align 8
  %maskPR.addr = alloca %struct._PixelRegion*, align 8
  %type.addr = alloca i32, align 4
  %x1.addr = alloca i32, align 4
  %y1.addr = alloca i32, align 4
  %x2.addr = alloca i32, align 4
  %y2.addr = alloca i32, align 4
  %threshold.addr = alloca i8, align 1
  %num_segs.addr = alloca i32*, align 8
  %boundary = alloca %struct._Boundary*, align 8
  store %struct._PixelRegion* %maskPR, %struct._PixelRegion** %maskPR.addr, align 8
  store i32 %type, i32* %type.addr, align 4
  store i32 %x1, i32* %x1.addr, align 4
  store i32 %y1, i32* %y1.addr, align 4
  store i32 %x2, i32* %x2.addr, align 4
  store i32 %y2, i32* %y2.addr, align 4
  store i8 %threshold, i8* %threshold.addr, align 1
  store i32* %num_segs, i32** %num_segs.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._PixelRegion*, %struct._PixelRegion** %maskPR.addr, align 8
  %cmp = icmp ne %struct._PixelRegion* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.boundary_find, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0))
  store %struct._BoundSeg* null, %struct._BoundSeg** %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %do.body.1

do.body.1:                                        ; preds = %do.end
  %1 = load i32*, i32** %num_segs.addr, align 8
  %cmp2 = icmp ne i32* %1, null
  br i1 %cmp2, label %if.then.3, label %if.else.4

if.then.3:                                        ; preds = %do.body.1
  br label %if.end.5

if.else.4:                                        ; preds = %do.body.1
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.boundary_find, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i32 0, i32 0))
  store %struct._BoundSeg* null, %struct._BoundSeg** %retval
  br label %return

if.end.5:                                         ; preds = %if.then.3
  br label %do.end.6

do.end.6:                                         ; preds = %if.end.5
  %2 = load %struct._PixelRegion*, %struct._PixelRegion** %maskPR.addr, align 8
  %3 = load i32, i32* %type.addr, align 4
  %4 = load i32, i32* %x1.addr, align 4
  %5 = load i32, i32* %y1.addr, align 4
  %6 = load i32, i32* %x2.addr, align 4
  %7 = load i32, i32* %y2.addr, align 4
  %8 = load i8, i8* %threshold.addr, align 1
  %call = call %struct._Boundary* @generate_boundary(%struct._PixelRegion* %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i8 zeroext %8)
  store %struct._Boundary* %call, %struct._Boundary** %boundary, align 8
  %9 = load %struct._Boundary*, %struct._Boundary** %boundary, align 8
  %num_segs7 = getelementptr inbounds %struct._Boundary, %struct._Boundary* %9, i32 0, i32 1
  %10 = load i32, i32* %num_segs7, align 4
  %11 = load i32*, i32** %num_segs.addr, align 8
  store i32 %10, i32* %11, align 4
  %12 = load %struct._Boundary*, %struct._Boundary** %boundary, align 8
  %call8 = call %struct._BoundSeg* @boundary_free(%struct._Boundary* %12, i32 0)
  store %struct._BoundSeg* %call8, %struct._BoundSeg** %retval
  br label %return

return:                                           ; preds = %do.end.6, %if.else.4, %if.else
  %13 = load %struct._BoundSeg*, %struct._BoundSeg** %retval
  ret %struct._BoundSeg* %13
}

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

; Function Attrs: nounwind uwtable
define internal %struct._Boundary* @generate_boundary(%struct._PixelRegion* %PR, i32 %type, i32 %x1, i32 %y1, i32 %x2, i32 %y2, i8 zeroext %threshold) #0 {
entry:
  %PR.addr = alloca %struct._PixelRegion*, align 8
  %type.addr = alloca i32, align 4
  %x1.addr = alloca i32, align 4
  %y1.addr = alloca i32, align 4
  %x2.addr = alloca i32, align 4
  %y2.addr = alloca i32, align 4
  %threshold.addr = alloca i8, align 1
  %boundary = alloca %struct._Boundary*, align 8
  %scanline = alloca i32, align 4
  %i = alloca i32, align 4
  %start = alloca i32, align 4
  %end = alloca i32, align 4
  %tmp_segs = alloca i32*, align 8
  %num_empty_n = alloca i32, align 4
  %num_empty_c = alloca i32, align 4
  %num_empty_l = alloca i32, align 4
  store %struct._PixelRegion* %PR, %struct._PixelRegion** %PR.addr, align 8
  store i32 %type, i32* %type.addr, align 4
  store i32 %x1, i32* %x1.addr, align 4
  store i32 %y1, i32* %y1.addr, align 4
  store i32 %x2, i32* %x2.addr, align 4
  store i32 %y2, i32* %y2.addr, align 4
  store i8 %threshold, i8* %threshold.addr, align 1
  store i32 0, i32* %num_empty_n, align 4
  store i32 0, i32* %num_empty_c, align 4
  store i32 0, i32* %num_empty_l, align 4
  %0 = load %struct._PixelRegion*, %struct._PixelRegion** %PR.addr, align 8
  %call = call %struct._Boundary* @boundary_new(%struct._PixelRegion* %0)
  store %struct._Boundary* %call, %struct._Boundary** %boundary, align 8
  store i32 0, i32* %start, align 4
  store i32 0, i32* %end, align 4
  %1 = load i32, i32* %type.addr, align 4
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %y1.addr, align 4
  store i32 %2, i32* %start, align 4
  %3 = load i32, i32* %y2.addr, align 4
  store i32 %3, i32* %end, align 4
  br label %if.end.4

if.else:                                          ; preds = %entry
  %4 = load i32, i32* %type.addr, align 4
  %cmp1 = icmp eq i32 %4, 1
  br i1 %cmp1, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.else
  %5 = load %struct._PixelRegion*, %struct._PixelRegion** %PR.addr, align 8
  %y = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %5, i32 0, i32 7
  %6 = load i32, i32* %y, align 4
  store i32 %6, i32* %start, align 4
  %7 = load %struct._PixelRegion*, %struct._PixelRegion** %PR.addr, align 8
  %y3 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %7, i32 0, i32 7
  %8 = load i32, i32* %y3, align 4
  %9 = load %struct._PixelRegion*, %struct._PixelRegion** %PR.addr, align 8
  %h = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %9, i32 0, i32 9
  %10 = load i32, i32* %h, align 4
  %add = add nsw i32 %8, %10
  store i32 %add, i32* %end, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.2, %if.else
  br label %if.end.4

if.end.4:                                         ; preds = %if.end, %if.then
  %11 = load %struct._PixelRegion*, %struct._PixelRegion** %PR.addr, align 8
  %12 = load i32, i32* %start, align 4
  %sub = sub nsw i32 %12, 1
  %13 = load %struct._Boundary*, %struct._Boundary** %boundary, align 8
  %empty_segs_l = getelementptr inbounds %struct._Boundary, %struct._Boundary* %13, i32 0, i32 6
  %14 = load i32*, i32** %empty_segs_l, align 8
  %15 = load %struct._Boundary*, %struct._Boundary** %boundary, align 8
  %max_empty_segs = getelementptr inbounds %struct._Boundary, %struct._Boundary* %15, i32 0, i32 7
  %16 = load i32, i32* %max_empty_segs, align 4
  %17 = load i32, i32* %type.addr, align 4
  %18 = load i32, i32* %x1.addr, align 4
  %19 = load i32, i32* %y1.addr, align 4
  %20 = load i32, i32* %x2.addr, align 4
  %21 = load i32, i32* %y2.addr, align 4
  %22 = load i8, i8* %threshold.addr, align 1
  call void @find_empty_segs(%struct._PixelRegion* %11, i32 %sub, i32* %14, i32 %16, i32* %num_empty_l, i32 %17, i32 %18, i32 %19, i32 %20, i32 %21, i8 zeroext %22)
  %23 = load %struct._PixelRegion*, %struct._PixelRegion** %PR.addr, align 8
  %24 = load i32, i32* %start, align 4
  %25 = load %struct._Boundary*, %struct._Boundary** %boundary, align 8
  %empty_segs_c = getelementptr inbounds %struct._Boundary, %struct._Boundary* %25, i32 0, i32 5
  %26 = load i32*, i32** %empty_segs_c, align 8
  %27 = load %struct._Boundary*, %struct._Boundary** %boundary, align 8
  %max_empty_segs5 = getelementptr inbounds %struct._Boundary, %struct._Boundary* %27, i32 0, i32 7
  %28 = load i32, i32* %max_empty_segs5, align 4
  %29 = load i32, i32* %type.addr, align 4
  %30 = load i32, i32* %x1.addr, align 4
  %31 = load i32, i32* %y1.addr, align 4
  %32 = load i32, i32* %x2.addr, align 4
  %33 = load i32, i32* %y2.addr, align 4
  %34 = load i8, i8* %threshold.addr, align 1
  call void @find_empty_segs(%struct._PixelRegion* %23, i32 %24, i32* %26, i32 %28, i32* %num_empty_c, i32 %29, i32 %30, i32 %31, i32 %32, i32 %33, i8 zeroext %34)
  %35 = load i32, i32* %start, align 4
  store i32 %35, i32* %scanline, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.35, %if.end.4
  %36 = load i32, i32* %scanline, align 4
  %37 = load i32, i32* %end, align 4
  %cmp6 = icmp slt i32 %36, %37
  br i1 %cmp6, label %for.body, label %for.end.36

for.body:                                         ; preds = %for.cond
  %38 = load %struct._PixelRegion*, %struct._PixelRegion** %PR.addr, align 8
  %39 = load i32, i32* %scanline, align 4
  %add7 = add nsw i32 %39, 1
  %40 = load %struct._Boundary*, %struct._Boundary** %boundary, align 8
  %empty_segs_n = getelementptr inbounds %struct._Boundary, %struct._Boundary* %40, i32 0, i32 4
  %41 = load i32*, i32** %empty_segs_n, align 8
  %42 = load %struct._Boundary*, %struct._Boundary** %boundary, align 8
  %max_empty_segs8 = getelementptr inbounds %struct._Boundary, %struct._Boundary* %42, i32 0, i32 7
  %43 = load i32, i32* %max_empty_segs8, align 4
  %44 = load i32, i32* %type.addr, align 4
  %45 = load i32, i32* %x1.addr, align 4
  %46 = load i32, i32* %y1.addr, align 4
  %47 = load i32, i32* %x2.addr, align 4
  %48 = load i32, i32* %y2.addr, align 4
  %49 = load i8, i8* %threshold.addr, align 1
  call void @find_empty_segs(%struct._PixelRegion* %38, i32 %add7, i32* %41, i32 %43, i32* %num_empty_n, i32 %44, i32 %45, i32 %46, i32 %47, i32 %48, i8 zeroext %49)
  store i32 1, i32* %i, align 4
  br label %for.cond.9

for.cond.9:                                       ; preds = %for.inc, %for.body
  %50 = load i32, i32* %i, align 4
  %51 = load i32, i32* %num_empty_c, align 4
  %sub10 = sub nsw i32 %51, 1
  %cmp11 = icmp slt i32 %50, %sub10
  br i1 %cmp11, label %for.body.12, label %for.end

for.body.12:                                      ; preds = %for.cond.9
  %52 = load %struct._Boundary*, %struct._Boundary** %boundary, align 8
  %53 = load i32, i32* %i, align 4
  %idxprom = sext i32 %53 to i64
  %54 = load %struct._Boundary*, %struct._Boundary** %boundary, align 8
  %empty_segs_c13 = getelementptr inbounds %struct._Boundary, %struct._Boundary* %54, i32 0, i32 5
  %55 = load i32*, i32** %empty_segs_c13, align 8
  %arrayidx = getelementptr inbounds i32, i32* %55, i64 %idxprom
  %56 = load i32, i32* %arrayidx, align 4
  %57 = load i32, i32* %i, align 4
  %add14 = add nsw i32 %57, 1
  %idxprom15 = sext i32 %add14 to i64
  %58 = load %struct._Boundary*, %struct._Boundary** %boundary, align 8
  %empty_segs_c16 = getelementptr inbounds %struct._Boundary, %struct._Boundary* %58, i32 0, i32 5
  %59 = load i32*, i32** %empty_segs_c16, align 8
  %arrayidx17 = getelementptr inbounds i32, i32* %59, i64 %idxprom15
  %60 = load i32, i32* %arrayidx17, align 4
  %61 = load i32, i32* %scanline, align 4
  %62 = load %struct._Boundary*, %struct._Boundary** %boundary, align 8
  %empty_segs_l18 = getelementptr inbounds %struct._Boundary, %struct._Boundary* %62, i32 0, i32 6
  %63 = load i32*, i32** %empty_segs_l18, align 8
  %64 = load i32, i32* %num_empty_l, align 4
  call void @make_horiz_segs(%struct._Boundary* %52, i32 %56, i32 %60, i32 %61, i32* %63, i32 %64, i32 1)
  %65 = load %struct._Boundary*, %struct._Boundary** %boundary, align 8
  %66 = load i32, i32* %i, align 4
  %idxprom19 = sext i32 %66 to i64
  %67 = load %struct._Boundary*, %struct._Boundary** %boundary, align 8
  %empty_segs_c20 = getelementptr inbounds %struct._Boundary, %struct._Boundary* %67, i32 0, i32 5
  %68 = load i32*, i32** %empty_segs_c20, align 8
  %arrayidx21 = getelementptr inbounds i32, i32* %68, i64 %idxprom19
  %69 = load i32, i32* %arrayidx21, align 4
  %70 = load i32, i32* %i, align 4
  %add22 = add nsw i32 %70, 1
  %idxprom23 = sext i32 %add22 to i64
  %71 = load %struct._Boundary*, %struct._Boundary** %boundary, align 8
  %empty_segs_c24 = getelementptr inbounds %struct._Boundary, %struct._Boundary* %71, i32 0, i32 5
  %72 = load i32*, i32** %empty_segs_c24, align 8
  %arrayidx25 = getelementptr inbounds i32, i32* %72, i64 %idxprom23
  %73 = load i32, i32* %arrayidx25, align 4
  %74 = load i32, i32* %scanline, align 4
  %add26 = add nsw i32 %74, 1
  %75 = load %struct._Boundary*, %struct._Boundary** %boundary, align 8
  %empty_segs_n27 = getelementptr inbounds %struct._Boundary, %struct._Boundary* %75, i32 0, i32 4
  %76 = load i32*, i32** %empty_segs_n27, align 8
  %77 = load i32, i32* %num_empty_n, align 4
  call void @make_horiz_segs(%struct._Boundary* %65, i32 %69, i32 %73, i32 %add26, i32* %76, i32 %77, i32 0)
  br label %for.inc

for.inc:                                          ; preds = %for.body.12
  %78 = load i32, i32* %i, align 4
  %add28 = add nsw i32 %78, 2
  store i32 %add28, i32* %i, align 4
  br label %for.cond.9

for.end:                                          ; preds = %for.cond.9
  %79 = load %struct._Boundary*, %struct._Boundary** %boundary, align 8
  %empty_segs_l29 = getelementptr inbounds %struct._Boundary, %struct._Boundary* %79, i32 0, i32 6
  %80 = load i32*, i32** %empty_segs_l29, align 8
  store i32* %80, i32** %tmp_segs, align 8
  %81 = load %struct._Boundary*, %struct._Boundary** %boundary, align 8
  %empty_segs_c30 = getelementptr inbounds %struct._Boundary, %struct._Boundary* %81, i32 0, i32 5
  %82 = load i32*, i32** %empty_segs_c30, align 8
  %83 = load %struct._Boundary*, %struct._Boundary** %boundary, align 8
  %empty_segs_l31 = getelementptr inbounds %struct._Boundary, %struct._Boundary* %83, i32 0, i32 6
  store i32* %82, i32** %empty_segs_l31, align 8
  %84 = load i32, i32* %num_empty_c, align 4
  store i32 %84, i32* %num_empty_l, align 4
  %85 = load %struct._Boundary*, %struct._Boundary** %boundary, align 8
  %empty_segs_n32 = getelementptr inbounds %struct._Boundary, %struct._Boundary* %85, i32 0, i32 4
  %86 = load i32*, i32** %empty_segs_n32, align 8
  %87 = load %struct._Boundary*, %struct._Boundary** %boundary, align 8
  %empty_segs_c33 = getelementptr inbounds %struct._Boundary, %struct._Boundary* %87, i32 0, i32 5
  store i32* %86, i32** %empty_segs_c33, align 8
  %88 = load i32, i32* %num_empty_n, align 4
  store i32 %88, i32* %num_empty_c, align 4
  %89 = load i32*, i32** %tmp_segs, align 8
  %90 = load %struct._Boundary*, %struct._Boundary** %boundary, align 8
  %empty_segs_n34 = getelementptr inbounds %struct._Boundary, %struct._Boundary* %90, i32 0, i32 4
  store i32* %89, i32** %empty_segs_n34, align 8
  br label %for.inc.35

for.inc.35:                                       ; preds = %for.end
  %91 = load i32, i32* %scanline, align 4
  %inc = add nsw i32 %91, 1
  store i32 %inc, i32* %scanline, align 4
  br label %for.cond

for.end.36:                                       ; preds = %for.cond
  %92 = load %struct._Boundary*, %struct._Boundary** %boundary, align 8
  ret %struct._Boundary* %92
}

; Function Attrs: nounwind uwtable
define internal %struct._BoundSeg* @boundary_free(%struct._Boundary* %boundary, i32 %free_segs) #0 {
entry:
  %boundary.addr = alloca %struct._Boundary*, align 8
  %free_segs.addr = alloca i32, align 4
  %segs = alloca %struct._BoundSeg*, align 8
  store %struct._Boundary* %boundary, %struct._Boundary** %boundary.addr, align 8
  store i32 %free_segs, i32* %free_segs.addr, align 4
  store %struct._BoundSeg* null, %struct._BoundSeg** %segs, align 8
  %0 = load i32, i32* %free_segs.addr, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load %struct._Boundary*, %struct._Boundary** %boundary.addr, align 8
  %segs1 = getelementptr inbounds %struct._Boundary, %struct._Boundary* %1, i32 0, i32 0
  %2 = load %struct._BoundSeg*, %struct._BoundSeg** %segs1, align 8
  %3 = bitcast %struct._BoundSeg* %2 to i8*
  call void @g_free(i8* %3)
  br label %if.end

if.else:                                          ; preds = %entry
  %4 = load %struct._Boundary*, %struct._Boundary** %boundary.addr, align 8
  %segs2 = getelementptr inbounds %struct._Boundary, %struct._Boundary* %4, i32 0, i32 0
  %5 = load %struct._BoundSeg*, %struct._BoundSeg** %segs2, align 8
  store %struct._BoundSeg* %5, %struct._BoundSeg** %segs, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %6 = load %struct._Boundary*, %struct._Boundary** %boundary.addr, align 8
  %vert_segs = getelementptr inbounds %struct._Boundary, %struct._Boundary* %6, i32 0, i32 3
  %7 = load i32*, i32** %vert_segs, align 8
  %8 = bitcast i32* %7 to i8*
  call void @g_free(i8* %8)
  %9 = load %struct._Boundary*, %struct._Boundary** %boundary.addr, align 8
  %empty_segs_n = getelementptr inbounds %struct._Boundary, %struct._Boundary* %9, i32 0, i32 4
  %10 = load i32*, i32** %empty_segs_n, align 8
  %11 = bitcast i32* %10 to i8*
  call void @g_free(i8* %11)
  %12 = load %struct._Boundary*, %struct._Boundary** %boundary.addr, align 8
  %empty_segs_c = getelementptr inbounds %struct._Boundary, %struct._Boundary* %12, i32 0, i32 5
  %13 = load i32*, i32** %empty_segs_c, align 8
  %14 = bitcast i32* %13 to i8*
  call void @g_free(i8* %14)
  %15 = load %struct._Boundary*, %struct._Boundary** %boundary.addr, align 8
  %empty_segs_l = getelementptr inbounds %struct._Boundary, %struct._Boundary* %15, i32 0, i32 6
  %16 = load i32*, i32** %empty_segs_l, align 8
  %17 = bitcast i32* %16 to i8*
  call void @g_free(i8* %17)
  br label %do.body

do.body:                                          ; preds = %if.end
  %18 = load %struct._Boundary*, %struct._Boundary** %boundary.addr, align 8
  %19 = bitcast %struct._Boundary* %18 to i8*
  call void @g_slice_free1(i64 56, i8* %19)
  br label %do.end

do.end:                                           ; preds = %do.body
  %20 = load %struct._BoundSeg*, %struct._BoundSeg** %segs, align 8
  ret %struct._BoundSeg* %20
}

; Function Attrs: nounwind uwtable
define %struct._BoundSeg* @boundary_sort(%struct._BoundSeg* %segs, i32 %num_segs, i32* %num_groups) #0 {
entry:
  %retval = alloca %struct._BoundSeg*, align 8
  %segs.addr = alloca %struct._BoundSeg*, align 8
  %num_segs.addr = alloca i32, align 4
  %num_groups.addr = alloca i32*, align 8
  %boundary = alloca %struct._Boundary*, align 8
  %segs_ptrs_by_xy1 = alloca %struct._BoundSeg**, align 8
  %segs_ptrs_by_xy2 = alloca %struct._BoundSeg**, align 8
  %index = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %startx = alloca i32, align 4
  %starty = alloca i32, align 4
  %cur_seg = alloca %struct._BoundSeg*, align 8
  store %struct._BoundSeg* %segs, %struct._BoundSeg** %segs.addr, align 8
  store i32 %num_segs, i32* %num_segs.addr, align 4
  store i32* %num_groups, i32** %num_groups.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._BoundSeg*, %struct._BoundSeg** %segs.addr, align 8
  %cmp = icmp eq %struct._BoundSeg* %0, null
  br i1 %cmp, label %land.lhs.true, label %lor.lhs.false

land.lhs.true:                                    ; preds = %do.body
  %1 = load i32, i32* %num_segs.addr, align 4
  %cmp1 = icmp eq i32 %1, 0
  br i1 %cmp1, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true, %do.body
  %2 = load %struct._BoundSeg*, %struct._BoundSeg** %segs.addr, align 8
  %cmp2 = icmp ne %struct._BoundSeg* %2, null
  br i1 %cmp2, label %land.lhs.true.3, label %if.else

land.lhs.true.3:                                  ; preds = %lor.lhs.false
  %3 = load i32, i32* %num_segs.addr, align 4
  %cmp4 = icmp sgt i32 %3, 0
  br i1 %cmp4, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true.3, %land.lhs.true
  br label %if.end

if.else:                                          ; preds = %land.lhs.true.3, %lor.lhs.false
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.boundary_sort, i32 0, i32 0), i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.3, i32 0, i32 0))
  store %struct._BoundSeg* null, %struct._BoundSeg** %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %do.body.5

do.body.5:                                        ; preds = %do.end
  %4 = load i32*, i32** %num_groups.addr, align 8
  %cmp6 = icmp ne i32* %4, null
  br i1 %cmp6, label %if.then.7, label %if.else.8

if.then.7:                                        ; preds = %do.body.5
  br label %if.end.9

if.else.8:                                        ; preds = %do.body.5
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.boundary_sort, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i32 0, i32 0))
  store %struct._BoundSeg* null, %struct._BoundSeg** %retval
  br label %return

if.end.9:                                         ; preds = %if.then.7
  br label %do.end.10

do.end.10:                                        ; preds = %if.end.9
  %5 = load i32*, i32** %num_groups.addr, align 8
  store i32 0, i32* %5, align 4
  %6 = load i32, i32* %num_segs.addr, align 4
  %cmp11 = icmp eq i32 %6, 0
  br i1 %cmp11, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %do.end.10
  store %struct._BoundSeg* null, %struct._BoundSeg** %retval
  br label %return

if.end.13:                                        ; preds = %do.end.10
  %7 = load i32, i32* %num_segs.addr, align 4
  %conv = sext i32 %7 to i64
  %call = call noalias i8* @g_malloc_n(i64 %conv, i64 8)
  %8 = bitcast i8* %call to %struct._BoundSeg**
  store %struct._BoundSeg** %8, %struct._BoundSeg*** %segs_ptrs_by_xy1, align 8
  %9 = load i32, i32* %num_segs.addr, align 4
  %conv14 = sext i32 %9 to i64
  %call15 = call noalias i8* @g_malloc_n(i64 %conv14, i64 8)
  %10 = bitcast i8* %call15 to %struct._BoundSeg**
  store %struct._BoundSeg** %10, %struct._BoundSeg*** %segs_ptrs_by_xy2, align 8
  store i32 0, i32* %index, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.13
  %11 = load i32, i32* %index, align 4
  %12 = load i32, i32* %num_segs.addr, align 4
  %cmp16 = icmp slt i32 %11, %12
  br i1 %cmp16, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %13 = load %struct._BoundSeg*, %struct._BoundSeg** %segs.addr, align 8
  %14 = load i32, i32* %index, align 4
  %idx.ext = sext i32 %14 to i64
  %add.ptr = getelementptr inbounds %struct._BoundSeg, %struct._BoundSeg* %13, i64 %idx.ext
  %15 = load i32, i32* %index, align 4
  %idxprom = sext i32 %15 to i64
  %16 = load %struct._BoundSeg**, %struct._BoundSeg*** %segs_ptrs_by_xy1, align 8
  %arrayidx = getelementptr inbounds %struct._BoundSeg*, %struct._BoundSeg** %16, i64 %idxprom
  store %struct._BoundSeg* %add.ptr, %struct._BoundSeg** %arrayidx, align 8
  %17 = load %struct._BoundSeg*, %struct._BoundSeg** %segs.addr, align 8
  %18 = load i32, i32* %index, align 4
  %idx.ext18 = sext i32 %18 to i64
  %add.ptr19 = getelementptr inbounds %struct._BoundSeg, %struct._BoundSeg* %17, i64 %idx.ext18
  %19 = load i32, i32* %index, align 4
  %idxprom20 = sext i32 %19 to i64
  %20 = load %struct._BoundSeg**, %struct._BoundSeg*** %segs_ptrs_by_xy2, align 8
  %arrayidx21 = getelementptr inbounds %struct._BoundSeg*, %struct._BoundSeg** %20, i64 %idxprom20
  store %struct._BoundSeg* %add.ptr19, %struct._BoundSeg** %arrayidx21, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %21 = load i32, i32* %index, align 4
  %inc = add nsw i32 %21, 1
  store i32 %inc, i32* %index, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %22 = load %struct._BoundSeg**, %struct._BoundSeg*** %segs_ptrs_by_xy1, align 8
  %23 = bitcast %struct._BoundSeg** %22 to i8*
  %24 = load i32, i32* %num_segs.addr, align 4
  %conv22 = sext i32 %24 to i64
  call void @qsort(i8* %23, i64 %conv22, i64 8, i32 (i8*, i8*)* bitcast (i32 (%struct._BoundSeg**, %struct._BoundSeg**)* @cmp_segptr_xy1_addr to i32 (i8*, i8*)*))
  %25 = load %struct._BoundSeg**, %struct._BoundSeg*** %segs_ptrs_by_xy2, align 8
  %26 = bitcast %struct._BoundSeg** %25 to i8*
  %27 = load i32, i32* %num_segs.addr, align 4
  %conv23 = sext i32 %27 to i64
  call void @qsort(i8* %26, i64 %conv23, i64 8, i32 (i8*, i8*)* bitcast (i32 (%struct._BoundSeg**, %struct._BoundSeg**)* @cmp_segptr_xy2_addr to i32 (i8*, i8*)*))
  store i32 0, i32* %index, align 4
  br label %for.cond.24

for.cond.24:                                      ; preds = %for.inc.30, %for.end
  %28 = load i32, i32* %index, align 4
  %29 = load i32, i32* %num_segs.addr, align 4
  %cmp25 = icmp slt i32 %28, %29
  br i1 %cmp25, label %for.body.27, label %for.end.32

for.body.27:                                      ; preds = %for.cond.24
  %30 = load i32, i32* %index, align 4
  %idxprom28 = sext i32 %30 to i64
  %31 = load %struct._BoundSeg*, %struct._BoundSeg** %segs.addr, align 8
  %arrayidx29 = getelementptr inbounds %struct._BoundSeg, %struct._BoundSeg* %31, i64 %idxprom28
  %visited = getelementptr inbounds %struct._BoundSeg, %struct._BoundSeg* %arrayidx29, i32 0, i32 4
  %bf.load = load i8, i8* %visited, align 4
  %bf.clear = and i8 %bf.load, -3
  store i8 %bf.clear, i8* %visited, align 4
  br label %for.inc.30

for.inc.30:                                       ; preds = %for.body.27
  %32 = load i32, i32* %index, align 4
  %inc31 = add nsw i32 %32, 1
  store i32 %inc31, i32* %index, align 4
  br label %for.cond.24

for.end.32:                                       ; preds = %for.cond.24
  %call33 = call %struct._Boundary* @boundary_new(%struct._PixelRegion* null)
  store %struct._Boundary* %call33, %struct._Boundary** %boundary, align 8
  store i32 0, i32* %index, align 4
  br label %for.cond.34

for.cond.34:                                      ; preds = %for.inc.119, %for.end.32
  %33 = load i32, i32* %index, align 4
  %34 = load i32, i32* %num_segs.addr, align 4
  %cmp35 = icmp slt i32 %33, %34
  br i1 %cmp35, label %for.body.37, label %for.end.121

for.body.37:                                      ; preds = %for.cond.34
  %35 = load i32, i32* %index, align 4
  %idxprom38 = sext i32 %35 to i64
  %36 = load %struct._BoundSeg*, %struct._BoundSeg** %segs.addr, align 8
  %arrayidx39 = getelementptr inbounds %struct._BoundSeg, %struct._BoundSeg* %36, i64 %idxprom38
  %visited40 = getelementptr inbounds %struct._BoundSeg, %struct._BoundSeg* %arrayidx39, i32 0, i32 4
  %bf.load41 = load i8, i8* %visited40, align 4
  %bf.lshr = lshr i8 %bf.load41, 1
  %bf.clear42 = and i8 %bf.lshr, 1
  %bf.cast = zext i8 %bf.clear42 to i32
  %tobool = icmp ne i32 %bf.cast, 0
  br i1 %tobool, label %if.then.43, label %if.end.44

if.then.43:                                       ; preds = %for.body.37
  br label %for.inc.119

if.end.44:                                        ; preds = %for.body.37
  %37 = load %struct._Boundary*, %struct._Boundary** %boundary, align 8
  %38 = load i32, i32* %index, align 4
  %idxprom45 = sext i32 %38 to i64
  %39 = load %struct._BoundSeg*, %struct._BoundSeg** %segs.addr, align 8
  %arrayidx46 = getelementptr inbounds %struct._BoundSeg, %struct._BoundSeg* %39, i64 %idxprom45
  %x1 = getelementptr inbounds %struct._BoundSeg, %struct._BoundSeg* %arrayidx46, i32 0, i32 0
  %40 = load i32, i32* %x1, align 4
  %41 = load i32, i32* %index, align 4
  %idxprom47 = sext i32 %41 to i64
  %42 = load %struct._BoundSeg*, %struct._BoundSeg** %segs.addr, align 8
  %arrayidx48 = getelementptr inbounds %struct._BoundSeg, %struct._BoundSeg* %42, i64 %idxprom47
  %y1 = getelementptr inbounds %struct._BoundSeg, %struct._BoundSeg* %arrayidx48, i32 0, i32 1
  %43 = load i32, i32* %y1, align 4
  %44 = load i32, i32* %index, align 4
  %idxprom49 = sext i32 %44 to i64
  %45 = load %struct._BoundSeg*, %struct._BoundSeg** %segs.addr, align 8
  %arrayidx50 = getelementptr inbounds %struct._BoundSeg, %struct._BoundSeg* %45, i64 %idxprom49
  %x2 = getelementptr inbounds %struct._BoundSeg, %struct._BoundSeg* %arrayidx50, i32 0, i32 2
  %46 = load i32, i32* %x2, align 4
  %47 = load i32, i32* %index, align 4
  %idxprom51 = sext i32 %47 to i64
  %48 = load %struct._BoundSeg*, %struct._BoundSeg** %segs.addr, align 8
  %arrayidx52 = getelementptr inbounds %struct._BoundSeg, %struct._BoundSeg* %48, i64 %idxprom51
  %y2 = getelementptr inbounds %struct._BoundSeg, %struct._BoundSeg* %arrayidx52, i32 0, i32 3
  %49 = load i32, i32* %y2, align 4
  %50 = load i32, i32* %index, align 4
  %idxprom53 = sext i32 %50 to i64
  %51 = load %struct._BoundSeg*, %struct._BoundSeg** %segs.addr, align 8
  %arrayidx54 = getelementptr inbounds %struct._BoundSeg, %struct._BoundSeg* %51, i64 %idxprom53
  %open = getelementptr inbounds %struct._BoundSeg, %struct._BoundSeg* %arrayidx54, i32 0, i32 4
  %bf.load55 = load i8, i8* %open, align 4
  %bf.clear56 = and i8 %bf.load55, 1
  %bf.cast57 = zext i8 %bf.clear56 to i32
  call void @boundary_add_seg(%struct._Boundary* %37, i32 %40, i32 %43, i32 %46, i32 %49, i32 %bf.cast57)
  %52 = load i32, i32* %index, align 4
  %idxprom58 = sext i32 %52 to i64
  %53 = load %struct._BoundSeg*, %struct._BoundSeg** %segs.addr, align 8
  %arrayidx59 = getelementptr inbounds %struct._BoundSeg, %struct._BoundSeg* %53, i64 %idxprom58
  %visited60 = getelementptr inbounds %struct._BoundSeg, %struct._BoundSeg* %arrayidx59, i32 0, i32 4
  %bf.load61 = load i8, i8* %visited60, align 4
  %bf.clear62 = and i8 %bf.load61, -3
  %bf.set = or i8 %bf.clear62, 2
  store i8 %bf.set, i8* %visited60, align 4
  %54 = load i32, i32* %index, align 4
  %idxprom63 = sext i32 %54 to i64
  %55 = load %struct._BoundSeg*, %struct._BoundSeg** %segs.addr, align 8
  %arrayidx64 = getelementptr inbounds %struct._BoundSeg, %struct._BoundSeg* %55, i64 %idxprom63
  %x165 = getelementptr inbounds %struct._BoundSeg, %struct._BoundSeg* %arrayidx64, i32 0, i32 0
  %56 = load i32, i32* %x165, align 4
  store i32 %56, i32* %startx, align 4
  %57 = load i32, i32* %index, align 4
  %idxprom66 = sext i32 %57 to i64
  %58 = load %struct._BoundSeg*, %struct._BoundSeg** %segs.addr, align 8
  %arrayidx67 = getelementptr inbounds %struct._BoundSeg, %struct._BoundSeg* %58, i64 %idxprom66
  %y168 = getelementptr inbounds %struct._BoundSeg, %struct._BoundSeg* %arrayidx67, i32 0, i32 1
  %59 = load i32, i32* %y168, align 4
  store i32 %59, i32* %starty, align 4
  %60 = load i32, i32* %index, align 4
  %idxprom69 = sext i32 %60 to i64
  %61 = load %struct._BoundSeg*, %struct._BoundSeg** %segs.addr, align 8
  %arrayidx70 = getelementptr inbounds %struct._BoundSeg, %struct._BoundSeg* %61, i64 %idxprom69
  %x271 = getelementptr inbounds %struct._BoundSeg, %struct._BoundSeg* %arrayidx70, i32 0, i32 2
  %62 = load i32, i32* %x271, align 4
  store i32 %62, i32* %x, align 4
  %63 = load i32, i32* %index, align 4
  %idxprom72 = sext i32 %63 to i64
  %64 = load %struct._BoundSeg*, %struct._BoundSeg** %segs.addr, align 8
  %arrayidx73 = getelementptr inbounds %struct._BoundSeg, %struct._BoundSeg* %64, i64 %idxprom72
  %y274 = getelementptr inbounds %struct._BoundSeg, %struct._BoundSeg* %arrayidx73, i32 0, i32 3
  %65 = load i32, i32* %y274, align 4
  store i32 %65, i32* %y, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end.107, %if.end.44
  %66 = load %struct._BoundSeg**, %struct._BoundSeg*** %segs_ptrs_by_xy1, align 8
  %67 = load %struct._BoundSeg**, %struct._BoundSeg*** %segs_ptrs_by_xy2, align 8
  %68 = load i32, i32* %num_segs.addr, align 4
  %69 = load i32, i32* %x, align 4
  %70 = load i32, i32* %y, align 4
  %call75 = call %struct._BoundSeg* @find_segment(%struct._BoundSeg** %66, %struct._BoundSeg** %67, i32 %68, i32 %69, i32 %70)
  store %struct._BoundSeg* %call75, %struct._BoundSeg** %cur_seg, align 8
  %cmp76 = icmp ne %struct._BoundSeg* %call75, null
  br i1 %cmp76, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %71 = load i32, i32* %x, align 4
  %72 = load %struct._BoundSeg*, %struct._BoundSeg** %cur_seg, align 8
  %x178 = getelementptr inbounds %struct._BoundSeg, %struct._BoundSeg* %72, i32 0, i32 0
  %73 = load i32, i32* %x178, align 4
  %cmp79 = icmp eq i32 %71, %73
  br i1 %cmp79, label %land.lhs.true.81, label %if.else.96

land.lhs.true.81:                                 ; preds = %while.body
  %74 = load i32, i32* %y, align 4
  %75 = load %struct._BoundSeg*, %struct._BoundSeg** %cur_seg, align 8
  %y182 = getelementptr inbounds %struct._BoundSeg, %struct._BoundSeg* %75, i32 0, i32 1
  %76 = load i32, i32* %y182, align 4
  %cmp83 = icmp eq i32 %74, %76
  br i1 %cmp83, label %if.then.85, label %if.else.96

if.then.85:                                       ; preds = %land.lhs.true.81
  %77 = load %struct._Boundary*, %struct._Boundary** %boundary, align 8
  %78 = load %struct._BoundSeg*, %struct._BoundSeg** %cur_seg, align 8
  %x186 = getelementptr inbounds %struct._BoundSeg, %struct._BoundSeg* %78, i32 0, i32 0
  %79 = load i32, i32* %x186, align 4
  %80 = load %struct._BoundSeg*, %struct._BoundSeg** %cur_seg, align 8
  %y187 = getelementptr inbounds %struct._BoundSeg, %struct._BoundSeg* %80, i32 0, i32 1
  %81 = load i32, i32* %y187, align 4
  %82 = load %struct._BoundSeg*, %struct._BoundSeg** %cur_seg, align 8
  %x288 = getelementptr inbounds %struct._BoundSeg, %struct._BoundSeg* %82, i32 0, i32 2
  %83 = load i32, i32* %x288, align 4
  %84 = load %struct._BoundSeg*, %struct._BoundSeg** %cur_seg, align 8
  %y289 = getelementptr inbounds %struct._BoundSeg, %struct._BoundSeg* %84, i32 0, i32 3
  %85 = load i32, i32* %y289, align 4
  %86 = load %struct._BoundSeg*, %struct._BoundSeg** %cur_seg, align 8
  %open90 = getelementptr inbounds %struct._BoundSeg, %struct._BoundSeg* %86, i32 0, i32 4
  %bf.load91 = load i8, i8* %open90, align 4
  %bf.clear92 = and i8 %bf.load91, 1
  %bf.cast93 = zext i8 %bf.clear92 to i32
  call void @boundary_add_seg(%struct._Boundary* %77, i32 %79, i32 %81, i32 %83, i32 %85, i32 %bf.cast93)
  %87 = load %struct._BoundSeg*, %struct._BoundSeg** %cur_seg, align 8
  %x294 = getelementptr inbounds %struct._BoundSeg, %struct._BoundSeg* %87, i32 0, i32 2
  %88 = load i32, i32* %x294, align 4
  store i32 %88, i32* %x, align 4
  %89 = load %struct._BoundSeg*, %struct._BoundSeg** %cur_seg, align 8
  %y295 = getelementptr inbounds %struct._BoundSeg, %struct._BoundSeg* %89, i32 0, i32 3
  %90 = load i32, i32* %y295, align 4
  store i32 %90, i32* %y, align 4
  br label %if.end.107

if.else.96:                                       ; preds = %land.lhs.true.81, %while.body
  %91 = load %struct._Boundary*, %struct._Boundary** %boundary, align 8
  %92 = load %struct._BoundSeg*, %struct._BoundSeg** %cur_seg, align 8
  %x297 = getelementptr inbounds %struct._BoundSeg, %struct._BoundSeg* %92, i32 0, i32 2
  %93 = load i32, i32* %x297, align 4
  %94 = load %struct._BoundSeg*, %struct._BoundSeg** %cur_seg, align 8
  %y298 = getelementptr inbounds %struct._BoundSeg, %struct._BoundSeg* %94, i32 0, i32 3
  %95 = load i32, i32* %y298, align 4
  %96 = load %struct._BoundSeg*, %struct._BoundSeg** %cur_seg, align 8
  %x199 = getelementptr inbounds %struct._BoundSeg, %struct._BoundSeg* %96, i32 0, i32 0
  %97 = load i32, i32* %x199, align 4
  %98 = load %struct._BoundSeg*, %struct._BoundSeg** %cur_seg, align 8
  %y1100 = getelementptr inbounds %struct._BoundSeg, %struct._BoundSeg* %98, i32 0, i32 1
  %99 = load i32, i32* %y1100, align 4
  %100 = load %struct._BoundSeg*, %struct._BoundSeg** %cur_seg, align 8
  %open101 = getelementptr inbounds %struct._BoundSeg, %struct._BoundSeg* %100, i32 0, i32 4
  %bf.load102 = load i8, i8* %open101, align 4
  %bf.clear103 = and i8 %bf.load102, 1
  %bf.cast104 = zext i8 %bf.clear103 to i32
  call void @boundary_add_seg(%struct._Boundary* %91, i32 %93, i32 %95, i32 %97, i32 %99, i32 %bf.cast104)
  %101 = load %struct._BoundSeg*, %struct._BoundSeg** %cur_seg, align 8
  %x1105 = getelementptr inbounds %struct._BoundSeg, %struct._BoundSeg* %101, i32 0, i32 0
  %102 = load i32, i32* %x1105, align 4
  store i32 %102, i32* %x, align 4
  %103 = load %struct._BoundSeg*, %struct._BoundSeg** %cur_seg, align 8
  %y1106 = getelementptr inbounds %struct._BoundSeg, %struct._BoundSeg* %103, i32 0, i32 1
  %104 = load i32, i32* %y1106, align 4
  store i32 %104, i32* %y, align 4
  br label %if.end.107

if.end.107:                                       ; preds = %if.else.96, %if.then.85
  %105 = load %struct._BoundSeg*, %struct._BoundSeg** %cur_seg, align 8
  %visited108 = getelementptr inbounds %struct._BoundSeg, %struct._BoundSeg* %105, i32 0, i32 4
  %bf.load109 = load i8, i8* %visited108, align 4
  %bf.clear110 = and i8 %bf.load109, -3
  %bf.set111 = or i8 %bf.clear110, 2
  store i8 %bf.set111, i8* %visited108, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %106 = load i32, i32* %x, align 4
  %107 = load i32, i32* %startx, align 4
  %cmp112 = icmp ne i32 %106, %107
  br i1 %cmp112, label %if.then.117, label %lor.lhs.false.114

lor.lhs.false.114:                                ; preds = %while.end
  %108 = load i32, i32* %y, align 4
  %109 = load i32, i32* %starty, align 4
  %cmp115 = icmp ne i32 %108, %109
  br i1 %cmp115, label %if.then.117, label %if.end.118

if.then.117:                                      ; preds = %lor.lhs.false.114, %while.end
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.5, i32 0, i32 0))
  br label %if.end.118

if.end.118:                                       ; preds = %if.then.117, %lor.lhs.false.114
  %110 = load i32*, i32** %num_groups.addr, align 8
  %111 = load i32, i32* %110, align 4
  %add = add nsw i32 %111, 1
  %112 = load i32*, i32** %num_groups.addr, align 8
  store i32 %add, i32* %112, align 4
  %113 = load %struct._Boundary*, %struct._Boundary** %boundary, align 8
  call void @boundary_add_seg(%struct._Boundary* %113, i32 -1, i32 -1, i32 -1, i32 -1, i32 0)
  br label %for.inc.119

for.inc.119:                                      ; preds = %if.end.118, %if.then.43
  %114 = load i32, i32* %index, align 4
  %inc120 = add nsw i32 %114, 1
  store i32 %inc120, i32* %index, align 4
  br label %for.cond.34

for.end.121:                                      ; preds = %for.cond.34
  %115 = load %struct._BoundSeg**, %struct._BoundSeg*** %segs_ptrs_by_xy1, align 8
  %116 = bitcast %struct._BoundSeg** %115 to i8*
  call void @g_free(i8* %116)
  %117 = load %struct._BoundSeg**, %struct._BoundSeg*** %segs_ptrs_by_xy2, align 8
  %118 = bitcast %struct._BoundSeg** %117 to i8*
  call void @g_free(i8* %118)
  %119 = load %struct._Boundary*, %struct._Boundary** %boundary, align 8
  %call122 = call %struct._BoundSeg* @boundary_free(%struct._Boundary* %119, i32 0)
  store %struct._BoundSeg* %call122, %struct._BoundSeg** %retval
  br label %return

return:                                           ; preds = %for.end.121, %if.then.12, %if.else.8, %if.else
  %120 = load %struct._BoundSeg*, %struct._BoundSeg** %retval
  ret %struct._BoundSeg* %120
}

declare noalias i8* @g_malloc_n(i64, i64) #1

declare void @qsort(i8*, i64, i64, i32 (i8*, i8*)*) #1

; Function Attrs: nounwind uwtable
define internal i32 @cmp_segptr_xy1_addr(%struct._BoundSeg** %seg_ptr_a, %struct._BoundSeg** %seg_ptr_b) #0 {
entry:
  %seg_ptr_a.addr = alloca %struct._BoundSeg**, align 8
  %seg_ptr_b.addr = alloca %struct._BoundSeg**, align 8
  %seg_a = alloca %struct._BoundSeg*, align 8
  %seg_b = alloca %struct._BoundSeg*, align 8
  %result = alloca i32, align 4
  store %struct._BoundSeg** %seg_ptr_a, %struct._BoundSeg*** %seg_ptr_a.addr, align 8
  store %struct._BoundSeg** %seg_ptr_b, %struct._BoundSeg*** %seg_ptr_b.addr, align 8
  %0 = load %struct._BoundSeg**, %struct._BoundSeg*** %seg_ptr_a.addr, align 8
  %1 = load %struct._BoundSeg*, %struct._BoundSeg** %0, align 8
  store %struct._BoundSeg* %1, %struct._BoundSeg** %seg_a, align 8
  %2 = load %struct._BoundSeg**, %struct._BoundSeg*** %seg_ptr_b.addr, align 8
  %3 = load %struct._BoundSeg*, %struct._BoundSeg** %2, align 8
  store %struct._BoundSeg* %3, %struct._BoundSeg** %seg_b, align 8
  %4 = load %struct._BoundSeg*, %struct._BoundSeg** %seg_a, align 8
  %x1 = getelementptr inbounds %struct._BoundSeg, %struct._BoundSeg* %4, i32 0, i32 0
  %5 = load i32, i32* %x1, align 4
  %6 = load %struct._BoundSeg*, %struct._BoundSeg** %seg_a, align 8
  %y1 = getelementptr inbounds %struct._BoundSeg, %struct._BoundSeg* %6, i32 0, i32 1
  %7 = load i32, i32* %y1, align 4
  %8 = load %struct._BoundSeg*, %struct._BoundSeg** %seg_b, align 8
  %x11 = getelementptr inbounds %struct._BoundSeg, %struct._BoundSeg* %8, i32 0, i32 0
  %9 = load i32, i32* %x11, align 4
  %10 = load %struct._BoundSeg*, %struct._BoundSeg** %seg_b, align 8
  %y12 = getelementptr inbounds %struct._BoundSeg, %struct._BoundSeg* %10, i32 0, i32 1
  %11 = load i32, i32* %y12, align 4
  %call = call i32 @cmp_xy(i32 %5, i32 %7, i32 %9, i32 %11)
  store i32 %call, i32* %result, align 4
  %12 = load i32, i32* %result, align 4
  %cmp = icmp eq i32 %12, 0
  br i1 %cmp, label %if.then, label %if.end.8

if.then:                                          ; preds = %entry
  %13 = load %struct._BoundSeg*, %struct._BoundSeg** %seg_a, align 8
  %14 = load %struct._BoundSeg*, %struct._BoundSeg** %seg_b, align 8
  %cmp3 = icmp ult %struct._BoundSeg* %13, %14
  br i1 %cmp3, label %if.then.4, label %if.else

if.then.4:                                        ; preds = %if.then
  store i32 -1, i32* %result, align 4
  br label %if.end.7

if.else:                                          ; preds = %if.then
  %15 = load %struct._BoundSeg*, %struct._BoundSeg** %seg_a, align 8
  %16 = load %struct._BoundSeg*, %struct._BoundSeg** %seg_b, align 8
  %cmp5 = icmp ugt %struct._BoundSeg* %15, %16
  br i1 %cmp5, label %if.then.6, label %if.end

if.then.6:                                        ; preds = %if.else
  store i32 1, i32* %result, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.6, %if.else
  br label %if.end.7

if.end.7:                                         ; preds = %if.end, %if.then.4
  br label %if.end.8

if.end.8:                                         ; preds = %if.end.7, %entry
  %17 = load i32, i32* %result, align 4
  ret i32 %17
}

; Function Attrs: nounwind uwtable
define internal i32 @cmp_segptr_xy2_addr(%struct._BoundSeg** %seg_ptr_a, %struct._BoundSeg** %seg_ptr_b) #0 {
entry:
  %seg_ptr_a.addr = alloca %struct._BoundSeg**, align 8
  %seg_ptr_b.addr = alloca %struct._BoundSeg**, align 8
  %seg_a = alloca %struct._BoundSeg*, align 8
  %seg_b = alloca %struct._BoundSeg*, align 8
  %result = alloca i32, align 4
  store %struct._BoundSeg** %seg_ptr_a, %struct._BoundSeg*** %seg_ptr_a.addr, align 8
  store %struct._BoundSeg** %seg_ptr_b, %struct._BoundSeg*** %seg_ptr_b.addr, align 8
  %0 = load %struct._BoundSeg**, %struct._BoundSeg*** %seg_ptr_a.addr, align 8
  %1 = load %struct._BoundSeg*, %struct._BoundSeg** %0, align 8
  store %struct._BoundSeg* %1, %struct._BoundSeg** %seg_a, align 8
  %2 = load %struct._BoundSeg**, %struct._BoundSeg*** %seg_ptr_b.addr, align 8
  %3 = load %struct._BoundSeg*, %struct._BoundSeg** %2, align 8
  store %struct._BoundSeg* %3, %struct._BoundSeg** %seg_b, align 8
  %4 = load %struct._BoundSeg*, %struct._BoundSeg** %seg_a, align 8
  %x2 = getelementptr inbounds %struct._BoundSeg, %struct._BoundSeg* %4, i32 0, i32 2
  %5 = load i32, i32* %x2, align 4
  %6 = load %struct._BoundSeg*, %struct._BoundSeg** %seg_a, align 8
  %y2 = getelementptr inbounds %struct._BoundSeg, %struct._BoundSeg* %6, i32 0, i32 3
  %7 = load i32, i32* %y2, align 4
  %8 = load %struct._BoundSeg*, %struct._BoundSeg** %seg_b, align 8
  %x21 = getelementptr inbounds %struct._BoundSeg, %struct._BoundSeg* %8, i32 0, i32 2
  %9 = load i32, i32* %x21, align 4
  %10 = load %struct._BoundSeg*, %struct._BoundSeg** %seg_b, align 8
  %y22 = getelementptr inbounds %struct._BoundSeg, %struct._BoundSeg* %10, i32 0, i32 3
  %11 = load i32, i32* %y22, align 4
  %call = call i32 @cmp_xy(i32 %5, i32 %7, i32 %9, i32 %11)
  store i32 %call, i32* %result, align 4
  %12 = load i32, i32* %result, align 4
  %cmp = icmp eq i32 %12, 0
  br i1 %cmp, label %if.then, label %if.end.8

if.then:                                          ; preds = %entry
  %13 = load %struct._BoundSeg*, %struct._BoundSeg** %seg_a, align 8
  %14 = load %struct._BoundSeg*, %struct._BoundSeg** %seg_b, align 8
  %cmp3 = icmp ult %struct._BoundSeg* %13, %14
  br i1 %cmp3, label %if.then.4, label %if.else

if.then.4:                                        ; preds = %if.then
  store i32 -1, i32* %result, align 4
  br label %if.end.7

if.else:                                          ; preds = %if.then
  %15 = load %struct._BoundSeg*, %struct._BoundSeg** %seg_a, align 8
  %16 = load %struct._BoundSeg*, %struct._BoundSeg** %seg_b, align 8
  %cmp5 = icmp ugt %struct._BoundSeg* %15, %16
  br i1 %cmp5, label %if.then.6, label %if.end

if.then.6:                                        ; preds = %if.else
  store i32 1, i32* %result, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.6, %if.else
  br label %if.end.7

if.end.7:                                         ; preds = %if.end, %if.then.4
  br label %if.end.8

if.end.8:                                         ; preds = %if.end.7, %entry
  %17 = load i32, i32* %result, align 4
  ret i32 %17
}

; Function Attrs: nounwind uwtable
define internal %struct._Boundary* @boundary_new(%struct._PixelRegion* %PR) #0 {
entry:
  %PR.addr = alloca %struct._PixelRegion*, align 8
  %boundary = alloca %struct._Boundary*, align 8
  %i = alloca i32, align 4
  store %struct._PixelRegion* %PR, %struct._PixelRegion** %PR.addr, align 8
  %call = call noalias i8* @g_slice_alloc0(i64 56)
  %0 = bitcast i8* %call to %struct._Boundary*
  store %struct._Boundary* %0, %struct._Boundary** %boundary, align 8
  %1 = load %struct._PixelRegion*, %struct._PixelRegion** %PR.addr, align 8
  %tobool = icmp ne %struct._PixelRegion* %1, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct._PixelRegion*, %struct._PixelRegion** %PR.addr, align 8
  %w = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %2, i32 0, i32 8
  %3 = load i32, i32* %w, align 4
  %4 = load %struct._PixelRegion*, %struct._PixelRegion** %PR.addr, align 8
  %x = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %4, i32 0, i32 6
  %5 = load i32, i32* %x, align 4
  %add = add nsw i32 %3, %5
  %add1 = add nsw i32 %add, 1
  %conv = sext i32 %add1 to i64
  %call2 = call noalias i8* @g_malloc_n(i64 %conv, i64 4)
  %6 = bitcast i8* %call2 to i32*
  %7 = load %struct._Boundary*, %struct._Boundary** %boundary, align 8
  %vert_segs = getelementptr inbounds %struct._Boundary, %struct._Boundary* %7, i32 0, i32 3
  store i32* %6, i32** %vert_segs, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %8 = load i32, i32* %i, align 4
  %9 = load %struct._PixelRegion*, %struct._PixelRegion** %PR.addr, align 8
  %w3 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %9, i32 0, i32 8
  %10 = load i32, i32* %w3, align 4
  %11 = load %struct._PixelRegion*, %struct._PixelRegion** %PR.addr, align 8
  %x4 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %11, i32 0, i32 6
  %12 = load i32, i32* %x4, align 4
  %add5 = add nsw i32 %10, %12
  %cmp = icmp sle i32 %8, %add5
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %13 = load i32, i32* %i, align 4
  %idxprom = sext i32 %13 to i64
  %14 = load %struct._Boundary*, %struct._Boundary** %boundary, align 8
  %vert_segs7 = getelementptr inbounds %struct._Boundary, %struct._Boundary* %14, i32 0, i32 3
  %15 = load i32*, i32** %vert_segs7, align 8
  %arrayidx = getelementptr inbounds i32, i32* %15, i64 %idxprom
  store i32 -1, i32* %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %16 = load i32, i32* %i, align 4
  %inc = add nsw i32 %16, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %17 = load %struct._PixelRegion*, %struct._PixelRegion** %PR.addr, align 8
  %w8 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %17, i32 0, i32 8
  %18 = load i32, i32* %w8, align 4
  %add9 = add nsw i32 %18, 3
  %19 = load %struct._Boundary*, %struct._Boundary** %boundary, align 8
  %max_empty_segs = getelementptr inbounds %struct._Boundary, %struct._Boundary* %19, i32 0, i32 7
  store i32 %add9, i32* %max_empty_segs, align 4
  %20 = load %struct._Boundary*, %struct._Boundary** %boundary, align 8
  %max_empty_segs10 = getelementptr inbounds %struct._Boundary, %struct._Boundary* %20, i32 0, i32 7
  %21 = load i32, i32* %max_empty_segs10, align 4
  %conv11 = sext i32 %21 to i64
  %call12 = call noalias i8* @g_malloc_n(i64 %conv11, i64 4)
  %22 = bitcast i8* %call12 to i32*
  %23 = load %struct._Boundary*, %struct._Boundary** %boundary, align 8
  %empty_segs_n = getelementptr inbounds %struct._Boundary, %struct._Boundary* %23, i32 0, i32 4
  store i32* %22, i32** %empty_segs_n, align 8
  %24 = load %struct._Boundary*, %struct._Boundary** %boundary, align 8
  %max_empty_segs13 = getelementptr inbounds %struct._Boundary, %struct._Boundary* %24, i32 0, i32 7
  %25 = load i32, i32* %max_empty_segs13, align 4
  %conv14 = sext i32 %25 to i64
  %call15 = call noalias i8* @g_malloc_n(i64 %conv14, i64 4)
  %26 = bitcast i8* %call15 to i32*
  %27 = load %struct._Boundary*, %struct._Boundary** %boundary, align 8
  %empty_segs_c = getelementptr inbounds %struct._Boundary, %struct._Boundary* %27, i32 0, i32 5
  store i32* %26, i32** %empty_segs_c, align 8
  %28 = load %struct._Boundary*, %struct._Boundary** %boundary, align 8
  %max_empty_segs16 = getelementptr inbounds %struct._Boundary, %struct._Boundary* %28, i32 0, i32 7
  %29 = load i32, i32* %max_empty_segs16, align 4
  %conv17 = sext i32 %29 to i64
  %call18 = call noalias i8* @g_malloc_n(i64 %conv17, i64 4)
  %30 = bitcast i8* %call18 to i32*
  %31 = load %struct._Boundary*, %struct._Boundary** %boundary, align 8
  %empty_segs_l = getelementptr inbounds %struct._Boundary, %struct._Boundary* %31, i32 0, i32 6
  store i32* %30, i32** %empty_segs_l, align 8
  br label %if.end

if.end:                                           ; preds = %for.end, %entry
  %32 = load %struct._Boundary*, %struct._Boundary** %boundary, align 8
  ret %struct._Boundary* %32
}

; Function Attrs: nounwind uwtable
define internal void @boundary_add_seg(%struct._Boundary* %boundary, i32 %x1, i32 %y1, i32 %x2, i32 %y2, i32 %open) #0 {
entry:
  %boundary.addr = alloca %struct._Boundary*, align 8
  %x1.addr = alloca i32, align 4
  %y1.addr = alloca i32, align 4
  %x2.addr = alloca i32, align 4
  %y2.addr = alloca i32, align 4
  %open.addr = alloca i32, align 4
  store %struct._Boundary* %boundary, %struct._Boundary** %boundary.addr, align 8
  store i32 %x1, i32* %x1.addr, align 4
  store i32 %y1, i32* %y1.addr, align 4
  store i32 %x2, i32* %x2.addr, align 4
  store i32 %y2, i32* %y2.addr, align 4
  store i32 %open, i32* %open.addr, align 4
  %0 = load %struct._Boundary*, %struct._Boundary** %boundary.addr, align 8
  %num_segs = getelementptr inbounds %struct._Boundary, %struct._Boundary* %0, i32 0, i32 1
  %1 = load i32, i32* %num_segs, align 4
  %2 = load %struct._Boundary*, %struct._Boundary** %boundary.addr, align 8
  %max_segs = getelementptr inbounds %struct._Boundary, %struct._Boundary* %2, i32 0, i32 2
  %3 = load i32, i32* %max_segs, align 4
  %cmp = icmp sge i32 %1, %3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load %struct._Boundary*, %struct._Boundary** %boundary.addr, align 8
  %max_segs1 = getelementptr inbounds %struct._Boundary, %struct._Boundary* %4, i32 0, i32 2
  %5 = load i32, i32* %max_segs1, align 4
  %add = add nsw i32 %5, 2048
  store i32 %add, i32* %max_segs1, align 4
  %6 = load %struct._Boundary*, %struct._Boundary** %boundary.addr, align 8
  %segs = getelementptr inbounds %struct._Boundary, %struct._Boundary* %6, i32 0, i32 0
  %7 = load %struct._BoundSeg*, %struct._BoundSeg** %segs, align 8
  %8 = bitcast %struct._BoundSeg* %7 to i8*
  %9 = load %struct._Boundary*, %struct._Boundary** %boundary.addr, align 8
  %max_segs2 = getelementptr inbounds %struct._Boundary, %struct._Boundary* %9, i32 0, i32 2
  %10 = load i32, i32* %max_segs2, align 4
  %conv = sext i32 %10 to i64
  %call = call i8* @g_realloc_n(i8* %8, i64 %conv, i64 20)
  %11 = bitcast i8* %call to %struct._BoundSeg*
  %12 = load %struct._Boundary*, %struct._Boundary** %boundary.addr, align 8
  %segs3 = getelementptr inbounds %struct._Boundary, %struct._Boundary* %12, i32 0, i32 0
  store %struct._BoundSeg* %11, %struct._BoundSeg** %segs3, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %13 = load i32, i32* %x1.addr, align 4
  %14 = load %struct._Boundary*, %struct._Boundary** %boundary.addr, align 8
  %num_segs4 = getelementptr inbounds %struct._Boundary, %struct._Boundary* %14, i32 0, i32 1
  %15 = load i32, i32* %num_segs4, align 4
  %idxprom = sext i32 %15 to i64
  %16 = load %struct._Boundary*, %struct._Boundary** %boundary.addr, align 8
  %segs5 = getelementptr inbounds %struct._Boundary, %struct._Boundary* %16, i32 0, i32 0
  %17 = load %struct._BoundSeg*, %struct._BoundSeg** %segs5, align 8
  %arrayidx = getelementptr inbounds %struct._BoundSeg, %struct._BoundSeg* %17, i64 %idxprom
  %x16 = getelementptr inbounds %struct._BoundSeg, %struct._BoundSeg* %arrayidx, i32 0, i32 0
  store i32 %13, i32* %x16, align 4
  %18 = load i32, i32* %y1.addr, align 4
  %19 = load %struct._Boundary*, %struct._Boundary** %boundary.addr, align 8
  %num_segs7 = getelementptr inbounds %struct._Boundary, %struct._Boundary* %19, i32 0, i32 1
  %20 = load i32, i32* %num_segs7, align 4
  %idxprom8 = sext i32 %20 to i64
  %21 = load %struct._Boundary*, %struct._Boundary** %boundary.addr, align 8
  %segs9 = getelementptr inbounds %struct._Boundary, %struct._Boundary* %21, i32 0, i32 0
  %22 = load %struct._BoundSeg*, %struct._BoundSeg** %segs9, align 8
  %arrayidx10 = getelementptr inbounds %struct._BoundSeg, %struct._BoundSeg* %22, i64 %idxprom8
  %y111 = getelementptr inbounds %struct._BoundSeg, %struct._BoundSeg* %arrayidx10, i32 0, i32 1
  store i32 %18, i32* %y111, align 4
  %23 = load i32, i32* %x2.addr, align 4
  %24 = load %struct._Boundary*, %struct._Boundary** %boundary.addr, align 8
  %num_segs12 = getelementptr inbounds %struct._Boundary, %struct._Boundary* %24, i32 0, i32 1
  %25 = load i32, i32* %num_segs12, align 4
  %idxprom13 = sext i32 %25 to i64
  %26 = load %struct._Boundary*, %struct._Boundary** %boundary.addr, align 8
  %segs14 = getelementptr inbounds %struct._Boundary, %struct._Boundary* %26, i32 0, i32 0
  %27 = load %struct._BoundSeg*, %struct._BoundSeg** %segs14, align 8
  %arrayidx15 = getelementptr inbounds %struct._BoundSeg, %struct._BoundSeg* %27, i64 %idxprom13
  %x216 = getelementptr inbounds %struct._BoundSeg, %struct._BoundSeg* %arrayidx15, i32 0, i32 2
  store i32 %23, i32* %x216, align 4
  %28 = load i32, i32* %y2.addr, align 4
  %29 = load %struct._Boundary*, %struct._Boundary** %boundary.addr, align 8
  %num_segs17 = getelementptr inbounds %struct._Boundary, %struct._Boundary* %29, i32 0, i32 1
  %30 = load i32, i32* %num_segs17, align 4
  %idxprom18 = sext i32 %30 to i64
  %31 = load %struct._Boundary*, %struct._Boundary** %boundary.addr, align 8
  %segs19 = getelementptr inbounds %struct._Boundary, %struct._Boundary* %31, i32 0, i32 0
  %32 = load %struct._BoundSeg*, %struct._BoundSeg** %segs19, align 8
  %arrayidx20 = getelementptr inbounds %struct._BoundSeg, %struct._BoundSeg* %32, i64 %idxprom18
  %y221 = getelementptr inbounds %struct._BoundSeg, %struct._BoundSeg* %arrayidx20, i32 0, i32 3
  store i32 %28, i32* %y221, align 4
  %33 = load i32, i32* %open.addr, align 4
  %34 = load %struct._Boundary*, %struct._Boundary** %boundary.addr, align 8
  %num_segs22 = getelementptr inbounds %struct._Boundary, %struct._Boundary* %34, i32 0, i32 1
  %35 = load i32, i32* %num_segs22, align 4
  %idxprom23 = sext i32 %35 to i64
  %36 = load %struct._Boundary*, %struct._Boundary** %boundary.addr, align 8
  %segs24 = getelementptr inbounds %struct._Boundary, %struct._Boundary* %36, i32 0, i32 0
  %37 = load %struct._BoundSeg*, %struct._BoundSeg** %segs24, align 8
  %arrayidx25 = getelementptr inbounds %struct._BoundSeg, %struct._BoundSeg* %37, i64 %idxprom23
  %open26 = getelementptr inbounds %struct._BoundSeg, %struct._BoundSeg* %arrayidx25, i32 0, i32 4
  %38 = trunc i32 %33 to i8
  %bf.load = load i8, i8* %open26, align 4
  %bf.value = and i8 %38, 1
  %bf.clear = and i8 %bf.load, -2
  %bf.set = or i8 %bf.clear, %bf.value
  store i8 %bf.set, i8* %open26, align 4
  %bf.result.cast = zext i8 %bf.value to i32
  %39 = load %struct._Boundary*, %struct._Boundary** %boundary.addr, align 8
  %num_segs27 = getelementptr inbounds %struct._Boundary, %struct._Boundary* %39, i32 0, i32 1
  %40 = load i32, i32* %num_segs27, align 4
  %inc = add nsw i32 %40, 1
  store i32 %inc, i32* %num_segs27, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define internal %struct._BoundSeg* @find_segment(%struct._BoundSeg** %segs_by_xy1, %struct._BoundSeg** %segs_by_xy2, i32 %num_segs, i32 %x, i32 %y) #0 {
entry:
  %retval = alloca %struct._BoundSeg*, align 8
  %segs_by_xy1.addr = alloca %struct._BoundSeg**, align 8
  %segs_by_xy2.addr = alloca %struct._BoundSeg**, align 8
  %num_segs.addr = alloca i32, align 4
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %segptr_xy1 = alloca %struct._BoundSeg*, align 8
  %segptr_xy2 = alloca %struct._BoundSeg*, align 8
  %search_seg = alloca %struct._BoundSeg, align 4
  store %struct._BoundSeg** %segs_by_xy1, %struct._BoundSeg*** %segs_by_xy1.addr, align 8
  store %struct._BoundSeg** %segs_by_xy2, %struct._BoundSeg*** %segs_by_xy2.addr, align 8
  store i32 %num_segs, i32* %num_segs.addr, align 4
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  %0 = load i32, i32* %x.addr, align 4
  %x2 = getelementptr inbounds %struct._BoundSeg, %struct._BoundSeg* %search_seg, i32 0, i32 2
  store i32 %0, i32* %x2, align 4
  %x1 = getelementptr inbounds %struct._BoundSeg, %struct._BoundSeg* %search_seg, i32 0, i32 0
  store i32 %0, i32* %x1, align 4
  %1 = load i32, i32* %y.addr, align 4
  %y2 = getelementptr inbounds %struct._BoundSeg, %struct._BoundSeg* %search_seg, i32 0, i32 3
  store i32 %1, i32* %y2, align 4
  %y1 = getelementptr inbounds %struct._BoundSeg, %struct._BoundSeg* %search_seg, i32 0, i32 1
  store i32 %1, i32* %y1, align 4
  %2 = load %struct._BoundSeg**, %struct._BoundSeg*** %segs_by_xy1.addr, align 8
  %3 = load i32, i32* %num_segs.addr, align 4
  %call = call %struct._BoundSeg* @find_segment_with_func(%struct._BoundSeg** %2, i32 %3, %struct._BoundSeg* %search_seg, i32 (i8*, i8*)* bitcast (i32 (%struct._BoundSeg**, %struct._BoundSeg**)* @cmp_segptr_xy1 to i32 (i8*, i8*)*))
  store %struct._BoundSeg* %call, %struct._BoundSeg** %segptr_xy1, align 8
  %4 = load %struct._BoundSeg**, %struct._BoundSeg*** %segs_by_xy2.addr, align 8
  %5 = load i32, i32* %num_segs.addr, align 4
  %call1 = call %struct._BoundSeg* @find_segment_with_func(%struct._BoundSeg** %4, i32 %5, %struct._BoundSeg* %search_seg, i32 (i8*, i8*)* bitcast (i32 (%struct._BoundSeg**, %struct._BoundSeg**)* @cmp_segptr_xy2 to i32 (i8*, i8*)*))
  store %struct._BoundSeg* %call1, %struct._BoundSeg** %segptr_xy2, align 8
  %6 = load %struct._BoundSeg*, %struct._BoundSeg** %segptr_xy1, align 8
  %cmp = icmp ne %struct._BoundSeg* %6, null
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %7 = load %struct._BoundSeg*, %struct._BoundSeg** %segptr_xy2, align 8
  %cmp2 = icmp ne %struct._BoundSeg* %7, null
  br i1 %cmp2, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %8 = load %struct._BoundSeg*, %struct._BoundSeg** %segptr_xy1, align 8
  %9 = load %struct._BoundSeg*, %struct._BoundSeg** %segptr_xy2, align 8
  %cmp3 = icmp ult %struct._BoundSeg* %8, %9
  br i1 %cmp3, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  %10 = load %struct._BoundSeg*, %struct._BoundSeg** %segptr_xy1, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.then
  %11 = load %struct._BoundSeg*, %struct._BoundSeg** %segptr_xy2, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._BoundSeg* [ %10, %cond.true ], [ %11, %cond.false ]
  store %struct._BoundSeg* %cond, %struct._BoundSeg** %retval
  br label %return

if.else:                                          ; preds = %land.lhs.true, %entry
  %12 = load %struct._BoundSeg*, %struct._BoundSeg** %segptr_xy1, align 8
  %cmp4 = icmp ne %struct._BoundSeg* %12, null
  br i1 %cmp4, label %if.then.5, label %if.else.6

if.then.5:                                        ; preds = %if.else
  %13 = load %struct._BoundSeg*, %struct._BoundSeg** %segptr_xy1, align 8
  store %struct._BoundSeg* %13, %struct._BoundSeg** %retval
  br label %return

if.else.6:                                        ; preds = %if.else
  %14 = load %struct._BoundSeg*, %struct._BoundSeg** %segptr_xy2, align 8
  %cmp7 = icmp ne %struct._BoundSeg* %14, null
  br i1 %cmp7, label %if.then.8, label %if.end

if.then.8:                                        ; preds = %if.else.6
  %15 = load %struct._BoundSeg*, %struct._BoundSeg** %segptr_xy2, align 8
  store %struct._BoundSeg* %15, %struct._BoundSeg** %retval
  br label %return

if.end:                                           ; preds = %if.else.6
  br label %if.end.9

if.end.9:                                         ; preds = %if.end
  br label %if.end.10

if.end.10:                                        ; preds = %if.end.9
  store %struct._BoundSeg* null, %struct._BoundSeg** %retval
  br label %return

return:                                           ; preds = %if.end.10, %if.then.8, %if.then.5, %cond.end
  %16 = load %struct._BoundSeg*, %struct._BoundSeg** %retval
  ret %struct._BoundSeg* %16
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

declare void @g_free(i8*) #1

; Function Attrs: nounwind uwtable
define %struct._BoundSeg* @boundary_simplify(%struct._BoundSeg* %sorted_segs, i32 %num_groups, i32* %num_segs) #0 {
entry:
  %retval = alloca %struct._BoundSeg*, align 8
  %sorted_segs.addr = alloca %struct._BoundSeg*, align 8
  %num_groups.addr = alloca i32, align 4
  %num_segs.addr = alloca i32*, align 8
  %new_bounds = alloca %struct._GArray*, align 8
  %i = alloca i32, align 4
  %seg = alloca i32, align 4
  %start = alloca i32, align 4
  %n_points = alloca i32, align 4
  %tmp_points = alloca %struct._GArray*, align 8
  %tmp_seg = alloca %struct._BoundSeg, align 4
  %j = alloca i32, align 4
  store %struct._BoundSeg* %sorted_segs, %struct._BoundSeg** %sorted_segs.addr, align 8
  store i32 %num_groups, i32* %num_groups.addr, align 4
  store i32* %num_segs, i32** %num_segs.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._BoundSeg*, %struct._BoundSeg** %sorted_segs.addr, align 8
  %cmp = icmp eq %struct._BoundSeg* %0, null
  br i1 %cmp, label %land.lhs.true, label %lor.lhs.false

land.lhs.true:                                    ; preds = %do.body
  %1 = load i32, i32* %num_groups.addr, align 4
  %cmp1 = icmp eq i32 %1, 0
  br i1 %cmp1, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true, %do.body
  %2 = load %struct._BoundSeg*, %struct._BoundSeg** %sorted_segs.addr, align 8
  %cmp2 = icmp ne %struct._BoundSeg* %2, null
  br i1 %cmp2, label %land.lhs.true.3, label %if.else

land.lhs.true.3:                                  ; preds = %lor.lhs.false
  %3 = load i32, i32* %num_groups.addr, align 4
  %cmp4 = icmp sgt i32 %3, 0
  br i1 %cmp4, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true.3, %land.lhs.true
  br label %if.end

if.else:                                          ; preds = %land.lhs.true.3, %lor.lhs.false
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.boundary_simplify, i32 0, i32 0), i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.6, i32 0, i32 0))
  store %struct._BoundSeg* null, %struct._BoundSeg** %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %do.body.5

do.body.5:                                        ; preds = %do.end
  %4 = load i32*, i32** %num_segs.addr, align 8
  %cmp6 = icmp ne i32* %4, null
  br i1 %cmp6, label %if.then.7, label %if.else.8

if.then.7:                                        ; preds = %do.body.5
  br label %if.end.9

if.else.8:                                        ; preds = %do.body.5
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.boundary_simplify, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i32 0, i32 0))
  store %struct._BoundSeg* null, %struct._BoundSeg** %retval
  br label %return

if.end.9:                                         ; preds = %if.then.7
  br label %do.end.10

do.end.10:                                        ; preds = %if.end.9
  %call = call %struct._GArray* @g_array_new(i32 0, i32 0, i32 20)
  store %struct._GArray* %call, %struct._GArray** %new_bounds, align 8
  store i32 0, i32* %seg, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.51, %do.end.10
  %5 = load i32, i32* %i, align 4
  %6 = load i32, i32* %num_groups.addr, align 4
  %cmp11 = icmp slt i32 %5, %6
  br i1 %cmp11, label %for.body, label %for.end.53

for.body:                                         ; preds = %for.cond
  %7 = load i32, i32* %seg, align 4
  store i32 %7, i32* %start, align 4
  store i32 0, i32* %n_points, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %for.body
  %8 = load i32, i32* %seg, align 4
  %idxprom = sext i32 %8 to i64
  %9 = load %struct._BoundSeg*, %struct._BoundSeg** %sorted_segs.addr, align 8
  %arrayidx = getelementptr inbounds %struct._BoundSeg, %struct._BoundSeg* %9, i64 %idxprom
  %x1 = getelementptr inbounds %struct._BoundSeg, %struct._BoundSeg* %arrayidx, i32 0, i32 0
  %10 = load i32, i32* %x1, align 4
  %cmp12 = icmp ne i32 %10, -1
  br i1 %cmp12, label %lor.end, label %lor.lhs.false.13

lor.lhs.false.13:                                 ; preds = %while.cond
  %11 = load i32, i32* %seg, align 4
  %idxprom14 = sext i32 %11 to i64
  %12 = load %struct._BoundSeg*, %struct._BoundSeg** %sorted_segs.addr, align 8
  %arrayidx15 = getelementptr inbounds %struct._BoundSeg, %struct._BoundSeg* %12, i64 %idxprom14
  %x2 = getelementptr inbounds %struct._BoundSeg, %struct._BoundSeg* %arrayidx15, i32 0, i32 2
  %13 = load i32, i32* %x2, align 4
  %cmp16 = icmp ne i32 %13, -1
  br i1 %cmp16, label %lor.end, label %lor.lhs.false.17

lor.lhs.false.17:                                 ; preds = %lor.lhs.false.13
  %14 = load i32, i32* %seg, align 4
  %idxprom18 = sext i32 %14 to i64
  %15 = load %struct._BoundSeg*, %struct._BoundSeg** %sorted_segs.addr, align 8
  %arrayidx19 = getelementptr inbounds %struct._BoundSeg, %struct._BoundSeg* %15, i64 %idxprom18
  %y1 = getelementptr inbounds %struct._BoundSeg, %struct._BoundSeg* %arrayidx19, i32 0, i32 1
  %16 = load i32, i32* %y1, align 4
  %cmp20 = icmp ne i32 %16, -1
  br i1 %cmp20, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %lor.lhs.false.17
  %17 = load i32, i32* %seg, align 4
  %idxprom21 = sext i32 %17 to i64
  %18 = load %struct._BoundSeg*, %struct._BoundSeg** %sorted_segs.addr, align 8
  %arrayidx22 = getelementptr inbounds %struct._BoundSeg, %struct._BoundSeg* %18, i64 %idxprom21
  %y2 = getelementptr inbounds %struct._BoundSeg, %struct._BoundSeg* %arrayidx22, i32 0, i32 3
  %19 = load i32, i32* %y2, align 4
  %cmp23 = icmp ne i32 %19, -1
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false.17, %lor.lhs.false.13, %while.cond
  %20 = phi i1 [ true, %lor.lhs.false.17 ], [ true, %lor.lhs.false.13 ], [ true, %while.cond ], [ %cmp23, %lor.rhs ]
  br i1 %20, label %while.body, label %while.end

while.body:                                       ; preds = %lor.end
  %21 = load i32, i32* %n_points, align 4
  %inc = add nsw i32 %21, 1
  store i32 %inc, i32* %n_points, align 4
  %22 = load i32, i32* %seg, align 4
  %inc24 = add nsw i32 %22, 1
  store i32 %inc24, i32* %seg, align 4
  br label %while.cond

while.end:                                        ; preds = %lor.end
  %23 = load i32, i32* %n_points, align 4
  %cmp25 = icmp sgt i32 %23, 0
  br i1 %cmp25, label %if.then.26, label %if.end.49

if.then.26:                                       ; preds = %while.end
  %call27 = call %struct._GArray* @g_array_new(i32 0, i32 0, i32 4)
  store %struct._GArray* %call27, %struct._GArray** %tmp_points, align 8
  %24 = load i32, i32* %seg, align 4
  %idxprom28 = sext i32 %24 to i64
  %25 = load %struct._BoundSeg*, %struct._BoundSeg** %sorted_segs.addr, align 8
  %arrayidx29 = getelementptr inbounds %struct._BoundSeg, %struct._BoundSeg* %25, i64 %idxprom28
  %26 = bitcast %struct._BoundSeg* %tmp_seg to i8*
  %27 = bitcast %struct._BoundSeg* %arrayidx29 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %26, i8* %27, i64 20, i32 4, i1 false)
  %28 = load i32, i32* %seg, align 4
  %idxprom30 = sext i32 %28 to i64
  %29 = load %struct._BoundSeg*, %struct._BoundSeg** %sorted_segs.addr, align 8
  %arrayidx31 = getelementptr inbounds %struct._BoundSeg, %struct._BoundSeg* %29, i64 %idxprom30
  %30 = load i32, i32* %start, align 4
  %idxprom32 = sext i32 %30 to i64
  %31 = load %struct._BoundSeg*, %struct._BoundSeg** %sorted_segs.addr, align 8
  %arrayidx33 = getelementptr inbounds %struct._BoundSeg, %struct._BoundSeg* %31, i64 %idxprom32
  %32 = bitcast %struct._BoundSeg* %arrayidx31 to i8*
  %33 = bitcast %struct._BoundSeg* %arrayidx33 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %32, i8* %33, i64 20, i32 4, i1 false)
  %34 = load %struct._BoundSeg*, %struct._BoundSeg** %sorted_segs.addr, align 8
  %35 = load i32, i32* %start, align 4
  %36 = load i32, i32* %start, align 4
  %37 = load i32, i32* %n_points, align 4
  %add = add nsw i32 %36, %37
  call void @simplify_subdivide(%struct._BoundSeg* %34, i32 %35, i32 %add, %struct._GArray** %tmp_points)
  %38 = load i32, i32* %seg, align 4
  %idxprom34 = sext i32 %38 to i64
  %39 = load %struct._BoundSeg*, %struct._BoundSeg** %sorted_segs.addr, align 8
  %arrayidx35 = getelementptr inbounds %struct._BoundSeg, %struct._BoundSeg* %39, i64 %idxprom34
  %40 = bitcast %struct._BoundSeg* %arrayidx35 to i8*
  %41 = bitcast %struct._BoundSeg* %tmp_seg to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %40, i8* %41, i64 20, i32 4, i1 false)
  store i32 0, i32* %j, align 4
  br label %for.cond.36

for.cond.36:                                      ; preds = %for.inc, %if.then.26
  %42 = load i32, i32* %j, align 4
  %43 = load %struct._GArray*, %struct._GArray** %tmp_points, align 8
  %len = getelementptr inbounds %struct._GArray, %struct._GArray* %43, i32 0, i32 1
  %44 = load i32, i32* %len, align 4
  %cmp37 = icmp ult i32 %42, %44
  br i1 %cmp37, label %for.body.38, label %for.end

for.body.38:                                      ; preds = %for.cond.36
  %45 = load %struct._GArray*, %struct._GArray** %new_bounds, align 8
  %46 = load i32, i32* %j, align 4
  %idxprom39 = sext i32 %46 to i64
  %47 = load %struct._GArray*, %struct._GArray** %tmp_points, align 8
  %data = getelementptr inbounds %struct._GArray, %struct._GArray* %47, i32 0, i32 0
  %48 = load i8*, i8** %data, align 8
  %49 = bitcast i8* %48 to i32*
  %arrayidx40 = getelementptr inbounds i32, i32* %49, i64 %idxprom39
  %50 = load i32, i32* %arrayidx40, align 4
  %idxprom41 = sext i32 %50 to i64
  %51 = load %struct._BoundSeg*, %struct._BoundSeg** %sorted_segs.addr, align 8
  %arrayidx42 = getelementptr inbounds %struct._BoundSeg, %struct._BoundSeg* %51, i64 %idxprom41
  %52 = bitcast %struct._BoundSeg* %arrayidx42 to i8*
  %call43 = call %struct._GArray* @g_array_append_vals(%struct._GArray* %45, i8* %52, i32 1)
  br label %for.inc

for.inc:                                          ; preds = %for.body.38
  %53 = load i32, i32* %j, align 4
  %inc44 = add nsw i32 %53, 1
  store i32 %inc44, i32* %j, align 4
  br label %for.cond.36

for.end:                                          ; preds = %for.cond.36
  %54 = load %struct._GArray*, %struct._GArray** %new_bounds, align 8
  %55 = load i32, i32* %seg, align 4
  %idxprom45 = sext i32 %55 to i64
  %56 = load %struct._BoundSeg*, %struct._BoundSeg** %sorted_segs.addr, align 8
  %arrayidx46 = getelementptr inbounds %struct._BoundSeg, %struct._BoundSeg* %56, i64 %idxprom45
  %57 = bitcast %struct._BoundSeg* %arrayidx46 to i8*
  %call47 = call %struct._GArray* @g_array_append_vals(%struct._GArray* %54, i8* %57, i32 1)
  %58 = load %struct._GArray*, %struct._GArray** %tmp_points, align 8
  %call48 = call i8* @g_array_free(%struct._GArray* %58, i32 1)
  br label %if.end.49

if.end.49:                                        ; preds = %for.end, %while.end
  %59 = load i32, i32* %seg, align 4
  %inc50 = add nsw i32 %59, 1
  store i32 %inc50, i32* %seg, align 4
  br label %for.inc.51

for.inc.51:                                       ; preds = %if.end.49
  %60 = load i32, i32* %i, align 4
  %inc52 = add nsw i32 %60, 1
  store i32 %inc52, i32* %i, align 4
  br label %for.cond

for.end.53:                                       ; preds = %for.cond
  %61 = load %struct._GArray*, %struct._GArray** %new_bounds, align 8
  %len54 = getelementptr inbounds %struct._GArray, %struct._GArray* %61, i32 0, i32 1
  %62 = load i32, i32* %len54, align 4
  %63 = load i32*, i32** %num_segs.addr, align 8
  store i32 %62, i32* %63, align 4
  %64 = load %struct._GArray*, %struct._GArray** %new_bounds, align 8
  %call55 = call i8* @g_array_free(%struct._GArray* %64, i32 0)
  %65 = bitcast i8* %call55 to %struct._BoundSeg*
  store %struct._BoundSeg* %65, %struct._BoundSeg** %retval
  br label %return

return:                                           ; preds = %for.end.53, %if.else.8, %if.else
  %66 = load %struct._BoundSeg*, %struct._BoundSeg** %retval
  ret %struct._BoundSeg* %66
}

declare %struct._GArray* @g_array_new(i32, i32, i32) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #2

; Function Attrs: nounwind uwtable
define internal void @simplify_subdivide(%struct._BoundSeg* %segs, i32 %start_idx, i32 %end_idx, %struct._GArray** %ret_points) #0 {
entry:
  %segs.addr = alloca %struct._BoundSeg*, align 8
  %start_idx.addr = alloca i32, align 4
  %end_idx.addr = alloca i32, align 4
  %ret_points.addr = alloca %struct._GArray**, align 8
  %maxdist_idx = alloca i32, align 4
  %maxdist = alloca i32, align 4
  %threshold = alloca i32, align 4
  %i = alloca i32, align 4
  %dx = alloca i32, align 4
  %dy = alloca i32, align 4
  %dist = alloca i32, align 4
  %dist64 = alloca i32, align 4
  store %struct._BoundSeg* %segs, %struct._BoundSeg** %segs.addr, align 8
  store i32 %start_idx, i32* %start_idx.addr, align 4
  store i32 %end_idx, i32* %end_idx.addr, align 4
  store %struct._GArray** %ret_points, %struct._GArray*** %ret_points.addr, align 8
  %0 = load i32, i32* %end_idx.addr, align 4
  %1 = load i32, i32* %start_idx.addr, align 4
  %sub = sub nsw i32 %0, %1
  %cmp = icmp slt i32 %sub, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct._GArray**, %struct._GArray*** %ret_points.addr, align 8
  %3 = load %struct._GArray*, %struct._GArray** %2, align 8
  %4 = bitcast i32* %start_idx.addr to i8*
  %call = call %struct._GArray* @g_array_append_vals(%struct._GArray* %3, i8* %4, i32 1)
  %5 = load %struct._GArray**, %struct._GArray*** %ret_points.addr, align 8
  store %struct._GArray* %call, %struct._GArray** %5, align 8
  br label %return

if.end:                                           ; preds = %entry
  store i32 0, i32* %maxdist, align 4
  %6 = load i32, i32* %start_idx.addr, align 4
  %idxprom = sext i32 %6 to i64
  %7 = load %struct._BoundSeg*, %struct._BoundSeg** %segs.addr, align 8
  %arrayidx = getelementptr inbounds %struct._BoundSeg, %struct._BoundSeg* %7, i64 %idxprom
  %x1 = getelementptr inbounds %struct._BoundSeg, %struct._BoundSeg* %arrayidx, i32 0, i32 0
  %8 = load i32, i32* %x1, align 4
  %9 = load i32, i32* %end_idx.addr, align 4
  %idxprom1 = sext i32 %9 to i64
  %10 = load %struct._BoundSeg*, %struct._BoundSeg** %segs.addr, align 8
  %arrayidx2 = getelementptr inbounds %struct._BoundSeg, %struct._BoundSeg* %10, i64 %idxprom1
  %x13 = getelementptr inbounds %struct._BoundSeg, %struct._BoundSeg* %arrayidx2, i32 0, i32 0
  %11 = load i32, i32* %x13, align 4
  %cmp4 = icmp eq i32 %8, %11
  br i1 %cmp4, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.end
  %12 = load i32, i32* %start_idx.addr, align 4
  %idxprom5 = sext i32 %12 to i64
  %13 = load %struct._BoundSeg*, %struct._BoundSeg** %segs.addr, align 8
  %arrayidx6 = getelementptr inbounds %struct._BoundSeg, %struct._BoundSeg* %13, i64 %idxprom5
  %y1 = getelementptr inbounds %struct._BoundSeg, %struct._BoundSeg* %arrayidx6, i32 0, i32 1
  %14 = load i32, i32* %y1, align 4
  %15 = load i32, i32* %end_idx.addr, align 4
  %idxprom7 = sext i32 %15 to i64
  %16 = load %struct._BoundSeg*, %struct._BoundSeg** %segs.addr, align 8
  %arrayidx8 = getelementptr inbounds %struct._BoundSeg, %struct._BoundSeg* %16, i64 %idxprom7
  %y19 = getelementptr inbounds %struct._BoundSeg, %struct._BoundSeg* %arrayidx8, i32 0, i32 1
  %17 = load i32, i32* %y19, align 4
  %cmp10 = icmp eq i32 %14, %17
  br i1 %cmp10, label %if.then.11, label %if.else

if.then.11:                                       ; preds = %land.lhs.true
  %18 = load i32, i32* %start_idx.addr, align 4
  %add = add nsw i32 %18, 1
  store i32 %add, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.11
  %19 = load i32, i32* %i, align 4
  %20 = load i32, i32* %end_idx.addr, align 4
  %cmp12 = icmp slt i32 %19, %20
  br i1 %cmp12, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %21 = load i32, i32* %i, align 4
  %idxprom13 = sext i32 %21 to i64
  %22 = load %struct._BoundSeg*, %struct._BoundSeg** %segs.addr, align 8
  %arrayidx14 = getelementptr inbounds %struct._BoundSeg, %struct._BoundSeg* %22, i64 %idxprom13
  %x115 = getelementptr inbounds %struct._BoundSeg, %struct._BoundSeg* %arrayidx14, i32 0, i32 0
  %23 = load i32, i32* %x115, align 4
  %24 = load i32, i32* %start_idx.addr, align 4
  %idxprom16 = sext i32 %24 to i64
  %25 = load %struct._BoundSeg*, %struct._BoundSeg** %segs.addr, align 8
  %arrayidx17 = getelementptr inbounds %struct._BoundSeg, %struct._BoundSeg* %25, i64 %idxprom16
  %x118 = getelementptr inbounds %struct._BoundSeg, %struct._BoundSeg* %arrayidx17, i32 0, i32 0
  %26 = load i32, i32* %x118, align 4
  %sub19 = sub nsw i32 %23, %26
  %27 = load i32, i32* %i, align 4
  %idxprom20 = sext i32 %27 to i64
  %28 = load %struct._BoundSeg*, %struct._BoundSeg** %segs.addr, align 8
  %arrayidx21 = getelementptr inbounds %struct._BoundSeg, %struct._BoundSeg* %28, i64 %idxprom20
  %x122 = getelementptr inbounds %struct._BoundSeg, %struct._BoundSeg* %arrayidx21, i32 0, i32 0
  %29 = load i32, i32* %x122, align 4
  %30 = load i32, i32* %start_idx.addr, align 4
  %idxprom23 = sext i32 %30 to i64
  %31 = load %struct._BoundSeg*, %struct._BoundSeg** %segs.addr, align 8
  %arrayidx24 = getelementptr inbounds %struct._BoundSeg, %struct._BoundSeg* %31, i64 %idxprom23
  %x125 = getelementptr inbounds %struct._BoundSeg, %struct._BoundSeg* %arrayidx24, i32 0, i32 0
  %32 = load i32, i32* %x125, align 4
  %sub26 = sub nsw i32 %29, %32
  %mul = mul nsw i32 %sub19, %sub26
  %33 = load i32, i32* %i, align 4
  %idxprom27 = sext i32 %33 to i64
  %34 = load %struct._BoundSeg*, %struct._BoundSeg** %segs.addr, align 8
  %arrayidx28 = getelementptr inbounds %struct._BoundSeg, %struct._BoundSeg* %34, i64 %idxprom27
  %y129 = getelementptr inbounds %struct._BoundSeg, %struct._BoundSeg* %arrayidx28, i32 0, i32 1
  %35 = load i32, i32* %y129, align 4
  %36 = load i32, i32* %start_idx.addr, align 4
  %idxprom30 = sext i32 %36 to i64
  %37 = load %struct._BoundSeg*, %struct._BoundSeg** %segs.addr, align 8
  %arrayidx31 = getelementptr inbounds %struct._BoundSeg, %struct._BoundSeg* %37, i64 %idxprom30
  %y132 = getelementptr inbounds %struct._BoundSeg, %struct._BoundSeg* %arrayidx31, i32 0, i32 1
  %38 = load i32, i32* %y132, align 4
  %sub33 = sub nsw i32 %35, %38
  %39 = load i32, i32* %i, align 4
  %idxprom34 = sext i32 %39 to i64
  %40 = load %struct._BoundSeg*, %struct._BoundSeg** %segs.addr, align 8
  %arrayidx35 = getelementptr inbounds %struct._BoundSeg, %struct._BoundSeg* %40, i64 %idxprom34
  %y136 = getelementptr inbounds %struct._BoundSeg, %struct._BoundSeg* %arrayidx35, i32 0, i32 1
  %41 = load i32, i32* %y136, align 4
  %42 = load i32, i32* %start_idx.addr, align 4
  %idxprom37 = sext i32 %42 to i64
  %43 = load %struct._BoundSeg*, %struct._BoundSeg** %segs.addr, align 8
  %arrayidx38 = getelementptr inbounds %struct._BoundSeg, %struct._BoundSeg* %43, i64 %idxprom37
  %y139 = getelementptr inbounds %struct._BoundSeg, %struct._BoundSeg* %arrayidx38, i32 0, i32 1
  %44 = load i32, i32* %y139, align 4
  %sub40 = sub nsw i32 %41, %44
  %mul41 = mul nsw i32 %sub33, %sub40
  %add42 = add nsw i32 %mul, %mul41
  store i32 %add42, i32* %dist, align 4
  %45 = load i32, i32* %dist, align 4
  %46 = load i32, i32* %maxdist, align 4
  %cmp43 = icmp sgt i32 %45, %46
  br i1 %cmp43, label %if.then.44, label %if.end.45

if.then.44:                                       ; preds = %for.body
  %47 = load i32, i32* %dist, align 4
  store i32 %47, i32* %maxdist, align 4
  br label %if.end.45

if.end.45:                                        ; preds = %if.then.44, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.45
  %48 = load i32, i32* %i, align 4
  %inc = add nsw i32 %48, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 1, i32* %threshold, align 4
  br label %if.end.92

if.else:                                          ; preds = %land.lhs.true, %if.end
  %49 = load i32, i32* %end_idx.addr, align 4
  %idxprom46 = sext i32 %49 to i64
  %50 = load %struct._BoundSeg*, %struct._BoundSeg** %segs.addr, align 8
  %arrayidx47 = getelementptr inbounds %struct._BoundSeg, %struct._BoundSeg* %50, i64 %idxprom46
  %x148 = getelementptr inbounds %struct._BoundSeg, %struct._BoundSeg* %arrayidx47, i32 0, i32 0
  %51 = load i32, i32* %x148, align 4
  %52 = load i32, i32* %start_idx.addr, align 4
  %idxprom49 = sext i32 %52 to i64
  %53 = load %struct._BoundSeg*, %struct._BoundSeg** %segs.addr, align 8
  %arrayidx50 = getelementptr inbounds %struct._BoundSeg, %struct._BoundSeg* %53, i64 %idxprom49
  %x151 = getelementptr inbounds %struct._BoundSeg, %struct._BoundSeg* %arrayidx50, i32 0, i32 0
  %54 = load i32, i32* %x151, align 4
  %sub52 = sub nsw i32 %51, %54
  store i32 %sub52, i32* %dx, align 4
  %55 = load i32, i32* %end_idx.addr, align 4
  %idxprom53 = sext i32 %55 to i64
  %56 = load %struct._BoundSeg*, %struct._BoundSeg** %segs.addr, align 8
  %arrayidx54 = getelementptr inbounds %struct._BoundSeg, %struct._BoundSeg* %56, i64 %idxprom53
  %y155 = getelementptr inbounds %struct._BoundSeg, %struct._BoundSeg* %arrayidx54, i32 0, i32 1
  %57 = load i32, i32* %y155, align 4
  %58 = load i32, i32* %start_idx.addr, align 4
  %idxprom56 = sext i32 %58 to i64
  %59 = load %struct._BoundSeg*, %struct._BoundSeg** %segs.addr, align 8
  %arrayidx57 = getelementptr inbounds %struct._BoundSeg, %struct._BoundSeg* %59, i64 %idxprom56
  %y158 = getelementptr inbounds %struct._BoundSeg, %struct._BoundSeg* %arrayidx57, i32 0, i32 1
  %60 = load i32, i32* %y158, align 4
  %sub59 = sub nsw i32 %57, %60
  store i32 %sub59, i32* %dy, align 4
  %61 = load i32, i32* %start_idx.addr, align 4
  %add60 = add nsw i32 %61, 1
  store i32 %add60, i32* %i, align 4
  br label %for.cond.61

for.cond.61:                                      ; preds = %for.inc.86, %if.else
  %62 = load i32, i32* %i, align 4
  %63 = load i32, i32* %end_idx.addr, align 4
  %cmp62 = icmp slt i32 %62, %63
  br i1 %cmp62, label %for.body.63, label %for.end.88

for.body.63:                                      ; preds = %for.cond.61
  %64 = load i32, i32* %dx, align 4
  %65 = load i32, i32* %start_idx.addr, align 4
  %idxprom65 = sext i32 %65 to i64
  %66 = load %struct._BoundSeg*, %struct._BoundSeg** %segs.addr, align 8
  %arrayidx66 = getelementptr inbounds %struct._BoundSeg, %struct._BoundSeg* %66, i64 %idxprom65
  %y167 = getelementptr inbounds %struct._BoundSeg, %struct._BoundSeg* %arrayidx66, i32 0, i32 1
  %67 = load i32, i32* %y167, align 4
  %68 = load i32, i32* %i, align 4
  %idxprom68 = sext i32 %68 to i64
  %69 = load %struct._BoundSeg*, %struct._BoundSeg** %segs.addr, align 8
  %arrayidx69 = getelementptr inbounds %struct._BoundSeg, %struct._BoundSeg* %69, i64 %idxprom68
  %y170 = getelementptr inbounds %struct._BoundSeg, %struct._BoundSeg* %arrayidx69, i32 0, i32 1
  %70 = load i32, i32* %y170, align 4
  %sub71 = sub nsw i32 %67, %70
  %mul72 = mul nsw i32 %64, %sub71
  %71 = load i32, i32* %dy, align 4
  %72 = load i32, i32* %start_idx.addr, align 4
  %idxprom73 = sext i32 %72 to i64
  %73 = load %struct._BoundSeg*, %struct._BoundSeg** %segs.addr, align 8
  %arrayidx74 = getelementptr inbounds %struct._BoundSeg, %struct._BoundSeg* %73, i64 %idxprom73
  %x175 = getelementptr inbounds %struct._BoundSeg, %struct._BoundSeg* %arrayidx74, i32 0, i32 0
  %74 = load i32, i32* %x175, align 4
  %75 = load i32, i32* %i, align 4
  %idxprom76 = sext i32 %75 to i64
  %76 = load %struct._BoundSeg*, %struct._BoundSeg** %segs.addr, align 8
  %arrayidx77 = getelementptr inbounds %struct._BoundSeg, %struct._BoundSeg* %76, i64 %idxprom76
  %x178 = getelementptr inbounds %struct._BoundSeg, %struct._BoundSeg* %arrayidx77, i32 0, i32 0
  %77 = load i32, i32* %x178, align 4
  %sub79 = sub nsw i32 %74, %77
  %mul80 = mul nsw i32 %71, %sub79
  %sub81 = sub nsw i32 %mul72, %mul80
  %call82 = call i32 @abs(i32 %sub81) #5
  store i32 %call82, i32* %dist64, align 4
  %78 = load i32, i32* %dist64, align 4
  %79 = load i32, i32* %maxdist, align 4
  %cmp83 = icmp sgt i32 %78, %79
  br i1 %cmp83, label %if.then.84, label %if.end.85

if.then.84:                                       ; preds = %for.body.63
  %80 = load i32, i32* %dist64, align 4
  store i32 %80, i32* %maxdist, align 4
  br label %if.end.85

if.end.85:                                        ; preds = %if.then.84, %for.body.63
  br label %for.inc.86

for.inc.86:                                       ; preds = %if.end.85
  %81 = load i32, i32* %i, align 4
  %inc87 = add nsw i32 %81, 1
  store i32 %inc87, i32* %i, align 4
  br label %for.cond.61

for.end.88:                                       ; preds = %for.cond.61
  %82 = load i32, i32* %dx, align 4
  %83 = load i32, i32* %dx, align 4
  %mul89 = mul nsw i32 %82, %83
  %84 = load i32, i32* %dy, align 4
  %85 = load i32, i32* %dy, align 4
  %mul90 = mul nsw i32 %84, %85
  %add91 = add nsw i32 %mul89, %mul90
  store i32 %add91, i32* %threshold, align 4
  br label %if.end.92

if.end.92:                                        ; preds = %for.end.88, %for.end
  %86 = load i32, i32* %maxdist, align 4
  %87 = load i32, i32* %threshold, align 4
  %cmp93 = icmp sle i32 %86, %87
  br i1 %cmp93, label %if.then.94, label %if.end.96

if.then.94:                                       ; preds = %if.end.92
  %88 = load %struct._GArray**, %struct._GArray*** %ret_points.addr, align 8
  %89 = load %struct._GArray*, %struct._GArray** %88, align 8
  %90 = bitcast i32* %start_idx.addr to i8*
  %call95 = call %struct._GArray* @g_array_append_vals(%struct._GArray* %89, i8* %90, i32 1)
  %91 = load %struct._GArray**, %struct._GArray*** %ret_points.addr, align 8
  store %struct._GArray* %call95, %struct._GArray** %91, align 8
  br label %return

if.end.96:                                        ; preds = %if.end.92
  %92 = load i32, i32* %start_idx.addr, align 4
  %93 = load i32, i32* %end_idx.addr, align 4
  %add97 = add nsw i32 %92, %93
  %div = sdiv i32 %add97, 2
  store i32 %div, i32* %maxdist_idx, align 4
  %94 = load %struct._BoundSeg*, %struct._BoundSeg** %segs.addr, align 8
  %95 = load i32, i32* %start_idx.addr, align 4
  %96 = load i32, i32* %maxdist_idx, align 4
  %97 = load %struct._GArray**, %struct._GArray*** %ret_points.addr, align 8
  call void @simplify_subdivide(%struct._BoundSeg* %94, i32 %95, i32 %96, %struct._GArray** %97)
  %98 = load %struct._BoundSeg*, %struct._BoundSeg** %segs.addr, align 8
  %99 = load i32, i32* %maxdist_idx, align 4
  %100 = load i32, i32* %end_idx.addr, align 4
  %101 = load %struct._GArray**, %struct._GArray*** %ret_points.addr, align 8
  call void @simplify_subdivide(%struct._BoundSeg* %98, i32 %99, i32 %100, %struct._GArray** %101)
  br label %return

return:                                           ; preds = %if.end.96, %if.then.94, %if.then
  ret void
}

declare %struct._GArray* @g_array_append_vals(%struct._GArray*, i8*, i32) #1

declare i8* @g_array_free(%struct._GArray*, i32) #1

; Function Attrs: nounwind uwtable
define void @boundary_offset(%struct._BoundSeg* %segs, i32 %num_segs, i32 %off_x, i32 %off_y) #0 {
entry:
  %segs.addr = alloca %struct._BoundSeg*, align 8
  %num_segs.addr = alloca i32, align 4
  %off_x.addr = alloca i32, align 4
  %off_y.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct._BoundSeg* %segs, %struct._BoundSeg** %segs.addr, align 8
  store i32 %num_segs, i32* %num_segs.addr, align 4
  store i32 %off_x, i32* %off_x.addr, align 4
  store i32 %off_y, i32* %off_y.addr, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %num_segs.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load %struct._BoundSeg*, %struct._BoundSeg** %segs.addr, align 8
  %arrayidx = getelementptr inbounds %struct._BoundSeg, %struct._BoundSeg* %3, i64 %idxprom
  %x1 = getelementptr inbounds %struct._BoundSeg, %struct._BoundSeg* %arrayidx, i32 0, i32 0
  %4 = load i32, i32* %x1, align 4
  %cmp1 = icmp eq i32 %4, -1
  br i1 %cmp1, label %land.lhs.true, label %if.then

land.lhs.true:                                    ; preds = %for.body
  %5 = load i32, i32* %i, align 4
  %idxprom2 = sext i32 %5 to i64
  %6 = load %struct._BoundSeg*, %struct._BoundSeg** %segs.addr, align 8
  %arrayidx3 = getelementptr inbounds %struct._BoundSeg, %struct._BoundSeg* %6, i64 %idxprom2
  %y1 = getelementptr inbounds %struct._BoundSeg, %struct._BoundSeg* %arrayidx3, i32 0, i32 1
  %7 = load i32, i32* %y1, align 4
  %cmp4 = icmp eq i32 %7, -1
  br i1 %cmp4, label %land.lhs.true.5, label %if.then

land.lhs.true.5:                                  ; preds = %land.lhs.true
  %8 = load i32, i32* %i, align 4
  %idxprom6 = sext i32 %8 to i64
  %9 = load %struct._BoundSeg*, %struct._BoundSeg** %segs.addr, align 8
  %arrayidx7 = getelementptr inbounds %struct._BoundSeg, %struct._BoundSeg* %9, i64 %idxprom6
  %x2 = getelementptr inbounds %struct._BoundSeg, %struct._BoundSeg* %arrayidx7, i32 0, i32 2
  %10 = load i32, i32* %x2, align 4
  %cmp8 = icmp eq i32 %10, -1
  br i1 %cmp8, label %land.lhs.true.9, label %if.then

land.lhs.true.9:                                  ; preds = %land.lhs.true.5
  %11 = load i32, i32* %i, align 4
  %idxprom10 = sext i32 %11 to i64
  %12 = load %struct._BoundSeg*, %struct._BoundSeg** %segs.addr, align 8
  %arrayidx11 = getelementptr inbounds %struct._BoundSeg, %struct._BoundSeg* %12, i64 %idxprom10
  %y2 = getelementptr inbounds %struct._BoundSeg, %struct._BoundSeg* %arrayidx11, i32 0, i32 3
  %13 = load i32, i32* %y2, align 4
  %cmp12 = icmp eq i32 %13, -1
  br i1 %cmp12, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true.9, %land.lhs.true.5, %land.lhs.true, %for.body
  %14 = load i32, i32* %off_x.addr, align 4
  %15 = load i32, i32* %i, align 4
  %idxprom13 = sext i32 %15 to i64
  %16 = load %struct._BoundSeg*, %struct._BoundSeg** %segs.addr, align 8
  %arrayidx14 = getelementptr inbounds %struct._BoundSeg, %struct._BoundSeg* %16, i64 %idxprom13
  %x115 = getelementptr inbounds %struct._BoundSeg, %struct._BoundSeg* %arrayidx14, i32 0, i32 0
  %17 = load i32, i32* %x115, align 4
  %add = add nsw i32 %17, %14
  store i32 %add, i32* %x115, align 4
  %18 = load i32, i32* %off_y.addr, align 4
  %19 = load i32, i32* %i, align 4
  %idxprom16 = sext i32 %19 to i64
  %20 = load %struct._BoundSeg*, %struct._BoundSeg** %segs.addr, align 8
  %arrayidx17 = getelementptr inbounds %struct._BoundSeg, %struct._BoundSeg* %20, i64 %idxprom16
  %y118 = getelementptr inbounds %struct._BoundSeg, %struct._BoundSeg* %arrayidx17, i32 0, i32 1
  %21 = load i32, i32* %y118, align 4
  %add19 = add nsw i32 %21, %18
  store i32 %add19, i32* %y118, align 4
  %22 = load i32, i32* %off_x.addr, align 4
  %23 = load i32, i32* %i, align 4
  %idxprom20 = sext i32 %23 to i64
  %24 = load %struct._BoundSeg*, %struct._BoundSeg** %segs.addr, align 8
  %arrayidx21 = getelementptr inbounds %struct._BoundSeg, %struct._BoundSeg* %24, i64 %idxprom20
  %x222 = getelementptr inbounds %struct._BoundSeg, %struct._BoundSeg* %arrayidx21, i32 0, i32 2
  %25 = load i32, i32* %x222, align 4
  %add23 = add nsw i32 %25, %22
  store i32 %add23, i32* %x222, align 4
  %26 = load i32, i32* %off_y.addr, align 4
  %27 = load i32, i32* %i, align 4
  %idxprom24 = sext i32 %27 to i64
  %28 = load %struct._BoundSeg*, %struct._BoundSeg** %segs.addr, align 8
  %arrayidx25 = getelementptr inbounds %struct._BoundSeg, %struct._BoundSeg* %28, i64 %idxprom24
  %y226 = getelementptr inbounds %struct._BoundSeg, %struct._BoundSeg* %arrayidx25, i32 0, i32 3
  %29 = load i32, i32* %y226, align 4
  %add27 = add nsw i32 %29, %26
  store i32 %add27, i32* %y226, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.9
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %30 = load i32, i32* %i, align 4
  %inc = add nsw i32 %30, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #2

declare void @g_logv(i8*, i32, i8*, %struct.__va_list_tag*) #1

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #2

declare noalias i8* @g_slice_alloc0(i64) #1

declare void @g_slice_free1(i64, i8*) #1

declare i8* @g_realloc_n(i8*, i64, i64) #1

; Function Attrs: nounwind uwtable
define internal void @find_empty_segs(%struct._PixelRegion* %maskPR, i32 %scanline, i32* %empty_segs, i32 %max_empty, i32* %num_empty, i32 %type, i32 %x1, i32 %y1, i32 %x2, i32 %y2, i8 zeroext %threshold) #0 {
entry:
  %maskPR.addr = alloca %struct._PixelRegion*, align 8
  %scanline.addr = alloca i32, align 4
  %empty_segs.addr = alloca i32*, align 8
  %max_empty.addr = alloca i32, align 4
  %num_empty.addr = alloca i32*, align 8
  %type.addr = alloca i32, align 4
  %x1.addr = alloca i32, align 4
  %y1.addr = alloca i32, align 4
  %x2.addr = alloca i32, align 4
  %y2.addr = alloca i32, align 4
  %threshold.addr = alloca i8, align 1
  %data = alloca i8*, align 8
  %tile = alloca %struct._Tile*, align 8
  %start = alloca i32, align 4
  %end = alloca i32, align 4
  %endx = alloca i32, align 4
  %bpp = alloca i32, align 4
  %tilex = alloca i32, align 4
  %last = alloca i32, align 4
  %l_num_empty = alloca i32, align 4
  %x = alloca i32, align 4
  %val = alloca i32, align 4
  %val95 = alloca i32, align 4
  store %struct._PixelRegion* %maskPR, %struct._PixelRegion** %maskPR.addr, align 8
  store i32 %scanline, i32* %scanline.addr, align 4
  store i32* %empty_segs, i32** %empty_segs.addr, align 8
  store i32 %max_empty, i32* %max_empty.addr, align 4
  store i32* %num_empty, i32** %num_empty.addr, align 8
  store i32 %type, i32* %type.addr, align 4
  store i32 %x1, i32* %x1.addr, align 4
  store i32 %y1, i32* %y1.addr, align 4
  store i32 %x2, i32* %x2.addr, align 4
  store i32 %y2, i32* %y2.addr, align 4
  store i8 %threshold, i8* %threshold.addr, align 1
  store i8* null, i8** %data, align 8
  store %struct._Tile* null, %struct._Tile** %tile, align 8
  store i32 0, i32* %start, align 4
  store i32 0, i32* %end, align 4
  store i32 0, i32* %endx, align 4
  store i32 0, i32* %bpp, align 4
  store i32 -1, i32* %tilex, align 4
  store i32 -1, i32* %last, align 4
  %0 = load i32*, i32** %num_empty.addr, align 8
  store i32 0, i32* %0, align 4
  %1 = load i32, i32* %scanline.addr, align 4
  %2 = load %struct._PixelRegion*, %struct._PixelRegion** %maskPR.addr, align 8
  %y = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %2, i32 0, i32 7
  %3 = load i32, i32* %y, align 4
  %cmp = icmp slt i32 %1, %3
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %4 = load i32, i32* %scanline.addr, align 4
  %5 = load %struct._PixelRegion*, %struct._PixelRegion** %maskPR.addr, align 8
  %y3 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %5, i32 0, i32 7
  %6 = load i32, i32* %y3, align 4
  %7 = load %struct._PixelRegion*, %struct._PixelRegion** %maskPR.addr, align 8
  %h = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %7, i32 0, i32 9
  %8 = load i32, i32* %h, align 4
  %add = add nsw i32 %6, %8
  %cmp4 = icmp sge i32 %4, %add
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %9 = load i32*, i32** %num_empty.addr, align 8
  %10 = load i32, i32* %9, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, i32* %9, align 4
  %idxprom = sext i32 %10 to i64
  %11 = load i32*, i32** %empty_segs.addr, align 8
  %arrayidx = getelementptr inbounds i32, i32* %11, i64 %idxprom
  store i32 0, i32* %arrayidx, align 4
  %12 = load i32*, i32** %num_empty.addr, align 8
  %13 = load i32, i32* %12, align 4
  %inc5 = add nsw i32 %13, 1
  store i32 %inc5, i32* %12, align 4
  %idxprom6 = sext i32 %13 to i64
  %14 = load i32*, i32** %empty_segs.addr, align 8
  %arrayidx7 = getelementptr inbounds i32, i32* %14, i64 %idxprom6
  store i32 2147483647, i32* %arrayidx7, align 4
  br label %if.end.129

if.end:                                           ; preds = %lor.lhs.false
  %15 = load i32, i32* %type.addr, align 4
  %cmp8 = icmp eq i32 %15, 0
  br i1 %cmp8, label %if.then.9, label %if.else

if.then.9:                                        ; preds = %if.end
  %16 = load i32, i32* %scanline.addr, align 4
  %17 = load i32, i32* %y1.addr, align 4
  %cmp10 = icmp slt i32 %16, %17
  br i1 %cmp10, label %if.then.13, label %lor.lhs.false.11

lor.lhs.false.11:                                 ; preds = %if.then.9
  %18 = load i32, i32* %scanline.addr, align 4
  %19 = load i32, i32* %y2.addr, align 4
  %cmp12 = icmp sge i32 %18, %19
  br i1 %cmp12, label %if.then.13, label %if.end.20

if.then.13:                                       ; preds = %lor.lhs.false.11, %if.then.9
  %20 = load i32*, i32** %num_empty.addr, align 8
  %21 = load i32, i32* %20, align 4
  %inc14 = add nsw i32 %21, 1
  store i32 %inc14, i32* %20, align 4
  %idxprom15 = sext i32 %21 to i64
  %22 = load i32*, i32** %empty_segs.addr, align 8
  %arrayidx16 = getelementptr inbounds i32, i32* %22, i64 %idxprom15
  store i32 0, i32* %arrayidx16, align 4
  %23 = load i32*, i32** %num_empty.addr, align 8
  %24 = load i32, i32* %23, align 4
  %inc17 = add nsw i32 %24, 1
  store i32 %inc17, i32* %23, align 4
  %idxprom18 = sext i32 %24 to i64
  %25 = load i32*, i32** %empty_segs.addr, align 8
  %arrayidx19 = getelementptr inbounds i32, i32* %25, i64 %idxprom18
  store i32 2147483647, i32* %arrayidx19, align 4
  br label %if.end.129

if.end.20:                                        ; preds = %lor.lhs.false.11
  %26 = load i32, i32* %x1.addr, align 4
  store i32 %26, i32* %start, align 4
  %27 = load i32, i32* %x2.addr, align 4
  store i32 %27, i32* %end, align 4
  br label %if.end.32

if.else:                                          ; preds = %if.end
  %28 = load i32, i32* %type.addr, align 4
  %cmp21 = icmp eq i32 %28, 1
  br i1 %cmp21, label %if.then.22, label %if.end.31

if.then.22:                                       ; preds = %if.else
  %29 = load %struct._PixelRegion*, %struct._PixelRegion** %maskPR.addr, align 8
  %x23 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %29, i32 0, i32 6
  %30 = load i32, i32* %x23, align 4
  store i32 %30, i32* %start, align 4
  %31 = load %struct._PixelRegion*, %struct._PixelRegion** %maskPR.addr, align 8
  %x24 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %31, i32 0, i32 6
  %32 = load i32, i32* %x24, align 4
  %33 = load %struct._PixelRegion*, %struct._PixelRegion** %maskPR.addr, align 8
  %w = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %33, i32 0, i32 8
  %34 = load i32, i32* %w, align 4
  %add25 = add nsw i32 %32, %34
  store i32 %add25, i32* %end, align 4
  %35 = load i32, i32* %scanline.addr, align 4
  %36 = load i32, i32* %y1.addr, align 4
  %cmp26 = icmp slt i32 %35, %36
  br i1 %cmp26, label %if.then.29, label %lor.lhs.false.27

lor.lhs.false.27:                                 ; preds = %if.then.22
  %37 = load i32, i32* %scanline.addr, align 4
  %38 = load i32, i32* %y2.addr, align 4
  %cmp28 = icmp sge i32 %37, %38
  br i1 %cmp28, label %if.then.29, label %if.end.30

if.then.29:                                       ; preds = %lor.lhs.false.27, %if.then.22
  store i32 -1, i32* %x2.addr, align 4
  br label %if.end.30

if.end.30:                                        ; preds = %if.then.29, %lor.lhs.false.27
  br label %if.end.31

if.end.31:                                        ; preds = %if.end.30, %if.else
  br label %if.end.32

if.end.32:                                        ; preds = %if.end.31, %if.end.20
  %39 = load i32*, i32** %num_empty.addr, align 8
  %40 = load i32, i32* %39, align 4
  %inc33 = add nsw i32 %40, 1
  store i32 %inc33, i32* %39, align 4
  %idxprom34 = sext i32 %40 to i64
  %41 = load i32*, i32** %empty_segs.addr, align 8
  %arrayidx35 = getelementptr inbounds i32, i32* %41, i64 %idxprom34
  store i32 0, i32* %arrayidx35, align 4
  %42 = load i32*, i32** %num_empty.addr, align 8
  %43 = load i32, i32* %42, align 4
  store i32 %43, i32* %l_num_empty, align 4
  %44 = load %struct._PixelRegion*, %struct._PixelRegion** %maskPR.addr, align 8
  %bytes = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %44, i32 0, i32 10
  %45 = load i32, i32* %bytes, align 4
  store i32 %45, i32* %bpp, align 4
  %46 = load %struct._PixelRegion*, %struct._PixelRegion** %maskPR.addr, align 8
  %tiles = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %46, i32 0, i32 1
  %47 = load %struct._TileManager*, %struct._TileManager** %tiles, align 8
  %tobool = icmp ne %struct._TileManager* %47, null
  br i1 %tobool, label %if.end.38, label %if.then.36

if.then.36:                                       ; preds = %if.end.32
  %48 = load %struct._PixelRegion*, %struct._PixelRegion** %maskPR.addr, align 8
  %data37 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %48, i32 0, i32 0
  %49 = load i8*, i8** %data37, align 8
  %50 = load i32, i32* %scanline.addr, align 4
  %51 = load %struct._PixelRegion*, %struct._PixelRegion** %maskPR.addr, align 8
  %rowstride = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %51, i32 0, i32 5
  %52 = load i32, i32* %rowstride, align 4
  %mul = mul nsw i32 %50, %52
  %idx.ext = sext i32 %mul to i64
  %add.ptr = getelementptr inbounds i8, i8* %49, i64 %idx.ext
  store i8* %add.ptr, i8** %data, align 8
  %53 = load i32, i32* %end, align 4
  store i32 %53, i32* %endx, align 4
  br label %if.end.38

if.end.38:                                        ; preds = %if.then.36, %if.end.32
  %54 = load i32, i32* %start, align 4
  store i32 %54, i32* %x, align 4
  br label %for.cond

for.cond:                                         ; preds = %if.end.115, %if.end.38
  %55 = load i32, i32* %x, align 4
  %56 = load i32, i32* %end, align 4
  %cmp39 = icmp slt i32 %55, %56
  br i1 %cmp39, label %for.body, label %for.end.116

for.body:                                         ; preds = %for.cond
  %57 = load %struct._PixelRegion*, %struct._PixelRegion** %maskPR.addr, align 8
  %tiles40 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %57, i32 0, i32 1
  %58 = load %struct._TileManager*, %struct._TileManager** %tiles40, align 8
  %tobool41 = icmp ne %struct._TileManager* %58, null
  br i1 %tobool41, label %if.then.42, label %if.end.57

if.then.42:                                       ; preds = %for.body
  %59 = load i32, i32* %x, align 4
  %div = sdiv i32 %59, 64
  %60 = load i32, i32* %tilex, align 4
  %cmp43 = icmp ne i32 %div, %60
  br i1 %cmp43, label %if.then.44, label %if.end.54

if.then.44:                                       ; preds = %if.then.42
  %61 = load %struct._Tile*, %struct._Tile** %tile, align 8
  %tobool45 = icmp ne %struct._Tile* %61, null
  br i1 %tobool45, label %if.then.46, label %if.end.47

if.then.46:                                       ; preds = %if.then.44
  %62 = load %struct._Tile*, %struct._Tile** %tile, align 8
  call void @tile_release(%struct._Tile* %62, i32 0)
  br label %if.end.47

if.end.47:                                        ; preds = %if.then.46, %if.then.44
  %63 = load %struct._PixelRegion*, %struct._PixelRegion** %maskPR.addr, align 8
  %tiles48 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %63, i32 0, i32 1
  %64 = load %struct._TileManager*, %struct._TileManager** %tiles48, align 8
  %65 = load i32, i32* %x, align 4
  %66 = load i32, i32* %scanline.addr, align 4
  %call = call %struct._Tile* @tile_manager_get_tile(%struct._TileManager* %64, i32 %65, i32 %66, i32 1, i32 0)
  store %struct._Tile* %call, %struct._Tile** %tile, align 8
  %67 = load %struct._Tile*, %struct._Tile** %tile, align 8
  %68 = load i32, i32* %x, align 4
  %69 = load i32, i32* %scanline.addr, align 4
  %call49 = call i8* @tile_data_pointer(%struct._Tile* %67, i32 %68, i32 %69)
  %70 = load i32, i32* %bpp, align 4
  %idx.ext50 = sext i32 %70 to i64
  %add.ptr51 = getelementptr inbounds i8, i8* %call49, i64 %idx.ext50
  %add.ptr52 = getelementptr inbounds i8, i8* %add.ptr51, i64 -1
  store i8* %add.ptr52, i8** %data, align 8
  %71 = load i32, i32* %x, align 4
  %div53 = sdiv i32 %71, 64
  store i32 %div53, i32* %tilex, align 4
  br label %if.end.54

if.end.54:                                        ; preds = %if.end.47, %if.then.42
  %72 = load i32, i32* %x, align 4
  %73 = load i32, i32* %x, align 4
  %rem = srem i32 %73, 64
  %sub = sub nsw i32 64, %rem
  %add55 = add nsw i32 %72, %sub
  store i32 %add55, i32* %endx, align 4
  %74 = load i32, i32* %end, align 4
  %75 = load i32, i32* %endx, align 4
  %cmp56 = icmp slt i32 %74, %75
  br i1 %cmp56, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.54
  %76 = load i32, i32* %end, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.end.54
  %77 = load i32, i32* %endx, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %76, %cond.true ], [ %77, %cond.false ]
  store i32 %cond, i32* %endx, align 4
  br label %if.end.57

if.end.57:                                        ; preds = %cond.end, %for.body
  %78 = load i32, i32* %type.addr, align 4
  %cmp58 = icmp eq i32 %78, 1
  br i1 %cmp58, label %land.lhs.true, label %if.else.90

land.lhs.true:                                    ; preds = %if.end.57
  %79 = load i32, i32* %endx, align 4
  %80 = load i32, i32* %x1.addr, align 4
  %cmp59 = icmp sgt i32 %79, %80
  br i1 %cmp59, label %if.then.62, label %lor.lhs.false.60

lor.lhs.false.60:                                 ; preds = %land.lhs.true
  %81 = load i32, i32* %x, align 4
  %82 = load i32, i32* %x2.addr, align 4
  %cmp61 = icmp slt i32 %81, %82
  br i1 %cmp61, label %if.then.62, label %if.else.90

if.then.62:                                       ; preds = %lor.lhs.false.60, %land.lhs.true
  br label %for.cond.63

for.cond.63:                                      ; preds = %for.inc, %if.then.62
  %83 = load i32, i32* %x, align 4
  %84 = load i32, i32* %endx, align 4
  %cmp64 = icmp slt i32 %83, %84
  br i1 %cmp64, label %for.body.65, label %for.end

for.body.65:                                      ; preds = %for.cond.63
  %85 = load i8*, i8** %data, align 8
  %86 = load i8, i8* %85, align 1
  %conv = zext i8 %86 to i32
  %87 = load i8, i8* %threshold.addr, align 1
  %conv66 = zext i8 %87 to i32
  %cmp67 = icmp sgt i32 %conv, %conv66
  br i1 %cmp67, label %if.then.69, label %if.else.78

if.then.69:                                       ; preds = %for.body.65
  %88 = load i32, i32* %x, align 4
  %89 = load i32, i32* %x1.addr, align 4
  %cmp70 = icmp sge i32 %88, %89
  br i1 %cmp70, label %land.lhs.true.72, label %if.else.76

land.lhs.true.72:                                 ; preds = %if.then.69
  %90 = load i32, i32* %x, align 4
  %91 = load i32, i32* %x2.addr, align 4
  %cmp73 = icmp slt i32 %90, %91
  br i1 %cmp73, label %if.then.75, label %if.else.76

if.then.75:                                       ; preds = %land.lhs.true.72
  store i32 -1, i32* %val, align 4
  br label %if.end.77

if.else.76:                                       ; preds = %land.lhs.true.72, %if.then.69
  store i32 1, i32* %val, align 4
  br label %if.end.77

if.end.77:                                        ; preds = %if.else.76, %if.then.75
  br label %if.end.79

if.else.78:                                       ; preds = %for.body.65
  store i32 -1, i32* %val, align 4
  br label %if.end.79

if.end.79:                                        ; preds = %if.else.78, %if.end.77
  %92 = load i32, i32* %bpp, align 4
  %93 = load i8*, i8** %data, align 8
  %idx.ext80 = sext i32 %92 to i64
  %add.ptr81 = getelementptr inbounds i8, i8* %93, i64 %idx.ext80
  store i8* %add.ptr81, i8** %data, align 8
  %94 = load i32, i32* %last, align 4
  %95 = load i32, i32* %val, align 4
  %cmp82 = icmp ne i32 %94, %95
  br i1 %cmp82, label %if.then.84, label %if.end.88

if.then.84:                                       ; preds = %if.end.79
  %96 = load i32, i32* %x, align 4
  %97 = load i32, i32* %l_num_empty, align 4
  %inc85 = add nsw i32 %97, 1
  store i32 %inc85, i32* %l_num_empty, align 4
  %idxprom86 = sext i32 %97 to i64
  %98 = load i32*, i32** %empty_segs.addr, align 8
  %arrayidx87 = getelementptr inbounds i32, i32* %98, i64 %idxprom86
  store i32 %96, i32* %arrayidx87, align 4
  br label %if.end.88

if.end.88:                                        ; preds = %if.then.84, %if.end.79
  %99 = load i32, i32* %val, align 4
  store i32 %99, i32* %last, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end.88
  %100 = load i32, i32* %x, align 4
  %inc89 = add nsw i32 %100, 1
  store i32 %inc89, i32* %x, align 4
  br label %for.cond.63

for.end:                                          ; preds = %for.cond.63
  br label %if.end.115

if.else.90:                                       ; preds = %lor.lhs.false.60, %if.end.57
  br label %for.cond.91

for.cond.91:                                      ; preds = %for.inc.112, %if.else.90
  %101 = load i32, i32* %x, align 4
  %102 = load i32, i32* %endx, align 4
  %cmp92 = icmp slt i32 %101, %102
  br i1 %cmp92, label %for.body.94, label %for.end.114

for.body.94:                                      ; preds = %for.cond.91
  %103 = load i8*, i8** %data, align 8
  %104 = load i8, i8* %103, align 1
  %conv96 = zext i8 %104 to i32
  %105 = load i8, i8* %threshold.addr, align 1
  %conv97 = zext i8 %105 to i32
  %cmp98 = icmp sgt i32 %conv96, %conv97
  br i1 %cmp98, label %if.then.100, label %if.else.101

if.then.100:                                      ; preds = %for.body.94
  store i32 1, i32* %val95, align 4
  br label %if.end.102

if.else.101:                                      ; preds = %for.body.94
  store i32 -1, i32* %val95, align 4
  br label %if.end.102

if.end.102:                                       ; preds = %if.else.101, %if.then.100
  %106 = load i32, i32* %bpp, align 4
  %107 = load i8*, i8** %data, align 8
  %idx.ext103 = sext i32 %106 to i64
  %add.ptr104 = getelementptr inbounds i8, i8* %107, i64 %idx.ext103
  store i8* %add.ptr104, i8** %data, align 8
  %108 = load i32, i32* %last, align 4
  %109 = load i32, i32* %val95, align 4
  %cmp105 = icmp ne i32 %108, %109
  br i1 %cmp105, label %if.then.107, label %if.end.111

if.then.107:                                      ; preds = %if.end.102
  %110 = load i32, i32* %x, align 4
  %111 = load i32, i32* %l_num_empty, align 4
  %inc108 = add nsw i32 %111, 1
  store i32 %inc108, i32* %l_num_empty, align 4
  %idxprom109 = sext i32 %111 to i64
  %112 = load i32*, i32** %empty_segs.addr, align 8
  %arrayidx110 = getelementptr inbounds i32, i32* %112, i64 %idxprom109
  store i32 %110, i32* %arrayidx110, align 4
  br label %if.end.111

if.end.111:                                       ; preds = %if.then.107, %if.end.102
  %113 = load i32, i32* %val95, align 4
  store i32 %113, i32* %last, align 4
  br label %for.inc.112

for.inc.112:                                      ; preds = %if.end.111
  %114 = load i32, i32* %x, align 4
  %inc113 = add nsw i32 %114, 1
  store i32 %inc113, i32* %x, align 4
  br label %for.cond.91

for.end.114:                                      ; preds = %for.cond.91
  br label %if.end.115

if.end.115:                                       ; preds = %for.end.114, %for.end
  br label %for.cond

for.end.116:                                      ; preds = %for.cond
  %115 = load i32, i32* %l_num_empty, align 4
  %116 = load i32*, i32** %num_empty.addr, align 8
  store i32 %115, i32* %116, align 4
  %117 = load i32, i32* %last, align 4
  %cmp117 = icmp sgt i32 %117, 0
  br i1 %cmp117, label %if.then.119, label %if.end.123

if.then.119:                                      ; preds = %for.end.116
  %118 = load i32, i32* %x, align 4
  %119 = load i32*, i32** %num_empty.addr, align 8
  %120 = load i32, i32* %119, align 4
  %inc120 = add nsw i32 %120, 1
  store i32 %inc120, i32* %119, align 4
  %idxprom121 = sext i32 %120 to i64
  %121 = load i32*, i32** %empty_segs.addr, align 8
  %arrayidx122 = getelementptr inbounds i32, i32* %121, i64 %idxprom121
  store i32 %118, i32* %arrayidx122, align 4
  br label %if.end.123

if.end.123:                                       ; preds = %if.then.119, %for.end.116
  %122 = load i32*, i32** %num_empty.addr, align 8
  %123 = load i32, i32* %122, align 4
  %inc124 = add nsw i32 %123, 1
  store i32 %inc124, i32* %122, align 4
  %idxprom125 = sext i32 %123 to i64
  %124 = load i32*, i32** %empty_segs.addr, align 8
  %arrayidx126 = getelementptr inbounds i32, i32* %124, i64 %idxprom125
  store i32 2147483647, i32* %arrayidx126, align 4
  %125 = load %struct._Tile*, %struct._Tile** %tile, align 8
  %tobool127 = icmp ne %struct._Tile* %125, null
  br i1 %tobool127, label %if.then.128, label %if.end.129

if.then.128:                                      ; preds = %if.end.123
  %126 = load %struct._Tile*, %struct._Tile** %tile, align 8
  call void @tile_release(%struct._Tile* %126, i32 0)
  br label %if.end.129

if.end.129:                                       ; preds = %if.then, %if.then.13, %if.then.128, %if.end.123
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @make_horiz_segs(%struct._Boundary* %boundary, i32 %start, i32 %end, i32 %scanline, i32* %empty, i32 %num_empty, i32 %top) #0 {
entry:
  %boundary.addr = alloca %struct._Boundary*, align 8
  %start.addr = alloca i32, align 4
  %end.addr = alloca i32, align 4
  %scanline.addr = alloca i32, align 4
  %empty.addr = alloca i32*, align 8
  %num_empty.addr = alloca i32, align 4
  %top.addr = alloca i32, align 4
  %empty_index = alloca i32, align 4
  %e_s = alloca i32, align 4
  %e_e = alloca i32, align 4
  store %struct._Boundary* %boundary, %struct._Boundary** %boundary.addr, align 8
  store i32 %start, i32* %start.addr, align 4
  store i32 %end, i32* %end.addr, align 4
  store i32 %scanline, i32* %scanline.addr, align 4
  store i32* %empty, i32** %empty.addr, align 8
  store i32 %num_empty, i32* %num_empty.addr, align 4
  store i32 %top, i32* %top.addr, align 4
  store i32 0, i32* %empty_index, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %empty_index, align 4
  %1 = load i32, i32* %num_empty.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32*, i32** %empty.addr, align 8
  %incdec.ptr = getelementptr inbounds i32, i32* %2, i32 1
  store i32* %incdec.ptr, i32** %empty.addr, align 8
  %3 = load i32, i32* %2, align 4
  store i32 %3, i32* %e_s, align 4
  %4 = load i32*, i32** %empty.addr, align 8
  %incdec.ptr1 = getelementptr inbounds i32, i32* %4, i32 1
  store i32* %incdec.ptr1, i32** %empty.addr, align 8
  %5 = load i32, i32* %4, align 4
  store i32 %5, i32* %e_e, align 4
  %6 = load i32, i32* %e_s, align 4
  %7 = load i32, i32* %start.addr, align 4
  %cmp2 = icmp sle i32 %6, %7
  br i1 %cmp2, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %for.body
  %8 = load i32, i32* %e_e, align 4
  %9 = load i32, i32* %end.addr, align 4
  %cmp3 = icmp sge i32 %8, %9
  br i1 %cmp3, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %10 = load %struct._Boundary*, %struct._Boundary** %boundary.addr, align 8
  %11 = load i32, i32* %start.addr, align 4
  %12 = load i32, i32* %scanline.addr, align 4
  %13 = load i32, i32* %end.addr, align 4
  %14 = load i32, i32* %scanline.addr, align 4
  %15 = load i32, i32* %top.addr, align 4
  call void @process_horiz_seg(%struct._Boundary* %10, i32 %11, i32 %12, i32 %13, i32 %14, i32 %15)
  br label %if.end.17

if.else:                                          ; preds = %land.lhs.true, %for.body
  %16 = load i32, i32* %e_s, align 4
  %17 = load i32, i32* %start.addr, align 4
  %cmp4 = icmp sgt i32 %16, %17
  br i1 %cmp4, label %land.lhs.true.5, label %lor.lhs.false

land.lhs.true.5:                                  ; preds = %if.else
  %18 = load i32, i32* %e_s, align 4
  %19 = load i32, i32* %end.addr, align 4
  %cmp6 = icmp slt i32 %18, %19
  br i1 %cmp6, label %if.then.10, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.5, %if.else
  %20 = load i32, i32* %e_e, align 4
  %21 = load i32, i32* %end.addr, align 4
  %cmp7 = icmp slt i32 %20, %21
  br i1 %cmp7, label %land.lhs.true.8, label %if.end

land.lhs.true.8:                                  ; preds = %lor.lhs.false
  %22 = load i32, i32* %e_e, align 4
  %23 = load i32, i32* %start.addr, align 4
  %cmp9 = icmp sgt i32 %22, %23
  br i1 %cmp9, label %if.then.10, label %if.end

if.then.10:                                       ; preds = %land.lhs.true.8, %land.lhs.true.5
  %24 = load %struct._Boundary*, %struct._Boundary** %boundary.addr, align 8
  %25 = load i32, i32* %e_s, align 4
  %26 = load i32, i32* %start.addr, align 4
  %cmp11 = icmp sgt i32 %25, %26
  br i1 %cmp11, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.10
  %27 = load i32, i32* %e_s, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.then.10
  %28 = load i32, i32* %start.addr, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %27, %cond.true ], [ %28, %cond.false ]
  %29 = load i32, i32* %scanline.addr, align 4
  %30 = load i32, i32* %e_e, align 4
  %31 = load i32, i32* %end.addr, align 4
  %cmp12 = icmp slt i32 %30, %31
  br i1 %cmp12, label %cond.true.13, label %cond.false.14

cond.true.13:                                     ; preds = %cond.end
  %32 = load i32, i32* %e_e, align 4
  br label %cond.end.15

cond.false.14:                                    ; preds = %cond.end
  %33 = load i32, i32* %end.addr, align 4
  br label %cond.end.15

cond.end.15:                                      ; preds = %cond.false.14, %cond.true.13
  %cond16 = phi i32 [ %32, %cond.true.13 ], [ %33, %cond.false.14 ]
  %34 = load i32, i32* %scanline.addr, align 4
  %35 = load i32, i32* %top.addr, align 4
  call void @process_horiz_seg(%struct._Boundary* %24, i32 %cond, i32 %29, i32 %cond16, i32 %34, i32 %35)
  br label %if.end

if.end:                                           ; preds = %cond.end.15, %land.lhs.true.8, %lor.lhs.false
  br label %if.end.17

if.end.17:                                        ; preds = %if.end, %if.then
  br label %for.inc

for.inc:                                          ; preds = %if.end.17
  %36 = load i32, i32* %empty_index, align 4
  %add = add nsw i32 %36, 2
  store i32 %add, i32* %empty_index, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

declare void @tile_release(%struct._Tile*, i32) #1

declare %struct._Tile* @tile_manager_get_tile(%struct._TileManager*, i32, i32, i32, i32) #1

declare i8* @tile_data_pointer(%struct._Tile*, i32, i32) #1

; Function Attrs: nounwind uwtable
define internal void @process_horiz_seg(%struct._Boundary* %boundary, i32 %x1, i32 %y1, i32 %x2, i32 %y2, i32 %open) #0 {
entry:
  %boundary.addr = alloca %struct._Boundary*, align 8
  %x1.addr = alloca i32, align 4
  %y1.addr = alloca i32, align 4
  %x2.addr = alloca i32, align 4
  %y2.addr = alloca i32, align 4
  %open.addr = alloca i32, align 4
  store %struct._Boundary* %boundary, %struct._Boundary** %boundary.addr, align 8
  store i32 %x1, i32* %x1.addr, align 4
  store i32 %y1, i32* %y1.addr, align 4
  store i32 %x2, i32* %x2.addr, align 4
  store i32 %y2, i32* %y2.addr, align 4
  store i32 %open, i32* %open.addr, align 4
  %0 = load i32, i32* %x1.addr, align 4
  %idxprom = sext i32 %0 to i64
  %1 = load %struct._Boundary*, %struct._Boundary** %boundary.addr, align 8
  %vert_segs = getelementptr inbounds %struct._Boundary, %struct._Boundary* %1, i32 0, i32 3
  %2 = load i32*, i32** %vert_segs, align 8
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 %idxprom
  %3 = load i32, i32* %arrayidx, align 4
  %cmp = icmp sge i32 %3, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %4 = load %struct._Boundary*, %struct._Boundary** %boundary.addr, align 8
  %5 = load i32, i32* %x1.addr, align 4
  %6 = load i32, i32* %x1.addr, align 4
  %idxprom1 = sext i32 %6 to i64
  %7 = load %struct._Boundary*, %struct._Boundary** %boundary.addr, align 8
  %vert_segs2 = getelementptr inbounds %struct._Boundary, %struct._Boundary* %7, i32 0, i32 3
  %8 = load i32*, i32** %vert_segs2, align 8
  %arrayidx3 = getelementptr inbounds i32, i32* %8, i64 %idxprom1
  %9 = load i32, i32* %arrayidx3, align 4
  %10 = load i32, i32* %x1.addr, align 4
  %11 = load i32, i32* %y1.addr, align 4
  %12 = load i32, i32* %open.addr, align 4
  %tobool = icmp ne i32 %12, 0
  %lnot = xor i1 %tobool, true
  %lnot.ext = zext i1 %lnot to i32
  call void @boundary_add_seg(%struct._Boundary* %4, i32 %5, i32 %9, i32 %10, i32 %11, i32 %lnot.ext)
  %13 = load i32, i32* %x1.addr, align 4
  %idxprom4 = sext i32 %13 to i64
  %14 = load %struct._Boundary*, %struct._Boundary** %boundary.addr, align 8
  %vert_segs5 = getelementptr inbounds %struct._Boundary, %struct._Boundary* %14, i32 0, i32 3
  %15 = load i32*, i32** %vert_segs5, align 8
  %arrayidx6 = getelementptr inbounds i32, i32* %15, i64 %idxprom4
  store i32 -1, i32* %arrayidx6, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  %16 = load i32, i32* %y1.addr, align 4
  %17 = load i32, i32* %x1.addr, align 4
  %idxprom7 = sext i32 %17 to i64
  %18 = load %struct._Boundary*, %struct._Boundary** %boundary.addr, align 8
  %vert_segs8 = getelementptr inbounds %struct._Boundary, %struct._Boundary* %18, i32 0, i32 3
  %19 = load i32*, i32** %vert_segs8, align 8
  %arrayidx9 = getelementptr inbounds i32, i32* %19, i64 %idxprom7
  store i32 %16, i32* %arrayidx9, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %20 = load i32, i32* %x2.addr, align 4
  %idxprom10 = sext i32 %20 to i64
  %21 = load %struct._Boundary*, %struct._Boundary** %boundary.addr, align 8
  %vert_segs11 = getelementptr inbounds %struct._Boundary, %struct._Boundary* %21, i32 0, i32 3
  %22 = load i32*, i32** %vert_segs11, align 8
  %arrayidx12 = getelementptr inbounds i32, i32* %22, i64 %idxprom10
  %23 = load i32, i32* %arrayidx12, align 4
  %cmp13 = icmp sge i32 %23, 0
  br i1 %cmp13, label %if.then.14, label %if.else.21

if.then.14:                                       ; preds = %if.end
  %24 = load %struct._Boundary*, %struct._Boundary** %boundary.addr, align 8
  %25 = load i32, i32* %x2.addr, align 4
  %26 = load i32, i32* %x2.addr, align 4
  %idxprom15 = sext i32 %26 to i64
  %27 = load %struct._Boundary*, %struct._Boundary** %boundary.addr, align 8
  %vert_segs16 = getelementptr inbounds %struct._Boundary, %struct._Boundary* %27, i32 0, i32 3
  %28 = load i32*, i32** %vert_segs16, align 8
  %arrayidx17 = getelementptr inbounds i32, i32* %28, i64 %idxprom15
  %29 = load i32, i32* %arrayidx17, align 4
  %30 = load i32, i32* %x2.addr, align 4
  %31 = load i32, i32* %y2.addr, align 4
  %32 = load i32, i32* %open.addr, align 4
  call void @boundary_add_seg(%struct._Boundary* %24, i32 %25, i32 %29, i32 %30, i32 %31, i32 %32)
  %33 = load i32, i32* %x2.addr, align 4
  %idxprom18 = sext i32 %33 to i64
  %34 = load %struct._Boundary*, %struct._Boundary** %boundary.addr, align 8
  %vert_segs19 = getelementptr inbounds %struct._Boundary, %struct._Boundary* %34, i32 0, i32 3
  %35 = load i32*, i32** %vert_segs19, align 8
  %arrayidx20 = getelementptr inbounds i32, i32* %35, i64 %idxprom18
  store i32 -1, i32* %arrayidx20, align 4
  br label %if.end.25

if.else.21:                                       ; preds = %if.end
  %36 = load i32, i32* %y2.addr, align 4
  %37 = load i32, i32* %x2.addr, align 4
  %idxprom22 = sext i32 %37 to i64
  %38 = load %struct._Boundary*, %struct._Boundary** %boundary.addr, align 8
  %vert_segs23 = getelementptr inbounds %struct._Boundary, %struct._Boundary* %38, i32 0, i32 3
  %39 = load i32*, i32** %vert_segs23, align 8
  %arrayidx24 = getelementptr inbounds i32, i32* %39, i64 %idxprom22
  store i32 %36, i32* %arrayidx24, align 4
  br label %if.end.25

if.end.25:                                        ; preds = %if.else.21, %if.then.14
  %40 = load %struct._Boundary*, %struct._Boundary** %boundary.addr, align 8
  %41 = load i32, i32* %x1.addr, align 4
  %42 = load i32, i32* %y1.addr, align 4
  %43 = load i32, i32* %x2.addr, align 4
  %44 = load i32, i32* %y2.addr, align 4
  %45 = load i32, i32* %open.addr, align 4
  call void @boundary_add_seg(%struct._Boundary* %40, i32 %41, i32 %42, i32 %43, i32 %44, i32 %45)
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @cmp_xy(i32 %ax, i32 %ay, i32 %bx, i32 %by) #3 {
entry:
  %retval = alloca i32, align 4
  %ax.addr = alloca i32, align 4
  %ay.addr = alloca i32, align 4
  %bx.addr = alloca i32, align 4
  %by.addr = alloca i32, align 4
  store i32 %ax, i32* %ax.addr, align 4
  store i32 %ay, i32* %ay.addr, align 4
  store i32 %bx, i32* %bx.addr, align 4
  store i32 %by, i32* %by.addr, align 4
  %0 = load i32, i32* %ay.addr, align 4
  %1 = load i32, i32* %by.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval
  br label %return

if.else:                                          ; preds = %entry
  %2 = load i32, i32* %ay.addr, align 4
  %3 = load i32, i32* %by.addr, align 4
  %cmp1 = icmp sgt i32 %2, %3
  br i1 %cmp1, label %if.then.2, label %if.else.3

if.then.2:                                        ; preds = %if.else
  store i32 1, i32* %retval
  br label %return

if.else.3:                                        ; preds = %if.else
  %4 = load i32, i32* %ax.addr, align 4
  %5 = load i32, i32* %bx.addr, align 4
  %cmp4 = icmp slt i32 %4, %5
  br i1 %cmp4, label %if.then.5, label %if.else.6

if.then.5:                                        ; preds = %if.else.3
  store i32 -1, i32* %retval
  br label %return

if.else.6:                                        ; preds = %if.else.3
  %6 = load i32, i32* %ax.addr, align 4
  %7 = load i32, i32* %bx.addr, align 4
  %cmp7 = icmp sgt i32 %6, %7
  br i1 %cmp7, label %if.then.8, label %if.else.9

if.then.8:                                        ; preds = %if.else.6
  store i32 1, i32* %retval
  br label %return

if.else.9:                                        ; preds = %if.else.6
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.else.9, %if.then.8, %if.then.5, %if.then.2, %if.then
  %8 = load i32, i32* %retval
  ret i32 %8
}

; Function Attrs: nounwind uwtable
define internal %struct._BoundSeg* @find_segment_with_func(%struct._BoundSeg** %segs, i32 %num_segs, %struct._BoundSeg* %search_seg, i32 (i8*, i8*)* %cmp_func) #0 {
entry:
  %segs.addr = alloca %struct._BoundSeg**, align 8
  %num_segs.addr = alloca i32, align 4
  %search_seg.addr = alloca %struct._BoundSeg*, align 8
  %cmp_func.addr = alloca i32 (i8*, i8*)*, align 8
  %seg = alloca %struct._BoundSeg**, align 8
  %found_seg = alloca %struct._BoundSeg*, align 8
  store %struct._BoundSeg** %segs, %struct._BoundSeg*** %segs.addr, align 8
  store i32 %num_segs, i32* %num_segs.addr, align 4
  store %struct._BoundSeg* %search_seg, %struct._BoundSeg** %search_seg.addr, align 8
  store i32 (i8*, i8*)* %cmp_func, i32 (i8*, i8*)** %cmp_func.addr, align 8
  store %struct._BoundSeg* null, %struct._BoundSeg** %found_seg, align 8
  %0 = bitcast %struct._BoundSeg** %search_seg.addr to i8*
  %1 = load %struct._BoundSeg**, %struct._BoundSeg*** %segs.addr, align 8
  %2 = bitcast %struct._BoundSeg** %1 to i8*
  %3 = load i32, i32* %num_segs.addr, align 4
  %conv = sext i32 %3 to i64
  %4 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %cmp_func.addr, align 8
  %call = call i8* @bsearch(i8* %0, i8* %2, i64 %conv, i64 8, i32 (i8*, i8*)* %4)
  %5 = bitcast i8* %call to %struct._BoundSeg**
  store %struct._BoundSeg** %5, %struct._BoundSeg*** %seg, align 8
  %6 = load %struct._BoundSeg**, %struct._BoundSeg*** %seg, align 8
  %cmp = icmp ne %struct._BoundSeg** %6, null
  br i1 %cmp, label %if.then, label %if.end.20

if.then:                                          ; preds = %entry
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then
  %7 = load %struct._BoundSeg**, %struct._BoundSeg*** %seg, align 8
  %8 = load %struct._BoundSeg**, %struct._BoundSeg*** %segs.addr, align 8
  %cmp2 = icmp ugt %struct._BoundSeg** %7, %8
  br i1 %cmp2, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %9 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %cmp_func.addr, align 8
  %10 = load %struct._BoundSeg**, %struct._BoundSeg*** %seg, align 8
  %add.ptr = getelementptr inbounds %struct._BoundSeg*, %struct._BoundSeg** %10, i64 -1
  %11 = bitcast %struct._BoundSeg** %add.ptr to i8*
  %12 = bitcast %struct._BoundSeg** %search_seg.addr to i8*
  %call4 = call i32 %9(i8* %11, i8* %12)
  %cmp5 = icmp eq i32 %call4, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %13 = phi i1 [ false, %while.cond ], [ %cmp5, %land.rhs ]
  br i1 %13, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %14 = load %struct._BoundSeg**, %struct._BoundSeg*** %seg, align 8
  %incdec.ptr = getelementptr inbounds %struct._BoundSeg*, %struct._BoundSeg** %14, i32 -1
  store %struct._BoundSeg** %incdec.ptr, %struct._BoundSeg*** %seg, align 8
  br label %while.cond

while.end:                                        ; preds = %land.end
  br label %while.cond.7

while.cond.7:                                     ; preds = %if.end, %while.end
  %15 = load %struct._BoundSeg**, %struct._BoundSeg*** %seg, align 8
  %16 = load %struct._BoundSeg**, %struct._BoundSeg*** %segs.addr, align 8
  %17 = load i32, i32* %num_segs.addr, align 4
  %idx.ext = sext i32 %17 to i64
  %add.ptr8 = getelementptr inbounds %struct._BoundSeg*, %struct._BoundSeg** %16, i64 %idx.ext
  %cmp9 = icmp ne %struct._BoundSeg** %15, %add.ptr8
  br i1 %cmp9, label %land.rhs.11, label %land.end.15

land.rhs.11:                                      ; preds = %while.cond.7
  %18 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %cmp_func.addr, align 8
  %19 = load %struct._BoundSeg**, %struct._BoundSeg*** %seg, align 8
  %20 = bitcast %struct._BoundSeg** %19 to i8*
  %21 = bitcast %struct._BoundSeg** %search_seg.addr to i8*
  %call12 = call i32 %18(i8* %20, i8* %21)
  %cmp13 = icmp eq i32 %call12, 0
  br label %land.end.15

land.end.15:                                      ; preds = %land.rhs.11, %while.cond.7
  %22 = phi i1 [ false, %while.cond.7 ], [ %cmp13, %land.rhs.11 ]
  br i1 %22, label %while.body.16, label %while.end.19

while.body.16:                                    ; preds = %land.end.15
  %23 = load %struct._BoundSeg**, %struct._BoundSeg*** %seg, align 8
  %24 = load %struct._BoundSeg*, %struct._BoundSeg** %23, align 8
  %visited = getelementptr inbounds %struct._BoundSeg, %struct._BoundSeg* %24, i32 0, i32 4
  %bf.load = load i8, i8* %visited, align 4
  %bf.lshr = lshr i8 %bf.load, 1
  %bf.clear = and i8 %bf.lshr, 1
  %bf.cast = zext i8 %bf.clear to i32
  %tobool = icmp ne i32 %bf.cast, 0
  br i1 %tobool, label %if.else, label %if.then.17

if.then.17:                                       ; preds = %while.body.16
  %25 = load %struct._BoundSeg**, %struct._BoundSeg*** %seg, align 8
  %26 = load %struct._BoundSeg*, %struct._BoundSeg** %25, align 8
  store %struct._BoundSeg* %26, %struct._BoundSeg** %found_seg, align 8
  br label %while.end.19

if.else:                                          ; preds = %while.body.16
  %27 = load %struct._BoundSeg**, %struct._BoundSeg*** %seg, align 8
  %incdec.ptr18 = getelementptr inbounds %struct._BoundSeg*, %struct._BoundSeg** %27, i32 1
  store %struct._BoundSeg** %incdec.ptr18, %struct._BoundSeg*** %seg, align 8
  br label %if.end

if.end:                                           ; preds = %if.else
  br label %while.cond.7

while.end.19:                                     ; preds = %if.then.17, %land.end.15
  br label %if.end.20

if.end.20:                                        ; preds = %while.end.19, %entry
  %28 = load %struct._BoundSeg*, %struct._BoundSeg** %found_seg, align 8
  ret %struct._BoundSeg* %28
}

; Function Attrs: nounwind uwtable
define internal i32 @cmp_segptr_xy1(%struct._BoundSeg** %seg_ptr_a, %struct._BoundSeg** %seg_ptr_b) #0 {
entry:
  %seg_ptr_a.addr = alloca %struct._BoundSeg**, align 8
  %seg_ptr_b.addr = alloca %struct._BoundSeg**, align 8
  %seg_a = alloca %struct._BoundSeg*, align 8
  %seg_b = alloca %struct._BoundSeg*, align 8
  store %struct._BoundSeg** %seg_ptr_a, %struct._BoundSeg*** %seg_ptr_a.addr, align 8
  store %struct._BoundSeg** %seg_ptr_b, %struct._BoundSeg*** %seg_ptr_b.addr, align 8
  %0 = load %struct._BoundSeg**, %struct._BoundSeg*** %seg_ptr_a.addr, align 8
  %1 = load %struct._BoundSeg*, %struct._BoundSeg** %0, align 8
  store %struct._BoundSeg* %1, %struct._BoundSeg** %seg_a, align 8
  %2 = load %struct._BoundSeg**, %struct._BoundSeg*** %seg_ptr_b.addr, align 8
  %3 = load %struct._BoundSeg*, %struct._BoundSeg** %2, align 8
  store %struct._BoundSeg* %3, %struct._BoundSeg** %seg_b, align 8
  %4 = load %struct._BoundSeg*, %struct._BoundSeg** %seg_a, align 8
  %x1 = getelementptr inbounds %struct._BoundSeg, %struct._BoundSeg* %4, i32 0, i32 0
  %5 = load i32, i32* %x1, align 4
  %6 = load %struct._BoundSeg*, %struct._BoundSeg** %seg_a, align 8
  %y1 = getelementptr inbounds %struct._BoundSeg, %struct._BoundSeg* %6, i32 0, i32 1
  %7 = load i32, i32* %y1, align 4
  %8 = load %struct._BoundSeg*, %struct._BoundSeg** %seg_b, align 8
  %x11 = getelementptr inbounds %struct._BoundSeg, %struct._BoundSeg* %8, i32 0, i32 0
  %9 = load i32, i32* %x11, align 4
  %10 = load %struct._BoundSeg*, %struct._BoundSeg** %seg_b, align 8
  %y12 = getelementptr inbounds %struct._BoundSeg, %struct._BoundSeg* %10, i32 0, i32 1
  %11 = load i32, i32* %y12, align 4
  %call = call i32 @cmp_xy(i32 %5, i32 %7, i32 %9, i32 %11)
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @cmp_segptr_xy2(%struct._BoundSeg** %seg_ptr_a, %struct._BoundSeg** %seg_ptr_b) #0 {
entry:
  %seg_ptr_a.addr = alloca %struct._BoundSeg**, align 8
  %seg_ptr_b.addr = alloca %struct._BoundSeg**, align 8
  %seg_a = alloca %struct._BoundSeg*, align 8
  %seg_b = alloca %struct._BoundSeg*, align 8
  store %struct._BoundSeg** %seg_ptr_a, %struct._BoundSeg*** %seg_ptr_a.addr, align 8
  store %struct._BoundSeg** %seg_ptr_b, %struct._BoundSeg*** %seg_ptr_b.addr, align 8
  %0 = load %struct._BoundSeg**, %struct._BoundSeg*** %seg_ptr_a.addr, align 8
  %1 = load %struct._BoundSeg*, %struct._BoundSeg** %0, align 8
  store %struct._BoundSeg* %1, %struct._BoundSeg** %seg_a, align 8
  %2 = load %struct._BoundSeg**, %struct._BoundSeg*** %seg_ptr_b.addr, align 8
  %3 = load %struct._BoundSeg*, %struct._BoundSeg** %2, align 8
  store %struct._BoundSeg* %3, %struct._BoundSeg** %seg_b, align 8
  %4 = load %struct._BoundSeg*, %struct._BoundSeg** %seg_a, align 8
  %x2 = getelementptr inbounds %struct._BoundSeg, %struct._BoundSeg* %4, i32 0, i32 2
  %5 = load i32, i32* %x2, align 4
  %6 = load %struct._BoundSeg*, %struct._BoundSeg** %seg_a, align 8
  %y2 = getelementptr inbounds %struct._BoundSeg, %struct._BoundSeg* %6, i32 0, i32 3
  %7 = load i32, i32* %y2, align 4
  %8 = load %struct._BoundSeg*, %struct._BoundSeg** %seg_b, align 8
  %x21 = getelementptr inbounds %struct._BoundSeg, %struct._BoundSeg* %8, i32 0, i32 2
  %9 = load i32, i32* %x21, align 4
  %10 = load %struct._BoundSeg*, %struct._BoundSeg** %seg_b, align 8
  %y22 = getelementptr inbounds %struct._BoundSeg, %struct._BoundSeg* %10, i32 0, i32 3
  %11 = load i32, i32* %y22, align 4
  %call = call i32 @cmp_xy(i32 %5, i32 %7, i32 %9, i32 %11)
  ret i32 %call
}

declare i8* @bsearch(i8*, i8*, i64, i64, i32 (i8*, i8*)*) #1

; Function Attrs: nounwind readnone
declare i32 @abs(i32) #4

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
