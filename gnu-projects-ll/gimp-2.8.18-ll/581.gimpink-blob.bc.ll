; ModuleID = './app/paint/gimpink-blob.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GimpBlob = type { i32, i32, [1 x %struct._GimpBlobSpan] }
%struct._GimpBlobSpan = type { i32, i32 }
%struct._GimpBlobPoint = type { i32, i32 }

@trig_initialized = internal global i32 0, align 4
@trig_table = internal global [256 x i32] zeroinitializer, align 16
@.str = private unnamed_addr constant [11 x i8] c"Gimp-Paint\00", align 1
@__func__.gimp_blob_duplicate = private unnamed_addr constant [20 x i8] c"gimp_blob_duplicate\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"b != NULL\00", align 1

; Function Attrs: nounwind uwtable
define %struct._GimpBlob* @gimp_blob_polygon(%struct._GimpBlobPoint* %points, i32 %n_points) #0 {
entry:
  %points.addr = alloca %struct._GimpBlobPoint*, align 8
  %n_points.addr = alloca i32, align 4
  %result = alloca %struct._GimpBlob*, align 8
  %present = alloca i32*, align 8
  %i = alloca i32, align 4
  %im1 = alloca i32, align 4
  %ip1 = alloca i32, align 4
  %ymin = alloca i32, align 4
  %ymax = alloca i32, align 4
  %sides = alloca i32, align 4
  %j = alloca i32, align 4
  store %struct._GimpBlobPoint* %points, %struct._GimpBlobPoint** %points.addr, align 8
  store i32 %n_points, i32* %n_points.addr, align 4
  %0 = load %struct._GimpBlobPoint*, %struct._GimpBlobPoint** %points.addr, align 8
  %arrayidx = getelementptr inbounds %struct._GimpBlobPoint, %struct._GimpBlobPoint* %0, i64 0
  %y = getelementptr inbounds %struct._GimpBlobPoint, %struct._GimpBlobPoint* %arrayidx, i32 0, i32 1
  %1 = load i32, i32* %y, align 4
  store i32 %1, i32* %ymax, align 4
  %2 = load %struct._GimpBlobPoint*, %struct._GimpBlobPoint** %points.addr, align 8
  %arrayidx1 = getelementptr inbounds %struct._GimpBlobPoint, %struct._GimpBlobPoint* %2, i64 0
  %y2 = getelementptr inbounds %struct._GimpBlobPoint, %struct._GimpBlobPoint* %arrayidx1, i32 0, i32 1
  %3 = load i32, i32* %y2, align 4
  store i32 %3, i32* %ymin, align 4
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i32, i32* %i, align 4
  %5 = load i32, i32* %n_points.addr, align 4
  %cmp = icmp slt i32 %4, %5
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load i32, i32* %i, align 4
  %idxprom = sext i32 %6 to i64
  %7 = load %struct._GimpBlobPoint*, %struct._GimpBlobPoint** %points.addr, align 8
  %arrayidx3 = getelementptr inbounds %struct._GimpBlobPoint, %struct._GimpBlobPoint* %7, i64 %idxprom
  %y4 = getelementptr inbounds %struct._GimpBlobPoint, %struct._GimpBlobPoint* %arrayidx3, i32 0, i32 1
  %8 = load i32, i32* %y4, align 4
  %9 = load i32, i32* %ymax, align 4
  %cmp5 = icmp sgt i32 %8, %9
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %10 = load i32, i32* %i, align 4
  %idxprom6 = sext i32 %10 to i64
  %11 = load %struct._GimpBlobPoint*, %struct._GimpBlobPoint** %points.addr, align 8
  %arrayidx7 = getelementptr inbounds %struct._GimpBlobPoint, %struct._GimpBlobPoint* %11, i64 %idxprom6
  %y8 = getelementptr inbounds %struct._GimpBlobPoint, %struct._GimpBlobPoint* %arrayidx7, i32 0, i32 1
  %12 = load i32, i32* %y8, align 4
  store i32 %12, i32* %ymax, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %13 = load i32, i32* %i, align 4
  %idxprom9 = sext i32 %13 to i64
  %14 = load %struct._GimpBlobPoint*, %struct._GimpBlobPoint** %points.addr, align 8
  %arrayidx10 = getelementptr inbounds %struct._GimpBlobPoint, %struct._GimpBlobPoint* %14, i64 %idxprom9
  %y11 = getelementptr inbounds %struct._GimpBlobPoint, %struct._GimpBlobPoint* %arrayidx10, i32 0, i32 1
  %15 = load i32, i32* %y11, align 4
  %16 = load i32, i32* %ymin, align 4
  %cmp12 = icmp slt i32 %15, %16
  br i1 %cmp12, label %if.then.13, label %if.end.17

if.then.13:                                       ; preds = %if.end
  %17 = load i32, i32* %i, align 4
  %idxprom14 = sext i32 %17 to i64
  %18 = load %struct._GimpBlobPoint*, %struct._GimpBlobPoint** %points.addr, align 8
  %arrayidx15 = getelementptr inbounds %struct._GimpBlobPoint, %struct._GimpBlobPoint* %18, i64 %idxprom14
  %y16 = getelementptr inbounds %struct._GimpBlobPoint, %struct._GimpBlobPoint* %arrayidx15, i32 0, i32 1
  %19 = load i32, i32* %y16, align 4
  store i32 %19, i32* %ymin, align 4
  br label %if.end.17

if.end.17:                                        ; preds = %if.then.13, %if.end
  br label %for.inc

for.inc:                                          ; preds = %if.end.17
  %20 = load i32, i32* %i, align 4
  %inc = add nsw i32 %20, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %21 = load i32, i32* %ymin, align 4
  %22 = load i32, i32* %ymax, align 4
  %23 = load i32, i32* %ymin, align 4
  %sub = sub nsw i32 %22, %23
  %add = add nsw i32 %sub, 1
  %call = call %struct._GimpBlob* @gimp_blob_new(i32 %21, i32 %add)
  store %struct._GimpBlob* %call, %struct._GimpBlob** %result, align 8
  %24 = load %struct._GimpBlob*, %struct._GimpBlob** %result, align 8
  %height = getelementptr inbounds %struct._GimpBlob, %struct._GimpBlob* %24, i32 0, i32 1
  %25 = load i32, i32* %height, align 4
  %conv = sext i32 %25 to i64
  %call18 = call noalias i8* @g_malloc0_n(i64 %conv, i64 4)
  %26 = bitcast i8* %call18 to i32*
  store i32* %26, i32** %present, align 8
  %27 = load i32, i32* %n_points.addr, align 4
  %sub19 = sub nsw i32 %27, 1
  store i32 %sub19, i32* %im1, align 4
  store i32 0, i32* %i, align 4
  store i32 1, i32* %ip1, align 4
  br label %for.cond.20

for.cond.20:                                      ; preds = %for.inc.157, %for.end
  %28 = load i32, i32* %i, align 4
  %29 = load i32, i32* %n_points.addr, align 4
  %cmp21 = icmp slt i32 %28, %29
  br i1 %cmp21, label %for.body.23, label %for.end.159

for.body.23:                                      ; preds = %for.cond.20
  store i32 0, i32* %sides, align 4
  %30 = load i32, i32* %i, align 4
  %idxprom24 = sext i32 %30 to i64
  %31 = load %struct._GimpBlobPoint*, %struct._GimpBlobPoint** %points.addr, align 8
  %arrayidx25 = getelementptr inbounds %struct._GimpBlobPoint, %struct._GimpBlobPoint* %31, i64 %idxprom24
  %y26 = getelementptr inbounds %struct._GimpBlobPoint, %struct._GimpBlobPoint* %arrayidx25, i32 0, i32 1
  %32 = load i32, i32* %y26, align 4
  %33 = load i32, i32* %ymin, align 4
  %sub27 = sub nsw i32 %32, %33
  store i32 %sub27, i32* %j, align 4
  %34 = load i32, i32* %i, align 4
  %idxprom28 = sext i32 %34 to i64
  %35 = load %struct._GimpBlobPoint*, %struct._GimpBlobPoint** %points.addr, align 8
  %arrayidx29 = getelementptr inbounds %struct._GimpBlobPoint, %struct._GimpBlobPoint* %35, i64 %idxprom28
  %y30 = getelementptr inbounds %struct._GimpBlobPoint, %struct._GimpBlobPoint* %arrayidx29, i32 0, i32 1
  %36 = load i32, i32* %y30, align 4
  %37 = load i32, i32* %im1, align 4
  %idxprom31 = sext i32 %37 to i64
  %38 = load %struct._GimpBlobPoint*, %struct._GimpBlobPoint** %points.addr, align 8
  %arrayidx32 = getelementptr inbounds %struct._GimpBlobPoint, %struct._GimpBlobPoint* %38, i64 %idxprom31
  %y33 = getelementptr inbounds %struct._GimpBlobPoint, %struct._GimpBlobPoint* %arrayidx32, i32 0, i32 1
  %39 = load i32, i32* %y33, align 4
  %cmp34 = icmp slt i32 %36, %39
  br i1 %cmp34, label %if.then.36, label %if.else

if.then.36:                                       ; preds = %for.body.23
  %40 = load i32, i32* %sides, align 4
  %or = or i32 %40, 2
  store i32 %or, i32* %sides, align 4
  br label %if.end.48

if.else:                                          ; preds = %for.body.23
  %41 = load i32, i32* %i, align 4
  %idxprom37 = sext i32 %41 to i64
  %42 = load %struct._GimpBlobPoint*, %struct._GimpBlobPoint** %points.addr, align 8
  %arrayidx38 = getelementptr inbounds %struct._GimpBlobPoint, %struct._GimpBlobPoint* %42, i64 %idxprom37
  %y39 = getelementptr inbounds %struct._GimpBlobPoint, %struct._GimpBlobPoint* %arrayidx38, i32 0, i32 1
  %43 = load i32, i32* %y39, align 4
  %44 = load i32, i32* %im1, align 4
  %idxprom40 = sext i32 %44 to i64
  %45 = load %struct._GimpBlobPoint*, %struct._GimpBlobPoint** %points.addr, align 8
  %arrayidx41 = getelementptr inbounds %struct._GimpBlobPoint, %struct._GimpBlobPoint* %45, i64 %idxprom40
  %y42 = getelementptr inbounds %struct._GimpBlobPoint, %struct._GimpBlobPoint* %arrayidx41, i32 0, i32 1
  %46 = load i32, i32* %y42, align 4
  %cmp43 = icmp sgt i32 %43, %46
  br i1 %cmp43, label %if.then.45, label %if.end.47

if.then.45:                                       ; preds = %if.else
  %47 = load i32, i32* %sides, align 4
  %or46 = or i32 %47, 1
  store i32 %or46, i32* %sides, align 4
  br label %if.end.47

if.end.47:                                        ; preds = %if.then.45, %if.else
  br label %if.end.48

if.end.48:                                        ; preds = %if.end.47, %if.then.36
  %48 = load i32, i32* %ip1, align 4
  %idxprom49 = sext i32 %48 to i64
  %49 = load %struct._GimpBlobPoint*, %struct._GimpBlobPoint** %points.addr, align 8
  %arrayidx50 = getelementptr inbounds %struct._GimpBlobPoint, %struct._GimpBlobPoint* %49, i64 %idxprom49
  %y51 = getelementptr inbounds %struct._GimpBlobPoint, %struct._GimpBlobPoint* %arrayidx50, i32 0, i32 1
  %50 = load i32, i32* %y51, align 4
  %51 = load i32, i32* %i, align 4
  %idxprom52 = sext i32 %51 to i64
  %52 = load %struct._GimpBlobPoint*, %struct._GimpBlobPoint** %points.addr, align 8
  %arrayidx53 = getelementptr inbounds %struct._GimpBlobPoint, %struct._GimpBlobPoint* %52, i64 %idxprom52
  %y54 = getelementptr inbounds %struct._GimpBlobPoint, %struct._GimpBlobPoint* %arrayidx53, i32 0, i32 1
  %53 = load i32, i32* %y54, align 4
  %cmp55 = icmp slt i32 %50, %53
  br i1 %cmp55, label %if.then.57, label %if.else.59

if.then.57:                                       ; preds = %if.end.48
  %54 = load i32, i32* %sides, align 4
  %or58 = or i32 %54, 2
  store i32 %or58, i32* %sides, align 4
  br label %if.end.71

if.else.59:                                       ; preds = %if.end.48
  %55 = load i32, i32* %ip1, align 4
  %idxprom60 = sext i32 %55 to i64
  %56 = load %struct._GimpBlobPoint*, %struct._GimpBlobPoint** %points.addr, align 8
  %arrayidx61 = getelementptr inbounds %struct._GimpBlobPoint, %struct._GimpBlobPoint* %56, i64 %idxprom60
  %y62 = getelementptr inbounds %struct._GimpBlobPoint, %struct._GimpBlobPoint* %arrayidx61, i32 0, i32 1
  %57 = load i32, i32* %y62, align 4
  %58 = load i32, i32* %i, align 4
  %idxprom63 = sext i32 %58 to i64
  %59 = load %struct._GimpBlobPoint*, %struct._GimpBlobPoint** %points.addr, align 8
  %arrayidx64 = getelementptr inbounds %struct._GimpBlobPoint, %struct._GimpBlobPoint* %59, i64 %idxprom63
  %y65 = getelementptr inbounds %struct._GimpBlobPoint, %struct._GimpBlobPoint* %arrayidx64, i32 0, i32 1
  %60 = load i32, i32* %y65, align 4
  %cmp66 = icmp sgt i32 %57, %60
  br i1 %cmp66, label %if.then.68, label %if.end.70

if.then.68:                                       ; preds = %if.else.59
  %61 = load i32, i32* %sides, align 4
  %or69 = or i32 %61, 1
  store i32 %or69, i32* %sides, align 4
  br label %if.end.70

if.end.70:                                        ; preds = %if.then.68, %if.else.59
  br label %if.end.71

if.end.71:                                        ; preds = %if.end.70, %if.then.57
  %62 = load i32, i32* %sides, align 4
  %and = and i32 %62, 2
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then.72, label %if.end.107

if.then.72:                                       ; preds = %if.end.71
  %63 = load i32, i32* %j, align 4
  %idxprom73 = sext i32 %63 to i64
  %64 = load i32*, i32** %present, align 8
  %arrayidx74 = getelementptr inbounds i32, i32* %64, i64 %idxprom73
  %65 = load i32, i32* %arrayidx74, align 4
  %and75 = and i32 %65, 2
  %tobool76 = icmp ne i32 %and75, 0
  br i1 %tobool76, label %if.then.77, label %if.else.95

if.then.77:                                       ; preds = %if.then.72
  %66 = load i32, i32* %j, align 4
  %idxprom78 = sext i32 %66 to i64
  %67 = load %struct._GimpBlob*, %struct._GimpBlob** %result, align 8
  %data = getelementptr inbounds %struct._GimpBlob, %struct._GimpBlob* %67, i32 0, i32 2
  %arrayidx79 = getelementptr inbounds [1 x %struct._GimpBlobSpan], [1 x %struct._GimpBlobSpan]* %data, i32 0, i64 %idxprom78
  %right = getelementptr inbounds %struct._GimpBlobSpan, %struct._GimpBlobSpan* %arrayidx79, i32 0, i32 1
  %68 = load i32, i32* %right, align 4
  %69 = load i32, i32* %i, align 4
  %idxprom80 = sext i32 %69 to i64
  %70 = load %struct._GimpBlobPoint*, %struct._GimpBlobPoint** %points.addr, align 8
  %arrayidx81 = getelementptr inbounds %struct._GimpBlobPoint, %struct._GimpBlobPoint* %70, i64 %idxprom80
  %x = getelementptr inbounds %struct._GimpBlobPoint, %struct._GimpBlobPoint* %arrayidx81, i32 0, i32 0
  %71 = load i32, i32* %x, align 4
  %cmp82 = icmp sgt i32 %68, %71
  br i1 %cmp82, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.77
  %72 = load i32, i32* %j, align 4
  %idxprom84 = sext i32 %72 to i64
  %73 = load %struct._GimpBlob*, %struct._GimpBlob** %result, align 8
  %data85 = getelementptr inbounds %struct._GimpBlob, %struct._GimpBlob* %73, i32 0, i32 2
  %arrayidx86 = getelementptr inbounds [1 x %struct._GimpBlobSpan], [1 x %struct._GimpBlobSpan]* %data85, i32 0, i64 %idxprom84
  %right87 = getelementptr inbounds %struct._GimpBlobSpan, %struct._GimpBlobSpan* %arrayidx86, i32 0, i32 1
  %74 = load i32, i32* %right87, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.then.77
  %75 = load i32, i32* %i, align 4
  %idxprom88 = sext i32 %75 to i64
  %76 = load %struct._GimpBlobPoint*, %struct._GimpBlobPoint** %points.addr, align 8
  %arrayidx89 = getelementptr inbounds %struct._GimpBlobPoint, %struct._GimpBlobPoint* %76, i64 %idxprom88
  %x90 = getelementptr inbounds %struct._GimpBlobPoint, %struct._GimpBlobPoint* %arrayidx89, i32 0, i32 0
  %77 = load i32, i32* %x90, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %74, %cond.true ], [ %77, %cond.false ]
  %78 = load i32, i32* %j, align 4
  %idxprom91 = sext i32 %78 to i64
  %79 = load %struct._GimpBlob*, %struct._GimpBlob** %result, align 8
  %data92 = getelementptr inbounds %struct._GimpBlob, %struct._GimpBlob* %79, i32 0, i32 2
  %arrayidx93 = getelementptr inbounds [1 x %struct._GimpBlobSpan], [1 x %struct._GimpBlobSpan]* %data92, i32 0, i64 %idxprom91
  %right94 = getelementptr inbounds %struct._GimpBlobSpan, %struct._GimpBlobSpan* %arrayidx93, i32 0, i32 1
  store i32 %cond, i32* %right94, align 4
  br label %if.end.106

if.else.95:                                       ; preds = %if.then.72
  %80 = load i32, i32* %j, align 4
  %idxprom96 = sext i32 %80 to i64
  %81 = load i32*, i32** %present, align 8
  %arrayidx97 = getelementptr inbounds i32, i32* %81, i64 %idxprom96
  %82 = load i32, i32* %arrayidx97, align 4
  %or98 = or i32 %82, 2
  store i32 %or98, i32* %arrayidx97, align 4
  %83 = load i32, i32* %i, align 4
  %idxprom99 = sext i32 %83 to i64
  %84 = load %struct._GimpBlobPoint*, %struct._GimpBlobPoint** %points.addr, align 8
  %arrayidx100 = getelementptr inbounds %struct._GimpBlobPoint, %struct._GimpBlobPoint* %84, i64 %idxprom99
  %x101 = getelementptr inbounds %struct._GimpBlobPoint, %struct._GimpBlobPoint* %arrayidx100, i32 0, i32 0
  %85 = load i32, i32* %x101, align 4
  %86 = load i32, i32* %j, align 4
  %idxprom102 = sext i32 %86 to i64
  %87 = load %struct._GimpBlob*, %struct._GimpBlob** %result, align 8
  %data103 = getelementptr inbounds %struct._GimpBlob, %struct._GimpBlob* %87, i32 0, i32 2
  %arrayidx104 = getelementptr inbounds [1 x %struct._GimpBlobSpan], [1 x %struct._GimpBlobSpan]* %data103, i32 0, i64 %idxprom102
  %right105 = getelementptr inbounds %struct._GimpBlobSpan, %struct._GimpBlobSpan* %arrayidx104, i32 0, i32 1
  store i32 %85, i32* %right105, align 4
  br label %if.end.106

if.end.106:                                       ; preds = %if.else.95, %cond.end
  br label %if.end.107

if.end.107:                                       ; preds = %if.end.106, %if.end.71
  %88 = load i32, i32* %sides, align 4
  %and108 = and i32 %88, 1
  %tobool109 = icmp ne i32 %and108, 0
  br i1 %tobool109, label %if.then.110, label %if.end.151

if.then.110:                                      ; preds = %if.end.107
  %89 = load i32, i32* %j, align 4
  %idxprom111 = sext i32 %89 to i64
  %90 = load i32*, i32** %present, align 8
  %arrayidx112 = getelementptr inbounds i32, i32* %90, i64 %idxprom111
  %91 = load i32, i32* %arrayidx112, align 4
  %and113 = and i32 %91, 1
  %tobool114 = icmp ne i32 %and113, 0
  br i1 %tobool114, label %if.then.115, label %if.else.139

if.then.115:                                      ; preds = %if.then.110
  %92 = load i32, i32* %j, align 4
  %idxprom116 = sext i32 %92 to i64
  %93 = load %struct._GimpBlob*, %struct._GimpBlob** %result, align 8
  %data117 = getelementptr inbounds %struct._GimpBlob, %struct._GimpBlob* %93, i32 0, i32 2
  %arrayidx118 = getelementptr inbounds [1 x %struct._GimpBlobSpan], [1 x %struct._GimpBlobSpan]* %data117, i32 0, i64 %idxprom116
  %left = getelementptr inbounds %struct._GimpBlobSpan, %struct._GimpBlobSpan* %arrayidx118, i32 0, i32 0
  %94 = load i32, i32* %left, align 4
  %95 = load i32, i32* %i, align 4
  %idxprom119 = sext i32 %95 to i64
  %96 = load %struct._GimpBlobPoint*, %struct._GimpBlobPoint** %points.addr, align 8
  %arrayidx120 = getelementptr inbounds %struct._GimpBlobPoint, %struct._GimpBlobPoint* %96, i64 %idxprom119
  %x121 = getelementptr inbounds %struct._GimpBlobPoint, %struct._GimpBlobPoint* %arrayidx120, i32 0, i32 0
  %97 = load i32, i32* %x121, align 4
  %cmp122 = icmp slt i32 %94, %97
  br i1 %cmp122, label %cond.true.124, label %cond.false.129

cond.true.124:                                    ; preds = %if.then.115
  %98 = load i32, i32* %j, align 4
  %idxprom125 = sext i32 %98 to i64
  %99 = load %struct._GimpBlob*, %struct._GimpBlob** %result, align 8
  %data126 = getelementptr inbounds %struct._GimpBlob, %struct._GimpBlob* %99, i32 0, i32 2
  %arrayidx127 = getelementptr inbounds [1 x %struct._GimpBlobSpan], [1 x %struct._GimpBlobSpan]* %data126, i32 0, i64 %idxprom125
  %left128 = getelementptr inbounds %struct._GimpBlobSpan, %struct._GimpBlobSpan* %arrayidx127, i32 0, i32 0
  %100 = load i32, i32* %left128, align 4
  br label %cond.end.133

cond.false.129:                                   ; preds = %if.then.115
  %101 = load i32, i32* %i, align 4
  %idxprom130 = sext i32 %101 to i64
  %102 = load %struct._GimpBlobPoint*, %struct._GimpBlobPoint** %points.addr, align 8
  %arrayidx131 = getelementptr inbounds %struct._GimpBlobPoint, %struct._GimpBlobPoint* %102, i64 %idxprom130
  %x132 = getelementptr inbounds %struct._GimpBlobPoint, %struct._GimpBlobPoint* %arrayidx131, i32 0, i32 0
  %103 = load i32, i32* %x132, align 4
  br label %cond.end.133

cond.end.133:                                     ; preds = %cond.false.129, %cond.true.124
  %cond134 = phi i32 [ %100, %cond.true.124 ], [ %103, %cond.false.129 ]
  %104 = load i32, i32* %j, align 4
  %idxprom135 = sext i32 %104 to i64
  %105 = load %struct._GimpBlob*, %struct._GimpBlob** %result, align 8
  %data136 = getelementptr inbounds %struct._GimpBlob, %struct._GimpBlob* %105, i32 0, i32 2
  %arrayidx137 = getelementptr inbounds [1 x %struct._GimpBlobSpan], [1 x %struct._GimpBlobSpan]* %data136, i32 0, i64 %idxprom135
  %left138 = getelementptr inbounds %struct._GimpBlobSpan, %struct._GimpBlobSpan* %arrayidx137, i32 0, i32 0
  store i32 %cond134, i32* %left138, align 4
  br label %if.end.150

if.else.139:                                      ; preds = %if.then.110
  %106 = load i32, i32* %j, align 4
  %idxprom140 = sext i32 %106 to i64
  %107 = load i32*, i32** %present, align 8
  %arrayidx141 = getelementptr inbounds i32, i32* %107, i64 %idxprom140
  %108 = load i32, i32* %arrayidx141, align 4
  %or142 = or i32 %108, 1
  store i32 %or142, i32* %arrayidx141, align 4
  %109 = load i32, i32* %i, align 4
  %idxprom143 = sext i32 %109 to i64
  %110 = load %struct._GimpBlobPoint*, %struct._GimpBlobPoint** %points.addr, align 8
  %arrayidx144 = getelementptr inbounds %struct._GimpBlobPoint, %struct._GimpBlobPoint* %110, i64 %idxprom143
  %x145 = getelementptr inbounds %struct._GimpBlobPoint, %struct._GimpBlobPoint* %arrayidx144, i32 0, i32 0
  %111 = load i32, i32* %x145, align 4
  %112 = load i32, i32* %j, align 4
  %idxprom146 = sext i32 %112 to i64
  %113 = load %struct._GimpBlob*, %struct._GimpBlob** %result, align 8
  %data147 = getelementptr inbounds %struct._GimpBlob, %struct._GimpBlob* %113, i32 0, i32 2
  %arrayidx148 = getelementptr inbounds [1 x %struct._GimpBlobSpan], [1 x %struct._GimpBlobSpan]* %data147, i32 0, i64 %idxprom146
  %left149 = getelementptr inbounds %struct._GimpBlobSpan, %struct._GimpBlobSpan* %arrayidx148, i32 0, i32 0
  store i32 %111, i32* %left149, align 4
  br label %if.end.150

if.end.150:                                       ; preds = %if.else.139, %cond.end.133
  br label %if.end.151

if.end.151:                                       ; preds = %if.end.150, %if.end.107
  %114 = load i32, i32* %i, align 4
  store i32 %114, i32* %im1, align 4
  %115 = load i32, i32* %ip1, align 4
  %inc152 = add nsw i32 %115, 1
  store i32 %inc152, i32* %ip1, align 4
  %116 = load i32, i32* %ip1, align 4
  %117 = load i32, i32* %n_points.addr, align 4
  %cmp153 = icmp eq i32 %116, %117
  br i1 %cmp153, label %if.then.155, label %if.end.156

if.then.155:                                      ; preds = %if.end.151
  store i32 0, i32* %ip1, align 4
  br label %if.end.156

if.end.156:                                       ; preds = %if.then.155, %if.end.151
  br label %for.inc.157

for.inc.157:                                      ; preds = %if.end.156
  %118 = load i32, i32* %i, align 4
  %inc158 = add nsw i32 %118, 1
  store i32 %inc158, i32* %i, align 4
  br label %for.cond.20

for.end.159:                                      ; preds = %for.cond.20
  %119 = load %struct._GimpBlob*, %struct._GimpBlob** %result, align 8
  %120 = load i32*, i32** %present, align 8
  call void @gimp_blob_fill(%struct._GimpBlob* %119, i32* %120)
  %121 = load i32*, i32** %present, align 8
  %122 = bitcast i32* %121 to i8*
  call void @g_free(i8* %122)
  %123 = load %struct._GimpBlob*, %struct._GimpBlob** %result, align 8
  ret %struct._GimpBlob* %123
}

; Function Attrs: nounwind uwtable
define internal %struct._GimpBlob* @gimp_blob_new(i32 %y, i32 %height) #0 {
entry:
  %y.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  %result = alloca %struct._GimpBlob*, align 8
  store i32 %y, i32* %y.addr, align 4
  store i32 %height, i32* %height.addr, align 4
  %0 = load i32, i32* %height.addr, align 4
  %sub = sub nsw i32 %0, 1
  %conv = sext i32 %sub to i64
  %mul = mul i64 8, %conv
  %add = add i64 16, %mul
  %call = call noalias i8* @g_malloc(i64 %add)
  %1 = bitcast i8* %call to %struct._GimpBlob*
  store %struct._GimpBlob* %1, %struct._GimpBlob** %result, align 8
  %2 = load i32, i32* %y.addr, align 4
  %3 = load %struct._GimpBlob*, %struct._GimpBlob** %result, align 8
  %y1 = getelementptr inbounds %struct._GimpBlob, %struct._GimpBlob* %3, i32 0, i32 0
  store i32 %2, i32* %y1, align 4
  %4 = load i32, i32* %height.addr, align 4
  %5 = load %struct._GimpBlob*, %struct._GimpBlob** %result, align 8
  %height2 = getelementptr inbounds %struct._GimpBlob, %struct._GimpBlob* %5, i32 0, i32 1
  store i32 %4, i32* %height2, align 4
  %6 = load %struct._GimpBlob*, %struct._GimpBlob** %result, align 8
  ret %struct._GimpBlob* %6
}

declare noalias i8* @g_malloc0_n(i64, i64) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_blob_fill(%struct._GimpBlob* %b, i32* %present) #0 {
entry:
  %b.addr = alloca %struct._GimpBlob*, align 8
  %present.addr = alloca i32*, align 8
  %start = alloca i32, align 4
  %x1 = alloca i32, align 4
  %x2 = alloca i32, align 4
  %i1 = alloca i32, align 4
  %i2 = alloca i32, align 4
  %i = alloca i32, align 4
  %increment = alloca i32, align 4
  %denom = alloca i32, align 4
  %step = alloca i32, align 4
  %frac = alloca i32, align 4
  %reverse = alloca i32, align 4
  %increment159 = alloca i32, align 4
  %denom160 = alloca i32, align 4
  %step161 = alloca i32, align 4
  %frac162 = alloca i32, align 4
  %reverse163 = alloca i32, align 4
  store %struct._GimpBlob* %b, %struct._GimpBlob** %b.addr, align 8
  store i32* %present, i32** %present.addr, align 8
  store i32 0, i32* %start, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i32, i32* %start, align 4
  %idxprom = sext i32 %0 to i64
  %1 = load i32*, i32** %present.addr, align 8
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom
  %2 = load i32, i32* %arrayidx, align 4
  %tobool = icmp ne i32 %2, 0
  %lnot = xor i1 %tobool, true
  br i1 %lnot, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load i32, i32* %start, align 4
  %idxprom1 = sext i32 %3 to i64
  %4 = load %struct._GimpBlob*, %struct._GimpBlob** %b.addr, align 8
  %data = getelementptr inbounds %struct._GimpBlob, %struct._GimpBlob* %4, i32 0, i32 2
  %arrayidx2 = getelementptr inbounds [1 x %struct._GimpBlobSpan], [1 x %struct._GimpBlobSpan]* %data, i32 0, i64 %idxprom1
  %left = getelementptr inbounds %struct._GimpBlobSpan, %struct._GimpBlobSpan* %arrayidx2, i32 0, i32 0
  store i32 0, i32* %left, align 4
  %5 = load i32, i32* %start, align 4
  %idxprom3 = sext i32 %5 to i64
  %6 = load %struct._GimpBlob*, %struct._GimpBlob** %b.addr, align 8
  %data4 = getelementptr inbounds %struct._GimpBlob, %struct._GimpBlob* %6, i32 0, i32 2
  %arrayidx5 = getelementptr inbounds [1 x %struct._GimpBlobSpan], [1 x %struct._GimpBlobSpan]* %data4, i32 0, i64 %idxprom3
  %right = getelementptr inbounds %struct._GimpBlobSpan, %struct._GimpBlobSpan* %arrayidx5, i32 0, i32 1
  store i32 -1, i32* %right, align 4
  %7 = load i32, i32* %start, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, i32* %start, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %8 = load i32, i32* %start, align 4
  %idxprom6 = sext i32 %8 to i64
  %9 = load i32*, i32** %present.addr, align 8
  %arrayidx7 = getelementptr inbounds i32, i32* %9, i64 %idxprom6
  %10 = load i32, i32* %arrayidx7, align 4
  %cmp = icmp ne i32 %10, 3
  br i1 %cmp, label %if.then, label %if.end.30

if.then:                                          ; preds = %while.end
  %11 = load i32, i32* %start, align 4
  %idxprom8 = sext i32 %11 to i64
  %12 = load i32*, i32** %present.addr, align 8
  %arrayidx9 = getelementptr inbounds i32, i32* %12, i64 %idxprom8
  %13 = load i32, i32* %arrayidx9, align 4
  %cmp10 = icmp eq i32 %13, 2
  br i1 %cmp10, label %if.then.11, label %if.else

if.then.11:                                       ; preds = %if.then
  %14 = load i32, i32* %start, align 4
  %idxprom12 = sext i32 %14 to i64
  %15 = load %struct._GimpBlob*, %struct._GimpBlob** %b.addr, align 8
  %data13 = getelementptr inbounds %struct._GimpBlob, %struct._GimpBlob* %15, i32 0, i32 2
  %arrayidx14 = getelementptr inbounds [1 x %struct._GimpBlobSpan], [1 x %struct._GimpBlobSpan]* %data13, i32 0, i64 %idxprom12
  %right15 = getelementptr inbounds %struct._GimpBlobSpan, %struct._GimpBlobSpan* %arrayidx14, i32 0, i32 1
  %16 = load i32, i32* %right15, align 4
  %17 = load i32, i32* %start, align 4
  %idxprom16 = sext i32 %17 to i64
  %18 = load %struct._GimpBlob*, %struct._GimpBlob** %b.addr, align 8
  %data17 = getelementptr inbounds %struct._GimpBlob, %struct._GimpBlob* %18, i32 0, i32 2
  %arrayidx18 = getelementptr inbounds [1 x %struct._GimpBlobSpan], [1 x %struct._GimpBlobSpan]* %data17, i32 0, i64 %idxprom16
  %left19 = getelementptr inbounds %struct._GimpBlobSpan, %struct._GimpBlobSpan* %arrayidx18, i32 0, i32 0
  store i32 %16, i32* %left19, align 4
  br label %if.end

if.else:                                          ; preds = %if.then
  %19 = load i32, i32* %start, align 4
  %idxprom20 = sext i32 %19 to i64
  %20 = load %struct._GimpBlob*, %struct._GimpBlob** %b.addr, align 8
  %data21 = getelementptr inbounds %struct._GimpBlob, %struct._GimpBlob* %20, i32 0, i32 2
  %arrayidx22 = getelementptr inbounds [1 x %struct._GimpBlobSpan], [1 x %struct._GimpBlobSpan]* %data21, i32 0, i64 %idxprom20
  %left23 = getelementptr inbounds %struct._GimpBlobSpan, %struct._GimpBlobSpan* %arrayidx22, i32 0, i32 0
  %21 = load i32, i32* %left23, align 4
  %22 = load i32, i32* %start, align 4
  %idxprom24 = sext i32 %22 to i64
  %23 = load %struct._GimpBlob*, %struct._GimpBlob** %b.addr, align 8
  %data25 = getelementptr inbounds %struct._GimpBlob, %struct._GimpBlob* %23, i32 0, i32 2
  %arrayidx26 = getelementptr inbounds [1 x %struct._GimpBlobSpan], [1 x %struct._GimpBlobSpan]* %data25, i32 0, i64 %idxprom24
  %right27 = getelementptr inbounds %struct._GimpBlobSpan, %struct._GimpBlobSpan* %arrayidx26, i32 0, i32 1
  store i32 %21, i32* %right27, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.11
  %24 = load i32, i32* %start, align 4
  %idxprom28 = sext i32 %24 to i64
  %25 = load i32*, i32** %present.addr, align 8
  %arrayidx29 = getelementptr inbounds i32, i32* %25, i64 %idxprom28
  store i32 3, i32* %arrayidx29, align 4
  br label %if.end.30

if.end.30:                                        ; preds = %if.end, %while.end
  %26 = load %struct._GimpBlob*, %struct._GimpBlob** %b.addr, align 8
  %height = getelementptr inbounds %struct._GimpBlob, %struct._GimpBlob* %26, i32 0, i32 1
  %27 = load i32, i32* %height, align 4
  %sub = sub nsw i32 %27, 1
  store i32 %sub, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.30
  %28 = load i32, i32* %i, align 4
  %idxprom31 = sext i32 %28 to i64
  %29 = load i32*, i32** %present.addr, align 8
  %arrayidx32 = getelementptr inbounds i32, i32* %29, i64 %idxprom31
  %30 = load i32, i32* %arrayidx32, align 4
  %tobool33 = icmp ne i32 %30, 0
  %lnot34 = xor i1 %tobool33, true
  br i1 %lnot34, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %31 = load i32, i32* %i, align 4
  %idxprom35 = sext i32 %31 to i64
  %32 = load %struct._GimpBlob*, %struct._GimpBlob** %b.addr, align 8
  %data36 = getelementptr inbounds %struct._GimpBlob, %struct._GimpBlob* %32, i32 0, i32 2
  %arrayidx37 = getelementptr inbounds [1 x %struct._GimpBlobSpan], [1 x %struct._GimpBlobSpan]* %data36, i32 0, i64 %idxprom35
  %left38 = getelementptr inbounds %struct._GimpBlobSpan, %struct._GimpBlobSpan* %arrayidx37, i32 0, i32 0
  store i32 0, i32* %left38, align 4
  %33 = load i32, i32* %i, align 4
  %idxprom39 = sext i32 %33 to i64
  %34 = load %struct._GimpBlob*, %struct._GimpBlob** %b.addr, align 8
  %data40 = getelementptr inbounds %struct._GimpBlob, %struct._GimpBlob* %34, i32 0, i32 2
  %arrayidx41 = getelementptr inbounds [1 x %struct._GimpBlobSpan], [1 x %struct._GimpBlobSpan]* %data40, i32 0, i64 %idxprom39
  %right42 = getelementptr inbounds %struct._GimpBlobSpan, %struct._GimpBlobSpan* %arrayidx41, i32 0, i32 1
  store i32 -1, i32* %right42, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %35 = load i32, i32* %i, align 4
  %dec = add nsw i32 %35, -1
  store i32 %dec, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %36 = load i32, i32* %i, align 4
  %idxprom43 = sext i32 %36 to i64
  %37 = load i32*, i32** %present.addr, align 8
  %arrayidx44 = getelementptr inbounds i32, i32* %37, i64 %idxprom43
  %38 = load i32, i32* %arrayidx44, align 4
  %cmp45 = icmp ne i32 %38, 3
  br i1 %cmp45, label %if.then.46, label %if.end.71

if.then.46:                                       ; preds = %for.end
  %39 = load i32, i32* %i, align 4
  %idxprom47 = sext i32 %39 to i64
  %40 = load i32*, i32** %present.addr, align 8
  %arrayidx48 = getelementptr inbounds i32, i32* %40, i64 %idxprom47
  %41 = load i32, i32* %arrayidx48, align 4
  %cmp49 = icmp eq i32 %41, 2
  br i1 %cmp49, label %if.then.50, label %if.else.59

if.then.50:                                       ; preds = %if.then.46
  %42 = load i32, i32* %i, align 4
  %idxprom51 = sext i32 %42 to i64
  %43 = load %struct._GimpBlob*, %struct._GimpBlob** %b.addr, align 8
  %data52 = getelementptr inbounds %struct._GimpBlob, %struct._GimpBlob* %43, i32 0, i32 2
  %arrayidx53 = getelementptr inbounds [1 x %struct._GimpBlobSpan], [1 x %struct._GimpBlobSpan]* %data52, i32 0, i64 %idxprom51
  %right54 = getelementptr inbounds %struct._GimpBlobSpan, %struct._GimpBlobSpan* %arrayidx53, i32 0, i32 1
  %44 = load i32, i32* %right54, align 4
  %45 = load i32, i32* %i, align 4
  %idxprom55 = sext i32 %45 to i64
  %46 = load %struct._GimpBlob*, %struct._GimpBlob** %b.addr, align 8
  %data56 = getelementptr inbounds %struct._GimpBlob, %struct._GimpBlob* %46, i32 0, i32 2
  %arrayidx57 = getelementptr inbounds [1 x %struct._GimpBlobSpan], [1 x %struct._GimpBlobSpan]* %data56, i32 0, i64 %idxprom55
  %left58 = getelementptr inbounds %struct._GimpBlobSpan, %struct._GimpBlobSpan* %arrayidx57, i32 0, i32 0
  store i32 %44, i32* %left58, align 4
  br label %if.end.68

if.else.59:                                       ; preds = %if.then.46
  %47 = load i32, i32* %i, align 4
  %idxprom60 = sext i32 %47 to i64
  %48 = load %struct._GimpBlob*, %struct._GimpBlob** %b.addr, align 8
  %data61 = getelementptr inbounds %struct._GimpBlob, %struct._GimpBlob* %48, i32 0, i32 2
  %arrayidx62 = getelementptr inbounds [1 x %struct._GimpBlobSpan], [1 x %struct._GimpBlobSpan]* %data61, i32 0, i64 %idxprom60
  %left63 = getelementptr inbounds %struct._GimpBlobSpan, %struct._GimpBlobSpan* %arrayidx62, i32 0, i32 0
  %49 = load i32, i32* %left63, align 4
  %50 = load i32, i32* %i, align 4
  %idxprom64 = sext i32 %50 to i64
  %51 = load %struct._GimpBlob*, %struct._GimpBlob** %b.addr, align 8
  %data65 = getelementptr inbounds %struct._GimpBlob, %struct._GimpBlob* %51, i32 0, i32 2
  %arrayidx66 = getelementptr inbounds [1 x %struct._GimpBlobSpan], [1 x %struct._GimpBlobSpan]* %data65, i32 0, i64 %idxprom64
  %right67 = getelementptr inbounds %struct._GimpBlobSpan, %struct._GimpBlobSpan* %arrayidx66, i32 0, i32 1
  store i32 %49, i32* %right67, align 4
  br label %if.end.68

if.end.68:                                        ; preds = %if.else.59, %if.then.50
  %52 = load i32, i32* %i, align 4
  %idxprom69 = sext i32 %52 to i64
  %53 = load i32*, i32** %present.addr, align 8
  %arrayidx70 = getelementptr inbounds i32, i32* %53, i64 %idxprom69
  store i32 3, i32* %arrayidx70, align 4
  br label %if.end.71

if.end.71:                                        ; preds = %if.end.68, %for.end
  %54 = load i32, i32* %start, align 4
  store i32 %54, i32* %i1, align 4
  br label %for.cond.72

for.cond.72:                                      ; preds = %for.inc.145, %if.end.71
  %55 = load i32, i32* %i1, align 4
  %56 = load %struct._GimpBlob*, %struct._GimpBlob** %b.addr, align 8
  %height73 = getelementptr inbounds %struct._GimpBlob, %struct._GimpBlob* %56, i32 0, i32 1
  %57 = load i32, i32* %height73, align 4
  %sub74 = sub nsw i32 %57, 2
  %cmp75 = icmp slt i32 %55, %sub74
  br i1 %cmp75, label %for.body.76, label %for.end.147

for.body.76:                                      ; preds = %for.cond.72
  %58 = load i32, i32* %i1, align 4
  %add = add nsw i32 %58, 1
  %idxprom77 = sext i32 %add to i64
  %59 = load i32*, i32** %present.addr, align 8
  %arrayidx78 = getelementptr inbounds i32, i32* %59, i64 %idxprom77
  %60 = load i32, i32* %arrayidx78, align 4
  %and = and i32 %60, 1
  %tobool79 = icmp ne i32 %and, 0
  br i1 %tobool79, label %if.end.144, label %if.then.80

if.then.80:                                       ; preds = %for.body.76
  %61 = load i32, i32* %i1, align 4
  %add81 = add nsw i32 %61, 2
  store i32 %add81, i32* %i2, align 4
  br label %while.cond.82

while.cond.82:                                    ; preds = %while.body.90, %if.then.80
  %62 = load i32, i32* %i2, align 4
  %63 = load %struct._GimpBlob*, %struct._GimpBlob** %b.addr, align 8
  %height83 = getelementptr inbounds %struct._GimpBlob, %struct._GimpBlob* %63, i32 0, i32 1
  %64 = load i32, i32* %height83, align 4
  %cmp84 = icmp slt i32 %62, %64
  br i1 %cmp84, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond.82
  %65 = load i32, i32* %i2, align 4
  %idxprom85 = sext i32 %65 to i64
  %66 = load i32*, i32** %present.addr, align 8
  %arrayidx86 = getelementptr inbounds i32, i32* %66, i64 %idxprom85
  %67 = load i32, i32* %arrayidx86, align 4
  %and87 = and i32 %67, 1
  %tobool88 = icmp ne i32 %and87, 0
  %lnot89 = xor i1 %tobool88, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond.82
  %68 = phi i1 [ false, %while.cond.82 ], [ %lnot89, %land.rhs ]
  br i1 %68, label %while.body.90, label %while.end.92

while.body.90:                                    ; preds = %land.end
  %69 = load i32, i32* %i2, align 4
  %inc91 = add nsw i32 %69, 1
  store i32 %inc91, i32* %i2, align 4
  br label %while.cond.82

while.end.92:                                     ; preds = %land.end
  %70 = load i32, i32* %i2, align 4
  %71 = load %struct._GimpBlob*, %struct._GimpBlob** %b.addr, align 8
  %height93 = getelementptr inbounds %struct._GimpBlob, %struct._GimpBlob* %71, i32 0, i32 1
  %72 = load i32, i32* %height93, align 4
  %cmp94 = icmp slt i32 %70, %72
  br i1 %cmp94, label %if.then.95, label %if.end.142

if.then.95:                                       ; preds = %while.end.92
  %73 = load i32, i32* %i2, align 4
  %74 = load i32, i32* %i1, align 4
  %sub96 = sub nsw i32 %73, %74
  store i32 %sub96, i32* %denom, align 4
  %75 = load i32, i32* %i1, align 4
  %idxprom97 = sext i32 %75 to i64
  %76 = load %struct._GimpBlob*, %struct._GimpBlob** %b.addr, align 8
  %data98 = getelementptr inbounds %struct._GimpBlob, %struct._GimpBlob* %76, i32 0, i32 2
  %arrayidx99 = getelementptr inbounds [1 x %struct._GimpBlobSpan], [1 x %struct._GimpBlobSpan]* %data98, i32 0, i64 %idxprom97
  %left100 = getelementptr inbounds %struct._GimpBlobSpan, %struct._GimpBlobSpan* %arrayidx99, i32 0, i32 0
  %77 = load i32, i32* %left100, align 4
  store i32 %77, i32* %x1, align 4
  %78 = load i32, i32* %i2, align 4
  %idxprom101 = sext i32 %78 to i64
  %79 = load %struct._GimpBlob*, %struct._GimpBlob** %b.addr, align 8
  %data102 = getelementptr inbounds %struct._GimpBlob, %struct._GimpBlob* %79, i32 0, i32 2
  %arrayidx103 = getelementptr inbounds [1 x %struct._GimpBlobSpan], [1 x %struct._GimpBlobSpan]* %data102, i32 0, i64 %idxprom101
  %left104 = getelementptr inbounds %struct._GimpBlobSpan, %struct._GimpBlobSpan* %arrayidx103, i32 0, i32 0
  %80 = load i32, i32* %left104, align 4
  store i32 %80, i32* %x2, align 4
  %81 = load i32, i32* %x2, align 4
  %82 = load i32, i32* %x1, align 4
  %sub105 = sub nsw i32 %81, %82
  %83 = load i32, i32* %denom, align 4
  %div = sdiv i32 %sub105, %83
  store i32 %div, i32* %step, align 4
  %84 = load i32, i32* %x2, align 4
  %85 = load i32, i32* %x1, align 4
  %sub106 = sub nsw i32 %84, %85
  %86 = load i32, i32* %step, align 4
  %87 = load i32, i32* %denom, align 4
  %mul = mul nsw i32 %86, %87
  %sub107 = sub nsw i32 %sub106, %mul
  store i32 %sub107, i32* %frac, align 4
  %88 = load i32, i32* %frac, align 4
  %cmp108 = icmp slt i32 %88, 0
  br i1 %cmp108, label %if.then.109, label %if.else.111

if.then.109:                                      ; preds = %if.then.95
  %89 = load i32, i32* %frac, align 4
  %sub110 = sub nsw i32 0, %89
  store i32 %sub110, i32* %frac, align 4
  store i32 1, i32* %reverse, align 4
  br label %if.end.112

if.else.111:                                      ; preds = %if.then.95
  store i32 0, i32* %reverse, align 4
  br label %if.end.112

if.end.112:                                       ; preds = %if.else.111, %if.then.109
  store i32 0, i32* %increment, align 4
  %90 = load i32, i32* %i1, align 4
  %add113 = add nsw i32 %90, 1
  store i32 %add113, i32* %i, align 4
  br label %for.cond.114

for.cond.114:                                     ; preds = %for.inc.139, %if.end.112
  %91 = load i32, i32* %i, align 4
  %92 = load i32, i32* %i2, align 4
  %cmp115 = icmp slt i32 %91, %92
  br i1 %cmp115, label %for.body.116, label %for.end.141

for.body.116:                                     ; preds = %for.cond.114
  %93 = load i32, i32* %step, align 4
  %94 = load i32, i32* %x1, align 4
  %add117 = add nsw i32 %94, %93
  store i32 %add117, i32* %x1, align 4
  %95 = load i32, i32* %frac, align 4
  %96 = load i32, i32* %increment, align 4
  %add118 = add nsw i32 %96, %95
  store i32 %add118, i32* %increment, align 4
  %97 = load i32, i32* %increment, align 4
  %98 = load i32, i32* %denom, align 4
  %cmp119 = icmp sge i32 %97, %98
  br i1 %cmp119, label %if.then.120, label %if.end.124

if.then.120:                                      ; preds = %for.body.116
  %99 = load i32, i32* %denom, align 4
  %100 = load i32, i32* %increment, align 4
  %sub121 = sub nsw i32 %100, %99
  store i32 %sub121, i32* %increment, align 4
  %101 = load i32, i32* %reverse, align 4
  %tobool122 = icmp ne i32 %101, 0
  %cond = select i1 %tobool122, i32 -1, i32 1
  %102 = load i32, i32* %x1, align 4
  %add123 = add nsw i32 %102, %cond
  store i32 %add123, i32* %x1, align 4
  br label %if.end.124

if.end.124:                                       ; preds = %if.then.120, %for.body.116
  %103 = load i32, i32* %increment, align 4
  %cmp125 = icmp eq i32 %103, 0
  br i1 %cmp125, label %if.then.127, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.124
  %104 = load i32, i32* %reverse, align 4
  %tobool126 = icmp ne i32 %104, 0
  br i1 %tobool126, label %if.then.127, label %if.else.132

if.then.127:                                      ; preds = %lor.lhs.false, %if.end.124
  %105 = load i32, i32* %x1, align 4
  %106 = load i32, i32* %i, align 4
  %idxprom128 = sext i32 %106 to i64
  %107 = load %struct._GimpBlob*, %struct._GimpBlob** %b.addr, align 8
  %data129 = getelementptr inbounds %struct._GimpBlob, %struct._GimpBlob* %107, i32 0, i32 2
  %arrayidx130 = getelementptr inbounds [1 x %struct._GimpBlobSpan], [1 x %struct._GimpBlobSpan]* %data129, i32 0, i64 %idxprom128
  %left131 = getelementptr inbounds %struct._GimpBlobSpan, %struct._GimpBlobSpan* %arrayidx130, i32 0, i32 0
  store i32 %105, i32* %left131, align 4
  br label %if.end.138

if.else.132:                                      ; preds = %lor.lhs.false
  %108 = load i32, i32* %x1, align 4
  %add133 = add nsw i32 %108, 1
  %109 = load i32, i32* %i, align 4
  %idxprom134 = sext i32 %109 to i64
  %110 = load %struct._GimpBlob*, %struct._GimpBlob** %b.addr, align 8
  %data135 = getelementptr inbounds %struct._GimpBlob, %struct._GimpBlob* %110, i32 0, i32 2
  %arrayidx136 = getelementptr inbounds [1 x %struct._GimpBlobSpan], [1 x %struct._GimpBlobSpan]* %data135, i32 0, i64 %idxprom134
  %left137 = getelementptr inbounds %struct._GimpBlobSpan, %struct._GimpBlobSpan* %arrayidx136, i32 0, i32 0
  store i32 %add133, i32* %left137, align 4
  br label %if.end.138

if.end.138:                                       ; preds = %if.else.132, %if.then.127
  br label %for.inc.139

for.inc.139:                                      ; preds = %if.end.138
  %111 = load i32, i32* %i, align 4
  %inc140 = add nsw i32 %111, 1
  store i32 %inc140, i32* %i, align 4
  br label %for.cond.114

for.end.141:                                      ; preds = %for.cond.114
  br label %if.end.142

if.end.142:                                       ; preds = %for.end.141, %while.end.92
  %112 = load i32, i32* %i2, align 4
  %sub143 = sub nsw i32 %112, 1
  store i32 %sub143, i32* %i1, align 4
  br label %if.end.144

if.end.144:                                       ; preds = %if.end.142, %for.body.76
  br label %for.inc.145

for.inc.145:                                      ; preds = %if.end.144
  %113 = load i32, i32* %i1, align 4
  %inc146 = add nsw i32 %113, 1
  store i32 %inc146, i32* %i1, align 4
  br label %for.cond.72

for.end.147:                                      ; preds = %for.cond.72
  %114 = load i32, i32* %start, align 4
  store i32 %114, i32* %i1, align 4
  br label %for.cond.148

for.cond.148:                                     ; preds = %for.inc.233, %for.end.147
  %115 = load i32, i32* %i1, align 4
  %116 = load %struct._GimpBlob*, %struct._GimpBlob** %b.addr, align 8
  %height149 = getelementptr inbounds %struct._GimpBlob, %struct._GimpBlob* %116, i32 0, i32 1
  %117 = load i32, i32* %height149, align 4
  %sub150 = sub nsw i32 %117, 2
  %cmp151 = icmp slt i32 %115, %sub150
  br i1 %cmp151, label %for.body.152, label %for.end.235

for.body.152:                                     ; preds = %for.cond.148
  %118 = load i32, i32* %i1, align 4
  %add153 = add nsw i32 %118, 1
  %idxprom154 = sext i32 %add153 to i64
  %119 = load i32*, i32** %present.addr, align 8
  %arrayidx155 = getelementptr inbounds i32, i32* %119, i64 %idxprom154
  %120 = load i32, i32* %arrayidx155, align 4
  %and156 = and i32 %120, 2
  %tobool157 = icmp ne i32 %and156, 0
  br i1 %tobool157, label %if.end.232, label %if.then.158

if.then.158:                                      ; preds = %for.body.152
  %121 = load i32, i32* %i1, align 4
  %add164 = add nsw i32 %121, 2
  store i32 %add164, i32* %i2, align 4
  br label %while.cond.165

while.cond.165:                                   ; preds = %while.body.175, %if.then.158
  %122 = load i32, i32* %i2, align 4
  %123 = load %struct._GimpBlob*, %struct._GimpBlob** %b.addr, align 8
  %height166 = getelementptr inbounds %struct._GimpBlob, %struct._GimpBlob* %123, i32 0, i32 1
  %124 = load i32, i32* %height166, align 4
  %cmp167 = icmp slt i32 %122, %124
  br i1 %cmp167, label %land.rhs.168, label %land.end.174

land.rhs.168:                                     ; preds = %while.cond.165
  %125 = load i32, i32* %i2, align 4
  %idxprom169 = sext i32 %125 to i64
  %126 = load i32*, i32** %present.addr, align 8
  %arrayidx170 = getelementptr inbounds i32, i32* %126, i64 %idxprom169
  %127 = load i32, i32* %arrayidx170, align 4
  %and171 = and i32 %127, 2
  %tobool172 = icmp ne i32 %and171, 0
  %lnot173 = xor i1 %tobool172, true
  br label %land.end.174

land.end.174:                                     ; preds = %land.rhs.168, %while.cond.165
  %128 = phi i1 [ false, %while.cond.165 ], [ %lnot173, %land.rhs.168 ]
  br i1 %128, label %while.body.175, label %while.end.177

while.body.175:                                   ; preds = %land.end.174
  %129 = load i32, i32* %i2, align 4
  %inc176 = add nsw i32 %129, 1
  store i32 %inc176, i32* %i2, align 4
  br label %while.cond.165

while.end.177:                                    ; preds = %land.end.174
  %130 = load i32, i32* %i2, align 4
  %131 = load %struct._GimpBlob*, %struct._GimpBlob** %b.addr, align 8
  %height178 = getelementptr inbounds %struct._GimpBlob, %struct._GimpBlob* %131, i32 0, i32 1
  %132 = load i32, i32* %height178, align 4
  %cmp179 = icmp slt i32 %130, %132
  br i1 %cmp179, label %if.then.180, label %if.end.230

if.then.180:                                      ; preds = %while.end.177
  %133 = load i32, i32* %i2, align 4
  %134 = load i32, i32* %i1, align 4
  %sub181 = sub nsw i32 %133, %134
  store i32 %sub181, i32* %denom160, align 4
  %135 = load i32, i32* %i1, align 4
  %idxprom182 = sext i32 %135 to i64
  %136 = load %struct._GimpBlob*, %struct._GimpBlob** %b.addr, align 8
  %data183 = getelementptr inbounds %struct._GimpBlob, %struct._GimpBlob* %136, i32 0, i32 2
  %arrayidx184 = getelementptr inbounds [1 x %struct._GimpBlobSpan], [1 x %struct._GimpBlobSpan]* %data183, i32 0, i64 %idxprom182
  %right185 = getelementptr inbounds %struct._GimpBlobSpan, %struct._GimpBlobSpan* %arrayidx184, i32 0, i32 1
  %137 = load i32, i32* %right185, align 4
  store i32 %137, i32* %x1, align 4
  %138 = load i32, i32* %i2, align 4
  %idxprom186 = sext i32 %138 to i64
  %139 = load %struct._GimpBlob*, %struct._GimpBlob** %b.addr, align 8
  %data187 = getelementptr inbounds %struct._GimpBlob, %struct._GimpBlob* %139, i32 0, i32 2
  %arrayidx188 = getelementptr inbounds [1 x %struct._GimpBlobSpan], [1 x %struct._GimpBlobSpan]* %data187, i32 0, i64 %idxprom186
  %right189 = getelementptr inbounds %struct._GimpBlobSpan, %struct._GimpBlobSpan* %arrayidx188, i32 0, i32 1
  %140 = load i32, i32* %right189, align 4
  store i32 %140, i32* %x2, align 4
  %141 = load i32, i32* %x2, align 4
  %142 = load i32, i32* %x1, align 4
  %sub190 = sub nsw i32 %141, %142
  %143 = load i32, i32* %denom160, align 4
  %div191 = sdiv i32 %sub190, %143
  store i32 %div191, i32* %step161, align 4
  %144 = load i32, i32* %x2, align 4
  %145 = load i32, i32* %x1, align 4
  %sub192 = sub nsw i32 %144, %145
  %146 = load i32, i32* %step161, align 4
  %147 = load i32, i32* %denom160, align 4
  %mul193 = mul nsw i32 %146, %147
  %sub194 = sub nsw i32 %sub192, %mul193
  store i32 %sub194, i32* %frac162, align 4
  %148 = load i32, i32* %frac162, align 4
  %cmp195 = icmp slt i32 %148, 0
  br i1 %cmp195, label %if.then.196, label %if.else.198

if.then.196:                                      ; preds = %if.then.180
  %149 = load i32, i32* %frac162, align 4
  %sub197 = sub nsw i32 0, %149
  store i32 %sub197, i32* %frac162, align 4
  store i32 1, i32* %reverse163, align 4
  br label %if.end.199

if.else.198:                                      ; preds = %if.then.180
  store i32 0, i32* %reverse163, align 4
  br label %if.end.199

if.end.199:                                       ; preds = %if.else.198, %if.then.196
  store i32 0, i32* %increment159, align 4
  %150 = load i32, i32* %i1, align 4
  %add200 = add nsw i32 %150, 1
  store i32 %add200, i32* %i, align 4
  br label %for.cond.201

for.cond.201:                                     ; preds = %for.inc.227, %if.end.199
  %151 = load i32, i32* %i, align 4
  %152 = load i32, i32* %i2, align 4
  %cmp202 = icmp slt i32 %151, %152
  br i1 %cmp202, label %for.body.203, label %for.end.229

for.body.203:                                     ; preds = %for.cond.201
  %153 = load i32, i32* %step161, align 4
  %154 = load i32, i32* %x1, align 4
  %add204 = add nsw i32 %154, %153
  store i32 %add204, i32* %x1, align 4
  %155 = load i32, i32* %frac162, align 4
  %156 = load i32, i32* %increment159, align 4
  %add205 = add nsw i32 %156, %155
  store i32 %add205, i32* %increment159, align 4
  %157 = load i32, i32* %increment159, align 4
  %158 = load i32, i32* %denom160, align 4
  %cmp206 = icmp sge i32 %157, %158
  br i1 %cmp206, label %if.then.207, label %if.end.212

if.then.207:                                      ; preds = %for.body.203
  %159 = load i32, i32* %denom160, align 4
  %160 = load i32, i32* %increment159, align 4
  %sub208 = sub nsw i32 %160, %159
  store i32 %sub208, i32* %increment159, align 4
  %161 = load i32, i32* %reverse163, align 4
  %tobool209 = icmp ne i32 %161, 0
  %cond210 = select i1 %tobool209, i32 -1, i32 1
  %162 = load i32, i32* %x1, align 4
  %add211 = add nsw i32 %162, %cond210
  store i32 %add211, i32* %x1, align 4
  br label %if.end.212

if.end.212:                                       ; preds = %if.then.207, %for.body.203
  %163 = load i32, i32* %reverse163, align 4
  %tobool213 = icmp ne i32 %163, 0
  br i1 %tobool213, label %land.lhs.true, label %if.else.221

land.lhs.true:                                    ; preds = %if.end.212
  %164 = load i32, i32* %increment159, align 4
  %cmp214 = icmp ne i32 %164, 0
  br i1 %cmp214, label %if.then.215, label %if.else.221

if.then.215:                                      ; preds = %land.lhs.true
  %165 = load i32, i32* %x1, align 4
  %sub216 = sub nsw i32 %165, 1
  %166 = load i32, i32* %i, align 4
  %idxprom217 = sext i32 %166 to i64
  %167 = load %struct._GimpBlob*, %struct._GimpBlob** %b.addr, align 8
  %data218 = getelementptr inbounds %struct._GimpBlob, %struct._GimpBlob* %167, i32 0, i32 2
  %arrayidx219 = getelementptr inbounds [1 x %struct._GimpBlobSpan], [1 x %struct._GimpBlobSpan]* %data218, i32 0, i64 %idxprom217
  %right220 = getelementptr inbounds %struct._GimpBlobSpan, %struct._GimpBlobSpan* %arrayidx219, i32 0, i32 1
  store i32 %sub216, i32* %right220, align 4
  br label %if.end.226

if.else.221:                                      ; preds = %land.lhs.true, %if.end.212
  %168 = load i32, i32* %x1, align 4
  %169 = load i32, i32* %i, align 4
  %idxprom222 = sext i32 %169 to i64
  %170 = load %struct._GimpBlob*, %struct._GimpBlob** %b.addr, align 8
  %data223 = getelementptr inbounds %struct._GimpBlob, %struct._GimpBlob* %170, i32 0, i32 2
  %arrayidx224 = getelementptr inbounds [1 x %struct._GimpBlobSpan], [1 x %struct._GimpBlobSpan]* %data223, i32 0, i64 %idxprom222
  %right225 = getelementptr inbounds %struct._GimpBlobSpan, %struct._GimpBlobSpan* %arrayidx224, i32 0, i32 1
  store i32 %168, i32* %right225, align 4
  br label %if.end.226

if.end.226:                                       ; preds = %if.else.221, %if.then.215
  br label %for.inc.227

for.inc.227:                                      ; preds = %if.end.226
  %171 = load i32, i32* %i, align 4
  %inc228 = add nsw i32 %171, 1
  store i32 %inc228, i32* %i, align 4
  br label %for.cond.201

for.end.229:                                      ; preds = %for.cond.201
  br label %if.end.230

if.end.230:                                       ; preds = %for.end.229, %while.end.177
  %172 = load i32, i32* %i2, align 4
  %sub231 = sub nsw i32 %172, 1
  store i32 %sub231, i32* %i1, align 4
  br label %if.end.232

if.end.232:                                       ; preds = %if.end.230, %for.body.152
  br label %for.inc.233

for.inc.233:                                      ; preds = %if.end.232
  %173 = load i32, i32* %i1, align 4
  %inc234 = add nsw i32 %173, 1
  store i32 %inc234, i32* %i1, align 4
  br label %for.cond.148

for.end.235:                                      ; preds = %for.cond.148
  ret void
}

declare void @g_free(i8*) #1

; Function Attrs: nounwind uwtable
define %struct._GimpBlob* @gimp_blob_square(double %xc, double %yc, double %xp, double %yp, double %xq, double %yq) #0 {
entry:
  %xc.addr = alloca double, align 8
  %yc.addr = alloca double, align 8
  %xp.addr = alloca double, align 8
  %yp.addr = alloca double, align 8
  %xq.addr = alloca double, align 8
  %yq.addr = alloca double, align 8
  %points = alloca [4 x %struct._GimpBlobPoint], align 16
  store double %xc, double* %xc.addr, align 8
  store double %yc, double* %yc.addr, align 8
  store double %xp, double* %xp.addr, align 8
  store double %yp, double* %yp.addr, align 8
  store double %xq, double* %xq.addr, align 8
  store double %yq, double* %yq.addr, align 8
  %0 = load double, double* %xp.addr, align 8
  %1 = load double, double* %yq.addr, align 8
  %mul = fmul double %0, %1
  %2 = load double, double* %yq.addr, align 8
  %3 = load double, double* %xp.addr, align 8
  %mul1 = fmul double %2, %3
  %sub = fsub double %mul, %mul1
  %cmp = fcmp olt double %sub, 0.000000e+00
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load double, double* %xq.addr, align 8
  %sub2 = fsub double -0.000000e+00, %4
  store double %sub2, double* %xq.addr, align 8
  %5 = load double, double* %yq.addr, align 8
  %sub3 = fsub double -0.000000e+00, %5
  store double %sub3, double* %yq.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %6 = load double, double* %xc.addr, align 8
  %7 = load double, double* %xp.addr, align 8
  %add = fadd double %6, %7
  %8 = load double, double* %xq.addr, align 8
  %add4 = fadd double %add, %8
  %conv = fptosi double %add4 to i32
  %arrayidx = getelementptr inbounds [4 x %struct._GimpBlobPoint], [4 x %struct._GimpBlobPoint]* %points, i32 0, i64 0
  %x = getelementptr inbounds %struct._GimpBlobPoint, %struct._GimpBlobPoint* %arrayidx, i32 0, i32 0
  store i32 %conv, i32* %x, align 4
  %9 = load double, double* %yc.addr, align 8
  %10 = load double, double* %yp.addr, align 8
  %add5 = fadd double %9, %10
  %11 = load double, double* %yq.addr, align 8
  %add6 = fadd double %add5, %11
  %conv7 = fptosi double %add6 to i32
  %arrayidx8 = getelementptr inbounds [4 x %struct._GimpBlobPoint], [4 x %struct._GimpBlobPoint]* %points, i32 0, i64 0
  %y = getelementptr inbounds %struct._GimpBlobPoint, %struct._GimpBlobPoint* %arrayidx8, i32 0, i32 1
  store i32 %conv7, i32* %y, align 4
  %12 = load double, double* %xc.addr, align 8
  %13 = load double, double* %xp.addr, align 8
  %add9 = fadd double %12, %13
  %14 = load double, double* %xq.addr, align 8
  %sub10 = fsub double %add9, %14
  %conv11 = fptosi double %sub10 to i32
  %arrayidx12 = getelementptr inbounds [4 x %struct._GimpBlobPoint], [4 x %struct._GimpBlobPoint]* %points, i32 0, i64 1
  %x13 = getelementptr inbounds %struct._GimpBlobPoint, %struct._GimpBlobPoint* %arrayidx12, i32 0, i32 0
  store i32 %conv11, i32* %x13, align 4
  %15 = load double, double* %yc.addr, align 8
  %16 = load double, double* %yp.addr, align 8
  %add14 = fadd double %15, %16
  %17 = load double, double* %yq.addr, align 8
  %sub15 = fsub double %add14, %17
  %conv16 = fptosi double %sub15 to i32
  %arrayidx17 = getelementptr inbounds [4 x %struct._GimpBlobPoint], [4 x %struct._GimpBlobPoint]* %points, i32 0, i64 1
  %y18 = getelementptr inbounds %struct._GimpBlobPoint, %struct._GimpBlobPoint* %arrayidx17, i32 0, i32 1
  store i32 %conv16, i32* %y18, align 4
  %18 = load double, double* %xc.addr, align 8
  %19 = load double, double* %xp.addr, align 8
  %sub19 = fsub double %18, %19
  %20 = load double, double* %xq.addr, align 8
  %sub20 = fsub double %sub19, %20
  %conv21 = fptosi double %sub20 to i32
  %arrayidx22 = getelementptr inbounds [4 x %struct._GimpBlobPoint], [4 x %struct._GimpBlobPoint]* %points, i32 0, i64 2
  %x23 = getelementptr inbounds %struct._GimpBlobPoint, %struct._GimpBlobPoint* %arrayidx22, i32 0, i32 0
  store i32 %conv21, i32* %x23, align 4
  %21 = load double, double* %yc.addr, align 8
  %22 = load double, double* %yp.addr, align 8
  %sub24 = fsub double %21, %22
  %23 = load double, double* %yq.addr, align 8
  %sub25 = fsub double %sub24, %23
  %conv26 = fptosi double %sub25 to i32
  %arrayidx27 = getelementptr inbounds [4 x %struct._GimpBlobPoint], [4 x %struct._GimpBlobPoint]* %points, i32 0, i64 2
  %y28 = getelementptr inbounds %struct._GimpBlobPoint, %struct._GimpBlobPoint* %arrayidx27, i32 0, i32 1
  store i32 %conv26, i32* %y28, align 4
  %24 = load double, double* %xc.addr, align 8
  %25 = load double, double* %xp.addr, align 8
  %sub29 = fsub double %24, %25
  %26 = load double, double* %xq.addr, align 8
  %add30 = fadd double %sub29, %26
  %conv31 = fptosi double %add30 to i32
  %arrayidx32 = getelementptr inbounds [4 x %struct._GimpBlobPoint], [4 x %struct._GimpBlobPoint]* %points, i32 0, i64 3
  %x33 = getelementptr inbounds %struct._GimpBlobPoint, %struct._GimpBlobPoint* %arrayidx32, i32 0, i32 0
  store i32 %conv31, i32* %x33, align 4
  %27 = load double, double* %yc.addr, align 8
  %28 = load double, double* %yp.addr, align 8
  %sub34 = fsub double %27, %28
  %29 = load double, double* %yq.addr, align 8
  %add35 = fadd double %sub34, %29
  %conv36 = fptosi double %add35 to i32
  %arrayidx37 = getelementptr inbounds [4 x %struct._GimpBlobPoint], [4 x %struct._GimpBlobPoint]* %points, i32 0, i64 3
  %y38 = getelementptr inbounds %struct._GimpBlobPoint, %struct._GimpBlobPoint* %arrayidx37, i32 0, i32 1
  store i32 %conv36, i32* %y38, align 4
  %arraydecay = getelementptr inbounds [4 x %struct._GimpBlobPoint], [4 x %struct._GimpBlobPoint]* %points, i32 0, i32 0
  %call = call %struct._GimpBlob* @gimp_blob_polygon(%struct._GimpBlobPoint* %arraydecay, i32 4)
  ret %struct._GimpBlob* %call
}

; Function Attrs: nounwind uwtable
define %struct._GimpBlob* @gimp_blob_diamond(double %xc, double %yc, double %xp, double %yp, double %xq, double %yq) #0 {
entry:
  %xc.addr = alloca double, align 8
  %yc.addr = alloca double, align 8
  %xp.addr = alloca double, align 8
  %yp.addr = alloca double, align 8
  %xq.addr = alloca double, align 8
  %yq.addr = alloca double, align 8
  %points = alloca [4 x %struct._GimpBlobPoint], align 16
  store double %xc, double* %xc.addr, align 8
  store double %yc, double* %yc.addr, align 8
  store double %xp, double* %xp.addr, align 8
  store double %yp, double* %yp.addr, align 8
  store double %xq, double* %xq.addr, align 8
  store double %yq, double* %yq.addr, align 8
  %0 = load double, double* %xp.addr, align 8
  %1 = load double, double* %yq.addr, align 8
  %mul = fmul double %0, %1
  %2 = load double, double* %yq.addr, align 8
  %3 = load double, double* %xp.addr, align 8
  %mul1 = fmul double %2, %3
  %sub = fsub double %mul, %mul1
  %cmp = fcmp olt double %sub, 0.000000e+00
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load double, double* %xq.addr, align 8
  %sub2 = fsub double -0.000000e+00, %4
  store double %sub2, double* %xq.addr, align 8
  %5 = load double, double* %yq.addr, align 8
  %sub3 = fsub double -0.000000e+00, %5
  store double %sub3, double* %yq.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %6 = load double, double* %xc.addr, align 8
  %7 = load double, double* %xp.addr, align 8
  %add = fadd double %6, %7
  %conv = fptosi double %add to i32
  %arrayidx = getelementptr inbounds [4 x %struct._GimpBlobPoint], [4 x %struct._GimpBlobPoint]* %points, i32 0, i64 0
  %x = getelementptr inbounds %struct._GimpBlobPoint, %struct._GimpBlobPoint* %arrayidx, i32 0, i32 0
  store i32 %conv, i32* %x, align 4
  %8 = load double, double* %yc.addr, align 8
  %9 = load double, double* %yp.addr, align 8
  %add4 = fadd double %8, %9
  %conv5 = fptosi double %add4 to i32
  %arrayidx6 = getelementptr inbounds [4 x %struct._GimpBlobPoint], [4 x %struct._GimpBlobPoint]* %points, i32 0, i64 0
  %y = getelementptr inbounds %struct._GimpBlobPoint, %struct._GimpBlobPoint* %arrayidx6, i32 0, i32 1
  store i32 %conv5, i32* %y, align 4
  %10 = load double, double* %xc.addr, align 8
  %11 = load double, double* %xq.addr, align 8
  %sub7 = fsub double %10, %11
  %conv8 = fptosi double %sub7 to i32
  %arrayidx9 = getelementptr inbounds [4 x %struct._GimpBlobPoint], [4 x %struct._GimpBlobPoint]* %points, i32 0, i64 1
  %x10 = getelementptr inbounds %struct._GimpBlobPoint, %struct._GimpBlobPoint* %arrayidx9, i32 0, i32 0
  store i32 %conv8, i32* %x10, align 4
  %12 = load double, double* %yc.addr, align 8
  %13 = load double, double* %yq.addr, align 8
  %sub11 = fsub double %12, %13
  %conv12 = fptosi double %sub11 to i32
  %arrayidx13 = getelementptr inbounds [4 x %struct._GimpBlobPoint], [4 x %struct._GimpBlobPoint]* %points, i32 0, i64 1
  %y14 = getelementptr inbounds %struct._GimpBlobPoint, %struct._GimpBlobPoint* %arrayidx13, i32 0, i32 1
  store i32 %conv12, i32* %y14, align 4
  %14 = load double, double* %xc.addr, align 8
  %15 = load double, double* %xp.addr, align 8
  %sub15 = fsub double %14, %15
  %conv16 = fptosi double %sub15 to i32
  %arrayidx17 = getelementptr inbounds [4 x %struct._GimpBlobPoint], [4 x %struct._GimpBlobPoint]* %points, i32 0, i64 2
  %x18 = getelementptr inbounds %struct._GimpBlobPoint, %struct._GimpBlobPoint* %arrayidx17, i32 0, i32 0
  store i32 %conv16, i32* %x18, align 4
  %16 = load double, double* %yc.addr, align 8
  %17 = load double, double* %yp.addr, align 8
  %sub19 = fsub double %16, %17
  %conv20 = fptosi double %sub19 to i32
  %arrayidx21 = getelementptr inbounds [4 x %struct._GimpBlobPoint], [4 x %struct._GimpBlobPoint]* %points, i32 0, i64 2
  %y22 = getelementptr inbounds %struct._GimpBlobPoint, %struct._GimpBlobPoint* %arrayidx21, i32 0, i32 1
  store i32 %conv20, i32* %y22, align 4
  %18 = load double, double* %xc.addr, align 8
  %19 = load double, double* %xq.addr, align 8
  %add23 = fadd double %18, %19
  %conv24 = fptosi double %add23 to i32
  %arrayidx25 = getelementptr inbounds [4 x %struct._GimpBlobPoint], [4 x %struct._GimpBlobPoint]* %points, i32 0, i64 3
  %x26 = getelementptr inbounds %struct._GimpBlobPoint, %struct._GimpBlobPoint* %arrayidx25, i32 0, i32 0
  store i32 %conv24, i32* %x26, align 4
  %20 = load double, double* %yc.addr, align 8
  %21 = load double, double* %yq.addr, align 8
  %add27 = fadd double %20, %21
  %conv28 = fptosi double %add27 to i32
  %arrayidx29 = getelementptr inbounds [4 x %struct._GimpBlobPoint], [4 x %struct._GimpBlobPoint]* %points, i32 0, i64 3
  %y30 = getelementptr inbounds %struct._GimpBlobPoint, %struct._GimpBlobPoint* %arrayidx29, i32 0, i32 1
  store i32 %conv28, i32* %y30, align 4
  %arraydecay = getelementptr inbounds [4 x %struct._GimpBlobPoint], [4 x %struct._GimpBlobPoint]* %points, i32 0, i32 0
  %call = call %struct._GimpBlob* @gimp_blob_polygon(%struct._GimpBlobPoint* %arraydecay, i32 4)
  ret %struct._GimpBlob* %call
}

; Function Attrs: nounwind uwtable
define %struct._GimpBlob* @gimp_blob_ellipse(double %xc, double %yc, double %xp, double %yp, double %xq, double %yq) #0 {
entry:
  %xc.addr = alloca double, align 8
  %yc.addr = alloca double, align 8
  %xp.addr = alloca double, align 8
  %yp.addr = alloca double, align 8
  %xq.addr = alloca double, align 8
  %yq.addr = alloca double, align 8
  %result = alloca %struct._GimpBlob*, align 8
  %present = alloca i32*, align 8
  %i = alloca i32, align 4
  %r1 = alloca double, align 8
  %r2 = alloca double, align 8
  %maxy = alloca i32, align 4
  %miny = alloca i32, align 4
  %step = alloca i32, align 4
  %max_radius = alloca double, align 8
  %xc_shift = alloca i32, align 4
  %yc_shift = alloca i32, align 4
  %xp_shift = alloca i32, align 4
  %yp_shift = alloca i32, align 4
  %xq_shift = alloca i32, align 4
  %yq_shift = alloca i32, align 4
  %xc_base = alloca i32, align 4
  %yc_base = alloca i32, align 4
  %s = alloca i32, align 4
  %c = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %dydi = alloca i32, align 4
  store double %xc, double* %xc.addr, align 8
  store double %yc, double* %yc.addr, align 8
  store double %xp, double* %xp.addr, align 8
  store double %yp, double* %yp.addr, align 8
  store double %xq, double* %xq.addr, align 8
  store double %yq, double* %yq.addr, align 8
  %0 = load i32, i32* @trig_initialized, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 1, i32* @trig_initialized, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %1 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %1, 256
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4
  %conv = sitofp i32 %2 to double
  %mul = fmul double %conv, 0x3F9921FB54442D18
  %call = call double @sin(double %mul) #4
  %mul1 = fmul double %call, 4.096000e+03
  %add = fadd double 5.000000e-01, %mul1
  %conv2 = fptosi double %add to i32
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds [256 x i32], [256 x i32]* @trig_table, i32 0, i64 %idxprom
  store i32 %conv2, i32* %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %4 = load i32, i32* %i, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end

if.end:                                           ; preds = %for.end, %entry
  %5 = load double, double* %xp.addr, align 8
  %6 = load double, double* %yq.addr, align 8
  %mul3 = fmul double %5, %6
  %7 = load double, double* %yq.addr, align 8
  %8 = load double, double* %xp.addr, align 8
  %mul4 = fmul double %7, %8
  %sub = fsub double %mul3, %mul4
  %cmp5 = fcmp olt double %sub, 0.000000e+00
  br i1 %cmp5, label %if.then.7, label %if.end.10

if.then.7:                                        ; preds = %if.end
  %9 = load double, double* %xq.addr, align 8
  %sub8 = fsub double -0.000000e+00, %9
  store double %sub8, double* %xq.addr, align 8
  %10 = load double, double* %yq.addr, align 8
  %sub9 = fsub double -0.000000e+00, %10
  store double %sub9, double* %yq.addr, align 8
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.7, %if.end
  %11 = load double, double* %yc.addr, align 8
  %12 = load double, double* %yp.addr, align 8
  %call11 = call double @fabs(double %12) #5
  %add12 = fadd double %11, %call11
  %13 = load double, double* %yq.addr, align 8
  %call13 = call double @fabs(double %13) #5
  %add14 = fadd double %add12, %call13
  %call15 = call double @ceil(double %add14) #5
  %conv16 = fptosi double %call15 to i32
  store i32 %conv16, i32* %maxy, align 4
  %14 = load double, double* %yc.addr, align 8
  %15 = load double, double* %yp.addr, align 8
  %call17 = call double @fabs(double %15) #5
  %sub18 = fsub double %14, %call17
  %16 = load double, double* %yq.addr, align 8
  %call19 = call double @fabs(double %16) #5
  %sub20 = fsub double %sub18, %call19
  %call21 = call double @floor(double %sub20) #5
  %conv22 = fptosi double %call21 to i32
  store i32 %conv22, i32* %miny, align 4
  %17 = load i32, i32* %miny, align 4
  %18 = load i32, i32* %maxy, align 4
  %19 = load i32, i32* %miny, align 4
  %sub23 = sub nsw i32 %18, %19
  %add24 = add nsw i32 %sub23, 1
  %call25 = call %struct._GimpBlob* @gimp_blob_new(i32 %17, i32 %add24)
  store %struct._GimpBlob* %call25, %struct._GimpBlob** %result, align 8
  %20 = load %struct._GimpBlob*, %struct._GimpBlob** %result, align 8
  %height = getelementptr inbounds %struct._GimpBlob, %struct._GimpBlob* %20, i32 0, i32 1
  %21 = load i32, i32* %height, align 4
  %conv26 = sext i32 %21 to i64
  %call27 = call noalias i8* @g_malloc0_n(i64 %conv26, i64 4)
  %22 = bitcast i8* %call27 to i32*
  store i32* %22, i32** %present, align 8
  %23 = load double, double* %xc.addr, align 8
  %call28 = call double @floor(double %23) #5
  %conv29 = fptosi double %call28 to i32
  store i32 %conv29, i32* %xc_base, align 4
  %24 = load double, double* %yc.addr, align 8
  %call30 = call double @floor(double %24) #5
  %conv31 = fptosi double %call30 to i32
  store i32 %conv31, i32* %yc_base, align 4
  %25 = load double, double* %xp.addr, align 8
  %26 = load double, double* %xp.addr, align 8
  %mul32 = fmul double %25, %26
  %27 = load double, double* %yp.addr, align 8
  %28 = load double, double* %yp.addr, align 8
  %mul33 = fmul double %27, %28
  %add34 = fadd double %mul32, %mul33
  %call35 = call double @sqrt(double %add34) #4
  store double %call35, double* %r1, align 8
  %29 = load double, double* %xq.addr, align 8
  %30 = load double, double* %xq.addr, align 8
  %mul36 = fmul double %29, %30
  %31 = load double, double* %yq.addr, align 8
  %32 = load double, double* %yq.addr, align 8
  %mul37 = fmul double %31, %32
  %add38 = fadd double %mul36, %mul37
  %call39 = call double @sqrt(double %add38) #4
  store double %call39, double* %r2, align 8
  %33 = load double, double* %r1, align 8
  %34 = load double, double* %r2, align 8
  %cmp40 = fcmp ogt double %33, %34
  br i1 %cmp40, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.10
  %35 = load double, double* %r1, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.10
  %36 = load double, double* %r2, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ %35, %cond.true ], [ %36, %cond.false ]
  store double %cond, double* %max_radius, align 8
  store i32 256, i32* %step, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %cond.end
  %37 = load i32, i32* %step, align 4
  %cmp42 = icmp sgt i32 %37, 1
  br i1 %cmp42, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %38 = load i32, i32* %step, align 4
  %div = sdiv i32 256, %38
  %conv44 = sitofp i32 %div to double
  %39 = load double, double* %max_radius, align 8
  %mul45 = fmul double 4.000000e+00, %39
  %cmp46 = fcmp olt double %conv44, %mul45
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %40 = phi i1 [ false, %while.cond ], [ %cmp46, %land.rhs ]
  br i1 %40, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %41 = load i32, i32* %step, align 4
  %shr = ashr i32 %41, 1
  store i32 %shr, i32* %step, align 4
  br label %while.cond

while.end:                                        ; preds = %land.end
  %42 = load double, double* %xc.addr, align 8
  %43 = load i32, i32* %xc_base, align 4
  %conv48 = sitofp i32 %43 to double
  %sub49 = fsub double %42, %conv48
  %mul50 = fmul double %sub49, 1.638400e+04
  %add51 = fadd double 5.000000e-01, %mul50
  %conv52 = fptosi double %add51 to i32
  store i32 %conv52, i32* %xc_shift, align 4
  %44 = load double, double* %yc.addr, align 8
  %45 = load i32, i32* %yc_base, align 4
  %conv53 = sitofp i32 %45 to double
  %sub54 = fsub double %44, %conv53
  %mul55 = fmul double %sub54, 1.638400e+04
  %add56 = fadd double 5.000000e-01, %mul55
  %conv57 = fptosi double %add56 to i32
  store i32 %conv57, i32* %yc_shift, align 4
  %46 = load double, double* %xp.addr, align 8
  %mul58 = fmul double %46, 4.000000e+00
  %add59 = fadd double 5.000000e-01, %mul58
  %conv60 = fptosi double %add59 to i32
  store i32 %conv60, i32* %xp_shift, align 4
  %47 = load double, double* %yp.addr, align 8
  %mul61 = fmul double %47, 4.000000e+00
  %add62 = fadd double 5.000000e-01, %mul61
  %conv63 = fptosi double %add62 to i32
  store i32 %conv63, i32* %yp_shift, align 4
  %48 = load double, double* %xq.addr, align 8
  %mul64 = fmul double %48, 4.000000e+00
  %add65 = fadd double 5.000000e-01, %mul64
  %conv66 = fptosi double %add65 to i32
  store i32 %conv66, i32* %xq_shift, align 4
  %49 = load double, double* %yq.addr, align 8
  %mul67 = fmul double %49, 4.000000e+00
  %add68 = fadd double 5.000000e-01, %mul67
  %conv69 = fptosi double %add68 to i32
  store i32 %conv69, i32* %yq_shift, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.70

for.cond.70:                                      ; preds = %for.inc.164, %while.end
  %50 = load i32, i32* %i, align 4
  %cmp71 = icmp slt i32 %50, 256
  br i1 %cmp71, label %for.body.73, label %for.end.166

for.body.73:                                      ; preds = %for.cond.70
  %51 = load i32, i32* %i, align 4
  %idxprom74 = sext i32 %51 to i64
  %arrayidx75 = getelementptr inbounds [256 x i32], [256 x i32]* @trig_table, i32 0, i64 %idxprom74
  %52 = load i32, i32* %arrayidx75, align 4
  store i32 %52, i32* %s, align 4
  %53 = load i32, i32* %i, align 4
  %sub76 = sub nsw i32 320, %53
  %rem = srem i32 %sub76, 256
  %idxprom77 = sext i32 %rem to i64
  %arrayidx78 = getelementptr inbounds [256 x i32], [256 x i32]* @trig_table, i32 0, i64 %idxprom77
  %54 = load i32, i32* %arrayidx78, align 4
  store i32 %54, i32* %c, align 4
  %55 = load i32, i32* %xc_shift, align 4
  %56 = load i32, i32* %c, align 4
  %57 = load i32, i32* %xp_shift, align 4
  %mul79 = mul nsw i32 %56, %57
  %add80 = add nsw i32 %55, %mul79
  %58 = load i32, i32* %s, align 4
  %59 = load i32, i32* %xq_shift, align 4
  %mul81 = mul nsw i32 %58, %59
  %add82 = add nsw i32 %add80, %mul81
  %add83 = add nsw i32 %add82, 8192
  %shr84 = ashr i32 %add83, 14
  %60 = load i32, i32* %xc_base, align 4
  %add85 = add nsw i32 %shr84, %60
  store i32 %add85, i32* %x, align 4
  %61 = load i32, i32* %yc_shift, align 4
  %62 = load i32, i32* %c, align 4
  %63 = load i32, i32* %yp_shift, align 4
  %mul86 = mul nsw i32 %62, %63
  %add87 = add nsw i32 %61, %mul86
  %64 = load i32, i32* %s, align 4
  %65 = load i32, i32* %yq_shift, align 4
  %mul88 = mul nsw i32 %64, %65
  %add89 = add nsw i32 %add87, %mul88
  %add90 = add nsw i32 %add89, 8192
  %shr91 = ashr i32 %add90, 14
  %66 = load i32, i32* %yc_base, align 4
  %add92 = add nsw i32 %shr91, %66
  %67 = load %struct._GimpBlob*, %struct._GimpBlob** %result, align 8
  %y93 = getelementptr inbounds %struct._GimpBlob, %struct._GimpBlob* %67, i32 0, i32 0
  %68 = load i32, i32* %y93, align 4
  %sub94 = sub nsw i32 %add92, %68
  store i32 %sub94, i32* %y, align 4
  %69 = load i32, i32* %c, align 4
  %70 = load i32, i32* %yq_shift, align 4
  %mul95 = mul nsw i32 %69, %70
  %71 = load i32, i32* %s, align 4
  %72 = load i32, i32* %yp_shift, align 4
  %mul96 = mul nsw i32 %71, %72
  %sub97 = sub nsw i32 %mul95, %mul96
  store i32 %sub97, i32* %dydi, align 4
  %73 = load i32, i32* %dydi, align 4
  %cmp98 = icmp sle i32 %73, 0
  br i1 %cmp98, label %if.then.100, label %if.end.128

if.then.100:                                      ; preds = %for.body.73
  %74 = load i32, i32* %y, align 4
  %idxprom101 = sext i32 %74 to i64
  %75 = load i32*, i32** %present, align 8
  %arrayidx102 = getelementptr inbounds i32, i32* %75, i64 %idxprom101
  %76 = load i32, i32* %arrayidx102, align 4
  %and = and i32 %76, 1
  %tobool103 = icmp ne i32 %and, 0
  br i1 %tobool103, label %if.then.104, label %if.else

if.then.104:                                      ; preds = %if.then.100
  %77 = load i32, i32* %y, align 4
  %idxprom105 = sext i32 %77 to i64
  %78 = load %struct._GimpBlob*, %struct._GimpBlob** %result, align 8
  %data = getelementptr inbounds %struct._GimpBlob, %struct._GimpBlob* %78, i32 0, i32 2
  %arrayidx106 = getelementptr inbounds [1 x %struct._GimpBlobSpan], [1 x %struct._GimpBlobSpan]* %data, i32 0, i64 %idxprom105
  %left = getelementptr inbounds %struct._GimpBlobSpan, %struct._GimpBlobSpan* %arrayidx106, i32 0, i32 0
  %79 = load i32, i32* %left, align 4
  %80 = load i32, i32* %x, align 4
  %cmp107 = icmp slt i32 %79, %80
  br i1 %cmp107, label %cond.true.109, label %cond.false.114

cond.true.109:                                    ; preds = %if.then.104
  %81 = load i32, i32* %y, align 4
  %idxprom110 = sext i32 %81 to i64
  %82 = load %struct._GimpBlob*, %struct._GimpBlob** %result, align 8
  %data111 = getelementptr inbounds %struct._GimpBlob, %struct._GimpBlob* %82, i32 0, i32 2
  %arrayidx112 = getelementptr inbounds [1 x %struct._GimpBlobSpan], [1 x %struct._GimpBlobSpan]* %data111, i32 0, i64 %idxprom110
  %left113 = getelementptr inbounds %struct._GimpBlobSpan, %struct._GimpBlobSpan* %arrayidx112, i32 0, i32 0
  %83 = load i32, i32* %left113, align 4
  br label %cond.end.115

cond.false.114:                                   ; preds = %if.then.104
  %84 = load i32, i32* %x, align 4
  br label %cond.end.115

cond.end.115:                                     ; preds = %cond.false.114, %cond.true.109
  %cond116 = phi i32 [ %83, %cond.true.109 ], [ %84, %cond.false.114 ]
  %85 = load i32, i32* %y, align 4
  %idxprom117 = sext i32 %85 to i64
  %86 = load %struct._GimpBlob*, %struct._GimpBlob** %result, align 8
  %data118 = getelementptr inbounds %struct._GimpBlob, %struct._GimpBlob* %86, i32 0, i32 2
  %arrayidx119 = getelementptr inbounds [1 x %struct._GimpBlobSpan], [1 x %struct._GimpBlobSpan]* %data118, i32 0, i64 %idxprom117
  %left120 = getelementptr inbounds %struct._GimpBlobSpan, %struct._GimpBlobSpan* %arrayidx119, i32 0, i32 0
  store i32 %cond116, i32* %left120, align 4
  br label %if.end.127

if.else:                                          ; preds = %if.then.100
  %87 = load i32, i32* %y, align 4
  %idxprom121 = sext i32 %87 to i64
  %88 = load i32*, i32** %present, align 8
  %arrayidx122 = getelementptr inbounds i32, i32* %88, i64 %idxprom121
  %89 = load i32, i32* %arrayidx122, align 4
  %or = or i32 %89, 1
  store i32 %or, i32* %arrayidx122, align 4
  %90 = load i32, i32* %x, align 4
  %91 = load i32, i32* %y, align 4
  %idxprom123 = sext i32 %91 to i64
  %92 = load %struct._GimpBlob*, %struct._GimpBlob** %result, align 8
  %data124 = getelementptr inbounds %struct._GimpBlob, %struct._GimpBlob* %92, i32 0, i32 2
  %arrayidx125 = getelementptr inbounds [1 x %struct._GimpBlobSpan], [1 x %struct._GimpBlobSpan]* %data124, i32 0, i64 %idxprom123
  %left126 = getelementptr inbounds %struct._GimpBlobSpan, %struct._GimpBlobSpan* %arrayidx125, i32 0, i32 0
  store i32 %90, i32* %left126, align 4
  br label %if.end.127

if.end.127:                                       ; preds = %if.else, %cond.end.115
  br label %if.end.128

if.end.128:                                       ; preds = %if.end.127, %for.body.73
  %93 = load i32, i32* %dydi, align 4
  %cmp129 = icmp sge i32 %93, 0
  br i1 %cmp129, label %if.then.131, label %if.end.163

if.then.131:                                      ; preds = %if.end.128
  %94 = load i32, i32* %y, align 4
  %idxprom132 = sext i32 %94 to i64
  %95 = load i32*, i32** %present, align 8
  %arrayidx133 = getelementptr inbounds i32, i32* %95, i64 %idxprom132
  %96 = load i32, i32* %arrayidx133, align 4
  %and134 = and i32 %96, 2
  %tobool135 = icmp ne i32 %and134, 0
  br i1 %tobool135, label %if.then.136, label %if.else.154

if.then.136:                                      ; preds = %if.then.131
  %97 = load i32, i32* %y, align 4
  %idxprom137 = sext i32 %97 to i64
  %98 = load %struct._GimpBlob*, %struct._GimpBlob** %result, align 8
  %data138 = getelementptr inbounds %struct._GimpBlob, %struct._GimpBlob* %98, i32 0, i32 2
  %arrayidx139 = getelementptr inbounds [1 x %struct._GimpBlobSpan], [1 x %struct._GimpBlobSpan]* %data138, i32 0, i64 %idxprom137
  %right = getelementptr inbounds %struct._GimpBlobSpan, %struct._GimpBlobSpan* %arrayidx139, i32 0, i32 1
  %99 = load i32, i32* %right, align 4
  %100 = load i32, i32* %x, align 4
  %cmp140 = icmp sgt i32 %99, %100
  br i1 %cmp140, label %cond.true.142, label %cond.false.147

cond.true.142:                                    ; preds = %if.then.136
  %101 = load i32, i32* %y, align 4
  %idxprom143 = sext i32 %101 to i64
  %102 = load %struct._GimpBlob*, %struct._GimpBlob** %result, align 8
  %data144 = getelementptr inbounds %struct._GimpBlob, %struct._GimpBlob* %102, i32 0, i32 2
  %arrayidx145 = getelementptr inbounds [1 x %struct._GimpBlobSpan], [1 x %struct._GimpBlobSpan]* %data144, i32 0, i64 %idxprom143
  %right146 = getelementptr inbounds %struct._GimpBlobSpan, %struct._GimpBlobSpan* %arrayidx145, i32 0, i32 1
  %103 = load i32, i32* %right146, align 4
  br label %cond.end.148

cond.false.147:                                   ; preds = %if.then.136
  %104 = load i32, i32* %x, align 4
  br label %cond.end.148

cond.end.148:                                     ; preds = %cond.false.147, %cond.true.142
  %cond149 = phi i32 [ %103, %cond.true.142 ], [ %104, %cond.false.147 ]
  %105 = load i32, i32* %y, align 4
  %idxprom150 = sext i32 %105 to i64
  %106 = load %struct._GimpBlob*, %struct._GimpBlob** %result, align 8
  %data151 = getelementptr inbounds %struct._GimpBlob, %struct._GimpBlob* %106, i32 0, i32 2
  %arrayidx152 = getelementptr inbounds [1 x %struct._GimpBlobSpan], [1 x %struct._GimpBlobSpan]* %data151, i32 0, i64 %idxprom150
  %right153 = getelementptr inbounds %struct._GimpBlobSpan, %struct._GimpBlobSpan* %arrayidx152, i32 0, i32 1
  store i32 %cond149, i32* %right153, align 4
  br label %if.end.162

if.else.154:                                      ; preds = %if.then.131
  %107 = load i32, i32* %y, align 4
  %idxprom155 = sext i32 %107 to i64
  %108 = load i32*, i32** %present, align 8
  %arrayidx156 = getelementptr inbounds i32, i32* %108, i64 %idxprom155
  %109 = load i32, i32* %arrayidx156, align 4
  %or157 = or i32 %109, 2
  store i32 %or157, i32* %arrayidx156, align 4
  %110 = load i32, i32* %x, align 4
  %111 = load i32, i32* %y, align 4
  %idxprom158 = sext i32 %111 to i64
  %112 = load %struct._GimpBlob*, %struct._GimpBlob** %result, align 8
  %data159 = getelementptr inbounds %struct._GimpBlob, %struct._GimpBlob* %112, i32 0, i32 2
  %arrayidx160 = getelementptr inbounds [1 x %struct._GimpBlobSpan], [1 x %struct._GimpBlobSpan]* %data159, i32 0, i64 %idxprom158
  %right161 = getelementptr inbounds %struct._GimpBlobSpan, %struct._GimpBlobSpan* %arrayidx160, i32 0, i32 1
  store i32 %110, i32* %right161, align 4
  br label %if.end.162

if.end.162:                                       ; preds = %if.else.154, %cond.end.148
  br label %if.end.163

if.end.163:                                       ; preds = %if.end.162, %if.end.128
  br label %for.inc.164

for.inc.164:                                      ; preds = %if.end.163
  %113 = load i32, i32* %step, align 4
  %114 = load i32, i32* %i, align 4
  %add165 = add nsw i32 %114, %113
  store i32 %add165, i32* %i, align 4
  br label %for.cond.70

for.end.166:                                      ; preds = %for.cond.70
  %115 = load %struct._GimpBlob*, %struct._GimpBlob** %result, align 8
  %116 = load i32*, i32** %present, align 8
  call void @gimp_blob_fill(%struct._GimpBlob* %115, i32* %116)
  %117 = load i32*, i32** %present, align 8
  %118 = bitcast i32* %117 to i8*
  call void @g_free(i8* %118)
  %119 = load %struct._GimpBlob*, %struct._GimpBlob** %result, align 8
  ret %struct._GimpBlob* %119
}

; Function Attrs: nounwind
declare double @sin(double) #2

; Function Attrs: nounwind readnone
declare double @ceil(double) #3

; Function Attrs: nounwind readnone
declare double @fabs(double) #3

; Function Attrs: nounwind readnone
declare double @floor(double) #3

; Function Attrs: nounwind
declare double @sqrt(double) #2

; Function Attrs: nounwind uwtable
define void @gimp_blob_bounds(%struct._GimpBlob* %b, i32* %x, i32* %y, i32* %width, i32* %height) #0 {
entry:
  %b.addr = alloca %struct._GimpBlob*, align 8
  %x.addr = alloca i32*, align 8
  %y.addr = alloca i32*, align 8
  %width.addr = alloca i32*, align 8
  %height.addr = alloca i32*, align 8
  %i = alloca i32, align 4
  %x0 = alloca i32, align 4
  %x1 = alloca i32, align 4
  %y0 = alloca i32, align 4
  %y1 = alloca i32, align 4
  store %struct._GimpBlob* %b, %struct._GimpBlob** %b.addr, align 8
  store i32* %x, i32** %x.addr, align 8
  store i32* %y, i32** %y.addr, align 8
  store i32* %width, i32** %width.addr, align 8
  store i32* %height, i32** %height.addr, align 8
  store i32 0, i32* %i, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load %struct._GimpBlob*, %struct._GimpBlob** %b.addr, align 8
  %height1 = getelementptr inbounds %struct._GimpBlob, %struct._GimpBlob* %1, i32 0, i32 1
  %2 = load i32, i32* %height1, align 4
  %cmp = icmp slt i32 %0, %2
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load %struct._GimpBlob*, %struct._GimpBlob** %b.addr, align 8
  %data = getelementptr inbounds %struct._GimpBlob, %struct._GimpBlob* %4, i32 0, i32 2
  %arrayidx = getelementptr inbounds [1 x %struct._GimpBlobSpan], [1 x %struct._GimpBlobSpan]* %data, i32 0, i64 %idxprom
  %left = getelementptr inbounds %struct._GimpBlobSpan, %struct._GimpBlobSpan* %arrayidx, i32 0, i32 0
  %5 = load i32, i32* %left, align 4
  %6 = load i32, i32* %i, align 4
  %idxprom2 = sext i32 %6 to i64
  %7 = load %struct._GimpBlob*, %struct._GimpBlob** %b.addr, align 8
  %data3 = getelementptr inbounds %struct._GimpBlob, %struct._GimpBlob* %7, i32 0, i32 2
  %arrayidx4 = getelementptr inbounds [1 x %struct._GimpBlobSpan], [1 x %struct._GimpBlobSpan]* %data3, i32 0, i64 %idxprom2
  %right = getelementptr inbounds %struct._GimpBlobSpan, %struct._GimpBlobSpan* %arrayidx4, i32 0, i32 1
  %8 = load i32, i32* %right, align 4
  %cmp5 = icmp sgt i32 %5, %8
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %9 = phi i1 [ false, %while.cond ], [ %cmp5, %land.rhs ]
  br i1 %9, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %10 = load i32, i32* %i, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, i32* %i, align 4
  br label %while.cond

while.end:                                        ; preds = %land.end
  %11 = load i32, i32* %i, align 4
  %12 = load %struct._GimpBlob*, %struct._GimpBlob** %b.addr, align 8
  %height6 = getelementptr inbounds %struct._GimpBlob, %struct._GimpBlob* %12, i32 0, i32 1
  %13 = load i32, i32* %height6, align 4
  %cmp7 = icmp slt i32 %11, %13
  br i1 %cmp7, label %if.then, label %if.else

if.then:                                          ; preds = %while.end
  %14 = load %struct._GimpBlob*, %struct._GimpBlob** %b.addr, align 8
  %y8 = getelementptr inbounds %struct._GimpBlob, %struct._GimpBlob* %14, i32 0, i32 0
  %15 = load i32, i32* %y8, align 4
  %16 = load i32, i32* %i, align 4
  %add = add nsw i32 %15, %16
  store i32 %add, i32* %y0, align 4
  %17 = load i32, i32* %i, align 4
  %idxprom9 = sext i32 %17 to i64
  %18 = load %struct._GimpBlob*, %struct._GimpBlob** %b.addr, align 8
  %data10 = getelementptr inbounds %struct._GimpBlob, %struct._GimpBlob* %18, i32 0, i32 2
  %arrayidx11 = getelementptr inbounds [1 x %struct._GimpBlobSpan], [1 x %struct._GimpBlobSpan]* %data10, i32 0, i64 %idxprom9
  %left12 = getelementptr inbounds %struct._GimpBlobSpan, %struct._GimpBlobSpan* %arrayidx11, i32 0, i32 0
  %19 = load i32, i32* %left12, align 4
  store i32 %19, i32* %x0, align 4
  %20 = load i32, i32* %i, align 4
  %idxprom13 = sext i32 %20 to i64
  %21 = load %struct._GimpBlob*, %struct._GimpBlob** %b.addr, align 8
  %data14 = getelementptr inbounds %struct._GimpBlob, %struct._GimpBlob* %21, i32 0, i32 2
  %arrayidx15 = getelementptr inbounds [1 x %struct._GimpBlobSpan], [1 x %struct._GimpBlobSpan]* %data14, i32 0, i64 %idxprom13
  %right16 = getelementptr inbounds %struct._GimpBlobSpan, %struct._GimpBlobSpan* %arrayidx15, i32 0, i32 1
  %22 = load i32, i32* %right16, align 4
  %add17 = add nsw i32 %22, 1
  store i32 %add17, i32* %x1, align 4
  br label %while.cond.18

while.cond.18:                                    ; preds = %cond.end.55, %if.then
  %23 = load i32, i32* %i, align 4
  %24 = load %struct._GimpBlob*, %struct._GimpBlob** %b.addr, align 8
  %height19 = getelementptr inbounds %struct._GimpBlob, %struct._GimpBlob* %24, i32 0, i32 1
  %25 = load i32, i32* %height19, align 4
  %cmp20 = icmp slt i32 %23, %25
  br i1 %cmp20, label %land.rhs.21, label %land.end.31

land.rhs.21:                                      ; preds = %while.cond.18
  %26 = load i32, i32* %i, align 4
  %idxprom22 = sext i32 %26 to i64
  %27 = load %struct._GimpBlob*, %struct._GimpBlob** %b.addr, align 8
  %data23 = getelementptr inbounds %struct._GimpBlob, %struct._GimpBlob* %27, i32 0, i32 2
  %arrayidx24 = getelementptr inbounds [1 x %struct._GimpBlobSpan], [1 x %struct._GimpBlobSpan]* %data23, i32 0, i64 %idxprom22
  %left25 = getelementptr inbounds %struct._GimpBlobSpan, %struct._GimpBlobSpan* %arrayidx24, i32 0, i32 0
  %28 = load i32, i32* %left25, align 4
  %29 = load i32, i32* %i, align 4
  %idxprom26 = sext i32 %29 to i64
  %30 = load %struct._GimpBlob*, %struct._GimpBlob** %b.addr, align 8
  %data27 = getelementptr inbounds %struct._GimpBlob, %struct._GimpBlob* %30, i32 0, i32 2
  %arrayidx28 = getelementptr inbounds [1 x %struct._GimpBlobSpan], [1 x %struct._GimpBlobSpan]* %data27, i32 0, i64 %idxprom26
  %right29 = getelementptr inbounds %struct._GimpBlobSpan, %struct._GimpBlobSpan* %arrayidx28, i32 0, i32 1
  %31 = load i32, i32* %right29, align 4
  %cmp30 = icmp sle i32 %28, %31
  br label %land.end.31

land.end.31:                                      ; preds = %land.rhs.21, %while.cond.18
  %32 = phi i1 [ false, %while.cond.18 ], [ %cmp30, %land.rhs.21 ]
  br i1 %32, label %while.body.32, label %while.end.58

while.body.32:                                    ; preds = %land.end.31
  %33 = load i32, i32* %i, align 4
  %idxprom33 = sext i32 %33 to i64
  %34 = load %struct._GimpBlob*, %struct._GimpBlob** %b.addr, align 8
  %data34 = getelementptr inbounds %struct._GimpBlob, %struct._GimpBlob* %34, i32 0, i32 2
  %arrayidx35 = getelementptr inbounds [1 x %struct._GimpBlobSpan], [1 x %struct._GimpBlobSpan]* %data34, i32 0, i64 %idxprom33
  %left36 = getelementptr inbounds %struct._GimpBlobSpan, %struct._GimpBlobSpan* %arrayidx35, i32 0, i32 0
  %35 = load i32, i32* %left36, align 4
  %36 = load i32, i32* %x0, align 4
  %cmp37 = icmp slt i32 %35, %36
  br i1 %cmp37, label %cond.true, label %cond.false

cond.true:                                        ; preds = %while.body.32
  %37 = load i32, i32* %i, align 4
  %idxprom38 = sext i32 %37 to i64
  %38 = load %struct._GimpBlob*, %struct._GimpBlob** %b.addr, align 8
  %data39 = getelementptr inbounds %struct._GimpBlob, %struct._GimpBlob* %38, i32 0, i32 2
  %arrayidx40 = getelementptr inbounds [1 x %struct._GimpBlobSpan], [1 x %struct._GimpBlobSpan]* %data39, i32 0, i64 %idxprom38
  %left41 = getelementptr inbounds %struct._GimpBlobSpan, %struct._GimpBlobSpan* %arrayidx40, i32 0, i32 0
  %39 = load i32, i32* %left41, align 4
  br label %cond.end

cond.false:                                       ; preds = %while.body.32
  %40 = load i32, i32* %x0, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %39, %cond.true ], [ %40, %cond.false ]
  store i32 %cond, i32* %x0, align 4
  %41 = load i32, i32* %i, align 4
  %idxprom42 = sext i32 %41 to i64
  %42 = load %struct._GimpBlob*, %struct._GimpBlob** %b.addr, align 8
  %data43 = getelementptr inbounds %struct._GimpBlob, %struct._GimpBlob* %42, i32 0, i32 2
  %arrayidx44 = getelementptr inbounds [1 x %struct._GimpBlobSpan], [1 x %struct._GimpBlobSpan]* %data43, i32 0, i64 %idxprom42
  %right45 = getelementptr inbounds %struct._GimpBlobSpan, %struct._GimpBlobSpan* %arrayidx44, i32 0, i32 1
  %43 = load i32, i32* %right45, align 4
  %add46 = add nsw i32 %43, 1
  %44 = load i32, i32* %x1, align 4
  %cmp47 = icmp sgt i32 %add46, %44
  br i1 %cmp47, label %cond.true.48, label %cond.false.54

cond.true.48:                                     ; preds = %cond.end
  %45 = load i32, i32* %i, align 4
  %idxprom49 = sext i32 %45 to i64
  %46 = load %struct._GimpBlob*, %struct._GimpBlob** %b.addr, align 8
  %data50 = getelementptr inbounds %struct._GimpBlob, %struct._GimpBlob* %46, i32 0, i32 2
  %arrayidx51 = getelementptr inbounds [1 x %struct._GimpBlobSpan], [1 x %struct._GimpBlobSpan]* %data50, i32 0, i64 %idxprom49
  %right52 = getelementptr inbounds %struct._GimpBlobSpan, %struct._GimpBlobSpan* %arrayidx51, i32 0, i32 1
  %47 = load i32, i32* %right52, align 4
  %add53 = add nsw i32 %47, 1
  br label %cond.end.55

cond.false.54:                                    ; preds = %cond.end
  %48 = load i32, i32* %x1, align 4
  br label %cond.end.55

cond.end.55:                                      ; preds = %cond.false.54, %cond.true.48
  %cond56 = phi i32 [ %add53, %cond.true.48 ], [ %48, %cond.false.54 ]
  store i32 %cond56, i32* %x1, align 4
  %49 = load i32, i32* %i, align 4
  %inc57 = add nsw i32 %49, 1
  store i32 %inc57, i32* %i, align 4
  br label %while.cond.18

while.end.58:                                     ; preds = %land.end.31
  %50 = load %struct._GimpBlob*, %struct._GimpBlob** %b.addr, align 8
  %y59 = getelementptr inbounds %struct._GimpBlob, %struct._GimpBlob* %50, i32 0, i32 0
  %51 = load i32, i32* %y59, align 4
  %52 = load i32, i32* %i, align 4
  %add60 = add nsw i32 %51, %52
  store i32 %add60, i32* %y1, align 4
  br label %if.end

if.else:                                          ; preds = %while.end
  store i32 0, i32* %y0, align 4
  store i32 0, i32* %x0, align 4
  store i32 0, i32* %y1, align 4
  store i32 0, i32* %x1, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %while.end.58
  %53 = load i32, i32* %x0, align 4
  %54 = load i32*, i32** %x.addr, align 8
  store i32 %53, i32* %54, align 4
  %55 = load i32, i32* %y0, align 4
  %56 = load i32*, i32** %y.addr, align 8
  store i32 %55, i32* %56, align 4
  %57 = load i32, i32* %x1, align 4
  %58 = load i32, i32* %x0, align 4
  %sub = sub nsw i32 %57, %58
  %59 = load i32*, i32** %width.addr, align 8
  store i32 %sub, i32* %59, align 4
  %60 = load i32, i32* %y1, align 4
  %61 = load i32, i32* %y0, align 4
  %sub61 = sub nsw i32 %60, %61
  %62 = load i32*, i32** %height.addr, align 8
  store i32 %sub61, i32* %62, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define %struct._GimpBlob* @gimp_blob_convex_union(%struct._GimpBlob* %b1, %struct._GimpBlob* %b2) #0 {
entry:
  %retval = alloca %struct._GimpBlob*, align 8
  %b1.addr = alloca %struct._GimpBlob*, align 8
  %b2.addr = alloca %struct._GimpBlob*, align 8
  %result = alloca %struct._GimpBlob*, align 8
  %y = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %present = alloca i32*, align 8
  store %struct._GimpBlob* %b1, %struct._GimpBlob** %b1.addr, align 8
  store %struct._GimpBlob* %b2, %struct._GimpBlob** %b2.addr, align 8
  %0 = load %struct._GimpBlob*, %struct._GimpBlob** %b1.addr, align 8
  %y1 = getelementptr inbounds %struct._GimpBlob, %struct._GimpBlob* %0, i32 0, i32 0
  %1 = load i32, i32* %y1, align 4
  %2 = load %struct._GimpBlob*, %struct._GimpBlob** %b2.addr, align 8
  %y2 = getelementptr inbounds %struct._GimpBlob, %struct._GimpBlob* %2, i32 0, i32 0
  %3 = load i32, i32* %y2, align 4
  %cmp = icmp slt i32 %1, %3
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %4 = load %struct._GimpBlob*, %struct._GimpBlob** %b1.addr, align 8
  %y3 = getelementptr inbounds %struct._GimpBlob, %struct._GimpBlob* %4, i32 0, i32 0
  %5 = load i32, i32* %y3, align 4
  br label %cond.end

cond.false:                                       ; preds = %entry
  %6 = load %struct._GimpBlob*, %struct._GimpBlob** %b2.addr, align 8
  %y4 = getelementptr inbounds %struct._GimpBlob, %struct._GimpBlob* %6, i32 0, i32 0
  %7 = load i32, i32* %y4, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %5, %cond.true ], [ %7, %cond.false ]
  store i32 %cond, i32* %y, align 4
  %8 = load i32, i32* %y, align 4
  %9 = load %struct._GimpBlob*, %struct._GimpBlob** %b1.addr, align 8
  %y5 = getelementptr inbounds %struct._GimpBlob, %struct._GimpBlob* %9, i32 0, i32 0
  %10 = load i32, i32* %y5, align 4
  %11 = load %struct._GimpBlob*, %struct._GimpBlob** %b1.addr, align 8
  %height = getelementptr inbounds %struct._GimpBlob, %struct._GimpBlob* %11, i32 0, i32 1
  %12 = load i32, i32* %height, align 4
  %add = add nsw i32 %10, %12
  %13 = load %struct._GimpBlob*, %struct._GimpBlob** %b2.addr, align 8
  %y6 = getelementptr inbounds %struct._GimpBlob, %struct._GimpBlob* %13, i32 0, i32 0
  %14 = load i32, i32* %y6, align 4
  %15 = load %struct._GimpBlob*, %struct._GimpBlob** %b2.addr, align 8
  %height7 = getelementptr inbounds %struct._GimpBlob, %struct._GimpBlob* %15, i32 0, i32 1
  %16 = load i32, i32* %height7, align 4
  %add8 = add nsw i32 %14, %16
  %cmp9 = icmp sgt i32 %add, %add8
  br i1 %cmp9, label %cond.true.10, label %cond.false.14

cond.true.10:                                     ; preds = %cond.end
  %17 = load %struct._GimpBlob*, %struct._GimpBlob** %b1.addr, align 8
  %y11 = getelementptr inbounds %struct._GimpBlob, %struct._GimpBlob* %17, i32 0, i32 0
  %18 = load i32, i32* %y11, align 4
  %19 = load %struct._GimpBlob*, %struct._GimpBlob** %b1.addr, align 8
  %height12 = getelementptr inbounds %struct._GimpBlob, %struct._GimpBlob* %19, i32 0, i32 1
  %20 = load i32, i32* %height12, align 4
  %add13 = add nsw i32 %18, %20
  br label %cond.end.18

cond.false.14:                                    ; preds = %cond.end
  %21 = load %struct._GimpBlob*, %struct._GimpBlob** %b2.addr, align 8
  %y15 = getelementptr inbounds %struct._GimpBlob, %struct._GimpBlob* %21, i32 0, i32 0
  %22 = load i32, i32* %y15, align 4
  %23 = load %struct._GimpBlob*, %struct._GimpBlob** %b2.addr, align 8
  %height16 = getelementptr inbounds %struct._GimpBlob, %struct._GimpBlob* %23, i32 0, i32 1
  %24 = load i32, i32* %height16, align 4
  %add17 = add nsw i32 %22, %24
  br label %cond.end.18

cond.end.18:                                      ; preds = %cond.false.14, %cond.true.10
  %cond19 = phi i32 [ %add13, %cond.true.10 ], [ %add17, %cond.false.14 ]
  %25 = load i32, i32* %y, align 4
  %sub = sub nsw i32 %cond19, %25
  %call = call %struct._GimpBlob* @gimp_blob_new(i32 %8, i32 %sub)
  store %struct._GimpBlob* %call, %struct._GimpBlob** %result, align 8
  %26 = load %struct._GimpBlob*, %struct._GimpBlob** %result, align 8
  %height20 = getelementptr inbounds %struct._GimpBlob, %struct._GimpBlob* %26, i32 0, i32 1
  %27 = load i32, i32* %height20, align 4
  %cmp21 = icmp eq i32 %27, 0
  br i1 %cmp21, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end.18
  %28 = load %struct._GimpBlob*, %struct._GimpBlob** %result, align 8
  store %struct._GimpBlob* %28, %struct._GimpBlob** %retval
  br label %return

if.end:                                           ; preds = %cond.end.18
  %29 = load %struct._GimpBlob*, %struct._GimpBlob** %result, align 8
  %height22 = getelementptr inbounds %struct._GimpBlob, %struct._GimpBlob* %29, i32 0, i32 1
  %30 = load i32, i32* %height22, align 4
  %conv = sext i32 %30 to i64
  %call23 = call noalias i8* @g_malloc0_n(i64 %conv, i64 4)
  %31 = bitcast i8* %call23 to i32*
  store i32* %31, i32** %present, align 8
  store i32 0, i32* %i, align 4
  %32 = load %struct._GimpBlob*, %struct._GimpBlob** %b1.addr, align 8
  %y24 = getelementptr inbounds %struct._GimpBlob, %struct._GimpBlob* %32, i32 0, i32 0
  %33 = load i32, i32* %y24, align 4
  %34 = load i32, i32* %y, align 4
  %sub25 = sub nsw i32 %33, %34
  store i32 %sub25, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %35 = load i32, i32* %i, align 4
  %36 = load %struct._GimpBlob*, %struct._GimpBlob** %b1.addr, align 8
  %height26 = getelementptr inbounds %struct._GimpBlob, %struct._GimpBlob* %36, i32 0, i32 1
  %37 = load i32, i32* %height26, align 4
  %cmp27 = icmp slt i32 %35, %37
  br i1 %cmp27, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %38 = load i32, i32* %i, align 4
  %idxprom = sext i32 %38 to i64
  %39 = load %struct._GimpBlob*, %struct._GimpBlob** %b1.addr, align 8
  %data = getelementptr inbounds %struct._GimpBlob, %struct._GimpBlob* %39, i32 0, i32 2
  %arrayidx = getelementptr inbounds [1 x %struct._GimpBlobSpan], [1 x %struct._GimpBlobSpan]* %data, i32 0, i64 %idxprom
  %right = getelementptr inbounds %struct._GimpBlobSpan, %struct._GimpBlobSpan* %arrayidx, i32 0, i32 1
  %40 = load i32, i32* %right, align 4
  %41 = load i32, i32* %i, align 4
  %idxprom29 = sext i32 %41 to i64
  %42 = load %struct._GimpBlob*, %struct._GimpBlob** %b1.addr, align 8
  %data30 = getelementptr inbounds %struct._GimpBlob, %struct._GimpBlob* %42, i32 0, i32 2
  %arrayidx31 = getelementptr inbounds [1 x %struct._GimpBlobSpan], [1 x %struct._GimpBlobSpan]* %data30, i32 0, i64 %idxprom29
  %left = getelementptr inbounds %struct._GimpBlobSpan, %struct._GimpBlobSpan* %arrayidx31, i32 0, i32 0
  %43 = load i32, i32* %left, align 4
  %cmp32 = icmp sge i32 %40, %43
  br i1 %cmp32, label %if.then.34, label %if.end.53

if.then.34:                                       ; preds = %for.body
  %44 = load i32, i32* %j, align 4
  %idxprom35 = sext i32 %44 to i64
  %45 = load i32*, i32** %present, align 8
  %arrayidx36 = getelementptr inbounds i32, i32* %45, i64 %idxprom35
  store i32 3, i32* %arrayidx36, align 4
  %46 = load i32, i32* %i, align 4
  %idxprom37 = sext i32 %46 to i64
  %47 = load %struct._GimpBlob*, %struct._GimpBlob** %b1.addr, align 8
  %data38 = getelementptr inbounds %struct._GimpBlob, %struct._GimpBlob* %47, i32 0, i32 2
  %arrayidx39 = getelementptr inbounds [1 x %struct._GimpBlobSpan], [1 x %struct._GimpBlobSpan]* %data38, i32 0, i64 %idxprom37
  %left40 = getelementptr inbounds %struct._GimpBlobSpan, %struct._GimpBlobSpan* %arrayidx39, i32 0, i32 0
  %48 = load i32, i32* %left40, align 4
  %49 = load i32, i32* %j, align 4
  %idxprom41 = sext i32 %49 to i64
  %50 = load %struct._GimpBlob*, %struct._GimpBlob** %result, align 8
  %data42 = getelementptr inbounds %struct._GimpBlob, %struct._GimpBlob* %50, i32 0, i32 2
  %arrayidx43 = getelementptr inbounds [1 x %struct._GimpBlobSpan], [1 x %struct._GimpBlobSpan]* %data42, i32 0, i64 %idxprom41
  %left44 = getelementptr inbounds %struct._GimpBlobSpan, %struct._GimpBlobSpan* %arrayidx43, i32 0, i32 0
  store i32 %48, i32* %left44, align 4
  %51 = load i32, i32* %i, align 4
  %idxprom45 = sext i32 %51 to i64
  %52 = load %struct._GimpBlob*, %struct._GimpBlob** %b1.addr, align 8
  %data46 = getelementptr inbounds %struct._GimpBlob, %struct._GimpBlob* %52, i32 0, i32 2
  %arrayidx47 = getelementptr inbounds [1 x %struct._GimpBlobSpan], [1 x %struct._GimpBlobSpan]* %data46, i32 0, i64 %idxprom45
  %right48 = getelementptr inbounds %struct._GimpBlobSpan, %struct._GimpBlobSpan* %arrayidx47, i32 0, i32 1
  %53 = load i32, i32* %right48, align 4
  %54 = load i32, i32* %j, align 4
  %idxprom49 = sext i32 %54 to i64
  %55 = load %struct._GimpBlob*, %struct._GimpBlob** %result, align 8
  %data50 = getelementptr inbounds %struct._GimpBlob, %struct._GimpBlob* %55, i32 0, i32 2
  %arrayidx51 = getelementptr inbounds [1 x %struct._GimpBlobSpan], [1 x %struct._GimpBlobSpan]* %data50, i32 0, i64 %idxprom49
  %right52 = getelementptr inbounds %struct._GimpBlobSpan, %struct._GimpBlobSpan* %arrayidx51, i32 0, i32 1
  store i32 %53, i32* %right52, align 4
  br label %if.end.53

if.end.53:                                        ; preds = %if.then.34, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.53
  %56 = load i32, i32* %i, align 4
  %inc = add nsw i32 %56, 1
  store i32 %inc, i32* %i, align 4
  %57 = load i32, i32* %j, align 4
  %inc54 = add nsw i32 %57, 1
  store i32 %inc54, i32* %j, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4
  %58 = load %struct._GimpBlob*, %struct._GimpBlob** %b2.addr, align 8
  %y55 = getelementptr inbounds %struct._GimpBlob, %struct._GimpBlob* %58, i32 0, i32 0
  %59 = load i32, i32* %y55, align 4
  %60 = load i32, i32* %y, align 4
  %sub56 = sub nsw i32 %59, %60
  store i32 %sub56, i32* %j, align 4
  br label %for.cond.57

for.cond.57:                                      ; preds = %for.inc.136, %for.end
  %61 = load i32, i32* %i, align 4
  %62 = load %struct._GimpBlob*, %struct._GimpBlob** %b2.addr, align 8
  %height58 = getelementptr inbounds %struct._GimpBlob, %struct._GimpBlob* %62, i32 0, i32 1
  %63 = load i32, i32* %height58, align 4
  %cmp59 = icmp slt i32 %61, %63
  br i1 %cmp59, label %for.body.61, label %for.end.139

for.body.61:                                      ; preds = %for.cond.57
  %64 = load i32, i32* %i, align 4
  %idxprom62 = sext i32 %64 to i64
  %65 = load %struct._GimpBlob*, %struct._GimpBlob** %b2.addr, align 8
  %data63 = getelementptr inbounds %struct._GimpBlob, %struct._GimpBlob* %65, i32 0, i32 2
  %arrayidx64 = getelementptr inbounds [1 x %struct._GimpBlobSpan], [1 x %struct._GimpBlobSpan]* %data63, i32 0, i64 %idxprom62
  %right65 = getelementptr inbounds %struct._GimpBlobSpan, %struct._GimpBlobSpan* %arrayidx64, i32 0, i32 1
  %66 = load i32, i32* %right65, align 4
  %67 = load i32, i32* %i, align 4
  %idxprom66 = sext i32 %67 to i64
  %68 = load %struct._GimpBlob*, %struct._GimpBlob** %b2.addr, align 8
  %data67 = getelementptr inbounds %struct._GimpBlob, %struct._GimpBlob* %68, i32 0, i32 2
  %arrayidx68 = getelementptr inbounds [1 x %struct._GimpBlobSpan], [1 x %struct._GimpBlobSpan]* %data67, i32 0, i64 %idxprom66
  %left69 = getelementptr inbounds %struct._GimpBlobSpan, %struct._GimpBlobSpan* %arrayidx68, i32 0, i32 0
  %69 = load i32, i32* %left69, align 4
  %cmp70 = icmp sge i32 %66, %69
  br i1 %cmp70, label %if.then.72, label %if.end.135

if.then.72:                                       ; preds = %for.body.61
  %70 = load i32, i32* %j, align 4
  %idxprom73 = sext i32 %70 to i64
  %71 = load i32*, i32** %present, align 8
  %arrayidx74 = getelementptr inbounds i32, i32* %71, i64 %idxprom73
  %72 = load i32, i32* %arrayidx74, align 4
  %tobool = icmp ne i32 %72, 0
  br i1 %tobool, label %if.then.75, label %if.else

if.then.75:                                       ; preds = %if.then.72
  %73 = load i32, i32* %j, align 4
  %idxprom76 = sext i32 %73 to i64
  %74 = load %struct._GimpBlob*, %struct._GimpBlob** %result, align 8
  %data77 = getelementptr inbounds %struct._GimpBlob, %struct._GimpBlob* %74, i32 0, i32 2
  %arrayidx78 = getelementptr inbounds [1 x %struct._GimpBlobSpan], [1 x %struct._GimpBlobSpan]* %data77, i32 0, i64 %idxprom76
  %left79 = getelementptr inbounds %struct._GimpBlobSpan, %struct._GimpBlobSpan* %arrayidx78, i32 0, i32 0
  %75 = load i32, i32* %left79, align 4
  %76 = load i32, i32* %i, align 4
  %idxprom80 = sext i32 %76 to i64
  %77 = load %struct._GimpBlob*, %struct._GimpBlob** %b2.addr, align 8
  %data81 = getelementptr inbounds %struct._GimpBlob, %struct._GimpBlob* %77, i32 0, i32 2
  %arrayidx82 = getelementptr inbounds [1 x %struct._GimpBlobSpan], [1 x %struct._GimpBlobSpan]* %data81, i32 0, i64 %idxprom80
  %left83 = getelementptr inbounds %struct._GimpBlobSpan, %struct._GimpBlobSpan* %arrayidx82, i32 0, i32 0
  %78 = load i32, i32* %left83, align 4
  %cmp84 = icmp sgt i32 %75, %78
  br i1 %cmp84, label %if.then.86, label %if.end.95

if.then.86:                                       ; preds = %if.then.75
  %79 = load i32, i32* %i, align 4
  %idxprom87 = sext i32 %79 to i64
  %80 = load %struct._GimpBlob*, %struct._GimpBlob** %b2.addr, align 8
  %data88 = getelementptr inbounds %struct._GimpBlob, %struct._GimpBlob* %80, i32 0, i32 2
  %arrayidx89 = getelementptr inbounds [1 x %struct._GimpBlobSpan], [1 x %struct._GimpBlobSpan]* %data88, i32 0, i64 %idxprom87
  %left90 = getelementptr inbounds %struct._GimpBlobSpan, %struct._GimpBlobSpan* %arrayidx89, i32 0, i32 0
  %81 = load i32, i32* %left90, align 4
  %82 = load i32, i32* %j, align 4
  %idxprom91 = sext i32 %82 to i64
  %83 = load %struct._GimpBlob*, %struct._GimpBlob** %result, align 8
  %data92 = getelementptr inbounds %struct._GimpBlob, %struct._GimpBlob* %83, i32 0, i32 2
  %arrayidx93 = getelementptr inbounds [1 x %struct._GimpBlobSpan], [1 x %struct._GimpBlobSpan]* %data92, i32 0, i64 %idxprom91
  %left94 = getelementptr inbounds %struct._GimpBlobSpan, %struct._GimpBlobSpan* %arrayidx93, i32 0, i32 0
  store i32 %81, i32* %left94, align 4
  br label %if.end.95

if.end.95:                                        ; preds = %if.then.86, %if.then.75
  %84 = load i32, i32* %j, align 4
  %idxprom96 = sext i32 %84 to i64
  %85 = load %struct._GimpBlob*, %struct._GimpBlob** %result, align 8
  %data97 = getelementptr inbounds %struct._GimpBlob, %struct._GimpBlob* %85, i32 0, i32 2
  %arrayidx98 = getelementptr inbounds [1 x %struct._GimpBlobSpan], [1 x %struct._GimpBlobSpan]* %data97, i32 0, i64 %idxprom96
  %right99 = getelementptr inbounds %struct._GimpBlobSpan, %struct._GimpBlobSpan* %arrayidx98, i32 0, i32 1
  %86 = load i32, i32* %right99, align 4
  %87 = load i32, i32* %i, align 4
  %idxprom100 = sext i32 %87 to i64
  %88 = load %struct._GimpBlob*, %struct._GimpBlob** %b2.addr, align 8
  %data101 = getelementptr inbounds %struct._GimpBlob, %struct._GimpBlob* %88, i32 0, i32 2
  %arrayidx102 = getelementptr inbounds [1 x %struct._GimpBlobSpan], [1 x %struct._GimpBlobSpan]* %data101, i32 0, i64 %idxprom100
  %right103 = getelementptr inbounds %struct._GimpBlobSpan, %struct._GimpBlobSpan* %arrayidx102, i32 0, i32 1
  %89 = load i32, i32* %right103, align 4
  %cmp104 = icmp slt i32 %86, %89
  br i1 %cmp104, label %if.then.106, label %if.end.115

if.then.106:                                      ; preds = %if.end.95
  %90 = load i32, i32* %i, align 4
  %idxprom107 = sext i32 %90 to i64
  %91 = load %struct._GimpBlob*, %struct._GimpBlob** %b2.addr, align 8
  %data108 = getelementptr inbounds %struct._GimpBlob, %struct._GimpBlob* %91, i32 0, i32 2
  %arrayidx109 = getelementptr inbounds [1 x %struct._GimpBlobSpan], [1 x %struct._GimpBlobSpan]* %data108, i32 0, i64 %idxprom107
  %right110 = getelementptr inbounds %struct._GimpBlobSpan, %struct._GimpBlobSpan* %arrayidx109, i32 0, i32 1
  %92 = load i32, i32* %right110, align 4
  %93 = load i32, i32* %j, align 4
  %idxprom111 = sext i32 %93 to i64
  %94 = load %struct._GimpBlob*, %struct._GimpBlob** %result, align 8
  %data112 = getelementptr inbounds %struct._GimpBlob, %struct._GimpBlob* %94, i32 0, i32 2
  %arrayidx113 = getelementptr inbounds [1 x %struct._GimpBlobSpan], [1 x %struct._GimpBlobSpan]* %data112, i32 0, i64 %idxprom111
  %right114 = getelementptr inbounds %struct._GimpBlobSpan, %struct._GimpBlobSpan* %arrayidx113, i32 0, i32 1
  store i32 %92, i32* %right114, align 4
  br label %if.end.115

if.end.115:                                       ; preds = %if.then.106, %if.end.95
  br label %if.end.134

if.else:                                          ; preds = %if.then.72
  %95 = load i32, i32* %j, align 4
  %idxprom116 = sext i32 %95 to i64
  %96 = load i32*, i32** %present, align 8
  %arrayidx117 = getelementptr inbounds i32, i32* %96, i64 %idxprom116
  store i32 3, i32* %arrayidx117, align 4
  %97 = load i32, i32* %i, align 4
  %idxprom118 = sext i32 %97 to i64
  %98 = load %struct._GimpBlob*, %struct._GimpBlob** %b2.addr, align 8
  %data119 = getelementptr inbounds %struct._GimpBlob, %struct._GimpBlob* %98, i32 0, i32 2
  %arrayidx120 = getelementptr inbounds [1 x %struct._GimpBlobSpan], [1 x %struct._GimpBlobSpan]* %data119, i32 0, i64 %idxprom118
  %left121 = getelementptr inbounds %struct._GimpBlobSpan, %struct._GimpBlobSpan* %arrayidx120, i32 0, i32 0
  %99 = load i32, i32* %left121, align 4
  %100 = load i32, i32* %j, align 4
  %idxprom122 = sext i32 %100 to i64
  %101 = load %struct._GimpBlob*, %struct._GimpBlob** %result, align 8
  %data123 = getelementptr inbounds %struct._GimpBlob, %struct._GimpBlob* %101, i32 0, i32 2
  %arrayidx124 = getelementptr inbounds [1 x %struct._GimpBlobSpan], [1 x %struct._GimpBlobSpan]* %data123, i32 0, i64 %idxprom122
  %left125 = getelementptr inbounds %struct._GimpBlobSpan, %struct._GimpBlobSpan* %arrayidx124, i32 0, i32 0
  store i32 %99, i32* %left125, align 4
  %102 = load i32, i32* %i, align 4
  %idxprom126 = sext i32 %102 to i64
  %103 = load %struct._GimpBlob*, %struct._GimpBlob** %b2.addr, align 8
  %data127 = getelementptr inbounds %struct._GimpBlob, %struct._GimpBlob* %103, i32 0, i32 2
  %arrayidx128 = getelementptr inbounds [1 x %struct._GimpBlobSpan], [1 x %struct._GimpBlobSpan]* %data127, i32 0, i64 %idxprom126
  %right129 = getelementptr inbounds %struct._GimpBlobSpan, %struct._GimpBlobSpan* %arrayidx128, i32 0, i32 1
  %104 = load i32, i32* %right129, align 4
  %105 = load i32, i32* %j, align 4
  %idxprom130 = sext i32 %105 to i64
  %106 = load %struct._GimpBlob*, %struct._GimpBlob** %result, align 8
  %data131 = getelementptr inbounds %struct._GimpBlob, %struct._GimpBlob* %106, i32 0, i32 2
  %arrayidx132 = getelementptr inbounds [1 x %struct._GimpBlobSpan], [1 x %struct._GimpBlobSpan]* %data131, i32 0, i64 %idxprom130
  %right133 = getelementptr inbounds %struct._GimpBlobSpan, %struct._GimpBlobSpan* %arrayidx132, i32 0, i32 1
  store i32 %104, i32* %right133, align 4
  br label %if.end.134

if.end.134:                                       ; preds = %if.else, %if.end.115
  br label %if.end.135

if.end.135:                                       ; preds = %if.end.134, %for.body.61
  br label %for.inc.136

for.inc.136:                                      ; preds = %if.end.135
  %107 = load i32, i32* %i, align 4
  %inc137 = add nsw i32 %107, 1
  store i32 %inc137, i32* %i, align 4
  %108 = load i32, i32* %j, align 4
  %inc138 = add nsw i32 %108, 1
  store i32 %inc138, i32* %j, align 4
  br label %for.cond.57

for.end.139:                                      ; preds = %for.cond.57
  %109 = load %struct._GimpBlob*, %struct._GimpBlob** %result, align 8
  %110 = load i32*, i32** %present, align 8
  call void @gimp_blob_make_convex(%struct._GimpBlob* %109, i32* %110)
  %111 = load i32*, i32** %present, align 8
  %112 = bitcast i32* %111 to i8*
  call void @g_free(i8* %112)
  %113 = load %struct._GimpBlob*, %struct._GimpBlob** %result, align 8
  store %struct._GimpBlob* %113, %struct._GimpBlob** %retval
  br label %return

return:                                           ; preds = %for.end.139, %if.then
  %114 = load %struct._GimpBlob*, %struct._GimpBlob** %retval
  ret %struct._GimpBlob* %114
}

; Function Attrs: nounwind uwtable
define internal void @gimp_blob_make_convex(%struct._GimpBlob* %b, i32* %present) #0 {
entry:
  %b.addr = alloca %struct._GimpBlob*, align 8
  %present.addr = alloca i32*, align 8
  %x1 = alloca i32, align 4
  %x2 = alloca i32, align 4
  %y1 = alloca i32, align 4
  %y2 = alloca i32, align 4
  %i1 = alloca i32, align 4
  %i2 = alloca i32, align 4
  %i = alloca i32, align 4
  %start = alloca i32, align 4
  store %struct._GimpBlob* %b, %struct._GimpBlob** %b.addr, align 8
  store i32* %present, i32** %present.addr, align 8
  store i32 0, i32* %start, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i32, i32* %start, align 4
  %idxprom = sext i32 %0 to i64
  %1 = load i32*, i32** %present.addr, align 8
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom
  %2 = load i32, i32* %arrayidx, align 4
  %tobool = icmp ne i32 %2, 0
  %lnot = xor i1 %tobool, true
  br i1 %lnot, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load i32, i32* %start, align 4
  %inc = add nsw i32 %3, 1
  store i32 %inc, i32* %start, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %4 = load i32, i32* %start, align 4
  %sub = sub nsw i32 %4, 1
  store i32 %sub, i32* %i1, align 4
  %5 = load i32, i32* %start, align 4
  store i32 %5, i32* %i2, align 4
  %6 = load i32, i32* %start, align 4
  %idxprom1 = sext i32 %6 to i64
  %7 = load %struct._GimpBlob*, %struct._GimpBlob** %b.addr, align 8
  %data = getelementptr inbounds %struct._GimpBlob, %struct._GimpBlob* %7, i32 0, i32 2
  %arrayidx2 = getelementptr inbounds [1 x %struct._GimpBlobSpan], [1 x %struct._GimpBlobSpan]* %data, i32 0, i64 %idxprom1
  %left = getelementptr inbounds %struct._GimpBlobSpan, %struct._GimpBlobSpan* %arrayidx2, i32 0, i32 0
  %8 = load i32, i32* %left, align 4
  %9 = load i32, i32* %start, align 4
  %idxprom3 = sext i32 %9 to i64
  %10 = load %struct._GimpBlob*, %struct._GimpBlob** %b.addr, align 8
  %data4 = getelementptr inbounds %struct._GimpBlob, %struct._GimpBlob* %10, i32 0, i32 2
  %arrayidx5 = getelementptr inbounds [1 x %struct._GimpBlobSpan], [1 x %struct._GimpBlobSpan]* %data4, i32 0, i64 %idxprom3
  %right = getelementptr inbounds %struct._GimpBlobSpan, %struct._GimpBlobSpan* %arrayidx5, i32 0, i32 1
  %11 = load i32, i32* %right, align 4
  %sub6 = sub nsw i32 %8, %11
  store i32 %sub6, i32* %x1, align 4
  store i32 0, i32* %y1, align 4
  %12 = load i32, i32* %start, align 4
  %add = add nsw i32 %12, 1
  store i32 %add, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.end
  %13 = load i32, i32* %i, align 4
  %14 = load %struct._GimpBlob*, %struct._GimpBlob** %b.addr, align 8
  %height = getelementptr inbounds %struct._GimpBlob, %struct._GimpBlob* %14, i32 0, i32 1
  %15 = load i32, i32* %height, align 4
  %cmp = icmp slt i32 %13, %15
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %16 = load i32, i32* %i, align 4
  %idxprom7 = sext i32 %16 to i64
  %17 = load i32*, i32** %present.addr, align 8
  %arrayidx8 = getelementptr inbounds i32, i32* %17, i64 %idxprom7
  %18 = load i32, i32* %arrayidx8, align 4
  %and = and i32 %18, 1
  %tobool9 = icmp ne i32 %and, 0
  br i1 %tobool9, label %if.end, label %if.then

if.then:                                          ; preds = %for.body
  br label %for.inc

if.end:                                           ; preds = %for.body
  %19 = load i32, i32* %i, align 4
  %idxprom10 = sext i32 %19 to i64
  %20 = load %struct._GimpBlob*, %struct._GimpBlob** %b.addr, align 8
  %data11 = getelementptr inbounds %struct._GimpBlob, %struct._GimpBlob* %20, i32 0, i32 2
  %arrayidx12 = getelementptr inbounds [1 x %struct._GimpBlobSpan], [1 x %struct._GimpBlobSpan]* %data11, i32 0, i64 %idxprom10
  %left13 = getelementptr inbounds %struct._GimpBlobSpan, %struct._GimpBlobSpan* %arrayidx12, i32 0, i32 0
  %21 = load i32, i32* %left13, align 4
  %22 = load i32, i32* %i2, align 4
  %idxprom14 = sext i32 %22 to i64
  %23 = load %struct._GimpBlob*, %struct._GimpBlob** %b.addr, align 8
  %data15 = getelementptr inbounds %struct._GimpBlob, %struct._GimpBlob* %23, i32 0, i32 2
  %arrayidx16 = getelementptr inbounds [1 x %struct._GimpBlobSpan], [1 x %struct._GimpBlobSpan]* %data15, i32 0, i64 %idxprom14
  %left17 = getelementptr inbounds %struct._GimpBlobSpan, %struct._GimpBlobSpan* %arrayidx16, i32 0, i32 0
  %24 = load i32, i32* %left17, align 4
  %sub18 = sub nsw i32 %21, %24
  store i32 %sub18, i32* %x2, align 4
  %25 = load i32, i32* %i, align 4
  %26 = load i32, i32* %i2, align 4
  %sub19 = sub nsw i32 %25, %26
  store i32 %sub19, i32* %y2, align 4
  br label %while.cond.20

while.cond.20:                                    ; preds = %if.end.58, %if.end
  %27 = load i32, i32* %x2, align 4
  %28 = load i32, i32* %y1, align 4
  %mul = mul nsw i32 %27, %28
  %29 = load i32, i32* %x1, align 4
  %30 = load i32, i32* %y2, align 4
  %mul21 = mul nsw i32 %29, %30
  %sub22 = sub nsw i32 %mul, %mul21
  %cmp23 = icmp slt i32 %sub22, 0
  br i1 %cmp23, label %while.body.24, label %while.end.69

while.body.24:                                    ; preds = %while.cond.20
  %31 = load i32, i32* %i2, align 4
  %idxprom25 = sext i32 %31 to i64
  %32 = load i32*, i32** %present.addr, align 8
  %arrayidx26 = getelementptr inbounds i32, i32* %32, i64 %idxprom25
  %33 = load i32, i32* %arrayidx26, align 4
  %and27 = and i32 %33, -2
  store i32 %and27, i32* %arrayidx26, align 4
  %34 = load i32, i32* %i1, align 4
  store i32 %34, i32* %i2, align 4
  br label %while.cond.28

while.cond.28:                                    ; preds = %while.body.35, %while.body.24
  %35 = load i32, i32* %i1, align 4
  %dec = add nsw i32 %35, -1
  store i32 %dec, i32* %i1, align 4
  %36 = load i32, i32* %start, align 4
  %cmp29 = icmp sge i32 %dec, %36
  br i1 %cmp29, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond.28
  %37 = load i32, i32* %i1, align 4
  %idxprom30 = sext i32 %37 to i64
  %38 = load i32*, i32** %present.addr, align 8
  %arrayidx31 = getelementptr inbounds i32, i32* %38, i64 %idxprom30
  %39 = load i32, i32* %arrayidx31, align 4
  %and32 = and i32 %39, 1
  %tobool33 = icmp ne i32 %and32, 0
  %lnot34 = xor i1 %tobool33, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond.28
  %40 = phi i1 [ false, %while.cond.28 ], [ %lnot34, %land.rhs ]
  br i1 %40, label %while.body.35, label %while.end.36

while.body.35:                                    ; preds = %land.end
  br label %while.cond.28

while.end.36:                                     ; preds = %land.end
  %41 = load i32, i32* %i1, align 4
  %42 = load i32, i32* %start, align 4
  %cmp37 = icmp slt i32 %41, %42
  br i1 %cmp37, label %if.then.38, label %if.else

if.then.38:                                       ; preds = %while.end.36
  %43 = load i32, i32* %start, align 4
  %idxprom39 = sext i32 %43 to i64
  %44 = load %struct._GimpBlob*, %struct._GimpBlob** %b.addr, align 8
  %data40 = getelementptr inbounds %struct._GimpBlob, %struct._GimpBlob* %44, i32 0, i32 2
  %arrayidx41 = getelementptr inbounds [1 x %struct._GimpBlobSpan], [1 x %struct._GimpBlobSpan]* %data40, i32 0, i64 %idxprom39
  %left42 = getelementptr inbounds %struct._GimpBlobSpan, %struct._GimpBlobSpan* %arrayidx41, i32 0, i32 0
  %45 = load i32, i32* %left42, align 4
  %46 = load i32, i32* %start, align 4
  %idxprom43 = sext i32 %46 to i64
  %47 = load %struct._GimpBlob*, %struct._GimpBlob** %b.addr, align 8
  %data44 = getelementptr inbounds %struct._GimpBlob, %struct._GimpBlob* %47, i32 0, i32 2
  %arrayidx45 = getelementptr inbounds [1 x %struct._GimpBlobSpan], [1 x %struct._GimpBlobSpan]* %data44, i32 0, i64 %idxprom43
  %right46 = getelementptr inbounds %struct._GimpBlobSpan, %struct._GimpBlobSpan* %arrayidx45, i32 0, i32 1
  %48 = load i32, i32* %right46, align 4
  %sub47 = sub nsw i32 %45, %48
  store i32 %sub47, i32* %x1, align 4
  store i32 0, i32* %y1, align 4
  br label %if.end.58

if.else:                                          ; preds = %while.end.36
  %49 = load i32, i32* %i2, align 4
  %idxprom48 = sext i32 %49 to i64
  %50 = load %struct._GimpBlob*, %struct._GimpBlob** %b.addr, align 8
  %data49 = getelementptr inbounds %struct._GimpBlob, %struct._GimpBlob* %50, i32 0, i32 2
  %arrayidx50 = getelementptr inbounds [1 x %struct._GimpBlobSpan], [1 x %struct._GimpBlobSpan]* %data49, i32 0, i64 %idxprom48
  %left51 = getelementptr inbounds %struct._GimpBlobSpan, %struct._GimpBlobSpan* %arrayidx50, i32 0, i32 0
  %51 = load i32, i32* %left51, align 4
  %52 = load i32, i32* %i1, align 4
  %idxprom52 = sext i32 %52 to i64
  %53 = load %struct._GimpBlob*, %struct._GimpBlob** %b.addr, align 8
  %data53 = getelementptr inbounds %struct._GimpBlob, %struct._GimpBlob* %53, i32 0, i32 2
  %arrayidx54 = getelementptr inbounds [1 x %struct._GimpBlobSpan], [1 x %struct._GimpBlobSpan]* %data53, i32 0, i64 %idxprom52
  %left55 = getelementptr inbounds %struct._GimpBlobSpan, %struct._GimpBlobSpan* %arrayidx54, i32 0, i32 0
  %54 = load i32, i32* %left55, align 4
  %sub56 = sub nsw i32 %51, %54
  store i32 %sub56, i32* %x1, align 4
  %55 = load i32, i32* %i2, align 4
  %56 = load i32, i32* %i1, align 4
  %sub57 = sub nsw i32 %55, %56
  store i32 %sub57, i32* %y1, align 4
  br label %if.end.58

if.end.58:                                        ; preds = %if.else, %if.then.38
  %57 = load i32, i32* %i, align 4
  %idxprom59 = sext i32 %57 to i64
  %58 = load %struct._GimpBlob*, %struct._GimpBlob** %b.addr, align 8
  %data60 = getelementptr inbounds %struct._GimpBlob, %struct._GimpBlob* %58, i32 0, i32 2
  %arrayidx61 = getelementptr inbounds [1 x %struct._GimpBlobSpan], [1 x %struct._GimpBlobSpan]* %data60, i32 0, i64 %idxprom59
  %left62 = getelementptr inbounds %struct._GimpBlobSpan, %struct._GimpBlobSpan* %arrayidx61, i32 0, i32 0
  %59 = load i32, i32* %left62, align 4
  %60 = load i32, i32* %i2, align 4
  %idxprom63 = sext i32 %60 to i64
  %61 = load %struct._GimpBlob*, %struct._GimpBlob** %b.addr, align 8
  %data64 = getelementptr inbounds %struct._GimpBlob, %struct._GimpBlob* %61, i32 0, i32 2
  %arrayidx65 = getelementptr inbounds [1 x %struct._GimpBlobSpan], [1 x %struct._GimpBlobSpan]* %data64, i32 0, i64 %idxprom63
  %left66 = getelementptr inbounds %struct._GimpBlobSpan, %struct._GimpBlobSpan* %arrayidx65, i32 0, i32 0
  %62 = load i32, i32* %left66, align 4
  %sub67 = sub nsw i32 %59, %62
  store i32 %sub67, i32* %x2, align 4
  %63 = load i32, i32* %i, align 4
  %64 = load i32, i32* %i2, align 4
  %sub68 = sub nsw i32 %63, %64
  store i32 %sub68, i32* %y2, align 4
  br label %while.cond.20

while.end.69:                                     ; preds = %while.cond.20
  %65 = load i32, i32* %x2, align 4
  store i32 %65, i32* %x1, align 4
  %66 = load i32, i32* %y2, align 4
  store i32 %66, i32* %y1, align 4
  %67 = load i32, i32* %i2, align 4
  store i32 %67, i32* %i1, align 4
  %68 = load i32, i32* %i, align 4
  store i32 %68, i32* %i2, align 4
  br label %for.inc

for.inc:                                          ; preds = %while.end.69, %if.then
  %69 = load i32, i32* %i, align 4
  %inc70 = add nsw i32 %69, 1
  store i32 %inc70, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %70 = load i32, i32* %start, align 4
  %sub71 = sub nsw i32 %70, 1
  store i32 %sub71, i32* %i1, align 4
  %71 = load i32, i32* %start, align 4
  store i32 %71, i32* %i2, align 4
  %72 = load i32, i32* %start, align 4
  %idxprom72 = sext i32 %72 to i64
  %73 = load %struct._GimpBlob*, %struct._GimpBlob** %b.addr, align 8
  %data73 = getelementptr inbounds %struct._GimpBlob, %struct._GimpBlob* %73, i32 0, i32 2
  %arrayidx74 = getelementptr inbounds [1 x %struct._GimpBlobSpan], [1 x %struct._GimpBlobSpan]* %data73, i32 0, i64 %idxprom72
  %right75 = getelementptr inbounds %struct._GimpBlobSpan, %struct._GimpBlobSpan* %arrayidx74, i32 0, i32 1
  %74 = load i32, i32* %right75, align 4
  %75 = load i32, i32* %start, align 4
  %idxprom76 = sext i32 %75 to i64
  %76 = load %struct._GimpBlob*, %struct._GimpBlob** %b.addr, align 8
  %data77 = getelementptr inbounds %struct._GimpBlob, %struct._GimpBlob* %76, i32 0, i32 2
  %arrayidx78 = getelementptr inbounds [1 x %struct._GimpBlobSpan], [1 x %struct._GimpBlobSpan]* %data77, i32 0, i64 %idxprom76
  %left79 = getelementptr inbounds %struct._GimpBlobSpan, %struct._GimpBlobSpan* %arrayidx78, i32 0, i32 0
  %77 = load i32, i32* %left79, align 4
  %sub80 = sub nsw i32 %74, %77
  store i32 %sub80, i32* %x1, align 4
  store i32 0, i32* %y1, align 4
  %78 = load i32, i32* %start, align 4
  %add81 = add nsw i32 %78, 1
  store i32 %add81, i32* %i, align 4
  br label %for.cond.82

for.cond.82:                                      ; preds = %for.inc.157, %for.end
  %79 = load i32, i32* %i, align 4
  %80 = load %struct._GimpBlob*, %struct._GimpBlob** %b.addr, align 8
  %height83 = getelementptr inbounds %struct._GimpBlob, %struct._GimpBlob* %80, i32 0, i32 1
  %81 = load i32, i32* %height83, align 4
  %cmp84 = icmp slt i32 %79, %81
  br i1 %cmp84, label %for.body.85, label %for.end.159

for.body.85:                                      ; preds = %for.cond.82
  %82 = load i32, i32* %i, align 4
  %idxprom86 = sext i32 %82 to i64
  %83 = load i32*, i32** %present.addr, align 8
  %arrayidx87 = getelementptr inbounds i32, i32* %83, i64 %idxprom86
  %84 = load i32, i32* %arrayidx87, align 4
  %and88 = and i32 %84, 2
  %tobool89 = icmp ne i32 %and88, 0
  br i1 %tobool89, label %if.end.91, label %if.then.90

if.then.90:                                       ; preds = %for.body.85
  br label %for.inc.157

if.end.91:                                        ; preds = %for.body.85
  %85 = load i32, i32* %i, align 4
  %idxprom92 = sext i32 %85 to i64
  %86 = load %struct._GimpBlob*, %struct._GimpBlob** %b.addr, align 8
  %data93 = getelementptr inbounds %struct._GimpBlob, %struct._GimpBlob* %86, i32 0, i32 2
  %arrayidx94 = getelementptr inbounds [1 x %struct._GimpBlobSpan], [1 x %struct._GimpBlobSpan]* %data93, i32 0, i64 %idxprom92
  %right95 = getelementptr inbounds %struct._GimpBlobSpan, %struct._GimpBlobSpan* %arrayidx94, i32 0, i32 1
  %87 = load i32, i32* %right95, align 4
  %88 = load i32, i32* %i2, align 4
  %idxprom96 = sext i32 %88 to i64
  %89 = load %struct._GimpBlob*, %struct._GimpBlob** %b.addr, align 8
  %data97 = getelementptr inbounds %struct._GimpBlob, %struct._GimpBlob* %89, i32 0, i32 2
  %arrayidx98 = getelementptr inbounds [1 x %struct._GimpBlobSpan], [1 x %struct._GimpBlobSpan]* %data97, i32 0, i64 %idxprom96
  %right99 = getelementptr inbounds %struct._GimpBlobSpan, %struct._GimpBlobSpan* %arrayidx98, i32 0, i32 1
  %90 = load i32, i32* %right99, align 4
  %sub100 = sub nsw i32 %87, %90
  store i32 %sub100, i32* %x2, align 4
  %91 = load i32, i32* %i, align 4
  %92 = load i32, i32* %i2, align 4
  %sub101 = sub nsw i32 %91, %92
  store i32 %sub101, i32* %y2, align 4
  br label %while.cond.102

while.cond.102:                                   ; preds = %if.end.145, %if.end.91
  %93 = load i32, i32* %x2, align 4
  %94 = load i32, i32* %y1, align 4
  %mul103 = mul nsw i32 %93, %94
  %95 = load i32, i32* %x1, align 4
  %96 = load i32, i32* %y2, align 4
  %mul104 = mul nsw i32 %95, %96
  %sub105 = sub nsw i32 %mul103, %mul104
  %cmp106 = icmp sgt i32 %sub105, 0
  br i1 %cmp106, label %while.body.107, label %while.end.156

while.body.107:                                   ; preds = %while.cond.102
  %97 = load i32, i32* %i2, align 4
  %idxprom108 = sext i32 %97 to i64
  %98 = load i32*, i32** %present.addr, align 8
  %arrayidx109 = getelementptr inbounds i32, i32* %98, i64 %idxprom108
  %99 = load i32, i32* %arrayidx109, align 4
  %and110 = and i32 %99, -3
  store i32 %and110, i32* %arrayidx109, align 4
  %100 = load i32, i32* %i1, align 4
  store i32 %100, i32* %i2, align 4
  br label %while.cond.111

while.cond.111:                                   ; preds = %while.body.121, %while.body.107
  %101 = load i32, i32* %i1, align 4
  %dec112 = add nsw i32 %101, -1
  store i32 %dec112, i32* %i1, align 4
  %102 = load i32, i32* %start, align 4
  %cmp113 = icmp sge i32 %dec112, %102
  br i1 %cmp113, label %land.rhs.114, label %land.end.120

land.rhs.114:                                     ; preds = %while.cond.111
  %103 = load i32, i32* %i1, align 4
  %idxprom115 = sext i32 %103 to i64
  %104 = load i32*, i32** %present.addr, align 8
  %arrayidx116 = getelementptr inbounds i32, i32* %104, i64 %idxprom115
  %105 = load i32, i32* %arrayidx116, align 4
  %and117 = and i32 %105, 2
  %tobool118 = icmp ne i32 %and117, 0
  %lnot119 = xor i1 %tobool118, true
  br label %land.end.120

land.end.120:                                     ; preds = %land.rhs.114, %while.cond.111
  %106 = phi i1 [ false, %while.cond.111 ], [ %lnot119, %land.rhs.114 ]
  br i1 %106, label %while.body.121, label %while.end.122

while.body.121:                                   ; preds = %land.end.120
  br label %while.cond.111

while.end.122:                                    ; preds = %land.end.120
  %107 = load i32, i32* %i1, align 4
  %108 = load i32, i32* %start, align 4
  %cmp123 = icmp slt i32 %107, %108
  br i1 %cmp123, label %if.then.124, label %if.else.134

if.then.124:                                      ; preds = %while.end.122
  %109 = load i32, i32* %start, align 4
  %idxprom125 = sext i32 %109 to i64
  %110 = load %struct._GimpBlob*, %struct._GimpBlob** %b.addr, align 8
  %data126 = getelementptr inbounds %struct._GimpBlob, %struct._GimpBlob* %110, i32 0, i32 2
  %arrayidx127 = getelementptr inbounds [1 x %struct._GimpBlobSpan], [1 x %struct._GimpBlobSpan]* %data126, i32 0, i64 %idxprom125
  %right128 = getelementptr inbounds %struct._GimpBlobSpan, %struct._GimpBlobSpan* %arrayidx127, i32 0, i32 1
  %111 = load i32, i32* %right128, align 4
  %112 = load i32, i32* %start, align 4
  %idxprom129 = sext i32 %112 to i64
  %113 = load %struct._GimpBlob*, %struct._GimpBlob** %b.addr, align 8
  %data130 = getelementptr inbounds %struct._GimpBlob, %struct._GimpBlob* %113, i32 0, i32 2
  %arrayidx131 = getelementptr inbounds [1 x %struct._GimpBlobSpan], [1 x %struct._GimpBlobSpan]* %data130, i32 0, i64 %idxprom129
  %left132 = getelementptr inbounds %struct._GimpBlobSpan, %struct._GimpBlobSpan* %arrayidx131, i32 0, i32 0
  %114 = load i32, i32* %left132, align 4
  %sub133 = sub nsw i32 %111, %114
  store i32 %sub133, i32* %x1, align 4
  store i32 0, i32* %y1, align 4
  br label %if.end.145

if.else.134:                                      ; preds = %while.end.122
  %115 = load i32, i32* %i2, align 4
  %idxprom135 = sext i32 %115 to i64
  %116 = load %struct._GimpBlob*, %struct._GimpBlob** %b.addr, align 8
  %data136 = getelementptr inbounds %struct._GimpBlob, %struct._GimpBlob* %116, i32 0, i32 2
  %arrayidx137 = getelementptr inbounds [1 x %struct._GimpBlobSpan], [1 x %struct._GimpBlobSpan]* %data136, i32 0, i64 %idxprom135
  %right138 = getelementptr inbounds %struct._GimpBlobSpan, %struct._GimpBlobSpan* %arrayidx137, i32 0, i32 1
  %117 = load i32, i32* %right138, align 4
  %118 = load i32, i32* %i1, align 4
  %idxprom139 = sext i32 %118 to i64
  %119 = load %struct._GimpBlob*, %struct._GimpBlob** %b.addr, align 8
  %data140 = getelementptr inbounds %struct._GimpBlob, %struct._GimpBlob* %119, i32 0, i32 2
  %arrayidx141 = getelementptr inbounds [1 x %struct._GimpBlobSpan], [1 x %struct._GimpBlobSpan]* %data140, i32 0, i64 %idxprom139
  %right142 = getelementptr inbounds %struct._GimpBlobSpan, %struct._GimpBlobSpan* %arrayidx141, i32 0, i32 1
  %120 = load i32, i32* %right142, align 4
  %sub143 = sub nsw i32 %117, %120
  store i32 %sub143, i32* %x1, align 4
  %121 = load i32, i32* %i2, align 4
  %122 = load i32, i32* %i1, align 4
  %sub144 = sub nsw i32 %121, %122
  store i32 %sub144, i32* %y1, align 4
  br label %if.end.145

if.end.145:                                       ; preds = %if.else.134, %if.then.124
  %123 = load i32, i32* %i, align 4
  %idxprom146 = sext i32 %123 to i64
  %124 = load %struct._GimpBlob*, %struct._GimpBlob** %b.addr, align 8
  %data147 = getelementptr inbounds %struct._GimpBlob, %struct._GimpBlob* %124, i32 0, i32 2
  %arrayidx148 = getelementptr inbounds [1 x %struct._GimpBlobSpan], [1 x %struct._GimpBlobSpan]* %data147, i32 0, i64 %idxprom146
  %right149 = getelementptr inbounds %struct._GimpBlobSpan, %struct._GimpBlobSpan* %arrayidx148, i32 0, i32 1
  %125 = load i32, i32* %right149, align 4
  %126 = load i32, i32* %i2, align 4
  %idxprom150 = sext i32 %126 to i64
  %127 = load %struct._GimpBlob*, %struct._GimpBlob** %b.addr, align 8
  %data151 = getelementptr inbounds %struct._GimpBlob, %struct._GimpBlob* %127, i32 0, i32 2
  %arrayidx152 = getelementptr inbounds [1 x %struct._GimpBlobSpan], [1 x %struct._GimpBlobSpan]* %data151, i32 0, i64 %idxprom150
  %right153 = getelementptr inbounds %struct._GimpBlobSpan, %struct._GimpBlobSpan* %arrayidx152, i32 0, i32 1
  %128 = load i32, i32* %right153, align 4
  %sub154 = sub nsw i32 %125, %128
  store i32 %sub154, i32* %x2, align 4
  %129 = load i32, i32* %i, align 4
  %130 = load i32, i32* %i2, align 4
  %sub155 = sub nsw i32 %129, %130
  store i32 %sub155, i32* %y2, align 4
  br label %while.cond.102

while.end.156:                                    ; preds = %while.cond.102
  %131 = load i32, i32* %x2, align 4
  store i32 %131, i32* %x1, align 4
  %132 = load i32, i32* %y2, align 4
  store i32 %132, i32* %y1, align 4
  %133 = load i32, i32* %i2, align 4
  store i32 %133, i32* %i1, align 4
  %134 = load i32, i32* %i, align 4
  store i32 %134, i32* %i2, align 4
  br label %for.inc.157

for.inc.157:                                      ; preds = %while.end.156, %if.then.90
  %135 = load i32, i32* %i, align 4
  %inc158 = add nsw i32 %135, 1
  store i32 %inc158, i32* %i, align 4
  br label %for.cond.82

for.end.159:                                      ; preds = %for.cond.82
  %136 = load %struct._GimpBlob*, %struct._GimpBlob** %b.addr, align 8
  %137 = load i32*, i32** %present.addr, align 8
  call void @gimp_blob_fill(%struct._GimpBlob* %136, i32* %137)
  ret void
}

; Function Attrs: nounwind uwtable
define %struct._GimpBlob* @gimp_blob_duplicate(%struct._GimpBlob* %b) #0 {
entry:
  %retval = alloca %struct._GimpBlob*, align 8
  %b.addr = alloca %struct._GimpBlob*, align 8
  store %struct._GimpBlob* %b, %struct._GimpBlob** %b.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpBlob*, %struct._GimpBlob** %b.addr, align 8
  %cmp = icmp ne %struct._GimpBlob* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.gimp_blob_duplicate, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0))
  store %struct._GimpBlob* null, %struct._GimpBlob** %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %1 = load %struct._GimpBlob*, %struct._GimpBlob** %b.addr, align 8
  %2 = bitcast %struct._GimpBlob* %1 to i8*
  %3 = load %struct._GimpBlob*, %struct._GimpBlob** %b.addr, align 8
  %height = getelementptr inbounds %struct._GimpBlob, %struct._GimpBlob* %3, i32 0, i32 1
  %4 = load i32, i32* %height, align 4
  %sub = sub nsw i32 %4, 1
  %conv = sext i32 %sub to i64
  %mul = mul i64 8, %conv
  %add = add i64 16, %mul
  %conv1 = trunc i64 %add to i32
  %call = call noalias i8* @g_memdup(i8* %2, i32 %conv1)
  %5 = bitcast i8* %call to %struct._GimpBlob*
  store %struct._GimpBlob* %5, %struct._GimpBlob** %retval
  br label %return

return:                                           ; preds = %do.end, %if.else
  %6 = load %struct._GimpBlob*, %struct._GimpBlob** %retval
  ret %struct._GimpBlob* %6
}

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

declare noalias i8* @g_memdup(i8*, i32) #1

declare noalias i8* @g_malloc(i64) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
