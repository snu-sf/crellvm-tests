; ModuleID = './MultiSource.Benchmarks.Prolangs-C/201.TimberWolfMC.test2loop.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.cellbox = type { i8*, i32, i32, i32, [9 x i32], i32, i32, i32, i32, i32, i32, i32, double, double, double, double, double, i32, i32, %struct.contentbox*, %struct.uncombox*, [8 x %struct.tilebox*], %struct.sidebox* }
%struct.contentbox = type { i32, i32, i32, i32, i32 }
%struct.uncombox = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.tilebox = type { %struct.tilebox*, double, double, double, double, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.termbox*, %struct.locbox* }
%struct.termbox = type { %struct.termbox*, i32, i32, i32, i32, i32 }
%struct.locbox = type { i32, i32, i32, i32 }
%struct.sidebox = type { i32, i32 }

@totFunc = external global double, align 8
@totPen = external global double, align 8
@T = external global double, align 8
@bdxlength = external global i32, align 4
@bdylength = external global i32, align 4
@fpo = external global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [39 x i8] c"range limiter:%d units either way in x\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"   compared to bdxlength:%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"range limiter:%d units either way in y\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"   compared to bdylength:%d\0A\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"scalex:%d  scaley:%d\0A\00", align 1
@numcells = external global i32, align 4
@randVar = external global i32, align 4
@bigcell = external global i32, align 4
@toobig = external global i32, align 4
@cellarray = external global %struct.cellbox**, align 8
@blockl = external global i32, align 4
@blockr = external global i32, align 4
@blockb = external global i32, align 4
@blockt = external global i32, align 4
@gridGiven = external global i32, align 4
@newxx = external global i32, align 4
@newyy = external global i32, align 4
@funccost = external global i32, align 4
@penalty = external global i32, align 4

; Function Attrs: nounwind uwtable
define i32 @test2loop(i32 %trials) #0 {
entry:
  %trials.addr = alloca i32, align 4
  %acellptr = alloca %struct.cellbox*, align 8
  %bcellptr = alloca %struct.cellbox*, align 8
  %termptr = alloca %struct.termbox*, align 8
  %btermptr = alloca %struct.termbox*, align 8
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  %numberx = alloca i32, align 4
  %numbery = alloca i32, align 4
  %attempts = alloca i32, align 4
  %reject = alloca i32, align 4
  %xb = alloca i32, align 4
  %yb = alloca i32, align 4
  %axcenter = alloca i32, align 4
  %aycenter = alloca i32, align 4
  %aorient = alloca i32, align 4
  %borient = alloca i32, align 4
  %newaor = alloca i32, align 4
  %newbor = alloca i32, align 4
  %ll = alloca i32, align 4
  %rr = alloca i32, align 4
  %bb = alloca i32, align 4
  %tt = alloca i32, align 4
  %ax = alloca i32, align 4
  %ay = alloca i32, align 4
  %bx = alloca i32, align 4
  %by = alloca i32, align 4
  %scalex = alloca i32, align 4
  %scaley = alloca i32, align 4
  store i32 %trials, i32* %trials.addr, align 4
  store i32 0, i32* %attempts, align 4
  store double 0.000000e+00, double* @totFunc, align 8
  store double 0.000000e+00, double* @totPen, align 8
  %0 = load double, double* @T, align 8
  %call = call double @log10(double %0) #3
  %call1 = call double @pow(double 4.000000e+00, double %call) #3
  %div = fdiv double %call1, 1.024000e+03
  %1 = load i32, i32* @bdxlength, align 4
  %conv = sitofp i32 %1 to double
  %mul = fmul double %div, %conv
  %conv2 = fptosi double %mul to i32
  store i32 %conv2, i32* %numberx, align 4
  %2 = load i32, i32* %numberx, align 4
  %cmp = icmp slt i32 %2, 3
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 3, i32* %numberx, align 4
  br label %if.end.7

if.else:                                          ; preds = %entry
  %3 = load i32, i32* %numberx, align 4
  %4 = load i32, i32* @bdxlength, align 4
  %cmp4 = icmp sgt i32 %3, %4
  br i1 %cmp4, label %if.then.6, label %if.end

if.then.6:                                        ; preds = %if.else
  %5 = load i32, i32* @bdxlength, align 4
  store i32 %5, i32* %numberx, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.6, %if.else
  br label %if.end.7

if.end.7:                                         ; preds = %if.end, %if.then
  %6 = load double, double* @T, align 8
  %call8 = call double @log10(double %6) #3
  %call9 = call double @pow(double 4.000000e+00, double %call8) #3
  %div10 = fdiv double %call9, 1.024000e+03
  %7 = load i32, i32* @bdylength, align 4
  %conv11 = sitofp i32 %7 to double
  %mul12 = fmul double %div10, %conv11
  %conv13 = fptosi double %mul12 to i32
  store i32 %conv13, i32* %numbery, align 4
  %8 = load i32, i32* %numbery, align 4
  %cmp14 = icmp slt i32 %8, 3
  br i1 %cmp14, label %if.then.16, label %if.else.17

if.then.16:                                       ; preds = %if.end.7
  store i32 3, i32* %numbery, align 4
  br label %if.end.22

if.else.17:                                       ; preds = %if.end.7
  %9 = load i32, i32* %numbery, align 4
  %10 = load i32, i32* @bdylength, align 4
  %cmp18 = icmp sgt i32 %9, %10
  br i1 %cmp18, label %if.then.20, label %if.end.21

if.then.20:                                       ; preds = %if.else.17
  %11 = load i32, i32* @bdylength, align 4
  store i32 %11, i32* %numbery, align 4
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.20, %if.else.17
  br label %if.end.22

if.end.22:                                        ; preds = %if.end.21, %if.then.16
  %12 = load i32, i32* %numberx, align 4
  %div23 = sdiv i32 %12, 3
  store i32 %div23, i32* %scalex, align 4
  %13 = load i32, i32* %numbery, align 4
  %div24 = sdiv i32 %13, 3
  store i32 %div24, i32* %scaley, align 4
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %15 = load i32, i32* %numberx, align 4
  %call25 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %14, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i32 0, i32 0), i32 %15)
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %17 = load i32, i32* @bdxlength, align 4
  %call26 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %16, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i32 0, i32 0), i32 %17)
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %19 = load i32, i32* %numbery, align 4
  %call27 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %18, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i32 0, i32 0), i32 %19)
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %21 = load i32, i32* @bdylength, align 4
  %call28 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %20, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i32 0, i32 0), i32 %21)
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %23 = load i32, i32* %scalex, align 4
  %24 = load i32, i32* %scaley, align 4
  %call29 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %22, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i32 0, i32 0), i32 %23, i32 %24)
  br label %while.cond

while.cond:                                       ; preds = %if.end.354, %if.then.237, %if.then.166, %if.then.65, %if.then.58, %if.end.22
  %25 = load i32, i32* %attempts, align 4
  %26 = load i32, i32* %trials.addr, align 4
  %cmp30 = icmp slt i32 %25, %26
  br i1 %cmp30, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  br label %do.body

do.body:                                          ; preds = %do.cond, %while.body
  %27 = load i32, i32* @numcells, align 4
  %conv32 = sitofp i32 %27 to double
  %28 = load i32, i32* @randVar, align 4
  %mul33 = mul nsw i32 %28, 1103515245
  %add = add nsw i32 %mul33, 12345
  store i32 %add, i32* @randVar, align 4
  %and = and i32 %add, 2147483647
  %conv34 = sitofp i32 %and to double
  %div35 = fdiv double %conv34, 0x41DFFFFFFFC00000
  %mul36 = fmul double %conv32, %div35
  %conv37 = fptosi double %mul36 to i32
  %add38 = add nsw i32 %conv37, 1
  store i32 %add38, i32* %a, align 4
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %29 = load i32, i32* %a, align 4
  %30 = load i32, i32* @numcells, align 4
  %add39 = add nsw i32 %30, 1
  %cmp40 = icmp eq i32 %29, %add39
  br i1 %cmp40, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  br label %do.body.42

do.body.42:                                       ; preds = %do.cond.52, %do.end
  %31 = load i32, i32* @bigcell, align 4
  %conv43 = sitofp i32 %31 to double
  %32 = load i32, i32* @randVar, align 4
  %mul44 = mul nsw i32 %32, 1103515245
  %add45 = add nsw i32 %mul44, 12345
  store i32 %add45, i32* @randVar, align 4
  %and46 = and i32 %add45, 2147483647
  %conv47 = sitofp i32 %and46 to double
  %div48 = fdiv double %conv47, 0x41DFFFFFFFC00000
  %mul49 = fmul double %conv43, %div48
  %conv50 = fptosi double %mul49 to i32
  %add51 = add nsw i32 %conv50, 1
  store i32 %add51, i32* %b, align 4
  br label %do.cond.52

do.cond.52:                                       ; preds = %do.body.42
  %33 = load i32, i32* %b, align 4
  %34 = load i32, i32* @toobig, align 4
  %cmp53 = icmp eq i32 %33, %34
  br i1 %cmp53, label %do.body.42, label %do.end.55

do.end.55:                                        ; preds = %do.cond.52
  %35 = load i32, i32* %a, align 4
  %36 = load i32, i32* %b, align 4
  %cmp56 = icmp eq i32 %35, %36
  br i1 %cmp56, label %if.then.58, label %if.end.59

if.then.58:                                       ; preds = %do.end.55
  br label %while.cond

if.end.59:                                        ; preds = %do.end.55
  %37 = load i32, i32* %a, align 4
  %idxprom = sext i32 %37 to i64
  %38 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %arrayidx = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %38, i64 %idxprom
  %39 = load %struct.cellbox*, %struct.cellbox** %arrayidx, align 8
  store %struct.cellbox* %39, %struct.cellbox** %acellptr, align 8
  %40 = load %struct.cellbox*, %struct.cellbox** %acellptr, align 8
  %orient = getelementptr inbounds %struct.cellbox, %struct.cellbox* %40, i32 0, i32 5
  %41 = load i32, i32* %orient, align 4
  store i32 %41, i32* %aorient, align 4
  %42 = load i32, i32* %b, align 4
  %43 = load i32, i32* @numcells, align 4
  %cmp60 = icmp sgt i32 %42, %43
  br i1 %cmp60, label %if.then.62, label %if.else.223

if.then.62:                                       ; preds = %if.end.59
  %44 = load %struct.cellbox*, %struct.cellbox** %acellptr, align 8
  %class = getelementptr inbounds %struct.cellbox, %struct.cellbox* %44, i32 0, i32 1
  %45 = load i32, i32* %class, align 4
  %cmp63 = icmp ne i32 %45, 0
  br i1 %cmp63, label %if.then.65, label %if.end.66

if.then.65:                                       ; preds = %if.then.62
  br label %while.cond

if.end.66:                                        ; preds = %if.then.62
  %46 = load %struct.cellbox*, %struct.cellbox** %acellptr, align 8
  %xcenter = getelementptr inbounds %struct.cellbox, %struct.cellbox* %46, i32 0, i32 2
  %47 = load i32, i32* %xcenter, align 4
  store i32 %47, i32* %axcenter, align 4
  %48 = load %struct.cellbox*, %struct.cellbox** %acellptr, align 8
  %ycenter = getelementptr inbounds %struct.cellbox, %struct.cellbox* %48, i32 0, i32 3
  %49 = load i32, i32* %ycenter, align 4
  store i32 %49, i32* %aycenter, align 4
  %50 = load i32, i32* @blockl, align 4
  %51 = load i32, i32* %axcenter, align 4
  %52 = load i32, i32* %numberx, align 4
  %sub = sub nsw i32 %51, %52
  %cmp67 = icmp sgt i32 %50, %sub
  br i1 %cmp67, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.66
  %53 = load i32, i32* @blockl, align 4
  %54 = load i32, i32* %axcenter, align 4
  %sub69 = sub nsw i32 %53, %54
  %55 = load i32, i32* %scalex, align 4
  %div70 = sdiv i32 %sub69, %55
  br label %cond.end.80

cond.false:                                       ; preds = %if.end.66
  %56 = load i32, i32* @blockr, align 4
  %57 = load i32, i32* %axcenter, align 4
  %58 = load i32, i32* %numberx, align 4
  %sub71 = sub nsw i32 %57, %58
  %cmp72 = icmp sle i32 %56, %sub71
  br i1 %cmp72, label %cond.true.74, label %cond.false.77

cond.true.74:                                     ; preds = %cond.false
  %59 = load i32, i32* @blockr, align 4
  %60 = load i32, i32* %axcenter, align 4
  %sub75 = sub nsw i32 %59, %60
  %61 = load i32, i32* %scalex, align 4
  %div76 = sdiv i32 %sub75, %61
  br label %cond.end

cond.false.77:                                    ; preds = %cond.false
  %62 = load i32, i32* %numberx, align 4
  %sub78 = sub nsw i32 0, %62
  %63 = load i32, i32* %scalex, align 4
  %div79 = sdiv i32 %sub78, %63
  br label %cond.end

cond.end:                                         ; preds = %cond.false.77, %cond.true.74
  %cond = phi i32 [ %div76, %cond.true.74 ], [ %div79, %cond.false.77 ]
  br label %cond.end.80

cond.end.80:                                      ; preds = %cond.end, %cond.true
  %cond81 = phi i32 [ %div70, %cond.true ], [ %cond, %cond.end ]
  store i32 %cond81, i32* %ll, align 4
  %64 = load i32, i32* @blockr, align 4
  %65 = load i32, i32* %axcenter, align 4
  %66 = load i32, i32* %numberx, align 4
  %add82 = add nsw i32 %65, %66
  %cmp83 = icmp slt i32 %64, %add82
  br i1 %cmp83, label %cond.true.85, label %cond.false.88

cond.true.85:                                     ; preds = %cond.end.80
  %67 = load i32, i32* @blockr, align 4
  %68 = load i32, i32* %axcenter, align 4
  %sub86 = sub nsw i32 %67, %68
  %69 = load i32, i32* %scalex, align 4
  %div87 = sdiv i32 %sub86, %69
  br label %cond.end.99

cond.false.88:                                    ; preds = %cond.end.80
  %70 = load i32, i32* @blockl, align 4
  %71 = load i32, i32* %axcenter, align 4
  %72 = load i32, i32* %numberx, align 4
  %add89 = add nsw i32 %71, %72
  %cmp90 = icmp sge i32 %70, %add89
  br i1 %cmp90, label %cond.true.92, label %cond.false.95

cond.true.92:                                     ; preds = %cond.false.88
  %73 = load i32, i32* @blockl, align 4
  %74 = load i32, i32* %axcenter, align 4
  %sub93 = sub nsw i32 %73, %74
  %75 = load i32, i32* %scalex, align 4
  %div94 = sdiv i32 %sub93, %75
  br label %cond.end.97

cond.false.95:                                    ; preds = %cond.false.88
  %76 = load i32, i32* %numberx, align 4
  %77 = load i32, i32* %scalex, align 4
  %div96 = sdiv i32 %76, %77
  br label %cond.end.97

cond.end.97:                                      ; preds = %cond.false.95, %cond.true.92
  %cond98 = phi i32 [ %div94, %cond.true.92 ], [ %div96, %cond.false.95 ]
  br label %cond.end.99

cond.end.99:                                      ; preds = %cond.end.97, %cond.true.85
  %cond100 = phi i32 [ %div87, %cond.true.85 ], [ %cond98, %cond.end.97 ]
  store i32 %cond100, i32* %rr, align 4
  %78 = load i32, i32* @blockb, align 4
  %79 = load i32, i32* %aycenter, align 4
  %80 = load i32, i32* %numbery, align 4
  %sub101 = sub nsw i32 %79, %80
  %cmp102 = icmp sgt i32 %78, %sub101
  br i1 %cmp102, label %cond.true.104, label %cond.false.107

cond.true.104:                                    ; preds = %cond.end.99
  %81 = load i32, i32* @blockb, align 4
  %82 = load i32, i32* %aycenter, align 4
  %sub105 = sub nsw i32 %81, %82
  %83 = load i32, i32* %scaley, align 4
  %div106 = sdiv i32 %sub105, %83
  br label %cond.end.119

cond.false.107:                                   ; preds = %cond.end.99
  %84 = load i32, i32* @blockt, align 4
  %85 = load i32, i32* %aycenter, align 4
  %86 = load i32, i32* %numbery, align 4
  %sub108 = sub nsw i32 %85, %86
  %cmp109 = icmp sle i32 %84, %sub108
  br i1 %cmp109, label %cond.true.111, label %cond.false.114

cond.true.111:                                    ; preds = %cond.false.107
  %87 = load i32, i32* @blockt, align 4
  %88 = load i32, i32* %aycenter, align 4
  %sub112 = sub nsw i32 %87, %88
  %89 = load i32, i32* %scaley, align 4
  %div113 = sdiv i32 %sub112, %89
  br label %cond.end.117

cond.false.114:                                   ; preds = %cond.false.107
  %90 = load i32, i32* %numbery, align 4
  %sub115 = sub nsw i32 0, %90
  %91 = load i32, i32* %scaley, align 4
  %div116 = sdiv i32 %sub115, %91
  br label %cond.end.117

cond.end.117:                                     ; preds = %cond.false.114, %cond.true.111
  %cond118 = phi i32 [ %div113, %cond.true.111 ], [ %div116, %cond.false.114 ]
  br label %cond.end.119

cond.end.119:                                     ; preds = %cond.end.117, %cond.true.104
  %cond120 = phi i32 [ %div106, %cond.true.104 ], [ %cond118, %cond.end.117 ]
  store i32 %cond120, i32* %bb, align 4
  %92 = load i32, i32* @blockt, align 4
  %93 = load i32, i32* %aycenter, align 4
  %94 = load i32, i32* %numbery, align 4
  %add121 = add nsw i32 %93, %94
  %cmp122 = icmp slt i32 %92, %add121
  br i1 %cmp122, label %cond.true.124, label %cond.false.127

cond.true.124:                                    ; preds = %cond.end.119
  %95 = load i32, i32* @blockt, align 4
  %96 = load i32, i32* %aycenter, align 4
  %sub125 = sub nsw i32 %95, %96
  %97 = load i32, i32* %scaley, align 4
  %div126 = sdiv i32 %sub125, %97
  br label %cond.end.138

cond.false.127:                                   ; preds = %cond.end.119
  %98 = load i32, i32* @blockb, align 4
  %99 = load i32, i32* %aycenter, align 4
  %100 = load i32, i32* %numbery, align 4
  %add128 = add nsw i32 %99, %100
  %cmp129 = icmp sge i32 %98, %add128
  br i1 %cmp129, label %cond.true.131, label %cond.false.134

cond.true.131:                                    ; preds = %cond.false.127
  %101 = load i32, i32* @blockb, align 4
  %102 = load i32, i32* %aycenter, align 4
  %sub132 = sub nsw i32 %101, %102
  %103 = load i32, i32* %scaley, align 4
  %div133 = sdiv i32 %sub132, %103
  br label %cond.end.136

cond.false.134:                                   ; preds = %cond.false.127
  %104 = load i32, i32* %numbery, align 4
  %105 = load i32, i32* %scaley, align 4
  %div135 = sdiv i32 %104, %105
  br label %cond.end.136

cond.end.136:                                     ; preds = %cond.false.134, %cond.true.131
  %cond137 = phi i32 [ %div133, %cond.true.131 ], [ %div135, %cond.false.134 ]
  br label %cond.end.138

cond.end.138:                                     ; preds = %cond.end.136, %cond.true.124
  %cond139 = phi i32 [ %div126, %cond.true.124 ], [ %cond137, %cond.end.136 ]
  store i32 %cond139, i32* %tt, align 4
  %106 = load i32, i32* %rr, align 4
  %107 = load i32, i32* %ll, align 4
  %sub140 = sub nsw i32 %106, %107
  %add141 = add nsw i32 %sub140, 1
  %conv142 = sitofp i32 %add141 to double
  %108 = load i32, i32* @randVar, align 4
  %mul143 = mul nsw i32 %108, 1103515245
  %add144 = add nsw i32 %mul143, 12345
  store i32 %add144, i32* @randVar, align 4
  %and145 = and i32 %add144, 2147483647
  %conv146 = sitofp i32 %and145 to double
  %div147 = fdiv double %conv146, 0x41DFFFFFFFC00000
  %mul148 = fmul double %conv142, %div147
  %conv149 = fptosi double %mul148 to i32
  %109 = load i32, i32* %ll, align 4
  %add150 = add nsw i32 %conv149, %109
  store i32 %add150, i32* %xb, align 4
  %110 = load i32, i32* %tt, align 4
  %111 = load i32, i32* %bb, align 4
  %sub151 = sub nsw i32 %110, %111
  %add152 = add nsw i32 %sub151, 1
  %conv153 = sitofp i32 %add152 to double
  %112 = load i32, i32* @randVar, align 4
  %mul154 = mul nsw i32 %112, 1103515245
  %add155 = add nsw i32 %mul154, 12345
  store i32 %add155, i32* @randVar, align 4
  %and156 = and i32 %add155, 2147483647
  %conv157 = sitofp i32 %and156 to double
  %div158 = fdiv double %conv157, 0x41DFFFFFFFC00000
  %mul159 = fmul double %conv153, %div158
  %conv160 = fptosi double %mul159 to i32
  %113 = load i32, i32* %bb, align 4
  %add161 = add nsw i32 %conv160, %113
  store i32 %add161, i32* %yb, align 4
  %114 = load i32, i32* %xb, align 4
  %cmp162 = icmp eq i32 %114, 0
  br i1 %cmp162, label %land.lhs.true, label %if.end.167

land.lhs.true:                                    ; preds = %cond.end.138
  %115 = load i32, i32* %yb, align 4
  %cmp164 = icmp eq i32 %115, 0
  br i1 %cmp164, label %if.then.166, label %if.end.167

if.then.166:                                      ; preds = %land.lhs.true
  br label %while.cond

if.end.167:                                       ; preds = %land.lhs.true, %cond.end.138
  %116 = load i32, i32* %axcenter, align 4
  %117 = load i32, i32* %scalex, align 4
  %118 = load i32, i32* %xb, align 4
  %mul168 = mul nsw i32 %117, %118
  %add169 = add nsw i32 %116, %mul168
  store i32 %add169, i32* %xb, align 4
  %119 = load i32, i32* %aycenter, align 4
  %120 = load i32, i32* %scaley, align 4
  %121 = load i32, i32* %yb, align 4
  %mul170 = mul nsw i32 %120, %121
  %add171 = add nsw i32 %119, %mul170
  store i32 %add171, i32* %yb, align 4
  %122 = load i32, i32* @gridGiven, align 4
  %tobool = icmp ne i32 %122, 0
  br i1 %tobool, label %if.then.172, label %if.end.182

if.then.172:                                      ; preds = %if.end.167
  %123 = load i32, i32* %aorient, align 4
  %idxprom173 = sext i32 %123 to i64
  %124 = load %struct.cellbox*, %struct.cellbox** %acellptr, align 8
  %config = getelementptr inbounds %struct.cellbox, %struct.cellbox* %124, i32 0, i32 21
  %arrayidx174 = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %config, i32 0, i64 %idxprom173
  %125 = load %struct.tilebox*, %struct.tilebox** %arrayidx174, align 8
  %termptr175 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %125, i32 0, i32 17
  %126 = load %struct.termbox*, %struct.termbox** %termptr175, align 8
  store %struct.termbox* %126, %struct.termbox** %termptr, align 8
  %127 = load i32, i32* %xb, align 4
  %128 = load %struct.termbox*, %struct.termbox** %termptr, align 8
  %xpos = getelementptr inbounds %struct.termbox, %struct.termbox* %128, i32 0, i32 1
  %129 = load i32, i32* %xpos, align 4
  %add176 = add nsw i32 %127, %129
  %130 = load i32, i32* %yb, align 4
  %131 = load %struct.termbox*, %struct.termbox** %termptr, align 8
  %ypos = getelementptr inbounds %struct.termbox, %struct.termbox* %131, i32 0, i32 2
  %132 = load i32, i32* %ypos, align 4
  %add177 = add nsw i32 %130, %132
  call void @forceGrid(i32 %add176, i32 %add177)
  %133 = load i32, i32* @newxx, align 4
  %134 = load %struct.termbox*, %struct.termbox** %termptr, align 8
  %xpos178 = getelementptr inbounds %struct.termbox, %struct.termbox* %134, i32 0, i32 1
  %135 = load i32, i32* %xpos178, align 4
  %sub179 = sub nsw i32 %133, %135
  store i32 %sub179, i32* %xb, align 4
  %136 = load i32, i32* @newyy, align 4
  %137 = load %struct.termbox*, %struct.termbox** %termptr, align 8
  %ypos180 = getelementptr inbounds %struct.termbox, %struct.termbox* %137, i32 0, i32 2
  %138 = load i32, i32* %ypos180, align 4
  %sub181 = sub nsw i32 %136, %138
  store i32 %sub181, i32* %yb, align 4
  br label %if.end.182

if.end.182:                                       ; preds = %if.then.172, %if.end.167
  %139 = load i32, i32* %a, align 4
  %140 = load i32, i32* %xb, align 4
  %141 = load i32, i32* %yb, align 4
  %call183 = call i32 @usite1(i32 %139, i32 %140, i32 %141)
  %tobool184 = icmp ne i32 %call183, 0
  br i1 %tobool184, label %if.then.185, label %if.else.190

if.then.185:                                      ; preds = %if.end.182
  %142 = load i32, i32* %attempts, align 4
  %inc = add nsw i32 %142, 1
  store i32 %inc, i32* %attempts, align 4
  %143 = load i32, i32* @funccost, align 4
  %conv186 = sitofp i32 %143 to double
  %144 = load double, double* @totFunc, align 8
  %add187 = fadd double %144, %conv186
  store double %add187, double* @totFunc, align 8
  %145 = load i32, i32* @penalty, align 4
  %conv188 = sitofp i32 %145 to double
  %146 = load double, double* @totPen, align 8
  %add189 = fadd double %146, %conv188
  store double %add189, double* @totPen, align 8
  br label %if.end.222

if.else.190:                                      ; preds = %if.end.182
  %147 = load %struct.cellbox*, %struct.cellbox** %acellptr, align 8
  %call191 = call i32 @newOrient(%struct.cellbox* %147, i32 4)
  store i32 %call191, i32* %newaor, align 4
  store i32 1, i32* %reject, align 4
  %148 = load i32, i32* %newaor, align 4
  %cmp192 = icmp sge i32 %148, 0
  br i1 %cmp192, label %if.then.194, label %if.end.204

if.then.194:                                      ; preds = %if.else.190
  %149 = load i32, i32* %a, align 4
  %150 = load i32, i32* %xb, align 4
  %151 = load i32, i32* %yb, align 4
  %152 = load i32, i32* %newaor, align 4
  %call195 = call i32 @usiteo1(i32 %149, i32 %150, i32 %151, i32 %152)
  %tobool196 = icmp ne i32 %call195, 0
  br i1 %tobool196, label %if.then.197, label %if.end.203

if.then.197:                                      ; preds = %if.then.194
  %153 = load i32, i32* %attempts, align 4
  %inc198 = add nsw i32 %153, 1
  store i32 %inc198, i32* %attempts, align 4
  %154 = load i32, i32* @funccost, align 4
  %conv199 = sitofp i32 %154 to double
  %155 = load double, double* @totFunc, align 8
  %add200 = fadd double %155, %conv199
  store double %add200, double* @totFunc, align 8
  %156 = load i32, i32* @penalty, align 4
  %conv201 = sitofp i32 %156 to double
  %157 = load double, double* @totPen, align 8
  %add202 = fadd double %157, %conv201
  store double %add202, double* @totPen, align 8
  store i32 0, i32* %reject, align 4
  br label %if.end.203

if.end.203:                                       ; preds = %if.then.197, %if.then.194
  br label %if.end.204

if.end.204:                                       ; preds = %if.end.203, %if.else.190
  %158 = load i32, i32* %reject, align 4
  %tobool205 = icmp ne i32 %158, 0
  br i1 %tobool205, label %if.then.206, label %if.end.221

if.then.206:                                      ; preds = %if.end.204
  %159 = load %struct.cellbox*, %struct.cellbox** %acellptr, align 8
  %call207 = call i32 @newOrient(%struct.cellbox* %159, i32 8)
  store i32 %call207, i32* %newaor, align 4
  %160 = load i32, i32* %newaor, align 4
  %cmp208 = icmp sge i32 %160, 0
  br i1 %cmp208, label %if.then.210, label %if.end.220

if.then.210:                                      ; preds = %if.then.206
  %161 = load i32, i32* %a, align 4
  %162 = load i32, i32* %newaor, align 4
  %call211 = call i32 @usite0(i32 %161, i32 %162)
  %tobool212 = icmp ne i32 %call211, 0
  br i1 %tobool212, label %if.then.213, label %if.end.219

if.then.213:                                      ; preds = %if.then.210
  %163 = load i32, i32* %attempts, align 4
  %inc214 = add nsw i32 %163, 1
  store i32 %inc214, i32* %attempts, align 4
  %164 = load i32, i32* @funccost, align 4
  %conv215 = sitofp i32 %164 to double
  %165 = load double, double* @totFunc, align 8
  %add216 = fadd double %165, %conv215
  store double %add216, double* @totFunc, align 8
  %166 = load i32, i32* @penalty, align 4
  %conv217 = sitofp i32 %166 to double
  %167 = load double, double* @totPen, align 8
  %add218 = fadd double %167, %conv217
  store double %add218, double* @totPen, align 8
  store i32 0, i32* %reject, align 4
  br label %if.end.219

if.end.219:                                       ; preds = %if.then.213, %if.then.210
  br label %if.end.220

if.end.220:                                       ; preds = %if.end.219, %if.then.206
  br label %if.end.221

if.end.221:                                       ; preds = %if.end.220, %if.end.204
  br label %if.end.222

if.end.222:                                       ; preds = %if.end.221, %if.then.185
  br label %if.end.354

if.else.223:                                      ; preds = %if.end.59
  %168 = load i32, i32* %b, align 4
  %idxprom224 = sext i32 %168 to i64
  %169 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %arrayidx225 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %169, i64 %idxprom224
  %170 = load %struct.cellbox*, %struct.cellbox** %arrayidx225, align 8
  store %struct.cellbox* %170, %struct.cellbox** %bcellptr, align 8
  %171 = load %struct.cellbox*, %struct.cellbox** %acellptr, align 8
  %class226 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %171, i32 0, i32 1
  %172 = load i32, i32* %class226, align 4
  %cmp227 = icmp eq i32 %172, -1
  br i1 %cmp227, label %if.then.237, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else.223
  %173 = load %struct.cellbox*, %struct.cellbox** %bcellptr, align 8
  %class229 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %173, i32 0, i32 1
  %174 = load i32, i32* %class229, align 4
  %cmp230 = icmp eq i32 %174, -1
  br i1 %cmp230, label %if.then.237, label %lor.lhs.false.232

lor.lhs.false.232:                                ; preds = %lor.lhs.false
  %175 = load %struct.cellbox*, %struct.cellbox** %acellptr, align 8
  %class233 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %175, i32 0, i32 1
  %176 = load i32, i32* %class233, align 4
  %177 = load %struct.cellbox*, %struct.cellbox** %bcellptr, align 8
  %class234 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %177, i32 0, i32 1
  %178 = load i32, i32* %class234, align 4
  %cmp235 = icmp ne i32 %176, %178
  br i1 %cmp235, label %if.then.237, label %if.end.238

if.then.237:                                      ; preds = %lor.lhs.false.232, %lor.lhs.false, %if.else.223
  br label %while.cond

if.end.238:                                       ; preds = %lor.lhs.false.232
  %179 = load i32, i32* @gridGiven, align 4
  %tobool239 = icmp ne i32 %179, 0
  br i1 %tobool239, label %if.then.240, label %if.else.270

if.then.240:                                      ; preds = %if.end.238
  %180 = load %struct.cellbox*, %struct.cellbox** %bcellptr, align 8
  %orient241 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %180, i32 0, i32 5
  %181 = load i32, i32* %orient241, align 4
  %idxprom242 = sext i32 %181 to i64
  %182 = load %struct.cellbox*, %struct.cellbox** %bcellptr, align 8
  %config243 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %182, i32 0, i32 21
  %arrayidx244 = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %config243, i32 0, i64 %idxprom242
  %183 = load %struct.tilebox*, %struct.tilebox** %arrayidx244, align 8
  %termptr245 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %183, i32 0, i32 17
  %184 = load %struct.termbox*, %struct.termbox** %termptr245, align 8
  store %struct.termbox* %184, %struct.termbox** %btermptr, align 8
  %185 = load i32, i32* %aorient, align 4
  %idxprom246 = sext i32 %185 to i64
  %186 = load %struct.cellbox*, %struct.cellbox** %acellptr, align 8
  %config247 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %186, i32 0, i32 21
  %arrayidx248 = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %config247, i32 0, i64 %idxprom246
  %187 = load %struct.tilebox*, %struct.tilebox** %arrayidx248, align 8
  %termptr249 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %187, i32 0, i32 17
  %188 = load %struct.termbox*, %struct.termbox** %termptr249, align 8
  store %struct.termbox* %188, %struct.termbox** %termptr, align 8
  %189 = load %struct.cellbox*, %struct.cellbox** %bcellptr, align 8
  %xcenter250 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %189, i32 0, i32 2
  %190 = load i32, i32* %xcenter250, align 4
  %191 = load %struct.termbox*, %struct.termbox** %termptr, align 8
  %xpos251 = getelementptr inbounds %struct.termbox, %struct.termbox* %191, i32 0, i32 1
  %192 = load i32, i32* %xpos251, align 4
  %add252 = add nsw i32 %190, %192
  %193 = load %struct.cellbox*, %struct.cellbox** %bcellptr, align 8
  %ycenter253 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %193, i32 0, i32 3
  %194 = load i32, i32* %ycenter253, align 4
  %195 = load %struct.termbox*, %struct.termbox** %termptr, align 8
  %ypos254 = getelementptr inbounds %struct.termbox, %struct.termbox* %195, i32 0, i32 2
  %196 = load i32, i32* %ypos254, align 4
  %add255 = add nsw i32 %194, %196
  call void @forceGrid(i32 %add252, i32 %add255)
  %197 = load i32, i32* @newxx, align 4
  %198 = load %struct.termbox*, %struct.termbox** %termptr, align 8
  %xpos256 = getelementptr inbounds %struct.termbox, %struct.termbox* %198, i32 0, i32 1
  %199 = load i32, i32* %xpos256, align 4
  %sub257 = sub nsw i32 %197, %199
  store i32 %sub257, i32* %ax, align 4
  %200 = load i32, i32* @newyy, align 4
  %201 = load %struct.termbox*, %struct.termbox** %termptr, align 8
  %ypos258 = getelementptr inbounds %struct.termbox, %struct.termbox* %201, i32 0, i32 2
  %202 = load i32, i32* %ypos258, align 4
  %sub259 = sub nsw i32 %200, %202
  store i32 %sub259, i32* %ay, align 4
  %203 = load %struct.cellbox*, %struct.cellbox** %acellptr, align 8
  %xcenter260 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %203, i32 0, i32 2
  %204 = load i32, i32* %xcenter260, align 4
  %205 = load %struct.termbox*, %struct.termbox** %btermptr, align 8
  %xpos261 = getelementptr inbounds %struct.termbox, %struct.termbox* %205, i32 0, i32 1
  %206 = load i32, i32* %xpos261, align 4
  %add262 = add nsw i32 %204, %206
  %207 = load %struct.cellbox*, %struct.cellbox** %acellptr, align 8
  %ycenter263 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %207, i32 0, i32 3
  %208 = load i32, i32* %ycenter263, align 4
  %209 = load %struct.termbox*, %struct.termbox** %btermptr, align 8
  %ypos264 = getelementptr inbounds %struct.termbox, %struct.termbox* %209, i32 0, i32 2
  %210 = load i32, i32* %ypos264, align 4
  %add265 = add nsw i32 %208, %210
  call void @forceGrid(i32 %add262, i32 %add265)
  %211 = load i32, i32* @newxx, align 4
  %212 = load %struct.termbox*, %struct.termbox** %btermptr, align 8
  %xpos266 = getelementptr inbounds %struct.termbox, %struct.termbox* %212, i32 0, i32 1
  %213 = load i32, i32* %xpos266, align 4
  %sub267 = sub nsw i32 %211, %213
  store i32 %sub267, i32* %bx, align 4
  %214 = load i32, i32* @newyy, align 4
  %215 = load %struct.termbox*, %struct.termbox** %btermptr, align 8
  %ypos268 = getelementptr inbounds %struct.termbox, %struct.termbox* %215, i32 0, i32 2
  %216 = load i32, i32* %ypos268, align 4
  %sub269 = sub nsw i32 %214, %216
  store i32 %sub269, i32* %by, align 4
  br label %if.end.275

if.else.270:                                      ; preds = %if.end.238
  %217 = load %struct.cellbox*, %struct.cellbox** %bcellptr, align 8
  %xcenter271 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %217, i32 0, i32 2
  %218 = load i32, i32* %xcenter271, align 4
  store i32 %218, i32* %ax, align 4
  %219 = load %struct.cellbox*, %struct.cellbox** %bcellptr, align 8
  %ycenter272 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %219, i32 0, i32 3
  %220 = load i32, i32* %ycenter272, align 4
  store i32 %220, i32* %ay, align 4
  %221 = load %struct.cellbox*, %struct.cellbox** %acellptr, align 8
  %xcenter273 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %221, i32 0, i32 2
  %222 = load i32, i32* %xcenter273, align 4
  store i32 %222, i32* %bx, align 4
  %223 = load %struct.cellbox*, %struct.cellbox** %acellptr, align 8
  %ycenter274 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %223, i32 0, i32 3
  %224 = load i32, i32* %ycenter274, align 4
  store i32 %224, i32* %by, align 4
  br label %if.end.275

if.end.275:                                       ; preds = %if.else.270, %if.then.240
  %225 = load i32, i32* %a, align 4
  %226 = load i32, i32* %b, align 4
  %227 = load i32, i32* %ax, align 4
  %228 = load i32, i32* %ay, align 4
  %229 = load i32, i32* %bx, align 4
  %230 = load i32, i32* %by, align 4
  %call276 = call i32 @usite2(i32 %225, i32 %226, i32 %227, i32 %228, i32 %229, i32 %230)
  %tobool277 = icmp ne i32 %call276, 0
  br i1 %tobool277, label %if.then.278, label %if.else.284

if.then.278:                                      ; preds = %if.end.275
  %231 = load i32, i32* %attempts, align 4
  %inc279 = add nsw i32 %231, 1
  store i32 %inc279, i32* %attempts, align 4
  %232 = load i32, i32* @funccost, align 4
  %conv280 = sitofp i32 %232 to double
  %233 = load double, double* @totFunc, align 8
  %add281 = fadd double %233, %conv280
  store double %add281, double* @totFunc, align 8
  %234 = load i32, i32* @penalty, align 4
  %conv282 = sitofp i32 %234 to double
  %235 = load double, double* @totPen, align 8
  %add283 = fadd double %235, %conv282
  store double %add283, double* @totPen, align 8
  br label %if.end.353

if.else.284:                                      ; preds = %if.end.275
  %236 = load %struct.cellbox*, %struct.cellbox** %acellptr, align 8
  %call285 = call i32 @newOrient(%struct.cellbox* %236, i32 4)
  store i32 %call285, i32* %newaor, align 4
  %237 = load i32, i32* %b, align 4
  %idxprom286 = sext i32 %237 to i64
  %238 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %arrayidx287 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %238, i64 %idxprom286
  %239 = load %struct.cellbox*, %struct.cellbox** %arrayidx287, align 8
  %orient288 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %239, i32 0, i32 5
  %240 = load i32, i32* %orient288, align 4
  store i32 %240, i32* %borient, align 4
  %241 = load i32, i32* %b, align 4
  %idxprom289 = sext i32 %241 to i64
  %242 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %arrayidx290 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %242, i64 %idxprom289
  %243 = load %struct.cellbox*, %struct.cellbox** %arrayidx290, align 8
  %call291 = call i32 @newOrient(%struct.cellbox* %243, i32 4)
  store i32 %call291, i32* %newbor, align 4
  %244 = load i32, i32* %newaor, align 4
  %cmp292 = icmp sge i32 %244, 0
  br i1 %cmp292, label %if.then.297, label %lor.lhs.false.294

lor.lhs.false.294:                                ; preds = %if.else.284
  %245 = load i32, i32* %newbor, align 4
  %cmp295 = icmp sge i32 %245, 0
  br i1 %cmp295, label %if.then.297, label %if.end.352

if.then.297:                                      ; preds = %lor.lhs.false.294, %if.else.284
  %246 = load i32, i32* %newaor, align 4
  %cmp298 = icmp slt i32 %246, 0
  br i1 %cmp298, label %if.then.300, label %if.else.301

if.then.300:                                      ; preds = %if.then.297
  %247 = load i32, i32* %aorient, align 4
  store i32 %247, i32* %newaor, align 4
  br label %if.end.306

if.else.301:                                      ; preds = %if.then.297
  %248 = load i32, i32* %newbor, align 4
  %cmp302 = icmp slt i32 %248, 0
  br i1 %cmp302, label %if.then.304, label %if.end.305

if.then.304:                                      ; preds = %if.else.301
  %249 = load i32, i32* %borient, align 4
  store i32 %249, i32* %newbor, align 4
  br label %if.end.305

if.end.305:                                       ; preds = %if.then.304, %if.else.301
  br label %if.end.306

if.end.306:                                       ; preds = %if.end.305, %if.then.300
  %250 = load i32, i32* @gridGiven, align 4
  %tobool307 = icmp ne i32 %250, 0
  br i1 %tobool307, label %if.then.308, label %if.else.337

if.then.308:                                      ; preds = %if.end.306
  %251 = load i32, i32* %newbor, align 4
  %idxprom309 = sext i32 %251 to i64
  %252 = load %struct.cellbox*, %struct.cellbox** %bcellptr, align 8
  %config310 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %252, i32 0, i32 21
  %arrayidx311 = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %config310, i32 0, i64 %idxprom309
  %253 = load %struct.tilebox*, %struct.tilebox** %arrayidx311, align 8
  %termptr312 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %253, i32 0, i32 17
  %254 = load %struct.termbox*, %struct.termbox** %termptr312, align 8
  store %struct.termbox* %254, %struct.termbox** %btermptr, align 8
  %255 = load i32, i32* %newaor, align 4
  %idxprom313 = sext i32 %255 to i64
  %256 = load %struct.cellbox*, %struct.cellbox** %acellptr, align 8
  %config314 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %256, i32 0, i32 21
  %arrayidx315 = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %config314, i32 0, i64 %idxprom313
  %257 = load %struct.tilebox*, %struct.tilebox** %arrayidx315, align 8
  %termptr316 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %257, i32 0, i32 17
  %258 = load %struct.termbox*, %struct.termbox** %termptr316, align 8
  store %struct.termbox* %258, %struct.termbox** %termptr, align 8
  %259 = load %struct.cellbox*, %struct.cellbox** %bcellptr, align 8
  %xcenter317 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %259, i32 0, i32 2
  %260 = load i32, i32* %xcenter317, align 4
  %261 = load %struct.termbox*, %struct.termbox** %termptr, align 8
  %xpos318 = getelementptr inbounds %struct.termbox, %struct.termbox* %261, i32 0, i32 1
  %262 = load i32, i32* %xpos318, align 4
  %add319 = add nsw i32 %260, %262
  %263 = load %struct.cellbox*, %struct.cellbox** %bcellptr, align 8
  %ycenter320 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %263, i32 0, i32 3
  %264 = load i32, i32* %ycenter320, align 4
  %265 = load %struct.termbox*, %struct.termbox** %termptr, align 8
  %ypos321 = getelementptr inbounds %struct.termbox, %struct.termbox* %265, i32 0, i32 2
  %266 = load i32, i32* %ypos321, align 4
  %add322 = add nsw i32 %264, %266
  call void @forceGrid(i32 %add319, i32 %add322)
  %267 = load i32, i32* @newxx, align 4
  %268 = load %struct.termbox*, %struct.termbox** %termptr, align 8
  %xpos323 = getelementptr inbounds %struct.termbox, %struct.termbox* %268, i32 0, i32 1
  %269 = load i32, i32* %xpos323, align 4
  %sub324 = sub nsw i32 %267, %269
  store i32 %sub324, i32* %ax, align 4
  %270 = load i32, i32* @newyy, align 4
  %271 = load %struct.termbox*, %struct.termbox** %termptr, align 8
  %ypos325 = getelementptr inbounds %struct.termbox, %struct.termbox* %271, i32 0, i32 2
  %272 = load i32, i32* %ypos325, align 4
  %sub326 = sub nsw i32 %270, %272
  store i32 %sub326, i32* %ay, align 4
  %273 = load %struct.cellbox*, %struct.cellbox** %acellptr, align 8
  %xcenter327 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %273, i32 0, i32 2
  %274 = load i32, i32* %xcenter327, align 4
  %275 = load %struct.termbox*, %struct.termbox** %btermptr, align 8
  %xpos328 = getelementptr inbounds %struct.termbox, %struct.termbox* %275, i32 0, i32 1
  %276 = load i32, i32* %xpos328, align 4
  %add329 = add nsw i32 %274, %276
  %277 = load %struct.cellbox*, %struct.cellbox** %acellptr, align 8
  %ycenter330 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %277, i32 0, i32 3
  %278 = load i32, i32* %ycenter330, align 4
  %279 = load %struct.termbox*, %struct.termbox** %btermptr, align 8
  %ypos331 = getelementptr inbounds %struct.termbox, %struct.termbox* %279, i32 0, i32 2
  %280 = load i32, i32* %ypos331, align 4
  %add332 = add nsw i32 %278, %280
  call void @forceGrid(i32 %add329, i32 %add332)
  %281 = load i32, i32* @newxx, align 4
  %282 = load %struct.termbox*, %struct.termbox** %btermptr, align 8
  %xpos333 = getelementptr inbounds %struct.termbox, %struct.termbox* %282, i32 0, i32 1
  %283 = load i32, i32* %xpos333, align 4
  %sub334 = sub nsw i32 %281, %283
  store i32 %sub334, i32* %bx, align 4
  %284 = load i32, i32* @newyy, align 4
  %285 = load %struct.termbox*, %struct.termbox** %btermptr, align 8
  %ypos335 = getelementptr inbounds %struct.termbox, %struct.termbox* %285, i32 0, i32 2
  %286 = load i32, i32* %ypos335, align 4
  %sub336 = sub nsw i32 %284, %286
  store i32 %sub336, i32* %by, align 4
  br label %if.end.342

if.else.337:                                      ; preds = %if.end.306
  %287 = load %struct.cellbox*, %struct.cellbox** %bcellptr, align 8
  %xcenter338 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %287, i32 0, i32 2
  %288 = load i32, i32* %xcenter338, align 4
  store i32 %288, i32* %ax, align 4
  %289 = load %struct.cellbox*, %struct.cellbox** %bcellptr, align 8
  %ycenter339 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %289, i32 0, i32 3
  %290 = load i32, i32* %ycenter339, align 4
  store i32 %290, i32* %ay, align 4
  %291 = load %struct.cellbox*, %struct.cellbox** %acellptr, align 8
  %xcenter340 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %291, i32 0, i32 2
  %292 = load i32, i32* %xcenter340, align 4
  store i32 %292, i32* %bx, align 4
  %293 = load %struct.cellbox*, %struct.cellbox** %acellptr, align 8
  %ycenter341 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %293, i32 0, i32 3
  %294 = load i32, i32* %ycenter341, align 4
  store i32 %294, i32* %by, align 4
  br label %if.end.342

if.end.342:                                       ; preds = %if.else.337, %if.then.308
  %295 = load i32, i32* %a, align 4
  %296 = load i32, i32* %b, align 4
  %297 = load i32, i32* %ax, align 4
  %298 = load i32, i32* %ay, align 4
  %299 = load i32, i32* %bx, align 4
  %300 = load i32, i32* %by, align 4
  %301 = load i32, i32* %newaor, align 4
  %302 = load i32, i32* %newbor, align 4
  %call343 = call i32 @usiteo2(i32 %295, i32 %296, i32 %297, i32 %298, i32 %299, i32 %300, i32 %301, i32 %302)
  %tobool344 = icmp ne i32 %call343, 0
  br i1 %tobool344, label %if.then.345, label %if.end.351

if.then.345:                                      ; preds = %if.end.342
  %303 = load i32, i32* %attempts, align 4
  %inc346 = add nsw i32 %303, 1
  store i32 %inc346, i32* %attempts, align 4
  %304 = load i32, i32* @funccost, align 4
  %conv347 = sitofp i32 %304 to double
  %305 = load double, double* @totFunc, align 8
  %add348 = fadd double %305, %conv347
  store double %add348, double* @totFunc, align 8
  %306 = load i32, i32* @penalty, align 4
  %conv349 = sitofp i32 %306 to double
  %307 = load double, double* @totPen, align 8
  %add350 = fadd double %307, %conv349
  store double %add350, double* @totPen, align 8
  br label %if.end.351

if.end.351:                                       ; preds = %if.then.345, %if.end.342
  br label %if.end.352

if.end.352:                                       ; preds = %if.end.351, %lor.lhs.false.294
  br label %if.end.353

if.end.353:                                       ; preds = %if.end.352, %if.then.278
  br label %if.end.354

if.end.354:                                       ; preds = %if.end.353, %if.end.222
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %308 = load i32, i32* %attempts, align 4
  ret i32 %308
}

; Function Attrs: nounwind
declare double @pow(double, double) #1

; Function Attrs: nounwind
declare double @log10(double) #1

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #2

declare void @forceGrid(i32, i32) #2

declare i32 @usite1(i32, i32, i32) #2

declare i32 @newOrient(%struct.cellbox*, i32) #2

declare i32 @usiteo1(i32, i32, i32, i32) #2

declare i32 @usite0(i32, i32) #2

declare i32 @usite2(i32, i32, i32, i32, i32, i32) #2

declare i32 @usiteo2(i32, i32, i32, i32, i32, i32, i32, i32) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
