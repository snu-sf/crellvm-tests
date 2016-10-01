; ModuleID = './MultiSource.Benchmarks.Prolangs-C/254.TimberWolfMC.usite1.bc'
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
@finalShot = external global i32, align 4
@T = external global double, align 8
@randVar = external global i32, align 4
@bbbl = external global i32, align 4
@bbleft = external global i32, align 4
@bbbr = external global i32, align 4
@bbright = external global i32, align 4
@bbbb = external global i32, align 4
@bbbottom = external global i32, align 4
@bbbt = external global i32, align 4
@bbtop = external global i32, align 4

; Function Attrs: nounwind uwtable
define i32 @usite1(i32 %a, i32 %xb, i32 %yb) #0 {
entry:
  %retval = alloca i32, align 4
  %a.addr = alloca i32, align 4
  %xb.addr = alloca i32, align 4
  %yb.addr = alloca i32, align 4
  %acellptr = alloca %struct.cellbox*, align 8
  %atileptr = alloca %struct.tilebox*, align 8
  %atermptr = alloca %struct.termbox*, align 8
  %cost = alloca i32, align 4
  %newpenalty = alloca i32, align 4
  %i = alloca i32, align 4
  %axcenter = alloca i32, align 4
  %aycenter = alloca i32, align 4
  %delta = alloca i32, align 4
  store i32 %a, i32* %a.addr, align 4
  store i32 %xb, i32* %xb.addr, align 4
  store i32 %yb, i32* %yb.addr, align 4
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
  %7 = load %struct.cellbox*, %struct.cellbox** %acellptr, align 8
  %orient = getelementptr inbounds %struct.cellbox, %struct.cellbox* %7, i32 0, i32 5
  %8 = load i32, i32* %orient, align 4
  %idxprom1 = sext i32 %8 to i64
  %9 = load %struct.cellbox*, %struct.cellbox** %acellptr, align 8
  %config = getelementptr inbounds %struct.cellbox, %struct.cellbox* %9, i32 0, i32 21
  %arrayidx2 = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %config, i32 0, i64 %idxprom1
  %10 = load %struct.tilebox*, %struct.tilebox** %arrayidx2, align 8
  store %struct.tilebox* %10, %struct.tilebox** %atileptr, align 8
  %11 = load %struct.tilebox*, %struct.tilebox** %atileptr, align 8
  %termptr = getelementptr inbounds %struct.tilebox, %struct.tilebox* %11, i32 0, i32 17
  %12 = load %struct.termbox*, %struct.termbox** %termptr, align 8
  store %struct.termbox* %12, %struct.termbox** %atermptr, align 8
  %13 = load i32, i32* @penalty, align 4
  store i32 %13, i32* %newpenalty, align 4
  %14 = load i32 (...)*, i32 (...)** @overlap, align 8
  %15 = load i32, i32* %a.addr, align 4
  %16 = load i32, i32* %axcenter, align 4
  %17 = load i32, i32* %aycenter, align 4
  %18 = load %struct.cellbox*, %struct.cellbox** %acellptr, align 8
  %orient3 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %18, i32 0, i32 5
  %19 = load i32, i32* %orient3, align 4
  %callee.knr.cast = bitcast i32 (...)* %14 to i32 (i32, i32, i32, i32, i32, i32, i32, ...)*
  %call = call i32 (i32, i32, i32, i32, i32, i32, i32, ...) %callee.knr.cast(i32 %15, i32 %16, i32 %17, i32 %19, i32 0, i32 1, i32 0)
  %20 = load i32, i32* %newpenalty, align 4
  %sub = sub nsw i32 %20, %call
  store i32 %sub, i32* %newpenalty, align 4
  %21 = load i32, i32* @binY, align 4
  %idxprom4 = sext i32 %21 to i64
  %22 = load i32, i32* @binX, align 4
  %idxprom5 = sext i32 %22 to i64
  %23 = load i32***, i32**** @blockarray, align 8
  %arrayidx6 = getelementptr inbounds i32**, i32*** %23, i64 %idxprom5
  %24 = load i32**, i32*** %arrayidx6, align 8
  %arrayidx7 = getelementptr inbounds i32*, i32** %24, i64 %idxprom4
  %25 = load i32*, i32** %arrayidx7, align 8
  store i32* %25, i32** @occa1ptr, align 8
  %26 = load i32 (...)*, i32 (...)** @overlap, align 8
  %27 = load i32, i32* %a.addr, align 4
  %28 = load i32, i32* %xb.addr, align 4
  %29 = load i32, i32* %yb.addr, align 4
  %30 = load %struct.cellbox*, %struct.cellbox** %acellptr, align 8
  %orient8 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %30, i32 0, i32 5
  %31 = load i32, i32* %orient8, align 4
  %callee.knr.cast9 = bitcast i32 (...)* %26 to i32 (i32, i32, i32, i32, i32, i32, i32, ...)*
  %call10 = call i32 (i32, i32, i32, i32, i32, i32, i32, ...) %callee.knr.cast9(i32 %27, i32 %28, i32 %29, i32 %31, i32 0, i32 1, i32 0)
  %32 = load i32, i32* %newpenalty, align 4
  %add = add nsw i32 %32, %call10
  store i32 %add, i32* %newpenalty, align 4
  %33 = load i32, i32* @binY, align 4
  %idxprom11 = sext i32 %33 to i64
  %34 = load i32, i32* @binX, align 4
  %idxprom12 = sext i32 %34 to i64
  %35 = load i32***, i32**** @blockarray, align 8
  %arrayidx13 = getelementptr inbounds i32**, i32*** %35, i64 %idxprom12
  %36 = load i32**, i32*** %arrayidx13, align 8
  %arrayidx14 = getelementptr inbounds i32*, i32** %36, i64 %idxprom11
  %37 = load i32*, i32** %arrayidx14, align 8
  store i32* %37, i32** @occa2ptr, align 8
  %38 = load %struct.termbox*, %struct.termbox** %atermptr, align 8
  %39 = load i32, i32* %xb.addr, align 4
  %40 = load i32, i32* %yb.addr, align 4
  call void @ufixpin(%struct.termbox* %38, i32 0, i32 %39, i32 %40)
  %41 = load %struct.cellbox*, %struct.cellbox** %acellptr, align 8
  %42 = load i32, i32* %xb.addr, align 4
  %43 = load i32, i32* %yb.addr, align 4
  %44 = load %struct.cellbox*, %struct.cellbox** %acellptr, align 8
  %orient15 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %44, i32 0, i32 5
  %45 = load i32, i32* %orient15, align 4
  call void @usoftpin(%struct.cellbox* %41, i32 0, i32 %42, i32 %43, i32 %45)
  %46 = load i32, i32* @funccost, align 4
  store i32 %46, i32* %cost, align 4
  %47 = load %struct.termbox*, %struct.termbox** %atermptr, align 8
  %call16 = call i32 @ufixnet(%struct.termbox* %47)
  %48 = load i32, i32* %cost, align 4
  %add17 = add nsw i32 %48, %call16
  store i32 %add17, i32* %cost, align 4
  %49 = load %struct.cellbox*, %struct.cellbox** %acellptr, align 8
  %call18 = call i32 @usoftnet(%struct.cellbox* %49)
  %50 = load i32, i32* %cost, align 4
  %add19 = add nsw i32 %50, %call18
  store i32 %add19, i32* %cost, align 4
  %51 = load i32, i32* @finalShot, align 4
  %cmp = icmp sgt i32 %51, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %52 = load i32, i32* %a.addr, align 4
  %53 = load i32, i32* %xb.addr, align 4
  %54 = load i32, i32* %yb.addr, align 4
  %call20 = call i32 @deltaBB(i32 %52, i32 %53, i32 %54)
  store i32 %call20, i32* %delta, align 4
  %55 = load i32, i32* %delta, align 4
  %56 = load i32, i32* %newpenalty, align 4
  %add21 = add nsw i32 %56, %55
  store i32 %add21, i32* %newpenalty, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %57 = load i32, i32* %cost, align 4
  %58 = load i32, i32* %newpenalty, align 4
  %add22 = add nsw i32 %57, %58
  %59 = load i32, i32* @funccost, align 4
  %60 = load i32, i32* @penalty, align 4
  %add23 = add nsw i32 %59, %60
  %cmp24 = icmp sle i32 %add22, %add23
  br i1 %cmp24, label %if.then.34, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %61 = load i32, i32* @funccost, align 4
  %62 = load i32, i32* @penalty, align 4
  %add25 = add nsw i32 %61, %62
  %63 = load i32, i32* %cost, align 4
  %sub26 = sub nsw i32 %add25, %63
  %64 = load i32, i32* %newpenalty, align 4
  %sub27 = sub nsw i32 %sub26, %64
  %conv = sitofp i32 %sub27 to double
  %65 = load double, double* @T, align 8
  %div = fdiv double %conv, %65
  %call28 = call double @exp(double %div) #3
  %66 = load i32, i32* @randVar, align 4
  %mul = mul nsw i32 %66, 1103515245
  %add29 = add nsw i32 %mul, 12345
  store i32 %add29, i32* @randVar, align 4
  %and = and i32 %add29, 2147483647
  %conv30 = sitofp i32 %and to double
  %div31 = fdiv double %conv30, 0x41DFFFFFFFC00000
  %cmp32 = fcmp ogt double %call28, %div31
  br i1 %cmp32, label %if.then.34, label %if.else

if.then.34:                                       ; preds = %lor.lhs.false, %if.end
  %67 = load %struct.termbox*, %struct.termbox** %atermptr, align 8
  call void @ufixpin(%struct.termbox* %67, i32 1, i32 0, i32 0)
  %68 = load %struct.cellbox*, %struct.cellbox** %acellptr, align 8
  call void @usoftpin(%struct.cellbox* %68, i32 1, i32 0, i32 0, i32 0)
  %69 = load i32*, i32** @occa1ptr, align 8
  %70 = load i32*, i32** @occa2ptr, align 8
  %cmp35 = icmp ne i32* %69, %70
  br i1 %cmp35, label %if.then.37, label %if.end.51

if.then.37:                                       ; preds = %if.then.34
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.37
  %71 = load i32, i32* %i, align 4
  %idxprom38 = sext i32 %71 to i64
  %72 = load i32*, i32** @occa1ptr, align 8
  %arrayidx39 = getelementptr inbounds i32, i32* %72, i64 %idxprom38
  %73 = load i32, i32* %arrayidx39, align 4
  %74 = load i32, i32* %a.addr, align 4
  %cmp40 = icmp ne i32 %73, %74
  br i1 %cmp40, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %75 = load i32, i32* %i, align 4
  %inc = add nsw i32 %75, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %76 = load i32*, i32** @occa1ptr, align 8
  %arrayidx42 = getelementptr inbounds i32, i32* %76, i64 0
  %77 = load i32, i32* %arrayidx42, align 4
  %dec = add nsw i32 %77, -1
  store i32 %dec, i32* %arrayidx42, align 4
  %idxprom43 = sext i32 %77 to i64
  %78 = load i32*, i32** @occa1ptr, align 8
  %arrayidx44 = getelementptr inbounds i32, i32* %78, i64 %idxprom43
  %79 = load i32, i32* %arrayidx44, align 4
  %80 = load i32, i32* %i, align 4
  %idxprom45 = sext i32 %80 to i64
  %81 = load i32*, i32** @occa1ptr, align 8
  %arrayidx46 = getelementptr inbounds i32, i32* %81, i64 %idxprom45
  store i32 %79, i32* %arrayidx46, align 4
  %82 = load i32, i32* %a.addr, align 4
  %83 = load i32*, i32** @occa2ptr, align 8
  %arrayidx47 = getelementptr inbounds i32, i32* %83, i64 0
  %84 = load i32, i32* %arrayidx47, align 4
  %inc48 = add nsw i32 %84, 1
  store i32 %inc48, i32* %arrayidx47, align 4
  %idxprom49 = sext i32 %inc48 to i64
  %85 = load i32*, i32** @occa2ptr, align 8
  %arrayidx50 = getelementptr inbounds i32, i32* %85, i64 %idxprom49
  store i32 %82, i32* %arrayidx50, align 4
  br label %if.end.51

if.end.51:                                        ; preds = %for.end, %if.then.34
  %86 = load i32, i32* %xb.addr, align 4
  %87 = load %struct.cellbox*, %struct.cellbox** %acellptr, align 8
  %xcenter52 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %87, i32 0, i32 2
  store i32 %86, i32* %xcenter52, align 4
  %88 = load i32, i32* %yb.addr, align 4
  %89 = load %struct.cellbox*, %struct.cellbox** %acellptr, align 8
  %ycenter53 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %89, i32 0, i32 3
  store i32 %88, i32* %ycenter53, align 4
  %90 = load i32, i32* %cost, align 4
  store i32 %90, i32* @funccost, align 4
  %91 = load i32, i32* @finalShot, align 4
  %cmp54 = icmp sgt i32 %91, 0
  br i1 %cmp54, label %if.then.56, label %if.end.58

if.then.56:                                       ; preds = %if.end.51
  %92 = load i32, i32* %delta, align 4
  %93 = load i32, i32* %newpenalty, align 4
  %sub57 = sub nsw i32 %93, %92
  store i32 %sub57, i32* %newpenalty, align 4
  %94 = load i32, i32* @bbbl, align 4
  store i32 %94, i32* @bbleft, align 4
  %95 = load i32, i32* @bbbr, align 4
  store i32 %95, i32* @bbright, align 4
  %96 = load i32, i32* @bbbb, align 4
  store i32 %96, i32* @bbbottom, align 4
  %97 = load i32, i32* @bbbt, align 4
  store i32 %97, i32* @bbtop, align 4
  br label %if.end.58

if.end.58:                                        ; preds = %if.then.56, %if.end.51
  %98 = load i32, i32* %newpenalty, align 4
  store i32 %98, i32* @penalty, align 4
  store i32 1, i32* %retval
  br label %return

if.else:                                          ; preds = %lor.lhs.false
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.else, %if.end.58
  %99 = load i32, i32* %retval
  ret i32 %99
}

declare void @ufixpin(%struct.termbox*, i32, i32, i32) #1

declare void @usoftpin(%struct.cellbox*, i32, i32, i32, i32) #1

declare i32 @ufixnet(%struct.termbox*) #1

declare i32 @usoftnet(%struct.cellbox*) #1

declare i32 @deltaBB(i32, i32, i32) #1

; Function Attrs: nounwind
declare double @exp(double) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
