; ModuleID = './MultiSource.Benchmarks.Prolangs-C/261.TimberWolfMC.usite2.bc'
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
define i32 @usite2(i32 %a, i32 %b, i32 %ax, i32 %ay, i32 %bx, i32 %by) #0 {
entry:
  %retval = alloca i32, align 4
  %a.addr = alloca i32, align 4
  %b.addr = alloca i32, align 4
  %ax.addr = alloca i32, align 4
  %ay.addr = alloca i32, align 4
  %bx.addr = alloca i32, align 4
  %by.addr = alloca i32, align 4
  %acellptr = alloca %struct.cellbox*, align 8
  %bcellptr = alloca %struct.cellbox*, align 8
  %atermptr = alloca %struct.termbox*, align 8
  %btermptr = alloca %struct.termbox*, align 8
  %cost = alloca i32, align 4
  %newpenalty = alloca i32, align 4
  %i = alloca i32, align 4
  %axcenter = alloca i32, align 4
  %aycenter = alloca i32, align 4
  %bxcenter = alloca i32, align 4
  %bycenter = alloca i32, align 4
  %aorient = alloca i32, align 4
  %borient = alloca i32, align 4
  store i32 %a, i32* %a.addr, align 4
  store i32 %b, i32* %b.addr, align 4
  store i32 %ax, i32* %ax.addr, align 4
  store i32 %ay, i32* %ay.addr, align 4
  store i32 %bx, i32* %bx.addr, align 4
  store i32 %by, i32* %by.addr, align 4
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
  store i32 %8, i32* %aorient, align 4
  %9 = load i32, i32* %aorient, align 4
  %idxprom1 = sext i32 %9 to i64
  %10 = load %struct.cellbox*, %struct.cellbox** %acellptr, align 8
  %config = getelementptr inbounds %struct.cellbox, %struct.cellbox* %10, i32 0, i32 21
  %arrayidx2 = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %config, i32 0, i64 %idxprom1
  %11 = load %struct.tilebox*, %struct.tilebox** %arrayidx2, align 8
  %termptr = getelementptr inbounds %struct.tilebox, %struct.tilebox* %11, i32 0, i32 17
  %12 = load %struct.termbox*, %struct.termbox** %termptr, align 8
  store %struct.termbox* %12, %struct.termbox** %atermptr, align 8
  %13 = load i32, i32* %b.addr, align 4
  %idxprom3 = sext i32 %13 to i64
  %14 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %arrayidx4 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %14, i64 %idxprom3
  %15 = load %struct.cellbox*, %struct.cellbox** %arrayidx4, align 8
  store %struct.cellbox* %15, %struct.cellbox** %bcellptr, align 8
  %16 = load %struct.cellbox*, %struct.cellbox** %bcellptr, align 8
  %xcenter5 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %16, i32 0, i32 2
  %17 = load i32, i32* %xcenter5, align 4
  store i32 %17, i32* %bxcenter, align 4
  %18 = load %struct.cellbox*, %struct.cellbox** %bcellptr, align 8
  %ycenter6 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %18, i32 0, i32 3
  %19 = load i32, i32* %ycenter6, align 4
  store i32 %19, i32* %bycenter, align 4
  %20 = load %struct.cellbox*, %struct.cellbox** %bcellptr, align 8
  %orient7 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %20, i32 0, i32 5
  %21 = load i32, i32* %orient7, align 4
  store i32 %21, i32* %borient, align 4
  %22 = load i32, i32* %borient, align 4
  %idxprom8 = sext i32 %22 to i64
  %23 = load %struct.cellbox*, %struct.cellbox** %bcellptr, align 8
  %config9 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %23, i32 0, i32 21
  %arrayidx10 = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %config9, i32 0, i64 %idxprom8
  %24 = load %struct.tilebox*, %struct.tilebox** %arrayidx10, align 8
  %termptr11 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %24, i32 0, i32 17
  %25 = load %struct.termbox*, %struct.termbox** %termptr11, align 8
  store %struct.termbox* %25, %struct.termbox** %btermptr, align 8
  %26 = load i32, i32* @penalty, align 4
  store i32 %26, i32* %newpenalty, align 4
  %27 = load i32 (...)*, i32 (...)** @overlap, align 8
  %28 = load i32, i32* %a.addr, align 4
  %29 = load i32, i32* %axcenter, align 4
  %30 = load i32, i32* %aycenter, align 4
  %31 = load i32, i32* %aorient, align 4
  %callee.knr.cast = bitcast i32 (...)* %27 to i32 (i32, i32, i32, i32, i32, i32, i32, ...)*
  %call = call i32 (i32, i32, i32, i32, i32, i32, i32, ...) %callee.knr.cast(i32 %28, i32 %29, i32 %30, i32 %31, i32 0, i32 1, i32 0)
  %32 = load i32, i32* %newpenalty, align 4
  %sub = sub nsw i32 %32, %call
  store i32 %sub, i32* %newpenalty, align 4
  %33 = load i32, i32* @binY, align 4
  %idxprom12 = sext i32 %33 to i64
  %34 = load i32, i32* @binX, align 4
  %idxprom13 = sext i32 %34 to i64
  %35 = load i32***, i32**** @blockarray, align 8
  %arrayidx14 = getelementptr inbounds i32**, i32*** %35, i64 %idxprom13
  %36 = load i32**, i32*** %arrayidx14, align 8
  %arrayidx15 = getelementptr inbounds i32*, i32** %36, i64 %idxprom12
  %37 = load i32*, i32** %arrayidx15, align 8
  store i32* %37, i32** @occa1ptr, align 8
  %38 = load i32 (...)*, i32 (...)** @overlap, align 8
  %39 = load i32, i32* %b.addr, align 4
  %40 = load i32, i32* %bxcenter, align 4
  %41 = load i32, i32* %bycenter, align 4
  %42 = load i32, i32* %borient, align 4
  %43 = load i32, i32* %a.addr, align 4
  %callee.knr.cast16 = bitcast i32 (...)* %38 to i32 (i32, i32, i32, i32, i32, i32, i32, ...)*
  %call17 = call i32 (i32, i32, i32, i32, i32, i32, i32, ...) %callee.knr.cast16(i32 %39, i32 %40, i32 %41, i32 %42, i32 %43, i32 1, i32 0)
  %44 = load i32, i32* %newpenalty, align 4
  %sub18 = sub nsw i32 %44, %call17
  store i32 %sub18, i32* %newpenalty, align 4
  %45 = load i32, i32* @binY, align 4
  %idxprom19 = sext i32 %45 to i64
  %46 = load i32, i32* @binX, align 4
  %idxprom20 = sext i32 %46 to i64
  %47 = load i32***, i32**** @blockarray, align 8
  %arrayidx21 = getelementptr inbounds i32**, i32*** %47, i64 %idxprom20
  %48 = load i32**, i32*** %arrayidx21, align 8
  %arrayidx22 = getelementptr inbounds i32*, i32** %48, i64 %idxprom19
  %49 = load i32*, i32** %arrayidx22, align 8
  store i32* %49, i32** @occb1ptr, align 8
  %50 = load i32 (...)*, i32 (...)** @overlap, align 8
  %51 = load i32, i32* %a.addr, align 4
  %52 = load i32, i32* %ax.addr, align 4
  %53 = load i32, i32* %ay.addr, align 4
  %54 = load i32, i32* %aorient, align 4
  %55 = load i32, i32* %b.addr, align 4
  %56 = load i32, i32* %borient, align 4
  %callee.knr.cast23 = bitcast i32 (...)* %50 to i32 (i32, i32, i32, i32, i32, i32, i32, ...)*
  %call24 = call i32 (i32, i32, i32, i32, i32, i32, i32, ...) %callee.knr.cast23(i32 %51, i32 %52, i32 %53, i32 %54, i32 %55, i32 0, i32 %56)
  %57 = load i32, i32* %newpenalty, align 4
  %add = add nsw i32 %57, %call24
  store i32 %add, i32* %newpenalty, align 4
  %58 = load i32, i32* @binY, align 4
  %idxprom25 = sext i32 %58 to i64
  %59 = load i32, i32* @binX, align 4
  %idxprom26 = sext i32 %59 to i64
  %60 = load i32***, i32**** @blockarray, align 8
  %arrayidx27 = getelementptr inbounds i32**, i32*** %60, i64 %idxprom26
  %61 = load i32**, i32*** %arrayidx27, align 8
  %arrayidx28 = getelementptr inbounds i32*, i32** %61, i64 %idxprom25
  %62 = load i32*, i32** %arrayidx28, align 8
  store i32* %62, i32** @occa2ptr, align 8
  %63 = load i32 (...)*, i32 (...)** @overlap, align 8
  %64 = load i32, i32* %b.addr, align 4
  %65 = load i32, i32* %bx.addr, align 4
  %66 = load i32, i32* %by.addr, align 4
  %67 = load i32, i32* %borient, align 4
  %68 = load i32, i32* %a.addr, align 4
  %callee.knr.cast29 = bitcast i32 (...)* %63 to i32 (i32, i32, i32, i32, i32, i32, i32, ...)*
  %call30 = call i32 (i32, i32, i32, i32, i32, i32, i32, ...) %callee.knr.cast29(i32 %64, i32 %65, i32 %66, i32 %67, i32 %68, i32 1, i32 0)
  %69 = load i32, i32* %newpenalty, align 4
  %add31 = add nsw i32 %69, %call30
  store i32 %add31, i32* %newpenalty, align 4
  %70 = load i32, i32* @binY, align 4
  %idxprom32 = sext i32 %70 to i64
  %71 = load i32, i32* @binX, align 4
  %idxprom33 = sext i32 %71 to i64
  %72 = load i32***, i32**** @blockarray, align 8
  %arrayidx34 = getelementptr inbounds i32**, i32*** %72, i64 %idxprom33
  %73 = load i32**, i32*** %arrayidx34, align 8
  %arrayidx35 = getelementptr inbounds i32*, i32** %73, i64 %idxprom32
  %74 = load i32*, i32** %arrayidx35, align 8
  store i32* %74, i32** @occb2ptr, align 8
  %75 = load %struct.termbox*, %struct.termbox** %atermptr, align 8
  %76 = load i32, i32* %ax.addr, align 4
  %77 = load i32, i32* %ay.addr, align 4
  call void @ufixpin(%struct.termbox* %75, i32 0, i32 %76, i32 %77)
  %78 = load %struct.cellbox*, %struct.cellbox** %acellptr, align 8
  %79 = load i32, i32* %ax.addr, align 4
  %80 = load i32, i32* %ay.addr, align 4
  %81 = load i32, i32* %aorient, align 4
  call void @usoftpin(%struct.cellbox* %78, i32 0, i32 %79, i32 %80, i32 %81)
  %82 = load %struct.termbox*, %struct.termbox** %btermptr, align 8
  %83 = load i32, i32* %bx.addr, align 4
  %84 = load i32, i32* %by.addr, align 4
  call void @ufixpin(%struct.termbox* %82, i32 0, i32 %83, i32 %84)
  %85 = load %struct.cellbox*, %struct.cellbox** %bcellptr, align 8
  %86 = load i32, i32* %bx.addr, align 4
  %87 = load i32, i32* %by.addr, align 4
  %88 = load i32, i32* %borient, align 4
  call void @usoftpin(%struct.cellbox* %85, i32 0, i32 %86, i32 %87, i32 %88)
  %89 = load i32, i32* @funccost, align 4
  store i32 %89, i32* %cost, align 4
  %90 = load %struct.termbox*, %struct.termbox** %atermptr, align 8
  %call36 = call i32 @ufixnet(%struct.termbox* %90)
  %91 = load i32, i32* %cost, align 4
  %add37 = add nsw i32 %91, %call36
  store i32 %add37, i32* %cost, align 4
  %92 = load %struct.cellbox*, %struct.cellbox** %acellptr, align 8
  %call38 = call i32 @usoftnet(%struct.cellbox* %92)
  %93 = load i32, i32* %cost, align 4
  %add39 = add nsw i32 %93, %call38
  store i32 %add39, i32* %cost, align 4
  %94 = load %struct.termbox*, %struct.termbox** %btermptr, align 8
  %call40 = call i32 @ufixnet(%struct.termbox* %94)
  %95 = load i32, i32* %cost, align 4
  %add41 = add nsw i32 %95, %call40
  store i32 %add41, i32* %cost, align 4
  %96 = load %struct.cellbox*, %struct.cellbox** %bcellptr, align 8
  %call42 = call i32 @usoftnet(%struct.cellbox* %96)
  %97 = load i32, i32* %cost, align 4
  %add43 = add nsw i32 %97, %call42
  store i32 %add43, i32* %cost, align 4
  %98 = load i32, i32* %cost, align 4
  %99 = load i32, i32* %newpenalty, align 4
  %add44 = add nsw i32 %98, %99
  %100 = load i32, i32* @funccost, align 4
  %101 = load i32, i32* @penalty, align 4
  %add45 = add nsw i32 %100, %101
  %cmp = icmp sle i32 %add44, %add45
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %102 = load i32, i32* @funccost, align 4
  %103 = load i32, i32* @penalty, align 4
  %add46 = add nsw i32 %102, %103
  %104 = load i32, i32* %cost, align 4
  %sub47 = sub nsw i32 %add46, %104
  %105 = load i32, i32* %newpenalty, align 4
  %sub48 = sub nsw i32 %sub47, %105
  %conv = sitofp i32 %sub48 to double
  %106 = load double, double* @T, align 8
  %div = fdiv double %conv, %106
  %call49 = call double @exp(double %div) #3
  %107 = load i32, i32* @randVar, align 4
  %mul = mul nsw i32 %107, 1103515245
  %add50 = add nsw i32 %mul, 12345
  store i32 %add50, i32* @randVar, align 4
  %and = and i32 %add50, 2147483647
  %conv51 = sitofp i32 %and to double
  %div52 = fdiv double %conv51, 0x41DFFFFFFFC00000
  %cmp53 = fcmp ogt double %call49, %div52
  br i1 %cmp53, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %entry
  %108 = load %struct.termbox*, %struct.termbox** %atermptr, align 8
  call void @ufixpin(%struct.termbox* %108, i32 1, i32 0, i32 0)
  %109 = load %struct.cellbox*, %struct.cellbox** %acellptr, align 8
  call void @usoftpin(%struct.cellbox* %109, i32 1, i32 0, i32 0, i32 0)
  %110 = load %struct.termbox*, %struct.termbox** %btermptr, align 8
  call void @ufixpin(%struct.termbox* %110, i32 1, i32 0, i32 0)
  %111 = load %struct.cellbox*, %struct.cellbox** %bcellptr, align 8
  call void @usoftpin(%struct.cellbox* %111, i32 1, i32 0, i32 0, i32 0)
  %112 = load i32*, i32** @occa1ptr, align 8
  %113 = load i32*, i32** @occa2ptr, align 8
  %cmp55 = icmp ne i32* %112, %113
  br i1 %cmp55, label %if.then.57, label %if.end

if.then.57:                                       ; preds = %if.then
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.57
  %114 = load i32, i32* %i, align 4
  %idxprom58 = sext i32 %114 to i64
  %115 = load i32*, i32** @occa1ptr, align 8
  %arrayidx59 = getelementptr inbounds i32, i32* %115, i64 %idxprom58
  %116 = load i32, i32* %arrayidx59, align 4
  %117 = load i32, i32* %a.addr, align 4
  %cmp60 = icmp ne i32 %116, %117
  br i1 %cmp60, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %118 = load i32, i32* %i, align 4
  %inc = add nsw i32 %118, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %119 = load i32*, i32** @occa1ptr, align 8
  %arrayidx62 = getelementptr inbounds i32, i32* %119, i64 0
  %120 = load i32, i32* %arrayidx62, align 4
  %dec = add nsw i32 %120, -1
  store i32 %dec, i32* %arrayidx62, align 4
  %idxprom63 = sext i32 %120 to i64
  %121 = load i32*, i32** @occa1ptr, align 8
  %arrayidx64 = getelementptr inbounds i32, i32* %121, i64 %idxprom63
  %122 = load i32, i32* %arrayidx64, align 4
  %123 = load i32, i32* %i, align 4
  %idxprom65 = sext i32 %123 to i64
  %124 = load i32*, i32** @occa1ptr, align 8
  %arrayidx66 = getelementptr inbounds i32, i32* %124, i64 %idxprom65
  store i32 %122, i32* %arrayidx66, align 4
  %125 = load i32, i32* %a.addr, align 4
  %126 = load i32*, i32** @occa2ptr, align 8
  %arrayidx67 = getelementptr inbounds i32, i32* %126, i64 0
  %127 = load i32, i32* %arrayidx67, align 4
  %inc68 = add nsw i32 %127, 1
  store i32 %inc68, i32* %arrayidx67, align 4
  %idxprom69 = sext i32 %inc68 to i64
  %128 = load i32*, i32** @occa2ptr, align 8
  %arrayidx70 = getelementptr inbounds i32, i32* %128, i64 %idxprom69
  store i32 %125, i32* %arrayidx70, align 4
  br label %if.end

if.end:                                           ; preds = %for.end, %if.then
  %129 = load i32*, i32** @occb1ptr, align 8
  %130 = load i32*, i32** @occb2ptr, align 8
  %cmp71 = icmp ne i32* %129, %130
  br i1 %cmp71, label %if.then.73, label %if.end.93

if.then.73:                                       ; preds = %if.end
  store i32 1, i32* %i, align 4
  br label %for.cond.74

for.cond.74:                                      ; preds = %for.inc.80, %if.then.73
  %131 = load i32, i32* %i, align 4
  %idxprom75 = sext i32 %131 to i64
  %132 = load i32*, i32** @occb1ptr, align 8
  %arrayidx76 = getelementptr inbounds i32, i32* %132, i64 %idxprom75
  %133 = load i32, i32* %arrayidx76, align 4
  %134 = load i32, i32* %b.addr, align 4
  %cmp77 = icmp ne i32 %133, %134
  br i1 %cmp77, label %for.body.79, label %for.end.82

for.body.79:                                      ; preds = %for.cond.74
  br label %for.inc.80

for.inc.80:                                       ; preds = %for.body.79
  %135 = load i32, i32* %i, align 4
  %inc81 = add nsw i32 %135, 1
  store i32 %inc81, i32* %i, align 4
  br label %for.cond.74

for.end.82:                                       ; preds = %for.cond.74
  %136 = load i32*, i32** @occb1ptr, align 8
  %arrayidx83 = getelementptr inbounds i32, i32* %136, i64 0
  %137 = load i32, i32* %arrayidx83, align 4
  %dec84 = add nsw i32 %137, -1
  store i32 %dec84, i32* %arrayidx83, align 4
  %idxprom85 = sext i32 %137 to i64
  %138 = load i32*, i32** @occb1ptr, align 8
  %arrayidx86 = getelementptr inbounds i32, i32* %138, i64 %idxprom85
  %139 = load i32, i32* %arrayidx86, align 4
  %140 = load i32, i32* %i, align 4
  %idxprom87 = sext i32 %140 to i64
  %141 = load i32*, i32** @occb1ptr, align 8
  %arrayidx88 = getelementptr inbounds i32, i32* %141, i64 %idxprom87
  store i32 %139, i32* %arrayidx88, align 4
  %142 = load i32, i32* %b.addr, align 4
  %143 = load i32*, i32** @occb2ptr, align 8
  %arrayidx89 = getelementptr inbounds i32, i32* %143, i64 0
  %144 = load i32, i32* %arrayidx89, align 4
  %inc90 = add nsw i32 %144, 1
  store i32 %inc90, i32* %arrayidx89, align 4
  %idxprom91 = sext i32 %inc90 to i64
  %145 = load i32*, i32** @occb2ptr, align 8
  %arrayidx92 = getelementptr inbounds i32, i32* %145, i64 %idxprom91
  store i32 %142, i32* %arrayidx92, align 4
  br label %if.end.93

if.end.93:                                        ; preds = %for.end.82, %if.end
  %146 = load i32, i32* %ax.addr, align 4
  %147 = load %struct.cellbox*, %struct.cellbox** %acellptr, align 8
  %xcenter94 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %147, i32 0, i32 2
  store i32 %146, i32* %xcenter94, align 4
  %148 = load i32, i32* %ay.addr, align 4
  %149 = load %struct.cellbox*, %struct.cellbox** %acellptr, align 8
  %ycenter95 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %149, i32 0, i32 3
  store i32 %148, i32* %ycenter95, align 4
  %150 = load i32, i32* %bx.addr, align 4
  %151 = load %struct.cellbox*, %struct.cellbox** %bcellptr, align 8
  %xcenter96 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %151, i32 0, i32 2
  store i32 %150, i32* %xcenter96, align 4
  %152 = load i32, i32* %by.addr, align 4
  %153 = load %struct.cellbox*, %struct.cellbox** %bcellptr, align 8
  %ycenter97 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %153, i32 0, i32 3
  store i32 %152, i32* %ycenter97, align 4
  %154 = load i32, i32* %cost, align 4
  store i32 %154, i32* @funccost, align 4
  %155 = load i32, i32* %newpenalty, align 4
  store i32 %155, i32* @penalty, align 4
  store i32 1, i32* %retval
  br label %return

if.else:                                          ; preds = %lor.lhs.false
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.else, %if.end.93
  %156 = load i32, i32* %retval
  ret i32 %156
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
