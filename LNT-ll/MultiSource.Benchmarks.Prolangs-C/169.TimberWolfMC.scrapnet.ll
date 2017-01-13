; ModuleID = './MultiSource.Benchmarks.Prolangs-C/169.TimberWolfMC.scrapnet.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dimbox = type { %struct.netbox*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, double, double, i8* }
%struct.netbox = type { %struct.netbox*, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@numcells = external global i32, align 4
@numnets = external global i32, align 4
@netarray = external global %struct.dimbox**, align 8

; Function Attrs: nounwind uwtable
define void @scrapnet() #0 {
entry:
  %dimptr = alloca %struct.dimbox*, align 8
  %netptr = alloca %struct.netbox*, align 8
  %vector = alloca i32*, align 8
  %criticalMass = alloca i32, align 4
  %count = alloca i32, align 4
  %temp = alloca i32, align 4
  %net = alloca i32, align 4
  %cell = alloca i32, align 4
  %0 = load i32, i32* @numcells, align 4
  %add = add nsw i32 1, %0
  %conv = sext i32 %add to i64
  %mul = mul i64 %conv, 4
  %call = call noalias i8* @malloc(i64 %mul) #2
  %1 = bitcast i8* %call to i32*
  store i32* %1, i32** %vector, align 8
  %2 = load i32, i32* @numcells, align 4
  %conv1 = sitofp i32 %2 to double
  %mul2 = fmul double 7.000000e-01, %conv1
  %conv3 = fptosi double %mul2 to i32
  store i32 %conv3, i32* %temp, align 4
  %3 = load i32, i32* %temp, align 4
  %cmp = icmp sgt i32 %3, 8
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %4 = load i32, i32* %temp, align 4
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %4, %cond.true ], [ 8, %cond.false ]
  store i32 %cond, i32* %criticalMass, align 4
  store i32 1, i32* %net, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.36, %cond.end
  %5 = load i32, i32* %net, align 4
  %6 = load i32, i32* @numnets, align 4
  %cmp5 = icmp sle i32 %5, %6
  br i1 %cmp5, label %for.body, label %for.end.38

for.body:                                         ; preds = %for.cond
  store i32 1, i32* %cell, align 4
  br label %for.cond.7

for.cond.7:                                       ; preds = %for.inc, %for.body
  %7 = load i32, i32* %cell, align 4
  %8 = load i32, i32* @numcells, align 4
  %cmp8 = icmp sle i32 %7, %8
  br i1 %cmp8, label %for.body.10, label %for.end

for.body.10:                                      ; preds = %for.cond.7
  %9 = load i32, i32* %cell, align 4
  %idxprom = sext i32 %9 to i64
  %10 = load i32*, i32** %vector, align 8
  %arrayidx = getelementptr inbounds i32, i32* %10, i64 %idxprom
  store i32 0, i32* %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body.10
  %11 = load i32, i32* %cell, align 4
  %inc = add nsw i32 %11, 1
  store i32 %inc, i32* %cell, align 4
  br label %for.cond.7

for.end:                                          ; preds = %for.cond.7
  store i32 0, i32* %count, align 4
  %12 = load i32, i32* %net, align 4
  %idxprom11 = sext i32 %12 to i64
  %13 = load %struct.dimbox**, %struct.dimbox*** @netarray, align 8
  %arrayidx12 = getelementptr inbounds %struct.dimbox*, %struct.dimbox** %13, i64 %idxprom11
  %14 = load %struct.dimbox*, %struct.dimbox** %arrayidx12, align 8
  store %struct.dimbox* %14, %struct.dimbox** %dimptr, align 8
  %15 = load %struct.dimbox*, %struct.dimbox** %dimptr, align 8
  %netptr13 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %15, i32 0, i32 0
  %16 = load %struct.netbox*, %struct.netbox** %netptr13, align 8
  store %struct.netbox* %16, %struct.netbox** %netptr, align 8
  br label %for.cond.14

for.cond.14:                                      ; preds = %for.inc.30, %for.end
  %17 = load %struct.netbox*, %struct.netbox** %netptr, align 8
  %cmp15 = icmp ne %struct.netbox* %17, null
  br i1 %cmp15, label %for.body.17, label %for.end.31

for.body.17:                                      ; preds = %for.cond.14
  %18 = load %struct.netbox*, %struct.netbox** %netptr, align 8
  %cell18 = getelementptr inbounds %struct.netbox, %struct.netbox* %18, i32 0, i32 7
  %19 = load i32, i32* %cell18, align 4
  store i32 %19, i32* %cell, align 4
  %20 = load i32, i32* %cell, align 4
  %21 = load i32, i32* @numcells, align 4
  %cmp19 = icmp sle i32 %20, %21
  br i1 %cmp19, label %if.then, label %if.end.29

if.then:                                          ; preds = %for.body.17
  %22 = load i32, i32* %cell, align 4
  %idxprom21 = sext i32 %22 to i64
  %23 = load i32*, i32** %vector, align 8
  %arrayidx22 = getelementptr inbounds i32, i32* %23, i64 %idxprom21
  %24 = load i32, i32* %arrayidx22, align 4
  %cmp23 = icmp eq i32 %24, 0
  br i1 %cmp23, label %if.then.25, label %if.end

if.then.25:                                       ; preds = %if.then
  %25 = load i32, i32* %cell, align 4
  %idxprom26 = sext i32 %25 to i64
  %26 = load i32*, i32** %vector, align 8
  %arrayidx27 = getelementptr inbounds i32, i32* %26, i64 %idxprom26
  store i32 1, i32* %arrayidx27, align 4
  %27 = load i32, i32* %count, align 4
  %inc28 = add nsw i32 %27, 1
  store i32 %inc28, i32* %count, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.25, %if.then
  br label %if.end.29

if.end.29:                                        ; preds = %if.end, %for.body.17
  br label %for.inc.30

for.inc.30:                                       ; preds = %if.end.29
  %28 = load %struct.netbox*, %struct.netbox** %netptr, align 8
  %nextterm = getelementptr inbounds %struct.netbox, %struct.netbox* %28, i32 0, i32 0
  %29 = load %struct.netbox*, %struct.netbox** %nextterm, align 8
  store %struct.netbox* %29, %struct.netbox** %netptr, align 8
  br label %for.cond.14

for.end.31:                                       ; preds = %for.cond.14
  %30 = load i32, i32* %count, align 4
  %31 = load i32, i32* %criticalMass, align 4
  %cmp32 = icmp sge i32 %30, %31
  br i1 %cmp32, label %if.then.34, label %if.end.35

if.then.34:                                       ; preds = %for.end.31
  %32 = load %struct.dimbox*, %struct.dimbox** %dimptr, align 8
  %skip = getelementptr inbounds %struct.dimbox, %struct.dimbox* %32, i32 0, i32 1
  store i32 1, i32* %skip, align 4
  br label %if.end.35

if.end.35:                                        ; preds = %if.then.34, %for.end.31
  br label %for.inc.36

for.inc.36:                                       ; preds = %if.end.35
  %33 = load i32, i32* %net, align 4
  %inc37 = add nsw i32 %33, 1
  store i32 %inc37, i32* %net, align 4
  br label %for.cond

for.end.38:                                       ; preds = %for.cond
  %34 = load i32*, i32** %vector, align 8
  %35 = bitcast i32* %34 to i8*
  call void @free(i8* %35) #2
  ret void
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #1

; Function Attrs: nounwind
declare void @free(i8*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
