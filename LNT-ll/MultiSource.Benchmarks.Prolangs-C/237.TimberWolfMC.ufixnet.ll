; ModuleID = './MultiSource.Benchmarks.Prolangs-C/237.TimberWolfMC.ufixnet.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.termnets = type { i32, %struct.netbox* }
%struct.netbox = type { %struct.netbox*, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dimbox = type { %struct.netbox*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, double, double, i8* }
%struct.termbox = type { %struct.termbox*, i32, i32, i32, i32, i32 }

@termarray = external global %struct.termnets**, align 8
@netarray = external global %struct.dimbox**, align 8

; Function Attrs: nounwind uwtable
define i32 @ufixnet(%struct.termbox* %termsptr) #0 {
entry:
  %termsptr.addr = alloca %struct.termbox*, align 8
  %dimptr = alloca %struct.dimbox*, align 8
  %netptr = alloca %struct.netbox*, align 8
  %tmptr = alloca %struct.termnets*, align 8
  %termptr = alloca %struct.termbox*, align 8
  %cost = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  store %struct.termbox* %termsptr, %struct.termbox** %termsptr.addr, align 8
  store i32 0, i32* %cost, align 4
  %0 = load %struct.termbox*, %struct.termbox** %termsptr.addr, align 8
  store %struct.termbox* %0, %struct.termbox** %termptr, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.89, %entry
  %1 = load %struct.termbox*, %struct.termbox** %termptr, align 8
  %cmp = icmp ne %struct.termbox* %1, null
  br i1 %cmp, label %for.body, label %for.end.91

for.body:                                         ; preds = %for.cond
  %2 = load %struct.termbox*, %struct.termbox** %termptr, align 8
  %terminal = getelementptr inbounds %struct.termbox, %struct.termbox* %2, i32 0, i32 5
  %3 = load i32, i32* %terminal, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load %struct.termnets**, %struct.termnets*** @termarray, align 8
  %arrayidx = getelementptr inbounds %struct.termnets*, %struct.termnets** %4, i64 %idxprom
  %5 = load %struct.termnets*, %struct.termnets** %arrayidx, align 8
  store %struct.termnets* %5, %struct.termnets** %tmptr, align 8
  %6 = load %struct.termnets*, %struct.termnets** %tmptr, align 8
  %net = getelementptr inbounds %struct.termnets, %struct.termnets* %6, i32 0, i32 0
  %7 = load i32, i32* %net, align 4
  %idxprom1 = sext i32 %7 to i64
  %8 = load %struct.dimbox**, %struct.dimbox*** @netarray, align 8
  %arrayidx2 = getelementptr inbounds %struct.dimbox*, %struct.dimbox** %8, i64 %idxprom1
  %9 = load %struct.dimbox*, %struct.dimbox** %arrayidx2, align 8
  store %struct.dimbox* %9, %struct.dimbox** %dimptr, align 8
  %10 = load %struct.dimbox*, %struct.dimbox** %dimptr, align 8
  %flag = getelementptr inbounds %struct.dimbox, %struct.dimbox* %10, i32 0, i32 7
  %11 = load i32, i32* %flag, align 4
  %cmp3 = icmp eq i32 %11, 0
  br i1 %cmp3, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %12 = load %struct.dimbox*, %struct.dimbox** %dimptr, align 8
  %skip = getelementptr inbounds %struct.dimbox, %struct.dimbox* %12, i32 0, i32 1
  %13 = load i32, i32* %skip, align 4
  %cmp4 = icmp eq i32 %13, 1
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %for.body
  br label %for.inc.89

if.end:                                           ; preds = %lor.lhs.false
  %14 = load %struct.dimbox*, %struct.dimbox** %dimptr, align 8
  %flag5 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %14, i32 0, i32 7
  store i32 0, i32* %flag5, align 4
  %15 = load %struct.dimbox*, %struct.dimbox** %dimptr, align 8
  %netptr6 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %15, i32 0, i32 0
  %16 = load %struct.netbox*, %struct.netbox** %netptr6, align 8
  store %struct.netbox* %16, %struct.netbox** %netptr, align 8
  br label %for.cond.7

for.cond.7:                                       ; preds = %for.inc, %if.end
  %17 = load %struct.netbox*, %struct.netbox** %netptr, align 8
  %cmp8 = icmp eq %struct.netbox* %17, null
  br i1 %cmp8, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %for.cond.7
  br label %for.end

if.end.10:                                        ; preds = %for.cond.7
  %18 = load %struct.netbox*, %struct.netbox** %netptr, align 8
  %skip11 = getelementptr inbounds %struct.netbox, %struct.netbox* %18, i32 0, i32 9
  %19 = load i32, i32* %skip11, align 4
  %cmp12 = icmp eq i32 %19, 1
  br i1 %cmp12, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %if.end.10
  br label %for.inc

if.end.14:                                        ; preds = %if.end.10
  %20 = load %struct.netbox*, %struct.netbox** %netptr, align 8
  %flag15 = getelementptr inbounds %struct.netbox, %struct.netbox* %20, i32 0, i32 6
  %21 = load i32, i32* %flag15, align 4
  %cmp16 = icmp eq i32 %21, 1
  br i1 %cmp16, label %if.then.17, label %if.else

if.then.17:                                       ; preds = %if.end.14
  %22 = load %struct.netbox*, %struct.netbox** %netptr, align 8
  %newx = getelementptr inbounds %struct.netbox, %struct.netbox* %22, i32 0, i32 3
  %23 = load i32, i32* %newx, align 4
  %24 = load %struct.dimbox*, %struct.dimbox** %dimptr, align 8
  %newxmax = getelementptr inbounds %struct.dimbox, %struct.dimbox* %24, i32 0, i32 5
  store i32 %23, i32* %newxmax, align 4
  %25 = load %struct.dimbox*, %struct.dimbox** %dimptr, align 8
  %newxmin = getelementptr inbounds %struct.dimbox, %struct.dimbox* %25, i32 0, i32 3
  store i32 %23, i32* %newxmin, align 4
  %26 = load %struct.netbox*, %struct.netbox** %netptr, align 8
  %newy = getelementptr inbounds %struct.netbox, %struct.netbox* %26, i32 0, i32 4
  %27 = load i32, i32* %newy, align 4
  %28 = load %struct.dimbox*, %struct.dimbox** %dimptr, align 8
  %newymax = getelementptr inbounds %struct.dimbox, %struct.dimbox* %28, i32 0, i32 10
  store i32 %27, i32* %newymax, align 4
  %29 = load %struct.dimbox*, %struct.dimbox** %dimptr, align 8
  %newymin = getelementptr inbounds %struct.dimbox, %struct.dimbox* %29, i32 0, i32 8
  store i32 %27, i32* %newymin, align 4
  %30 = load %struct.netbox*, %struct.netbox** %netptr, align 8
  %flag18 = getelementptr inbounds %struct.netbox, %struct.netbox* %30, i32 0, i32 6
  store i32 0, i32* %flag18, align 4
  br label %if.end.23

if.else:                                          ; preds = %if.end.14
  %31 = load %struct.netbox*, %struct.netbox** %netptr, align 8
  %xpos = getelementptr inbounds %struct.netbox, %struct.netbox* %31, i32 0, i32 1
  %32 = load i32, i32* %xpos, align 4
  %33 = load %struct.dimbox*, %struct.dimbox** %dimptr, align 8
  %newxmax19 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %33, i32 0, i32 5
  store i32 %32, i32* %newxmax19, align 4
  %34 = load %struct.dimbox*, %struct.dimbox** %dimptr, align 8
  %newxmin20 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %34, i32 0, i32 3
  store i32 %32, i32* %newxmin20, align 4
  %35 = load %struct.netbox*, %struct.netbox** %netptr, align 8
  %ypos = getelementptr inbounds %struct.netbox, %struct.netbox* %35, i32 0, i32 2
  %36 = load i32, i32* %ypos, align 4
  %37 = load %struct.dimbox*, %struct.dimbox** %dimptr, align 8
  %newymax21 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %37, i32 0, i32 10
  store i32 %36, i32* %newymax21, align 4
  %38 = load %struct.dimbox*, %struct.dimbox** %dimptr, align 8
  %newymin22 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %38, i32 0, i32 8
  store i32 %36, i32* %newymin22, align 4
  br label %if.end.23

if.end.23:                                        ; preds = %if.else, %if.then.17
  %39 = load %struct.netbox*, %struct.netbox** %netptr, align 8
  %nextterm = getelementptr inbounds %struct.netbox, %struct.netbox* %39, i32 0, i32 0
  %40 = load %struct.netbox*, %struct.netbox** %nextterm, align 8
  store %struct.netbox* %40, %struct.netbox** %netptr, align 8
  br label %for.end

for.inc:                                          ; preds = %if.then.13
  %41 = load %struct.netbox*, %struct.netbox** %netptr, align 8
  %nextterm24 = getelementptr inbounds %struct.netbox, %struct.netbox* %41, i32 0, i32 0
  %42 = load %struct.netbox*, %struct.netbox** %nextterm24, align 8
  store %struct.netbox* %42, %struct.netbox** %netptr, align 8
  br label %for.cond.7

for.end:                                          ; preds = %if.end.23, %if.then.9
  br label %for.cond.25

for.cond.25:                                      ; preds = %for.inc.64, %for.end
  %43 = load %struct.netbox*, %struct.netbox** %netptr, align 8
  %cmp26 = icmp ne %struct.netbox* %43, null
  br i1 %cmp26, label %for.body.27, label %for.end.66

for.body.27:                                      ; preds = %for.cond.25
  %44 = load %struct.netbox*, %struct.netbox** %netptr, align 8
  %skip28 = getelementptr inbounds %struct.netbox, %struct.netbox* %44, i32 0, i32 9
  %45 = load i32, i32* %skip28, align 4
  %cmp29 = icmp eq i32 %45, 1
  br i1 %cmp29, label %if.then.30, label %if.end.31

if.then.30:                                       ; preds = %for.body.27
  br label %for.inc.64

if.end.31:                                        ; preds = %for.body.27
  %46 = load %struct.netbox*, %struct.netbox** %netptr, align 8
  %flag32 = getelementptr inbounds %struct.netbox, %struct.netbox* %46, i32 0, i32 6
  %47 = load i32, i32* %flag32, align 4
  %cmp33 = icmp eq i32 %47, 1
  br i1 %cmp33, label %if.then.34, label %if.else.38

if.then.34:                                       ; preds = %if.end.31
  %48 = load %struct.netbox*, %struct.netbox** %netptr, align 8
  %newx35 = getelementptr inbounds %struct.netbox, %struct.netbox* %48, i32 0, i32 3
  %49 = load i32, i32* %newx35, align 4
  store i32 %49, i32* %x, align 4
  %50 = load %struct.netbox*, %struct.netbox** %netptr, align 8
  %newy36 = getelementptr inbounds %struct.netbox, %struct.netbox* %50, i32 0, i32 4
  %51 = load i32, i32* %newy36, align 4
  store i32 %51, i32* %y, align 4
  %52 = load %struct.netbox*, %struct.netbox** %netptr, align 8
  %flag37 = getelementptr inbounds %struct.netbox, %struct.netbox* %52, i32 0, i32 6
  store i32 0, i32* %flag37, align 4
  br label %if.end.41

if.else.38:                                       ; preds = %if.end.31
  %53 = load %struct.netbox*, %struct.netbox** %netptr, align 8
  %xpos39 = getelementptr inbounds %struct.netbox, %struct.netbox* %53, i32 0, i32 1
  %54 = load i32, i32* %xpos39, align 4
  store i32 %54, i32* %x, align 4
  %55 = load %struct.netbox*, %struct.netbox** %netptr, align 8
  %ypos40 = getelementptr inbounds %struct.netbox, %struct.netbox* %55, i32 0, i32 2
  %56 = load i32, i32* %ypos40, align 4
  store i32 %56, i32* %y, align 4
  br label %if.end.41

if.end.41:                                        ; preds = %if.else.38, %if.then.34
  %57 = load i32, i32* %x, align 4
  %58 = load %struct.dimbox*, %struct.dimbox** %dimptr, align 8
  %newxmin42 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %58, i32 0, i32 3
  %59 = load i32, i32* %newxmin42, align 4
  %cmp43 = icmp slt i32 %57, %59
  br i1 %cmp43, label %if.then.44, label %if.else.46

if.then.44:                                       ; preds = %if.end.41
  %60 = load i32, i32* %x, align 4
  %61 = load %struct.dimbox*, %struct.dimbox** %dimptr, align 8
  %newxmin45 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %61, i32 0, i32 3
  store i32 %60, i32* %newxmin45, align 4
  br label %if.end.52

if.else.46:                                       ; preds = %if.end.41
  %62 = load i32, i32* %x, align 4
  %63 = load %struct.dimbox*, %struct.dimbox** %dimptr, align 8
  %newxmax47 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %63, i32 0, i32 5
  %64 = load i32, i32* %newxmax47, align 4
  %cmp48 = icmp sgt i32 %62, %64
  br i1 %cmp48, label %if.then.49, label %if.end.51

if.then.49:                                       ; preds = %if.else.46
  %65 = load i32, i32* %x, align 4
  %66 = load %struct.dimbox*, %struct.dimbox** %dimptr, align 8
  %newxmax50 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %66, i32 0, i32 5
  store i32 %65, i32* %newxmax50, align 4
  br label %if.end.51

if.end.51:                                        ; preds = %if.then.49, %if.else.46
  br label %if.end.52

if.end.52:                                        ; preds = %if.end.51, %if.then.44
  %67 = load i32, i32* %y, align 4
  %68 = load %struct.dimbox*, %struct.dimbox** %dimptr, align 8
  %newymin53 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %68, i32 0, i32 8
  %69 = load i32, i32* %newymin53, align 4
  %cmp54 = icmp slt i32 %67, %69
  br i1 %cmp54, label %if.then.55, label %if.else.57

if.then.55:                                       ; preds = %if.end.52
  %70 = load i32, i32* %y, align 4
  %71 = load %struct.dimbox*, %struct.dimbox** %dimptr, align 8
  %newymin56 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %71, i32 0, i32 8
  store i32 %70, i32* %newymin56, align 4
  br label %if.end.63

if.else.57:                                       ; preds = %if.end.52
  %72 = load i32, i32* %y, align 4
  %73 = load %struct.dimbox*, %struct.dimbox** %dimptr, align 8
  %newymax58 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %73, i32 0, i32 10
  %74 = load i32, i32* %newymax58, align 4
  %cmp59 = icmp sgt i32 %72, %74
  br i1 %cmp59, label %if.then.60, label %if.end.62

if.then.60:                                       ; preds = %if.else.57
  %75 = load i32, i32* %y, align 4
  %76 = load %struct.dimbox*, %struct.dimbox** %dimptr, align 8
  %newymax61 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %76, i32 0, i32 10
  store i32 %75, i32* %newymax61, align 4
  br label %if.end.62

if.end.62:                                        ; preds = %if.then.60, %if.else.57
  br label %if.end.63

if.end.63:                                        ; preds = %if.end.62, %if.then.55
  br label %for.inc.64

for.inc.64:                                       ; preds = %if.end.63, %if.then.30
  %77 = load %struct.netbox*, %struct.netbox** %netptr, align 8
  %nextterm65 = getelementptr inbounds %struct.netbox, %struct.netbox* %77, i32 0, i32 0
  %78 = load %struct.netbox*, %struct.netbox** %nextterm65, align 8
  store %struct.netbox* %78, %struct.netbox** %netptr, align 8
  br label %for.cond.25

for.end.66:                                       ; preds = %for.cond.25
  %79 = load %struct.dimbox*, %struct.dimbox** %dimptr, align 8
  %Hweight = getelementptr inbounds %struct.dimbox, %struct.dimbox* %79, i32 0, i32 11
  %80 = load double, double* %Hweight, align 8
  %81 = load %struct.dimbox*, %struct.dimbox** %dimptr, align 8
  %newxmax67 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %81, i32 0, i32 5
  %82 = load i32, i32* %newxmax67, align 4
  %83 = load %struct.dimbox*, %struct.dimbox** %dimptr, align 8
  %newxmin68 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %83, i32 0, i32 3
  %84 = load i32, i32* %newxmin68, align 4
  %sub = sub nsw i32 %82, %84
  %conv = sitofp i32 %sub to double
  %mul = fmul double %80, %conv
  %conv69 = fptosi double %mul to i32
  %85 = load %struct.dimbox*, %struct.dimbox** %dimptr, align 8
  %Hweight70 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %85, i32 0, i32 11
  %86 = load double, double* %Hweight70, align 8
  %87 = load %struct.dimbox*, %struct.dimbox** %dimptr, align 8
  %xmax = getelementptr inbounds %struct.dimbox, %struct.dimbox* %87, i32 0, i32 4
  %88 = load i32, i32* %xmax, align 4
  %89 = load %struct.dimbox*, %struct.dimbox** %dimptr, align 8
  %xmin = getelementptr inbounds %struct.dimbox, %struct.dimbox* %89, i32 0, i32 2
  %90 = load i32, i32* %xmin, align 4
  %sub71 = sub nsw i32 %88, %90
  %conv72 = sitofp i32 %sub71 to double
  %mul73 = fmul double %86, %conv72
  %conv74 = fptosi double %mul73 to i32
  %sub75 = sub nsw i32 %conv69, %conv74
  %91 = load %struct.dimbox*, %struct.dimbox** %dimptr, align 8
  %Vweight = getelementptr inbounds %struct.dimbox, %struct.dimbox* %91, i32 0, i32 12
  %92 = load double, double* %Vweight, align 8
  %93 = load %struct.dimbox*, %struct.dimbox** %dimptr, align 8
  %newymax76 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %93, i32 0, i32 10
  %94 = load i32, i32* %newymax76, align 4
  %95 = load %struct.dimbox*, %struct.dimbox** %dimptr, align 8
  %newymin77 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %95, i32 0, i32 8
  %96 = load i32, i32* %newymin77, align 4
  %sub78 = sub nsw i32 %94, %96
  %conv79 = sitofp i32 %sub78 to double
  %mul80 = fmul double %92, %conv79
  %conv81 = fptosi double %mul80 to i32
  %add = add nsw i32 %sub75, %conv81
  %97 = load %struct.dimbox*, %struct.dimbox** %dimptr, align 8
  %Vweight82 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %97, i32 0, i32 12
  %98 = load double, double* %Vweight82, align 8
  %99 = load %struct.dimbox*, %struct.dimbox** %dimptr, align 8
  %ymax = getelementptr inbounds %struct.dimbox, %struct.dimbox* %99, i32 0, i32 9
  %100 = load i32, i32* %ymax, align 4
  %101 = load %struct.dimbox*, %struct.dimbox** %dimptr, align 8
  %ymin = getelementptr inbounds %struct.dimbox, %struct.dimbox* %101, i32 0, i32 6
  %102 = load i32, i32* %ymin, align 4
  %sub83 = sub nsw i32 %100, %102
  %conv84 = sitofp i32 %sub83 to double
  %mul85 = fmul double %98, %conv84
  %conv86 = fptosi double %mul85 to i32
  %sub87 = sub nsw i32 %add, %conv86
  %103 = load i32, i32* %cost, align 4
  %add88 = add nsw i32 %103, %sub87
  store i32 %add88, i32* %cost, align 4
  br label %for.inc.89

for.inc.89:                                       ; preds = %for.end.66, %if.then
  %104 = load %struct.termbox*, %struct.termbox** %termptr, align 8
  %nextterm90 = getelementptr inbounds %struct.termbox, %struct.termbox* %104, i32 0, i32 0
  %105 = load %struct.termbox*, %struct.termbox** %nextterm90, align 8
  store %struct.termbox* %105, %struct.termbox** %termptr, align 8
  br label %for.cond

for.end.91:                                       ; preds = %for.cond
  %106 = load i32, i32* %cost, align 4
  ret i32 %106
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
