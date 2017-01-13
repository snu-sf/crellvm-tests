; ModuleID = './MultiSource.Benchmarks.MallocBench/1.espresso.cubestr.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cube_struct = type { i32, i32, i32, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32**, i32**, i32*, i32*, i32, i32, i32*, i32, i32 }
%struct.cdata_struct = type { i32*, i32*, i32*, i32*, i32, i32, i32 }

@cube = external global %struct.cube_struct, align 8
@.str = private unnamed_addr constant [42 x i8] c"cube size is silly, error in .i/.o or .mv\00", align 1
@cdata = external global %struct.cdata_struct, align 8
@temp_cube_save = external global %struct.cube_struct, align 8
@temp_cdata_save = external global %struct.cdata_struct, align 8

; Function Attrs: nounwind uwtable
define void @cube_setup() #0 {
entry:
  %i = alloca i32, align 4
  %var = alloca i32, align 4
  %p = alloca i32*, align 8
  %i_ = alloca i32, align 4
  %i_134 = alloca i32, align 4
  %0 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 2), align 4
  %cmp = icmp slt i32 %0, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 1), align 4
  %2 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 2), align 4
  %cmp1 = icmp slt i32 %1, %2
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  call void (i8*, ...) bitcast (void (...)* @fatal to void (i8*, ...)*)(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false
  %3 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 1), align 4
  %4 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 2), align 4
  %sub = sub nsw i32 %3, %4
  store i32 %sub, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 17), align 4
  %5 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 17), align 4
  %cmp2 = icmp sgt i32 %5, 0
  br i1 %cmp2, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %6 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 1), align 4
  %sub3 = sub nsw i32 %6, 1
  br label %cond.end

cond.false:                                       ; preds = %if.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %sub3, %cond.true ], [ -1, %cond.false ]
  store i32 %cond, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 18), align 4
  store i32 0, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 0), align 4
  %7 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 1), align 4
  %conv = sext i32 %7 to i64
  %mul = mul i64 4, %conv
  %call = call i8* @malloc(i64 %mul)
  %8 = bitcast i8* %call to i32*
  store i32* %8, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 3), align 8
  %9 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 1), align 4
  %conv4 = sext i32 %9 to i64
  %mul5 = mul i64 4, %conv4
  %call6 = call i8* @malloc(i64 %mul5)
  %10 = bitcast i8* %call6 to i32*
  store i32* %10, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 4), align 8
  %11 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 1), align 4
  %conv7 = sext i32 %11 to i64
  %mul8 = mul i64 4, %conv7
  %call9 = call i8* @malloc(i64 %mul8)
  %12 = bitcast i8* %call9 to i32*
  store i32* %12, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 6), align 8
  %13 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 1), align 4
  %conv10 = sext i32 %13 to i64
  %mul11 = mul i64 4, %conv10
  %call12 = call i8* @malloc(i64 %mul11)
  %14 = bitcast i8* %call12 to i32*
  store i32* %14, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 7), align 8
  store i32 0, i32* %var, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end
  %15 = load i32, i32* %var, align 4
  %16 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 1), align 4
  %cmp13 = icmp slt i32 %15, %16
  br i1 %cmp13, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %17 = load i32, i32* %var, align 4
  %18 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 2), align 4
  %cmp15 = icmp slt i32 %17, %18
  br i1 %cmp15, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %for.body
  %19 = load i32, i32* %var, align 4
  %idxprom = sext i32 %19 to i64
  %20 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 5), align 8
  %arrayidx = getelementptr inbounds i32, i32* %20, i64 %idxprom
  store i32 2, i32* %arrayidx, align 4
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.17, %for.body
  %21 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 0), align 4
  %22 = load i32, i32* %var, align 4
  %idxprom19 = sext i32 %22 to i64
  %23 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 3), align 8
  %arrayidx20 = getelementptr inbounds i32, i32* %23, i64 %idxprom19
  store i32 %21, i32* %arrayidx20, align 4
  %24 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 0), align 4
  %shr = ashr i32 %24, 5
  %add = add nsw i32 %shr, 1
  %25 = load i32, i32* %var, align 4
  %idxprom21 = sext i32 %25 to i64
  %26 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 6), align 8
  %arrayidx22 = getelementptr inbounds i32, i32* %26, i64 %idxprom21
  store i32 %add, i32* %arrayidx22, align 4
  %27 = load i32, i32* %var, align 4
  %idxprom23 = sext i32 %27 to i64
  %28 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 5), align 8
  %arrayidx24 = getelementptr inbounds i32, i32* %28, i64 %idxprom23
  %29 = load i32, i32* %arrayidx24, align 4
  %cmp25 = icmp sgt i32 %29, 0
  br i1 %cmp25, label %cond.true.27, label %cond.false.30

cond.true.27:                                     ; preds = %if.end.18
  %30 = load i32, i32* %var, align 4
  %idxprom28 = sext i32 %30 to i64
  %31 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 5), align 8
  %arrayidx29 = getelementptr inbounds i32, i32* %31, i64 %idxprom28
  %32 = load i32, i32* %arrayidx29, align 4
  br label %cond.end.34

cond.false.30:                                    ; preds = %if.end.18
  %33 = load i32, i32* %var, align 4
  %idxprom31 = sext i32 %33 to i64
  %34 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 5), align 8
  %arrayidx32 = getelementptr inbounds i32, i32* %34, i64 %idxprom31
  %35 = load i32, i32* %arrayidx32, align 4
  %sub33 = sub nsw i32 0, %35
  br label %cond.end.34

cond.end.34:                                      ; preds = %cond.false.30, %cond.true.27
  %cond35 = phi i32 [ %32, %cond.true.27 ], [ %sub33, %cond.false.30 ]
  %36 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 0), align 4
  %add36 = add nsw i32 %36, %cond35
  store i32 %add36, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 0), align 4
  %37 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 0), align 4
  %sub37 = sub nsw i32 %37, 1
  %38 = load i32, i32* %var, align 4
  %idxprom38 = sext i32 %38 to i64
  %39 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 4), align 8
  %arrayidx39 = getelementptr inbounds i32, i32* %39, i64 %idxprom38
  store i32 %sub37, i32* %arrayidx39, align 4
  %40 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 0), align 4
  %sub40 = sub nsw i32 %40, 1
  %shr41 = ashr i32 %sub40, 5
  %add42 = add nsw i32 %shr41, 1
  %41 = load i32, i32* %var, align 4
  %idxprom43 = sext i32 %41 to i64
  %42 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 7), align 8
  %arrayidx44 = getelementptr inbounds i32, i32* %42, i64 %idxprom43
  store i32 %add42, i32* %arrayidx44, align 4
  br label %for.inc

for.inc:                                          ; preds = %cond.end.34
  %43 = load i32, i32* %var, align 4
  %inc = add nsw i32 %43, 1
  store i32 %inc, i32* %var, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %44 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 1), align 4
  %conv45 = sext i32 %44 to i64
  %mul46 = mul i64 8, %conv45
  %call47 = call i8* @malloc(i64 %mul46)
  %45 = bitcast i8* %call47 to i32**
  store i32** %45, i32*** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 10), align 8
  %46 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 1), align 4
  %conv48 = sext i32 %46 to i64
  %mul49 = mul i64 4, %conv48
  %call50 = call i8* @malloc(i64 %mul49)
  %47 = bitcast i8* %call50 to i32*
  store i32* %47, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 16), align 8
  %48 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 0), align 4
  %cmp51 = icmp sle i32 %48, 32
  br i1 %cmp51, label %cond.true.53, label %cond.false.54

cond.true.53:                                     ; preds = %for.end
  br label %cond.end.59

cond.false.54:                                    ; preds = %for.end
  %49 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 0), align 4
  %sub55 = sub nsw i32 %49, 1
  %shr56 = ashr i32 %sub55, 5
  %add57 = add nsw i32 %shr56, 1
  %add58 = add nsw i32 %add57, 1
  br label %cond.end.59

cond.end.59:                                      ; preds = %cond.false.54, %cond.true.53
  %cond60 = phi i32 [ 2, %cond.true.53 ], [ %add58, %cond.false.54 ]
  %conv61 = sext i32 %cond60 to i64
  %mul62 = mul i64 4, %conv61
  %call63 = call i8* @malloc(i64 %mul62)
  %50 = bitcast i8* %call63 to i32*
  %51 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 0), align 4
  %call64 = call i32* (i32*, i32, ...) bitcast (i32* (...)* @set_clear to i32* (i32*, i32, ...)*)(i32* %50, i32 %51)
  store i32* %call64, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 8), align 8
  %52 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 0), align 4
  %cmp65 = icmp sle i32 %52, 32
  br i1 %cmp65, label %cond.true.67, label %cond.false.68

cond.true.67:                                     ; preds = %cond.end.59
  br label %cond.end.73

cond.false.68:                                    ; preds = %cond.end.59
  %53 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 0), align 4
  %sub69 = sub nsw i32 %53, 1
  %shr70 = ashr i32 %sub69, 5
  %add71 = add nsw i32 %shr70, 1
  %add72 = add nsw i32 %add71, 1
  br label %cond.end.73

cond.end.73:                                      ; preds = %cond.false.68, %cond.true.67
  %cond74 = phi i32 [ 2, %cond.true.67 ], [ %add72, %cond.false.68 ]
  %conv75 = sext i32 %cond74 to i64
  %mul76 = mul i64 4, %conv75
  %call77 = call i8* @malloc(i64 %mul76)
  %54 = bitcast i8* %call77 to i32*
  %55 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 0), align 4
  %call78 = call i32* (i32*, i32, ...) bitcast (i32* (...)* @set_clear to i32* (i32*, i32, ...)*)(i32* %54, i32 %55)
  store i32* %call78, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 9), align 8
  store i32 0, i32* %var, align 4
  br label %for.cond.79

for.cond.79:                                      ; preds = %for.inc.157, %cond.end.73
  %56 = load i32, i32* %var, align 4
  %57 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 1), align 4
  %cmp80 = icmp slt i32 %56, %57
  br i1 %cmp80, label %for.body.82, label %for.end.159

for.body.82:                                      ; preds = %for.cond.79
  %58 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 0), align 4
  %cmp83 = icmp sle i32 %58, 32
  br i1 %cmp83, label %cond.true.85, label %cond.false.86

cond.true.85:                                     ; preds = %for.body.82
  br label %cond.end.91

cond.false.86:                                    ; preds = %for.body.82
  %59 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 0), align 4
  %sub87 = sub nsw i32 %59, 1
  %shr88 = ashr i32 %sub87, 5
  %add89 = add nsw i32 %shr88, 1
  %add90 = add nsw i32 %add89, 1
  br label %cond.end.91

cond.end.91:                                      ; preds = %cond.false.86, %cond.true.85
  %cond92 = phi i32 [ 2, %cond.true.85 ], [ %add90, %cond.false.86 ]
  %conv93 = sext i32 %cond92 to i64
  %mul94 = mul i64 4, %conv93
  %call95 = call i8* @malloc(i64 %mul94)
  %60 = bitcast i8* %call95 to i32*
  %61 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 0), align 4
  %call96 = call i32* (i32*, i32, ...) bitcast (i32* (...)* @set_clear to i32* (i32*, i32, ...)*)(i32* %60, i32 %61)
  %62 = load i32, i32* %var, align 4
  %idxprom97 = sext i32 %62 to i64
  %63 = load i32**, i32*** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 10), align 8
  %arrayidx98 = getelementptr inbounds i32*, i32** %63, i64 %idxprom97
  store i32* %call96, i32** %arrayidx98, align 8
  store i32* %call96, i32** %p, align 8
  %64 = load i32, i32* %var, align 4
  %idxprom99 = sext i32 %64 to i64
  %65 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 3), align 8
  %arrayidx100 = getelementptr inbounds i32, i32* %65, i64 %idxprom99
  %66 = load i32, i32* %arrayidx100, align 4
  store i32 %66, i32* %i, align 4
  br label %for.cond.101

for.cond.101:                                     ; preds = %for.inc.111, %cond.end.91
  %67 = load i32, i32* %i, align 4
  %68 = load i32, i32* %var, align 4
  %idxprom102 = sext i32 %68 to i64
  %69 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 4), align 8
  %arrayidx103 = getelementptr inbounds i32, i32* %69, i64 %idxprom102
  %70 = load i32, i32* %arrayidx103, align 4
  %cmp104 = icmp sle i32 %67, %70
  br i1 %cmp104, label %for.body.106, label %for.end.113

for.body.106:                                     ; preds = %for.cond.101
  %71 = load i32, i32* %i, align 4
  %and = and i32 %71, 31
  %shl = shl i32 1, %and
  %72 = load i32, i32* %i, align 4
  %shr107 = ashr i32 %72, 5
  %add108 = add nsw i32 %shr107, 1
  %idxprom109 = sext i32 %add108 to i64
  %73 = load i32*, i32** %p, align 8
  %arrayidx110 = getelementptr inbounds i32, i32* %73, i64 %idxprom109
  %74 = load i32, i32* %arrayidx110, align 4
  %or = or i32 %74, %shl
  store i32 %or, i32* %arrayidx110, align 4
  br label %for.inc.111

for.inc.111:                                      ; preds = %for.body.106
  %75 = load i32, i32* %i, align 4
  %inc112 = add nsw i32 %75, 1
  store i32 %inc112, i32* %i, align 4
  br label %for.cond.101

for.end.113:                                      ; preds = %for.cond.101
  %76 = load i32, i32* %var, align 4
  %77 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 2), align 4
  %cmp114 = icmp slt i32 %76, %77
  br i1 %cmp114, label %if.then.116, label %if.else

if.then.116:                                      ; preds = %for.end.113
  %78 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 8), align 8
  %arrayidx117 = getelementptr inbounds i32, i32* %78, i64 0
  %79 = load i32, i32* %arrayidx117, align 4
  %and118 = and i32 %79, 1023
  store i32 %and118, i32* %i_, align 4
  %80 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 8), align 8
  %arrayidx119 = getelementptr inbounds i32, i32* %80, i64 0
  %81 = load i32, i32* %arrayidx119, align 4
  %and120 = and i32 %81, -1024
  store i32 %and120, i32* %arrayidx119, align 4
  %82 = load i32, i32* %i_, align 4
  %83 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 8), align 8
  %arrayidx121 = getelementptr inbounds i32, i32* %83, i64 0
  %84 = load i32, i32* %arrayidx121, align 4
  %or122 = or i32 %84, %82
  store i32 %or122, i32* %arrayidx121, align 4
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.then.116
  %85 = load i32, i32* %i_, align 4
  %idxprom123 = sext i32 %85 to i64
  %86 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 8), align 8
  %arrayidx124 = getelementptr inbounds i32, i32* %86, i64 %idxprom123
  %87 = load i32, i32* %arrayidx124, align 4
  %88 = load i32, i32* %i_, align 4
  %idxprom125 = sext i32 %88 to i64
  %89 = load i32*, i32** %p, align 8
  %arrayidx126 = getelementptr inbounds i32, i32* %89, i64 %idxprom125
  %90 = load i32, i32* %arrayidx126, align 4
  %or127 = or i32 %87, %90
  %91 = load i32, i32* %i_, align 4
  %idxprom128 = sext i32 %91 to i64
  %92 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 8), align 8
  %arrayidx129 = getelementptr inbounds i32, i32* %92, i64 %idxprom128
  store i32 %or127, i32* %arrayidx129, align 4
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %93 = load i32, i32* %i_, align 4
  %dec = add nsw i32 %93, -1
  store i32 %dec, i32* %i_, align 4
  %cmp130 = icmp sgt i32 %dec, 0
  br i1 %cmp130, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %94 = load i32, i32* %var, align 4
  %idxprom132 = sext i32 %94 to i64
  %95 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 16), align 8
  %arrayidx133 = getelementptr inbounds i32, i32* %95, i64 %idxprom132
  store i32 0, i32* %arrayidx133, align 4
  br label %if.end.156

if.else:                                          ; preds = %for.end.113
  %96 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 9), align 8
  %arrayidx135 = getelementptr inbounds i32, i32* %96, i64 0
  %97 = load i32, i32* %arrayidx135, align 4
  %and136 = and i32 %97, 1023
  store i32 %and136, i32* %i_134, align 4
  %98 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 9), align 8
  %arrayidx137 = getelementptr inbounds i32, i32* %98, i64 0
  %99 = load i32, i32* %arrayidx137, align 4
  %and138 = and i32 %99, -1024
  store i32 %and138, i32* %arrayidx137, align 4
  %100 = load i32, i32* %i_134, align 4
  %101 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 9), align 8
  %arrayidx139 = getelementptr inbounds i32, i32* %101, i64 0
  %102 = load i32, i32* %arrayidx139, align 4
  %or140 = or i32 %102, %100
  store i32 %or140, i32* %arrayidx139, align 4
  br label %do.body.141

do.body.141:                                      ; preds = %do.cond.149, %if.else
  %103 = load i32, i32* %i_134, align 4
  %idxprom142 = sext i32 %103 to i64
  %104 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 9), align 8
  %arrayidx143 = getelementptr inbounds i32, i32* %104, i64 %idxprom142
  %105 = load i32, i32* %arrayidx143, align 4
  %106 = load i32, i32* %i_134, align 4
  %idxprom144 = sext i32 %106 to i64
  %107 = load i32*, i32** %p, align 8
  %arrayidx145 = getelementptr inbounds i32, i32* %107, i64 %idxprom144
  %108 = load i32, i32* %arrayidx145, align 4
  %or146 = or i32 %105, %108
  %109 = load i32, i32* %i_134, align 4
  %idxprom147 = sext i32 %109 to i64
  %110 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 9), align 8
  %arrayidx148 = getelementptr inbounds i32, i32* %110, i64 %idxprom147
  store i32 %or146, i32* %arrayidx148, align 4
  br label %do.cond.149

do.cond.149:                                      ; preds = %do.body.141
  %111 = load i32, i32* %i_134, align 4
  %dec150 = add nsw i32 %111, -1
  store i32 %dec150, i32* %i_134, align 4
  %cmp151 = icmp sgt i32 %dec150, 0
  br i1 %cmp151, label %do.body.141, label %do.end.153

do.end.153:                                       ; preds = %do.cond.149
  %112 = load i32, i32* %var, align 4
  %idxprom154 = sext i32 %112 to i64
  %113 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 16), align 8
  %arrayidx155 = getelementptr inbounds i32, i32* %113, i64 %idxprom154
  store i32 1, i32* %arrayidx155, align 4
  br label %if.end.156

if.end.156:                                       ; preds = %do.end.153, %do.end
  br label %for.inc.157

for.inc.157:                                      ; preds = %if.end.156
  %114 = load i32, i32* %var, align 4
  %inc158 = add nsw i32 %114, 1
  store i32 %inc158, i32* %var, align 4
  br label %for.cond.79

for.end.159:                                      ; preds = %for.cond.79
  %115 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 2), align 4
  %cmp160 = icmp eq i32 %115, 0
  br i1 %cmp160, label %if.then.162, label %if.else.163

if.then.162:                                      ; preds = %for.end.159
  store i32 -1, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 15), align 4
  br label %if.end.170

if.else.163:                                      ; preds = %for.end.159
  %116 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 2), align 4
  %sub164 = sub nsw i32 %116, 1
  %idxprom165 = sext i32 %sub164 to i64
  %117 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 7), align 8
  %arrayidx166 = getelementptr inbounds i32, i32* %117, i64 %idxprom165
  %118 = load i32, i32* %arrayidx166, align 4
  store i32 %118, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 15), align 4
  %119 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 15), align 4
  %idxprom167 = sext i32 %119 to i64
  %120 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 8), align 8
  %arrayidx168 = getelementptr inbounds i32, i32* %120, i64 %idxprom167
  %121 = load i32, i32* %arrayidx168, align 4
  %and169 = and i32 %121, 1431655765
  store i32 %and169, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 14), align 4
  br label %if.end.170

if.end.170:                                       ; preds = %if.else.163, %if.then.162
  %call171 = call i8* @malloc(i64 80)
  %122 = bitcast i8* %call171 to i32**
  store i32** %122, i32*** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 11), align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.172

for.cond.172:                                     ; preds = %for.inc.192, %if.end.170
  %123 = load i32, i32* %i, align 4
  %cmp173 = icmp slt i32 %123, 10
  br i1 %cmp173, label %for.body.175, label %for.end.194

for.body.175:                                     ; preds = %for.cond.172
  %124 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 0), align 4
  %cmp176 = icmp sle i32 %124, 32
  br i1 %cmp176, label %cond.true.178, label %cond.false.179

cond.true.178:                                    ; preds = %for.body.175
  br label %cond.end.184

cond.false.179:                                   ; preds = %for.body.175
  %125 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 0), align 4
  %sub180 = sub nsw i32 %125, 1
  %shr181 = ashr i32 %sub180, 5
  %add182 = add nsw i32 %shr181, 1
  %add183 = add nsw i32 %add182, 1
  br label %cond.end.184

cond.end.184:                                     ; preds = %cond.false.179, %cond.true.178
  %cond185 = phi i32 [ 2, %cond.true.178 ], [ %add183, %cond.false.179 ]
  %conv186 = sext i32 %cond185 to i64
  %mul187 = mul i64 4, %conv186
  %call188 = call i8* @malloc(i64 %mul187)
  %126 = bitcast i8* %call188 to i32*
  %127 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 0), align 4
  %call189 = call i32* (i32*, i32, ...) bitcast (i32* (...)* @set_clear to i32* (i32*, i32, ...)*)(i32* %126, i32 %127)
  %128 = load i32, i32* %i, align 4
  %idxprom190 = sext i32 %128 to i64
  %129 = load i32**, i32*** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 11), align 8
  %arrayidx191 = getelementptr inbounds i32*, i32** %129, i64 %idxprom190
  store i32* %call189, i32** %arrayidx191, align 8
  br label %for.inc.192

for.inc.192:                                      ; preds = %cond.end.184
  %130 = load i32, i32* %i, align 4
  %inc193 = add nsw i32 %130, 1
  store i32 %inc193, i32* %i, align 4
  br label %for.cond.172

for.end.194:                                      ; preds = %for.cond.172
  %131 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 0), align 4
  %cmp195 = icmp sle i32 %131, 32
  br i1 %cmp195, label %cond.true.197, label %cond.false.198

cond.true.197:                                    ; preds = %for.end.194
  br label %cond.end.203

cond.false.198:                                   ; preds = %for.end.194
  %132 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 0), align 4
  %sub199 = sub nsw i32 %132, 1
  %shr200 = ashr i32 %sub199, 5
  %add201 = add nsw i32 %shr200, 1
  %add202 = add nsw i32 %add201, 1
  br label %cond.end.203

cond.end.203:                                     ; preds = %cond.false.198, %cond.true.197
  %cond204 = phi i32 [ 2, %cond.true.197 ], [ %add202, %cond.false.198 ]
  %conv205 = sext i32 %cond204 to i64
  %mul206 = mul i64 4, %conv205
  %call207 = call i8* @malloc(i64 %mul206)
  %133 = bitcast i8* %call207 to i32*
  %134 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 0), align 4
  %call208 = call i32* (i32*, i32, ...) bitcast (i32* (...)* @set_clear to i32* (i32*, i32, ...)*)(i32* %133, i32 %134)
  %135 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 0), align 4
  %call209 = call i32* (i32*, i32, ...) bitcast (i32* (...)* @set_fill to i32* (i32*, i32, ...)*)(i32* %call208, i32 %135)
  store i32* %call209, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 12), align 8
  %136 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 0), align 4
  %cmp210 = icmp sle i32 %136, 32
  br i1 %cmp210, label %cond.true.212, label %cond.false.213

cond.true.212:                                    ; preds = %cond.end.203
  br label %cond.end.218

cond.false.213:                                   ; preds = %cond.end.203
  %137 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 0), align 4
  %sub214 = sub nsw i32 %137, 1
  %shr215 = ashr i32 %sub214, 5
  %add216 = add nsw i32 %shr215, 1
  %add217 = add nsw i32 %add216, 1
  br label %cond.end.218

cond.end.218:                                     ; preds = %cond.false.213, %cond.true.212
  %cond219 = phi i32 [ 2, %cond.true.212 ], [ %add217, %cond.false.213 ]
  %conv220 = sext i32 %cond219 to i64
  %mul221 = mul i64 4, %conv220
  %call222 = call i8* @malloc(i64 %mul221)
  %138 = bitcast i8* %call222 to i32*
  %139 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 0), align 4
  %call223 = call i32* (i32*, i32, ...) bitcast (i32* (...)* @set_clear to i32* (i32*, i32, ...)*)(i32* %138, i32 %139)
  store i32* %call223, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 13), align 8
  %140 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 0), align 4
  %conv224 = sext i32 %140 to i64
  %mul225 = mul i64 4, %conv224
  %call226 = call i8* @malloc(i64 %mul225)
  %141 = bitcast i8* %call226 to i32*
  store i32* %141, i32** getelementptr inbounds (%struct.cdata_struct, %struct.cdata_struct* @cdata, i32 0, i32 0), align 8
  %142 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 1), align 4
  %conv227 = sext i32 %142 to i64
  %mul228 = mul i64 4, %conv227
  %call229 = call i8* @malloc(i64 %mul228)
  %143 = bitcast i8* %call229 to i32*
  store i32* %143, i32** getelementptr inbounds (%struct.cdata_struct, %struct.cdata_struct* @cdata, i32 0, i32 1), align 8
  %144 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 1), align 4
  %conv230 = sext i32 %144 to i64
  %mul231 = mul i64 4, %conv230
  %call232 = call i8* @malloc(i64 %mul231)
  %145 = bitcast i8* %call232 to i32*
  store i32* %145, i32** getelementptr inbounds (%struct.cdata_struct, %struct.cdata_struct* @cdata, i32 0, i32 2), align 8
  %146 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 1), align 4
  %conv233 = sext i32 %146 to i64
  %mul234 = mul i64 4, %conv233
  %call235 = call i8* @malloc(i64 %mul234)
  %147 = bitcast i8* %call235 to i32*
  store i32* %147, i32** getelementptr inbounds (%struct.cdata_struct, %struct.cdata_struct* @cdata, i32 0, i32 3), align 8
  ret void
}

declare void @fatal(...) #1

declare i8* @malloc(i64) #1

declare i32* @set_clear(...) #1

declare i32* @set_fill(...) #1

; Function Attrs: nounwind uwtable
define void @setdown_cube() #0 {
entry:
  %i = alloca i32, align 4
  %var = alloca i32, align 4
  %0 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 3), align 8
  %tobool = icmp ne i32* %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 3), align 8
  %2 = bitcast i32* %1 to i8*
  call void @free(i8* %2)
  store i32* null, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 3), align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 4), align 8
  %tobool1 = icmp ne i32* %3, null
  br i1 %tobool1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  %4 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 4), align 8
  %5 = bitcast i32* %4 to i8*
  call void @free(i8* %5)
  store i32* null, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 4), align 8
  br label %if.end.3

if.end.3:                                         ; preds = %if.then.2, %if.end
  %6 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 6), align 8
  %tobool4 = icmp ne i32* %6, null
  br i1 %tobool4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end.3
  %7 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 6), align 8
  %8 = bitcast i32* %7 to i8*
  call void @free(i8* %8)
  store i32* null, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 6), align 8
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.5, %if.end.3
  %9 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 7), align 8
  %tobool7 = icmp ne i32* %9, null
  br i1 %tobool7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %if.end.6
  %10 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 7), align 8
  %11 = bitcast i32* %10 to i8*
  call void @free(i8* %11)
  store i32* null, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 7), align 8
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.8, %if.end.6
  %12 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 16), align 8
  %tobool10 = icmp ne i32* %12, null
  br i1 %tobool10, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %if.end.9
  %13 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 16), align 8
  %14 = bitcast i32* %13 to i8*
  call void @free(i8* %14)
  store i32* null, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 16), align 8
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.11, %if.end.9
  %15 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 8), align 8
  %tobool13 = icmp ne i32* %15, null
  br i1 %tobool13, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %if.end.12
  %16 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 8), align 8
  %17 = bitcast i32* %16 to i8*
  call void @free(i8* %17)
  store i32* null, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 8), align 8
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.14, %if.end.12
  %18 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 9), align 8
  %tobool16 = icmp ne i32* %18, null
  br i1 %tobool16, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %if.end.15
  %19 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 9), align 8
  %20 = bitcast i32* %19 to i8*
  call void @free(i8* %20)
  store i32* null, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 9), align 8
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.17, %if.end.15
  %21 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 12), align 8
  %tobool19 = icmp ne i32* %21, null
  br i1 %tobool19, label %if.then.20, label %if.end.21

if.then.20:                                       ; preds = %if.end.18
  %22 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 12), align 8
  %23 = bitcast i32* %22 to i8*
  call void @free(i8* %23)
  store i32* null, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 12), align 8
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.20, %if.end.18
  %24 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 13), align 8
  %tobool22 = icmp ne i32* %24, null
  br i1 %tobool22, label %if.then.23, label %if.end.24

if.then.23:                                       ; preds = %if.end.21
  %25 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 13), align 8
  %26 = bitcast i32* %25 to i8*
  call void @free(i8* %26)
  store i32* null, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 13), align 8
  br label %if.end.24

if.end.24:                                        ; preds = %if.then.23, %if.end.21
  store i32 0, i32* %var, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.24
  %27 = load i32, i32* %var, align 4
  %28 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 1), align 4
  %cmp = icmp slt i32 %27, %28
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %29 = load i32, i32* %var, align 4
  %idxprom = sext i32 %29 to i64
  %30 = load i32**, i32*** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 10), align 8
  %arrayidx = getelementptr inbounds i32*, i32** %30, i64 %idxprom
  %31 = load i32*, i32** %arrayidx, align 8
  %tobool25 = icmp ne i32* %31, null
  br i1 %tobool25, label %if.then.26, label %if.end.31

if.then.26:                                       ; preds = %for.body
  %32 = load i32, i32* %var, align 4
  %idxprom27 = sext i32 %32 to i64
  %33 = load i32**, i32*** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 10), align 8
  %arrayidx28 = getelementptr inbounds i32*, i32** %33, i64 %idxprom27
  %34 = load i32*, i32** %arrayidx28, align 8
  %35 = bitcast i32* %34 to i8*
  call void @free(i8* %35)
  %36 = load i32, i32* %var, align 4
  %idxprom29 = sext i32 %36 to i64
  %37 = load i32**, i32*** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 10), align 8
  %arrayidx30 = getelementptr inbounds i32*, i32** %37, i64 %idxprom29
  store i32* null, i32** %arrayidx30, align 8
  br label %if.end.31

if.end.31:                                        ; preds = %if.then.26, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.31
  %38 = load i32, i32* %var, align 4
  %inc = add nsw i32 %38, 1
  store i32 %inc, i32* %var, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %39 = load i32**, i32*** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 10), align 8
  %tobool32 = icmp ne i32** %39, null
  br i1 %tobool32, label %if.then.33, label %if.end.34

if.then.33:                                       ; preds = %for.end
  %40 = load i32**, i32*** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 10), align 8
  %41 = bitcast i32** %40 to i8*
  call void @free(i8* %41)
  store i32** null, i32*** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 10), align 8
  br label %if.end.34

if.end.34:                                        ; preds = %if.then.33, %for.end
  store i32 0, i32* %i, align 4
  br label %for.cond.35

for.cond.35:                                      ; preds = %for.inc.47, %if.end.34
  %42 = load i32, i32* %i, align 4
  %cmp36 = icmp slt i32 %42, 10
  br i1 %cmp36, label %for.body.37, label %for.end.49

for.body.37:                                      ; preds = %for.cond.35
  %43 = load i32, i32* %i, align 4
  %idxprom38 = sext i32 %43 to i64
  %44 = load i32**, i32*** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 11), align 8
  %arrayidx39 = getelementptr inbounds i32*, i32** %44, i64 %idxprom38
  %45 = load i32*, i32** %arrayidx39, align 8
  %tobool40 = icmp ne i32* %45, null
  br i1 %tobool40, label %if.then.41, label %if.end.46

if.then.41:                                       ; preds = %for.body.37
  %46 = load i32, i32* %i, align 4
  %idxprom42 = sext i32 %46 to i64
  %47 = load i32**, i32*** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 11), align 8
  %arrayidx43 = getelementptr inbounds i32*, i32** %47, i64 %idxprom42
  %48 = load i32*, i32** %arrayidx43, align 8
  %49 = bitcast i32* %48 to i8*
  call void @free(i8* %49)
  %50 = load i32, i32* %i, align 4
  %idxprom44 = sext i32 %50 to i64
  %51 = load i32**, i32*** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 11), align 8
  %arrayidx45 = getelementptr inbounds i32*, i32** %51, i64 %idxprom44
  store i32* null, i32** %arrayidx45, align 8
  br label %if.end.46

if.end.46:                                        ; preds = %if.then.41, %for.body.37
  br label %for.inc.47

for.inc.47:                                       ; preds = %if.end.46
  %52 = load i32, i32* %i, align 4
  %inc48 = add nsw i32 %52, 1
  store i32 %inc48, i32* %i, align 4
  br label %for.cond.35

for.end.49:                                       ; preds = %for.cond.35
  %53 = load i32**, i32*** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 11), align 8
  %tobool50 = icmp ne i32** %53, null
  br i1 %tobool50, label %if.then.51, label %if.end.52

if.then.51:                                       ; preds = %for.end.49
  %54 = load i32**, i32*** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 11), align 8
  %55 = bitcast i32** %54 to i8*
  call void @free(i8* %55)
  store i32** null, i32*** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 11), align 8
  br label %if.end.52

if.end.52:                                        ; preds = %if.then.51, %for.end.49
  %56 = load i32*, i32** getelementptr inbounds (%struct.cdata_struct, %struct.cdata_struct* @cdata, i32 0, i32 0), align 8
  %tobool53 = icmp ne i32* %56, null
  br i1 %tobool53, label %if.then.54, label %if.end.55

if.then.54:                                       ; preds = %if.end.52
  %57 = load i32*, i32** getelementptr inbounds (%struct.cdata_struct, %struct.cdata_struct* @cdata, i32 0, i32 0), align 8
  %58 = bitcast i32* %57 to i8*
  call void @free(i8* %58)
  store i32* null, i32** getelementptr inbounds (%struct.cdata_struct, %struct.cdata_struct* @cdata, i32 0, i32 0), align 8
  br label %if.end.55

if.end.55:                                        ; preds = %if.then.54, %if.end.52
  %59 = load i32*, i32** getelementptr inbounds (%struct.cdata_struct, %struct.cdata_struct* @cdata, i32 0, i32 1), align 8
  %tobool56 = icmp ne i32* %59, null
  br i1 %tobool56, label %if.then.57, label %if.end.58

if.then.57:                                       ; preds = %if.end.55
  %60 = load i32*, i32** getelementptr inbounds (%struct.cdata_struct, %struct.cdata_struct* @cdata, i32 0, i32 1), align 8
  %61 = bitcast i32* %60 to i8*
  call void @free(i8* %61)
  store i32* null, i32** getelementptr inbounds (%struct.cdata_struct, %struct.cdata_struct* @cdata, i32 0, i32 1), align 8
  br label %if.end.58

if.end.58:                                        ; preds = %if.then.57, %if.end.55
  %62 = load i32*, i32** getelementptr inbounds (%struct.cdata_struct, %struct.cdata_struct* @cdata, i32 0, i32 2), align 8
  %tobool59 = icmp ne i32* %62, null
  br i1 %tobool59, label %if.then.60, label %if.end.61

if.then.60:                                       ; preds = %if.end.58
  %63 = load i32*, i32** getelementptr inbounds (%struct.cdata_struct, %struct.cdata_struct* @cdata, i32 0, i32 2), align 8
  %64 = bitcast i32* %63 to i8*
  call void @free(i8* %64)
  store i32* null, i32** getelementptr inbounds (%struct.cdata_struct, %struct.cdata_struct* @cdata, i32 0, i32 2), align 8
  br label %if.end.61

if.end.61:                                        ; preds = %if.then.60, %if.end.58
  %65 = load i32*, i32** getelementptr inbounds (%struct.cdata_struct, %struct.cdata_struct* @cdata, i32 0, i32 3), align 8
  %tobool62 = icmp ne i32* %65, null
  br i1 %tobool62, label %if.then.63, label %if.end.64

if.then.63:                                       ; preds = %if.end.61
  %66 = load i32*, i32** getelementptr inbounds (%struct.cdata_struct, %struct.cdata_struct* @cdata, i32 0, i32 3), align 8
  %67 = bitcast i32* %66 to i8*
  call void @free(i8* %67)
  store i32* null, i32** getelementptr inbounds (%struct.cdata_struct, %struct.cdata_struct* @cdata, i32 0, i32 3), align 8
  br label %if.end.64

if.end.64:                                        ; preds = %if.then.63, %if.end.61
  store i32* null, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 4), align 8
  store i32* null, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 3), align 8
  store i32* null, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 7), align 8
  store i32* null, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 6), align 8
  store i32* null, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 16), align 8
  store i32* null, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 9), align 8
  store i32* null, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 8), align 8
  store i32* null, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 13), align 8
  store i32* null, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 12), align 8
  store i32** null, i32*** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 11), align 8
  store i32** null, i32*** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 10), align 8
  store i32* null, i32** getelementptr inbounds (%struct.cdata_struct, %struct.cdata_struct* @cdata, i32 0, i32 2), align 8
  store i32* null, i32** getelementptr inbounds (%struct.cdata_struct, %struct.cdata_struct* @cdata, i32 0, i32 1), align 8
  store i32* null, i32** getelementptr inbounds (%struct.cdata_struct, %struct.cdata_struct* @cdata, i32 0, i32 0), align 8
  store i32* null, i32** getelementptr inbounds (%struct.cdata_struct, %struct.cdata_struct* @cdata, i32 0, i32 3), align 8
  ret void
}

declare void @free(i8*) #1

; Function Attrs: nounwind uwtable
define void @save_cube_struct() #0 {
entry:
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast (%struct.cube_struct* @temp_cube_save to i8*), i8* bitcast (%struct.cube_struct* @cube to i8*), i64 128, i32 8, i1 false)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast (%struct.cdata_struct* @temp_cdata_save to i8*), i8* bitcast (%struct.cdata_struct* @cdata to i8*), i64 48, i32 8, i1 false)
  store i32* null, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 4), align 8
  store i32* null, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 3), align 8
  store i32* null, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 7), align 8
  store i32* null, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 6), align 8
  store i32* null, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 5), align 8
  store i32* null, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 9), align 8
  store i32* null, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 8), align 8
  store i32* null, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 13), align 8
  store i32* null, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 12), align 8
  store i32** null, i32*** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 11), align 8
  store i32** null, i32*** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 10), align 8
  store i32* null, i32** getelementptr inbounds (%struct.cdata_struct, %struct.cdata_struct* @cdata, i32 0, i32 2), align 8
  store i32* null, i32** getelementptr inbounds (%struct.cdata_struct, %struct.cdata_struct* @cdata, i32 0, i32 1), align 8
  store i32* null, i32** getelementptr inbounds (%struct.cdata_struct, %struct.cdata_struct* @cdata, i32 0, i32 0), align 8
  store i32* null, i32** getelementptr inbounds (%struct.cdata_struct, %struct.cdata_struct* @cdata, i32 0, i32 3), align 8
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #2

; Function Attrs: nounwind uwtable
define void @restore_cube_struct() #0 {
entry:
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast (%struct.cube_struct* @cube to i8*), i8* bitcast (%struct.cube_struct* @temp_cube_save to i8*), i64 128, i32 8, i1 false)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast (%struct.cdata_struct* @cdata to i8*), i8* bitcast (%struct.cdata_struct* @temp_cdata_save to i8*), i64 48, i32 8, i1 false)
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
