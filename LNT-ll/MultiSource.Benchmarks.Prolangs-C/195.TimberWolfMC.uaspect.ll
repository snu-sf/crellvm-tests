; ModuleID = './MultiSource.Benchmarks.Prolangs-C/195.TimberWolfMC.uaspect.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cellbox = type { i8*, i32, i32, i32, [9 x i32], i32, i32, i32, i32, i32, i32, i32, double, double, double, double, double, i32, i32, %struct.contentbox*, %struct.uncombox*, [8 x %struct.tilebox*], %struct.sidebox* }
%struct.contentbox = type { i32, i32, i32, i32, i32 }
%struct.uncombox = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.tilebox = type { %struct.tilebox*, double, double, double, double, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.termbox*, %struct.locbox* }
%struct.termbox = type { %struct.termbox*, i32, i32, i32, i32, i32 }
%struct.locbox = type { i32, i32, i32, i32 }
%struct.sidebox = type { i32, i32 }
%struct.termnets = type { i32, %struct.netbox* }
%struct.netbox = type { %struct.netbox*, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dimbox = type { %struct.netbox*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, double, double, i8* }

@cellarray = external global %struct.cellbox**, align 8
@penalty = external global i32, align 4
@overlap = external global i32 (...)*, align 8
@binY = external global i32, align 4
@binX = external global i32, align 4
@blockarray = external global i32***, align 8
@occa1ptr = external global i32*, align 8
@overlapx = external global i32 (...)*, align 8
@occa2ptr = external global i32*, align 8
@termarray = external global %struct.termnets**, align 8
@netarray = external global %struct.dimbox**, align 8
@funccost = external global i32, align 4
@T = external global double, align 8
@randVar = external global i32, align 4

; Function Attrs: nounwind uwtable
define i32 @uaspect(i32 %a, double %newAspect) #0 {
entry:
  %retval = alloca i32, align 4
  %a.addr = alloca i32, align 4
  %newAspect.addr = alloca double, align 8
  %acellptr = alloca %struct.cellbox*, align 8
  %ptr = alloca %struct.cellbox*, align 8
  %tmptr = alloca %struct.termnets*, align 8
  %atileptr = alloca %struct.tilebox*, align 8
  %tptr = alloca %struct.tilebox*, align 8
  %tptr0 = alloca %struct.tilebox*, align 8
  %tileptr1 = alloca %struct.tilebox*, align 8
  %termptr = alloca %struct.termbox*, align 8
  %atermptr = alloca %struct.termbox*, align 8
  %tmptr1 = alloca %struct.termbox*, align 8
  %tmptr0 = alloca %struct.termbox*, align 8
  %UCptr = alloca %struct.uncombox*, align 8
  %SLptr = alloca %struct.locbox*, align 8
  %siteptr = alloca %struct.locbox*, align 8
  %siteptr0 = alloca %struct.locbox*, align 8
  %tm = alloca i32, align 4
  %site = alloca i32, align 4
  %length = alloca i32, align 4
  %height = alloca i32, align 4
  %orient = alloca i32, align 4
  %aorient = alloca i32, align 4
  %cost = alloca i32, align 4
  %newpenalty = alloca i32, align 4
  %tilenum = alloca i32, align 4
  %termnum = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %i = alloca i32, align 4
  %axcenter = alloca i32, align 4
  %aycenter = alloca i32, align 4
  %Hdiv2 = alloca i32, align 4
  %Wdiv2 = alloca i32, align 4
  %oleft = alloca i32, align 4
  %oright = alloca i32, align 4
  %obottom = alloca i32, align 4
  %otop = alloca i32, align 4
  %aspFactor = alloca double, align 8
  %val = alloca double, align 8
  store i32 %a, i32* %a.addr, align 4
  store double %newAspect, double* %newAspect.addr, align 8
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
  %orient1 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %7, i32 0, i32 5
  %8 = load i32, i32* %orient1, align 4
  store i32 %8, i32* %aorient, align 4
  %9 = load i32, i32* %aorient, align 4
  %idxprom2 = sext i32 %9 to i64
  %10 = load %struct.cellbox*, %struct.cellbox** %acellptr, align 8
  %config = getelementptr inbounds %struct.cellbox, %struct.cellbox* %10, i32 0, i32 21
  %arrayidx3 = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %config, i32 0, i64 %idxprom2
  %11 = load %struct.tilebox*, %struct.tilebox** %arrayidx3, align 8
  store %struct.tilebox* %11, %struct.tilebox** %atileptr, align 8
  %12 = load %struct.tilebox*, %struct.tilebox** %atileptr, align 8
  %termptr4 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %12, i32 0, i32 17
  %13 = load %struct.termbox*, %struct.termbox** %termptr4, align 8
  store %struct.termbox* %13, %struct.termbox** %atermptr, align 8
  %14 = load %struct.tilebox*, %struct.tilebox** %atileptr, align 8
  %oleft5 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %14, i32 0, i32 13
  %15 = load i32, i32* %oleft5, align 4
  store i32 %15, i32* %oleft, align 4
  %16 = load %struct.tilebox*, %struct.tilebox** %atileptr, align 8
  %oright6 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %16, i32 0, i32 14
  %17 = load i32, i32* %oright6, align 4
  store i32 %17, i32* %oright, align 4
  %18 = load %struct.tilebox*, %struct.tilebox** %atileptr, align 8
  %obottom7 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %18, i32 0, i32 15
  %19 = load i32, i32* %obottom7, align 4
  store i32 %19, i32* %obottom, align 4
  %20 = load %struct.tilebox*, %struct.tilebox** %atileptr, align 8
  %otop8 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %20, i32 0, i32 16
  %21 = load i32, i32* %otop8, align 4
  store i32 %21, i32* %otop, align 4
  %22 = load %struct.cellbox*, %struct.cellbox** %acellptr, align 8
  %unComTerms = getelementptr inbounds %struct.cellbox, %struct.cellbox* %22, i32 0, i32 20
  %23 = load %struct.uncombox*, %struct.uncombox** %unComTerms, align 8
  store %struct.uncombox* %23, %struct.uncombox** %UCptr, align 8
  %24 = load %struct.tilebox*, %struct.tilebox** %atileptr, align 8
  %siteLocArray = getelementptr inbounds %struct.tilebox, %struct.tilebox* %24, i32 0, i32 18
  %25 = load %struct.locbox*, %struct.locbox** %siteLocArray, align 8
  store %struct.locbox* %25, %struct.locbox** %SLptr, align 8
  %26 = load i32, i32* %aorient, align 4
  %cmp = icmp sle i32 %26, 3
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %27 = load double, double* %newAspect.addr, align 8
  %28 = load %struct.cellbox*, %struct.cellbox** %acellptr, align 8
  %aspectO = getelementptr inbounds %struct.cellbox, %struct.cellbox* %28, i32 0, i32 14
  %29 = load double, double* %aspectO, align 8
  %div = fdiv double %27, %29
  %call = call double @sqrt(double %div) #3
  store double %call, double* %aspFactor, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %30 = load %struct.cellbox*, %struct.cellbox** %acellptr, align 8
  %aspectO9 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %30, i32 0, i32 14
  %31 = load double, double* %aspectO9, align 8
  %32 = load double, double* %newAspect.addr, align 8
  %div10 = fdiv double %31, %32
  %call11 = call double @sqrt(double %div10) #3
  store double %call11, double* %aspFactor, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %33 = load i32, i32* %otop, align 4
  %34 = load i32, i32* %obottom, align 4
  %sub = sub nsw i32 %33, %34
  %conv = sitofp i32 %sub to double
  %35 = load double, double* %aspFactor, align 8
  %mul = fmul double %conv, %35
  store double %mul, double* %val, align 8
  %36 = load double, double* %val, align 8
  %37 = load double, double* %val, align 8
  %conv12 = fptosi double %37 to i32
  %conv13 = sitofp i32 %conv12 to double
  %sub14 = fsub double %36, %conv13
  %cmp15 = fcmp oge double %sub14, 5.000000e-01
  br i1 %cmp15, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %38 = load double, double* %val, align 8
  %conv17 = fptosi double %38 to i32
  %add = add nsw i32 %conv17, 1
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %39 = load double, double* %val, align 8
  %conv18 = fptosi double %39 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %add, %cond.true ], [ %conv18, %cond.false ]
  %div19 = sdiv i32 %cond, 2
  store i32 %div19, i32* %Hdiv2, align 4
  %40 = load i32, i32* %oright, align 4
  %41 = load i32, i32* %oleft, align 4
  %sub20 = sub nsw i32 %40, %41
  %conv21 = sitofp i32 %sub20 to double
  %42 = load double, double* %aspFactor, align 8
  %div22 = fdiv double %conv21, %42
  store double %div22, double* %val, align 8
  %43 = load double, double* %val, align 8
  %44 = load double, double* %val, align 8
  %conv23 = fptosi double %44 to i32
  %conv24 = sitofp i32 %conv23 to double
  %sub25 = fsub double %43, %conv24
  %cmp26 = fcmp oge double %sub25, 5.000000e-01
  br i1 %cmp26, label %cond.true.28, label %cond.false.31

cond.true.28:                                     ; preds = %cond.end
  %45 = load double, double* %val, align 8
  %conv29 = fptosi double %45 to i32
  %add30 = add nsw i32 %conv29, 1
  br label %cond.end.33

cond.false.31:                                    ; preds = %cond.end
  %46 = load double, double* %val, align 8
  %conv32 = fptosi double %46 to i32
  br label %cond.end.33

cond.end.33:                                      ; preds = %cond.false.31, %cond.true.28
  %cond34 = phi i32 [ %add30, %cond.true.28 ], [ %conv32, %cond.false.31 ]
  %div35 = sdiv i32 %cond34, 2
  store i32 %div35, i32* %Wdiv2, align 4
  %47 = load i32, i32* @penalty, align 4
  store i32 %47, i32* %newpenalty, align 4
  %48 = load i32 (...)*, i32 (...)** @overlap, align 8
  %49 = load i32, i32* %a.addr, align 4
  %50 = load i32, i32* %axcenter, align 4
  %51 = load i32, i32* %aycenter, align 4
  %52 = load i32, i32* %aorient, align 4
  %callee.knr.cast = bitcast i32 (...)* %48 to i32 (i32, i32, i32, i32, i32, i32, i32, ...)*
  %call36 = call i32 (i32, i32, i32, i32, i32, i32, i32, ...) %callee.knr.cast(i32 %49, i32 %50, i32 %51, i32 %52, i32 0, i32 1, i32 0)
  %53 = load i32, i32* %newpenalty, align 4
  %sub37 = sub nsw i32 %53, %call36
  store i32 %sub37, i32* %newpenalty, align 4
  %54 = load i32, i32* @binY, align 4
  %idxprom38 = sext i32 %54 to i64
  %55 = load i32, i32* @binX, align 4
  %idxprom39 = sext i32 %55 to i64
  %56 = load i32***, i32**** @blockarray, align 8
  %arrayidx40 = getelementptr inbounds i32**, i32*** %56, i64 %idxprom39
  %57 = load i32**, i32*** %arrayidx40, align 8
  %arrayidx41 = getelementptr inbounds i32*, i32** %57, i64 %idxprom38
  %58 = load i32*, i32** %arrayidx41, align 8
  store i32* %58, i32** @occa1ptr, align 8
  %59 = load i32 (...)*, i32 (...)** @overlapx, align 8
  %60 = load i32, i32* %a.addr, align 4
  %61 = load i32, i32* %oleft, align 4
  %62 = load i32, i32* %obottom, align 4
  %63 = load i32, i32* %Wdiv2, align 4
  %64 = load i32, i32* %Hdiv2, align 4
  %65 = load double, double* %aspFactor, align 8
  %callee.knr.cast42 = bitcast i32 (...)* %59 to i32 (i32, i32, i32, i32, i32, double, ...)*
  %call43 = call i32 (i32, i32, i32, i32, i32, double, ...) %callee.knr.cast42(i32 %60, i32 %61, i32 %62, i32 %63, i32 %64, double %65)
  %66 = load i32, i32* %newpenalty, align 4
  %add44 = add nsw i32 %66, %call43
  store i32 %add44, i32* %newpenalty, align 4
  %67 = load i32, i32* @binY, align 4
  %idxprom45 = sext i32 %67 to i64
  %68 = load i32, i32* @binX, align 4
  %idxprom46 = sext i32 %68 to i64
  %69 = load i32***, i32**** @blockarray, align 8
  %arrayidx47 = getelementptr inbounds i32**, i32*** %69, i64 %idxprom46
  %70 = load i32**, i32*** %arrayidx47, align 8
  %arrayidx48 = getelementptr inbounds i32*, i32** %70, i64 %idxprom45
  %71 = load i32*, i32** %arrayidx48, align 8
  store i32* %71, i32** @occa2ptr, align 8
  %72 = load %struct.termbox*, %struct.termbox** %atermptr, align 8
  store %struct.termbox* %72, %struct.termbox** %termptr, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end.33
  %73 = load %struct.termbox*, %struct.termbox** %termptr, align 8
  %cmp49 = icmp ne %struct.termbox* %73, null
  br i1 %cmp49, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %74 = load %struct.termbox*, %struct.termbox** %termptr, align 8
  %oxpos = getelementptr inbounds %struct.termbox, %struct.termbox* %74, i32 0, i32 3
  %75 = load i32, i32* %oxpos, align 4
  %76 = load i32, i32* %oleft, align 4
  %sub51 = sub nsw i32 %75, %76
  %conv52 = sitofp i32 %sub51 to double
  %77 = load double, double* %aspFactor, align 8
  %div53 = fdiv double %conv52, %77
  store double %div53, double* %val, align 8
  %78 = load i32, i32* %axcenter, align 4
  %79 = load double, double* %val, align 8
  %80 = load double, double* %val, align 8
  %conv54 = fptosi double %80 to i32
  %conv55 = sitofp i32 %conv54 to double
  %sub56 = fsub double %79, %conv55
  %cmp57 = fcmp oge double %sub56, 5.000000e-01
  br i1 %cmp57, label %cond.true.59, label %cond.false.62

cond.true.59:                                     ; preds = %for.body
  %81 = load double, double* %val, align 8
  %conv60 = fptosi double %81 to i32
  %add61 = add nsw i32 %conv60, 1
  br label %cond.end.64

cond.false.62:                                    ; preds = %for.body
  %82 = load double, double* %val, align 8
  %conv63 = fptosi double %82 to i32
  br label %cond.end.64

cond.end.64:                                      ; preds = %cond.false.62, %cond.true.59
  %cond65 = phi i32 [ %add61, %cond.true.59 ], [ %conv63, %cond.false.62 ]
  %add66 = add nsw i32 %78, %cond65
  %83 = load i32, i32* %Wdiv2, align 4
  %sub67 = sub nsw i32 %add66, %83
  store i32 %sub67, i32* %x, align 4
  %84 = load %struct.termbox*, %struct.termbox** %termptr, align 8
  %oypos = getelementptr inbounds %struct.termbox, %struct.termbox* %84, i32 0, i32 4
  %85 = load i32, i32* %oypos, align 4
  %86 = load i32, i32* %obottom, align 4
  %sub68 = sub nsw i32 %85, %86
  %conv69 = sitofp i32 %sub68 to double
  %87 = load double, double* %aspFactor, align 8
  %mul70 = fmul double %conv69, %87
  store double %mul70, double* %val, align 8
  %88 = load i32, i32* %aycenter, align 4
  %89 = load double, double* %val, align 8
  %90 = load double, double* %val, align 8
  %conv71 = fptosi double %90 to i32
  %conv72 = sitofp i32 %conv71 to double
  %sub73 = fsub double %89, %conv72
  %cmp74 = fcmp oge double %sub73, 5.000000e-01
  br i1 %cmp74, label %cond.true.76, label %cond.false.79

cond.true.76:                                     ; preds = %cond.end.64
  %91 = load double, double* %val, align 8
  %conv77 = fptosi double %91 to i32
  %add78 = add nsw i32 %conv77, 1
  br label %cond.end.81

cond.false.79:                                    ; preds = %cond.end.64
  %92 = load double, double* %val, align 8
  %conv80 = fptosi double %92 to i32
  br label %cond.end.81

cond.end.81:                                      ; preds = %cond.false.79, %cond.true.76
  %cond82 = phi i32 [ %add78, %cond.true.76 ], [ %conv80, %cond.false.79 ]
  %add83 = add nsw i32 %88, %cond82
  %93 = load i32, i32* %Hdiv2, align 4
  %sub84 = sub nsw i32 %add83, %93
  store i32 %sub84, i32* %y, align 4
  %94 = load %struct.termbox*, %struct.termbox** %termptr, align 8
  %terminal = getelementptr inbounds %struct.termbox, %struct.termbox* %94, i32 0, i32 5
  %95 = load i32, i32* %terminal, align 4
  %idxprom85 = sext i32 %95 to i64
  %96 = load %struct.termnets**, %struct.termnets*** @termarray, align 8
  %arrayidx86 = getelementptr inbounds %struct.termnets*, %struct.termnets** %96, i64 %idxprom85
  %97 = load %struct.termnets*, %struct.termnets** %arrayidx86, align 8
  store %struct.termnets* %97, %struct.termnets** %tmptr, align 8
  %98 = load %struct.termnets*, %struct.termnets** %tmptr, align 8
  %net = getelementptr inbounds %struct.termnets, %struct.termnets* %98, i32 0, i32 0
  %99 = load i32, i32* %net, align 4
  %idxprom87 = sext i32 %99 to i64
  %100 = load %struct.dimbox**, %struct.dimbox*** @netarray, align 8
  %arrayidx88 = getelementptr inbounds %struct.dimbox*, %struct.dimbox** %100, i64 %idxprom87
  %101 = load %struct.dimbox*, %struct.dimbox** %arrayidx88, align 8
  %flag = getelementptr inbounds %struct.dimbox, %struct.dimbox* %101, i32 0, i32 7
  store i32 1, i32* %flag, align 4
  %102 = load %struct.termnets*, %struct.termnets** %tmptr, align 8
  %termptr89 = getelementptr inbounds %struct.termnets, %struct.termnets* %102, i32 0, i32 1
  %103 = load %struct.netbox*, %struct.netbox** %termptr89, align 8
  %flag90 = getelementptr inbounds %struct.netbox, %struct.netbox* %103, i32 0, i32 6
  store i32 1, i32* %flag90, align 4
  %104 = load i32, i32* %x, align 4
  %105 = load %struct.termnets*, %struct.termnets** %tmptr, align 8
  %termptr91 = getelementptr inbounds %struct.termnets, %struct.termnets* %105, i32 0, i32 1
  %106 = load %struct.netbox*, %struct.netbox** %termptr91, align 8
  %newx = getelementptr inbounds %struct.netbox, %struct.netbox* %106, i32 0, i32 3
  store i32 %104, i32* %newx, align 4
  %107 = load i32, i32* %y, align 4
  %108 = load %struct.termnets*, %struct.termnets** %tmptr, align 8
  %termptr92 = getelementptr inbounds %struct.termnets, %struct.termnets* %108, i32 0, i32 1
  %109 = load %struct.netbox*, %struct.netbox** %termptr92, align 8
  %newy = getelementptr inbounds %struct.netbox, %struct.netbox* %109, i32 0, i32 4
  store i32 %107, i32* %newy, align 4
  br label %for.inc

for.inc:                                          ; preds = %cond.end.81
  %110 = load %struct.termbox*, %struct.termbox** %termptr, align 8
  %nextterm = getelementptr inbounds %struct.termbox, %struct.termbox* %110, i32 0, i32 0
  %111 = load %struct.termbox*, %struct.termbox** %nextterm, align 8
  store %struct.termbox* %111, %struct.termbox** %termptr, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 1, i32* %tm, align 4
  br label %for.cond.93

for.cond.93:                                      ; preds = %for.inc.158, %for.end
  %112 = load i32, i32* %tm, align 4
  %113 = load %struct.cellbox*, %struct.cellbox** %acellptr, align 8
  %numUnComTerms = getelementptr inbounds %struct.cellbox, %struct.cellbox* %113, i32 0, i32 18
  %114 = load i32, i32* %numUnComTerms, align 4
  %cmp94 = icmp sle i32 %112, %114
  br i1 %cmp94, label %for.body.96, label %for.end.159

for.body.96:                                      ; preds = %for.cond.93
  %115 = load i32, i32* %tm, align 4
  %idxprom97 = sext i32 %115 to i64
  %116 = load %struct.uncombox*, %struct.uncombox** %UCptr, align 8
  %arrayidx98 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %116, i64 %idxprom97
  %site99 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %arrayidx98, i32 0, i32 1
  %117 = load i32, i32* %site99, align 4
  %idxprom100 = sext i32 %117 to i64
  %118 = load %struct.locbox*, %struct.locbox** %SLptr, align 8
  %arrayidx101 = getelementptr inbounds %struct.locbox, %struct.locbox* %118, i64 %idxprom100
  %oxpos102 = getelementptr inbounds %struct.locbox, %struct.locbox* %arrayidx101, i32 0, i32 2
  %119 = load i32, i32* %oxpos102, align 4
  %120 = load i32, i32* %oleft, align 4
  %sub103 = sub nsw i32 %119, %120
  %conv104 = sitofp i32 %sub103 to double
  %121 = load double, double* %aspFactor, align 8
  %div105 = fdiv double %conv104, %121
  store double %div105, double* %val, align 8
  %122 = load i32, i32* %axcenter, align 4
  %123 = load double, double* %val, align 8
  %124 = load double, double* %val, align 8
  %conv106 = fptosi double %124 to i32
  %conv107 = sitofp i32 %conv106 to double
  %sub108 = fsub double %123, %conv107
  %cmp109 = fcmp oge double %sub108, 5.000000e-01
  br i1 %cmp109, label %cond.true.111, label %cond.false.114

cond.true.111:                                    ; preds = %for.body.96
  %125 = load double, double* %val, align 8
  %conv112 = fptosi double %125 to i32
  %add113 = add nsw i32 %conv112, 1
  br label %cond.end.116

cond.false.114:                                   ; preds = %for.body.96
  %126 = load double, double* %val, align 8
  %conv115 = fptosi double %126 to i32
  br label %cond.end.116

cond.end.116:                                     ; preds = %cond.false.114, %cond.true.111
  %cond117 = phi i32 [ %add113, %cond.true.111 ], [ %conv115, %cond.false.114 ]
  %add118 = add nsw i32 %122, %cond117
  %127 = load i32, i32* %Wdiv2, align 4
  %sub119 = sub nsw i32 %add118, %127
  store i32 %sub119, i32* %x, align 4
  %128 = load i32, i32* %tm, align 4
  %idxprom120 = sext i32 %128 to i64
  %129 = load %struct.uncombox*, %struct.uncombox** %UCptr, align 8
  %arrayidx121 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %129, i64 %idxprom120
  %site122 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %arrayidx121, i32 0, i32 1
  %130 = load i32, i32* %site122, align 4
  %idxprom123 = sext i32 %130 to i64
  %131 = load %struct.locbox*, %struct.locbox** %SLptr, align 8
  %arrayidx124 = getelementptr inbounds %struct.locbox, %struct.locbox* %131, i64 %idxprom123
  %oypos125 = getelementptr inbounds %struct.locbox, %struct.locbox* %arrayidx124, i32 0, i32 3
  %132 = load i32, i32* %oypos125, align 4
  %133 = load i32, i32* %obottom, align 4
  %sub126 = sub nsw i32 %132, %133
  %conv127 = sitofp i32 %sub126 to double
  %134 = load double, double* %aspFactor, align 8
  %mul128 = fmul double %conv127, %134
  store double %mul128, double* %val, align 8
  %135 = load i32, i32* %aycenter, align 4
  %136 = load double, double* %val, align 8
  %137 = load double, double* %val, align 8
  %conv129 = fptosi double %137 to i32
  %conv130 = sitofp i32 %conv129 to double
  %sub131 = fsub double %136, %conv130
  %cmp132 = fcmp oge double %sub131, 5.000000e-01
  br i1 %cmp132, label %cond.true.134, label %cond.false.137

cond.true.134:                                    ; preds = %cond.end.116
  %138 = load double, double* %val, align 8
  %conv135 = fptosi double %138 to i32
  %add136 = add nsw i32 %conv135, 1
  br label %cond.end.139

cond.false.137:                                   ; preds = %cond.end.116
  %139 = load double, double* %val, align 8
  %conv138 = fptosi double %139 to i32
  br label %cond.end.139

cond.end.139:                                     ; preds = %cond.false.137, %cond.true.134
  %cond140 = phi i32 [ %add136, %cond.true.134 ], [ %conv138, %cond.false.137 ]
  %add141 = add nsw i32 %135, %cond140
  %140 = load i32, i32* %Hdiv2, align 4
  %sub142 = sub nsw i32 %add141, %140
  store i32 %sub142, i32* %y, align 4
  %141 = load i32, i32* %tm, align 4
  %idxprom143 = sext i32 %141 to i64
  %142 = load %struct.uncombox*, %struct.uncombox** %UCptr, align 8
  %arrayidx144 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %142, i64 %idxprom143
  %terminal145 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %arrayidx144, i32 0, i32 0
  %143 = load i32, i32* %terminal145, align 4
  %idxprom146 = sext i32 %143 to i64
  %144 = load %struct.termnets**, %struct.termnets*** @termarray, align 8
  %arrayidx147 = getelementptr inbounds %struct.termnets*, %struct.termnets** %144, i64 %idxprom146
  %145 = load %struct.termnets*, %struct.termnets** %arrayidx147, align 8
  store %struct.termnets* %145, %struct.termnets** %tmptr, align 8
  %146 = load %struct.termnets*, %struct.termnets** %tmptr, align 8
  %net148 = getelementptr inbounds %struct.termnets, %struct.termnets* %146, i32 0, i32 0
  %147 = load i32, i32* %net148, align 4
  %idxprom149 = sext i32 %147 to i64
  %148 = load %struct.dimbox**, %struct.dimbox*** @netarray, align 8
  %arrayidx150 = getelementptr inbounds %struct.dimbox*, %struct.dimbox** %148, i64 %idxprom149
  %149 = load %struct.dimbox*, %struct.dimbox** %arrayidx150, align 8
  %flag151 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %149, i32 0, i32 7
  store i32 1, i32* %flag151, align 4
  %150 = load %struct.termnets*, %struct.termnets** %tmptr, align 8
  %termptr152 = getelementptr inbounds %struct.termnets, %struct.termnets* %150, i32 0, i32 1
  %151 = load %struct.netbox*, %struct.netbox** %termptr152, align 8
  %flag153 = getelementptr inbounds %struct.netbox, %struct.netbox* %151, i32 0, i32 6
  store i32 1, i32* %flag153, align 4
  %152 = load i32, i32* %x, align 4
  %153 = load %struct.termnets*, %struct.termnets** %tmptr, align 8
  %termptr154 = getelementptr inbounds %struct.termnets, %struct.termnets* %153, i32 0, i32 1
  %154 = load %struct.netbox*, %struct.netbox** %termptr154, align 8
  %newx155 = getelementptr inbounds %struct.netbox, %struct.netbox* %154, i32 0, i32 3
  store i32 %152, i32* %newx155, align 4
  %155 = load i32, i32* %y, align 4
  %156 = load %struct.termnets*, %struct.termnets** %tmptr, align 8
  %termptr156 = getelementptr inbounds %struct.termnets, %struct.termnets* %156, i32 0, i32 1
  %157 = load %struct.netbox*, %struct.netbox** %termptr156, align 8
  %newy157 = getelementptr inbounds %struct.netbox, %struct.netbox* %157, i32 0, i32 4
  store i32 %155, i32* %newy157, align 4
  br label %for.inc.158

for.inc.158:                                      ; preds = %cond.end.139
  %158 = load i32, i32* %tm, align 4
  %inc = add nsw i32 %158, 1
  store i32 %inc, i32* %tm, align 4
  br label %for.cond.93

for.end.159:                                      ; preds = %for.cond.93
  %159 = load i32, i32* @funccost, align 4
  store i32 %159, i32* %cost, align 4
  %160 = load %struct.termbox*, %struct.termbox** %atermptr, align 8
  %call160 = call i32 @ufixnet(%struct.termbox* %160)
  %161 = load i32, i32* %cost, align 4
  %add161 = add nsw i32 %161, %call160
  store i32 %add161, i32* %cost, align 4
  %162 = load %struct.cellbox*, %struct.cellbox** %acellptr, align 8
  %call162 = call i32 @usoftnet(%struct.cellbox* %162)
  %163 = load i32, i32* %cost, align 4
  %add163 = add nsw i32 %163, %call162
  store i32 %add163, i32* %cost, align 4
  %164 = load i32, i32* %cost, align 4
  %165 = load i32, i32* %newpenalty, align 4
  %add164 = add nsw i32 %164, %165
  %166 = load i32, i32* @funccost, align 4
  %167 = load i32, i32* @penalty, align 4
  %add165 = add nsw i32 %166, %167
  %cmp166 = icmp sle i32 %add164, %add165
  br i1 %cmp166, label %if.then.180, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.end.159
  %168 = load i32, i32* @funccost, align 4
  %169 = load i32, i32* @penalty, align 4
  %add168 = add nsw i32 %168, %169
  %170 = load i32, i32* %cost, align 4
  %sub169 = sub nsw i32 %add168, %170
  %171 = load i32, i32* %newpenalty, align 4
  %sub170 = sub nsw i32 %sub169, %171
  %conv171 = sitofp i32 %sub170 to double
  %172 = load double, double* @T, align 8
  %div172 = fdiv double %conv171, %172
  %call173 = call double @exp(double %div172) #3
  %173 = load i32, i32* @randVar, align 4
  %mul174 = mul nsw i32 %173, 1103515245
  %add175 = add nsw i32 %mul174, 12345
  store i32 %add175, i32* @randVar, align 4
  %and = and i32 %add175, 2147483647
  %conv176 = sitofp i32 %and to double
  %div177 = fdiv double %conv176, 0x41DFFFFFFFC00000
  %cmp178 = fcmp ogt double %call173, %div177
  br i1 %cmp178, label %if.then.180, label %if.else.1123

if.then.180:                                      ; preds = %lor.lhs.false, %for.end.159
  %174 = load %struct.termbox*, %struct.termbox** %atermptr, align 8
  call void @ufixpin(%struct.termbox* %174, i32 1, i32 0, i32 0)
  %175 = load %struct.cellbox*, %struct.cellbox** %acellptr, align 8
  call void @usoftpin(%struct.cellbox* %175, i32 1, i32 0, i32 0, i32 0)
  %176 = load i32*, i32** @occa1ptr, align 8
  %177 = load i32*, i32** @occa2ptr, align 8
  %cmp181 = icmp ne i32* %176, %177
  br i1 %cmp181, label %if.then.183, label %if.end.202

if.then.183:                                      ; preds = %if.then.180
  store i32 1, i32* %i, align 4
  br label %for.cond.184

for.cond.184:                                     ; preds = %for.inc.190, %if.then.183
  %178 = load i32, i32* %i, align 4
  %idxprom185 = sext i32 %178 to i64
  %179 = load i32*, i32** @occa1ptr, align 8
  %arrayidx186 = getelementptr inbounds i32, i32* %179, i64 %idxprom185
  %180 = load i32, i32* %arrayidx186, align 4
  %181 = load i32, i32* %a.addr, align 4
  %cmp187 = icmp ne i32 %180, %181
  br i1 %cmp187, label %for.body.189, label %for.end.192

for.body.189:                                     ; preds = %for.cond.184
  br label %for.inc.190

for.inc.190:                                      ; preds = %for.body.189
  %182 = load i32, i32* %i, align 4
  %inc191 = add nsw i32 %182, 1
  store i32 %inc191, i32* %i, align 4
  br label %for.cond.184

for.end.192:                                      ; preds = %for.cond.184
  %183 = load i32*, i32** @occa1ptr, align 8
  %arrayidx193 = getelementptr inbounds i32, i32* %183, i64 0
  %184 = load i32, i32* %arrayidx193, align 4
  %dec = add nsw i32 %184, -1
  store i32 %dec, i32* %arrayidx193, align 4
  %idxprom194 = sext i32 %184 to i64
  %185 = load i32*, i32** @occa1ptr, align 8
  %arrayidx195 = getelementptr inbounds i32, i32* %185, i64 %idxprom194
  %186 = load i32, i32* %arrayidx195, align 4
  %187 = load i32, i32* %i, align 4
  %idxprom196 = sext i32 %187 to i64
  %188 = load i32*, i32** @occa1ptr, align 8
  %arrayidx197 = getelementptr inbounds i32, i32* %188, i64 %idxprom196
  store i32 %186, i32* %arrayidx197, align 4
  %189 = load i32, i32* %a.addr, align 4
  %190 = load i32*, i32** @occa2ptr, align 8
  %arrayidx198 = getelementptr inbounds i32, i32* %190, i64 0
  %191 = load i32, i32* %arrayidx198, align 4
  %inc199 = add nsw i32 %191, 1
  store i32 %inc199, i32* %arrayidx198, align 4
  %idxprom200 = sext i32 %inc199 to i64
  %192 = load i32*, i32** @occa2ptr, align 8
  %arrayidx201 = getelementptr inbounds i32, i32* %192, i64 %idxprom200
  store i32 %189, i32* %arrayidx201, align 4
  br label %if.end.202

if.end.202:                                       ; preds = %for.end.192, %if.then.180
  %193 = load %struct.tilebox*, %struct.tilebox** %atileptr, align 8
  store %struct.tilebox* %193, %struct.tilebox** %tileptr1, align 8
  br label %for.cond.203

for.cond.203:                                     ; preds = %for.inc.275, %if.end.202
  %194 = load %struct.tilebox*, %struct.tilebox** %tileptr1, align 8
  %cmp204 = icmp ne %struct.tilebox* %194, null
  br i1 %cmp204, label %for.body.206, label %for.end.276

for.body.206:                                     ; preds = %for.cond.203
  %195 = load %struct.tilebox*, %struct.tilebox** %tileptr1, align 8
  %oleft207 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %195, i32 0, i32 13
  %196 = load i32, i32* %oleft207, align 4
  %197 = load i32, i32* %oleft, align 4
  %sub208 = sub nsw i32 %196, %197
  %conv209 = sitofp i32 %sub208 to double
  %198 = load double, double* %aspFactor, align 8
  %div210 = fdiv double %conv209, %198
  store double %div210, double* %val, align 8
  %199 = load double, double* %val, align 8
  %200 = load double, double* %val, align 8
  %conv211 = fptosi double %200 to i32
  %conv212 = sitofp i32 %conv211 to double
  %sub213 = fsub double %199, %conv212
  %cmp214 = fcmp oge double %sub213, 5.000000e-01
  br i1 %cmp214, label %cond.true.216, label %cond.false.219

cond.true.216:                                    ; preds = %for.body.206
  %201 = load double, double* %val, align 8
  %conv217 = fptosi double %201 to i32
  %add218 = add nsw i32 %conv217, 1
  br label %cond.end.221

cond.false.219:                                   ; preds = %for.body.206
  %202 = load double, double* %val, align 8
  %conv220 = fptosi double %202 to i32
  br label %cond.end.221

cond.end.221:                                     ; preds = %cond.false.219, %cond.true.216
  %cond222 = phi i32 [ %add218, %cond.true.216 ], [ %conv220, %cond.false.219 ]
  %203 = load i32, i32* %Wdiv2, align 4
  %sub223 = sub nsw i32 %cond222, %203
  %204 = load %struct.tilebox*, %struct.tilebox** %tileptr1, align 8
  %left = getelementptr inbounds %struct.tilebox, %struct.tilebox* %204, i32 0, i32 9
  store i32 %sub223, i32* %left, align 4
  %205 = load %struct.tilebox*, %struct.tilebox** %tileptr1, align 8
  %oright224 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %205, i32 0, i32 14
  %206 = load i32, i32* %oright224, align 4
  %207 = load i32, i32* %oleft, align 4
  %sub225 = sub nsw i32 %206, %207
  %conv226 = sitofp i32 %sub225 to double
  %208 = load double, double* %aspFactor, align 8
  %div227 = fdiv double %conv226, %208
  store double %div227, double* %val, align 8
  %209 = load double, double* %val, align 8
  %210 = load double, double* %val, align 8
  %conv228 = fptosi double %210 to i32
  %conv229 = sitofp i32 %conv228 to double
  %sub230 = fsub double %209, %conv229
  %cmp231 = fcmp oge double %sub230, 5.000000e-01
  br i1 %cmp231, label %cond.true.233, label %cond.false.236

cond.true.233:                                    ; preds = %cond.end.221
  %211 = load double, double* %val, align 8
  %conv234 = fptosi double %211 to i32
  %add235 = add nsw i32 %conv234, 1
  br label %cond.end.238

cond.false.236:                                   ; preds = %cond.end.221
  %212 = load double, double* %val, align 8
  %conv237 = fptosi double %212 to i32
  br label %cond.end.238

cond.end.238:                                     ; preds = %cond.false.236, %cond.true.233
  %cond239 = phi i32 [ %add235, %cond.true.233 ], [ %conv237, %cond.false.236 ]
  %213 = load i32, i32* %Wdiv2, align 4
  %sub240 = sub nsw i32 %cond239, %213
  %214 = load %struct.tilebox*, %struct.tilebox** %tileptr1, align 8
  %right = getelementptr inbounds %struct.tilebox, %struct.tilebox* %214, i32 0, i32 10
  store i32 %sub240, i32* %right, align 4
  %215 = load %struct.tilebox*, %struct.tilebox** %tileptr1, align 8
  %obottom241 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %215, i32 0, i32 15
  %216 = load i32, i32* %obottom241, align 4
  %217 = load i32, i32* %obottom, align 4
  %sub242 = sub nsw i32 %216, %217
  %conv243 = sitofp i32 %sub242 to double
  %218 = load double, double* %aspFactor, align 8
  %mul244 = fmul double %conv243, %218
  store double %mul244, double* %val, align 8
  %219 = load double, double* %val, align 8
  %220 = load double, double* %val, align 8
  %conv245 = fptosi double %220 to i32
  %conv246 = sitofp i32 %conv245 to double
  %sub247 = fsub double %219, %conv246
  %cmp248 = fcmp oge double %sub247, 5.000000e-01
  br i1 %cmp248, label %cond.true.250, label %cond.false.253

cond.true.250:                                    ; preds = %cond.end.238
  %221 = load double, double* %val, align 8
  %conv251 = fptosi double %221 to i32
  %add252 = add nsw i32 %conv251, 1
  br label %cond.end.255

cond.false.253:                                   ; preds = %cond.end.238
  %222 = load double, double* %val, align 8
  %conv254 = fptosi double %222 to i32
  br label %cond.end.255

cond.end.255:                                     ; preds = %cond.false.253, %cond.true.250
  %cond256 = phi i32 [ %add252, %cond.true.250 ], [ %conv254, %cond.false.253 ]
  %223 = load i32, i32* %Hdiv2, align 4
  %sub257 = sub nsw i32 %cond256, %223
  %224 = load %struct.tilebox*, %struct.tilebox** %tileptr1, align 8
  %bottom = getelementptr inbounds %struct.tilebox, %struct.tilebox* %224, i32 0, i32 11
  store i32 %sub257, i32* %bottom, align 4
  %225 = load %struct.tilebox*, %struct.tilebox** %tileptr1, align 8
  %otop258 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %225, i32 0, i32 16
  %226 = load i32, i32* %otop258, align 4
  %227 = load i32, i32* %obottom, align 4
  %sub259 = sub nsw i32 %226, %227
  %conv260 = sitofp i32 %sub259 to double
  %228 = load double, double* %aspFactor, align 8
  %mul261 = fmul double %conv260, %228
  store double %mul261, double* %val, align 8
  %229 = load double, double* %val, align 8
  %230 = load double, double* %val, align 8
  %conv262 = fptosi double %230 to i32
  %conv263 = sitofp i32 %conv262 to double
  %sub264 = fsub double %229, %conv263
  %cmp265 = fcmp oge double %sub264, 5.000000e-01
  br i1 %cmp265, label %cond.true.267, label %cond.false.270

cond.true.267:                                    ; preds = %cond.end.255
  %231 = load double, double* %val, align 8
  %conv268 = fptosi double %231 to i32
  %add269 = add nsw i32 %conv268, 1
  br label %cond.end.272

cond.false.270:                                   ; preds = %cond.end.255
  %232 = load double, double* %val, align 8
  %conv271 = fptosi double %232 to i32
  br label %cond.end.272

cond.end.272:                                     ; preds = %cond.false.270, %cond.true.267
  %cond273 = phi i32 [ %add269, %cond.true.267 ], [ %conv271, %cond.false.270 ]
  %233 = load i32, i32* %Hdiv2, align 4
  %sub274 = sub nsw i32 %cond273, %233
  %234 = load %struct.tilebox*, %struct.tilebox** %tileptr1, align 8
  %top = getelementptr inbounds %struct.tilebox, %struct.tilebox* %234, i32 0, i32 12
  store i32 %sub274, i32* %top, align 4
  br label %for.inc.275

for.inc.275:                                      ; preds = %cond.end.272
  %235 = load %struct.tilebox*, %struct.tilebox** %tileptr1, align 8
  %nexttile = getelementptr inbounds %struct.tilebox, %struct.tilebox* %235, i32 0, i32 0
  %236 = load %struct.tilebox*, %struct.tilebox** %nexttile, align 8
  store %struct.tilebox* %236, %struct.tilebox** %tileptr1, align 8
  br label %for.cond.203

for.end.276:                                      ; preds = %for.cond.203
  %237 = load %struct.termbox*, %struct.termbox** %atermptr, align 8
  store %struct.termbox* %237, %struct.termbox** %termptr, align 8
  br label %for.cond.277

for.cond.277:                                     ; preds = %for.inc.315, %for.end.276
  %238 = load %struct.termbox*, %struct.termbox** %termptr, align 8
  %cmp278 = icmp ne %struct.termbox* %238, null
  br i1 %cmp278, label %for.body.280, label %for.end.317

for.body.280:                                     ; preds = %for.cond.277
  %239 = load %struct.termbox*, %struct.termbox** %termptr, align 8
  %oxpos281 = getelementptr inbounds %struct.termbox, %struct.termbox* %239, i32 0, i32 3
  %240 = load i32, i32* %oxpos281, align 4
  %241 = load i32, i32* %oleft, align 4
  %sub282 = sub nsw i32 %240, %241
  %conv283 = sitofp i32 %sub282 to double
  %242 = load double, double* %aspFactor, align 8
  %div284 = fdiv double %conv283, %242
  store double %div284, double* %val, align 8
  %243 = load double, double* %val, align 8
  %244 = load double, double* %val, align 8
  %conv285 = fptosi double %244 to i32
  %conv286 = sitofp i32 %conv285 to double
  %sub287 = fsub double %243, %conv286
  %cmp288 = fcmp oge double %sub287, 5.000000e-01
  br i1 %cmp288, label %cond.true.290, label %cond.false.293

cond.true.290:                                    ; preds = %for.body.280
  %245 = load double, double* %val, align 8
  %conv291 = fptosi double %245 to i32
  %add292 = add nsw i32 %conv291, 1
  br label %cond.end.295

cond.false.293:                                   ; preds = %for.body.280
  %246 = load double, double* %val, align 8
  %conv294 = fptosi double %246 to i32
  br label %cond.end.295

cond.end.295:                                     ; preds = %cond.false.293, %cond.true.290
  %cond296 = phi i32 [ %add292, %cond.true.290 ], [ %conv294, %cond.false.293 ]
  %247 = load i32, i32* %Wdiv2, align 4
  %sub297 = sub nsw i32 %cond296, %247
  %248 = load %struct.termbox*, %struct.termbox** %termptr, align 8
  %xpos = getelementptr inbounds %struct.termbox, %struct.termbox* %248, i32 0, i32 1
  store i32 %sub297, i32* %xpos, align 4
  %249 = load %struct.termbox*, %struct.termbox** %termptr, align 8
  %oypos298 = getelementptr inbounds %struct.termbox, %struct.termbox* %249, i32 0, i32 4
  %250 = load i32, i32* %oypos298, align 4
  %251 = load i32, i32* %obottom, align 4
  %sub299 = sub nsw i32 %250, %251
  %conv300 = sitofp i32 %sub299 to double
  %252 = load double, double* %aspFactor, align 8
  %mul301 = fmul double %conv300, %252
  store double %mul301, double* %val, align 8
  %253 = load double, double* %val, align 8
  %254 = load double, double* %val, align 8
  %conv302 = fptosi double %254 to i32
  %conv303 = sitofp i32 %conv302 to double
  %sub304 = fsub double %253, %conv303
  %cmp305 = fcmp oge double %sub304, 5.000000e-01
  br i1 %cmp305, label %cond.true.307, label %cond.false.310

cond.true.307:                                    ; preds = %cond.end.295
  %255 = load double, double* %val, align 8
  %conv308 = fptosi double %255 to i32
  %add309 = add nsw i32 %conv308, 1
  br label %cond.end.312

cond.false.310:                                   ; preds = %cond.end.295
  %256 = load double, double* %val, align 8
  %conv311 = fptosi double %256 to i32
  br label %cond.end.312

cond.end.312:                                     ; preds = %cond.false.310, %cond.true.307
  %cond313 = phi i32 [ %add309, %cond.true.307 ], [ %conv311, %cond.false.310 ]
  %257 = load i32, i32* %Hdiv2, align 4
  %sub314 = sub nsw i32 %cond313, %257
  %258 = load %struct.termbox*, %struct.termbox** %termptr, align 8
  %ypos = getelementptr inbounds %struct.termbox, %struct.termbox* %258, i32 0, i32 2
  store i32 %sub314, i32* %ypos, align 4
  br label %for.inc.315

for.inc.315:                                      ; preds = %cond.end.312
  %259 = load %struct.termbox*, %struct.termbox** %termptr, align 8
  %nextterm316 = getelementptr inbounds %struct.termbox, %struct.termbox* %259, i32 0, i32 0
  %260 = load %struct.termbox*, %struct.termbox** %nextterm316, align 8
  store %struct.termbox* %260, %struct.termbox** %termptr, align 8
  br label %for.cond.277

for.end.317:                                      ; preds = %for.cond.277
  store i32 1, i32* %site, align 4
  br label %for.cond.318

for.cond.318:                                     ; preds = %for.inc.366, %for.end.317
  %261 = load i32, i32* %site, align 4
  %262 = load %struct.cellbox*, %struct.cellbox** %acellptr, align 8
  %numsites = getelementptr inbounds %struct.cellbox, %struct.cellbox* %262, i32 0, i32 17
  %263 = load i32, i32* %numsites, align 4
  %cmp319 = icmp sle i32 %261, %263
  br i1 %cmp319, label %for.body.321, label %for.end.368

for.body.321:                                     ; preds = %for.cond.318
  %264 = load i32, i32* %site, align 4
  %idxprom322 = sext i32 %264 to i64
  %265 = load %struct.locbox*, %struct.locbox** %SLptr, align 8
  %arrayidx323 = getelementptr inbounds %struct.locbox, %struct.locbox* %265, i64 %idxprom322
  %oxpos324 = getelementptr inbounds %struct.locbox, %struct.locbox* %arrayidx323, i32 0, i32 2
  %266 = load i32, i32* %oxpos324, align 4
  %267 = load i32, i32* %oleft, align 4
  %sub325 = sub nsw i32 %266, %267
  %conv326 = sitofp i32 %sub325 to double
  %268 = load double, double* %aspFactor, align 8
  %div327 = fdiv double %conv326, %268
  store double %div327, double* %val, align 8
  %269 = load double, double* %val, align 8
  %270 = load double, double* %val, align 8
  %conv328 = fptosi double %270 to i32
  %conv329 = sitofp i32 %conv328 to double
  %sub330 = fsub double %269, %conv329
  %cmp331 = fcmp oge double %sub330, 5.000000e-01
  br i1 %cmp331, label %cond.true.333, label %cond.false.336

cond.true.333:                                    ; preds = %for.body.321
  %271 = load double, double* %val, align 8
  %conv334 = fptosi double %271 to i32
  %add335 = add nsw i32 %conv334, 1
  br label %cond.end.338

cond.false.336:                                   ; preds = %for.body.321
  %272 = load double, double* %val, align 8
  %conv337 = fptosi double %272 to i32
  br label %cond.end.338

cond.end.338:                                     ; preds = %cond.false.336, %cond.true.333
  %cond339 = phi i32 [ %add335, %cond.true.333 ], [ %conv337, %cond.false.336 ]
  %273 = load i32, i32* %Wdiv2, align 4
  %sub340 = sub nsw i32 %cond339, %273
  %274 = load i32, i32* %site, align 4
  %idxprom341 = sext i32 %274 to i64
  %275 = load %struct.locbox*, %struct.locbox** %SLptr, align 8
  %arrayidx342 = getelementptr inbounds %struct.locbox, %struct.locbox* %275, i64 %idxprom341
  %xpos343 = getelementptr inbounds %struct.locbox, %struct.locbox* %arrayidx342, i32 0, i32 0
  store i32 %sub340, i32* %xpos343, align 4
  %276 = load i32, i32* %site, align 4
  %idxprom344 = sext i32 %276 to i64
  %277 = load %struct.locbox*, %struct.locbox** %SLptr, align 8
  %arrayidx345 = getelementptr inbounds %struct.locbox, %struct.locbox* %277, i64 %idxprom344
  %oypos346 = getelementptr inbounds %struct.locbox, %struct.locbox* %arrayidx345, i32 0, i32 3
  %278 = load i32, i32* %oypos346, align 4
  %279 = load i32, i32* %obottom, align 4
  %sub347 = sub nsw i32 %278, %279
  %conv348 = sitofp i32 %sub347 to double
  %280 = load double, double* %aspFactor, align 8
  %mul349 = fmul double %conv348, %280
  store double %mul349, double* %val, align 8
  %281 = load double, double* %val, align 8
  %282 = load double, double* %val, align 8
  %conv350 = fptosi double %282 to i32
  %conv351 = sitofp i32 %conv350 to double
  %sub352 = fsub double %281, %conv351
  %cmp353 = fcmp oge double %sub352, 5.000000e-01
  br i1 %cmp353, label %cond.true.355, label %cond.false.358

cond.true.355:                                    ; preds = %cond.end.338
  %283 = load double, double* %val, align 8
  %conv356 = fptosi double %283 to i32
  %add357 = add nsw i32 %conv356, 1
  br label %cond.end.360

cond.false.358:                                   ; preds = %cond.end.338
  %284 = load double, double* %val, align 8
  %conv359 = fptosi double %284 to i32
  br label %cond.end.360

cond.end.360:                                     ; preds = %cond.false.358, %cond.true.355
  %cond361 = phi i32 [ %add357, %cond.true.355 ], [ %conv359, %cond.false.358 ]
  %285 = load i32, i32* %Hdiv2, align 4
  %sub362 = sub nsw i32 %cond361, %285
  %286 = load i32, i32* %site, align 4
  %idxprom363 = sext i32 %286 to i64
  %287 = load %struct.locbox*, %struct.locbox** %SLptr, align 8
  %arrayidx364 = getelementptr inbounds %struct.locbox, %struct.locbox* %287, i64 %idxprom363
  %ypos365 = getelementptr inbounds %struct.locbox, %struct.locbox* %arrayidx364, i32 0, i32 1
  store i32 %sub362, i32* %ypos365, align 4
  br label %for.inc.366

for.inc.366:                                      ; preds = %cond.end.360
  %288 = load i32, i32* %site, align 4
  %inc367 = add nsw i32 %288, 1
  store i32 %inc367, i32* %site, align 4
  br label %for.cond.318

for.end.368:                                      ; preds = %for.cond.318
  %289 = load %struct.cellbox*, %struct.cellbox** %acellptr, align 8
  store %struct.cellbox* %289, %struct.cellbox** %ptr, align 8
  %290 = load i32, i32* %aorient, align 4
  %cmp369 = icmp ne i32 %290, 0
  br i1 %cmp369, label %if.then.371, label %if.end.722

if.then.371:                                      ; preds = %for.end.368
  %291 = load %struct.tilebox*, %struct.tilebox** %atileptr, align 8
  %top372 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %291, i32 0, i32 12
  %292 = load i32, i32* %top372, align 4
  %293 = load %struct.tilebox*, %struct.tilebox** %atileptr, align 8
  %bottom373 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %293, i32 0, i32 11
  %294 = load i32, i32* %bottom373, align 4
  %sub374 = sub nsw i32 %292, %294
  store i32 %sub374, i32* %height, align 4
  %295 = load %struct.tilebox*, %struct.tilebox** %atileptr, align 8
  %right375 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %295, i32 0, i32 10
  %296 = load i32, i32* %right375, align 4
  %297 = load %struct.tilebox*, %struct.tilebox** %atileptr, align 8
  %left376 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %297, i32 0, i32 9
  %298 = load i32, i32* %left376, align 4
  %sub377 = sub nsw i32 %296, %298
  store i32 %sub377, i32* %length, align 4
  %299 = load i32, i32* %aorient, align 4
  switch i32 %299, label %sw.epilog [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.378
    i32 3, label %sw.bb.379
    i32 4, label %sw.bb.380
    i32 5, label %sw.bb.381
    i32 6, label %sw.bb.382
    i32 7, label %sw.bb.383
  ]

sw.bb:                                            ; preds = %if.then.371
  store i32 1, i32* %orient, align 4
  br label %sw.epilog

sw.bb.378:                                        ; preds = %if.then.371
  store i32 2, i32* %orient, align 4
  br label %sw.epilog

sw.bb.379:                                        ; preds = %if.then.371
  store i32 3, i32* %orient, align 4
  br label %sw.epilog

sw.bb.380:                                        ; preds = %if.then.371
  store i32 4, i32* %orient, align 4
  br label %sw.epilog

sw.bb.381:                                        ; preds = %if.then.371
  store i32 5, i32* %orient, align 4
  br label %sw.epilog

sw.bb.382:                                        ; preds = %if.then.371
  store i32 7, i32* %orient, align 4
  br label %sw.epilog

sw.bb.383:                                        ; preds = %if.then.371
  store i32 6, i32* %orient, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then.371, %sw.bb.383, %sw.bb.382, %sw.bb.381, %sw.bb.380, %sw.bb.379, %sw.bb.378, %sw.bb
  %300 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %config384 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %300, i32 0, i32 21
  %arrayidx385 = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %config384, i32 0, i64 0
  %301 = load %struct.tilebox*, %struct.tilebox** %arrayidx385, align 8
  store %struct.tilebox* %301, %struct.tilebox** %tptr0, align 8
  %302 = load %struct.tilebox*, %struct.tilebox** %atileptr, align 8
  store %struct.tilebox* %302, %struct.tilebox** %tptr, align 8
  %303 = load %struct.tilebox*, %struct.tilebox** %tptr, align 8
  %left386 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %303, i32 0, i32 9
  %304 = load i32, i32* %left386, align 4
  %305 = load %struct.tilebox*, %struct.tilebox** %tptr0, align 8
  %left387 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %305, i32 0, i32 9
  store i32 %304, i32* %left387, align 4
  %306 = load %struct.tilebox*, %struct.tilebox** %tptr, align 8
  %right388 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %306, i32 0, i32 10
  %307 = load i32, i32* %right388, align 4
  %308 = load %struct.tilebox*, %struct.tilebox** %tptr0, align 8
  %right389 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %308, i32 0, i32 10
  store i32 %307, i32* %right389, align 4
  %309 = load %struct.tilebox*, %struct.tilebox** %tptr, align 8
  %bottom390 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %309, i32 0, i32 11
  %310 = load i32, i32* %bottom390, align 4
  %311 = load %struct.tilebox*, %struct.tilebox** %tptr0, align 8
  %bottom391 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %311, i32 0, i32 11
  store i32 %310, i32* %bottom391, align 4
  %312 = load %struct.tilebox*, %struct.tilebox** %tptr, align 8
  %top392 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %312, i32 0, i32 12
  %313 = load i32, i32* %top392, align 4
  %314 = load %struct.tilebox*, %struct.tilebox** %tptr0, align 8
  %top393 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %314, i32 0, i32 12
  store i32 %313, i32* %top393, align 4
  %315 = load i32, i32* %orient, align 4
  call void @move(i32 %315)
  %316 = load %struct.tilebox*, %struct.tilebox** %tptr0, align 8
  %left394 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %316, i32 0, i32 9
  %317 = load %struct.tilebox*, %struct.tilebox** %tptr0, align 8
  %bottom395 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %317, i32 0, i32 11
  %318 = load %struct.tilebox*, %struct.tilebox** %tptr0, align 8
  %right396 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %318, i32 0, i32 10
  %319 = load %struct.tilebox*, %struct.tilebox** %tptr0, align 8
  %top397 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %319, i32 0, i32 12
  call void @rect(i32* %left394, i32* %bottom395, i32* %right396, i32* %top397)
  %320 = load i32, i32* %height, align 4
  %rem = srem i32 %320, 2
  %cmp398 = icmp ne i32 %rem, 0
  br i1 %cmp398, label %land.lhs.true, label %lor.lhs.false.405

land.lhs.true:                                    ; preds = %sw.epilog
  %321 = load i32, i32* %orient, align 4
  %cmp400 = icmp eq i32 %321, 4
  br i1 %cmp400, label %if.then.415, label %lor.lhs.false.402

lor.lhs.false.402:                                ; preds = %land.lhs.true
  %322 = load i32, i32* %orient, align 4
  %cmp403 = icmp eq i32 %322, 6
  br i1 %cmp403, label %if.then.415, label %lor.lhs.false.405

lor.lhs.false.405:                                ; preds = %lor.lhs.false.402, %sw.epilog
  %323 = load i32, i32* %length, align 4
  %rem406 = srem i32 %323, 2
  %cmp407 = icmp ne i32 %rem406, 0
  br i1 %cmp407, label %land.lhs.true.409, label %if.end.420

land.lhs.true.409:                                ; preds = %lor.lhs.false.405
  %324 = load i32, i32* %orient, align 4
  %cmp410 = icmp eq i32 %324, 2
  br i1 %cmp410, label %if.then.415, label %lor.lhs.false.412

lor.lhs.false.412:                                ; preds = %land.lhs.true.409
  %325 = load i32, i32* %orient, align 4
  %cmp413 = icmp eq i32 %325, 3
  br i1 %cmp413, label %if.then.415, label %if.end.420

if.then.415:                                      ; preds = %lor.lhs.false.412, %land.lhs.true.409, %lor.lhs.false.402, %land.lhs.true
  %326 = load %struct.tilebox*, %struct.tilebox** %tptr0, align 8
  %left416 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %326, i32 0, i32 9
  %327 = load i32, i32* %left416, align 4
  %inc417 = add nsw i32 %327, 1
  store i32 %inc417, i32* %left416, align 4
  %328 = load %struct.tilebox*, %struct.tilebox** %tptr0, align 8
  %right418 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %328, i32 0, i32 10
  %329 = load i32, i32* %right418, align 4
  %inc419 = add nsw i32 %329, 1
  store i32 %inc419, i32* %right418, align 4
  br label %if.end.420

if.end.420:                                       ; preds = %if.then.415, %lor.lhs.false.412, %lor.lhs.false.405
  %330 = load i32, i32* %height, align 4
  %rem421 = srem i32 %330, 2
  %cmp422 = icmp ne i32 %rem421, 0
  br i1 %cmp422, label %land.lhs.true.424, label %lor.lhs.false.430

land.lhs.true.424:                                ; preds = %if.end.420
  %331 = load i32, i32* %orient, align 4
  %cmp425 = icmp eq i32 %331, 1
  br i1 %cmp425, label %if.then.440, label %lor.lhs.false.427

lor.lhs.false.427:                                ; preds = %land.lhs.true.424
  %332 = load i32, i32* %orient, align 4
  %cmp428 = icmp eq i32 %332, 3
  br i1 %cmp428, label %if.then.440, label %lor.lhs.false.430

lor.lhs.false.430:                                ; preds = %lor.lhs.false.427, %if.end.420
  %333 = load i32, i32* %length, align 4
  %rem431 = srem i32 %333, 2
  %cmp432 = icmp ne i32 %rem431, 0
  br i1 %cmp432, label %land.lhs.true.434, label %if.end.445

land.lhs.true.434:                                ; preds = %lor.lhs.false.430
  %334 = load i32, i32* %orient, align 4
  %cmp435 = icmp eq i32 %334, 4
  br i1 %cmp435, label %if.then.440, label %lor.lhs.false.437

lor.lhs.false.437:                                ; preds = %land.lhs.true.434
  %335 = load i32, i32* %orient, align 4
  %cmp438 = icmp eq i32 %335, 7
  br i1 %cmp438, label %if.then.440, label %if.end.445

if.then.440:                                      ; preds = %lor.lhs.false.437, %land.lhs.true.434, %lor.lhs.false.427, %land.lhs.true.424
  %336 = load %struct.tilebox*, %struct.tilebox** %tptr0, align 8
  %bottom441 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %336, i32 0, i32 11
  %337 = load i32, i32* %bottom441, align 4
  %inc442 = add nsw i32 %337, 1
  store i32 %inc442, i32* %bottom441, align 4
  %338 = load %struct.tilebox*, %struct.tilebox** %tptr0, align 8
  %top443 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %338, i32 0, i32 12
  %339 = load i32, i32* %top443, align 4
  %inc444 = add nsw i32 %339, 1
  store i32 %inc444, i32* %top443, align 4
  br label %if.end.445

if.end.445:                                       ; preds = %if.then.440, %lor.lhs.false.437, %lor.lhs.false.430
  store i32 1, i32* %tilenum, align 4
  br label %for.cond.446

for.cond.446:                                     ; preds = %for.inc.514, %if.end.445
  %340 = load i32, i32* %tilenum, align 4
  %341 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %numtiles = getelementptr inbounds %struct.cellbox, %struct.cellbox* %341, i32 0, i32 6
  %342 = load i32, i32* %numtiles, align 4
  %cmp447 = icmp sle i32 %340, %342
  br i1 %cmp447, label %for.body.449, label %for.end.516

for.body.449:                                     ; preds = %for.cond.446
  %343 = load %struct.tilebox*, %struct.tilebox** %tptr0, align 8
  %nexttile450 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %343, i32 0, i32 0
  %344 = load %struct.tilebox*, %struct.tilebox** %nexttile450, align 8
  store %struct.tilebox* %344, %struct.tilebox** %tptr0, align 8
  %345 = load %struct.tilebox*, %struct.tilebox** %tptr, align 8
  %nexttile451 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %345, i32 0, i32 0
  %346 = load %struct.tilebox*, %struct.tilebox** %nexttile451, align 8
  store %struct.tilebox* %346, %struct.tilebox** %tptr, align 8
  %347 = load %struct.tilebox*, %struct.tilebox** %tptr, align 8
  %left452 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %347, i32 0, i32 9
  %348 = load i32, i32* %left452, align 4
  %349 = load %struct.tilebox*, %struct.tilebox** %tptr0, align 8
  %left453 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %349, i32 0, i32 9
  store i32 %348, i32* %left453, align 4
  %350 = load %struct.tilebox*, %struct.tilebox** %tptr, align 8
  %right454 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %350, i32 0, i32 10
  %351 = load i32, i32* %right454, align 4
  %352 = load %struct.tilebox*, %struct.tilebox** %tptr0, align 8
  %right455 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %352, i32 0, i32 10
  store i32 %351, i32* %right455, align 4
  %353 = load %struct.tilebox*, %struct.tilebox** %tptr, align 8
  %bottom456 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %353, i32 0, i32 11
  %354 = load i32, i32* %bottom456, align 4
  %355 = load %struct.tilebox*, %struct.tilebox** %tptr0, align 8
  %bottom457 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %355, i32 0, i32 11
  store i32 %354, i32* %bottom457, align 4
  %356 = load %struct.tilebox*, %struct.tilebox** %tptr, align 8
  %top458 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %356, i32 0, i32 12
  %357 = load i32, i32* %top458, align 4
  %358 = load %struct.tilebox*, %struct.tilebox** %tptr0, align 8
  %top459 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %358, i32 0, i32 12
  store i32 %357, i32* %top459, align 4
  %359 = load i32, i32* %orient, align 4
  call void @move(i32 %359)
  %360 = load %struct.tilebox*, %struct.tilebox** %tptr0, align 8
  %left460 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %360, i32 0, i32 9
  %361 = load %struct.tilebox*, %struct.tilebox** %tptr0, align 8
  %bottom461 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %361, i32 0, i32 11
  %362 = load %struct.tilebox*, %struct.tilebox** %tptr0, align 8
  %right462 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %362, i32 0, i32 10
  %363 = load %struct.tilebox*, %struct.tilebox** %tptr0, align 8
  %top463 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %363, i32 0, i32 12
  call void @rect(i32* %left460, i32* %bottom461, i32* %right462, i32* %top463)
  %364 = load i32, i32* %height, align 4
  %rem464 = srem i32 %364, 2
  %cmp465 = icmp ne i32 %rem464, 0
  br i1 %cmp465, label %land.lhs.true.467, label %lor.lhs.false.473

land.lhs.true.467:                                ; preds = %for.body.449
  %365 = load i32, i32* %orient, align 4
  %cmp468 = icmp eq i32 %365, 4
  br i1 %cmp468, label %if.then.483, label %lor.lhs.false.470

lor.lhs.false.470:                                ; preds = %land.lhs.true.467
  %366 = load i32, i32* %orient, align 4
  %cmp471 = icmp eq i32 %366, 6
  br i1 %cmp471, label %if.then.483, label %lor.lhs.false.473

lor.lhs.false.473:                                ; preds = %lor.lhs.false.470, %for.body.449
  %367 = load i32, i32* %length, align 4
  %rem474 = srem i32 %367, 2
  %cmp475 = icmp ne i32 %rem474, 0
  br i1 %cmp475, label %land.lhs.true.477, label %if.end.488

land.lhs.true.477:                                ; preds = %lor.lhs.false.473
  %368 = load i32, i32* %orient, align 4
  %cmp478 = icmp eq i32 %368, 2
  br i1 %cmp478, label %if.then.483, label %lor.lhs.false.480

lor.lhs.false.480:                                ; preds = %land.lhs.true.477
  %369 = load i32, i32* %orient, align 4
  %cmp481 = icmp eq i32 %369, 3
  br i1 %cmp481, label %if.then.483, label %if.end.488

if.then.483:                                      ; preds = %lor.lhs.false.480, %land.lhs.true.477, %lor.lhs.false.470, %land.lhs.true.467
  %370 = load %struct.tilebox*, %struct.tilebox** %tptr0, align 8
  %left484 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %370, i32 0, i32 9
  %371 = load i32, i32* %left484, align 4
  %inc485 = add nsw i32 %371, 1
  store i32 %inc485, i32* %left484, align 4
  %372 = load %struct.tilebox*, %struct.tilebox** %tptr0, align 8
  %right486 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %372, i32 0, i32 10
  %373 = load i32, i32* %right486, align 4
  %inc487 = add nsw i32 %373, 1
  store i32 %inc487, i32* %right486, align 4
  br label %if.end.488

if.end.488:                                       ; preds = %if.then.483, %lor.lhs.false.480, %lor.lhs.false.473
  %374 = load i32, i32* %height, align 4
  %rem489 = srem i32 %374, 2
  %cmp490 = icmp ne i32 %rem489, 0
  br i1 %cmp490, label %land.lhs.true.492, label %lor.lhs.false.498

land.lhs.true.492:                                ; preds = %if.end.488
  %375 = load i32, i32* %orient, align 4
  %cmp493 = icmp eq i32 %375, 1
  br i1 %cmp493, label %if.then.508, label %lor.lhs.false.495

lor.lhs.false.495:                                ; preds = %land.lhs.true.492
  %376 = load i32, i32* %orient, align 4
  %cmp496 = icmp eq i32 %376, 3
  br i1 %cmp496, label %if.then.508, label %lor.lhs.false.498

lor.lhs.false.498:                                ; preds = %lor.lhs.false.495, %if.end.488
  %377 = load i32, i32* %length, align 4
  %rem499 = srem i32 %377, 2
  %cmp500 = icmp ne i32 %rem499, 0
  br i1 %cmp500, label %land.lhs.true.502, label %if.end.513

land.lhs.true.502:                                ; preds = %lor.lhs.false.498
  %378 = load i32, i32* %orient, align 4
  %cmp503 = icmp eq i32 %378, 4
  br i1 %cmp503, label %if.then.508, label %lor.lhs.false.505

lor.lhs.false.505:                                ; preds = %land.lhs.true.502
  %379 = load i32, i32* %orient, align 4
  %cmp506 = icmp eq i32 %379, 7
  br i1 %cmp506, label %if.then.508, label %if.end.513

if.then.508:                                      ; preds = %lor.lhs.false.505, %land.lhs.true.502, %lor.lhs.false.495, %land.lhs.true.492
  %380 = load %struct.tilebox*, %struct.tilebox** %tptr0, align 8
  %bottom509 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %380, i32 0, i32 11
  %381 = load i32, i32* %bottom509, align 4
  %inc510 = add nsw i32 %381, 1
  store i32 %inc510, i32* %bottom509, align 4
  %382 = load %struct.tilebox*, %struct.tilebox** %tptr0, align 8
  %top511 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %382, i32 0, i32 12
  %383 = load i32, i32* %top511, align 4
  %inc512 = add nsw i32 %383, 1
  store i32 %inc512, i32* %top511, align 4
  br label %if.end.513

if.end.513:                                       ; preds = %if.then.508, %lor.lhs.false.505, %lor.lhs.false.498
  br label %for.inc.514

for.inc.514:                                      ; preds = %if.end.513
  %384 = load i32, i32* %tilenum, align 4
  %inc515 = add nsw i32 %384, 1
  store i32 %inc515, i32* %tilenum, align 4
  br label %for.cond.446

for.end.516:                                      ; preds = %for.cond.446
  %385 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %numterms = getelementptr inbounds %struct.cellbox, %struct.cellbox* %385, i32 0, i32 8
  %386 = load i32, i32* %numterms, align 4
  %cmp517 = icmp ne i32 %386, 0
  br i1 %cmp517, label %if.then.519, label %if.end.637

if.then.519:                                      ; preds = %for.end.516
  %387 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %config520 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %387, i32 0, i32 21
  %arrayidx521 = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %config520, i32 0, i64 0
  %388 = load %struct.tilebox*, %struct.tilebox** %arrayidx521, align 8
  %termptr522 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %388, i32 0, i32 17
  %389 = load %struct.termbox*, %struct.termbox** %termptr522, align 8
  store %struct.termbox* %389, %struct.termbox** %tmptr0, align 8
  %390 = load %struct.termbox*, %struct.termbox** %atermptr, align 8
  store %struct.termbox* %390, %struct.termbox** %tmptr1, align 8
  %391 = load %struct.termbox*, %struct.termbox** %tmptr1, align 8
  %xpos523 = getelementptr inbounds %struct.termbox, %struct.termbox* %391, i32 0, i32 1
  %392 = load i32, i32* %xpos523, align 4
  %393 = load %struct.termbox*, %struct.termbox** %tmptr0, align 8
  %xpos524 = getelementptr inbounds %struct.termbox, %struct.termbox* %393, i32 0, i32 1
  store i32 %392, i32* %xpos524, align 4
  %394 = load %struct.termbox*, %struct.termbox** %tmptr1, align 8
  %ypos525 = getelementptr inbounds %struct.termbox, %struct.termbox* %394, i32 0, i32 2
  %395 = load i32, i32* %ypos525, align 4
  %396 = load %struct.termbox*, %struct.termbox** %tmptr0, align 8
  %ypos526 = getelementptr inbounds %struct.termbox, %struct.termbox* %396, i32 0, i32 2
  store i32 %395, i32* %ypos526, align 4
  %397 = load i32, i32* %orient, align 4
  call void @move(i32 %397)
  %398 = load %struct.termbox*, %struct.termbox** %tmptr0, align 8
  %xpos527 = getelementptr inbounds %struct.termbox, %struct.termbox* %398, i32 0, i32 1
  %399 = load %struct.termbox*, %struct.termbox** %tmptr0, align 8
  %ypos528 = getelementptr inbounds %struct.termbox, %struct.termbox* %399, i32 0, i32 2
  call void @point(i32* %xpos527, i32* %ypos528)
  %400 = load i32, i32* %height, align 4
  %rem529 = srem i32 %400, 2
  %cmp530 = icmp ne i32 %rem529, 0
  br i1 %cmp530, label %land.lhs.true.532, label %lor.lhs.false.538

land.lhs.true.532:                                ; preds = %if.then.519
  %401 = load i32, i32* %orient, align 4
  %cmp533 = icmp eq i32 %401, 4
  br i1 %cmp533, label %if.then.548, label %lor.lhs.false.535

lor.lhs.false.535:                                ; preds = %land.lhs.true.532
  %402 = load i32, i32* %orient, align 4
  %cmp536 = icmp eq i32 %402, 6
  br i1 %cmp536, label %if.then.548, label %lor.lhs.false.538

lor.lhs.false.538:                                ; preds = %lor.lhs.false.535, %if.then.519
  %403 = load i32, i32* %length, align 4
  %rem539 = srem i32 %403, 2
  %cmp540 = icmp ne i32 %rem539, 0
  br i1 %cmp540, label %land.lhs.true.542, label %if.end.551

land.lhs.true.542:                                ; preds = %lor.lhs.false.538
  %404 = load i32, i32* %orient, align 4
  %cmp543 = icmp eq i32 %404, 2
  br i1 %cmp543, label %if.then.548, label %lor.lhs.false.545

lor.lhs.false.545:                                ; preds = %land.lhs.true.542
  %405 = load i32, i32* %orient, align 4
  %cmp546 = icmp eq i32 %405, 3
  br i1 %cmp546, label %if.then.548, label %if.end.551

if.then.548:                                      ; preds = %lor.lhs.false.545, %land.lhs.true.542, %lor.lhs.false.535, %land.lhs.true.532
  %406 = load %struct.termbox*, %struct.termbox** %tmptr0, align 8
  %xpos549 = getelementptr inbounds %struct.termbox, %struct.termbox* %406, i32 0, i32 1
  %407 = load i32, i32* %xpos549, align 4
  %inc550 = add nsw i32 %407, 1
  store i32 %inc550, i32* %xpos549, align 4
  br label %if.end.551

if.end.551:                                       ; preds = %if.then.548, %lor.lhs.false.545, %lor.lhs.false.538
  %408 = load i32, i32* %height, align 4
  %rem552 = srem i32 %408, 2
  %cmp553 = icmp ne i32 %rem552, 0
  br i1 %cmp553, label %land.lhs.true.555, label %lor.lhs.false.561

land.lhs.true.555:                                ; preds = %if.end.551
  %409 = load i32, i32* %orient, align 4
  %cmp556 = icmp eq i32 %409, 1
  br i1 %cmp556, label %if.then.571, label %lor.lhs.false.558

lor.lhs.false.558:                                ; preds = %land.lhs.true.555
  %410 = load i32, i32* %orient, align 4
  %cmp559 = icmp eq i32 %410, 3
  br i1 %cmp559, label %if.then.571, label %lor.lhs.false.561

lor.lhs.false.561:                                ; preds = %lor.lhs.false.558, %if.end.551
  %411 = load i32, i32* %length, align 4
  %rem562 = srem i32 %411, 2
  %cmp563 = icmp ne i32 %rem562, 0
  br i1 %cmp563, label %land.lhs.true.565, label %if.end.574

land.lhs.true.565:                                ; preds = %lor.lhs.false.561
  %412 = load i32, i32* %orient, align 4
  %cmp566 = icmp eq i32 %412, 4
  br i1 %cmp566, label %if.then.571, label %lor.lhs.false.568

lor.lhs.false.568:                                ; preds = %land.lhs.true.565
  %413 = load i32, i32* %orient, align 4
  %cmp569 = icmp eq i32 %413, 7
  br i1 %cmp569, label %if.then.571, label %if.end.574

if.then.571:                                      ; preds = %lor.lhs.false.568, %land.lhs.true.565, %lor.lhs.false.558, %land.lhs.true.555
  %414 = load %struct.termbox*, %struct.termbox** %tmptr0, align 8
  %ypos572 = getelementptr inbounds %struct.termbox, %struct.termbox* %414, i32 0, i32 2
  %415 = load i32, i32* %ypos572, align 4
  %inc573 = add nsw i32 %415, 1
  store i32 %inc573, i32* %ypos572, align 4
  br label %if.end.574

if.end.574:                                       ; preds = %if.then.571, %lor.lhs.false.568, %lor.lhs.false.561
  store i32 2, i32* %termnum, align 4
  br label %for.cond.575

for.cond.575:                                     ; preds = %for.inc.634, %if.end.574
  %416 = load i32, i32* %termnum, align 4
  %417 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %numterms576 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %417, i32 0, i32 8
  %418 = load i32, i32* %numterms576, align 4
  %cmp577 = icmp sle i32 %416, %418
  br i1 %cmp577, label %for.body.579, label %for.end.636

for.body.579:                                     ; preds = %for.cond.575
  %419 = load %struct.termbox*, %struct.termbox** %tmptr0, align 8
  %nextterm580 = getelementptr inbounds %struct.termbox, %struct.termbox* %419, i32 0, i32 0
  %420 = load %struct.termbox*, %struct.termbox** %nextterm580, align 8
  store %struct.termbox* %420, %struct.termbox** %tmptr0, align 8
  %421 = load %struct.termbox*, %struct.termbox** %tmptr1, align 8
  %nextterm581 = getelementptr inbounds %struct.termbox, %struct.termbox* %421, i32 0, i32 0
  %422 = load %struct.termbox*, %struct.termbox** %nextterm581, align 8
  store %struct.termbox* %422, %struct.termbox** %tmptr1, align 8
  %423 = load %struct.termbox*, %struct.termbox** %tmptr1, align 8
  %xpos582 = getelementptr inbounds %struct.termbox, %struct.termbox* %423, i32 0, i32 1
  %424 = load i32, i32* %xpos582, align 4
  %425 = load %struct.termbox*, %struct.termbox** %tmptr0, align 8
  %xpos583 = getelementptr inbounds %struct.termbox, %struct.termbox* %425, i32 0, i32 1
  store i32 %424, i32* %xpos583, align 4
  %426 = load %struct.termbox*, %struct.termbox** %tmptr1, align 8
  %ypos584 = getelementptr inbounds %struct.termbox, %struct.termbox* %426, i32 0, i32 2
  %427 = load i32, i32* %ypos584, align 4
  %428 = load %struct.termbox*, %struct.termbox** %tmptr0, align 8
  %ypos585 = getelementptr inbounds %struct.termbox, %struct.termbox* %428, i32 0, i32 2
  store i32 %427, i32* %ypos585, align 4
  %429 = load i32, i32* %orient, align 4
  call void @move(i32 %429)
  %430 = load %struct.termbox*, %struct.termbox** %tmptr0, align 8
  %xpos586 = getelementptr inbounds %struct.termbox, %struct.termbox* %430, i32 0, i32 1
  %431 = load %struct.termbox*, %struct.termbox** %tmptr0, align 8
  %ypos587 = getelementptr inbounds %struct.termbox, %struct.termbox* %431, i32 0, i32 2
  call void @point(i32* %xpos586, i32* %ypos587)
  %432 = load i32, i32* %height, align 4
  %rem588 = srem i32 %432, 2
  %cmp589 = icmp ne i32 %rem588, 0
  br i1 %cmp589, label %land.lhs.true.591, label %lor.lhs.false.597

land.lhs.true.591:                                ; preds = %for.body.579
  %433 = load i32, i32* %orient, align 4
  %cmp592 = icmp eq i32 %433, 4
  br i1 %cmp592, label %if.then.607, label %lor.lhs.false.594

lor.lhs.false.594:                                ; preds = %land.lhs.true.591
  %434 = load i32, i32* %orient, align 4
  %cmp595 = icmp eq i32 %434, 6
  br i1 %cmp595, label %if.then.607, label %lor.lhs.false.597

lor.lhs.false.597:                                ; preds = %lor.lhs.false.594, %for.body.579
  %435 = load i32, i32* %length, align 4
  %rem598 = srem i32 %435, 2
  %cmp599 = icmp ne i32 %rem598, 0
  br i1 %cmp599, label %land.lhs.true.601, label %if.end.610

land.lhs.true.601:                                ; preds = %lor.lhs.false.597
  %436 = load i32, i32* %orient, align 4
  %cmp602 = icmp eq i32 %436, 2
  br i1 %cmp602, label %if.then.607, label %lor.lhs.false.604

lor.lhs.false.604:                                ; preds = %land.lhs.true.601
  %437 = load i32, i32* %orient, align 4
  %cmp605 = icmp eq i32 %437, 3
  br i1 %cmp605, label %if.then.607, label %if.end.610

if.then.607:                                      ; preds = %lor.lhs.false.604, %land.lhs.true.601, %lor.lhs.false.594, %land.lhs.true.591
  %438 = load %struct.termbox*, %struct.termbox** %tmptr0, align 8
  %xpos608 = getelementptr inbounds %struct.termbox, %struct.termbox* %438, i32 0, i32 1
  %439 = load i32, i32* %xpos608, align 4
  %inc609 = add nsw i32 %439, 1
  store i32 %inc609, i32* %xpos608, align 4
  br label %if.end.610

if.end.610:                                       ; preds = %if.then.607, %lor.lhs.false.604, %lor.lhs.false.597
  %440 = load i32, i32* %height, align 4
  %rem611 = srem i32 %440, 2
  %cmp612 = icmp ne i32 %rem611, 0
  br i1 %cmp612, label %land.lhs.true.614, label %lor.lhs.false.620

land.lhs.true.614:                                ; preds = %if.end.610
  %441 = load i32, i32* %orient, align 4
  %cmp615 = icmp eq i32 %441, 1
  br i1 %cmp615, label %if.then.630, label %lor.lhs.false.617

lor.lhs.false.617:                                ; preds = %land.lhs.true.614
  %442 = load i32, i32* %orient, align 4
  %cmp618 = icmp eq i32 %442, 3
  br i1 %cmp618, label %if.then.630, label %lor.lhs.false.620

lor.lhs.false.620:                                ; preds = %lor.lhs.false.617, %if.end.610
  %443 = load i32, i32* %length, align 4
  %rem621 = srem i32 %443, 2
  %cmp622 = icmp ne i32 %rem621, 0
  br i1 %cmp622, label %land.lhs.true.624, label %if.end.633

land.lhs.true.624:                                ; preds = %lor.lhs.false.620
  %444 = load i32, i32* %orient, align 4
  %cmp625 = icmp eq i32 %444, 4
  br i1 %cmp625, label %if.then.630, label %lor.lhs.false.627

lor.lhs.false.627:                                ; preds = %land.lhs.true.624
  %445 = load i32, i32* %orient, align 4
  %cmp628 = icmp eq i32 %445, 7
  br i1 %cmp628, label %if.then.630, label %if.end.633

if.then.630:                                      ; preds = %lor.lhs.false.627, %land.lhs.true.624, %lor.lhs.false.617, %land.lhs.true.614
  %446 = load %struct.termbox*, %struct.termbox** %tmptr0, align 8
  %ypos631 = getelementptr inbounds %struct.termbox, %struct.termbox* %446, i32 0, i32 2
  %447 = load i32, i32* %ypos631, align 4
  %inc632 = add nsw i32 %447, 1
  store i32 %inc632, i32* %ypos631, align 4
  br label %if.end.633

if.end.633:                                       ; preds = %if.then.630, %lor.lhs.false.627, %lor.lhs.false.620
  br label %for.inc.634

for.inc.634:                                      ; preds = %if.end.633
  %448 = load i32, i32* %termnum, align 4
  %inc635 = add nsw i32 %448, 1
  store i32 %inc635, i32* %termnum, align 4
  br label %for.cond.575

for.end.636:                                      ; preds = %for.cond.575
  br label %if.end.637

if.end.637:                                       ; preds = %for.end.636, %for.end.516
  %449 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %numsites638 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %449, i32 0, i32 17
  %450 = load i32, i32* %numsites638, align 4
  %cmp639 = icmp ne i32 %450, 0
  br i1 %cmp639, label %if.then.641, label %if.end.721

if.then.641:                                      ; preds = %if.end.637
  %451 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %config642 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %451, i32 0, i32 21
  %arrayidx643 = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %config642, i32 0, i64 0
  %452 = load %struct.tilebox*, %struct.tilebox** %arrayidx643, align 8
  %siteLocArray644 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %452, i32 0, i32 18
  %453 = load %struct.locbox*, %struct.locbox** %siteLocArray644, align 8
  store %struct.locbox* %453, %struct.locbox** %siteptr0, align 8
  %454 = load %struct.locbox*, %struct.locbox** %SLptr, align 8
  store %struct.locbox* %454, %struct.locbox** %siteptr, align 8
  store i32 1, i32* %site, align 4
  br label %for.cond.645

for.cond.645:                                     ; preds = %for.inc.718, %if.then.641
  %455 = load i32, i32* %site, align 4
  %456 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %numsites646 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %456, i32 0, i32 17
  %457 = load i32, i32* %numsites646, align 4
  %cmp647 = icmp sle i32 %455, %457
  br i1 %cmp647, label %for.body.649, label %for.end.720

for.body.649:                                     ; preds = %for.cond.645
  %458 = load i32, i32* %site, align 4
  %idxprom650 = sext i32 %458 to i64
  %459 = load %struct.locbox*, %struct.locbox** %siteptr, align 8
  %arrayidx651 = getelementptr inbounds %struct.locbox, %struct.locbox* %459, i64 %idxprom650
  %xpos652 = getelementptr inbounds %struct.locbox, %struct.locbox* %arrayidx651, i32 0, i32 0
  %460 = load i32, i32* %xpos652, align 4
  %461 = load i32, i32* %site, align 4
  %idxprom653 = sext i32 %461 to i64
  %462 = load %struct.locbox*, %struct.locbox** %siteptr0, align 8
  %arrayidx654 = getelementptr inbounds %struct.locbox, %struct.locbox* %462, i64 %idxprom653
  %xpos655 = getelementptr inbounds %struct.locbox, %struct.locbox* %arrayidx654, i32 0, i32 0
  store i32 %460, i32* %xpos655, align 4
  %463 = load i32, i32* %site, align 4
  %idxprom656 = sext i32 %463 to i64
  %464 = load %struct.locbox*, %struct.locbox** %siteptr, align 8
  %arrayidx657 = getelementptr inbounds %struct.locbox, %struct.locbox* %464, i64 %idxprom656
  %ypos658 = getelementptr inbounds %struct.locbox, %struct.locbox* %arrayidx657, i32 0, i32 1
  %465 = load i32, i32* %ypos658, align 4
  %466 = load i32, i32* %site, align 4
  %idxprom659 = sext i32 %466 to i64
  %467 = load %struct.locbox*, %struct.locbox** %siteptr0, align 8
  %arrayidx660 = getelementptr inbounds %struct.locbox, %struct.locbox* %467, i64 %idxprom659
  %ypos661 = getelementptr inbounds %struct.locbox, %struct.locbox* %arrayidx660, i32 0, i32 1
  store i32 %465, i32* %ypos661, align 4
  %468 = load i32, i32* %orient, align 4
  call void @move(i32 %468)
  %469 = load i32, i32* %site, align 4
  %idxprom662 = sext i32 %469 to i64
  %470 = load %struct.locbox*, %struct.locbox** %siteptr0, align 8
  %arrayidx663 = getelementptr inbounds %struct.locbox, %struct.locbox* %470, i64 %idxprom662
  %xpos664 = getelementptr inbounds %struct.locbox, %struct.locbox* %arrayidx663, i32 0, i32 0
  %471 = load i32, i32* %site, align 4
  %idxprom665 = sext i32 %471 to i64
  %472 = load %struct.locbox*, %struct.locbox** %siteptr0, align 8
  %arrayidx666 = getelementptr inbounds %struct.locbox, %struct.locbox* %472, i64 %idxprom665
  %ypos667 = getelementptr inbounds %struct.locbox, %struct.locbox* %arrayidx666, i32 0, i32 1
  call void @point(i32* %xpos664, i32* %ypos667)
  %473 = load i32, i32* %height, align 4
  %rem668 = srem i32 %473, 2
  %cmp669 = icmp ne i32 %rem668, 0
  br i1 %cmp669, label %land.lhs.true.671, label %lor.lhs.false.677

land.lhs.true.671:                                ; preds = %for.body.649
  %474 = load i32, i32* %orient, align 4
  %cmp672 = icmp eq i32 %474, 4
  br i1 %cmp672, label %if.then.687, label %lor.lhs.false.674

lor.lhs.false.674:                                ; preds = %land.lhs.true.671
  %475 = load i32, i32* %orient, align 4
  %cmp675 = icmp eq i32 %475, 6
  br i1 %cmp675, label %if.then.687, label %lor.lhs.false.677

lor.lhs.false.677:                                ; preds = %lor.lhs.false.674, %for.body.649
  %476 = load i32, i32* %length, align 4
  %rem678 = srem i32 %476, 2
  %cmp679 = icmp ne i32 %rem678, 0
  br i1 %cmp679, label %land.lhs.true.681, label %if.end.692

land.lhs.true.681:                                ; preds = %lor.lhs.false.677
  %477 = load i32, i32* %orient, align 4
  %cmp682 = icmp eq i32 %477, 2
  br i1 %cmp682, label %if.then.687, label %lor.lhs.false.684

lor.lhs.false.684:                                ; preds = %land.lhs.true.681
  %478 = load i32, i32* %orient, align 4
  %cmp685 = icmp eq i32 %478, 3
  br i1 %cmp685, label %if.then.687, label %if.end.692

if.then.687:                                      ; preds = %lor.lhs.false.684, %land.lhs.true.681, %lor.lhs.false.674, %land.lhs.true.671
  %479 = load i32, i32* %site, align 4
  %idxprom688 = sext i32 %479 to i64
  %480 = load %struct.locbox*, %struct.locbox** %siteptr0, align 8
  %arrayidx689 = getelementptr inbounds %struct.locbox, %struct.locbox* %480, i64 %idxprom688
  %xpos690 = getelementptr inbounds %struct.locbox, %struct.locbox* %arrayidx689, i32 0, i32 0
  %481 = load i32, i32* %xpos690, align 4
  %inc691 = add nsw i32 %481, 1
  store i32 %inc691, i32* %xpos690, align 4
  br label %if.end.692

if.end.692:                                       ; preds = %if.then.687, %lor.lhs.false.684, %lor.lhs.false.677
  %482 = load i32, i32* %height, align 4
  %rem693 = srem i32 %482, 2
  %cmp694 = icmp ne i32 %rem693, 0
  br i1 %cmp694, label %land.lhs.true.696, label %lor.lhs.false.702

land.lhs.true.696:                                ; preds = %if.end.692
  %483 = load i32, i32* %orient, align 4
  %cmp697 = icmp eq i32 %483, 1
  br i1 %cmp697, label %if.then.712, label %lor.lhs.false.699

lor.lhs.false.699:                                ; preds = %land.lhs.true.696
  %484 = load i32, i32* %orient, align 4
  %cmp700 = icmp eq i32 %484, 3
  br i1 %cmp700, label %if.then.712, label %lor.lhs.false.702

lor.lhs.false.702:                                ; preds = %lor.lhs.false.699, %if.end.692
  %485 = load i32, i32* %length, align 4
  %rem703 = srem i32 %485, 2
  %cmp704 = icmp ne i32 %rem703, 0
  br i1 %cmp704, label %land.lhs.true.706, label %if.end.717

land.lhs.true.706:                                ; preds = %lor.lhs.false.702
  %486 = load i32, i32* %orient, align 4
  %cmp707 = icmp eq i32 %486, 4
  br i1 %cmp707, label %if.then.712, label %lor.lhs.false.709

lor.lhs.false.709:                                ; preds = %land.lhs.true.706
  %487 = load i32, i32* %orient, align 4
  %cmp710 = icmp eq i32 %487, 7
  br i1 %cmp710, label %if.then.712, label %if.end.717

if.then.712:                                      ; preds = %lor.lhs.false.709, %land.lhs.true.706, %lor.lhs.false.699, %land.lhs.true.696
  %488 = load i32, i32* %site, align 4
  %idxprom713 = sext i32 %488 to i64
  %489 = load %struct.locbox*, %struct.locbox** %siteptr0, align 8
  %arrayidx714 = getelementptr inbounds %struct.locbox, %struct.locbox* %489, i64 %idxprom713
  %ypos715 = getelementptr inbounds %struct.locbox, %struct.locbox* %arrayidx714, i32 0, i32 1
  %490 = load i32, i32* %ypos715, align 4
  %inc716 = add nsw i32 %490, 1
  store i32 %inc716, i32* %ypos715, align 4
  br label %if.end.717

if.end.717:                                       ; preds = %if.then.712, %lor.lhs.false.709, %lor.lhs.false.702
  br label %for.inc.718

for.inc.718:                                      ; preds = %if.end.717
  %491 = load i32, i32* %site, align 4
  %inc719 = add nsw i32 %491, 1
  store i32 %inc719, i32* %site, align 4
  br label %for.cond.645

for.end.720:                                      ; preds = %for.cond.645
  br label %if.end.721

if.end.721:                                       ; preds = %for.end.720, %if.end.637
  br label %if.end.722

if.end.722:                                       ; preds = %if.end.721, %for.end.368
  %492 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %config723 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %492, i32 0, i32 21
  %arrayidx724 = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %config723, i32 0, i64 0
  %493 = load %struct.tilebox*, %struct.tilebox** %arrayidx724, align 8
  %top725 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %493, i32 0, i32 12
  %494 = load i32, i32* %top725, align 4
  %495 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %config726 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %495, i32 0, i32 21
  %arrayidx727 = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %config726, i32 0, i64 0
  %496 = load %struct.tilebox*, %struct.tilebox** %arrayidx727, align 8
  %bottom728 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %496, i32 0, i32 11
  %497 = load i32, i32* %bottom728, align 4
  %sub729 = sub nsw i32 %494, %497
  store i32 %sub729, i32* %height, align 4
  %498 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %config730 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %498, i32 0, i32 21
  %arrayidx731 = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %config730, i32 0, i64 0
  %499 = load %struct.tilebox*, %struct.tilebox** %arrayidx731, align 8
  %right732 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %499, i32 0, i32 10
  %500 = load i32, i32* %right732, align 4
  %501 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %config733 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %501, i32 0, i32 21
  %arrayidx734 = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %config733, i32 0, i64 0
  %502 = load %struct.tilebox*, %struct.tilebox** %arrayidx734, align 8
  %left735 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %502, i32 0, i32 9
  %503 = load i32, i32* %left735, align 4
  %sub736 = sub nsw i32 %500, %503
  store i32 %sub736, i32* %length, align 4
  store i32 1, i32* %orient, align 4
  br label %for.cond.737

for.cond.737:                                     ; preds = %for.inc.884, %if.end.722
  %504 = load i32, i32* %orient, align 4
  %cmp738 = icmp sle i32 %504, 7
  br i1 %cmp738, label %for.body.740, label %for.end.886

for.body.740:                                     ; preds = %for.cond.737
  %505 = load i32, i32* %orient, align 4
  %506 = load i32, i32* %aorient, align 4
  %cmp741 = icmp eq i32 %505, %506
  br i1 %cmp741, label %if.then.743, label %if.end.744

if.then.743:                                      ; preds = %for.body.740
  br label %for.inc.884

if.end.744:                                       ; preds = %for.body.740
  %507 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %config745 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %507, i32 0, i32 21
  %arrayidx746 = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %config745, i32 0, i64 0
  %508 = load %struct.tilebox*, %struct.tilebox** %arrayidx746, align 8
  store %struct.tilebox* %508, %struct.tilebox** %tptr0, align 8
  %509 = load i32, i32* %orient, align 4
  %idxprom747 = sext i32 %509 to i64
  %510 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %config748 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %510, i32 0, i32 21
  %arrayidx749 = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %config748, i32 0, i64 %idxprom747
  %511 = load %struct.tilebox*, %struct.tilebox** %arrayidx749, align 8
  store %struct.tilebox* %511, %struct.tilebox** %tptr, align 8
  %512 = load %struct.tilebox*, %struct.tilebox** %tptr0, align 8
  %left750 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %512, i32 0, i32 9
  %513 = load i32, i32* %left750, align 4
  %514 = load %struct.tilebox*, %struct.tilebox** %tptr, align 8
  %left751 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %514, i32 0, i32 9
  store i32 %513, i32* %left751, align 4
  %515 = load %struct.tilebox*, %struct.tilebox** %tptr0, align 8
  %right752 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %515, i32 0, i32 10
  %516 = load i32, i32* %right752, align 4
  %517 = load %struct.tilebox*, %struct.tilebox** %tptr, align 8
  %right753 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %517, i32 0, i32 10
  store i32 %516, i32* %right753, align 4
  %518 = load %struct.tilebox*, %struct.tilebox** %tptr0, align 8
  %bottom754 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %518, i32 0, i32 11
  %519 = load i32, i32* %bottom754, align 4
  %520 = load %struct.tilebox*, %struct.tilebox** %tptr, align 8
  %bottom755 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %520, i32 0, i32 11
  store i32 %519, i32* %bottom755, align 4
  %521 = load %struct.tilebox*, %struct.tilebox** %tptr0, align 8
  %top756 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %521, i32 0, i32 12
  %522 = load i32, i32* %top756, align 4
  %523 = load %struct.tilebox*, %struct.tilebox** %tptr, align 8
  %top757 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %523, i32 0, i32 12
  store i32 %522, i32* %top757, align 4
  %524 = load i32, i32* %orient, align 4
  call void @move(i32 %524)
  %525 = load %struct.tilebox*, %struct.tilebox** %tptr, align 8
  %left758 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %525, i32 0, i32 9
  %526 = load %struct.tilebox*, %struct.tilebox** %tptr, align 8
  %bottom759 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %526, i32 0, i32 11
  %527 = load %struct.tilebox*, %struct.tilebox** %tptr, align 8
  %right760 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %527, i32 0, i32 10
  %528 = load %struct.tilebox*, %struct.tilebox** %tptr, align 8
  %top761 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %528, i32 0, i32 12
  call void @rect(i32* %left758, i32* %bottom759, i32* %right760, i32* %top761)
  %529 = load i32, i32* %height, align 4
  %rem762 = srem i32 %529, 2
  %cmp763 = icmp ne i32 %rem762, 0
  br i1 %cmp763, label %land.lhs.true.765, label %lor.lhs.false.771

land.lhs.true.765:                                ; preds = %if.end.744
  %530 = load i32, i32* %orient, align 4
  %cmp766 = icmp eq i32 %530, 4
  br i1 %cmp766, label %if.then.781, label %lor.lhs.false.768

lor.lhs.false.768:                                ; preds = %land.lhs.true.765
  %531 = load i32, i32* %orient, align 4
  %cmp769 = icmp eq i32 %531, 6
  br i1 %cmp769, label %if.then.781, label %lor.lhs.false.771

lor.lhs.false.771:                                ; preds = %lor.lhs.false.768, %if.end.744
  %532 = load i32, i32* %length, align 4
  %rem772 = srem i32 %532, 2
  %cmp773 = icmp ne i32 %rem772, 0
  br i1 %cmp773, label %land.lhs.true.775, label %if.end.786

land.lhs.true.775:                                ; preds = %lor.lhs.false.771
  %533 = load i32, i32* %orient, align 4
  %cmp776 = icmp eq i32 %533, 2
  br i1 %cmp776, label %if.then.781, label %lor.lhs.false.778

lor.lhs.false.778:                                ; preds = %land.lhs.true.775
  %534 = load i32, i32* %orient, align 4
  %cmp779 = icmp eq i32 %534, 3
  br i1 %cmp779, label %if.then.781, label %if.end.786

if.then.781:                                      ; preds = %lor.lhs.false.778, %land.lhs.true.775, %lor.lhs.false.768, %land.lhs.true.765
  %535 = load %struct.tilebox*, %struct.tilebox** %tptr, align 8
  %left782 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %535, i32 0, i32 9
  %536 = load i32, i32* %left782, align 4
  %inc783 = add nsw i32 %536, 1
  store i32 %inc783, i32* %left782, align 4
  %537 = load %struct.tilebox*, %struct.tilebox** %tptr, align 8
  %right784 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %537, i32 0, i32 10
  %538 = load i32, i32* %right784, align 4
  %inc785 = add nsw i32 %538, 1
  store i32 %inc785, i32* %right784, align 4
  br label %if.end.786

if.end.786:                                       ; preds = %if.then.781, %lor.lhs.false.778, %lor.lhs.false.771
  %539 = load i32, i32* %height, align 4
  %rem787 = srem i32 %539, 2
  %cmp788 = icmp ne i32 %rem787, 0
  br i1 %cmp788, label %land.lhs.true.790, label %lor.lhs.false.796

land.lhs.true.790:                                ; preds = %if.end.786
  %540 = load i32, i32* %orient, align 4
  %cmp791 = icmp eq i32 %540, 1
  br i1 %cmp791, label %if.then.806, label %lor.lhs.false.793

lor.lhs.false.793:                                ; preds = %land.lhs.true.790
  %541 = load i32, i32* %orient, align 4
  %cmp794 = icmp eq i32 %541, 3
  br i1 %cmp794, label %if.then.806, label %lor.lhs.false.796

lor.lhs.false.796:                                ; preds = %lor.lhs.false.793, %if.end.786
  %542 = load i32, i32* %length, align 4
  %rem797 = srem i32 %542, 2
  %cmp798 = icmp ne i32 %rem797, 0
  br i1 %cmp798, label %land.lhs.true.800, label %if.end.811

land.lhs.true.800:                                ; preds = %lor.lhs.false.796
  %543 = load i32, i32* %orient, align 4
  %cmp801 = icmp eq i32 %543, 4
  br i1 %cmp801, label %if.then.806, label %lor.lhs.false.803

lor.lhs.false.803:                                ; preds = %land.lhs.true.800
  %544 = load i32, i32* %orient, align 4
  %cmp804 = icmp eq i32 %544, 7
  br i1 %cmp804, label %if.then.806, label %if.end.811

if.then.806:                                      ; preds = %lor.lhs.false.803, %land.lhs.true.800, %lor.lhs.false.793, %land.lhs.true.790
  %545 = load %struct.tilebox*, %struct.tilebox** %tptr, align 8
  %bottom807 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %545, i32 0, i32 11
  %546 = load i32, i32* %bottom807, align 4
  %inc808 = add nsw i32 %546, 1
  store i32 %inc808, i32* %bottom807, align 4
  %547 = load %struct.tilebox*, %struct.tilebox** %tptr, align 8
  %top809 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %547, i32 0, i32 12
  %548 = load i32, i32* %top809, align 4
  %inc810 = add nsw i32 %548, 1
  store i32 %inc810, i32* %top809, align 4
  br label %if.end.811

if.end.811:                                       ; preds = %if.then.806, %lor.lhs.false.803, %lor.lhs.false.796
  store i32 1, i32* %tilenum, align 4
  br label %for.cond.812

for.cond.812:                                     ; preds = %for.inc.881, %if.end.811
  %549 = load i32, i32* %tilenum, align 4
  %550 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %numtiles813 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %550, i32 0, i32 6
  %551 = load i32, i32* %numtiles813, align 4
  %cmp814 = icmp sle i32 %549, %551
  br i1 %cmp814, label %for.body.816, label %for.end.883

for.body.816:                                     ; preds = %for.cond.812
  %552 = load %struct.tilebox*, %struct.tilebox** %tptr0, align 8
  %nexttile817 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %552, i32 0, i32 0
  %553 = load %struct.tilebox*, %struct.tilebox** %nexttile817, align 8
  store %struct.tilebox* %553, %struct.tilebox** %tptr0, align 8
  %554 = load %struct.tilebox*, %struct.tilebox** %tptr, align 8
  %nexttile818 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %554, i32 0, i32 0
  %555 = load %struct.tilebox*, %struct.tilebox** %nexttile818, align 8
  store %struct.tilebox* %555, %struct.tilebox** %tptr, align 8
  %556 = load %struct.tilebox*, %struct.tilebox** %tptr0, align 8
  %left819 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %556, i32 0, i32 9
  %557 = load i32, i32* %left819, align 4
  %558 = load %struct.tilebox*, %struct.tilebox** %tptr, align 8
  %left820 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %558, i32 0, i32 9
  store i32 %557, i32* %left820, align 4
  %559 = load %struct.tilebox*, %struct.tilebox** %tptr0, align 8
  %right821 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %559, i32 0, i32 10
  %560 = load i32, i32* %right821, align 4
  %561 = load %struct.tilebox*, %struct.tilebox** %tptr, align 8
  %right822 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %561, i32 0, i32 10
  store i32 %560, i32* %right822, align 4
  %562 = load %struct.tilebox*, %struct.tilebox** %tptr0, align 8
  %bottom823 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %562, i32 0, i32 11
  %563 = load i32, i32* %bottom823, align 4
  %564 = load %struct.tilebox*, %struct.tilebox** %tptr, align 8
  %bottom824 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %564, i32 0, i32 11
  store i32 %563, i32* %bottom824, align 4
  %565 = load %struct.tilebox*, %struct.tilebox** %tptr0, align 8
  %top825 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %565, i32 0, i32 12
  %566 = load i32, i32* %top825, align 4
  %567 = load %struct.tilebox*, %struct.tilebox** %tptr, align 8
  %top826 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %567, i32 0, i32 12
  store i32 %566, i32* %top826, align 4
  %568 = load i32, i32* %orient, align 4
  call void @move(i32 %568)
  %569 = load %struct.tilebox*, %struct.tilebox** %tptr, align 8
  %left827 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %569, i32 0, i32 9
  %570 = load %struct.tilebox*, %struct.tilebox** %tptr, align 8
  %bottom828 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %570, i32 0, i32 11
  %571 = load %struct.tilebox*, %struct.tilebox** %tptr, align 8
  %right829 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %571, i32 0, i32 10
  %572 = load %struct.tilebox*, %struct.tilebox** %tptr, align 8
  %top830 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %572, i32 0, i32 12
  call void @rect(i32* %left827, i32* %bottom828, i32* %right829, i32* %top830)
  %573 = load i32, i32* %height, align 4
  %rem831 = srem i32 %573, 2
  %cmp832 = icmp ne i32 %rem831, 0
  br i1 %cmp832, label %land.lhs.true.834, label %lor.lhs.false.840

land.lhs.true.834:                                ; preds = %for.body.816
  %574 = load i32, i32* %orient, align 4
  %cmp835 = icmp eq i32 %574, 4
  br i1 %cmp835, label %if.then.850, label %lor.lhs.false.837

lor.lhs.false.837:                                ; preds = %land.lhs.true.834
  %575 = load i32, i32* %orient, align 4
  %cmp838 = icmp eq i32 %575, 6
  br i1 %cmp838, label %if.then.850, label %lor.lhs.false.840

lor.lhs.false.840:                                ; preds = %lor.lhs.false.837, %for.body.816
  %576 = load i32, i32* %length, align 4
  %rem841 = srem i32 %576, 2
  %cmp842 = icmp ne i32 %rem841, 0
  br i1 %cmp842, label %land.lhs.true.844, label %if.end.855

land.lhs.true.844:                                ; preds = %lor.lhs.false.840
  %577 = load i32, i32* %orient, align 4
  %cmp845 = icmp eq i32 %577, 2
  br i1 %cmp845, label %if.then.850, label %lor.lhs.false.847

lor.lhs.false.847:                                ; preds = %land.lhs.true.844
  %578 = load i32, i32* %orient, align 4
  %cmp848 = icmp eq i32 %578, 3
  br i1 %cmp848, label %if.then.850, label %if.end.855

if.then.850:                                      ; preds = %lor.lhs.false.847, %land.lhs.true.844, %lor.lhs.false.837, %land.lhs.true.834
  %579 = load %struct.tilebox*, %struct.tilebox** %tptr, align 8
  %left851 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %579, i32 0, i32 9
  %580 = load i32, i32* %left851, align 4
  %inc852 = add nsw i32 %580, 1
  store i32 %inc852, i32* %left851, align 4
  %581 = load %struct.tilebox*, %struct.tilebox** %tptr, align 8
  %right853 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %581, i32 0, i32 10
  %582 = load i32, i32* %right853, align 4
  %inc854 = add nsw i32 %582, 1
  store i32 %inc854, i32* %right853, align 4
  br label %if.end.855

if.end.855:                                       ; preds = %if.then.850, %lor.lhs.false.847, %lor.lhs.false.840
  %583 = load i32, i32* %height, align 4
  %rem856 = srem i32 %583, 2
  %cmp857 = icmp ne i32 %rem856, 0
  br i1 %cmp857, label %land.lhs.true.859, label %lor.lhs.false.865

land.lhs.true.859:                                ; preds = %if.end.855
  %584 = load i32, i32* %orient, align 4
  %cmp860 = icmp eq i32 %584, 1
  br i1 %cmp860, label %if.then.875, label %lor.lhs.false.862

lor.lhs.false.862:                                ; preds = %land.lhs.true.859
  %585 = load i32, i32* %orient, align 4
  %cmp863 = icmp eq i32 %585, 3
  br i1 %cmp863, label %if.then.875, label %lor.lhs.false.865

lor.lhs.false.865:                                ; preds = %lor.lhs.false.862, %if.end.855
  %586 = load i32, i32* %length, align 4
  %rem866 = srem i32 %586, 2
  %cmp867 = icmp ne i32 %rem866, 0
  br i1 %cmp867, label %land.lhs.true.869, label %if.end.880

land.lhs.true.869:                                ; preds = %lor.lhs.false.865
  %587 = load i32, i32* %orient, align 4
  %cmp870 = icmp eq i32 %587, 4
  br i1 %cmp870, label %if.then.875, label %lor.lhs.false.872

lor.lhs.false.872:                                ; preds = %land.lhs.true.869
  %588 = load i32, i32* %orient, align 4
  %cmp873 = icmp eq i32 %588, 7
  br i1 %cmp873, label %if.then.875, label %if.end.880

if.then.875:                                      ; preds = %lor.lhs.false.872, %land.lhs.true.869, %lor.lhs.false.862, %land.lhs.true.859
  %589 = load %struct.tilebox*, %struct.tilebox** %tptr, align 8
  %bottom876 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %589, i32 0, i32 11
  %590 = load i32, i32* %bottom876, align 4
  %inc877 = add nsw i32 %590, 1
  store i32 %inc877, i32* %bottom876, align 4
  %591 = load %struct.tilebox*, %struct.tilebox** %tptr, align 8
  %top878 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %591, i32 0, i32 12
  %592 = load i32, i32* %top878, align 4
  %inc879 = add nsw i32 %592, 1
  store i32 %inc879, i32* %top878, align 4
  br label %if.end.880

if.end.880:                                       ; preds = %if.then.875, %lor.lhs.false.872, %lor.lhs.false.865
  br label %for.inc.881

for.inc.881:                                      ; preds = %if.end.880
  %593 = load i32, i32* %tilenum, align 4
  %inc882 = add nsw i32 %593, 1
  store i32 %inc882, i32* %tilenum, align 4
  br label %for.cond.812

for.end.883:                                      ; preds = %for.cond.812
  br label %for.inc.884

for.inc.884:                                      ; preds = %for.end.883, %if.then.743
  %594 = load i32, i32* %orient, align 4
  %inc885 = add nsw i32 %594, 1
  store i32 %inc885, i32* %orient, align 4
  br label %for.cond.737

for.end.886:                                      ; preds = %for.cond.737
  %595 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %numterms887 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %595, i32 0, i32 8
  %596 = load i32, i32* %numterms887, align 4
  %cmp888 = icmp ne i32 %596, 0
  br i1 %cmp888, label %if.then.890, label %if.end.1023

if.then.890:                                      ; preds = %for.end.886
  store i32 1, i32* %orient, align 4
  br label %for.cond.891

for.cond.891:                                     ; preds = %for.inc.1020, %if.then.890
  %597 = load i32, i32* %orient, align 4
  %cmp892 = icmp sle i32 %597, 7
  br i1 %cmp892, label %for.body.894, label %for.end.1022

for.body.894:                                     ; preds = %for.cond.891
  %598 = load i32, i32* %orient, align 4
  %599 = load i32, i32* %aorient, align 4
  %cmp895 = icmp eq i32 %598, %599
  br i1 %cmp895, label %if.then.897, label %if.end.898

if.then.897:                                      ; preds = %for.body.894
  br label %for.inc.1020

if.end.898:                                       ; preds = %for.body.894
  %600 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %config899 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %600, i32 0, i32 21
  %arrayidx900 = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %config899, i32 0, i64 0
  %601 = load %struct.tilebox*, %struct.tilebox** %arrayidx900, align 8
  %termptr901 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %601, i32 0, i32 17
  %602 = load %struct.termbox*, %struct.termbox** %termptr901, align 8
  store %struct.termbox* %602, %struct.termbox** %tmptr0, align 8
  %603 = load i32, i32* %orient, align 4
  %idxprom902 = sext i32 %603 to i64
  %604 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %config903 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %604, i32 0, i32 21
  %arrayidx904 = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %config903, i32 0, i64 %idxprom902
  %605 = load %struct.tilebox*, %struct.tilebox** %arrayidx904, align 8
  %termptr905 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %605, i32 0, i32 17
  %606 = load %struct.termbox*, %struct.termbox** %termptr905, align 8
  store %struct.termbox* %606, %struct.termbox** %tmptr1, align 8
  %607 = load %struct.termbox*, %struct.termbox** %tmptr0, align 8
  %xpos906 = getelementptr inbounds %struct.termbox, %struct.termbox* %607, i32 0, i32 1
  %608 = load i32, i32* %xpos906, align 4
  %609 = load %struct.termbox*, %struct.termbox** %tmptr1, align 8
  %xpos907 = getelementptr inbounds %struct.termbox, %struct.termbox* %609, i32 0, i32 1
  store i32 %608, i32* %xpos907, align 4
  %610 = load %struct.termbox*, %struct.termbox** %tmptr0, align 8
  %ypos908 = getelementptr inbounds %struct.termbox, %struct.termbox* %610, i32 0, i32 2
  %611 = load i32, i32* %ypos908, align 4
  %612 = load %struct.termbox*, %struct.termbox** %tmptr1, align 8
  %ypos909 = getelementptr inbounds %struct.termbox, %struct.termbox* %612, i32 0, i32 2
  store i32 %611, i32* %ypos909, align 4
  %613 = load i32, i32* %orient, align 4
  call void @move(i32 %613)
  %614 = load %struct.termbox*, %struct.termbox** %tmptr1, align 8
  %xpos910 = getelementptr inbounds %struct.termbox, %struct.termbox* %614, i32 0, i32 1
  %615 = load %struct.termbox*, %struct.termbox** %tmptr1, align 8
  %ypos911 = getelementptr inbounds %struct.termbox, %struct.termbox* %615, i32 0, i32 2
  call void @point(i32* %xpos910, i32* %ypos911)
  %616 = load i32, i32* %height, align 4
  %rem912 = srem i32 %616, 2
  %cmp913 = icmp ne i32 %rem912, 0
  br i1 %cmp913, label %land.lhs.true.915, label %lor.lhs.false.921

land.lhs.true.915:                                ; preds = %if.end.898
  %617 = load i32, i32* %orient, align 4
  %cmp916 = icmp eq i32 %617, 4
  br i1 %cmp916, label %if.then.931, label %lor.lhs.false.918

lor.lhs.false.918:                                ; preds = %land.lhs.true.915
  %618 = load i32, i32* %orient, align 4
  %cmp919 = icmp eq i32 %618, 6
  br i1 %cmp919, label %if.then.931, label %lor.lhs.false.921

lor.lhs.false.921:                                ; preds = %lor.lhs.false.918, %if.end.898
  %619 = load i32, i32* %length, align 4
  %rem922 = srem i32 %619, 2
  %cmp923 = icmp ne i32 %rem922, 0
  br i1 %cmp923, label %land.lhs.true.925, label %if.end.934

land.lhs.true.925:                                ; preds = %lor.lhs.false.921
  %620 = load i32, i32* %orient, align 4
  %cmp926 = icmp eq i32 %620, 2
  br i1 %cmp926, label %if.then.931, label %lor.lhs.false.928

lor.lhs.false.928:                                ; preds = %land.lhs.true.925
  %621 = load i32, i32* %orient, align 4
  %cmp929 = icmp eq i32 %621, 3
  br i1 %cmp929, label %if.then.931, label %if.end.934

if.then.931:                                      ; preds = %lor.lhs.false.928, %land.lhs.true.925, %lor.lhs.false.918, %land.lhs.true.915
  %622 = load %struct.termbox*, %struct.termbox** %tmptr1, align 8
  %xpos932 = getelementptr inbounds %struct.termbox, %struct.termbox* %622, i32 0, i32 1
  %623 = load i32, i32* %xpos932, align 4
  %inc933 = add nsw i32 %623, 1
  store i32 %inc933, i32* %xpos932, align 4
  br label %if.end.934

if.end.934:                                       ; preds = %if.then.931, %lor.lhs.false.928, %lor.lhs.false.921
  %624 = load i32, i32* %height, align 4
  %rem935 = srem i32 %624, 2
  %cmp936 = icmp ne i32 %rem935, 0
  br i1 %cmp936, label %land.lhs.true.938, label %lor.lhs.false.944

land.lhs.true.938:                                ; preds = %if.end.934
  %625 = load i32, i32* %orient, align 4
  %cmp939 = icmp eq i32 %625, 1
  br i1 %cmp939, label %if.then.954, label %lor.lhs.false.941

lor.lhs.false.941:                                ; preds = %land.lhs.true.938
  %626 = load i32, i32* %orient, align 4
  %cmp942 = icmp eq i32 %626, 3
  br i1 %cmp942, label %if.then.954, label %lor.lhs.false.944

lor.lhs.false.944:                                ; preds = %lor.lhs.false.941, %if.end.934
  %627 = load i32, i32* %length, align 4
  %rem945 = srem i32 %627, 2
  %cmp946 = icmp ne i32 %rem945, 0
  br i1 %cmp946, label %land.lhs.true.948, label %if.end.957

land.lhs.true.948:                                ; preds = %lor.lhs.false.944
  %628 = load i32, i32* %orient, align 4
  %cmp949 = icmp eq i32 %628, 4
  br i1 %cmp949, label %if.then.954, label %lor.lhs.false.951

lor.lhs.false.951:                                ; preds = %land.lhs.true.948
  %629 = load i32, i32* %orient, align 4
  %cmp952 = icmp eq i32 %629, 7
  br i1 %cmp952, label %if.then.954, label %if.end.957

if.then.954:                                      ; preds = %lor.lhs.false.951, %land.lhs.true.948, %lor.lhs.false.941, %land.lhs.true.938
  %630 = load %struct.termbox*, %struct.termbox** %tmptr1, align 8
  %ypos955 = getelementptr inbounds %struct.termbox, %struct.termbox* %630, i32 0, i32 2
  %631 = load i32, i32* %ypos955, align 4
  %inc956 = add nsw i32 %631, 1
  store i32 %inc956, i32* %ypos955, align 4
  br label %if.end.957

if.end.957:                                       ; preds = %if.then.954, %lor.lhs.false.951, %lor.lhs.false.944
  store i32 2, i32* %termnum, align 4
  br label %for.cond.958

for.cond.958:                                     ; preds = %for.inc.1017, %if.end.957
  %632 = load i32, i32* %termnum, align 4
  %633 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %numterms959 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %633, i32 0, i32 8
  %634 = load i32, i32* %numterms959, align 4
  %cmp960 = icmp sle i32 %632, %634
  br i1 %cmp960, label %for.body.962, label %for.end.1019

for.body.962:                                     ; preds = %for.cond.958
  %635 = load %struct.termbox*, %struct.termbox** %tmptr0, align 8
  %nextterm963 = getelementptr inbounds %struct.termbox, %struct.termbox* %635, i32 0, i32 0
  %636 = load %struct.termbox*, %struct.termbox** %nextterm963, align 8
  store %struct.termbox* %636, %struct.termbox** %tmptr0, align 8
  %637 = load %struct.termbox*, %struct.termbox** %tmptr1, align 8
  %nextterm964 = getelementptr inbounds %struct.termbox, %struct.termbox* %637, i32 0, i32 0
  %638 = load %struct.termbox*, %struct.termbox** %nextterm964, align 8
  store %struct.termbox* %638, %struct.termbox** %tmptr1, align 8
  %639 = load %struct.termbox*, %struct.termbox** %tmptr0, align 8
  %xpos965 = getelementptr inbounds %struct.termbox, %struct.termbox* %639, i32 0, i32 1
  %640 = load i32, i32* %xpos965, align 4
  %641 = load %struct.termbox*, %struct.termbox** %tmptr1, align 8
  %xpos966 = getelementptr inbounds %struct.termbox, %struct.termbox* %641, i32 0, i32 1
  store i32 %640, i32* %xpos966, align 4
  %642 = load %struct.termbox*, %struct.termbox** %tmptr0, align 8
  %ypos967 = getelementptr inbounds %struct.termbox, %struct.termbox* %642, i32 0, i32 2
  %643 = load i32, i32* %ypos967, align 4
  %644 = load %struct.termbox*, %struct.termbox** %tmptr1, align 8
  %ypos968 = getelementptr inbounds %struct.termbox, %struct.termbox* %644, i32 0, i32 2
  store i32 %643, i32* %ypos968, align 4
  %645 = load i32, i32* %orient, align 4
  call void @move(i32 %645)
  %646 = load %struct.termbox*, %struct.termbox** %tmptr1, align 8
  %xpos969 = getelementptr inbounds %struct.termbox, %struct.termbox* %646, i32 0, i32 1
  %647 = load %struct.termbox*, %struct.termbox** %tmptr1, align 8
  %ypos970 = getelementptr inbounds %struct.termbox, %struct.termbox* %647, i32 0, i32 2
  call void @point(i32* %xpos969, i32* %ypos970)
  %648 = load i32, i32* %height, align 4
  %rem971 = srem i32 %648, 2
  %cmp972 = icmp ne i32 %rem971, 0
  br i1 %cmp972, label %land.lhs.true.974, label %lor.lhs.false.980

land.lhs.true.974:                                ; preds = %for.body.962
  %649 = load i32, i32* %orient, align 4
  %cmp975 = icmp eq i32 %649, 4
  br i1 %cmp975, label %if.then.990, label %lor.lhs.false.977

lor.lhs.false.977:                                ; preds = %land.lhs.true.974
  %650 = load i32, i32* %orient, align 4
  %cmp978 = icmp eq i32 %650, 6
  br i1 %cmp978, label %if.then.990, label %lor.lhs.false.980

lor.lhs.false.980:                                ; preds = %lor.lhs.false.977, %for.body.962
  %651 = load i32, i32* %length, align 4
  %rem981 = srem i32 %651, 2
  %cmp982 = icmp ne i32 %rem981, 0
  br i1 %cmp982, label %land.lhs.true.984, label %if.end.993

land.lhs.true.984:                                ; preds = %lor.lhs.false.980
  %652 = load i32, i32* %orient, align 4
  %cmp985 = icmp eq i32 %652, 2
  br i1 %cmp985, label %if.then.990, label %lor.lhs.false.987

lor.lhs.false.987:                                ; preds = %land.lhs.true.984
  %653 = load i32, i32* %orient, align 4
  %cmp988 = icmp eq i32 %653, 3
  br i1 %cmp988, label %if.then.990, label %if.end.993

if.then.990:                                      ; preds = %lor.lhs.false.987, %land.lhs.true.984, %lor.lhs.false.977, %land.lhs.true.974
  %654 = load %struct.termbox*, %struct.termbox** %tmptr1, align 8
  %xpos991 = getelementptr inbounds %struct.termbox, %struct.termbox* %654, i32 0, i32 1
  %655 = load i32, i32* %xpos991, align 4
  %inc992 = add nsw i32 %655, 1
  store i32 %inc992, i32* %xpos991, align 4
  br label %if.end.993

if.end.993:                                       ; preds = %if.then.990, %lor.lhs.false.987, %lor.lhs.false.980
  %656 = load i32, i32* %height, align 4
  %rem994 = srem i32 %656, 2
  %cmp995 = icmp ne i32 %rem994, 0
  br i1 %cmp995, label %land.lhs.true.997, label %lor.lhs.false.1003

land.lhs.true.997:                                ; preds = %if.end.993
  %657 = load i32, i32* %orient, align 4
  %cmp998 = icmp eq i32 %657, 1
  br i1 %cmp998, label %if.then.1013, label %lor.lhs.false.1000

lor.lhs.false.1000:                               ; preds = %land.lhs.true.997
  %658 = load i32, i32* %orient, align 4
  %cmp1001 = icmp eq i32 %658, 3
  br i1 %cmp1001, label %if.then.1013, label %lor.lhs.false.1003

lor.lhs.false.1003:                               ; preds = %lor.lhs.false.1000, %if.end.993
  %659 = load i32, i32* %length, align 4
  %rem1004 = srem i32 %659, 2
  %cmp1005 = icmp ne i32 %rem1004, 0
  br i1 %cmp1005, label %land.lhs.true.1007, label %if.end.1016

land.lhs.true.1007:                               ; preds = %lor.lhs.false.1003
  %660 = load i32, i32* %orient, align 4
  %cmp1008 = icmp eq i32 %660, 4
  br i1 %cmp1008, label %if.then.1013, label %lor.lhs.false.1010

lor.lhs.false.1010:                               ; preds = %land.lhs.true.1007
  %661 = load i32, i32* %orient, align 4
  %cmp1011 = icmp eq i32 %661, 7
  br i1 %cmp1011, label %if.then.1013, label %if.end.1016

if.then.1013:                                     ; preds = %lor.lhs.false.1010, %land.lhs.true.1007, %lor.lhs.false.1000, %land.lhs.true.997
  %662 = load %struct.termbox*, %struct.termbox** %tmptr1, align 8
  %ypos1014 = getelementptr inbounds %struct.termbox, %struct.termbox* %662, i32 0, i32 2
  %663 = load i32, i32* %ypos1014, align 4
  %inc1015 = add nsw i32 %663, 1
  store i32 %inc1015, i32* %ypos1014, align 4
  br label %if.end.1016

if.end.1016:                                      ; preds = %if.then.1013, %lor.lhs.false.1010, %lor.lhs.false.1003
  br label %for.inc.1017

for.inc.1017:                                     ; preds = %if.end.1016
  %664 = load i32, i32* %termnum, align 4
  %inc1018 = add nsw i32 %664, 1
  store i32 %inc1018, i32* %termnum, align 4
  br label %for.cond.958

for.end.1019:                                     ; preds = %for.cond.958
  br label %for.inc.1020

for.inc.1020:                                     ; preds = %for.end.1019, %if.then.897
  %665 = load i32, i32* %orient, align 4
  %inc1021 = add nsw i32 %665, 1
  store i32 %inc1021, i32* %orient, align 4
  br label %for.cond.891

for.end.1022:                                     ; preds = %for.cond.891
  br label %if.end.1023

if.end.1023:                                      ; preds = %for.end.1022, %for.end.886
  %666 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %numsites1024 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %666, i32 0, i32 17
  %667 = load i32, i32* %numsites1024, align 4
  %cmp1025 = icmp ne i32 %667, 0
  br i1 %cmp1025, label %if.then.1027, label %if.end.1122

if.then.1027:                                     ; preds = %if.end.1023
  %668 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %config1028 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %668, i32 0, i32 21
  %arrayidx1029 = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %config1028, i32 0, i64 0
  %669 = load %struct.tilebox*, %struct.tilebox** %arrayidx1029, align 8
  %siteLocArray1030 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %669, i32 0, i32 18
  %670 = load %struct.locbox*, %struct.locbox** %siteLocArray1030, align 8
  store %struct.locbox* %670, %struct.locbox** %siteptr0, align 8
  store i32 1, i32* %orient, align 4
  br label %for.cond.1031

for.cond.1031:                                    ; preds = %for.inc.1119, %if.then.1027
  %671 = load i32, i32* %orient, align 4
  %cmp1032 = icmp sle i32 %671, 7
  br i1 %cmp1032, label %for.body.1034, label %for.end.1121

for.body.1034:                                    ; preds = %for.cond.1031
  %672 = load i32, i32* %orient, align 4
  %673 = load i32, i32* %aorient, align 4
  %cmp1035 = icmp eq i32 %672, %673
  br i1 %cmp1035, label %if.then.1037, label %if.end.1038

if.then.1037:                                     ; preds = %for.body.1034
  br label %for.inc.1119

if.end.1038:                                      ; preds = %for.body.1034
  %674 = load i32, i32* %orient, align 4
  %idxprom1039 = sext i32 %674 to i64
  %675 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %config1040 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %675, i32 0, i32 21
  %arrayidx1041 = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %config1040, i32 0, i64 %idxprom1039
  %676 = load %struct.tilebox*, %struct.tilebox** %arrayidx1041, align 8
  %siteLocArray1042 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %676, i32 0, i32 18
  %677 = load %struct.locbox*, %struct.locbox** %siteLocArray1042, align 8
  store %struct.locbox* %677, %struct.locbox** %siteptr, align 8
  store i32 1, i32* %site, align 4
  br label %for.cond.1043

for.cond.1043:                                    ; preds = %for.inc.1116, %if.end.1038
  %678 = load i32, i32* %site, align 4
  %679 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %numsites1044 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %679, i32 0, i32 17
  %680 = load i32, i32* %numsites1044, align 4
  %cmp1045 = icmp sle i32 %678, %680
  br i1 %cmp1045, label %for.body.1047, label %for.end.1118

for.body.1047:                                    ; preds = %for.cond.1043
  %681 = load i32, i32* %site, align 4
  %idxprom1048 = sext i32 %681 to i64
  %682 = load %struct.locbox*, %struct.locbox** %siteptr0, align 8
  %arrayidx1049 = getelementptr inbounds %struct.locbox, %struct.locbox* %682, i64 %idxprom1048
  %xpos1050 = getelementptr inbounds %struct.locbox, %struct.locbox* %arrayidx1049, i32 0, i32 0
  %683 = load i32, i32* %xpos1050, align 4
  %684 = load i32, i32* %site, align 4
  %idxprom1051 = sext i32 %684 to i64
  %685 = load %struct.locbox*, %struct.locbox** %siteptr, align 8
  %arrayidx1052 = getelementptr inbounds %struct.locbox, %struct.locbox* %685, i64 %idxprom1051
  %xpos1053 = getelementptr inbounds %struct.locbox, %struct.locbox* %arrayidx1052, i32 0, i32 0
  store i32 %683, i32* %xpos1053, align 4
  %686 = load i32, i32* %site, align 4
  %idxprom1054 = sext i32 %686 to i64
  %687 = load %struct.locbox*, %struct.locbox** %siteptr0, align 8
  %arrayidx1055 = getelementptr inbounds %struct.locbox, %struct.locbox* %687, i64 %idxprom1054
  %ypos1056 = getelementptr inbounds %struct.locbox, %struct.locbox* %arrayidx1055, i32 0, i32 1
  %688 = load i32, i32* %ypos1056, align 4
  %689 = load i32, i32* %site, align 4
  %idxprom1057 = sext i32 %689 to i64
  %690 = load %struct.locbox*, %struct.locbox** %siteptr, align 8
  %arrayidx1058 = getelementptr inbounds %struct.locbox, %struct.locbox* %690, i64 %idxprom1057
  %ypos1059 = getelementptr inbounds %struct.locbox, %struct.locbox* %arrayidx1058, i32 0, i32 1
  store i32 %688, i32* %ypos1059, align 4
  %691 = load i32, i32* %orient, align 4
  call void @move(i32 %691)
  %692 = load i32, i32* %site, align 4
  %idxprom1060 = sext i32 %692 to i64
  %693 = load %struct.locbox*, %struct.locbox** %siteptr, align 8
  %arrayidx1061 = getelementptr inbounds %struct.locbox, %struct.locbox* %693, i64 %idxprom1060
  %xpos1062 = getelementptr inbounds %struct.locbox, %struct.locbox* %arrayidx1061, i32 0, i32 0
  %694 = load i32, i32* %site, align 4
  %idxprom1063 = sext i32 %694 to i64
  %695 = load %struct.locbox*, %struct.locbox** %siteptr, align 8
  %arrayidx1064 = getelementptr inbounds %struct.locbox, %struct.locbox* %695, i64 %idxprom1063
  %ypos1065 = getelementptr inbounds %struct.locbox, %struct.locbox* %arrayidx1064, i32 0, i32 1
  call void @point(i32* %xpos1062, i32* %ypos1065)
  %696 = load i32, i32* %height, align 4
  %rem1066 = srem i32 %696, 2
  %cmp1067 = icmp ne i32 %rem1066, 0
  br i1 %cmp1067, label %land.lhs.true.1069, label %lor.lhs.false.1075

land.lhs.true.1069:                               ; preds = %for.body.1047
  %697 = load i32, i32* %orient, align 4
  %cmp1070 = icmp eq i32 %697, 4
  br i1 %cmp1070, label %if.then.1085, label %lor.lhs.false.1072

lor.lhs.false.1072:                               ; preds = %land.lhs.true.1069
  %698 = load i32, i32* %orient, align 4
  %cmp1073 = icmp eq i32 %698, 6
  br i1 %cmp1073, label %if.then.1085, label %lor.lhs.false.1075

lor.lhs.false.1075:                               ; preds = %lor.lhs.false.1072, %for.body.1047
  %699 = load i32, i32* %length, align 4
  %rem1076 = srem i32 %699, 2
  %cmp1077 = icmp ne i32 %rem1076, 0
  br i1 %cmp1077, label %land.lhs.true.1079, label %if.end.1090

land.lhs.true.1079:                               ; preds = %lor.lhs.false.1075
  %700 = load i32, i32* %orient, align 4
  %cmp1080 = icmp eq i32 %700, 2
  br i1 %cmp1080, label %if.then.1085, label %lor.lhs.false.1082

lor.lhs.false.1082:                               ; preds = %land.lhs.true.1079
  %701 = load i32, i32* %orient, align 4
  %cmp1083 = icmp eq i32 %701, 3
  br i1 %cmp1083, label %if.then.1085, label %if.end.1090

if.then.1085:                                     ; preds = %lor.lhs.false.1082, %land.lhs.true.1079, %lor.lhs.false.1072, %land.lhs.true.1069
  %702 = load i32, i32* %site, align 4
  %idxprom1086 = sext i32 %702 to i64
  %703 = load %struct.locbox*, %struct.locbox** %siteptr, align 8
  %arrayidx1087 = getelementptr inbounds %struct.locbox, %struct.locbox* %703, i64 %idxprom1086
  %xpos1088 = getelementptr inbounds %struct.locbox, %struct.locbox* %arrayidx1087, i32 0, i32 0
  %704 = load i32, i32* %xpos1088, align 4
  %inc1089 = add nsw i32 %704, 1
  store i32 %inc1089, i32* %xpos1088, align 4
  br label %if.end.1090

if.end.1090:                                      ; preds = %if.then.1085, %lor.lhs.false.1082, %lor.lhs.false.1075
  %705 = load i32, i32* %height, align 4
  %rem1091 = srem i32 %705, 2
  %cmp1092 = icmp ne i32 %rem1091, 0
  br i1 %cmp1092, label %land.lhs.true.1094, label %lor.lhs.false.1100

land.lhs.true.1094:                               ; preds = %if.end.1090
  %706 = load i32, i32* %orient, align 4
  %cmp1095 = icmp eq i32 %706, 1
  br i1 %cmp1095, label %if.then.1110, label %lor.lhs.false.1097

lor.lhs.false.1097:                               ; preds = %land.lhs.true.1094
  %707 = load i32, i32* %orient, align 4
  %cmp1098 = icmp eq i32 %707, 3
  br i1 %cmp1098, label %if.then.1110, label %lor.lhs.false.1100

lor.lhs.false.1100:                               ; preds = %lor.lhs.false.1097, %if.end.1090
  %708 = load i32, i32* %length, align 4
  %rem1101 = srem i32 %708, 2
  %cmp1102 = icmp ne i32 %rem1101, 0
  br i1 %cmp1102, label %land.lhs.true.1104, label %if.end.1115

land.lhs.true.1104:                               ; preds = %lor.lhs.false.1100
  %709 = load i32, i32* %orient, align 4
  %cmp1105 = icmp eq i32 %709, 4
  br i1 %cmp1105, label %if.then.1110, label %lor.lhs.false.1107

lor.lhs.false.1107:                               ; preds = %land.lhs.true.1104
  %710 = load i32, i32* %orient, align 4
  %cmp1108 = icmp eq i32 %710, 7
  br i1 %cmp1108, label %if.then.1110, label %if.end.1115

if.then.1110:                                     ; preds = %lor.lhs.false.1107, %land.lhs.true.1104, %lor.lhs.false.1097, %land.lhs.true.1094
  %711 = load i32, i32* %site, align 4
  %idxprom1111 = sext i32 %711 to i64
  %712 = load %struct.locbox*, %struct.locbox** %siteptr, align 8
  %arrayidx1112 = getelementptr inbounds %struct.locbox, %struct.locbox* %712, i64 %idxprom1111
  %ypos1113 = getelementptr inbounds %struct.locbox, %struct.locbox* %arrayidx1112, i32 0, i32 1
  %713 = load i32, i32* %ypos1113, align 4
  %inc1114 = add nsw i32 %713, 1
  store i32 %inc1114, i32* %ypos1113, align 4
  br label %if.end.1115

if.end.1115:                                      ; preds = %if.then.1110, %lor.lhs.false.1107, %lor.lhs.false.1100
  br label %for.inc.1116

for.inc.1116:                                     ; preds = %if.end.1115
  %714 = load i32, i32* %site, align 4
  %inc1117 = add nsw i32 %714, 1
  store i32 %inc1117, i32* %site, align 4
  br label %for.cond.1043

for.end.1118:                                     ; preds = %for.cond.1043
  br label %for.inc.1119

for.inc.1119:                                     ; preds = %for.end.1118, %if.then.1037
  %715 = load i32, i32* %orient, align 4
  %inc1120 = add nsw i32 %715, 1
  store i32 %inc1120, i32* %orient, align 4
  br label %for.cond.1031

for.end.1121:                                     ; preds = %for.cond.1031
  br label %if.end.1122

if.end.1122:                                      ; preds = %for.end.1121, %if.end.1023
  %716 = load double, double* %newAspect.addr, align 8
  %717 = load %struct.cellbox*, %struct.cellbox** %acellptr, align 8
  %aspect = getelementptr inbounds %struct.cellbox, %struct.cellbox* %717, i32 0, i32 13
  store double %716, double* %aspect, align 8
  %718 = load i32, i32* %cost, align 4
  store i32 %718, i32* @funccost, align 4
  %719 = load i32, i32* %newpenalty, align 4
  store i32 %719, i32* @penalty, align 4
  store i32 1, i32* %retval
  br label %return

if.else.1123:                                     ; preds = %lor.lhs.false
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.else.1123, %if.end.1122
  %720 = load i32, i32* %retval
  ret i32 %720
}

; Function Attrs: nounwind
declare double @sqrt(double) #1

declare i32 @ufixnet(%struct.termbox*) #2

declare i32 @usoftnet(%struct.cellbox*) #2

; Function Attrs: nounwind
declare double @exp(double) #1

declare void @ufixpin(%struct.termbox*, i32, i32, i32) #2

declare void @usoftpin(%struct.cellbox*, i32, i32, i32, i32) #2

declare void @move(i32) #2

declare void @rect(i32*, i32*, i32*, i32*) #2

declare void @point(i32*, i32*) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
