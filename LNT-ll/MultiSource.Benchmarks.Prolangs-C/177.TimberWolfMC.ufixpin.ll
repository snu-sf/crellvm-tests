; ModuleID = './MultiSource.Benchmarks.Prolangs-C/177.TimberWolfMC.ufixpin.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.termnets = type { i32, %struct.netbox* }
%struct.netbox = type { %struct.netbox*, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dimbox = type { %struct.netbox*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, double, double, i8* }
%struct.termbox = type { %struct.termbox*, i32, i32, i32, i32, i32 }

@termarray = external global %struct.termnets**, align 8
@netarray = external global %struct.dimbox**, align 8

; Function Attrs: nounwind uwtable
define void @ufixpin(%struct.termbox* %termsptr, i32 %flag, i32 %targetx, i32 %targety) #0 {
entry:
  %termsptr.addr = alloca %struct.termbox*, align 8
  %flag.addr = alloca i32, align 4
  %targetx.addr = alloca i32, align 4
  %targety.addr = alloca i32, align 4
  %dimptr = alloca %struct.dimbox*, align 8
  %tmptr = alloca %struct.termnets*, align 8
  %termptr = alloca %struct.termbox*, align 8
  store %struct.termbox* %termsptr, %struct.termbox** %termsptr.addr, align 8
  store i32 %flag, i32* %flag.addr, align 4
  store i32 %targetx, i32* %targetx.addr, align 4
  store i32 %targety, i32* %targety.addr, align 4
  %0 = load i32, i32* %flag.addr, align 4
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load %struct.termbox*, %struct.termbox** %termsptr.addr, align 8
  store %struct.termbox* %1, %struct.termbox** %termptr, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %2 = load %struct.termbox*, %struct.termbox** %termptr, align 8
  %cmp1 = icmp ne %struct.termbox* %2, null
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load %struct.termbox*, %struct.termbox** %termptr, align 8
  %terminal = getelementptr inbounds %struct.termbox, %struct.termbox* %3, i32 0, i32 5
  %4 = load i32, i32* %terminal, align 4
  %idxprom = sext i32 %4 to i64
  %5 = load %struct.termnets**, %struct.termnets*** @termarray, align 8
  %arrayidx = getelementptr inbounds %struct.termnets*, %struct.termnets** %5, i64 %idxprom
  %6 = load %struct.termnets*, %struct.termnets** %arrayidx, align 8
  store %struct.termnets* %6, %struct.termnets** %tmptr, align 8
  %7 = load %struct.termnets*, %struct.termnets** %tmptr, align 8
  %net = getelementptr inbounds %struct.termnets, %struct.termnets* %7, i32 0, i32 0
  %8 = load i32, i32* %net, align 4
  %idxprom2 = sext i32 %8 to i64
  %9 = load %struct.dimbox**, %struct.dimbox*** @netarray, align 8
  %arrayidx3 = getelementptr inbounds %struct.dimbox*, %struct.dimbox** %9, i64 %idxprom2
  %10 = load %struct.dimbox*, %struct.dimbox** %arrayidx3, align 8
  %flag4 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %10, i32 0, i32 7
  store i32 1, i32* %flag4, align 4
  %11 = load %struct.termnets*, %struct.termnets** %tmptr, align 8
  %termptr5 = getelementptr inbounds %struct.termnets, %struct.termnets* %11, i32 0, i32 1
  %12 = load %struct.netbox*, %struct.netbox** %termptr5, align 8
  %flag6 = getelementptr inbounds %struct.netbox, %struct.netbox* %12, i32 0, i32 6
  store i32 1, i32* %flag6, align 4
  %13 = load i32, i32* %targetx.addr, align 4
  %14 = load %struct.termbox*, %struct.termbox** %termptr, align 8
  %xpos = getelementptr inbounds %struct.termbox, %struct.termbox* %14, i32 0, i32 1
  %15 = load i32, i32* %xpos, align 4
  %add = add nsw i32 %13, %15
  %16 = load %struct.termnets*, %struct.termnets** %tmptr, align 8
  %termptr7 = getelementptr inbounds %struct.termnets, %struct.termnets* %16, i32 0, i32 1
  %17 = load %struct.netbox*, %struct.netbox** %termptr7, align 8
  %newx = getelementptr inbounds %struct.netbox, %struct.netbox* %17, i32 0, i32 3
  store i32 %add, i32* %newx, align 4
  %18 = load i32, i32* %targety.addr, align 4
  %19 = load %struct.termbox*, %struct.termbox** %termptr, align 8
  %ypos = getelementptr inbounds %struct.termbox, %struct.termbox* %19, i32 0, i32 2
  %20 = load i32, i32* %ypos, align 4
  %add8 = add nsw i32 %18, %20
  %21 = load %struct.termnets*, %struct.termnets** %tmptr, align 8
  %termptr9 = getelementptr inbounds %struct.termnets, %struct.termnets* %21, i32 0, i32 1
  %22 = load %struct.netbox*, %struct.netbox** %termptr9, align 8
  %newy = getelementptr inbounds %struct.netbox, %struct.netbox* %22, i32 0, i32 4
  store i32 %add8, i32* %newy, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %23 = load %struct.termbox*, %struct.termbox** %termptr, align 8
  %nextterm = getelementptr inbounds %struct.termbox, %struct.termbox* %23, i32 0, i32 0
  %24 = load %struct.termbox*, %struct.termbox** %nextterm, align 8
  store %struct.termbox* %24, %struct.termbox** %termptr, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end

if.else:                                          ; preds = %entry
  %25 = load %struct.termbox*, %struct.termbox** %termsptr.addr, align 8
  store %struct.termbox* %25, %struct.termbox** %termptr, align 8
  br label %for.cond.10

for.cond.10:                                      ; preds = %for.inc.27, %if.else
  %26 = load %struct.termbox*, %struct.termbox** %termptr, align 8
  %cmp11 = icmp ne %struct.termbox* %26, null
  br i1 %cmp11, label %for.body.12, label %for.end.29

for.body.12:                                      ; preds = %for.cond.10
  %27 = load %struct.termbox*, %struct.termbox** %termptr, align 8
  %terminal13 = getelementptr inbounds %struct.termbox, %struct.termbox* %27, i32 0, i32 5
  %28 = load i32, i32* %terminal13, align 4
  %idxprom14 = sext i32 %28 to i64
  %29 = load %struct.termnets**, %struct.termnets*** @termarray, align 8
  %arrayidx15 = getelementptr inbounds %struct.termnets*, %struct.termnets** %29, i64 %idxprom14
  %30 = load %struct.termnets*, %struct.termnets** %arrayidx15, align 8
  store %struct.termnets* %30, %struct.termnets** %tmptr, align 8
  %31 = load %struct.termnets*, %struct.termnets** %tmptr, align 8
  %net16 = getelementptr inbounds %struct.termnets, %struct.termnets* %31, i32 0, i32 0
  %32 = load i32, i32* %net16, align 4
  %idxprom17 = sext i32 %32 to i64
  %33 = load %struct.dimbox**, %struct.dimbox*** @netarray, align 8
  %arrayidx18 = getelementptr inbounds %struct.dimbox*, %struct.dimbox** %33, i64 %idxprom17
  %34 = load %struct.dimbox*, %struct.dimbox** %arrayidx18, align 8
  store %struct.dimbox* %34, %struct.dimbox** %dimptr, align 8
  %35 = load %struct.dimbox*, %struct.dimbox** %dimptr, align 8
  %newxmin = getelementptr inbounds %struct.dimbox, %struct.dimbox* %35, i32 0, i32 3
  %36 = load i32, i32* %newxmin, align 4
  %37 = load %struct.dimbox*, %struct.dimbox** %dimptr, align 8
  %xmin = getelementptr inbounds %struct.dimbox, %struct.dimbox* %37, i32 0, i32 2
  store i32 %36, i32* %xmin, align 4
  %38 = load %struct.dimbox*, %struct.dimbox** %dimptr, align 8
  %newxmax = getelementptr inbounds %struct.dimbox, %struct.dimbox* %38, i32 0, i32 5
  %39 = load i32, i32* %newxmax, align 4
  %40 = load %struct.dimbox*, %struct.dimbox** %dimptr, align 8
  %xmax = getelementptr inbounds %struct.dimbox, %struct.dimbox* %40, i32 0, i32 4
  store i32 %39, i32* %xmax, align 4
  %41 = load %struct.dimbox*, %struct.dimbox** %dimptr, align 8
  %newymin = getelementptr inbounds %struct.dimbox, %struct.dimbox* %41, i32 0, i32 8
  %42 = load i32, i32* %newymin, align 4
  %43 = load %struct.dimbox*, %struct.dimbox** %dimptr, align 8
  %ymin = getelementptr inbounds %struct.dimbox, %struct.dimbox* %43, i32 0, i32 6
  store i32 %42, i32* %ymin, align 4
  %44 = load %struct.dimbox*, %struct.dimbox** %dimptr, align 8
  %newymax = getelementptr inbounds %struct.dimbox, %struct.dimbox* %44, i32 0, i32 10
  %45 = load i32, i32* %newymax, align 4
  %46 = load %struct.dimbox*, %struct.dimbox** %dimptr, align 8
  %ymax = getelementptr inbounds %struct.dimbox, %struct.dimbox* %46, i32 0, i32 9
  store i32 %45, i32* %ymax, align 4
  %47 = load %struct.termnets*, %struct.termnets** %tmptr, align 8
  %termptr19 = getelementptr inbounds %struct.termnets, %struct.termnets* %47, i32 0, i32 1
  %48 = load %struct.netbox*, %struct.netbox** %termptr19, align 8
  %newx20 = getelementptr inbounds %struct.netbox, %struct.netbox* %48, i32 0, i32 3
  %49 = load i32, i32* %newx20, align 4
  %50 = load %struct.termnets*, %struct.termnets** %tmptr, align 8
  %termptr21 = getelementptr inbounds %struct.termnets, %struct.termnets* %50, i32 0, i32 1
  %51 = load %struct.netbox*, %struct.netbox** %termptr21, align 8
  %xpos22 = getelementptr inbounds %struct.netbox, %struct.netbox* %51, i32 0, i32 1
  store i32 %49, i32* %xpos22, align 4
  %52 = load %struct.termnets*, %struct.termnets** %tmptr, align 8
  %termptr23 = getelementptr inbounds %struct.termnets, %struct.termnets* %52, i32 0, i32 1
  %53 = load %struct.netbox*, %struct.netbox** %termptr23, align 8
  %newy24 = getelementptr inbounds %struct.netbox, %struct.netbox* %53, i32 0, i32 4
  %54 = load i32, i32* %newy24, align 4
  %55 = load %struct.termnets*, %struct.termnets** %tmptr, align 8
  %termptr25 = getelementptr inbounds %struct.termnets, %struct.termnets* %55, i32 0, i32 1
  %56 = load %struct.netbox*, %struct.netbox** %termptr25, align 8
  %ypos26 = getelementptr inbounds %struct.netbox, %struct.netbox* %56, i32 0, i32 2
  store i32 %54, i32* %ypos26, align 4
  br label %for.inc.27

for.inc.27:                                       ; preds = %for.body.12
  %57 = load %struct.termbox*, %struct.termbox** %termptr, align 8
  %nextterm28 = getelementptr inbounds %struct.termbox, %struct.termbox* %57, i32 0, i32 0
  %58 = load %struct.termbox*, %struct.termbox** %nextterm28, align 8
  store %struct.termbox* %58, %struct.termbox** %termptr, align 8
  br label %for.cond.10

for.end.29:                                       ; preds = %for.cond.10
  br label %if.end

if.end:                                           ; preds = %for.end.29, %for.end
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
