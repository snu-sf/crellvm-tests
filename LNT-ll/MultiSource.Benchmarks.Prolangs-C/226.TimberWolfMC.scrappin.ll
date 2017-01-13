; ModuleID = './MultiSource.Benchmarks.Prolangs-C/226.TimberWolfMC.scrappin.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dimbox = type { %struct.netbox*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, double, double, i8* }
%struct.netbox = type { %struct.netbox*, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@numnets = external global i32, align 4
@netarray = external global %struct.dimbox**, align 8
@numcells = external global i32, align 4

; Function Attrs: nounwind uwtable
define void @scrappin() #0 {
entry:
  %dimptr = alloca %struct.dimbox*, align 8
  %netptr = alloca %struct.netbox*, align 8
  %net = alloca i32, align 4
  store i32 1, i32* %net, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.6, %entry
  %0 = load i32, i32* %net, align 4
  %1 = load i32, i32* @numnets, align 4
  %cmp = icmp sle i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end.7

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %net, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load %struct.dimbox**, %struct.dimbox*** @netarray, align 8
  %arrayidx = getelementptr inbounds %struct.dimbox*, %struct.dimbox** %3, i64 %idxprom
  %4 = load %struct.dimbox*, %struct.dimbox** %arrayidx, align 8
  store %struct.dimbox* %4, %struct.dimbox** %dimptr, align 8
  %5 = load %struct.dimbox*, %struct.dimbox** %dimptr, align 8
  %netptr1 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %5, i32 0, i32 0
  %6 = load %struct.netbox*, %struct.netbox** %netptr1, align 8
  store %struct.netbox* %6, %struct.netbox** %netptr, align 8
  br label %for.cond.2

for.cond.2:                                       ; preds = %for.inc, %for.body
  %7 = load %struct.netbox*, %struct.netbox** %netptr, align 8
  %cmp3 = icmp ne %struct.netbox* %7, null
  br i1 %cmp3, label %for.body.4, label %for.end

for.body.4:                                       ; preds = %for.cond.2
  %8 = load %struct.netbox*, %struct.netbox** %netptr, align 8
  %cell = getelementptr inbounds %struct.netbox, %struct.netbox* %8, i32 0, i32 7
  %9 = load i32, i32* %cell, align 4
  %10 = load i32, i32* @numcells, align 4
  %cmp5 = icmp sgt i32 %9, %10
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %for.body.4
  %11 = load %struct.netbox*, %struct.netbox** %netptr, align 8
  %skip = getelementptr inbounds %struct.netbox, %struct.netbox* %11, i32 0, i32 9
  store i32 1, i32* %skip, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.4
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %12 = load %struct.netbox*, %struct.netbox** %netptr, align 8
  %nextterm = getelementptr inbounds %struct.netbox, %struct.netbox* %12, i32 0, i32 0
  %13 = load %struct.netbox*, %struct.netbox** %nextterm, align 8
  store %struct.netbox* %13, %struct.netbox** %netptr, align 8
  br label %for.cond.2

for.end:                                          ; preds = %for.cond.2
  br label %for.inc.6

for.inc.6:                                        ; preds = %for.end
  %14 = load i32, i32* %net, align 4
  %inc = add nsw i32 %14, 1
  store i32 %inc, i32* %net, align 4
  br label %for.cond

for.end.7:                                        ; preds = %for.cond
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
