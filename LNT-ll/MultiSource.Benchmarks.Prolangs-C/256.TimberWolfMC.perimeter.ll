; ModuleID = './MultiSource.Benchmarks.Prolangs-C/256.TimberWolfMC.perimeter.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bustbox = type { i32, i32 }

@A = external global %struct.bustbox*, align 8

; Function Attrs: nounwind uwtable
define i32 @perimeter() #0 {
entry:
  %i = alloca i32, align 4
  %sum = alloca i32, align 4
  store i32 0, i32* %sum, align 4
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load %struct.bustbox*, %struct.bustbox** @A, align 8
  %arrayidx = getelementptr inbounds %struct.bustbox, %struct.bustbox* %1, i64 0
  %xc = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx, i32 0, i32 0
  %2 = load i32, i32* %xc, align 4
  %cmp = icmp sle i32 %0, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %i, align 4
  %4 = load %struct.bustbox*, %struct.bustbox** @A, align 8
  %arrayidx1 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %4, i64 0
  %xc2 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx1, i32 0, i32 0
  %5 = load i32, i32* %xc2, align 4
  %cmp3 = icmp eq i32 %3, %5
  br i1 %cmp3, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %6 = load %struct.bustbox*, %struct.bustbox** @A, align 8
  %arrayidx4 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %6, i64 1
  %xc5 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx4, i32 0, i32 0
  %7 = load i32, i32* %xc5, align 4
  %8 = load i32, i32* %i, align 4
  %idxprom = sext i32 %8 to i64
  %9 = load %struct.bustbox*, %struct.bustbox** @A, align 8
  %arrayidx6 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %9, i64 %idxprom
  %xc7 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx6, i32 0, i32 0
  %10 = load i32, i32* %xc7, align 4
  %sub = sub nsw i32 %7, %10
  %cmp8 = icmp sge i32 %sub, 0
  br i1 %cmp8, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  %11 = load %struct.bustbox*, %struct.bustbox** @A, align 8
  %arrayidx9 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %11, i64 1
  %xc10 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx9, i32 0, i32 0
  %12 = load i32, i32* %xc10, align 4
  %13 = load i32, i32* %i, align 4
  %idxprom11 = sext i32 %13 to i64
  %14 = load %struct.bustbox*, %struct.bustbox** @A, align 8
  %arrayidx12 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %14, i64 %idxprom11
  %xc13 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx12, i32 0, i32 0
  %15 = load i32, i32* %xc13, align 4
  %sub14 = sub nsw i32 %12, %15
  br label %cond.end

cond.false:                                       ; preds = %if.then
  %16 = load %struct.bustbox*, %struct.bustbox** @A, align 8
  %arrayidx15 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %16, i64 1
  %xc16 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx15, i32 0, i32 0
  %17 = load i32, i32* %xc16, align 4
  %18 = load i32, i32* %i, align 4
  %idxprom17 = sext i32 %18 to i64
  %19 = load %struct.bustbox*, %struct.bustbox** @A, align 8
  %arrayidx18 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %19, i64 %idxprom17
  %xc19 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx18, i32 0, i32 0
  %20 = load i32, i32* %xc19, align 4
  %sub20 = sub nsw i32 %17, %20
  %sub21 = sub nsw i32 0, %sub20
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %sub14, %cond.true ], [ %sub21, %cond.false ]
  %21 = load %struct.bustbox*, %struct.bustbox** @A, align 8
  %arrayidx22 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %21, i64 1
  %yc = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx22, i32 0, i32 1
  %22 = load i32, i32* %yc, align 4
  %23 = load i32, i32* %i, align 4
  %idxprom23 = sext i32 %23 to i64
  %24 = load %struct.bustbox*, %struct.bustbox** @A, align 8
  %arrayidx24 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %24, i64 %idxprom23
  %yc25 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx24, i32 0, i32 1
  %25 = load i32, i32* %yc25, align 4
  %sub26 = sub nsw i32 %22, %25
  %cmp27 = icmp sge i32 %sub26, 0
  br i1 %cmp27, label %cond.true.28, label %cond.false.35

cond.true.28:                                     ; preds = %cond.end
  %26 = load %struct.bustbox*, %struct.bustbox** @A, align 8
  %arrayidx29 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %26, i64 1
  %yc30 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx29, i32 0, i32 1
  %27 = load i32, i32* %yc30, align 4
  %28 = load i32, i32* %i, align 4
  %idxprom31 = sext i32 %28 to i64
  %29 = load %struct.bustbox*, %struct.bustbox** @A, align 8
  %arrayidx32 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %29, i64 %idxprom31
  %yc33 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx32, i32 0, i32 1
  %30 = load i32, i32* %yc33, align 4
  %sub34 = sub nsw i32 %27, %30
  br label %cond.end.43

cond.false.35:                                    ; preds = %cond.end
  %31 = load %struct.bustbox*, %struct.bustbox** @A, align 8
  %arrayidx36 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %31, i64 1
  %yc37 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx36, i32 0, i32 1
  %32 = load i32, i32* %yc37, align 4
  %33 = load i32, i32* %i, align 4
  %idxprom38 = sext i32 %33 to i64
  %34 = load %struct.bustbox*, %struct.bustbox** @A, align 8
  %arrayidx39 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %34, i64 %idxprom38
  %yc40 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx39, i32 0, i32 1
  %35 = load i32, i32* %yc40, align 4
  %sub41 = sub nsw i32 %32, %35
  %sub42 = sub nsw i32 0, %sub41
  br label %cond.end.43

cond.end.43:                                      ; preds = %cond.false.35, %cond.true.28
  %cond44 = phi i32 [ %sub34, %cond.true.28 ], [ %sub42, %cond.false.35 ]
  %add = add nsw i32 %cond, %cond44
  %36 = load i32, i32* %sum, align 4
  %add45 = add nsw i32 %36, %add
  store i32 %add45, i32* %sum, align 4
  br label %if.end

if.else:                                          ; preds = %for.body
  %37 = load i32, i32* %i, align 4
  %add46 = add nsw i32 %37, 1
  %idxprom47 = sext i32 %add46 to i64
  %38 = load %struct.bustbox*, %struct.bustbox** @A, align 8
  %arrayidx48 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %38, i64 %idxprom47
  %xc49 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx48, i32 0, i32 0
  %39 = load i32, i32* %xc49, align 4
  %40 = load i32, i32* %i, align 4
  %idxprom50 = sext i32 %40 to i64
  %41 = load %struct.bustbox*, %struct.bustbox** @A, align 8
  %arrayidx51 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %41, i64 %idxprom50
  %xc52 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx51, i32 0, i32 0
  %42 = load i32, i32* %xc52, align 4
  %sub53 = sub nsw i32 %39, %42
  %cmp54 = icmp sge i32 %sub53, 0
  br i1 %cmp54, label %cond.true.55, label %cond.false.64

cond.true.55:                                     ; preds = %if.else
  %43 = load i32, i32* %i, align 4
  %add56 = add nsw i32 %43, 1
  %idxprom57 = sext i32 %add56 to i64
  %44 = load %struct.bustbox*, %struct.bustbox** @A, align 8
  %arrayidx58 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %44, i64 %idxprom57
  %xc59 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx58, i32 0, i32 0
  %45 = load i32, i32* %xc59, align 4
  %46 = load i32, i32* %i, align 4
  %idxprom60 = sext i32 %46 to i64
  %47 = load %struct.bustbox*, %struct.bustbox** @A, align 8
  %arrayidx61 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %47, i64 %idxprom60
  %xc62 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx61, i32 0, i32 0
  %48 = load i32, i32* %xc62, align 4
  %sub63 = sub nsw i32 %45, %48
  br label %cond.end.74

cond.false.64:                                    ; preds = %if.else
  %49 = load i32, i32* %i, align 4
  %add65 = add nsw i32 %49, 1
  %idxprom66 = sext i32 %add65 to i64
  %50 = load %struct.bustbox*, %struct.bustbox** @A, align 8
  %arrayidx67 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %50, i64 %idxprom66
  %xc68 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx67, i32 0, i32 0
  %51 = load i32, i32* %xc68, align 4
  %52 = load i32, i32* %i, align 4
  %idxprom69 = sext i32 %52 to i64
  %53 = load %struct.bustbox*, %struct.bustbox** @A, align 8
  %arrayidx70 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %53, i64 %idxprom69
  %xc71 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx70, i32 0, i32 0
  %54 = load i32, i32* %xc71, align 4
  %sub72 = sub nsw i32 %51, %54
  %sub73 = sub nsw i32 0, %sub72
  br label %cond.end.74

cond.end.74:                                      ; preds = %cond.false.64, %cond.true.55
  %cond75 = phi i32 [ %sub63, %cond.true.55 ], [ %sub73, %cond.false.64 ]
  %55 = load i32, i32* %i, align 4
  %add76 = add nsw i32 %55, 1
  %idxprom77 = sext i32 %add76 to i64
  %56 = load %struct.bustbox*, %struct.bustbox** @A, align 8
  %arrayidx78 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %56, i64 %idxprom77
  %yc79 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx78, i32 0, i32 1
  %57 = load i32, i32* %yc79, align 4
  %58 = load i32, i32* %i, align 4
  %idxprom80 = sext i32 %58 to i64
  %59 = load %struct.bustbox*, %struct.bustbox** @A, align 8
  %arrayidx81 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %59, i64 %idxprom80
  %yc82 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx81, i32 0, i32 1
  %60 = load i32, i32* %yc82, align 4
  %sub83 = sub nsw i32 %57, %60
  %cmp84 = icmp sge i32 %sub83, 0
  br i1 %cmp84, label %cond.true.85, label %cond.false.94

cond.true.85:                                     ; preds = %cond.end.74
  %61 = load i32, i32* %i, align 4
  %add86 = add nsw i32 %61, 1
  %idxprom87 = sext i32 %add86 to i64
  %62 = load %struct.bustbox*, %struct.bustbox** @A, align 8
  %arrayidx88 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %62, i64 %idxprom87
  %yc89 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx88, i32 0, i32 1
  %63 = load i32, i32* %yc89, align 4
  %64 = load i32, i32* %i, align 4
  %idxprom90 = sext i32 %64 to i64
  %65 = load %struct.bustbox*, %struct.bustbox** @A, align 8
  %arrayidx91 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %65, i64 %idxprom90
  %yc92 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx91, i32 0, i32 1
  %66 = load i32, i32* %yc92, align 4
  %sub93 = sub nsw i32 %63, %66
  br label %cond.end.104

cond.false.94:                                    ; preds = %cond.end.74
  %67 = load i32, i32* %i, align 4
  %add95 = add nsw i32 %67, 1
  %idxprom96 = sext i32 %add95 to i64
  %68 = load %struct.bustbox*, %struct.bustbox** @A, align 8
  %arrayidx97 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %68, i64 %idxprom96
  %yc98 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx97, i32 0, i32 1
  %69 = load i32, i32* %yc98, align 4
  %70 = load i32, i32* %i, align 4
  %idxprom99 = sext i32 %70 to i64
  %71 = load %struct.bustbox*, %struct.bustbox** @A, align 8
  %arrayidx100 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %71, i64 %idxprom99
  %yc101 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx100, i32 0, i32 1
  %72 = load i32, i32* %yc101, align 4
  %sub102 = sub nsw i32 %69, %72
  %sub103 = sub nsw i32 0, %sub102
  br label %cond.end.104

cond.end.104:                                     ; preds = %cond.false.94, %cond.true.85
  %cond105 = phi i32 [ %sub93, %cond.true.85 ], [ %sub103, %cond.false.94 ]
  %add106 = add nsw i32 %cond75, %cond105
  %73 = load i32, i32* %sum, align 4
  %add107 = add nsw i32 %73, %add106
  store i32 %add107, i32* %sum, align 4
  br label %if.end

if.end:                                           ; preds = %cond.end.104, %cond.end.43
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %74 = load i32, i32* %i, align 4
  %inc = add nsw i32 %74, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %75 = load i32, i32* %sum, align 4
  ret i32 %75
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
