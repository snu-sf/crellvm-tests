; ModuleID = './MultiSource.Benchmarks.Prolangs-C/187.TimberWolfMC.testloop.bc'
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

; Function Attrs: nounwind uwtable
define i32 @testloop(i32 %trials) #0 {
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

while.cond:                                       ; preds = %if.end.344, %if.then.231, %if.then.166, %if.then.65, %if.then.58, %if.end.22
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
  br i1 %cmp60, label %if.then.62, label %if.else.217

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
  br i1 %tobool184, label %if.then.185, label %if.else.188

if.then.185:                                      ; preds = %if.end.182
  %142 = load i32, i32* %attempts, align 4
  %inc = add nsw i32 %142, 1
  store i32 %inc, i32* %attempts, align 4
  %143 = load i32, i32* @funccost, align 4
  %conv186 = sitofp i32 %143 to double
  %144 = load double, double* @totFunc, align 8
  %add187 = fadd double %144, %conv186
  store double %add187, double* @totFunc, align 8
  br label %if.end.216

if.else.188:                                      ; preds = %if.end.182
  %145 = load %struct.cellbox*, %struct.cellbox** %acellptr, align 8
  %call189 = call i32 @newOrient(%struct.cellbox* %145, i32 4)
  store i32 %call189, i32* %newaor, align 4
  store i32 1, i32* %reject, align 4
  %146 = load i32, i32* %newaor, align 4
  %cmp190 = icmp sge i32 %146, 0
  br i1 %cmp190, label %if.then.192, label %if.end.200

if.then.192:                                      ; preds = %if.else.188
  %147 = load i32, i32* %a, align 4
  %148 = load i32, i32* %xb, align 4
  %149 = load i32, i32* %yb, align 4
  %150 = load i32, i32* %newaor, align 4
  %call193 = call i32 @usiteo1(i32 %147, i32 %148, i32 %149, i32 %150)
  %tobool194 = icmp ne i32 %call193, 0
  br i1 %tobool194, label %if.then.195, label %if.end.199

if.then.195:                                      ; preds = %if.then.192
  %151 = load i32, i32* %attempts, align 4
  %inc196 = add nsw i32 %151, 1
  store i32 %inc196, i32* %attempts, align 4
  %152 = load i32, i32* @funccost, align 4
  %conv197 = sitofp i32 %152 to double
  %153 = load double, double* @totFunc, align 8
  %add198 = fadd double %153, %conv197
  store double %add198, double* @totFunc, align 8
  store i32 0, i32* %reject, align 4
  br label %if.end.199

if.end.199:                                       ; preds = %if.then.195, %if.then.192
  br label %if.end.200

if.end.200:                                       ; preds = %if.end.199, %if.else.188
  %154 = load i32, i32* %reject, align 4
  %tobool201 = icmp ne i32 %154, 0
  br i1 %tobool201, label %if.then.202, label %if.end.215

if.then.202:                                      ; preds = %if.end.200
  %155 = load %struct.cellbox*, %struct.cellbox** %acellptr, align 8
  %call203 = call i32 @newOrient(%struct.cellbox* %155, i32 8)
  store i32 %call203, i32* %newaor, align 4
  %156 = load i32, i32* %newaor, align 4
  %cmp204 = icmp sge i32 %156, 0
  br i1 %cmp204, label %if.then.206, label %if.end.214

if.then.206:                                      ; preds = %if.then.202
  %157 = load i32, i32* %a, align 4
  %158 = load i32, i32* %newaor, align 4
  %call207 = call i32 @usite0(i32 %157, i32 %158)
  %tobool208 = icmp ne i32 %call207, 0
  br i1 %tobool208, label %if.then.209, label %if.end.213

if.then.209:                                      ; preds = %if.then.206
  %159 = load i32, i32* %attempts, align 4
  %inc210 = add nsw i32 %159, 1
  store i32 %inc210, i32* %attempts, align 4
  %160 = load i32, i32* @funccost, align 4
  %conv211 = sitofp i32 %160 to double
  %161 = load double, double* @totFunc, align 8
  %add212 = fadd double %161, %conv211
  store double %add212, double* @totFunc, align 8
  store i32 0, i32* %reject, align 4
  br label %if.end.213

if.end.213:                                       ; preds = %if.then.209, %if.then.206
  br label %if.end.214

if.end.214:                                       ; preds = %if.end.213, %if.then.202
  br label %if.end.215

if.end.215:                                       ; preds = %if.end.214, %if.end.200
  br label %if.end.216

if.end.216:                                       ; preds = %if.end.215, %if.then.185
  br label %if.end.344

if.else.217:                                      ; preds = %if.end.59
  %162 = load i32, i32* %b, align 4
  %idxprom218 = sext i32 %162 to i64
  %163 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %arrayidx219 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %163, i64 %idxprom218
  %164 = load %struct.cellbox*, %struct.cellbox** %arrayidx219, align 8
  store %struct.cellbox* %164, %struct.cellbox** %bcellptr, align 8
  %165 = load %struct.cellbox*, %struct.cellbox** %acellptr, align 8
  %class220 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %165, i32 0, i32 1
  %166 = load i32, i32* %class220, align 4
  %cmp221 = icmp eq i32 %166, -1
  br i1 %cmp221, label %if.then.231, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else.217
  %167 = load %struct.cellbox*, %struct.cellbox** %bcellptr, align 8
  %class223 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %167, i32 0, i32 1
  %168 = load i32, i32* %class223, align 4
  %cmp224 = icmp eq i32 %168, -1
  br i1 %cmp224, label %if.then.231, label %lor.lhs.false.226

lor.lhs.false.226:                                ; preds = %lor.lhs.false
  %169 = load %struct.cellbox*, %struct.cellbox** %acellptr, align 8
  %class227 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %169, i32 0, i32 1
  %170 = load i32, i32* %class227, align 4
  %171 = load %struct.cellbox*, %struct.cellbox** %bcellptr, align 8
  %class228 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %171, i32 0, i32 1
  %172 = load i32, i32* %class228, align 4
  %cmp229 = icmp ne i32 %170, %172
  br i1 %cmp229, label %if.then.231, label %if.end.232

if.then.231:                                      ; preds = %lor.lhs.false.226, %lor.lhs.false, %if.else.217
  br label %while.cond

if.end.232:                                       ; preds = %lor.lhs.false.226
  %173 = load i32, i32* @gridGiven, align 4
  %tobool233 = icmp ne i32 %173, 0
  br i1 %tobool233, label %if.then.234, label %if.else.264

if.then.234:                                      ; preds = %if.end.232
  %174 = load %struct.cellbox*, %struct.cellbox** %bcellptr, align 8
  %orient235 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %174, i32 0, i32 5
  %175 = load i32, i32* %orient235, align 4
  %idxprom236 = sext i32 %175 to i64
  %176 = load %struct.cellbox*, %struct.cellbox** %bcellptr, align 8
  %config237 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %176, i32 0, i32 21
  %arrayidx238 = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %config237, i32 0, i64 %idxprom236
  %177 = load %struct.tilebox*, %struct.tilebox** %arrayidx238, align 8
  %termptr239 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %177, i32 0, i32 17
  %178 = load %struct.termbox*, %struct.termbox** %termptr239, align 8
  store %struct.termbox* %178, %struct.termbox** %btermptr, align 8
  %179 = load i32, i32* %aorient, align 4
  %idxprom240 = sext i32 %179 to i64
  %180 = load %struct.cellbox*, %struct.cellbox** %acellptr, align 8
  %config241 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %180, i32 0, i32 21
  %arrayidx242 = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %config241, i32 0, i64 %idxprom240
  %181 = load %struct.tilebox*, %struct.tilebox** %arrayidx242, align 8
  %termptr243 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %181, i32 0, i32 17
  %182 = load %struct.termbox*, %struct.termbox** %termptr243, align 8
  store %struct.termbox* %182, %struct.termbox** %termptr, align 8
  %183 = load %struct.cellbox*, %struct.cellbox** %bcellptr, align 8
  %xcenter244 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %183, i32 0, i32 2
  %184 = load i32, i32* %xcenter244, align 4
  %185 = load %struct.termbox*, %struct.termbox** %termptr, align 8
  %xpos245 = getelementptr inbounds %struct.termbox, %struct.termbox* %185, i32 0, i32 1
  %186 = load i32, i32* %xpos245, align 4
  %add246 = add nsw i32 %184, %186
  %187 = load %struct.cellbox*, %struct.cellbox** %bcellptr, align 8
  %ycenter247 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %187, i32 0, i32 3
  %188 = load i32, i32* %ycenter247, align 4
  %189 = load %struct.termbox*, %struct.termbox** %termptr, align 8
  %ypos248 = getelementptr inbounds %struct.termbox, %struct.termbox* %189, i32 0, i32 2
  %190 = load i32, i32* %ypos248, align 4
  %add249 = add nsw i32 %188, %190
  call void @forceGrid(i32 %add246, i32 %add249)
  %191 = load i32, i32* @newxx, align 4
  %192 = load %struct.termbox*, %struct.termbox** %termptr, align 8
  %xpos250 = getelementptr inbounds %struct.termbox, %struct.termbox* %192, i32 0, i32 1
  %193 = load i32, i32* %xpos250, align 4
  %sub251 = sub nsw i32 %191, %193
  store i32 %sub251, i32* %ax, align 4
  %194 = load i32, i32* @newyy, align 4
  %195 = load %struct.termbox*, %struct.termbox** %termptr, align 8
  %ypos252 = getelementptr inbounds %struct.termbox, %struct.termbox* %195, i32 0, i32 2
  %196 = load i32, i32* %ypos252, align 4
  %sub253 = sub nsw i32 %194, %196
  store i32 %sub253, i32* %ay, align 4
  %197 = load %struct.cellbox*, %struct.cellbox** %acellptr, align 8
  %xcenter254 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %197, i32 0, i32 2
  %198 = load i32, i32* %xcenter254, align 4
  %199 = load %struct.termbox*, %struct.termbox** %btermptr, align 8
  %xpos255 = getelementptr inbounds %struct.termbox, %struct.termbox* %199, i32 0, i32 1
  %200 = load i32, i32* %xpos255, align 4
  %add256 = add nsw i32 %198, %200
  %201 = load %struct.cellbox*, %struct.cellbox** %acellptr, align 8
  %ycenter257 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %201, i32 0, i32 3
  %202 = load i32, i32* %ycenter257, align 4
  %203 = load %struct.termbox*, %struct.termbox** %btermptr, align 8
  %ypos258 = getelementptr inbounds %struct.termbox, %struct.termbox* %203, i32 0, i32 2
  %204 = load i32, i32* %ypos258, align 4
  %add259 = add nsw i32 %202, %204
  call void @forceGrid(i32 %add256, i32 %add259)
  %205 = load i32, i32* @newxx, align 4
  %206 = load %struct.termbox*, %struct.termbox** %btermptr, align 8
  %xpos260 = getelementptr inbounds %struct.termbox, %struct.termbox* %206, i32 0, i32 1
  %207 = load i32, i32* %xpos260, align 4
  %sub261 = sub nsw i32 %205, %207
  store i32 %sub261, i32* %bx, align 4
  %208 = load i32, i32* @newyy, align 4
  %209 = load %struct.termbox*, %struct.termbox** %btermptr, align 8
  %ypos262 = getelementptr inbounds %struct.termbox, %struct.termbox* %209, i32 0, i32 2
  %210 = load i32, i32* %ypos262, align 4
  %sub263 = sub nsw i32 %208, %210
  store i32 %sub263, i32* %by, align 4
  br label %if.end.269

if.else.264:                                      ; preds = %if.end.232
  %211 = load %struct.cellbox*, %struct.cellbox** %bcellptr, align 8
  %xcenter265 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %211, i32 0, i32 2
  %212 = load i32, i32* %xcenter265, align 4
  store i32 %212, i32* %ax, align 4
  %213 = load %struct.cellbox*, %struct.cellbox** %bcellptr, align 8
  %ycenter266 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %213, i32 0, i32 3
  %214 = load i32, i32* %ycenter266, align 4
  store i32 %214, i32* %ay, align 4
  %215 = load %struct.cellbox*, %struct.cellbox** %acellptr, align 8
  %xcenter267 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %215, i32 0, i32 2
  %216 = load i32, i32* %xcenter267, align 4
  store i32 %216, i32* %bx, align 4
  %217 = load %struct.cellbox*, %struct.cellbox** %acellptr, align 8
  %ycenter268 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %217, i32 0, i32 3
  %218 = load i32, i32* %ycenter268, align 4
  store i32 %218, i32* %by, align 4
  br label %if.end.269

if.end.269:                                       ; preds = %if.else.264, %if.then.234
  %219 = load i32, i32* %a, align 4
  %220 = load i32, i32* %b, align 4
  %221 = load i32, i32* %ax, align 4
  %222 = load i32, i32* %ay, align 4
  %223 = load i32, i32* %bx, align 4
  %224 = load i32, i32* %by, align 4
  %call270 = call i32 @usite2(i32 %219, i32 %220, i32 %221, i32 %222, i32 %223, i32 %224)
  %tobool271 = icmp ne i32 %call270, 0
  br i1 %tobool271, label %if.then.272, label %if.else.276

if.then.272:                                      ; preds = %if.end.269
  %225 = load i32, i32* %attempts, align 4
  %inc273 = add nsw i32 %225, 1
  store i32 %inc273, i32* %attempts, align 4
  %226 = load i32, i32* @funccost, align 4
  %conv274 = sitofp i32 %226 to double
  %227 = load double, double* @totFunc, align 8
  %add275 = fadd double %227, %conv274
  store double %add275, double* @totFunc, align 8
  br label %if.end.343

if.else.276:                                      ; preds = %if.end.269
  %228 = load %struct.cellbox*, %struct.cellbox** %acellptr, align 8
  %call277 = call i32 @newOrient(%struct.cellbox* %228, i32 4)
  store i32 %call277, i32* %newaor, align 4
  %229 = load i32, i32* %b, align 4
  %idxprom278 = sext i32 %229 to i64
  %230 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %arrayidx279 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %230, i64 %idxprom278
  %231 = load %struct.cellbox*, %struct.cellbox** %arrayidx279, align 8
  %orient280 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %231, i32 0, i32 5
  %232 = load i32, i32* %orient280, align 4
  store i32 %232, i32* %borient, align 4
  %233 = load i32, i32* %b, align 4
  %idxprom281 = sext i32 %233 to i64
  %234 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %arrayidx282 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %234, i64 %idxprom281
  %235 = load %struct.cellbox*, %struct.cellbox** %arrayidx282, align 8
  %call283 = call i32 @newOrient(%struct.cellbox* %235, i32 4)
  store i32 %call283, i32* %newbor, align 4
  %236 = load i32, i32* %newaor, align 4
  %cmp284 = icmp sge i32 %236, 0
  br i1 %cmp284, label %if.then.289, label %lor.lhs.false.286

lor.lhs.false.286:                                ; preds = %if.else.276
  %237 = load i32, i32* %newbor, align 4
  %cmp287 = icmp sge i32 %237, 0
  br i1 %cmp287, label %if.then.289, label %if.end.342

if.then.289:                                      ; preds = %lor.lhs.false.286, %if.else.276
  %238 = load i32, i32* %newaor, align 4
  %cmp290 = icmp slt i32 %238, 0
  br i1 %cmp290, label %if.then.292, label %if.else.293

if.then.292:                                      ; preds = %if.then.289
  %239 = load i32, i32* %aorient, align 4
  store i32 %239, i32* %newaor, align 4
  br label %if.end.298

if.else.293:                                      ; preds = %if.then.289
  %240 = load i32, i32* %newbor, align 4
  %cmp294 = icmp slt i32 %240, 0
  br i1 %cmp294, label %if.then.296, label %if.end.297

if.then.296:                                      ; preds = %if.else.293
  %241 = load i32, i32* %borient, align 4
  store i32 %241, i32* %newbor, align 4
  br label %if.end.297

if.end.297:                                       ; preds = %if.then.296, %if.else.293
  br label %if.end.298

if.end.298:                                       ; preds = %if.end.297, %if.then.292
  %242 = load i32, i32* @gridGiven, align 4
  %tobool299 = icmp ne i32 %242, 0
  br i1 %tobool299, label %if.then.300, label %if.else.329

if.then.300:                                      ; preds = %if.end.298
  %243 = load i32, i32* %newbor, align 4
  %idxprom301 = sext i32 %243 to i64
  %244 = load %struct.cellbox*, %struct.cellbox** %bcellptr, align 8
  %config302 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %244, i32 0, i32 21
  %arrayidx303 = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %config302, i32 0, i64 %idxprom301
  %245 = load %struct.tilebox*, %struct.tilebox** %arrayidx303, align 8
  %termptr304 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %245, i32 0, i32 17
  %246 = load %struct.termbox*, %struct.termbox** %termptr304, align 8
  store %struct.termbox* %246, %struct.termbox** %btermptr, align 8
  %247 = load i32, i32* %newaor, align 4
  %idxprom305 = sext i32 %247 to i64
  %248 = load %struct.cellbox*, %struct.cellbox** %acellptr, align 8
  %config306 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %248, i32 0, i32 21
  %arrayidx307 = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %config306, i32 0, i64 %idxprom305
  %249 = load %struct.tilebox*, %struct.tilebox** %arrayidx307, align 8
  %termptr308 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %249, i32 0, i32 17
  %250 = load %struct.termbox*, %struct.termbox** %termptr308, align 8
  store %struct.termbox* %250, %struct.termbox** %termptr, align 8
  %251 = load %struct.cellbox*, %struct.cellbox** %bcellptr, align 8
  %xcenter309 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %251, i32 0, i32 2
  %252 = load i32, i32* %xcenter309, align 4
  %253 = load %struct.termbox*, %struct.termbox** %termptr, align 8
  %xpos310 = getelementptr inbounds %struct.termbox, %struct.termbox* %253, i32 0, i32 1
  %254 = load i32, i32* %xpos310, align 4
  %add311 = add nsw i32 %252, %254
  %255 = load %struct.cellbox*, %struct.cellbox** %bcellptr, align 8
  %ycenter312 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %255, i32 0, i32 3
  %256 = load i32, i32* %ycenter312, align 4
  %257 = load %struct.termbox*, %struct.termbox** %termptr, align 8
  %ypos313 = getelementptr inbounds %struct.termbox, %struct.termbox* %257, i32 0, i32 2
  %258 = load i32, i32* %ypos313, align 4
  %add314 = add nsw i32 %256, %258
  call void @forceGrid(i32 %add311, i32 %add314)
  %259 = load i32, i32* @newxx, align 4
  %260 = load %struct.termbox*, %struct.termbox** %termptr, align 8
  %xpos315 = getelementptr inbounds %struct.termbox, %struct.termbox* %260, i32 0, i32 1
  %261 = load i32, i32* %xpos315, align 4
  %sub316 = sub nsw i32 %259, %261
  store i32 %sub316, i32* %ax, align 4
  %262 = load i32, i32* @newyy, align 4
  %263 = load %struct.termbox*, %struct.termbox** %termptr, align 8
  %ypos317 = getelementptr inbounds %struct.termbox, %struct.termbox* %263, i32 0, i32 2
  %264 = load i32, i32* %ypos317, align 4
  %sub318 = sub nsw i32 %262, %264
  store i32 %sub318, i32* %ay, align 4
  %265 = load %struct.cellbox*, %struct.cellbox** %acellptr, align 8
  %xcenter319 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %265, i32 0, i32 2
  %266 = load i32, i32* %xcenter319, align 4
  %267 = load %struct.termbox*, %struct.termbox** %btermptr, align 8
  %xpos320 = getelementptr inbounds %struct.termbox, %struct.termbox* %267, i32 0, i32 1
  %268 = load i32, i32* %xpos320, align 4
  %add321 = add nsw i32 %266, %268
  %269 = load %struct.cellbox*, %struct.cellbox** %acellptr, align 8
  %ycenter322 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %269, i32 0, i32 3
  %270 = load i32, i32* %ycenter322, align 4
  %271 = load %struct.termbox*, %struct.termbox** %btermptr, align 8
  %ypos323 = getelementptr inbounds %struct.termbox, %struct.termbox* %271, i32 0, i32 2
  %272 = load i32, i32* %ypos323, align 4
  %add324 = add nsw i32 %270, %272
  call void @forceGrid(i32 %add321, i32 %add324)
  %273 = load i32, i32* @newxx, align 4
  %274 = load %struct.termbox*, %struct.termbox** %btermptr, align 8
  %xpos325 = getelementptr inbounds %struct.termbox, %struct.termbox* %274, i32 0, i32 1
  %275 = load i32, i32* %xpos325, align 4
  %sub326 = sub nsw i32 %273, %275
  store i32 %sub326, i32* %bx, align 4
  %276 = load i32, i32* @newyy, align 4
  %277 = load %struct.termbox*, %struct.termbox** %btermptr, align 8
  %ypos327 = getelementptr inbounds %struct.termbox, %struct.termbox* %277, i32 0, i32 2
  %278 = load i32, i32* %ypos327, align 4
  %sub328 = sub nsw i32 %276, %278
  store i32 %sub328, i32* %by, align 4
  br label %if.end.334

if.else.329:                                      ; preds = %if.end.298
  %279 = load %struct.cellbox*, %struct.cellbox** %bcellptr, align 8
  %xcenter330 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %279, i32 0, i32 2
  %280 = load i32, i32* %xcenter330, align 4
  store i32 %280, i32* %ax, align 4
  %281 = load %struct.cellbox*, %struct.cellbox** %bcellptr, align 8
  %ycenter331 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %281, i32 0, i32 3
  %282 = load i32, i32* %ycenter331, align 4
  store i32 %282, i32* %ay, align 4
  %283 = load %struct.cellbox*, %struct.cellbox** %acellptr, align 8
  %xcenter332 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %283, i32 0, i32 2
  %284 = load i32, i32* %xcenter332, align 4
  store i32 %284, i32* %bx, align 4
  %285 = load %struct.cellbox*, %struct.cellbox** %acellptr, align 8
  %ycenter333 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %285, i32 0, i32 3
  %286 = load i32, i32* %ycenter333, align 4
  store i32 %286, i32* %by, align 4
  br label %if.end.334

if.end.334:                                       ; preds = %if.else.329, %if.then.300
  %287 = load i32, i32* %a, align 4
  %288 = load i32, i32* %b, align 4
  %289 = load i32, i32* %ax, align 4
  %290 = load i32, i32* %ay, align 4
  %291 = load i32, i32* %bx, align 4
  %292 = load i32, i32* %by, align 4
  %293 = load i32, i32* %newaor, align 4
  %294 = load i32, i32* %newbor, align 4
  %call335 = call i32 @usiteo2(i32 %287, i32 %288, i32 %289, i32 %290, i32 %291, i32 %292, i32 %293, i32 %294)
  %tobool336 = icmp ne i32 %call335, 0
  br i1 %tobool336, label %if.then.337, label %if.end.341

if.then.337:                                      ; preds = %if.end.334
  %295 = load i32, i32* %attempts, align 4
  %inc338 = add nsw i32 %295, 1
  store i32 %inc338, i32* %attempts, align 4
  %296 = load i32, i32* @funccost, align 4
  %conv339 = sitofp i32 %296 to double
  %297 = load double, double* @totFunc, align 8
  %add340 = fadd double %297, %conv339
  store double %add340, double* @totFunc, align 8
  br label %if.end.341

if.end.341:                                       ; preds = %if.then.337, %if.end.334
  br label %if.end.342

if.end.342:                                       ; preds = %if.end.341, %lor.lhs.false.286
  br label %if.end.343

if.end.343:                                       ; preds = %if.end.342, %if.then.272
  br label %if.end.344

if.end.344:                                       ; preds = %if.end.343, %if.end.216
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %298 = load i32, i32* %attempts, align 4
  ret i32 %298
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
