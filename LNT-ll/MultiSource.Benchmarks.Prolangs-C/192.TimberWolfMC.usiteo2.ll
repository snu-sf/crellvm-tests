; ModuleID = './MultiSource.Benchmarks.Prolangs-C/192.TimberWolfMC.usiteo2.bc'
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
@occb1ptr = external global i32*, align 8
@occa2ptr = external global i32*, align 8
@occb2ptr = external global i32*, align 8
@funccost = external global i32, align 4
@T = external global double, align 8
@randVar = external global i32, align 4

; Function Attrs: nounwind uwtable
define i32 @usiteo2(i32 %a, i32 %b, i32 %ax, i32 %ay, i32 %bx, i32 %by, i32 %newaor, i32 %newbor) #0 {
entry:
  %retval = alloca i32, align 4
  %a.addr = alloca i32, align 4
  %b.addr = alloca i32, align 4
  %ax.addr = alloca i32, align 4
  %ay.addr = alloca i32, align 4
  %bx.addr = alloca i32, align 4
  %by.addr = alloca i32, align 4
  %newaor.addr = alloca i32, align 4
  %newbor.addr = alloca i32, align 4
  %acellptr = alloca %struct.cellbox*, align 8
  %bcellptr = alloca %struct.cellbox*, align 8
  %anewtermptr = alloca %struct.termbox*, align 8
  %bnewtermptr = alloca %struct.termbox*, align 8
  %cost = alloca i32, align 4
  %newpenalty = alloca i32, align 4
  %i = alloca i32, align 4
  %axcenter = alloca i32, align 4
  %aycenter = alloca i32, align 4
  %bxcenter = alloca i32, align 4
  %bycenter = alloca i32, align 4
  store i32 %a, i32* %a.addr, align 4
  store i32 %b, i32* %b.addr, align 4
  store i32 %ax, i32* %ax.addr, align 4
  store i32 %ay, i32* %ay.addr, align 4
  store i32 %bx, i32* %bx.addr, align 4
  store i32 %by, i32* %by.addr, align 4
  store i32 %newaor, i32* %newaor.addr, align 4
  store i32 %newbor, i32* %newbor.addr, align 4
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
  %11 = load i32, i32* %b.addr, align 4
  %idxprom3 = sext i32 %11 to i64
  %12 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %arrayidx4 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %12, i64 %idxprom3
  %13 = load %struct.cellbox*, %struct.cellbox** %arrayidx4, align 8
  store %struct.cellbox* %13, %struct.cellbox** %bcellptr, align 8
  %14 = load %struct.cellbox*, %struct.cellbox** %bcellptr, align 8
  %xcenter5 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %14, i32 0, i32 2
  %15 = load i32, i32* %xcenter5, align 4
  store i32 %15, i32* %bxcenter, align 4
  %16 = load %struct.cellbox*, %struct.cellbox** %bcellptr, align 8
  %ycenter6 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %16, i32 0, i32 3
  %17 = load i32, i32* %ycenter6, align 4
  store i32 %17, i32* %bycenter, align 4
  %18 = load i32, i32* %newbor.addr, align 4
  %idxprom7 = sext i32 %18 to i64
  %19 = load %struct.cellbox*, %struct.cellbox** %bcellptr, align 8
  %config8 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %19, i32 0, i32 21
  %arrayidx9 = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %config8, i32 0, i64 %idxprom7
  %20 = load %struct.tilebox*, %struct.tilebox** %arrayidx9, align 8
  %termptr10 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %20, i32 0, i32 17
  %21 = load %struct.termbox*, %struct.termbox** %termptr10, align 8
  store %struct.termbox* %21, %struct.termbox** %bnewtermptr, align 8
  %22 = load i32, i32* @penalty, align 4
  store i32 %22, i32* %newpenalty, align 4
  %23 = load i32 (...)*, i32 (...)** @overlap, align 8
  %24 = load i32, i32* %a.addr, align 4
  %25 = load i32, i32* %axcenter, align 4
  %26 = load i32, i32* %aycenter, align 4
  %27 = load %struct.cellbox*, %struct.cellbox** %acellptr, align 8
  %orient = getelementptr inbounds %struct.cellbox, %struct.cellbox* %27, i32 0, i32 5
  %28 = load i32, i32* %orient, align 4
  %callee.knr.cast = bitcast i32 (...)* %23 to i32 (i32, i32, i32, i32, i32, i32, i32, ...)*
  %call = call i32 (i32, i32, i32, i32, i32, i32, i32, ...) %callee.knr.cast(i32 %24, i32 %25, i32 %26, i32 %28, i32 0, i32 1, i32 0)
  %29 = load i32, i32* %newpenalty, align 4
  %sub = sub nsw i32 %29, %call
  store i32 %sub, i32* %newpenalty, align 4
  %30 = load i32, i32* @binY, align 4
  %idxprom11 = sext i32 %30 to i64
  %31 = load i32, i32* @binX, align 4
  %idxprom12 = sext i32 %31 to i64
  %32 = load i32***, i32**** @blockarray, align 8
  %arrayidx13 = getelementptr inbounds i32**, i32*** %32, i64 %idxprom12
  %33 = load i32**, i32*** %arrayidx13, align 8
  %arrayidx14 = getelementptr inbounds i32*, i32** %33, i64 %idxprom11
  %34 = load i32*, i32** %arrayidx14, align 8
  store i32* %34, i32** @occa1ptr, align 8
  %35 = load i32 (...)*, i32 (...)** @overlap, align 8
  %36 = load i32, i32* %b.addr, align 4
  %37 = load i32, i32* %bxcenter, align 4
  %38 = load i32, i32* %bycenter, align 4
  %39 = load %struct.cellbox*, %struct.cellbox** %bcellptr, align 8
  %orient15 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %39, i32 0, i32 5
  %40 = load i32, i32* %orient15, align 4
  %41 = load i32, i32* %a.addr, align 4
  %callee.knr.cast16 = bitcast i32 (...)* %35 to i32 (i32, i32, i32, i32, i32, i32, i32, ...)*
  %call17 = call i32 (i32, i32, i32, i32, i32, i32, i32, ...) %callee.knr.cast16(i32 %36, i32 %37, i32 %38, i32 %40, i32 %41, i32 1, i32 0)
  %42 = load i32, i32* %newpenalty, align 4
  %sub18 = sub nsw i32 %42, %call17
  store i32 %sub18, i32* %newpenalty, align 4
  %43 = load i32, i32* @binY, align 4
  %idxprom19 = sext i32 %43 to i64
  %44 = load i32, i32* @binX, align 4
  %idxprom20 = sext i32 %44 to i64
  %45 = load i32***, i32**** @blockarray, align 8
  %arrayidx21 = getelementptr inbounds i32**, i32*** %45, i64 %idxprom20
  %46 = load i32**, i32*** %arrayidx21, align 8
  %arrayidx22 = getelementptr inbounds i32*, i32** %46, i64 %idxprom19
  %47 = load i32*, i32** %arrayidx22, align 8
  store i32* %47, i32** @occb1ptr, align 8
  %48 = load i32 (...)*, i32 (...)** @overlap, align 8
  %49 = load i32, i32* %a.addr, align 4
  %50 = load i32, i32* %ax.addr, align 4
  %51 = load i32, i32* %ay.addr, align 4
  %52 = load i32, i32* %newaor.addr, align 4
  %53 = load i32, i32* %b.addr, align 4
  %54 = load i32, i32* %newbor.addr, align 4
  %callee.knr.cast23 = bitcast i32 (...)* %48 to i32 (i32, i32, i32, i32, i32, i32, i32, ...)*
  %call24 = call i32 (i32, i32, i32, i32, i32, i32, i32, ...) %callee.knr.cast23(i32 %49, i32 %50, i32 %51, i32 %52, i32 %53, i32 0, i32 %54)
  %55 = load i32, i32* %newpenalty, align 4
  %add = add nsw i32 %55, %call24
  store i32 %add, i32* %newpenalty, align 4
  %56 = load i32, i32* @binY, align 4
  %idxprom25 = sext i32 %56 to i64
  %57 = load i32, i32* @binX, align 4
  %idxprom26 = sext i32 %57 to i64
  %58 = load i32***, i32**** @blockarray, align 8
  %arrayidx27 = getelementptr inbounds i32**, i32*** %58, i64 %idxprom26
  %59 = load i32**, i32*** %arrayidx27, align 8
  %arrayidx28 = getelementptr inbounds i32*, i32** %59, i64 %idxprom25
  %60 = load i32*, i32** %arrayidx28, align 8
  store i32* %60, i32** @occa2ptr, align 8
  %61 = load i32 (...)*, i32 (...)** @overlap, align 8
  %62 = load i32, i32* %b.addr, align 4
  %63 = load i32, i32* %bx.addr, align 4
  %64 = load i32, i32* %by.addr, align 4
  %65 = load i32, i32* %newbor.addr, align 4
  %66 = load i32, i32* %a.addr, align 4
  %callee.knr.cast29 = bitcast i32 (...)* %61 to i32 (i32, i32, i32, i32, i32, i32, i32, ...)*
  %call30 = call i32 (i32, i32, i32, i32, i32, i32, i32, ...) %callee.knr.cast29(i32 %62, i32 %63, i32 %64, i32 %65, i32 %66, i32 1, i32 0)
  %67 = load i32, i32* %newpenalty, align 4
  %add31 = add nsw i32 %67, %call30
  store i32 %add31, i32* %newpenalty, align 4
  %68 = load i32, i32* @binY, align 4
  %idxprom32 = sext i32 %68 to i64
  %69 = load i32, i32* @binX, align 4
  %idxprom33 = sext i32 %69 to i64
  %70 = load i32***, i32**** @blockarray, align 8
  %arrayidx34 = getelementptr inbounds i32**, i32*** %70, i64 %idxprom33
  %71 = load i32**, i32*** %arrayidx34, align 8
  %arrayidx35 = getelementptr inbounds i32*, i32** %71, i64 %idxprom32
  %72 = load i32*, i32** %arrayidx35, align 8
  store i32* %72, i32** @occb2ptr, align 8
  %73 = load %struct.termbox*, %struct.termbox** %anewtermptr, align 8
  %74 = load i32, i32* %ax.addr, align 4
  %75 = load i32, i32* %ay.addr, align 4
  call void @ufixpin(%struct.termbox* %73, i32 0, i32 %74, i32 %75)
  %76 = load %struct.cellbox*, %struct.cellbox** %acellptr, align 8
  %77 = load i32, i32* %ax.addr, align 4
  %78 = load i32, i32* %ay.addr, align 4
  %79 = load i32, i32* %newaor.addr, align 4
  call void @usoftpin(%struct.cellbox* %76, i32 0, i32 %77, i32 %78, i32 %79)
  %80 = load %struct.termbox*, %struct.termbox** %bnewtermptr, align 8
  %81 = load i32, i32* %bx.addr, align 4
  %82 = load i32, i32* %by.addr, align 4
  call void @ufixpin(%struct.termbox* %80, i32 0, i32 %81, i32 %82)
  %83 = load %struct.cellbox*, %struct.cellbox** %bcellptr, align 8
  %84 = load i32, i32* %bx.addr, align 4
  %85 = load i32, i32* %by.addr, align 4
  %86 = load i32, i32* %newbor.addr, align 4
  call void @usoftpin(%struct.cellbox* %83, i32 0, i32 %84, i32 %85, i32 %86)
  %87 = load i32, i32* @funccost, align 4
  store i32 %87, i32* %cost, align 4
  %88 = load %struct.termbox*, %struct.termbox** %anewtermptr, align 8
  %call36 = call i32 @ufixnet(%struct.termbox* %88)
  %89 = load i32, i32* %cost, align 4
  %add37 = add nsw i32 %89, %call36
  store i32 %add37, i32* %cost, align 4
  %90 = load %struct.cellbox*, %struct.cellbox** %acellptr, align 8
  %call38 = call i32 @usoftnet(%struct.cellbox* %90)
  %91 = load i32, i32* %cost, align 4
  %add39 = add nsw i32 %91, %call38
  store i32 %add39, i32* %cost, align 4
  %92 = load %struct.termbox*, %struct.termbox** %bnewtermptr, align 8
  %call40 = call i32 @ufixnet(%struct.termbox* %92)
  %93 = load i32, i32* %cost, align 4
  %add41 = add nsw i32 %93, %call40
  store i32 %add41, i32* %cost, align 4
  %94 = load %struct.cellbox*, %struct.cellbox** %bcellptr, align 8
  %call42 = call i32 @usoftnet(%struct.cellbox* %94)
  %95 = load i32, i32* %cost, align 4
  %add43 = add nsw i32 %95, %call42
  store i32 %add43, i32* %cost, align 4
  %96 = load i32, i32* %cost, align 4
  %97 = load i32, i32* %newpenalty, align 4
  %add44 = add nsw i32 %96, %97
  %98 = load i32, i32* @funccost, align 4
  %99 = load i32, i32* @penalty, align 4
  %add45 = add nsw i32 %98, %99
  %cmp = icmp sle i32 %add44, %add45
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %100 = load i32, i32* @funccost, align 4
  %101 = load i32, i32* @penalty, align 4
  %add46 = add nsw i32 %100, %101
  %102 = load i32, i32* %cost, align 4
  %sub47 = sub nsw i32 %add46, %102
  %103 = load i32, i32* %newpenalty, align 4
  %sub48 = sub nsw i32 %sub47, %103
  %conv = sitofp i32 %sub48 to double
  %104 = load double, double* @T, align 8
  %div = fdiv double %conv, %104
  %call49 = call double @exp(double %div) #3
  %105 = load i32, i32* @randVar, align 4
  %mul = mul nsw i32 %105, 1103515245
  %add50 = add nsw i32 %mul, 12345
  store i32 %add50, i32* @randVar, align 4
  %and = and i32 %add50, 2147483647
  %conv51 = sitofp i32 %and to double
  %div52 = fdiv double %conv51, 0x41DFFFFFFFC00000
  %cmp53 = fcmp ogt double %call49, %div52
  br i1 %cmp53, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %entry
  %106 = load %struct.termbox*, %struct.termbox** %anewtermptr, align 8
  call void @ufixpin(%struct.termbox* %106, i32 1, i32 0, i32 0)
  %107 = load %struct.cellbox*, %struct.cellbox** %acellptr, align 8
  call void @usoftpin(%struct.cellbox* %107, i32 1, i32 0, i32 0, i32 0)
  %108 = load %struct.termbox*, %struct.termbox** %bnewtermptr, align 8
  call void @ufixpin(%struct.termbox* %108, i32 1, i32 0, i32 0)
  %109 = load %struct.cellbox*, %struct.cellbox** %bcellptr, align 8
  call void @usoftpin(%struct.cellbox* %109, i32 1, i32 0, i32 0, i32 0)
  %110 = load i32*, i32** @occa1ptr, align 8
  %111 = load i32*, i32** @occa2ptr, align 8
  %cmp55 = icmp ne i32* %110, %111
  br i1 %cmp55, label %if.then.57, label %if.end

if.then.57:                                       ; preds = %if.then
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.57
  %112 = load i32, i32* %i, align 4
  %idxprom58 = sext i32 %112 to i64
  %113 = load i32*, i32** @occa1ptr, align 8
  %arrayidx59 = getelementptr inbounds i32, i32* %113, i64 %idxprom58
  %114 = load i32, i32* %arrayidx59, align 4
  %115 = load i32, i32* %a.addr, align 4
  %cmp60 = icmp ne i32 %114, %115
  br i1 %cmp60, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %116 = load i32, i32* %i, align 4
  %inc = add nsw i32 %116, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %117 = load i32*, i32** @occa1ptr, align 8
  %arrayidx62 = getelementptr inbounds i32, i32* %117, i64 0
  %118 = load i32, i32* %arrayidx62, align 4
  %dec = add nsw i32 %118, -1
  store i32 %dec, i32* %arrayidx62, align 4
  %idxprom63 = sext i32 %118 to i64
  %119 = load i32*, i32** @occa1ptr, align 8
  %arrayidx64 = getelementptr inbounds i32, i32* %119, i64 %idxprom63
  %120 = load i32, i32* %arrayidx64, align 4
  %121 = load i32, i32* %i, align 4
  %idxprom65 = sext i32 %121 to i64
  %122 = load i32*, i32** @occa1ptr, align 8
  %arrayidx66 = getelementptr inbounds i32, i32* %122, i64 %idxprom65
  store i32 %120, i32* %arrayidx66, align 4
  %123 = load i32, i32* %a.addr, align 4
  %124 = load i32*, i32** @occa2ptr, align 8
  %arrayidx67 = getelementptr inbounds i32, i32* %124, i64 0
  %125 = load i32, i32* %arrayidx67, align 4
  %inc68 = add nsw i32 %125, 1
  store i32 %inc68, i32* %arrayidx67, align 4
  %idxprom69 = sext i32 %inc68 to i64
  %126 = load i32*, i32** @occa2ptr, align 8
  %arrayidx70 = getelementptr inbounds i32, i32* %126, i64 %idxprom69
  store i32 %123, i32* %arrayidx70, align 4
  br label %if.end

if.end:                                           ; preds = %for.end, %if.then
  %127 = load i32*, i32** @occb1ptr, align 8
  %128 = load i32*, i32** @occb2ptr, align 8
  %cmp71 = icmp ne i32* %127, %128
  br i1 %cmp71, label %if.then.73, label %if.end.93

if.then.73:                                       ; preds = %if.end
  store i32 1, i32* %i, align 4
  br label %for.cond.74

for.cond.74:                                      ; preds = %for.inc.80, %if.then.73
  %129 = load i32, i32* %i, align 4
  %idxprom75 = sext i32 %129 to i64
  %130 = load i32*, i32** @occb1ptr, align 8
  %arrayidx76 = getelementptr inbounds i32, i32* %130, i64 %idxprom75
  %131 = load i32, i32* %arrayidx76, align 4
  %132 = load i32, i32* %b.addr, align 4
  %cmp77 = icmp ne i32 %131, %132
  br i1 %cmp77, label %for.body.79, label %for.end.82

for.body.79:                                      ; preds = %for.cond.74
  br label %for.inc.80

for.inc.80:                                       ; preds = %for.body.79
  %133 = load i32, i32* %i, align 4
  %inc81 = add nsw i32 %133, 1
  store i32 %inc81, i32* %i, align 4
  br label %for.cond.74

for.end.82:                                       ; preds = %for.cond.74
  %134 = load i32*, i32** @occb1ptr, align 8
  %arrayidx83 = getelementptr inbounds i32, i32* %134, i64 0
  %135 = load i32, i32* %arrayidx83, align 4
  %dec84 = add nsw i32 %135, -1
  store i32 %dec84, i32* %arrayidx83, align 4
  %idxprom85 = sext i32 %135 to i64
  %136 = load i32*, i32** @occb1ptr, align 8
  %arrayidx86 = getelementptr inbounds i32, i32* %136, i64 %idxprom85
  %137 = load i32, i32* %arrayidx86, align 4
  %138 = load i32, i32* %i, align 4
  %idxprom87 = sext i32 %138 to i64
  %139 = load i32*, i32** @occb1ptr, align 8
  %arrayidx88 = getelementptr inbounds i32, i32* %139, i64 %idxprom87
  store i32 %137, i32* %arrayidx88, align 4
  %140 = load i32, i32* %b.addr, align 4
  %141 = load i32*, i32** @occb2ptr, align 8
  %arrayidx89 = getelementptr inbounds i32, i32* %141, i64 0
  %142 = load i32, i32* %arrayidx89, align 4
  %inc90 = add nsw i32 %142, 1
  store i32 %inc90, i32* %arrayidx89, align 4
  %idxprom91 = sext i32 %inc90 to i64
  %143 = load i32*, i32** @occb2ptr, align 8
  %arrayidx92 = getelementptr inbounds i32, i32* %143, i64 %idxprom91
  store i32 %140, i32* %arrayidx92, align 4
  br label %if.end.93

if.end.93:                                        ; preds = %for.end.82, %if.end
  %144 = load i32, i32* %ax.addr, align 4
  %145 = load %struct.cellbox*, %struct.cellbox** %acellptr, align 8
  %xcenter94 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %145, i32 0, i32 2
  store i32 %144, i32* %xcenter94, align 4
  %146 = load i32, i32* %ay.addr, align 4
  %147 = load %struct.cellbox*, %struct.cellbox** %acellptr, align 8
  %ycenter95 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %147, i32 0, i32 3
  store i32 %146, i32* %ycenter95, align 4
  %148 = load i32, i32* %bx.addr, align 4
  %149 = load %struct.cellbox*, %struct.cellbox** %bcellptr, align 8
  %xcenter96 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %149, i32 0, i32 2
  store i32 %148, i32* %xcenter96, align 4
  %150 = load i32, i32* %by.addr, align 4
  %151 = load %struct.cellbox*, %struct.cellbox** %bcellptr, align 8
  %ycenter97 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %151, i32 0, i32 3
  store i32 %150, i32* %ycenter97, align 4
  %152 = load i32, i32* %newaor.addr, align 4
  %153 = load %struct.cellbox*, %struct.cellbox** %acellptr, align 8
  %orient98 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %153, i32 0, i32 5
  store i32 %152, i32* %orient98, align 4
  %154 = load i32, i32* %newbor.addr, align 4
  %155 = load %struct.cellbox*, %struct.cellbox** %bcellptr, align 8
  %orient99 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %155, i32 0, i32 5
  store i32 %154, i32* %orient99, align 4
  %156 = load i32, i32* %cost, align 4
  store i32 %156, i32* @funccost, align 4
  %157 = load i32, i32* %newpenalty, align 4
  store i32 %157, i32* @penalty, align 4
  store i32 1, i32* %retval
  br label %return

if.else:                                          ; preds = %lor.lhs.false
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.else, %if.end.93
  %158 = load i32, i32* %retval
  ret i32 %158
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
