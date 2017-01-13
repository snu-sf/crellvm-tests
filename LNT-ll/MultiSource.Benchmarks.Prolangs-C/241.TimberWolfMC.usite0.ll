; ModuleID = './MultiSource.Benchmarks.Prolangs-C/241.TimberWolfMC.usite0.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cellbox = type { i8*, i32, i32, i32, [9 x i32], i32, i32, i32, i32, i32, i32, i32, double, double, double, double, double, i32, i32, %struct.contentbox*, %struct.uncombox*, [8 x %struct.tilebox*], %struct.sidebox* }
%struct.contentbox = type { i32, i32, i32, i32, i32 }
%struct.uncombox = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.tilebox = type { %struct.tilebox*, double, double, double, double, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.termbox*, %struct.locbox* }
%struct.termbox = type { %struct.termbox*, i32, i32, i32, i32, i32 }
%struct.locbox = type { i32, i32, i32, i32 }
%struct.sidebox = type { i32, i32 }

@cellarray = external global %struct.cellbox**, align 8
@penalty = external global i32, align 4
@overlap = external global i32 (...)*, align 8
@binY = external global i32, align 4
@binX = external global i32, align 4
@blockarray = external global i32***, align 8
@occa1ptr = external global i32*, align 8
@occa2ptr = external global i32*, align 8
@funccost = external global i32, align 4
@T = external global double, align 8
@randVar = external global i32, align 4

; Function Attrs: nounwind uwtable
define i32 @usite0(i32 %a, i32 %newaor) #0 {
entry:
  %retval = alloca i32, align 4
  %a.addr = alloca i32, align 4
  %newaor.addr = alloca i32, align 4
  %acellptr = alloca %struct.cellbox*, align 8
  %anewtermptr = alloca %struct.termbox*, align 8
  %cost = alloca i32, align 4
  %newpenalty = alloca i32, align 4
  %i = alloca i32, align 4
  %axcenter = alloca i32, align 4
  %aycenter = alloca i32, align 4
  store i32 %a, i32* %a.addr, align 4
  store i32 %newaor, i32* %newaor.addr, align 4
  %0 = load i32, i32* %a.addr, align 4
  %idxprom = sext i32 %0 to i64
  %1 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %arrayidx = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %1, i64 %idxprom
  %2 = load %struct.cellbox*, %struct.cellbox** %arrayidx, align 8
  store %struct.cellbox* %2, %struct.cellbox** %acellptr, align 8
  %3 = load %struct.cellbox*, %struct.cellbox** %acellptr, align 8
  %xcenter = getelementptr inbounds %struct.cellbox, %struct.cellbox* %3, i32 0, i32 2
  %4 = load i32, i32* %xcenter, align 4
  store i32 %4, i32* %axcenter, align 4
  %5 = load %struct.cellbox*, %struct.cellbox** %acellptr, align 8
  %ycenter = getelementptr inbounds %struct.cellbox, %struct.cellbox* %5, i32 0, i32 3
  %6 = load i32, i32* %ycenter, align 4
  store i32 %6, i32* %aycenter, align 4
  %7 = load i32, i32* %newaor.addr, align 4
  %idxprom1 = sext i32 %7 to i64
  %8 = load %struct.cellbox*, %struct.cellbox** %acellptr, align 8
  %config = getelementptr inbounds %struct.cellbox, %struct.cellbox* %8, i32 0, i32 21
  %arrayidx2 = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %config, i32 0, i64 %idxprom1
  %9 = load %struct.tilebox*, %struct.tilebox** %arrayidx2, align 8
  %termptr = getelementptr inbounds %struct.tilebox, %struct.tilebox* %9, i32 0, i32 17
  %10 = load %struct.termbox*, %struct.termbox** %termptr, align 8
  store %struct.termbox* %10, %struct.termbox** %anewtermptr, align 8
  %11 = load i32, i32* @penalty, align 4
  store i32 %11, i32* %newpenalty, align 4
  %12 = load i32 (...)*, i32 (...)** @overlap, align 8
  %13 = load i32, i32* %a.addr, align 4
  %14 = load i32, i32* %axcenter, align 4
  %15 = load i32, i32* %aycenter, align 4
  %16 = load %struct.cellbox*, %struct.cellbox** %acellptr, align 8
  %orient = getelementptr inbounds %struct.cellbox, %struct.cellbox* %16, i32 0, i32 5
  %17 = load i32, i32* %orient, align 4
  %callee.knr.cast = bitcast i32 (...)* %12 to i32 (i32, i32, i32, i32, i32, i32, i32, ...)*
  %call = call i32 (i32, i32, i32, i32, i32, i32, i32, ...) %callee.knr.cast(i32 %13, i32 %14, i32 %15, i32 %17, i32 0, i32 1, i32 0)
  %18 = load i32, i32* %newpenalty, align 4
  %sub = sub nsw i32 %18, %call
  store i32 %sub, i32* %newpenalty, align 4
  %19 = load i32, i32* @binY, align 4
  %idxprom3 = sext i32 %19 to i64
  %20 = load i32, i32* @binX, align 4
  %idxprom4 = sext i32 %20 to i64
  %21 = load i32***, i32**** @blockarray, align 8
  %arrayidx5 = getelementptr inbounds i32**, i32*** %21, i64 %idxprom4
  %22 = load i32**, i32*** %arrayidx5, align 8
  %arrayidx6 = getelementptr inbounds i32*, i32** %22, i64 %idxprom3
  %23 = load i32*, i32** %arrayidx6, align 8
  store i32* %23, i32** @occa1ptr, align 8
  %24 = load i32 (...)*, i32 (...)** @overlap, align 8
  %25 = load i32, i32* %a.addr, align 4
  %26 = load i32, i32* %axcenter, align 4
  %27 = load i32, i32* %aycenter, align 4
  %28 = load i32, i32* %newaor.addr, align 4
  %callee.knr.cast7 = bitcast i32 (...)* %24 to i32 (i32, i32, i32, i32, i32, i32, i32, ...)*
  %call8 = call i32 (i32, i32, i32, i32, i32, i32, i32, ...) %callee.knr.cast7(i32 %25, i32 %26, i32 %27, i32 %28, i32 0, i32 1, i32 0)
  %29 = load i32, i32* %newpenalty, align 4
  %add = add nsw i32 %29, %call8
  store i32 %add, i32* %newpenalty, align 4
  %30 = load i32, i32* @binY, align 4
  %idxprom9 = sext i32 %30 to i64
  %31 = load i32, i32* @binX, align 4
  %idxprom10 = sext i32 %31 to i64
  %32 = load i32***, i32**** @blockarray, align 8
  %arrayidx11 = getelementptr inbounds i32**, i32*** %32, i64 %idxprom10
  %33 = load i32**, i32*** %arrayidx11, align 8
  %arrayidx12 = getelementptr inbounds i32*, i32** %33, i64 %idxprom9
  %34 = load i32*, i32** %arrayidx12, align 8
  store i32* %34, i32** @occa2ptr, align 8
  %35 = load %struct.termbox*, %struct.termbox** %anewtermptr, align 8
  %36 = load i32, i32* %axcenter, align 4
  %37 = load i32, i32* %aycenter, align 4
  call void @ufixpin(%struct.termbox* %35, i32 0, i32 %36, i32 %37)
  %38 = load %struct.cellbox*, %struct.cellbox** %acellptr, align 8
  %39 = load i32, i32* %axcenter, align 4
  %40 = load i32, i32* %aycenter, align 4
  %41 = load i32, i32* %newaor.addr, align 4
  call void @usoftpin(%struct.cellbox* %38, i32 0, i32 %39, i32 %40, i32 %41)
  %42 = load i32, i32* @funccost, align 4
  store i32 %42, i32* %cost, align 4
  %43 = load %struct.termbox*, %struct.termbox** %anewtermptr, align 8
  %call13 = call i32 @ufixnet(%struct.termbox* %43)
  %44 = load i32, i32* %cost, align 4
  %add14 = add nsw i32 %44, %call13
  store i32 %add14, i32* %cost, align 4
  %45 = load %struct.cellbox*, %struct.cellbox** %acellptr, align 8
  %call15 = call i32 @usoftnet(%struct.cellbox* %45)
  %46 = load i32, i32* %cost, align 4
  %add16 = add nsw i32 %46, %call15
  store i32 %add16, i32* %cost, align 4
  %47 = load i32, i32* %cost, align 4
  %48 = load i32, i32* %newpenalty, align 4
  %add17 = add nsw i32 %47, %48
  %49 = load i32, i32* @funccost, align 4
  %50 = load i32, i32* @penalty, align 4
  %add18 = add nsw i32 %49, %50
  %cmp = icmp sle i32 %add17, %add18
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %51 = load i32, i32* @funccost, align 4
  %52 = load i32, i32* @penalty, align 4
  %add19 = add nsw i32 %51, %52
  %53 = load i32, i32* %cost, align 4
  %sub20 = sub nsw i32 %add19, %53
  %54 = load i32, i32* %newpenalty, align 4
  %sub21 = sub nsw i32 %sub20, %54
  %conv = sitofp i32 %sub21 to double
  %55 = load double, double* @T, align 8
  %div = fdiv double %conv, %55
  %call22 = call double @exp(double %div) #3
  %56 = load i32, i32* @randVar, align 4
  %mul = mul nsw i32 %56, 1103515245
  %add23 = add nsw i32 %mul, 12345
  store i32 %add23, i32* @randVar, align 4
  %and = and i32 %add23, 2147483647
  %conv24 = sitofp i32 %and to double
  %div25 = fdiv double %conv24, 0x41DFFFFFFFC00000
  %cmp26 = fcmp ogt double %call22, %div25
  br i1 %cmp26, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %entry
  %57 = load %struct.termbox*, %struct.termbox** %anewtermptr, align 8
  call void @ufixpin(%struct.termbox* %57, i32 1, i32 0, i32 0)
  %58 = load %struct.cellbox*, %struct.cellbox** %acellptr, align 8
  call void @usoftpin(%struct.cellbox* %58, i32 1, i32 0, i32 0, i32 0)
  %59 = load i32*, i32** @occa1ptr, align 8
  %60 = load i32*, i32** @occa2ptr, align 8
  %cmp28 = icmp ne i32* %59, %60
  br i1 %cmp28, label %if.then.30, label %if.end

if.then.30:                                       ; preds = %if.then
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.30
  %61 = load i32, i32* %i, align 4
  %idxprom31 = sext i32 %61 to i64
  %62 = load i32*, i32** @occa1ptr, align 8
  %arrayidx32 = getelementptr inbounds i32, i32* %62, i64 %idxprom31
  %63 = load i32, i32* %arrayidx32, align 4
  %64 = load i32, i32* %a.addr, align 4
  %cmp33 = icmp ne i32 %63, %64
  br i1 %cmp33, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %65 = load i32, i32* %i, align 4
  %inc = add nsw i32 %65, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %66 = load i32*, i32** @occa1ptr, align 8
  %arrayidx35 = getelementptr inbounds i32, i32* %66, i64 0
  %67 = load i32, i32* %arrayidx35, align 4
  %dec = add nsw i32 %67, -1
  store i32 %dec, i32* %arrayidx35, align 4
  %idxprom36 = sext i32 %67 to i64
  %68 = load i32*, i32** @occa1ptr, align 8
  %arrayidx37 = getelementptr inbounds i32, i32* %68, i64 %idxprom36
  %69 = load i32, i32* %arrayidx37, align 4
  %70 = load i32, i32* %i, align 4
  %idxprom38 = sext i32 %70 to i64
  %71 = load i32*, i32** @occa1ptr, align 8
  %arrayidx39 = getelementptr inbounds i32, i32* %71, i64 %idxprom38
  store i32 %69, i32* %arrayidx39, align 4
  %72 = load i32, i32* %a.addr, align 4
  %73 = load i32*, i32** @occa2ptr, align 8
  %arrayidx40 = getelementptr inbounds i32, i32* %73, i64 0
  %74 = load i32, i32* %arrayidx40, align 4
  %inc41 = add nsw i32 %74, 1
  store i32 %inc41, i32* %arrayidx40, align 4
  %idxprom42 = sext i32 %inc41 to i64
  %75 = load i32*, i32** @occa2ptr, align 8
  %arrayidx43 = getelementptr inbounds i32, i32* %75, i64 %idxprom42
  store i32 %72, i32* %arrayidx43, align 4
  br label %if.end

if.end:                                           ; preds = %for.end, %if.then
  %76 = load i32, i32* %newaor.addr, align 4
  %77 = load %struct.cellbox*, %struct.cellbox** %acellptr, align 8
  %orient44 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %77, i32 0, i32 5
  store i32 %76, i32* %orient44, align 4
  %78 = load i32, i32* %cost, align 4
  store i32 %78, i32* @funccost, align 4
  %79 = load i32, i32* %newpenalty, align 4
  store i32 %79, i32* @penalty, align 4
  store i32 1, i32* %retval
  br label %return

if.else:                                          ; preds = %lor.lhs.false
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.else, %if.end
  %80 = load i32, i32* %retval
  ret i32 %80
}

declare void @ufixpin(%struct.termbox*, i32, i32, i32) #1

declare void @usoftpin(%struct.cellbox*, i32, i32, i32, i32) #1

declare i32 @ufixnet(%struct.termbox*) #1

declare i32 @usoftnet(%struct.cellbox*) #1

; Function Attrs: nounwind
declare double @exp(double) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
