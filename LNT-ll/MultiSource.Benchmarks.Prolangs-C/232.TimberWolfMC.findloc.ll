; ModuleID = './MultiSource.Benchmarks.Prolangs-C/232.TimberWolfMC.findloc.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uncombox = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.termnets = type { i32, %struct.netbox* }
%struct.netbox = type { %struct.netbox*, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dimbox = type { %struct.netbox*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, double, double, i8* }
%struct.flogbox = type { i32, i32, i32, i32 }

@UCptr = external global %struct.uncombox*, align 8
@termarray = external global %struct.termnets**, align 8
@netarray = external global %struct.dimbox**, align 8
@HorV = external global i32, align 4
@nPinLocs = external global i32, align 4
@lArray = external global %struct.flogbox*, align 8

; Function Attrs: nounwind uwtable
define i32 @findLoc(i32 %pin) #0 {
entry:
  %pin.addr = alloca i32, align 4
  %bigoX = alloca i32, align 4
  %bigoY = alloca i32, align 4
  %litoX = alloca i32, align 4
  %litoY = alloca i32, align 4
  %aPin = alloca i32, align 4
  %bestPos = alloca i32, align 4
  %meanx = alloca i32, align 4
  %meany = alloca i32, align 4
  %distant = alloca i32, align 4
  %i = alloca i32, align 4
  %netptr = alloca %struct.netbox*, align 8
  store i32 %pin, i32* %pin.addr, align 4
  store i32 0, i32* %bigoX, align 4
  store i32 0, i32* %bigoY, align 4
  store i32 1000000000, i32* %litoX, align 4
  store i32 1000000000, i32* %litoY, align 4
  %0 = load i32, i32* %pin.addr, align 4
  %idxprom = sext i32 %0 to i64
  %1 = load %struct.uncombox*, %struct.uncombox** @UCptr, align 8
  %arrayidx = getelementptr inbounds %struct.uncombox, %struct.uncombox* %1, i64 %idxprom
  %terminal = getelementptr inbounds %struct.uncombox, %struct.uncombox* %arrayidx, i32 0, i32 0
  %2 = load i32, i32* %terminal, align 4
  store i32 %2, i32* %aPin, align 4
  %3 = load i32, i32* %aPin, align 4
  %idxprom1 = sext i32 %3 to i64
  %4 = load %struct.termnets**, %struct.termnets*** @termarray, align 8
  %arrayidx2 = getelementptr inbounds %struct.termnets*, %struct.termnets** %4, i64 %idxprom1
  %5 = load %struct.termnets*, %struct.termnets** %arrayidx2, align 8
  %net = getelementptr inbounds %struct.termnets, %struct.termnets* %5, i32 0, i32 0
  %6 = load i32, i32* %net, align 4
  %idxprom3 = sext i32 %6 to i64
  %7 = load %struct.dimbox**, %struct.dimbox*** @netarray, align 8
  %arrayidx4 = getelementptr inbounds %struct.dimbox*, %struct.dimbox** %7, i64 %idxprom3
  %8 = load %struct.dimbox*, %struct.dimbox** %arrayidx4, align 8
  %netptr5 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %8, i32 0, i32 0
  %9 = load %struct.netbox*, %struct.netbox** %netptr5, align 8
  store %struct.netbox* %9, %struct.netbox** %netptr, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %10 = load %struct.netbox*, %struct.netbox** %netptr, align 8
  %cmp = icmp ne %struct.netbox* %10, null
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %11 = load %struct.netbox*, %struct.netbox** %netptr, align 8
  %terminal6 = getelementptr inbounds %struct.netbox, %struct.netbox* %11, i32 0, i32 5
  %12 = load i32, i32* %terminal6, align 4
  %13 = load i32, i32* %aPin, align 4
  %cmp7 = icmp ne i32 %12, %13
  br i1 %cmp7, label %if.then, label %if.end.25

if.then:                                          ; preds = %for.body
  %14 = load %struct.netbox*, %struct.netbox** %netptr, align 8
  %xpos = getelementptr inbounds %struct.netbox, %struct.netbox* %14, i32 0, i32 1
  %15 = load i32, i32* %xpos, align 4
  %16 = load i32, i32* %litoX, align 4
  %cmp8 = icmp slt i32 %15, %16
  br i1 %cmp8, label %if.then.9, label %if.end

if.then.9:                                        ; preds = %if.then
  %17 = load %struct.netbox*, %struct.netbox** %netptr, align 8
  %xpos10 = getelementptr inbounds %struct.netbox, %struct.netbox* %17, i32 0, i32 1
  %18 = load i32, i32* %xpos10, align 4
  store i32 %18, i32* %litoX, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.9, %if.then
  %19 = load %struct.netbox*, %struct.netbox** %netptr, align 8
  %xpos11 = getelementptr inbounds %struct.netbox, %struct.netbox* %19, i32 0, i32 1
  %20 = load i32, i32* %xpos11, align 4
  %21 = load i32, i32* %bigoX, align 4
  %cmp12 = icmp sgt i32 %20, %21
  br i1 %cmp12, label %if.then.13, label %if.end.15

if.then.13:                                       ; preds = %if.end
  %22 = load %struct.netbox*, %struct.netbox** %netptr, align 8
  %xpos14 = getelementptr inbounds %struct.netbox, %struct.netbox* %22, i32 0, i32 1
  %23 = load i32, i32* %xpos14, align 4
  store i32 %23, i32* %bigoX, align 4
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.13, %if.end
  %24 = load %struct.netbox*, %struct.netbox** %netptr, align 8
  %ypos = getelementptr inbounds %struct.netbox, %struct.netbox* %24, i32 0, i32 2
  %25 = load i32, i32* %ypos, align 4
  %26 = load i32, i32* %litoY, align 4
  %cmp16 = icmp slt i32 %25, %26
  br i1 %cmp16, label %if.then.17, label %if.end.19

if.then.17:                                       ; preds = %if.end.15
  %27 = load %struct.netbox*, %struct.netbox** %netptr, align 8
  %ypos18 = getelementptr inbounds %struct.netbox, %struct.netbox* %27, i32 0, i32 2
  %28 = load i32, i32* %ypos18, align 4
  store i32 %28, i32* %litoY, align 4
  br label %if.end.19

if.end.19:                                        ; preds = %if.then.17, %if.end.15
  %29 = load %struct.netbox*, %struct.netbox** %netptr, align 8
  %ypos20 = getelementptr inbounds %struct.netbox, %struct.netbox* %29, i32 0, i32 2
  %30 = load i32, i32* %ypos20, align 4
  %31 = load i32, i32* %bigoY, align 4
  %cmp21 = icmp sgt i32 %30, %31
  br i1 %cmp21, label %if.then.22, label %if.end.24

if.then.22:                                       ; preds = %if.end.19
  %32 = load %struct.netbox*, %struct.netbox** %netptr, align 8
  %ypos23 = getelementptr inbounds %struct.netbox, %struct.netbox* %32, i32 0, i32 2
  %33 = load i32, i32* %ypos23, align 4
  store i32 %33, i32* %bigoY, align 4
  br label %if.end.24

if.end.24:                                        ; preds = %if.then.22, %if.end.19
  br label %if.end.25

if.end.25:                                        ; preds = %if.end.24, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.25
  %34 = load %struct.netbox*, %struct.netbox** %netptr, align 8
  %nextterm = getelementptr inbounds %struct.netbox, %struct.netbox* %34, i32 0, i32 0
  %35 = load %struct.netbox*, %struct.netbox** %nextterm, align 8
  store %struct.netbox* %35, %struct.netbox** %netptr, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %36 = load i32, i32* @HorV, align 4
  %tobool = icmp ne i32 %36, 0
  br i1 %tobool, label %if.then.26, label %if.else.499

if.then.26:                                       ; preds = %for.end
  %37 = load i32, i32* @nPinLocs, align 4
  %idxprom27 = sext i32 %37 to i64
  %38 = load %struct.flogbox*, %struct.flogbox** @lArray, align 8
  %arrayidx28 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %38, i64 %idxprom27
  %finaly = getelementptr inbounds %struct.flogbox, %struct.flogbox* %arrayidx28, i32 0, i32 3
  %39 = load i32, i32* %finaly, align 4
  %40 = load %struct.flogbox*, %struct.flogbox** @lArray, align 8
  %arrayidx29 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %40, i64 1
  %finaly30 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %arrayidx29, i32 0, i32 3
  %41 = load i32, i32* %finaly30, align 4
  %cmp31 = icmp sgt i32 %39, %41
  br i1 %cmp31, label %if.then.32, label %if.else.260

if.then.32:                                       ; preds = %if.then.26
  %42 = load i32, i32* %litoY, align 4
  %43 = load i32, i32* @nPinLocs, align 4
  %idxprom33 = sext i32 %43 to i64
  %44 = load %struct.flogbox*, %struct.flogbox** @lArray, align 8
  %arrayidx34 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %44, i64 %idxprom33
  %finaly35 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %arrayidx34, i32 0, i32 3
  %45 = load i32, i32* %finaly35, align 4
  %cmp36 = icmp sge i32 %42, %45
  br i1 %cmp36, label %if.then.37, label %if.else

if.then.37:                                       ; preds = %if.then.32
  %46 = load i32, i32* @nPinLocs, align 4
  store i32 %46, i32* %bestPos, align 4
  br label %if.end.259

if.else:                                          ; preds = %if.then.32
  %47 = load i32, i32* %bigoY, align 4
  %48 = load %struct.flogbox*, %struct.flogbox** @lArray, align 8
  %arrayidx38 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %48, i64 1
  %finaly39 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %arrayidx38, i32 0, i32 3
  %49 = load i32, i32* %finaly39, align 4
  %cmp40 = icmp sle i32 %47, %49
  br i1 %cmp40, label %if.then.41, label %if.else.42

if.then.41:                                       ; preds = %if.else
  store i32 1, i32* %bestPos, align 4
  br label %if.end.258

if.else.42:                                       ; preds = %if.else
  %50 = load i32, i32* %bigoY, align 4
  %51 = load i32, i32* @nPinLocs, align 4
  %idxprom43 = sext i32 %51 to i64
  %52 = load %struct.flogbox*, %struct.flogbox** @lArray, align 8
  %arrayidx44 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %52, i64 %idxprom43
  %finaly45 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %arrayidx44, i32 0, i32 3
  %53 = load i32, i32* %finaly45, align 4
  %cmp46 = icmp sle i32 %50, %53
  br i1 %cmp46, label %land.lhs.true, label %if.else.107

land.lhs.true:                                    ; preds = %if.else.42
  %54 = load i32, i32* %litoY, align 4
  %55 = load %struct.flogbox*, %struct.flogbox** @lArray, align 8
  %arrayidx47 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %55, i64 1
  %finaly48 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %arrayidx47, i32 0, i32 3
  %56 = load i32, i32* %finaly48, align 4
  %cmp49 = icmp sge i32 %54, %56
  br i1 %cmp49, label %if.then.50, label %if.else.107

if.then.50:                                       ; preds = %land.lhs.true
  %57 = load i32, i32* %bigoY, align 4
  %58 = load i32, i32* %litoY, align 4
  %add = add nsw i32 %57, %58
  %div = sdiv i32 %add, 2
  store i32 %div, i32* %meany, align 4
  %59 = load i32, i32* %meany, align 4
  %60 = load %struct.flogbox*, %struct.flogbox** @lArray, align 8
  %arrayidx51 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %60, i64 1
  %finaly52 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %arrayidx51, i32 0, i32 3
  %61 = load i32, i32* %finaly52, align 4
  %sub = sub nsw i32 %59, %61
  %cmp53 = icmp sge i32 %sub, 0
  br i1 %cmp53, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.50
  %62 = load i32, i32* %meany, align 4
  %63 = load %struct.flogbox*, %struct.flogbox** @lArray, align 8
  %arrayidx54 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %63, i64 1
  %finaly55 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %arrayidx54, i32 0, i32 3
  %64 = load i32, i32* %finaly55, align 4
  %sub56 = sub nsw i32 %62, %64
  br label %cond.end

cond.false:                                       ; preds = %if.then.50
  %65 = load i32, i32* %meany, align 4
  %66 = load %struct.flogbox*, %struct.flogbox** @lArray, align 8
  %arrayidx57 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %66, i64 1
  %finaly58 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %arrayidx57, i32 0, i32 3
  %67 = load i32, i32* %finaly58, align 4
  %sub59 = sub nsw i32 %65, %67
  %sub60 = sub nsw i32 0, %sub59
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %sub56, %cond.true ], [ %sub60, %cond.false ]
  store i32 %cond, i32* %distant, align 4
  store i32 2, i32* %i, align 4
  br label %for.cond.61

for.cond.61:                                      ; preds = %for.inc.104, %cond.end
  %68 = load i32, i32* %i, align 4
  %69 = load i32, i32* @nPinLocs, align 4
  %cmp62 = icmp sle i32 %68, %69
  br i1 %cmp62, label %for.body.63, label %for.end.105

for.body.63:                                      ; preds = %for.cond.61
  %70 = load i32, i32* %meany, align 4
  %71 = load i32, i32* %i, align 4
  %idxprom64 = sext i32 %71 to i64
  %72 = load %struct.flogbox*, %struct.flogbox** @lArray, align 8
  %arrayidx65 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %72, i64 %idxprom64
  %finaly66 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %arrayidx65, i32 0, i32 3
  %73 = load i32, i32* %finaly66, align 4
  %sub67 = sub nsw i32 %70, %73
  %cmp68 = icmp sge i32 %sub67, 0
  br i1 %cmp68, label %cond.true.69, label %cond.false.74

cond.true.69:                                     ; preds = %for.body.63
  %74 = load i32, i32* %meany, align 4
  %75 = load i32, i32* %i, align 4
  %idxprom70 = sext i32 %75 to i64
  %76 = load %struct.flogbox*, %struct.flogbox** @lArray, align 8
  %arrayidx71 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %76, i64 %idxprom70
  %finaly72 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %arrayidx71, i32 0, i32 3
  %77 = load i32, i32* %finaly72, align 4
  %sub73 = sub nsw i32 %74, %77
  br label %cond.end.80

cond.false.74:                                    ; preds = %for.body.63
  %78 = load i32, i32* %meany, align 4
  %79 = load i32, i32* %i, align 4
  %idxprom75 = sext i32 %79 to i64
  %80 = load %struct.flogbox*, %struct.flogbox** @lArray, align 8
  %arrayidx76 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %80, i64 %idxprom75
  %finaly77 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %arrayidx76, i32 0, i32 3
  %81 = load i32, i32* %finaly77, align 4
  %sub78 = sub nsw i32 %78, %81
  %sub79 = sub nsw i32 0, %sub78
  br label %cond.end.80

cond.end.80:                                      ; preds = %cond.false.74, %cond.true.69
  %cond81 = phi i32 [ %sub73, %cond.true.69 ], [ %sub79, %cond.false.74 ]
  %82 = load i32, i32* %distant, align 4
  %cmp82 = icmp slt i32 %cond81, %82
  br i1 %cmp82, label %if.then.83, label %if.else.102

if.then.83:                                       ; preds = %cond.end.80
  %83 = load i32, i32* %meany, align 4
  %84 = load i32, i32* %i, align 4
  %idxprom84 = sext i32 %84 to i64
  %85 = load %struct.flogbox*, %struct.flogbox** @lArray, align 8
  %arrayidx85 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %85, i64 %idxprom84
  %finaly86 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %arrayidx85, i32 0, i32 3
  %86 = load i32, i32* %finaly86, align 4
  %sub87 = sub nsw i32 %83, %86
  %cmp88 = icmp sge i32 %sub87, 0
  br i1 %cmp88, label %cond.true.89, label %cond.false.94

cond.true.89:                                     ; preds = %if.then.83
  %87 = load i32, i32* %meany, align 4
  %88 = load i32, i32* %i, align 4
  %idxprom90 = sext i32 %88 to i64
  %89 = load %struct.flogbox*, %struct.flogbox** @lArray, align 8
  %arrayidx91 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %89, i64 %idxprom90
  %finaly92 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %arrayidx91, i32 0, i32 3
  %90 = load i32, i32* %finaly92, align 4
  %sub93 = sub nsw i32 %87, %90
  br label %cond.end.100

cond.false.94:                                    ; preds = %if.then.83
  %91 = load i32, i32* %meany, align 4
  %92 = load i32, i32* %i, align 4
  %idxprom95 = sext i32 %92 to i64
  %93 = load %struct.flogbox*, %struct.flogbox** @lArray, align 8
  %arrayidx96 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %93, i64 %idxprom95
  %finaly97 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %arrayidx96, i32 0, i32 3
  %94 = load i32, i32* %finaly97, align 4
  %sub98 = sub nsw i32 %91, %94
  %sub99 = sub nsw i32 0, %sub98
  br label %cond.end.100

cond.end.100:                                     ; preds = %cond.false.94, %cond.true.89
  %cond101 = phi i32 [ %sub93, %cond.true.89 ], [ %sub99, %cond.false.94 ]
  store i32 %cond101, i32* %distant, align 4
  br label %if.end.103

if.else.102:                                      ; preds = %cond.end.80
  br label %for.end.105

if.end.103:                                       ; preds = %cond.end.100
  br label %for.inc.104

for.inc.104:                                      ; preds = %if.end.103
  %95 = load i32, i32* %i, align 4
  %inc = add nsw i32 %95, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond.61

for.end.105:                                      ; preds = %if.else.102, %for.cond.61
  %96 = load i32, i32* %i, align 4
  %sub106 = sub nsw i32 %96, 1
  store i32 %sub106, i32* %bestPos, align 4
  br label %if.end.257

if.else.107:                                      ; preds = %land.lhs.true, %if.else.42
  %97 = load i32, i32* %bigoY, align 4
  %98 = load i32, i32* @nPinLocs, align 4
  %idxprom108 = sext i32 %98 to i64
  %99 = load %struct.flogbox*, %struct.flogbox** @lArray, align 8
  %arrayidx109 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %99, i64 %idxprom108
  %finaly110 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %arrayidx109, i32 0, i32 3
  %100 = load i32, i32* %finaly110, align 4
  %cmp111 = icmp sge i32 %97, %100
  br i1 %cmp111, label %land.lhs.true.112, label %if.else.119

land.lhs.true.112:                                ; preds = %if.else.107
  %101 = load i32, i32* %litoY, align 4
  %102 = load %struct.flogbox*, %struct.flogbox** @lArray, align 8
  %arrayidx113 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %102, i64 1
  %finaly114 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %arrayidx113, i32 0, i32 3
  %103 = load i32, i32* %finaly114, align 4
  %cmp115 = icmp sle i32 %101, %103
  br i1 %cmp115, label %if.then.116, label %if.else.119

if.then.116:                                      ; preds = %land.lhs.true.112
  %104 = load i32, i32* @nPinLocs, align 4
  %add117 = add nsw i32 %104, 1
  %div118 = sdiv i32 %add117, 2
  store i32 %div118, i32* %bestPos, align 4
  br label %if.end.256

if.else.119:                                      ; preds = %land.lhs.true.112, %if.else.107
  %105 = load i32, i32* %litoY, align 4
  %106 = load i32, i32* @nPinLocs, align 4
  %idxprom120 = sext i32 %106 to i64
  %107 = load %struct.flogbox*, %struct.flogbox** @lArray, align 8
  %arrayidx121 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %107, i64 %idxprom120
  %finaly122 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %arrayidx121, i32 0, i32 3
  %108 = load i32, i32* %finaly122, align 4
  %cmp123 = icmp slt i32 %105, %108
  br i1 %cmp123, label %land.lhs.true.124, label %if.else.192

land.lhs.true.124:                                ; preds = %if.else.119
  %109 = load i32, i32* %litoY, align 4
  %110 = load %struct.flogbox*, %struct.flogbox** @lArray, align 8
  %arrayidx125 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %110, i64 1
  %finaly126 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %arrayidx125, i32 0, i32 3
  %111 = load i32, i32* %finaly126, align 4
  %cmp127 = icmp sgt i32 %109, %111
  br i1 %cmp127, label %if.then.128, label %if.else.192

if.then.128:                                      ; preds = %land.lhs.true.124
  %112 = load i32, i32* %litoY, align 4
  %113 = load %struct.flogbox*, %struct.flogbox** @lArray, align 8
  %arrayidx129 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %113, i64 1
  %finaly130 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %arrayidx129, i32 0, i32 3
  %114 = load i32, i32* %finaly130, align 4
  %sub131 = sub nsw i32 %112, %114
  %cmp132 = icmp sge i32 %sub131, 0
  br i1 %cmp132, label %cond.true.133, label %cond.false.137

cond.true.133:                                    ; preds = %if.then.128
  %115 = load i32, i32* %litoY, align 4
  %116 = load %struct.flogbox*, %struct.flogbox** @lArray, align 8
  %arrayidx134 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %116, i64 1
  %finaly135 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %arrayidx134, i32 0, i32 3
  %117 = load i32, i32* %finaly135, align 4
  %sub136 = sub nsw i32 %115, %117
  br label %cond.end.142

cond.false.137:                                   ; preds = %if.then.128
  %118 = load i32, i32* %litoY, align 4
  %119 = load %struct.flogbox*, %struct.flogbox** @lArray, align 8
  %arrayidx138 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %119, i64 1
  %finaly139 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %arrayidx138, i32 0, i32 3
  %120 = load i32, i32* %finaly139, align 4
  %sub140 = sub nsw i32 %118, %120
  %sub141 = sub nsw i32 0, %sub140
  br label %cond.end.142

cond.end.142:                                     ; preds = %cond.false.137, %cond.true.133
  %cond143 = phi i32 [ %sub136, %cond.true.133 ], [ %sub141, %cond.false.137 ]
  store i32 %cond143, i32* %distant, align 4
  store i32 2, i32* %i, align 4
  br label %for.cond.144

for.cond.144:                                     ; preds = %for.inc.187, %cond.end.142
  %121 = load i32, i32* %i, align 4
  %122 = load i32, i32* @nPinLocs, align 4
  %cmp145 = icmp sle i32 %121, %122
  br i1 %cmp145, label %for.body.146, label %for.end.189

for.body.146:                                     ; preds = %for.cond.144
  %123 = load i32, i32* %litoY, align 4
  %124 = load i32, i32* %i, align 4
  %idxprom147 = sext i32 %124 to i64
  %125 = load %struct.flogbox*, %struct.flogbox** @lArray, align 8
  %arrayidx148 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %125, i64 %idxprom147
  %finaly149 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %arrayidx148, i32 0, i32 3
  %126 = load i32, i32* %finaly149, align 4
  %sub150 = sub nsw i32 %123, %126
  %cmp151 = icmp sge i32 %sub150, 0
  br i1 %cmp151, label %cond.true.152, label %cond.false.157

cond.true.152:                                    ; preds = %for.body.146
  %127 = load i32, i32* %litoY, align 4
  %128 = load i32, i32* %i, align 4
  %idxprom153 = sext i32 %128 to i64
  %129 = load %struct.flogbox*, %struct.flogbox** @lArray, align 8
  %arrayidx154 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %129, i64 %idxprom153
  %finaly155 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %arrayidx154, i32 0, i32 3
  %130 = load i32, i32* %finaly155, align 4
  %sub156 = sub nsw i32 %127, %130
  br label %cond.end.163

cond.false.157:                                   ; preds = %for.body.146
  %131 = load i32, i32* %litoY, align 4
  %132 = load i32, i32* %i, align 4
  %idxprom158 = sext i32 %132 to i64
  %133 = load %struct.flogbox*, %struct.flogbox** @lArray, align 8
  %arrayidx159 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %133, i64 %idxprom158
  %finaly160 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %arrayidx159, i32 0, i32 3
  %134 = load i32, i32* %finaly160, align 4
  %sub161 = sub nsw i32 %131, %134
  %sub162 = sub nsw i32 0, %sub161
  br label %cond.end.163

cond.end.163:                                     ; preds = %cond.false.157, %cond.true.152
  %cond164 = phi i32 [ %sub156, %cond.true.152 ], [ %sub162, %cond.false.157 ]
  %135 = load i32, i32* %distant, align 4
  %cmp165 = icmp slt i32 %cond164, %135
  br i1 %cmp165, label %if.then.166, label %if.else.185

if.then.166:                                      ; preds = %cond.end.163
  %136 = load i32, i32* %litoY, align 4
  %137 = load i32, i32* %i, align 4
  %idxprom167 = sext i32 %137 to i64
  %138 = load %struct.flogbox*, %struct.flogbox** @lArray, align 8
  %arrayidx168 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %138, i64 %idxprom167
  %finaly169 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %arrayidx168, i32 0, i32 3
  %139 = load i32, i32* %finaly169, align 4
  %sub170 = sub nsw i32 %136, %139
  %cmp171 = icmp sge i32 %sub170, 0
  br i1 %cmp171, label %cond.true.172, label %cond.false.177

cond.true.172:                                    ; preds = %if.then.166
  %140 = load i32, i32* %litoY, align 4
  %141 = load i32, i32* %i, align 4
  %idxprom173 = sext i32 %141 to i64
  %142 = load %struct.flogbox*, %struct.flogbox** @lArray, align 8
  %arrayidx174 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %142, i64 %idxprom173
  %finaly175 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %arrayidx174, i32 0, i32 3
  %143 = load i32, i32* %finaly175, align 4
  %sub176 = sub nsw i32 %140, %143
  br label %cond.end.183

cond.false.177:                                   ; preds = %if.then.166
  %144 = load i32, i32* %litoY, align 4
  %145 = load i32, i32* %i, align 4
  %idxprom178 = sext i32 %145 to i64
  %146 = load %struct.flogbox*, %struct.flogbox** @lArray, align 8
  %arrayidx179 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %146, i64 %idxprom178
  %finaly180 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %arrayidx179, i32 0, i32 3
  %147 = load i32, i32* %finaly180, align 4
  %sub181 = sub nsw i32 %144, %147
  %sub182 = sub nsw i32 0, %sub181
  br label %cond.end.183

cond.end.183:                                     ; preds = %cond.false.177, %cond.true.172
  %cond184 = phi i32 [ %sub176, %cond.true.172 ], [ %sub182, %cond.false.177 ]
  store i32 %cond184, i32* %distant, align 4
  br label %if.end.186

if.else.185:                                      ; preds = %cond.end.163
  br label %for.end.189

if.end.186:                                       ; preds = %cond.end.183
  br label %for.inc.187

for.inc.187:                                      ; preds = %if.end.186
  %148 = load i32, i32* %i, align 4
  %inc188 = add nsw i32 %148, 1
  store i32 %inc188, i32* %i, align 4
  br label %for.cond.144

for.end.189:                                      ; preds = %if.else.185, %for.cond.144
  %149 = load i32, i32* %i, align 4
  %150 = load i32, i32* @nPinLocs, align 4
  %add190 = add nsw i32 %149, %150
  %div191 = sdiv i32 %add190, 2
  store i32 %div191, i32* %bestPos, align 4
  br label %if.end.255

if.else.192:                                      ; preds = %land.lhs.true.124, %if.else.119
  %151 = load i32, i32* %bigoY, align 4
  %152 = load %struct.flogbox*, %struct.flogbox** @lArray, align 8
  %arrayidx193 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %152, i64 1
  %finaly194 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %arrayidx193, i32 0, i32 3
  %153 = load i32, i32* %finaly194, align 4
  %sub195 = sub nsw i32 %151, %153
  %cmp196 = icmp sge i32 %sub195, 0
  br i1 %cmp196, label %cond.true.197, label %cond.false.201

cond.true.197:                                    ; preds = %if.else.192
  %154 = load i32, i32* %bigoY, align 4
  %155 = load %struct.flogbox*, %struct.flogbox** @lArray, align 8
  %arrayidx198 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %155, i64 1
  %finaly199 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %arrayidx198, i32 0, i32 3
  %156 = load i32, i32* %finaly199, align 4
  %sub200 = sub nsw i32 %154, %156
  br label %cond.end.206

cond.false.201:                                   ; preds = %if.else.192
  %157 = load i32, i32* %bigoY, align 4
  %158 = load %struct.flogbox*, %struct.flogbox** @lArray, align 8
  %arrayidx202 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %158, i64 1
  %finaly203 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %arrayidx202, i32 0, i32 3
  %159 = load i32, i32* %finaly203, align 4
  %sub204 = sub nsw i32 %157, %159
  %sub205 = sub nsw i32 0, %sub204
  br label %cond.end.206

cond.end.206:                                     ; preds = %cond.false.201, %cond.true.197
  %cond207 = phi i32 [ %sub200, %cond.true.197 ], [ %sub205, %cond.false.201 ]
  store i32 %cond207, i32* %distant, align 4
  store i32 2, i32* %i, align 4
  br label %for.cond.208

for.cond.208:                                     ; preds = %for.inc.251, %cond.end.206
  %160 = load i32, i32* %i, align 4
  %161 = load i32, i32* @nPinLocs, align 4
  %cmp209 = icmp sle i32 %160, %161
  br i1 %cmp209, label %for.body.210, label %for.end.253

for.body.210:                                     ; preds = %for.cond.208
  %162 = load i32, i32* %bigoY, align 4
  %163 = load i32, i32* %i, align 4
  %idxprom211 = sext i32 %163 to i64
  %164 = load %struct.flogbox*, %struct.flogbox** @lArray, align 8
  %arrayidx212 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %164, i64 %idxprom211
  %finaly213 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %arrayidx212, i32 0, i32 3
  %165 = load i32, i32* %finaly213, align 4
  %sub214 = sub nsw i32 %162, %165
  %cmp215 = icmp sge i32 %sub214, 0
  br i1 %cmp215, label %cond.true.216, label %cond.false.221

cond.true.216:                                    ; preds = %for.body.210
  %166 = load i32, i32* %bigoY, align 4
  %167 = load i32, i32* %i, align 4
  %idxprom217 = sext i32 %167 to i64
  %168 = load %struct.flogbox*, %struct.flogbox** @lArray, align 8
  %arrayidx218 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %168, i64 %idxprom217
  %finaly219 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %arrayidx218, i32 0, i32 3
  %169 = load i32, i32* %finaly219, align 4
  %sub220 = sub nsw i32 %166, %169
  br label %cond.end.227

cond.false.221:                                   ; preds = %for.body.210
  %170 = load i32, i32* %bigoY, align 4
  %171 = load i32, i32* %i, align 4
  %idxprom222 = sext i32 %171 to i64
  %172 = load %struct.flogbox*, %struct.flogbox** @lArray, align 8
  %arrayidx223 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %172, i64 %idxprom222
  %finaly224 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %arrayidx223, i32 0, i32 3
  %173 = load i32, i32* %finaly224, align 4
  %sub225 = sub nsw i32 %170, %173
  %sub226 = sub nsw i32 0, %sub225
  br label %cond.end.227

cond.end.227:                                     ; preds = %cond.false.221, %cond.true.216
  %cond228 = phi i32 [ %sub220, %cond.true.216 ], [ %sub226, %cond.false.221 ]
  %174 = load i32, i32* %distant, align 4
  %cmp229 = icmp slt i32 %cond228, %174
  br i1 %cmp229, label %if.then.230, label %if.else.249

if.then.230:                                      ; preds = %cond.end.227
  %175 = load i32, i32* %bigoY, align 4
  %176 = load i32, i32* %i, align 4
  %idxprom231 = sext i32 %176 to i64
  %177 = load %struct.flogbox*, %struct.flogbox** @lArray, align 8
  %arrayidx232 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %177, i64 %idxprom231
  %finaly233 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %arrayidx232, i32 0, i32 3
  %178 = load i32, i32* %finaly233, align 4
  %sub234 = sub nsw i32 %175, %178
  %cmp235 = icmp sge i32 %sub234, 0
  br i1 %cmp235, label %cond.true.236, label %cond.false.241

cond.true.236:                                    ; preds = %if.then.230
  %179 = load i32, i32* %bigoY, align 4
  %180 = load i32, i32* %i, align 4
  %idxprom237 = sext i32 %180 to i64
  %181 = load %struct.flogbox*, %struct.flogbox** @lArray, align 8
  %arrayidx238 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %181, i64 %idxprom237
  %finaly239 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %arrayidx238, i32 0, i32 3
  %182 = load i32, i32* %finaly239, align 4
  %sub240 = sub nsw i32 %179, %182
  br label %cond.end.247

cond.false.241:                                   ; preds = %if.then.230
  %183 = load i32, i32* %bigoY, align 4
  %184 = load i32, i32* %i, align 4
  %idxprom242 = sext i32 %184 to i64
  %185 = load %struct.flogbox*, %struct.flogbox** @lArray, align 8
  %arrayidx243 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %185, i64 %idxprom242
  %finaly244 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %arrayidx243, i32 0, i32 3
  %186 = load i32, i32* %finaly244, align 4
  %sub245 = sub nsw i32 %183, %186
  %sub246 = sub nsw i32 0, %sub245
  br label %cond.end.247

cond.end.247:                                     ; preds = %cond.false.241, %cond.true.236
  %cond248 = phi i32 [ %sub240, %cond.true.236 ], [ %sub246, %cond.false.241 ]
  store i32 %cond248, i32* %distant, align 4
  br label %if.end.250

if.else.249:                                      ; preds = %cond.end.227
  br label %for.end.253

if.end.250:                                       ; preds = %cond.end.247
  br label %for.inc.251

for.inc.251:                                      ; preds = %if.end.250
  %187 = load i32, i32* %i, align 4
  %inc252 = add nsw i32 %187, 1
  store i32 %inc252, i32* %i, align 4
  br label %for.cond.208

for.end.253:                                      ; preds = %if.else.249, %for.cond.208
  %188 = load i32, i32* %i, align 4
  %div254 = sdiv i32 %188, 2
  store i32 %div254, i32* %bestPos, align 4
  br label %if.end.255

if.end.255:                                       ; preds = %for.end.253, %for.end.189
  br label %if.end.256

if.end.256:                                       ; preds = %if.end.255, %if.then.116
  br label %if.end.257

if.end.257:                                       ; preds = %if.end.256, %for.end.105
  br label %if.end.258

if.end.258:                                       ; preds = %if.end.257, %if.then.41
  br label %if.end.259

if.end.259:                                       ; preds = %if.end.258, %if.then.37
  br label %if.end.498

if.else.260:                                      ; preds = %if.then.26
  %189 = load i32, i32* %litoY, align 4
  %190 = load %struct.flogbox*, %struct.flogbox** @lArray, align 8
  %arrayidx261 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %190, i64 1
  %finaly262 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %arrayidx261, i32 0, i32 3
  %191 = load i32, i32* %finaly262, align 4
  %cmp263 = icmp sge i32 %189, %191
  br i1 %cmp263, label %if.then.264, label %if.else.265

if.then.264:                                      ; preds = %if.else.260
  store i32 1, i32* %bestPos, align 4
  br label %if.end.497

if.else.265:                                      ; preds = %if.else.260
  %192 = load i32, i32* %bigoY, align 4
  %193 = load i32, i32* @nPinLocs, align 4
  %idxprom266 = sext i32 %193 to i64
  %194 = load %struct.flogbox*, %struct.flogbox** @lArray, align 8
  %arrayidx267 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %194, i64 %idxprom266
  %finaly268 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %arrayidx267, i32 0, i32 3
  %195 = load i32, i32* %finaly268, align 4
  %cmp269 = icmp sle i32 %192, %195
  br i1 %cmp269, label %if.then.270, label %if.else.271

if.then.270:                                      ; preds = %if.else.265
  %196 = load i32, i32* @nPinLocs, align 4
  store i32 %196, i32* %bestPos, align 4
  br label %if.end.496

if.else.271:                                      ; preds = %if.else.265
  %197 = load i32, i32* %bigoY, align 4
  %198 = load %struct.flogbox*, %struct.flogbox** @lArray, align 8
  %arrayidx272 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %198, i64 1
  %finaly273 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %arrayidx272, i32 0, i32 3
  %199 = load i32, i32* %finaly273, align 4
  %cmp274 = icmp sle i32 %197, %199
  br i1 %cmp274, label %land.lhs.true.275, label %if.else.345

land.lhs.true.275:                                ; preds = %if.else.271
  %200 = load i32, i32* %litoY, align 4
  %201 = load i32, i32* @nPinLocs, align 4
  %idxprom276 = sext i32 %201 to i64
  %202 = load %struct.flogbox*, %struct.flogbox** @lArray, align 8
  %arrayidx277 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %202, i64 %idxprom276
  %finaly278 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %arrayidx277, i32 0, i32 3
  %203 = load i32, i32* %finaly278, align 4
  %cmp279 = icmp sge i32 %200, %203
  br i1 %cmp279, label %if.then.280, label %if.else.345

if.then.280:                                      ; preds = %land.lhs.true.275
  %204 = load i32, i32* %bigoY, align 4
  %205 = load i32, i32* %litoY, align 4
  %add281 = add nsw i32 %204, %205
  %div282 = sdiv i32 %add281, 2
  store i32 %div282, i32* %meany, align 4
  %206 = load i32, i32* %meany, align 4
  %207 = load %struct.flogbox*, %struct.flogbox** @lArray, align 8
  %arrayidx283 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %207, i64 1
  %finaly284 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %arrayidx283, i32 0, i32 3
  %208 = load i32, i32* %finaly284, align 4
  %sub285 = sub nsw i32 %206, %208
  %cmp286 = icmp sge i32 %sub285, 0
  br i1 %cmp286, label %cond.true.287, label %cond.false.291

cond.true.287:                                    ; preds = %if.then.280
  %209 = load i32, i32* %meany, align 4
  %210 = load %struct.flogbox*, %struct.flogbox** @lArray, align 8
  %arrayidx288 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %210, i64 1
  %finaly289 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %arrayidx288, i32 0, i32 3
  %211 = load i32, i32* %finaly289, align 4
  %sub290 = sub nsw i32 %209, %211
  br label %cond.end.296

cond.false.291:                                   ; preds = %if.then.280
  %212 = load i32, i32* %meany, align 4
  %213 = load %struct.flogbox*, %struct.flogbox** @lArray, align 8
  %arrayidx292 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %213, i64 1
  %finaly293 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %arrayidx292, i32 0, i32 3
  %214 = load i32, i32* %finaly293, align 4
  %sub294 = sub nsw i32 %212, %214
  %sub295 = sub nsw i32 0, %sub294
  br label %cond.end.296

cond.end.296:                                     ; preds = %cond.false.291, %cond.true.287
  %cond297 = phi i32 [ %sub290, %cond.true.287 ], [ %sub295, %cond.false.291 ]
  store i32 %cond297, i32* %distant, align 4
  store i32 2, i32* %i, align 4
  br label %for.cond.298

for.cond.298:                                     ; preds = %for.inc.341, %cond.end.296
  %215 = load i32, i32* %i, align 4
  %216 = load i32, i32* @nPinLocs, align 4
  %cmp299 = icmp sle i32 %215, %216
  br i1 %cmp299, label %for.body.300, label %for.end.343

for.body.300:                                     ; preds = %for.cond.298
  %217 = load i32, i32* %meany, align 4
  %218 = load i32, i32* %i, align 4
  %idxprom301 = sext i32 %218 to i64
  %219 = load %struct.flogbox*, %struct.flogbox** @lArray, align 8
  %arrayidx302 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %219, i64 %idxprom301
  %finaly303 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %arrayidx302, i32 0, i32 3
  %220 = load i32, i32* %finaly303, align 4
  %sub304 = sub nsw i32 %217, %220
  %cmp305 = icmp sge i32 %sub304, 0
  br i1 %cmp305, label %cond.true.306, label %cond.false.311

cond.true.306:                                    ; preds = %for.body.300
  %221 = load i32, i32* %meany, align 4
  %222 = load i32, i32* %i, align 4
  %idxprom307 = sext i32 %222 to i64
  %223 = load %struct.flogbox*, %struct.flogbox** @lArray, align 8
  %arrayidx308 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %223, i64 %idxprom307
  %finaly309 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %arrayidx308, i32 0, i32 3
  %224 = load i32, i32* %finaly309, align 4
  %sub310 = sub nsw i32 %221, %224
  br label %cond.end.317

cond.false.311:                                   ; preds = %for.body.300
  %225 = load i32, i32* %meany, align 4
  %226 = load i32, i32* %i, align 4
  %idxprom312 = sext i32 %226 to i64
  %227 = load %struct.flogbox*, %struct.flogbox** @lArray, align 8
  %arrayidx313 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %227, i64 %idxprom312
  %finaly314 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %arrayidx313, i32 0, i32 3
  %228 = load i32, i32* %finaly314, align 4
  %sub315 = sub nsw i32 %225, %228
  %sub316 = sub nsw i32 0, %sub315
  br label %cond.end.317

cond.end.317:                                     ; preds = %cond.false.311, %cond.true.306
  %cond318 = phi i32 [ %sub310, %cond.true.306 ], [ %sub316, %cond.false.311 ]
  %229 = load i32, i32* %distant, align 4
  %cmp319 = icmp slt i32 %cond318, %229
  br i1 %cmp319, label %if.then.320, label %if.else.339

if.then.320:                                      ; preds = %cond.end.317
  %230 = load i32, i32* %meany, align 4
  %231 = load i32, i32* %i, align 4
  %idxprom321 = sext i32 %231 to i64
  %232 = load %struct.flogbox*, %struct.flogbox** @lArray, align 8
  %arrayidx322 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %232, i64 %idxprom321
  %finaly323 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %arrayidx322, i32 0, i32 3
  %233 = load i32, i32* %finaly323, align 4
  %sub324 = sub nsw i32 %230, %233
  %cmp325 = icmp sge i32 %sub324, 0
  br i1 %cmp325, label %cond.true.326, label %cond.false.331

cond.true.326:                                    ; preds = %if.then.320
  %234 = load i32, i32* %meany, align 4
  %235 = load i32, i32* %i, align 4
  %idxprom327 = sext i32 %235 to i64
  %236 = load %struct.flogbox*, %struct.flogbox** @lArray, align 8
  %arrayidx328 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %236, i64 %idxprom327
  %finaly329 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %arrayidx328, i32 0, i32 3
  %237 = load i32, i32* %finaly329, align 4
  %sub330 = sub nsw i32 %234, %237
  br label %cond.end.337

cond.false.331:                                   ; preds = %if.then.320
  %238 = load i32, i32* %meany, align 4
  %239 = load i32, i32* %i, align 4
  %idxprom332 = sext i32 %239 to i64
  %240 = load %struct.flogbox*, %struct.flogbox** @lArray, align 8
  %arrayidx333 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %240, i64 %idxprom332
  %finaly334 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %arrayidx333, i32 0, i32 3
  %241 = load i32, i32* %finaly334, align 4
  %sub335 = sub nsw i32 %238, %241
  %sub336 = sub nsw i32 0, %sub335
  br label %cond.end.337

cond.end.337:                                     ; preds = %cond.false.331, %cond.true.326
  %cond338 = phi i32 [ %sub330, %cond.true.326 ], [ %sub336, %cond.false.331 ]
  store i32 %cond338, i32* %distant, align 4
  br label %if.end.340

if.else.339:                                      ; preds = %cond.end.317
  br label %for.end.343

if.end.340:                                       ; preds = %cond.end.337
  br label %for.inc.341

for.inc.341:                                      ; preds = %if.end.340
  %242 = load i32, i32* %i, align 4
  %inc342 = add nsw i32 %242, 1
  store i32 %inc342, i32* %i, align 4
  br label %for.cond.298

for.end.343:                                      ; preds = %if.else.339, %for.cond.298
  %243 = load i32, i32* %i, align 4
  %sub344 = sub nsw i32 %243, 1
  store i32 %sub344, i32* %bestPos, align 4
  br label %if.end.495

if.else.345:                                      ; preds = %land.lhs.true.275, %if.else.271
  %244 = load i32, i32* %bigoY, align 4
  %245 = load %struct.flogbox*, %struct.flogbox** @lArray, align 8
  %arrayidx346 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %245, i64 1
  %finaly347 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %arrayidx346, i32 0, i32 3
  %246 = load i32, i32* %finaly347, align 4
  %cmp348 = icmp sge i32 %244, %246
  br i1 %cmp348, label %land.lhs.true.349, label %if.else.357

land.lhs.true.349:                                ; preds = %if.else.345
  %247 = load i32, i32* %litoY, align 4
  %248 = load i32, i32* @nPinLocs, align 4
  %idxprom350 = sext i32 %248 to i64
  %249 = load %struct.flogbox*, %struct.flogbox** @lArray, align 8
  %arrayidx351 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %249, i64 %idxprom350
  %finaly352 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %arrayidx351, i32 0, i32 3
  %250 = load i32, i32* %finaly352, align 4
  %cmp353 = icmp sle i32 %247, %250
  br i1 %cmp353, label %if.then.354, label %if.else.357

if.then.354:                                      ; preds = %land.lhs.true.349
  %251 = load i32, i32* @nPinLocs, align 4
  %add355 = add nsw i32 %251, 1
  %div356 = sdiv i32 %add355, 2
  store i32 %div356, i32* %bestPos, align 4
  br label %if.end.494

if.else.357:                                      ; preds = %land.lhs.true.349, %if.else.345
  %252 = load i32, i32* %litoY, align 4
  %253 = load %struct.flogbox*, %struct.flogbox** @lArray, align 8
  %arrayidx358 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %253, i64 1
  %finaly359 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %arrayidx358, i32 0, i32 3
  %254 = load i32, i32* %finaly359, align 4
  %cmp360 = icmp slt i32 %252, %254
  br i1 %cmp360, label %land.lhs.true.361, label %if.else.429

land.lhs.true.361:                                ; preds = %if.else.357
  %255 = load i32, i32* %litoY, align 4
  %256 = load i32, i32* @nPinLocs, align 4
  %idxprom362 = sext i32 %256 to i64
  %257 = load %struct.flogbox*, %struct.flogbox** @lArray, align 8
  %arrayidx363 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %257, i64 %idxprom362
  %finaly364 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %arrayidx363, i32 0, i32 3
  %258 = load i32, i32* %finaly364, align 4
  %cmp365 = icmp sgt i32 %255, %258
  br i1 %cmp365, label %if.then.366, label %if.else.429

if.then.366:                                      ; preds = %land.lhs.true.361
  %259 = load i32, i32* %litoY, align 4
  %260 = load %struct.flogbox*, %struct.flogbox** @lArray, align 8
  %arrayidx367 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %260, i64 1
  %finaly368 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %arrayidx367, i32 0, i32 3
  %261 = load i32, i32* %finaly368, align 4
  %sub369 = sub nsw i32 %259, %261
  %cmp370 = icmp sge i32 %sub369, 0
  br i1 %cmp370, label %cond.true.371, label %cond.false.375

cond.true.371:                                    ; preds = %if.then.366
  %262 = load i32, i32* %litoY, align 4
  %263 = load %struct.flogbox*, %struct.flogbox** @lArray, align 8
  %arrayidx372 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %263, i64 1
  %finaly373 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %arrayidx372, i32 0, i32 3
  %264 = load i32, i32* %finaly373, align 4
  %sub374 = sub nsw i32 %262, %264
  br label %cond.end.380

cond.false.375:                                   ; preds = %if.then.366
  %265 = load i32, i32* %litoY, align 4
  %266 = load %struct.flogbox*, %struct.flogbox** @lArray, align 8
  %arrayidx376 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %266, i64 1
  %finaly377 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %arrayidx376, i32 0, i32 3
  %267 = load i32, i32* %finaly377, align 4
  %sub378 = sub nsw i32 %265, %267
  %sub379 = sub nsw i32 0, %sub378
  br label %cond.end.380

cond.end.380:                                     ; preds = %cond.false.375, %cond.true.371
  %cond381 = phi i32 [ %sub374, %cond.true.371 ], [ %sub379, %cond.false.375 ]
  store i32 %cond381, i32* %distant, align 4
  store i32 2, i32* %i, align 4
  br label %for.cond.382

for.cond.382:                                     ; preds = %for.inc.425, %cond.end.380
  %268 = load i32, i32* %i, align 4
  %269 = load i32, i32* @nPinLocs, align 4
  %cmp383 = icmp sle i32 %268, %269
  br i1 %cmp383, label %for.body.384, label %for.end.427

for.body.384:                                     ; preds = %for.cond.382
  %270 = load i32, i32* %litoY, align 4
  %271 = load i32, i32* %i, align 4
  %idxprom385 = sext i32 %271 to i64
  %272 = load %struct.flogbox*, %struct.flogbox** @lArray, align 8
  %arrayidx386 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %272, i64 %idxprom385
  %finaly387 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %arrayidx386, i32 0, i32 3
  %273 = load i32, i32* %finaly387, align 4
  %sub388 = sub nsw i32 %270, %273
  %cmp389 = icmp sge i32 %sub388, 0
  br i1 %cmp389, label %cond.true.390, label %cond.false.395

cond.true.390:                                    ; preds = %for.body.384
  %274 = load i32, i32* %litoY, align 4
  %275 = load i32, i32* %i, align 4
  %idxprom391 = sext i32 %275 to i64
  %276 = load %struct.flogbox*, %struct.flogbox** @lArray, align 8
  %arrayidx392 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %276, i64 %idxprom391
  %finaly393 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %arrayidx392, i32 0, i32 3
  %277 = load i32, i32* %finaly393, align 4
  %sub394 = sub nsw i32 %274, %277
  br label %cond.end.401

cond.false.395:                                   ; preds = %for.body.384
  %278 = load i32, i32* %litoY, align 4
  %279 = load i32, i32* %i, align 4
  %idxprom396 = sext i32 %279 to i64
  %280 = load %struct.flogbox*, %struct.flogbox** @lArray, align 8
  %arrayidx397 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %280, i64 %idxprom396
  %finaly398 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %arrayidx397, i32 0, i32 3
  %281 = load i32, i32* %finaly398, align 4
  %sub399 = sub nsw i32 %278, %281
  %sub400 = sub nsw i32 0, %sub399
  br label %cond.end.401

cond.end.401:                                     ; preds = %cond.false.395, %cond.true.390
  %cond402 = phi i32 [ %sub394, %cond.true.390 ], [ %sub400, %cond.false.395 ]
  %282 = load i32, i32* %distant, align 4
  %cmp403 = icmp slt i32 %cond402, %282
  br i1 %cmp403, label %if.then.404, label %if.else.423

if.then.404:                                      ; preds = %cond.end.401
  %283 = load i32, i32* %litoY, align 4
  %284 = load i32, i32* %i, align 4
  %idxprom405 = sext i32 %284 to i64
  %285 = load %struct.flogbox*, %struct.flogbox** @lArray, align 8
  %arrayidx406 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %285, i64 %idxprom405
  %finaly407 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %arrayidx406, i32 0, i32 3
  %286 = load i32, i32* %finaly407, align 4
  %sub408 = sub nsw i32 %283, %286
  %cmp409 = icmp sge i32 %sub408, 0
  br i1 %cmp409, label %cond.true.410, label %cond.false.415

cond.true.410:                                    ; preds = %if.then.404
  %287 = load i32, i32* %litoY, align 4
  %288 = load i32, i32* %i, align 4
  %idxprom411 = sext i32 %288 to i64
  %289 = load %struct.flogbox*, %struct.flogbox** @lArray, align 8
  %arrayidx412 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %289, i64 %idxprom411
  %finaly413 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %arrayidx412, i32 0, i32 3
  %290 = load i32, i32* %finaly413, align 4
  %sub414 = sub nsw i32 %287, %290
  br label %cond.end.421

cond.false.415:                                   ; preds = %if.then.404
  %291 = load i32, i32* %litoY, align 4
  %292 = load i32, i32* %i, align 4
  %idxprom416 = sext i32 %292 to i64
  %293 = load %struct.flogbox*, %struct.flogbox** @lArray, align 8
  %arrayidx417 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %293, i64 %idxprom416
  %finaly418 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %arrayidx417, i32 0, i32 3
  %294 = load i32, i32* %finaly418, align 4
  %sub419 = sub nsw i32 %291, %294
  %sub420 = sub nsw i32 0, %sub419
  br label %cond.end.421

cond.end.421:                                     ; preds = %cond.false.415, %cond.true.410
  %cond422 = phi i32 [ %sub414, %cond.true.410 ], [ %sub420, %cond.false.415 ]
  store i32 %cond422, i32* %distant, align 4
  br label %if.end.424

if.else.423:                                      ; preds = %cond.end.401
  br label %for.end.427

if.end.424:                                       ; preds = %cond.end.421
  br label %for.inc.425

for.inc.425:                                      ; preds = %if.end.424
  %295 = load i32, i32* %i, align 4
  %inc426 = add nsw i32 %295, 1
  store i32 %inc426, i32* %i, align 4
  br label %for.cond.382

for.end.427:                                      ; preds = %if.else.423, %for.cond.382
  %296 = load i32, i32* %i, align 4
  %div428 = sdiv i32 %296, 2
  store i32 %div428, i32* %bestPos, align 4
  br label %if.end.493

if.else.429:                                      ; preds = %land.lhs.true.361, %if.else.357
  %297 = load i32, i32* %bigoY, align 4
  %298 = load %struct.flogbox*, %struct.flogbox** @lArray, align 8
  %arrayidx430 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %298, i64 1
  %finaly431 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %arrayidx430, i32 0, i32 3
  %299 = load i32, i32* %finaly431, align 4
  %sub432 = sub nsw i32 %297, %299
  %cmp433 = icmp sge i32 %sub432, 0
  br i1 %cmp433, label %cond.true.434, label %cond.false.438

cond.true.434:                                    ; preds = %if.else.429
  %300 = load i32, i32* %bigoY, align 4
  %301 = load %struct.flogbox*, %struct.flogbox** @lArray, align 8
  %arrayidx435 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %301, i64 1
  %finaly436 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %arrayidx435, i32 0, i32 3
  %302 = load i32, i32* %finaly436, align 4
  %sub437 = sub nsw i32 %300, %302
  br label %cond.end.443

cond.false.438:                                   ; preds = %if.else.429
  %303 = load i32, i32* %bigoY, align 4
  %304 = load %struct.flogbox*, %struct.flogbox** @lArray, align 8
  %arrayidx439 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %304, i64 1
  %finaly440 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %arrayidx439, i32 0, i32 3
  %305 = load i32, i32* %finaly440, align 4
  %sub441 = sub nsw i32 %303, %305
  %sub442 = sub nsw i32 0, %sub441
  br label %cond.end.443

cond.end.443:                                     ; preds = %cond.false.438, %cond.true.434
  %cond444 = phi i32 [ %sub437, %cond.true.434 ], [ %sub442, %cond.false.438 ]
  store i32 %cond444, i32* %distant, align 4
  store i32 2, i32* %i, align 4
  br label %for.cond.445

for.cond.445:                                     ; preds = %for.inc.488, %cond.end.443
  %306 = load i32, i32* %i, align 4
  %307 = load i32, i32* @nPinLocs, align 4
  %cmp446 = icmp sle i32 %306, %307
  br i1 %cmp446, label %for.body.447, label %for.end.490

for.body.447:                                     ; preds = %for.cond.445
  %308 = load i32, i32* %bigoY, align 4
  %309 = load i32, i32* %i, align 4
  %idxprom448 = sext i32 %309 to i64
  %310 = load %struct.flogbox*, %struct.flogbox** @lArray, align 8
  %arrayidx449 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %310, i64 %idxprom448
  %finaly450 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %arrayidx449, i32 0, i32 3
  %311 = load i32, i32* %finaly450, align 4
  %sub451 = sub nsw i32 %308, %311
  %cmp452 = icmp sge i32 %sub451, 0
  br i1 %cmp452, label %cond.true.453, label %cond.false.458

cond.true.453:                                    ; preds = %for.body.447
  %312 = load i32, i32* %bigoY, align 4
  %313 = load i32, i32* %i, align 4
  %idxprom454 = sext i32 %313 to i64
  %314 = load %struct.flogbox*, %struct.flogbox** @lArray, align 8
  %arrayidx455 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %314, i64 %idxprom454
  %finaly456 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %arrayidx455, i32 0, i32 3
  %315 = load i32, i32* %finaly456, align 4
  %sub457 = sub nsw i32 %312, %315
  br label %cond.end.464

cond.false.458:                                   ; preds = %for.body.447
  %316 = load i32, i32* %bigoY, align 4
  %317 = load i32, i32* %i, align 4
  %idxprom459 = sext i32 %317 to i64
  %318 = load %struct.flogbox*, %struct.flogbox** @lArray, align 8
  %arrayidx460 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %318, i64 %idxprom459
  %finaly461 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %arrayidx460, i32 0, i32 3
  %319 = load i32, i32* %finaly461, align 4
  %sub462 = sub nsw i32 %316, %319
  %sub463 = sub nsw i32 0, %sub462
  br label %cond.end.464

cond.end.464:                                     ; preds = %cond.false.458, %cond.true.453
  %cond465 = phi i32 [ %sub457, %cond.true.453 ], [ %sub463, %cond.false.458 ]
  %320 = load i32, i32* %distant, align 4
  %cmp466 = icmp slt i32 %cond465, %320
  br i1 %cmp466, label %if.then.467, label %if.else.486

if.then.467:                                      ; preds = %cond.end.464
  %321 = load i32, i32* %bigoY, align 4
  %322 = load i32, i32* %i, align 4
  %idxprom468 = sext i32 %322 to i64
  %323 = load %struct.flogbox*, %struct.flogbox** @lArray, align 8
  %arrayidx469 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %323, i64 %idxprom468
  %finaly470 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %arrayidx469, i32 0, i32 3
  %324 = load i32, i32* %finaly470, align 4
  %sub471 = sub nsw i32 %321, %324
  %cmp472 = icmp sge i32 %sub471, 0
  br i1 %cmp472, label %cond.true.473, label %cond.false.478

cond.true.473:                                    ; preds = %if.then.467
  %325 = load i32, i32* %bigoY, align 4
  %326 = load i32, i32* %i, align 4
  %idxprom474 = sext i32 %326 to i64
  %327 = load %struct.flogbox*, %struct.flogbox** @lArray, align 8
  %arrayidx475 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %327, i64 %idxprom474
  %finaly476 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %arrayidx475, i32 0, i32 3
  %328 = load i32, i32* %finaly476, align 4
  %sub477 = sub nsw i32 %325, %328
  br label %cond.end.484

cond.false.478:                                   ; preds = %if.then.467
  %329 = load i32, i32* %bigoY, align 4
  %330 = load i32, i32* %i, align 4
  %idxprom479 = sext i32 %330 to i64
  %331 = load %struct.flogbox*, %struct.flogbox** @lArray, align 8
  %arrayidx480 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %331, i64 %idxprom479
  %finaly481 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %arrayidx480, i32 0, i32 3
  %332 = load i32, i32* %finaly481, align 4
  %sub482 = sub nsw i32 %329, %332
  %sub483 = sub nsw i32 0, %sub482
  br label %cond.end.484

cond.end.484:                                     ; preds = %cond.false.478, %cond.true.473
  %cond485 = phi i32 [ %sub477, %cond.true.473 ], [ %sub483, %cond.false.478 ]
  store i32 %cond485, i32* %distant, align 4
  br label %if.end.487

if.else.486:                                      ; preds = %cond.end.464
  br label %for.end.490

if.end.487:                                       ; preds = %cond.end.484
  br label %for.inc.488

for.inc.488:                                      ; preds = %if.end.487
  %333 = load i32, i32* %i, align 4
  %inc489 = add nsw i32 %333, 1
  store i32 %inc489, i32* %i, align 4
  br label %for.cond.445

for.end.490:                                      ; preds = %if.else.486, %for.cond.445
  %334 = load i32, i32* %i, align 4
  %335 = load i32, i32* @nPinLocs, align 4
  %add491 = add nsw i32 %334, %335
  %div492 = sdiv i32 %add491, 2
  store i32 %div492, i32* %bestPos, align 4
  br label %if.end.493

if.end.493:                                       ; preds = %for.end.490, %for.end.427
  br label %if.end.494

if.end.494:                                       ; preds = %if.end.493, %if.then.354
  br label %if.end.495

if.end.495:                                       ; preds = %if.end.494, %for.end.343
  br label %if.end.496

if.end.496:                                       ; preds = %if.end.495, %if.then.270
  br label %if.end.497

if.end.497:                                       ; preds = %if.end.496, %if.then.264
  br label %if.end.498

if.end.498:                                       ; preds = %if.end.497, %if.end.259
  br label %if.end.982

if.else.499:                                      ; preds = %for.end
  %336 = load i32, i32* @nPinLocs, align 4
  %idxprom500 = sext i32 %336 to i64
  %337 = load %struct.flogbox*, %struct.flogbox** @lArray, align 8
  %arrayidx501 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %337, i64 %idxprom500
  %finalx = getelementptr inbounds %struct.flogbox, %struct.flogbox* %arrayidx501, i32 0, i32 2
  %338 = load i32, i32* %finalx, align 4
  %339 = load %struct.flogbox*, %struct.flogbox** @lArray, align 8
  %arrayidx502 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %339, i64 1
  %finalx503 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %arrayidx502, i32 0, i32 2
  %340 = load i32, i32* %finalx503, align 4
  %cmp504 = icmp sgt i32 %338, %340
  br i1 %cmp504, label %if.then.505, label %if.else.743

if.then.505:                                      ; preds = %if.else.499
  %341 = load i32, i32* %litoX, align 4
  %342 = load i32, i32* @nPinLocs, align 4
  %idxprom506 = sext i32 %342 to i64
  %343 = load %struct.flogbox*, %struct.flogbox** @lArray, align 8
  %arrayidx507 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %343, i64 %idxprom506
  %finalx508 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %arrayidx507, i32 0, i32 2
  %344 = load i32, i32* %finalx508, align 4
  %cmp509 = icmp sge i32 %341, %344
  br i1 %cmp509, label %if.then.510, label %if.else.511

if.then.510:                                      ; preds = %if.then.505
  %345 = load i32, i32* @nPinLocs, align 4
  store i32 %345, i32* %bestPos, align 4
  br label %if.end.742

if.else.511:                                      ; preds = %if.then.505
  %346 = load i32, i32* %bigoX, align 4
  %347 = load %struct.flogbox*, %struct.flogbox** @lArray, align 8
  %arrayidx512 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %347, i64 1
  %finalx513 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %arrayidx512, i32 0, i32 2
  %348 = load i32, i32* %finalx513, align 4
  %cmp514 = icmp sle i32 %346, %348
  br i1 %cmp514, label %if.then.515, label %if.else.516

if.then.515:                                      ; preds = %if.else.511
  store i32 1, i32* %bestPos, align 4
  br label %if.end.741

if.else.516:                                      ; preds = %if.else.511
  %349 = load i32, i32* %bigoX, align 4
  %350 = load i32, i32* @nPinLocs, align 4
  %idxprom517 = sext i32 %350 to i64
  %351 = load %struct.flogbox*, %struct.flogbox** @lArray, align 8
  %arrayidx518 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %351, i64 %idxprom517
  %finalx519 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %arrayidx518, i32 0, i32 2
  %352 = load i32, i32* %finalx519, align 4
  %cmp520 = icmp sle i32 %349, %352
  br i1 %cmp520, label %land.lhs.true.521, label %if.else.590

land.lhs.true.521:                                ; preds = %if.else.516
  %353 = load i32, i32* %litoX, align 4
  %354 = load %struct.flogbox*, %struct.flogbox** @lArray, align 8
  %arrayidx522 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %354, i64 1
  %finalx523 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %arrayidx522, i32 0, i32 2
  %355 = load i32, i32* %finalx523, align 4
  %cmp524 = icmp sge i32 %353, %355
  br i1 %cmp524, label %if.then.525, label %if.else.590

if.then.525:                                      ; preds = %land.lhs.true.521
  %356 = load i32, i32* %bigoX, align 4
  %357 = load i32, i32* %litoX, align 4
  %add526 = add nsw i32 %356, %357
  %div527 = sdiv i32 %add526, 2
  store i32 %div527, i32* %meanx, align 4
  %358 = load i32, i32* %meanx, align 4
  %359 = load %struct.flogbox*, %struct.flogbox** @lArray, align 8
  %arrayidx528 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %359, i64 1
  %finalx529 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %arrayidx528, i32 0, i32 2
  %360 = load i32, i32* %finalx529, align 4
  %sub530 = sub nsw i32 %358, %360
  %cmp531 = icmp sge i32 %sub530, 0
  br i1 %cmp531, label %cond.true.532, label %cond.false.536

cond.true.532:                                    ; preds = %if.then.525
  %361 = load i32, i32* %meanx, align 4
  %362 = load %struct.flogbox*, %struct.flogbox** @lArray, align 8
  %arrayidx533 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %362, i64 1
  %finalx534 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %arrayidx533, i32 0, i32 2
  %363 = load i32, i32* %finalx534, align 4
  %sub535 = sub nsw i32 %361, %363
  br label %cond.end.541

cond.false.536:                                   ; preds = %if.then.525
  %364 = load i32, i32* %meanx, align 4
  %365 = load %struct.flogbox*, %struct.flogbox** @lArray, align 8
  %arrayidx537 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %365, i64 1
  %finalx538 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %arrayidx537, i32 0, i32 2
  %366 = load i32, i32* %finalx538, align 4
  %sub539 = sub nsw i32 %364, %366
  %sub540 = sub nsw i32 0, %sub539
  br label %cond.end.541

cond.end.541:                                     ; preds = %cond.false.536, %cond.true.532
  %cond542 = phi i32 [ %sub535, %cond.true.532 ], [ %sub540, %cond.false.536 ]
  store i32 %cond542, i32* %distant, align 4
  store i32 2, i32* %i, align 4
  br label %for.cond.543

for.cond.543:                                     ; preds = %for.inc.586, %cond.end.541
  %367 = load i32, i32* %i, align 4
  %368 = load i32, i32* @nPinLocs, align 4
  %cmp544 = icmp sle i32 %367, %368
  br i1 %cmp544, label %for.body.545, label %for.end.588

for.body.545:                                     ; preds = %for.cond.543
  %369 = load i32, i32* %meanx, align 4
  %370 = load i32, i32* %i, align 4
  %idxprom546 = sext i32 %370 to i64
  %371 = load %struct.flogbox*, %struct.flogbox** @lArray, align 8
  %arrayidx547 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %371, i64 %idxprom546
  %finalx548 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %arrayidx547, i32 0, i32 2
  %372 = load i32, i32* %finalx548, align 4
  %sub549 = sub nsw i32 %369, %372
  %cmp550 = icmp sge i32 %sub549, 0
  br i1 %cmp550, label %cond.true.551, label %cond.false.556

cond.true.551:                                    ; preds = %for.body.545
  %373 = load i32, i32* %meanx, align 4
  %374 = load i32, i32* %i, align 4
  %idxprom552 = sext i32 %374 to i64
  %375 = load %struct.flogbox*, %struct.flogbox** @lArray, align 8
  %arrayidx553 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %375, i64 %idxprom552
  %finalx554 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %arrayidx553, i32 0, i32 2
  %376 = load i32, i32* %finalx554, align 4
  %sub555 = sub nsw i32 %373, %376
  br label %cond.end.562

cond.false.556:                                   ; preds = %for.body.545
  %377 = load i32, i32* %meanx, align 4
  %378 = load i32, i32* %i, align 4
  %idxprom557 = sext i32 %378 to i64
  %379 = load %struct.flogbox*, %struct.flogbox** @lArray, align 8
  %arrayidx558 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %379, i64 %idxprom557
  %finalx559 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %arrayidx558, i32 0, i32 2
  %380 = load i32, i32* %finalx559, align 4
  %sub560 = sub nsw i32 %377, %380
  %sub561 = sub nsw i32 0, %sub560
  br label %cond.end.562

cond.end.562:                                     ; preds = %cond.false.556, %cond.true.551
  %cond563 = phi i32 [ %sub555, %cond.true.551 ], [ %sub561, %cond.false.556 ]
  %381 = load i32, i32* %distant, align 4
  %cmp564 = icmp slt i32 %cond563, %381
  br i1 %cmp564, label %if.then.565, label %if.else.584

if.then.565:                                      ; preds = %cond.end.562
  %382 = load i32, i32* %meanx, align 4
  %383 = load i32, i32* %i, align 4
  %idxprom566 = sext i32 %383 to i64
  %384 = load %struct.flogbox*, %struct.flogbox** @lArray, align 8
  %arrayidx567 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %384, i64 %idxprom566
  %finalx568 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %arrayidx567, i32 0, i32 2
  %385 = load i32, i32* %finalx568, align 4
  %sub569 = sub nsw i32 %382, %385
  %cmp570 = icmp sge i32 %sub569, 0
  br i1 %cmp570, label %cond.true.571, label %cond.false.576

cond.true.571:                                    ; preds = %if.then.565
  %386 = load i32, i32* %meanx, align 4
  %387 = load i32, i32* %i, align 4
  %idxprom572 = sext i32 %387 to i64
  %388 = load %struct.flogbox*, %struct.flogbox** @lArray, align 8
  %arrayidx573 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %388, i64 %idxprom572
  %finalx574 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %arrayidx573, i32 0, i32 2
  %389 = load i32, i32* %finalx574, align 4
  %sub575 = sub nsw i32 %386, %389
  br label %cond.end.582

cond.false.576:                                   ; preds = %if.then.565
  %390 = load i32, i32* %meanx, align 4
  %391 = load i32, i32* %i, align 4
  %idxprom577 = sext i32 %391 to i64
  %392 = load %struct.flogbox*, %struct.flogbox** @lArray, align 8
  %arrayidx578 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %392, i64 %idxprom577
  %finalx579 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %arrayidx578, i32 0, i32 2
  %393 = load i32, i32* %finalx579, align 4
  %sub580 = sub nsw i32 %390, %393
  %sub581 = sub nsw i32 0, %sub580
  br label %cond.end.582

cond.end.582:                                     ; preds = %cond.false.576, %cond.true.571
  %cond583 = phi i32 [ %sub575, %cond.true.571 ], [ %sub581, %cond.false.576 ]
  store i32 %cond583, i32* %distant, align 4
  br label %if.end.585

if.else.584:                                      ; preds = %cond.end.562
  br label %for.end.588

if.end.585:                                       ; preds = %cond.end.582
  br label %for.inc.586

for.inc.586:                                      ; preds = %if.end.585
  %394 = load i32, i32* %i, align 4
  %inc587 = add nsw i32 %394, 1
  store i32 %inc587, i32* %i, align 4
  br label %for.cond.543

for.end.588:                                      ; preds = %if.else.584, %for.cond.543
  %395 = load i32, i32* %i, align 4
  %sub589 = sub nsw i32 %395, 1
  store i32 %sub589, i32* %bestPos, align 4
  br label %if.end.740

if.else.590:                                      ; preds = %land.lhs.true.521, %if.else.516
  %396 = load i32, i32* %bigoX, align 4
  %397 = load i32, i32* @nPinLocs, align 4
  %idxprom591 = sext i32 %397 to i64
  %398 = load %struct.flogbox*, %struct.flogbox** @lArray, align 8
  %arrayidx592 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %398, i64 %idxprom591
  %finalx593 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %arrayidx592, i32 0, i32 2
  %399 = load i32, i32* %finalx593, align 4
  %cmp594 = icmp sge i32 %396, %399
  br i1 %cmp594, label %land.lhs.true.595, label %if.else.602

land.lhs.true.595:                                ; preds = %if.else.590
  %400 = load i32, i32* %litoX, align 4
  %401 = load %struct.flogbox*, %struct.flogbox** @lArray, align 8
  %arrayidx596 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %401, i64 1
  %finalx597 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %arrayidx596, i32 0, i32 2
  %402 = load i32, i32* %finalx597, align 4
  %cmp598 = icmp sle i32 %400, %402
  br i1 %cmp598, label %if.then.599, label %if.else.602

if.then.599:                                      ; preds = %land.lhs.true.595
  %403 = load i32, i32* @nPinLocs, align 4
  %add600 = add nsw i32 %403, 1
  %div601 = sdiv i32 %add600, 2
  store i32 %div601, i32* %bestPos, align 4
  br label %if.end.739

if.else.602:                                      ; preds = %land.lhs.true.595, %if.else.590
  %404 = load i32, i32* %litoX, align 4
  %405 = load i32, i32* @nPinLocs, align 4
  %idxprom603 = sext i32 %405 to i64
  %406 = load %struct.flogbox*, %struct.flogbox** @lArray, align 8
  %arrayidx604 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %406, i64 %idxprom603
  %finalx605 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %arrayidx604, i32 0, i32 2
  %407 = load i32, i32* %finalx605, align 4
  %cmp606 = icmp slt i32 %404, %407
  br i1 %cmp606, label %land.lhs.true.607, label %if.else.675

land.lhs.true.607:                                ; preds = %if.else.602
  %408 = load i32, i32* %litoX, align 4
  %409 = load %struct.flogbox*, %struct.flogbox** @lArray, align 8
  %arrayidx608 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %409, i64 1
  %finalx609 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %arrayidx608, i32 0, i32 2
  %410 = load i32, i32* %finalx609, align 4
  %cmp610 = icmp sgt i32 %408, %410
  br i1 %cmp610, label %if.then.611, label %if.else.675

if.then.611:                                      ; preds = %land.lhs.true.607
  %411 = load i32, i32* %litoX, align 4
  %412 = load %struct.flogbox*, %struct.flogbox** @lArray, align 8
  %arrayidx612 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %412, i64 1
  %finalx613 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %arrayidx612, i32 0, i32 2
  %413 = load i32, i32* %finalx613, align 4
  %sub614 = sub nsw i32 %411, %413
  %cmp615 = icmp sge i32 %sub614, 0
  br i1 %cmp615, label %cond.true.616, label %cond.false.620

cond.true.616:                                    ; preds = %if.then.611
  %414 = load i32, i32* %litoX, align 4
  %415 = load %struct.flogbox*, %struct.flogbox** @lArray, align 8
  %arrayidx617 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %415, i64 1
  %finalx618 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %arrayidx617, i32 0, i32 2
  %416 = load i32, i32* %finalx618, align 4
  %sub619 = sub nsw i32 %414, %416
  br label %cond.end.625

cond.false.620:                                   ; preds = %if.then.611
  %417 = load i32, i32* %litoX, align 4
  %418 = load %struct.flogbox*, %struct.flogbox** @lArray, align 8
  %arrayidx621 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %418, i64 1
  %finalx622 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %arrayidx621, i32 0, i32 2
  %419 = load i32, i32* %finalx622, align 4
  %sub623 = sub nsw i32 %417, %419
  %sub624 = sub nsw i32 0, %sub623
  br label %cond.end.625

cond.end.625:                                     ; preds = %cond.false.620, %cond.true.616
  %cond626 = phi i32 [ %sub619, %cond.true.616 ], [ %sub624, %cond.false.620 ]
  store i32 %cond626, i32* %distant, align 4
  store i32 2, i32* %i, align 4
  br label %for.cond.627

for.cond.627:                                     ; preds = %for.inc.670, %cond.end.625
  %420 = load i32, i32* %i, align 4
  %421 = load i32, i32* @nPinLocs, align 4
  %cmp628 = icmp sle i32 %420, %421
  br i1 %cmp628, label %for.body.629, label %for.end.672

for.body.629:                                     ; preds = %for.cond.627
  %422 = load i32, i32* %litoX, align 4
  %423 = load i32, i32* %i, align 4
  %idxprom630 = sext i32 %423 to i64
  %424 = load %struct.flogbox*, %struct.flogbox** @lArray, align 8
  %arrayidx631 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %424, i64 %idxprom630
  %finalx632 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %arrayidx631, i32 0, i32 2
  %425 = load i32, i32* %finalx632, align 4
  %sub633 = sub nsw i32 %422, %425
  %cmp634 = icmp sge i32 %sub633, 0
  br i1 %cmp634, label %cond.true.635, label %cond.false.640

cond.true.635:                                    ; preds = %for.body.629
  %426 = load i32, i32* %litoX, align 4
  %427 = load i32, i32* %i, align 4
  %idxprom636 = sext i32 %427 to i64
  %428 = load %struct.flogbox*, %struct.flogbox** @lArray, align 8
  %arrayidx637 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %428, i64 %idxprom636
  %finalx638 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %arrayidx637, i32 0, i32 2
  %429 = load i32, i32* %finalx638, align 4
  %sub639 = sub nsw i32 %426, %429
  br label %cond.end.646

cond.false.640:                                   ; preds = %for.body.629
  %430 = load i32, i32* %litoX, align 4
  %431 = load i32, i32* %i, align 4
  %idxprom641 = sext i32 %431 to i64
  %432 = load %struct.flogbox*, %struct.flogbox** @lArray, align 8
  %arrayidx642 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %432, i64 %idxprom641
  %finalx643 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %arrayidx642, i32 0, i32 2
  %433 = load i32, i32* %finalx643, align 4
  %sub644 = sub nsw i32 %430, %433
  %sub645 = sub nsw i32 0, %sub644
  br label %cond.end.646

cond.end.646:                                     ; preds = %cond.false.640, %cond.true.635
  %cond647 = phi i32 [ %sub639, %cond.true.635 ], [ %sub645, %cond.false.640 ]
  %434 = load i32, i32* %distant, align 4
  %cmp648 = icmp slt i32 %cond647, %434
  br i1 %cmp648, label %if.then.649, label %if.else.668

if.then.649:                                      ; preds = %cond.end.646
  %435 = load i32, i32* %litoX, align 4
  %436 = load i32, i32* %i, align 4
  %idxprom650 = sext i32 %436 to i64
  %437 = load %struct.flogbox*, %struct.flogbox** @lArray, align 8
  %arrayidx651 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %437, i64 %idxprom650
  %finalx652 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %arrayidx651, i32 0, i32 2
  %438 = load i32, i32* %finalx652, align 4
  %sub653 = sub nsw i32 %435, %438
  %cmp654 = icmp sge i32 %sub653, 0
  br i1 %cmp654, label %cond.true.655, label %cond.false.660

cond.true.655:                                    ; preds = %if.then.649
  %439 = load i32, i32* %litoX, align 4
  %440 = load i32, i32* %i, align 4
  %idxprom656 = sext i32 %440 to i64
  %441 = load %struct.flogbox*, %struct.flogbox** @lArray, align 8
  %arrayidx657 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %441, i64 %idxprom656
  %finalx658 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %arrayidx657, i32 0, i32 2
  %442 = load i32, i32* %finalx658, align 4
  %sub659 = sub nsw i32 %439, %442
  br label %cond.end.666

cond.false.660:                                   ; preds = %if.then.649
  %443 = load i32, i32* %litoX, align 4
  %444 = load i32, i32* %i, align 4
  %idxprom661 = sext i32 %444 to i64
  %445 = load %struct.flogbox*, %struct.flogbox** @lArray, align 8
  %arrayidx662 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %445, i64 %idxprom661
  %finalx663 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %arrayidx662, i32 0, i32 2
  %446 = load i32, i32* %finalx663, align 4
  %sub664 = sub nsw i32 %443, %446
  %sub665 = sub nsw i32 0, %sub664
  br label %cond.end.666

cond.end.666:                                     ; preds = %cond.false.660, %cond.true.655
  %cond667 = phi i32 [ %sub659, %cond.true.655 ], [ %sub665, %cond.false.660 ]
  store i32 %cond667, i32* %distant, align 4
  br label %if.end.669

if.else.668:                                      ; preds = %cond.end.646
  br label %for.end.672

if.end.669:                                       ; preds = %cond.end.666
  br label %for.inc.670

for.inc.670:                                      ; preds = %if.end.669
  %447 = load i32, i32* %i, align 4
  %inc671 = add nsw i32 %447, 1
  store i32 %inc671, i32* %i, align 4
  br label %for.cond.627

for.end.672:                                      ; preds = %if.else.668, %for.cond.627
  %448 = load i32, i32* %i, align 4
  %449 = load i32, i32* @nPinLocs, align 4
  %add673 = add nsw i32 %448, %449
  %div674 = sdiv i32 %add673, 2
  store i32 %div674, i32* %bestPos, align 4
  br label %if.end.738

if.else.675:                                      ; preds = %land.lhs.true.607, %if.else.602
  %450 = load i32, i32* %bigoX, align 4
  %451 = load %struct.flogbox*, %struct.flogbox** @lArray, align 8
  %arrayidx676 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %451, i64 1
  %finalx677 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %arrayidx676, i32 0, i32 2
  %452 = load i32, i32* %finalx677, align 4
  %sub678 = sub nsw i32 %450, %452
  %cmp679 = icmp sge i32 %sub678, 0
  br i1 %cmp679, label %cond.true.680, label %cond.false.684

cond.true.680:                                    ; preds = %if.else.675
  %453 = load i32, i32* %bigoX, align 4
  %454 = load %struct.flogbox*, %struct.flogbox** @lArray, align 8
  %arrayidx681 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %454, i64 1
  %finalx682 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %arrayidx681, i32 0, i32 2
  %455 = load i32, i32* %finalx682, align 4
  %sub683 = sub nsw i32 %453, %455
  br label %cond.end.689

cond.false.684:                                   ; preds = %if.else.675
  %456 = load i32, i32* %bigoX, align 4
  %457 = load %struct.flogbox*, %struct.flogbox** @lArray, align 8
  %arrayidx685 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %457, i64 1
  %finalx686 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %arrayidx685, i32 0, i32 2
  %458 = load i32, i32* %finalx686, align 4
  %sub687 = sub nsw i32 %456, %458
  %sub688 = sub nsw i32 0, %sub687
  br label %cond.end.689

cond.end.689:                                     ; preds = %cond.false.684, %cond.true.680
  %cond690 = phi i32 [ %sub683, %cond.true.680 ], [ %sub688, %cond.false.684 ]
  store i32 %cond690, i32* %distant, align 4
  store i32 2, i32* %i, align 4
  br label %for.cond.691

for.cond.691:                                     ; preds = %for.inc.734, %cond.end.689
  %459 = load i32, i32* %i, align 4
  %460 = load i32, i32* @nPinLocs, align 4
  %cmp692 = icmp sle i32 %459, %460
  br i1 %cmp692, label %for.body.693, label %for.end.736

for.body.693:                                     ; preds = %for.cond.691
  %461 = load i32, i32* %bigoX, align 4
  %462 = load i32, i32* %i, align 4
  %idxprom694 = sext i32 %462 to i64
  %463 = load %struct.flogbox*, %struct.flogbox** @lArray, align 8
  %arrayidx695 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %463, i64 %idxprom694
  %finalx696 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %arrayidx695, i32 0, i32 2
  %464 = load i32, i32* %finalx696, align 4
  %sub697 = sub nsw i32 %461, %464
  %cmp698 = icmp sge i32 %sub697, 0
  br i1 %cmp698, label %cond.true.699, label %cond.false.704

cond.true.699:                                    ; preds = %for.body.693
  %465 = load i32, i32* %bigoX, align 4
  %466 = load i32, i32* %i, align 4
  %idxprom700 = sext i32 %466 to i64
  %467 = load %struct.flogbox*, %struct.flogbox** @lArray, align 8
  %arrayidx701 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %467, i64 %idxprom700
  %finalx702 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %arrayidx701, i32 0, i32 2
  %468 = load i32, i32* %finalx702, align 4
  %sub703 = sub nsw i32 %465, %468
  br label %cond.end.710

cond.false.704:                                   ; preds = %for.body.693
  %469 = load i32, i32* %bigoX, align 4
  %470 = load i32, i32* %i, align 4
  %idxprom705 = sext i32 %470 to i64
  %471 = load %struct.flogbox*, %struct.flogbox** @lArray, align 8
  %arrayidx706 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %471, i64 %idxprom705
  %finalx707 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %arrayidx706, i32 0, i32 2
  %472 = load i32, i32* %finalx707, align 4
  %sub708 = sub nsw i32 %469, %472
  %sub709 = sub nsw i32 0, %sub708
  br label %cond.end.710

cond.end.710:                                     ; preds = %cond.false.704, %cond.true.699
  %cond711 = phi i32 [ %sub703, %cond.true.699 ], [ %sub709, %cond.false.704 ]
  %473 = load i32, i32* %distant, align 4
  %cmp712 = icmp slt i32 %cond711, %473
  br i1 %cmp712, label %if.then.713, label %if.else.732

if.then.713:                                      ; preds = %cond.end.710
  %474 = load i32, i32* %bigoX, align 4
  %475 = load i32, i32* %i, align 4
  %idxprom714 = sext i32 %475 to i64
  %476 = load %struct.flogbox*, %struct.flogbox** @lArray, align 8
  %arrayidx715 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %476, i64 %idxprom714
  %finalx716 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %arrayidx715, i32 0, i32 2
  %477 = load i32, i32* %finalx716, align 4
  %sub717 = sub nsw i32 %474, %477
  %cmp718 = icmp sge i32 %sub717, 0
  br i1 %cmp718, label %cond.true.719, label %cond.false.724

cond.true.719:                                    ; preds = %if.then.713
  %478 = load i32, i32* %bigoX, align 4
  %479 = load i32, i32* %i, align 4
  %idxprom720 = sext i32 %479 to i64
  %480 = load %struct.flogbox*, %struct.flogbox** @lArray, align 8
  %arrayidx721 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %480, i64 %idxprom720
  %finalx722 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %arrayidx721, i32 0, i32 2
  %481 = load i32, i32* %finalx722, align 4
  %sub723 = sub nsw i32 %478, %481
  br label %cond.end.730

cond.false.724:                                   ; preds = %if.then.713
  %482 = load i32, i32* %bigoX, align 4
  %483 = load i32, i32* %i, align 4
  %idxprom725 = sext i32 %483 to i64
  %484 = load %struct.flogbox*, %struct.flogbox** @lArray, align 8
  %arrayidx726 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %484, i64 %idxprom725
  %finalx727 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %arrayidx726, i32 0, i32 2
  %485 = load i32, i32* %finalx727, align 4
  %sub728 = sub nsw i32 %482, %485
  %sub729 = sub nsw i32 0, %sub728
  br label %cond.end.730

cond.end.730:                                     ; preds = %cond.false.724, %cond.true.719
  %cond731 = phi i32 [ %sub723, %cond.true.719 ], [ %sub729, %cond.false.724 ]
  store i32 %cond731, i32* %distant, align 4
  br label %if.end.733

if.else.732:                                      ; preds = %cond.end.710
  br label %for.end.736

if.end.733:                                       ; preds = %cond.end.730
  br label %for.inc.734

for.inc.734:                                      ; preds = %if.end.733
  %486 = load i32, i32* %i, align 4
  %inc735 = add nsw i32 %486, 1
  store i32 %inc735, i32* %i, align 4
  br label %for.cond.691

for.end.736:                                      ; preds = %if.else.732, %for.cond.691
  %487 = load i32, i32* %i, align 4
  %div737 = sdiv i32 %487, 2
  store i32 %div737, i32* %bestPos, align 4
  br label %if.end.738

if.end.738:                                       ; preds = %for.end.736, %for.end.672
  br label %if.end.739

if.end.739:                                       ; preds = %if.end.738, %if.then.599
  br label %if.end.740

if.end.740:                                       ; preds = %if.end.739, %for.end.588
  br label %if.end.741

if.end.741:                                       ; preds = %if.end.740, %if.then.515
  br label %if.end.742

if.end.742:                                       ; preds = %if.end.741, %if.then.510
  br label %if.end.981

if.else.743:                                      ; preds = %if.else.499
  %488 = load i32, i32* %litoX, align 4
  %489 = load %struct.flogbox*, %struct.flogbox** @lArray, align 8
  %arrayidx744 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %489, i64 1
  %finalx745 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %arrayidx744, i32 0, i32 2
  %490 = load i32, i32* %finalx745, align 4
  %cmp746 = icmp sge i32 %488, %490
  br i1 %cmp746, label %if.then.747, label %if.else.748

if.then.747:                                      ; preds = %if.else.743
  store i32 1, i32* %bestPos, align 4
  br label %if.end.980

if.else.748:                                      ; preds = %if.else.743
  %491 = load i32, i32* %bigoX, align 4
  %492 = load i32, i32* @nPinLocs, align 4
  %idxprom749 = sext i32 %492 to i64
  %493 = load %struct.flogbox*, %struct.flogbox** @lArray, align 8
  %arrayidx750 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %493, i64 %idxprom749
  %finalx751 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %arrayidx750, i32 0, i32 2
  %494 = load i32, i32* %finalx751, align 4
  %cmp752 = icmp sle i32 %491, %494
  br i1 %cmp752, label %if.then.753, label %if.else.754

if.then.753:                                      ; preds = %if.else.748
  %495 = load i32, i32* @nPinLocs, align 4
  store i32 %495, i32* %bestPos, align 4
  br label %if.end.979

if.else.754:                                      ; preds = %if.else.748
  %496 = load i32, i32* %bigoX, align 4
  %497 = load %struct.flogbox*, %struct.flogbox** @lArray, align 8
  %arrayidx755 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %497, i64 1
  %finalx756 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %arrayidx755, i32 0, i32 2
  %498 = load i32, i32* %finalx756, align 4
  %cmp757 = icmp sle i32 %496, %498
  br i1 %cmp757, label %land.lhs.true.758, label %if.else.828

land.lhs.true.758:                                ; preds = %if.else.754
  %499 = load i32, i32* %litoX, align 4
  %500 = load i32, i32* @nPinLocs, align 4
  %idxprom759 = sext i32 %500 to i64
  %501 = load %struct.flogbox*, %struct.flogbox** @lArray, align 8
  %arrayidx760 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %501, i64 %idxprom759
  %finalx761 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %arrayidx760, i32 0, i32 2
  %502 = load i32, i32* %finalx761, align 4
  %cmp762 = icmp sge i32 %499, %502
  br i1 %cmp762, label %if.then.763, label %if.else.828

if.then.763:                                      ; preds = %land.lhs.true.758
  %503 = load i32, i32* %bigoX, align 4
  %504 = load i32, i32* %litoX, align 4
  %add764 = add nsw i32 %503, %504
  %div765 = sdiv i32 %add764, 2
  store i32 %div765, i32* %meanx, align 4
  %505 = load i32, i32* %meanx, align 4
  %506 = load %struct.flogbox*, %struct.flogbox** @lArray, align 8
  %arrayidx766 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %506, i64 1
  %finalx767 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %arrayidx766, i32 0, i32 2
  %507 = load i32, i32* %finalx767, align 4
  %sub768 = sub nsw i32 %505, %507
  %cmp769 = icmp sge i32 %sub768, 0
  br i1 %cmp769, label %cond.true.770, label %cond.false.774

cond.true.770:                                    ; preds = %if.then.763
  %508 = load i32, i32* %meanx, align 4
  %509 = load %struct.flogbox*, %struct.flogbox** @lArray, align 8
  %arrayidx771 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %509, i64 1
  %finalx772 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %arrayidx771, i32 0, i32 2
  %510 = load i32, i32* %finalx772, align 4
  %sub773 = sub nsw i32 %508, %510
  br label %cond.end.779

cond.false.774:                                   ; preds = %if.then.763
  %511 = load i32, i32* %meanx, align 4
  %512 = load %struct.flogbox*, %struct.flogbox** @lArray, align 8
  %arrayidx775 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %512, i64 1
  %finalx776 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %arrayidx775, i32 0, i32 2
  %513 = load i32, i32* %finalx776, align 4
  %sub777 = sub nsw i32 %511, %513
  %sub778 = sub nsw i32 0, %sub777
  br label %cond.end.779

cond.end.779:                                     ; preds = %cond.false.774, %cond.true.770
  %cond780 = phi i32 [ %sub773, %cond.true.770 ], [ %sub778, %cond.false.774 ]
  store i32 %cond780, i32* %distant, align 4
  store i32 2, i32* %i, align 4
  br label %for.cond.781

for.cond.781:                                     ; preds = %for.inc.824, %cond.end.779
  %514 = load i32, i32* %i, align 4
  %515 = load i32, i32* @nPinLocs, align 4
  %cmp782 = icmp sle i32 %514, %515
  br i1 %cmp782, label %for.body.783, label %for.end.826

for.body.783:                                     ; preds = %for.cond.781
  %516 = load i32, i32* %meanx, align 4
  %517 = load i32, i32* %i, align 4
  %idxprom784 = sext i32 %517 to i64
  %518 = load %struct.flogbox*, %struct.flogbox** @lArray, align 8
  %arrayidx785 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %518, i64 %idxprom784
  %finalx786 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %arrayidx785, i32 0, i32 2
  %519 = load i32, i32* %finalx786, align 4
  %sub787 = sub nsw i32 %516, %519
  %cmp788 = icmp sge i32 %sub787, 0
  br i1 %cmp788, label %cond.true.789, label %cond.false.794

cond.true.789:                                    ; preds = %for.body.783
  %520 = load i32, i32* %meanx, align 4
  %521 = load i32, i32* %i, align 4
  %idxprom790 = sext i32 %521 to i64
  %522 = load %struct.flogbox*, %struct.flogbox** @lArray, align 8
  %arrayidx791 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %522, i64 %idxprom790
  %finalx792 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %arrayidx791, i32 0, i32 2
  %523 = load i32, i32* %finalx792, align 4
  %sub793 = sub nsw i32 %520, %523
  br label %cond.end.800

cond.false.794:                                   ; preds = %for.body.783
  %524 = load i32, i32* %meanx, align 4
  %525 = load i32, i32* %i, align 4
  %idxprom795 = sext i32 %525 to i64
  %526 = load %struct.flogbox*, %struct.flogbox** @lArray, align 8
  %arrayidx796 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %526, i64 %idxprom795
  %finalx797 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %arrayidx796, i32 0, i32 2
  %527 = load i32, i32* %finalx797, align 4
  %sub798 = sub nsw i32 %524, %527
  %sub799 = sub nsw i32 0, %sub798
  br label %cond.end.800

cond.end.800:                                     ; preds = %cond.false.794, %cond.true.789
  %cond801 = phi i32 [ %sub793, %cond.true.789 ], [ %sub799, %cond.false.794 ]
  %528 = load i32, i32* %distant, align 4
  %cmp802 = icmp slt i32 %cond801, %528
  br i1 %cmp802, label %if.then.803, label %if.else.822

if.then.803:                                      ; preds = %cond.end.800
  %529 = load i32, i32* %meanx, align 4
  %530 = load i32, i32* %i, align 4
  %idxprom804 = sext i32 %530 to i64
  %531 = load %struct.flogbox*, %struct.flogbox** @lArray, align 8
  %arrayidx805 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %531, i64 %idxprom804
  %finalx806 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %arrayidx805, i32 0, i32 2
  %532 = load i32, i32* %finalx806, align 4
  %sub807 = sub nsw i32 %529, %532
  %cmp808 = icmp sge i32 %sub807, 0
  br i1 %cmp808, label %cond.true.809, label %cond.false.814

cond.true.809:                                    ; preds = %if.then.803
  %533 = load i32, i32* %meanx, align 4
  %534 = load i32, i32* %i, align 4
  %idxprom810 = sext i32 %534 to i64
  %535 = load %struct.flogbox*, %struct.flogbox** @lArray, align 8
  %arrayidx811 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %535, i64 %idxprom810
  %finalx812 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %arrayidx811, i32 0, i32 2
  %536 = load i32, i32* %finalx812, align 4
  %sub813 = sub nsw i32 %533, %536
  br label %cond.end.820

cond.false.814:                                   ; preds = %if.then.803
  %537 = load i32, i32* %meanx, align 4
  %538 = load i32, i32* %i, align 4
  %idxprom815 = sext i32 %538 to i64
  %539 = load %struct.flogbox*, %struct.flogbox** @lArray, align 8
  %arrayidx816 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %539, i64 %idxprom815
  %finalx817 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %arrayidx816, i32 0, i32 2
  %540 = load i32, i32* %finalx817, align 4
  %sub818 = sub nsw i32 %537, %540
  %sub819 = sub nsw i32 0, %sub818
  br label %cond.end.820

cond.end.820:                                     ; preds = %cond.false.814, %cond.true.809
  %cond821 = phi i32 [ %sub813, %cond.true.809 ], [ %sub819, %cond.false.814 ]
  store i32 %cond821, i32* %distant, align 4
  br label %if.end.823

if.else.822:                                      ; preds = %cond.end.800
  br label %for.end.826

if.end.823:                                       ; preds = %cond.end.820
  br label %for.inc.824

for.inc.824:                                      ; preds = %if.end.823
  %541 = load i32, i32* %i, align 4
  %inc825 = add nsw i32 %541, 1
  store i32 %inc825, i32* %i, align 4
  br label %for.cond.781

for.end.826:                                      ; preds = %if.else.822, %for.cond.781
  %542 = load i32, i32* %i, align 4
  %sub827 = sub nsw i32 %542, 1
  store i32 %sub827, i32* %bestPos, align 4
  br label %if.end.978

if.else.828:                                      ; preds = %land.lhs.true.758, %if.else.754
  %543 = load i32, i32* %bigoX, align 4
  %544 = load %struct.flogbox*, %struct.flogbox** @lArray, align 8
  %arrayidx829 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %544, i64 1
  %finalx830 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %arrayidx829, i32 0, i32 2
  %545 = load i32, i32* %finalx830, align 4
  %cmp831 = icmp sge i32 %543, %545
  br i1 %cmp831, label %land.lhs.true.832, label %if.else.840

land.lhs.true.832:                                ; preds = %if.else.828
  %546 = load i32, i32* %litoX, align 4
  %547 = load i32, i32* @nPinLocs, align 4
  %idxprom833 = sext i32 %547 to i64
  %548 = load %struct.flogbox*, %struct.flogbox** @lArray, align 8
  %arrayidx834 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %548, i64 %idxprom833
  %finalx835 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %arrayidx834, i32 0, i32 2
  %549 = load i32, i32* %finalx835, align 4
  %cmp836 = icmp sle i32 %546, %549
  br i1 %cmp836, label %if.then.837, label %if.else.840

if.then.837:                                      ; preds = %land.lhs.true.832
  %550 = load i32, i32* @nPinLocs, align 4
  %add838 = add nsw i32 %550, 1
  %div839 = sdiv i32 %add838, 2
  store i32 %div839, i32* %bestPos, align 4
  br label %if.end.977

if.else.840:                                      ; preds = %land.lhs.true.832, %if.else.828
  %551 = load i32, i32* %litoX, align 4
  %552 = load %struct.flogbox*, %struct.flogbox** @lArray, align 8
  %arrayidx841 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %552, i64 1
  %finalx842 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %arrayidx841, i32 0, i32 2
  %553 = load i32, i32* %finalx842, align 4
  %cmp843 = icmp slt i32 %551, %553
  br i1 %cmp843, label %land.lhs.true.844, label %if.else.912

land.lhs.true.844:                                ; preds = %if.else.840
  %554 = load i32, i32* %litoX, align 4
  %555 = load i32, i32* @nPinLocs, align 4
  %idxprom845 = sext i32 %555 to i64
  %556 = load %struct.flogbox*, %struct.flogbox** @lArray, align 8
  %arrayidx846 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %556, i64 %idxprom845
  %finalx847 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %arrayidx846, i32 0, i32 2
  %557 = load i32, i32* %finalx847, align 4
  %cmp848 = icmp sgt i32 %554, %557
  br i1 %cmp848, label %if.then.849, label %if.else.912

if.then.849:                                      ; preds = %land.lhs.true.844
  %558 = load i32, i32* %litoX, align 4
  %559 = load %struct.flogbox*, %struct.flogbox** @lArray, align 8
  %arrayidx850 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %559, i64 1
  %finalx851 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %arrayidx850, i32 0, i32 2
  %560 = load i32, i32* %finalx851, align 4
  %sub852 = sub nsw i32 %558, %560
  %cmp853 = icmp sge i32 %sub852, 0
  br i1 %cmp853, label %cond.true.854, label %cond.false.858

cond.true.854:                                    ; preds = %if.then.849
  %561 = load i32, i32* %litoX, align 4
  %562 = load %struct.flogbox*, %struct.flogbox** @lArray, align 8
  %arrayidx855 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %562, i64 1
  %finalx856 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %arrayidx855, i32 0, i32 2
  %563 = load i32, i32* %finalx856, align 4
  %sub857 = sub nsw i32 %561, %563
  br label %cond.end.863

cond.false.858:                                   ; preds = %if.then.849
  %564 = load i32, i32* %litoX, align 4
  %565 = load %struct.flogbox*, %struct.flogbox** @lArray, align 8
  %arrayidx859 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %565, i64 1
  %finalx860 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %arrayidx859, i32 0, i32 2
  %566 = load i32, i32* %finalx860, align 4
  %sub861 = sub nsw i32 %564, %566
  %sub862 = sub nsw i32 0, %sub861
  br label %cond.end.863

cond.end.863:                                     ; preds = %cond.false.858, %cond.true.854
  %cond864 = phi i32 [ %sub857, %cond.true.854 ], [ %sub862, %cond.false.858 ]
  store i32 %cond864, i32* %distant, align 4
  store i32 2, i32* %i, align 4
  br label %for.cond.865

for.cond.865:                                     ; preds = %for.inc.908, %cond.end.863
  %567 = load i32, i32* %i, align 4
  %568 = load i32, i32* @nPinLocs, align 4
  %cmp866 = icmp sle i32 %567, %568
  br i1 %cmp866, label %for.body.867, label %for.end.910

for.body.867:                                     ; preds = %for.cond.865
  %569 = load i32, i32* %litoX, align 4
  %570 = load i32, i32* %i, align 4
  %idxprom868 = sext i32 %570 to i64
  %571 = load %struct.flogbox*, %struct.flogbox** @lArray, align 8
  %arrayidx869 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %571, i64 %idxprom868
  %finalx870 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %arrayidx869, i32 0, i32 2
  %572 = load i32, i32* %finalx870, align 4
  %sub871 = sub nsw i32 %569, %572
  %cmp872 = icmp sge i32 %sub871, 0
  br i1 %cmp872, label %cond.true.873, label %cond.false.878

cond.true.873:                                    ; preds = %for.body.867
  %573 = load i32, i32* %litoX, align 4
  %574 = load i32, i32* %i, align 4
  %idxprom874 = sext i32 %574 to i64
  %575 = load %struct.flogbox*, %struct.flogbox** @lArray, align 8
  %arrayidx875 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %575, i64 %idxprom874
  %finalx876 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %arrayidx875, i32 0, i32 2
  %576 = load i32, i32* %finalx876, align 4
  %sub877 = sub nsw i32 %573, %576
  br label %cond.end.884

cond.false.878:                                   ; preds = %for.body.867
  %577 = load i32, i32* %litoX, align 4
  %578 = load i32, i32* %i, align 4
  %idxprom879 = sext i32 %578 to i64
  %579 = load %struct.flogbox*, %struct.flogbox** @lArray, align 8
  %arrayidx880 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %579, i64 %idxprom879
  %finalx881 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %arrayidx880, i32 0, i32 2
  %580 = load i32, i32* %finalx881, align 4
  %sub882 = sub nsw i32 %577, %580
  %sub883 = sub nsw i32 0, %sub882
  br label %cond.end.884

cond.end.884:                                     ; preds = %cond.false.878, %cond.true.873
  %cond885 = phi i32 [ %sub877, %cond.true.873 ], [ %sub883, %cond.false.878 ]
  %581 = load i32, i32* %distant, align 4
  %cmp886 = icmp slt i32 %cond885, %581
  br i1 %cmp886, label %if.then.887, label %if.else.906

if.then.887:                                      ; preds = %cond.end.884
  %582 = load i32, i32* %litoX, align 4
  %583 = load i32, i32* %i, align 4
  %idxprom888 = sext i32 %583 to i64
  %584 = load %struct.flogbox*, %struct.flogbox** @lArray, align 8
  %arrayidx889 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %584, i64 %idxprom888
  %finalx890 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %arrayidx889, i32 0, i32 2
  %585 = load i32, i32* %finalx890, align 4
  %sub891 = sub nsw i32 %582, %585
  %cmp892 = icmp sge i32 %sub891, 0
  br i1 %cmp892, label %cond.true.893, label %cond.false.898

cond.true.893:                                    ; preds = %if.then.887
  %586 = load i32, i32* %litoX, align 4
  %587 = load i32, i32* %i, align 4
  %idxprom894 = sext i32 %587 to i64
  %588 = load %struct.flogbox*, %struct.flogbox** @lArray, align 8
  %arrayidx895 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %588, i64 %idxprom894
  %finalx896 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %arrayidx895, i32 0, i32 2
  %589 = load i32, i32* %finalx896, align 4
  %sub897 = sub nsw i32 %586, %589
  br label %cond.end.904

cond.false.898:                                   ; preds = %if.then.887
  %590 = load i32, i32* %litoX, align 4
  %591 = load i32, i32* %i, align 4
  %idxprom899 = sext i32 %591 to i64
  %592 = load %struct.flogbox*, %struct.flogbox** @lArray, align 8
  %arrayidx900 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %592, i64 %idxprom899
  %finalx901 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %arrayidx900, i32 0, i32 2
  %593 = load i32, i32* %finalx901, align 4
  %sub902 = sub nsw i32 %590, %593
  %sub903 = sub nsw i32 0, %sub902
  br label %cond.end.904

cond.end.904:                                     ; preds = %cond.false.898, %cond.true.893
  %cond905 = phi i32 [ %sub897, %cond.true.893 ], [ %sub903, %cond.false.898 ]
  store i32 %cond905, i32* %distant, align 4
  br label %if.end.907

if.else.906:                                      ; preds = %cond.end.884
  br label %for.end.910

if.end.907:                                       ; preds = %cond.end.904
  br label %for.inc.908

for.inc.908:                                      ; preds = %if.end.907
  %594 = load i32, i32* %i, align 4
  %inc909 = add nsw i32 %594, 1
  store i32 %inc909, i32* %i, align 4
  br label %for.cond.865

for.end.910:                                      ; preds = %if.else.906, %for.cond.865
  %595 = load i32, i32* %i, align 4
  %div911 = sdiv i32 %595, 2
  store i32 %div911, i32* %bestPos, align 4
  br label %if.end.976

if.else.912:                                      ; preds = %land.lhs.true.844, %if.else.840
  %596 = load i32, i32* %bigoX, align 4
  %597 = load %struct.flogbox*, %struct.flogbox** @lArray, align 8
  %arrayidx913 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %597, i64 1
  %finalx914 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %arrayidx913, i32 0, i32 2
  %598 = load i32, i32* %finalx914, align 4
  %sub915 = sub nsw i32 %596, %598
  %cmp916 = icmp sge i32 %sub915, 0
  br i1 %cmp916, label %cond.true.917, label %cond.false.921

cond.true.917:                                    ; preds = %if.else.912
  %599 = load i32, i32* %bigoX, align 4
  %600 = load %struct.flogbox*, %struct.flogbox** @lArray, align 8
  %arrayidx918 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %600, i64 1
  %finalx919 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %arrayidx918, i32 0, i32 2
  %601 = load i32, i32* %finalx919, align 4
  %sub920 = sub nsw i32 %599, %601
  br label %cond.end.926

cond.false.921:                                   ; preds = %if.else.912
  %602 = load i32, i32* %bigoX, align 4
  %603 = load %struct.flogbox*, %struct.flogbox** @lArray, align 8
  %arrayidx922 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %603, i64 1
  %finalx923 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %arrayidx922, i32 0, i32 2
  %604 = load i32, i32* %finalx923, align 4
  %sub924 = sub nsw i32 %602, %604
  %sub925 = sub nsw i32 0, %sub924
  br label %cond.end.926

cond.end.926:                                     ; preds = %cond.false.921, %cond.true.917
  %cond927 = phi i32 [ %sub920, %cond.true.917 ], [ %sub925, %cond.false.921 ]
  store i32 %cond927, i32* %distant, align 4
  store i32 2, i32* %i, align 4
  br label %for.cond.928

for.cond.928:                                     ; preds = %for.inc.971, %cond.end.926
  %605 = load i32, i32* %i, align 4
  %606 = load i32, i32* @nPinLocs, align 4
  %cmp929 = icmp sle i32 %605, %606
  br i1 %cmp929, label %for.body.930, label %for.end.973

for.body.930:                                     ; preds = %for.cond.928
  %607 = load i32, i32* %bigoX, align 4
  %608 = load i32, i32* %i, align 4
  %idxprom931 = sext i32 %608 to i64
  %609 = load %struct.flogbox*, %struct.flogbox** @lArray, align 8
  %arrayidx932 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %609, i64 %idxprom931
  %finalx933 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %arrayidx932, i32 0, i32 2
  %610 = load i32, i32* %finalx933, align 4
  %sub934 = sub nsw i32 %607, %610
  %cmp935 = icmp sge i32 %sub934, 0
  br i1 %cmp935, label %cond.true.936, label %cond.false.941

cond.true.936:                                    ; preds = %for.body.930
  %611 = load i32, i32* %bigoX, align 4
  %612 = load i32, i32* %i, align 4
  %idxprom937 = sext i32 %612 to i64
  %613 = load %struct.flogbox*, %struct.flogbox** @lArray, align 8
  %arrayidx938 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %613, i64 %idxprom937
  %finalx939 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %arrayidx938, i32 0, i32 2
  %614 = load i32, i32* %finalx939, align 4
  %sub940 = sub nsw i32 %611, %614
  br label %cond.end.947

cond.false.941:                                   ; preds = %for.body.930
  %615 = load i32, i32* %bigoX, align 4
  %616 = load i32, i32* %i, align 4
  %idxprom942 = sext i32 %616 to i64
  %617 = load %struct.flogbox*, %struct.flogbox** @lArray, align 8
  %arrayidx943 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %617, i64 %idxprom942
  %finalx944 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %arrayidx943, i32 0, i32 2
  %618 = load i32, i32* %finalx944, align 4
  %sub945 = sub nsw i32 %615, %618
  %sub946 = sub nsw i32 0, %sub945
  br label %cond.end.947

cond.end.947:                                     ; preds = %cond.false.941, %cond.true.936
  %cond948 = phi i32 [ %sub940, %cond.true.936 ], [ %sub946, %cond.false.941 ]
  %619 = load i32, i32* %distant, align 4
  %cmp949 = icmp slt i32 %cond948, %619
  br i1 %cmp949, label %if.then.950, label %if.else.969

if.then.950:                                      ; preds = %cond.end.947
  %620 = load i32, i32* %bigoX, align 4
  %621 = load i32, i32* %i, align 4
  %idxprom951 = sext i32 %621 to i64
  %622 = load %struct.flogbox*, %struct.flogbox** @lArray, align 8
  %arrayidx952 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %622, i64 %idxprom951
  %finalx953 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %arrayidx952, i32 0, i32 2
  %623 = load i32, i32* %finalx953, align 4
  %sub954 = sub nsw i32 %620, %623
  %cmp955 = icmp sge i32 %sub954, 0
  br i1 %cmp955, label %cond.true.956, label %cond.false.961

cond.true.956:                                    ; preds = %if.then.950
  %624 = load i32, i32* %bigoX, align 4
  %625 = load i32, i32* %i, align 4
  %idxprom957 = sext i32 %625 to i64
  %626 = load %struct.flogbox*, %struct.flogbox** @lArray, align 8
  %arrayidx958 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %626, i64 %idxprom957
  %finalx959 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %arrayidx958, i32 0, i32 2
  %627 = load i32, i32* %finalx959, align 4
  %sub960 = sub nsw i32 %624, %627
  br label %cond.end.967

cond.false.961:                                   ; preds = %if.then.950
  %628 = load i32, i32* %bigoX, align 4
  %629 = load i32, i32* %i, align 4
  %idxprom962 = sext i32 %629 to i64
  %630 = load %struct.flogbox*, %struct.flogbox** @lArray, align 8
  %arrayidx963 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %630, i64 %idxprom962
  %finalx964 = getelementptr inbounds %struct.flogbox, %struct.flogbox* %arrayidx963, i32 0, i32 2
  %631 = load i32, i32* %finalx964, align 4
  %sub965 = sub nsw i32 %628, %631
  %sub966 = sub nsw i32 0, %sub965
  br label %cond.end.967

cond.end.967:                                     ; preds = %cond.false.961, %cond.true.956
  %cond968 = phi i32 [ %sub960, %cond.true.956 ], [ %sub966, %cond.false.961 ]
  store i32 %cond968, i32* %distant, align 4
  br label %if.end.970

if.else.969:                                      ; preds = %cond.end.947
  br label %for.end.973

if.end.970:                                       ; preds = %cond.end.967
  br label %for.inc.971

for.inc.971:                                      ; preds = %if.end.970
  %632 = load i32, i32* %i, align 4
  %inc972 = add nsw i32 %632, 1
  store i32 %inc972, i32* %i, align 4
  br label %for.cond.928

for.end.973:                                      ; preds = %if.else.969, %for.cond.928
  %633 = load i32, i32* %i, align 4
  %634 = load i32, i32* @nPinLocs, align 4
  %add974 = add nsw i32 %633, %634
  %div975 = sdiv i32 %add974, 2
  store i32 %div975, i32* %bestPos, align 4
  br label %if.end.976

if.end.976:                                       ; preds = %for.end.973, %for.end.910
  br label %if.end.977

if.end.977:                                       ; preds = %if.end.976, %if.then.837
  br label %if.end.978

if.end.978:                                       ; preds = %if.end.977, %for.end.826
  br label %if.end.979

if.end.979:                                       ; preds = %if.end.978, %if.then.753
  br label %if.end.980

if.end.980:                                       ; preds = %if.end.979, %if.then.747
  br label %if.end.981

if.end.981:                                       ; preds = %if.end.980, %if.end.742
  br label %if.end.982

if.end.982:                                       ; preds = %if.end.981, %if.end.498
  %635 = load i32, i32* %bestPos, align 4
  ret i32 %635
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
