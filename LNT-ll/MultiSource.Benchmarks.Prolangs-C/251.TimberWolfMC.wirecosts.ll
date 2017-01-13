; ModuleID = './MultiSource.Benchmarks.Prolangs-C/251.TimberWolfMC.wirecosts.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dimbox = type { %struct.netbox*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, double, double, i8* }
%struct.netbox = type { %struct.netbox*, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@numnets = external global i32, align 4
@netarray = external global %struct.dimbox**, align 8

; Function Attrs: nounwind uwtable
define void @wirecosts(i32* %withPads, i32* %withOutPads) #0 {
entry:
  %withPads.addr = alloca i32*, align 8
  %withOutPads.addr = alloca i32*, align 8
  %dimptr = alloca %struct.dimbox*, align 8
  %netptr = alloca %struct.netbox*, align 8
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %xmin = alloca i32, align 4
  %xmax = alloca i32, align 4
  %ymin = alloca i32, align 4
  %ymax = alloca i32, align 4
  %net = alloca i32, align 4
  store i32* %withPads, i32** %withPads.addr, align 8
  store i32* %withOutPads, i32** %withOutPads.addr, align 8
  %0 = load i32*, i32** %withPads.addr, align 8
  store i32 0, i32* %0, align 4
  %1 = load i32*, i32** %withOutPads.addr, align 8
  store i32 0, i32* %1, align 4
  store i32 1, i32* %net, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.70, %entry
  %2 = load i32, i32* %net, align 4
  %3 = load i32, i32* @numnets, align 4
  %cmp = icmp sle i32 %2, %3
  br i1 %cmp, label %for.body, label %for.end.71

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %net, align 4
  %idxprom = sext i32 %4 to i64
  %5 = load %struct.dimbox**, %struct.dimbox*** @netarray, align 8
  %arrayidx = getelementptr inbounds %struct.dimbox*, %struct.dimbox** %5, i64 %idxprom
  %6 = load %struct.dimbox*, %struct.dimbox** %arrayidx, align 8
  store %struct.dimbox* %6, %struct.dimbox** %dimptr, align 8
  %7 = load %struct.dimbox*, %struct.dimbox** %dimptr, align 8
  %netptr1 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %7, i32 0, i32 0
  %8 = load %struct.netbox*, %struct.netbox** %netptr1, align 8
  store %struct.netbox* %8, %struct.netbox** %netptr, align 8
  store i32 0, i32* %xmin, align 4
  store i32 0, i32* %xmax, align 4
  store i32 0, i32* %ymin, align 4
  store i32 0, i32* %ymax, align 4
  br label %for.cond.2

for.cond.2:                                       ; preds = %for.inc, %for.body
  %9 = load %struct.netbox*, %struct.netbox** %netptr, align 8
  %cmp3 = icmp eq %struct.netbox* %9, null
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %for.cond.2
  br label %for.end

if.end:                                           ; preds = %for.cond.2
  %10 = load %struct.netbox*, %struct.netbox** %netptr, align 8
  %skip = getelementptr inbounds %struct.netbox, %struct.netbox* %10, i32 0, i32 9
  %11 = load i32, i32* %skip, align 4
  %cmp4 = icmp eq i32 %11, 1
  br i1 %cmp4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end
  br label %for.inc

if.end.6:                                         ; preds = %if.end
  %12 = load %struct.netbox*, %struct.netbox** %netptr, align 8
  %xpos = getelementptr inbounds %struct.netbox, %struct.netbox* %12, i32 0, i32 1
  %13 = load i32, i32* %xpos, align 4
  store i32 %13, i32* %xmax, align 4
  store i32 %13, i32* %xmin, align 4
  %14 = load %struct.netbox*, %struct.netbox** %netptr, align 8
  %ypos = getelementptr inbounds %struct.netbox, %struct.netbox* %14, i32 0, i32 2
  %15 = load i32, i32* %ypos, align 4
  store i32 %15, i32* %ymax, align 4
  store i32 %15, i32* %ymin, align 4
  %16 = load %struct.netbox*, %struct.netbox** %netptr, align 8
  %nextterm = getelementptr inbounds %struct.netbox, %struct.netbox* %16, i32 0, i32 0
  %17 = load %struct.netbox*, %struct.netbox** %nextterm, align 8
  store %struct.netbox* %17, %struct.netbox** %netptr, align 8
  br label %for.end

for.inc:                                          ; preds = %if.then.5
  %18 = load %struct.netbox*, %struct.netbox** %netptr, align 8
  %nextterm7 = getelementptr inbounds %struct.netbox, %struct.netbox* %18, i32 0, i32 0
  %19 = load %struct.netbox*, %struct.netbox** %nextterm7, align 8
  store %struct.netbox* %19, %struct.netbox** %netptr, align 8
  br label %for.cond.2

for.end:                                          ; preds = %if.end.6, %if.then
  br label %for.cond.8

for.cond.8:                                       ; preds = %for.inc.30, %for.end
  %20 = load %struct.netbox*, %struct.netbox** %netptr, align 8
  %cmp9 = icmp ne %struct.netbox* %20, null
  br i1 %cmp9, label %for.body.10, label %for.end.32

for.body.10:                                      ; preds = %for.cond.8
  %21 = load %struct.netbox*, %struct.netbox** %netptr, align 8
  %skip11 = getelementptr inbounds %struct.netbox, %struct.netbox* %21, i32 0, i32 9
  %22 = load i32, i32* %skip11, align 4
  %cmp12 = icmp eq i32 %22, 1
  br i1 %cmp12, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %for.body.10
  br label %for.inc.30

if.end.14:                                        ; preds = %for.body.10
  %23 = load %struct.netbox*, %struct.netbox** %netptr, align 8
  %xpos15 = getelementptr inbounds %struct.netbox, %struct.netbox* %23, i32 0, i32 1
  %24 = load i32, i32* %xpos15, align 4
  store i32 %24, i32* %x, align 4
  %25 = load %struct.netbox*, %struct.netbox** %netptr, align 8
  %ypos16 = getelementptr inbounds %struct.netbox, %struct.netbox* %25, i32 0, i32 2
  %26 = load i32, i32* %ypos16, align 4
  store i32 %26, i32* %y, align 4
  %27 = load i32, i32* %x, align 4
  %28 = load i32, i32* %xmin, align 4
  %cmp17 = icmp slt i32 %27, %28
  br i1 %cmp17, label %if.then.18, label %if.else

if.then.18:                                       ; preds = %if.end.14
  %29 = load i32, i32* %x, align 4
  store i32 %29, i32* %xmin, align 4
  br label %if.end.22

if.else:                                          ; preds = %if.end.14
  %30 = load i32, i32* %x, align 4
  %31 = load i32, i32* %xmax, align 4
  %cmp19 = icmp sgt i32 %30, %31
  br i1 %cmp19, label %if.then.20, label %if.end.21

if.then.20:                                       ; preds = %if.else
  %32 = load i32, i32* %x, align 4
  store i32 %32, i32* %xmax, align 4
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.20, %if.else
  br label %if.end.22

if.end.22:                                        ; preds = %if.end.21, %if.then.18
  %33 = load i32, i32* %y, align 4
  %34 = load i32, i32* %ymin, align 4
  %cmp23 = icmp slt i32 %33, %34
  br i1 %cmp23, label %if.then.24, label %if.else.25

if.then.24:                                       ; preds = %if.end.22
  %35 = load i32, i32* %y, align 4
  store i32 %35, i32* %ymin, align 4
  br label %if.end.29

if.else.25:                                       ; preds = %if.end.22
  %36 = load i32, i32* %y, align 4
  %37 = load i32, i32* %ymax, align 4
  %cmp26 = icmp sgt i32 %36, %37
  br i1 %cmp26, label %if.then.27, label %if.end.28

if.then.27:                                       ; preds = %if.else.25
  %38 = load i32, i32* %y, align 4
  store i32 %38, i32* %ymax, align 4
  br label %if.end.28

if.end.28:                                        ; preds = %if.then.27, %if.else.25
  br label %if.end.29

if.end.29:                                        ; preds = %if.end.28, %if.then.24
  br label %for.inc.30

for.inc.30:                                       ; preds = %if.end.29, %if.then.13
  %39 = load %struct.netbox*, %struct.netbox** %netptr, align 8
  %nextterm31 = getelementptr inbounds %struct.netbox, %struct.netbox* %39, i32 0, i32 0
  %40 = load %struct.netbox*, %struct.netbox** %nextterm31, align 8
  store %struct.netbox* %40, %struct.netbox** %netptr, align 8
  br label %for.cond.8

for.end.32:                                       ; preds = %for.cond.8
  %41 = load i32, i32* %xmax, align 4
  %42 = load i32, i32* %xmin, align 4
  %sub = sub nsw i32 %41, %42
  %43 = load i32, i32* %ymax, align 4
  %44 = load i32, i32* %ymin, align 4
  %sub33 = sub nsw i32 %43, %44
  %add = add nsw i32 %sub, %sub33
  %45 = load i32*, i32** %withOutPads.addr, align 8
  %46 = load i32, i32* %45, align 4
  %add34 = add nsw i32 %46, %add
  store i32 %add34, i32* %45, align 4
  %47 = load i32, i32* %net, align 4
  %idxprom35 = sext i32 %47 to i64
  %48 = load %struct.dimbox**, %struct.dimbox*** @netarray, align 8
  %arrayidx36 = getelementptr inbounds %struct.dimbox*, %struct.dimbox** %48, i64 %idxprom35
  %49 = load %struct.dimbox*, %struct.dimbox** %arrayidx36, align 8
  store %struct.dimbox* %49, %struct.dimbox** %dimptr, align 8
  %50 = load %struct.dimbox*, %struct.dimbox** %dimptr, align 8
  %netptr37 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %50, i32 0, i32 0
  %51 = load %struct.netbox*, %struct.netbox** %netptr37, align 8
  store %struct.netbox* %51, %struct.netbox** %netptr, align 8
  store i32 0, i32* %xmin, align 4
  store i32 0, i32* %xmax, align 4
  store i32 0, i32* %ymin, align 4
  store i32 0, i32* %ymax, align 4
  %52 = load %struct.netbox*, %struct.netbox** %netptr, align 8
  %cmp38 = icmp ne %struct.netbox* %52, null
  br i1 %cmp38, label %if.then.39, label %if.end.43

if.then.39:                                       ; preds = %for.end.32
  %53 = load %struct.netbox*, %struct.netbox** %netptr, align 8
  %xpos40 = getelementptr inbounds %struct.netbox, %struct.netbox* %53, i32 0, i32 1
  %54 = load i32, i32* %xpos40, align 4
  store i32 %54, i32* %xmax, align 4
  store i32 %54, i32* %xmin, align 4
  %55 = load %struct.netbox*, %struct.netbox** %netptr, align 8
  %ypos41 = getelementptr inbounds %struct.netbox, %struct.netbox* %55, i32 0, i32 2
  %56 = load i32, i32* %ypos41, align 4
  store i32 %56, i32* %ymax, align 4
  store i32 %56, i32* %ymin, align 4
  %57 = load %struct.netbox*, %struct.netbox** %netptr, align 8
  %nextterm42 = getelementptr inbounds %struct.netbox, %struct.netbox* %57, i32 0, i32 0
  %58 = load %struct.netbox*, %struct.netbox** %nextterm42, align 8
  store %struct.netbox* %58, %struct.netbox** %netptr, align 8
  br label %if.end.43

if.end.43:                                        ; preds = %if.then.39, %for.end.32
  br label %for.cond.44

for.cond.44:                                      ; preds = %for.inc.63, %if.end.43
  %59 = load %struct.netbox*, %struct.netbox** %netptr, align 8
  %cmp45 = icmp ne %struct.netbox* %59, null
  br i1 %cmp45, label %for.body.46, label %for.end.65

for.body.46:                                      ; preds = %for.cond.44
  %60 = load %struct.netbox*, %struct.netbox** %netptr, align 8
  %xpos47 = getelementptr inbounds %struct.netbox, %struct.netbox* %60, i32 0, i32 1
  %61 = load i32, i32* %xpos47, align 4
  store i32 %61, i32* %x, align 4
  %62 = load %struct.netbox*, %struct.netbox** %netptr, align 8
  %ypos48 = getelementptr inbounds %struct.netbox, %struct.netbox* %62, i32 0, i32 2
  %63 = load i32, i32* %ypos48, align 4
  store i32 %63, i32* %y, align 4
  %64 = load i32, i32* %x, align 4
  %65 = load i32, i32* %xmin, align 4
  %cmp49 = icmp slt i32 %64, %65
  br i1 %cmp49, label %if.then.50, label %if.else.51

if.then.50:                                       ; preds = %for.body.46
  %66 = load i32, i32* %x, align 4
  store i32 %66, i32* %xmin, align 4
  br label %if.end.55

if.else.51:                                       ; preds = %for.body.46
  %67 = load i32, i32* %x, align 4
  %68 = load i32, i32* %xmax, align 4
  %cmp52 = icmp sgt i32 %67, %68
  br i1 %cmp52, label %if.then.53, label %if.end.54

if.then.53:                                       ; preds = %if.else.51
  %69 = load i32, i32* %x, align 4
  store i32 %69, i32* %xmax, align 4
  br label %if.end.54

if.end.54:                                        ; preds = %if.then.53, %if.else.51
  br label %if.end.55

if.end.55:                                        ; preds = %if.end.54, %if.then.50
  %70 = load i32, i32* %y, align 4
  %71 = load i32, i32* %ymin, align 4
  %cmp56 = icmp slt i32 %70, %71
  br i1 %cmp56, label %if.then.57, label %if.else.58

if.then.57:                                       ; preds = %if.end.55
  %72 = load i32, i32* %y, align 4
  store i32 %72, i32* %ymin, align 4
  br label %if.end.62

if.else.58:                                       ; preds = %if.end.55
  %73 = load i32, i32* %y, align 4
  %74 = load i32, i32* %ymax, align 4
  %cmp59 = icmp sgt i32 %73, %74
  br i1 %cmp59, label %if.then.60, label %if.end.61

if.then.60:                                       ; preds = %if.else.58
  %75 = load i32, i32* %y, align 4
  store i32 %75, i32* %ymax, align 4
  br label %if.end.61

if.end.61:                                        ; preds = %if.then.60, %if.else.58
  br label %if.end.62

if.end.62:                                        ; preds = %if.end.61, %if.then.57
  br label %for.inc.63

for.inc.63:                                       ; preds = %if.end.62
  %76 = load %struct.netbox*, %struct.netbox** %netptr, align 8
  %nextterm64 = getelementptr inbounds %struct.netbox, %struct.netbox* %76, i32 0, i32 0
  %77 = load %struct.netbox*, %struct.netbox** %nextterm64, align 8
  store %struct.netbox* %77, %struct.netbox** %netptr, align 8
  br label %for.cond.44

for.end.65:                                       ; preds = %for.cond.44
  %78 = load i32, i32* %xmax, align 4
  %79 = load i32, i32* %xmin, align 4
  %sub66 = sub nsw i32 %78, %79
  %80 = load i32, i32* %ymax, align 4
  %81 = load i32, i32* %ymin, align 4
  %sub67 = sub nsw i32 %80, %81
  %add68 = add nsw i32 %sub66, %sub67
  %82 = load i32*, i32** %withPads.addr, align 8
  %83 = load i32, i32* %82, align 4
  %add69 = add nsw i32 %83, %add68
  store i32 %add69, i32* %82, align 4
  br label %for.inc.70

for.inc.70:                                       ; preds = %for.end.65
  %84 = load i32, i32* %net, align 4
  %inc = add nsw i32 %84, 1
  store i32 %inc, i32* %net, align 4
  br label %for.cond

for.end.71:                                       ; preds = %for.cond
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
