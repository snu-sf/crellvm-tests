; ModuleID = './MultiSource.Benchmarks.Prolangs-C/176.TimberWolfMC.fuloop.bc'
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

@flips = external global i32, align 4
@Tsave = external global double, align 8
@T = external global double, align 8
@bdxlength = external global i32, align 4
@bdylength = external global i32, align 4
@fpo = external global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [39 x i8] c"range limiter:%d units either way in x\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"   compared to bdxlength:%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"range limiter:%d units either way in y\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"   compared to bdylength:%d\0A\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"scalex:%d  scaley:%d\0A\00", align 1
@attmax = external global i32, align 4
@numcells = external global i32, align 4
@randVar = external global i32, align 4
@cellarray = external global %struct.cellbox**, align 8
@blockl = external global i32, align 4
@blockr = external global i32, align 4
@blockb = external global i32, align 4
@blockt = external global i32, align 4
@gridGiven = external global i32, align 4
@newxx = external global i32, align 4
@newyy = external global i32, align 4
@.str.5 = private unnamed_addr constant [23 x i8] c"acceptance breakdown:\0A\00", align 1
@.str.6 = private unnamed_addr constant [36 x i8] c"              single cell: %d / %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [28 x i8] c"\09no. of accepted flips: %d\0A\00", align 1

; Function Attrs: nounwind uwtable
define void @fuloop() #0 {
entry:
  %acellptr = alloca %struct.cellbox*, align 8
  %termptr = alloca %struct.termbox*, align 8
  %a = alloca i32, align 4
  %numberx = alloca i32, align 4
  %numbery = alloca i32, align 4
  %attempts = alloca i32, align 4
  %i = alloca i32, align 4
  %xb = alloca i32, align 4
  %yb = alloca i32, align 4
  %axcenter = alloca i32, align 4
  %aycenter = alloca i32, align 4
  %flip1 = alloca i32, align 4
  %att1 = alloca i32, align 4
  %ll = alloca i32, align 4
  %rr = alloca i32, align 4
  %bb = alloca i32, align 4
  %tt = alloca i32, align 4
  %scalex = alloca i32, align 4
  %scaley = alloca i32, align 4
  %bound = alloca double, align 8
  store i32 0, i32* @flips, align 4
  store i32 0, i32* %attempts, align 4
  store i32 0, i32* %flip1, align 4
  store i32 0, i32* %att1, align 4
  %0 = load double, double* @Tsave, align 8
  %call = call double @log10(double %0) #3
  store double %call, double* %bound, align 8
  %1 = load double, double* %bound, align 8
  %cmp = fcmp ogt double %1, 6.000000e+00
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load double, double* %bound, align 8
  %sub = fsub double %2, 1.000000e+00
  store double %sub, double* %bound, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  store double 5.000000e+00, double* %bound, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %3 = load double, double* %bound, align 8
  %call1 = call double @pow(double 4.000000e+00, double %3) #3
  store double %call1, double* %bound, align 8
  %4 = load double, double* @T, align 8
  %call2 = call double @log10(double %4) #3
  %call3 = call double @pow(double 4.000000e+00, double %call2) #3
  %5 = load double, double* %bound, align 8
  %div = fdiv double %call3, %5
  %6 = load i32, i32* @bdxlength, align 4
  %conv = sitofp i32 %6 to double
  %mul = fmul double %div, %conv
  %conv4 = fptosi double %mul to i32
  store i32 %conv4, i32* %numberx, align 4
  %7 = load i32, i32* %numberx, align 4
  %mul5 = mul nsw i32 %7, 2
  store i32 %mul5, i32* %numberx, align 4
  %8 = load i32, i32* %numberx, align 4
  %cmp6 = icmp slt i32 %8, 3
  br i1 %cmp6, label %if.then.8, label %if.else.9

if.then.8:                                        ; preds = %if.end
  store i32 3, i32* %numberx, align 4
  br label %if.end.14

if.else.9:                                        ; preds = %if.end
  %9 = load i32, i32* %numberx, align 4
  %10 = load i32, i32* @bdxlength, align 4
  %cmp10 = icmp sgt i32 %9, %10
  br i1 %cmp10, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %if.else.9
  %11 = load i32, i32* @bdxlength, align 4
  store i32 %11, i32* %numberx, align 4
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.12, %if.else.9
  br label %if.end.14

if.end.14:                                        ; preds = %if.end.13, %if.then.8
  %12 = load double, double* @T, align 8
  %call15 = call double @log10(double %12) #3
  %call16 = call double @pow(double 4.000000e+00, double %call15) #3
  %13 = load double, double* %bound, align 8
  %div17 = fdiv double %call16, %13
  %14 = load i32, i32* @bdylength, align 4
  %conv18 = sitofp i32 %14 to double
  %mul19 = fmul double %div17, %conv18
  %conv20 = fptosi double %mul19 to i32
  store i32 %conv20, i32* %numbery, align 4
  %15 = load i32, i32* %numbery, align 4
  %mul21 = mul nsw i32 %15, 2
  store i32 %mul21, i32* %numbery, align 4
  %16 = load i32, i32* %numbery, align 4
  %cmp22 = icmp slt i32 %16, 3
  br i1 %cmp22, label %if.then.24, label %if.else.25

if.then.24:                                       ; preds = %if.end.14
  store i32 3, i32* %numbery, align 4
  br label %if.end.30

if.else.25:                                       ; preds = %if.end.14
  %17 = load i32, i32* %numbery, align 4
  %18 = load i32, i32* @bdylength, align 4
  %cmp26 = icmp sgt i32 %17, %18
  br i1 %cmp26, label %if.then.28, label %if.end.29

if.then.28:                                       ; preds = %if.else.25
  %19 = load i32, i32* @bdylength, align 4
  store i32 %19, i32* %numbery, align 4
  br label %if.end.29

if.end.29:                                        ; preds = %if.then.28, %if.else.25
  br label %if.end.30

if.end.30:                                        ; preds = %if.end.29, %if.then.24
  %20 = load i32, i32* %numberx, align 4
  %div31 = sdiv i32 %20, 3
  store i32 %div31, i32* %scalex, align 4
  %21 = load i32, i32* %numbery, align 4
  %div32 = sdiv i32 %21, 3
  store i32 %div32, i32* %scaley, align 4
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %23 = load i32, i32* %numberx, align 4
  %call33 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %22, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i32 0, i32 0), i32 %23)
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %25 = load i32, i32* @bdxlength, align 4
  %call34 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %24, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i32 0, i32 0), i32 %25)
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %27 = load i32, i32* %numbery, align 4
  %call35 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %26, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i32 0, i32 0), i32 %27)
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %29 = load i32, i32* @bdylength, align 4
  %call36 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %28, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i32 0, i32 0), i32 %29)
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %31 = load i32, i32* %scalex, align 4
  %32 = load i32, i32* %scaley, align 4
  %call37 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %30, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i32 0, i32 0), i32 %31, i32 %32)
  br label %while.cond

while.cond:                                       ; preds = %if.end.184, %if.then.154, %if.then.52, %if.end.30
  %33 = load i32, i32* %attempts, align 4
  %34 = load i32, i32* @attmax, align 4
  %cmp38 = icmp slt i32 %33, %34
  br i1 %cmp38, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  br label %do.body

do.body:                                          ; preds = %do.cond, %while.body
  %35 = load i32, i32* @numcells, align 4
  %conv40 = sitofp i32 %35 to double
  %36 = load i32, i32* @randVar, align 4
  %mul41 = mul nsw i32 %36, 1103515245
  %add = add nsw i32 %mul41, 12345
  store i32 %add, i32* @randVar, align 4
  %and = and i32 %add, 2147483647
  %conv42 = sitofp i32 %and to double
  %div43 = fdiv double %conv42, 0x41DFFFFFFFC00000
  %mul44 = fmul double %conv40, %div43
  %conv45 = fptosi double %mul44 to i32
  %add46 = add nsw i32 %conv45, 1
  store i32 %add46, i32* %a, align 4
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %37 = load i32, i32* %a, align 4
  %38 = load i32, i32* @numcells, align 4
  %add47 = add nsw i32 %38, 1
  %cmp48 = icmp eq i32 %37, %add47
  br i1 %cmp48, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %39 = load i32, i32* %a, align 4
  %idxprom = sext i32 %39 to i64
  %40 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %arrayidx = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %40, i64 %idxprom
  %41 = load %struct.cellbox*, %struct.cellbox** %arrayidx, align 8
  store %struct.cellbox* %41, %struct.cellbox** %acellptr, align 8
  %42 = load %struct.cellbox*, %struct.cellbox** %acellptr, align 8
  %class = getelementptr inbounds %struct.cellbox, %struct.cellbox* %42, i32 0, i32 1
  %43 = load i32, i32* %class, align 4
  %cmp50 = icmp ne i32 %43, 0
  br i1 %cmp50, label %if.then.52, label %if.end.53

if.then.52:                                       ; preds = %do.end
  br label %while.cond

if.end.53:                                        ; preds = %do.end
  %44 = load %struct.cellbox*, %struct.cellbox** %acellptr, align 8
  %xcenter = getelementptr inbounds %struct.cellbox, %struct.cellbox* %44, i32 0, i32 2
  %45 = load i32, i32* %xcenter, align 4
  store i32 %45, i32* %axcenter, align 4
  %46 = load %struct.cellbox*, %struct.cellbox** %acellptr, align 8
  %ycenter = getelementptr inbounds %struct.cellbox, %struct.cellbox* %46, i32 0, i32 3
  %47 = load i32, i32* %ycenter, align 4
  store i32 %47, i32* %aycenter, align 4
  %48 = load i32, i32* @blockl, align 4
  %49 = load i32, i32* %axcenter, align 4
  %50 = load i32, i32* %numberx, align 4
  %sub54 = sub nsw i32 %49, %50
  %cmp55 = icmp sgt i32 %48, %sub54
  br i1 %cmp55, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.53
  %51 = load i32, i32* @blockl, align 4
  %52 = load i32, i32* %axcenter, align 4
  %sub57 = sub nsw i32 %51, %52
  %53 = load i32, i32* %scalex, align 4
  %div58 = sdiv i32 %sub57, %53
  br label %cond.end.68

cond.false:                                       ; preds = %if.end.53
  %54 = load i32, i32* @blockr, align 4
  %55 = load i32, i32* %axcenter, align 4
  %56 = load i32, i32* %numberx, align 4
  %sub59 = sub nsw i32 %55, %56
  %cmp60 = icmp sle i32 %54, %sub59
  br i1 %cmp60, label %cond.true.62, label %cond.false.65

cond.true.62:                                     ; preds = %cond.false
  %57 = load i32, i32* @blockr, align 4
  %58 = load i32, i32* %axcenter, align 4
  %sub63 = sub nsw i32 %57, %58
  %59 = load i32, i32* %scalex, align 4
  %div64 = sdiv i32 %sub63, %59
  br label %cond.end

cond.false.65:                                    ; preds = %cond.false
  %60 = load i32, i32* %numberx, align 4
  %sub66 = sub nsw i32 0, %60
  %61 = load i32, i32* %scalex, align 4
  %div67 = sdiv i32 %sub66, %61
  br label %cond.end

cond.end:                                         ; preds = %cond.false.65, %cond.true.62
  %cond = phi i32 [ %div64, %cond.true.62 ], [ %div67, %cond.false.65 ]
  br label %cond.end.68

cond.end.68:                                      ; preds = %cond.end, %cond.true
  %cond69 = phi i32 [ %div58, %cond.true ], [ %cond, %cond.end ]
  store i32 %cond69, i32* %ll, align 4
  %62 = load i32, i32* @blockr, align 4
  %63 = load i32, i32* %axcenter, align 4
  %64 = load i32, i32* %numberx, align 4
  %add70 = add nsw i32 %63, %64
  %cmp71 = icmp slt i32 %62, %add70
  br i1 %cmp71, label %cond.true.73, label %cond.false.76

cond.true.73:                                     ; preds = %cond.end.68
  %65 = load i32, i32* @blockr, align 4
  %66 = load i32, i32* %axcenter, align 4
  %sub74 = sub nsw i32 %65, %66
  %67 = load i32, i32* %scalex, align 4
  %div75 = sdiv i32 %sub74, %67
  br label %cond.end.87

cond.false.76:                                    ; preds = %cond.end.68
  %68 = load i32, i32* @blockl, align 4
  %69 = load i32, i32* %axcenter, align 4
  %70 = load i32, i32* %numberx, align 4
  %add77 = add nsw i32 %69, %70
  %cmp78 = icmp sge i32 %68, %add77
  br i1 %cmp78, label %cond.true.80, label %cond.false.83

cond.true.80:                                     ; preds = %cond.false.76
  %71 = load i32, i32* @blockl, align 4
  %72 = load i32, i32* %axcenter, align 4
  %sub81 = sub nsw i32 %71, %72
  %73 = load i32, i32* %scalex, align 4
  %div82 = sdiv i32 %sub81, %73
  br label %cond.end.85

cond.false.83:                                    ; preds = %cond.false.76
  %74 = load i32, i32* %numberx, align 4
  %75 = load i32, i32* %scalex, align 4
  %div84 = sdiv i32 %74, %75
  br label %cond.end.85

cond.end.85:                                      ; preds = %cond.false.83, %cond.true.80
  %cond86 = phi i32 [ %div82, %cond.true.80 ], [ %div84, %cond.false.83 ]
  br label %cond.end.87

cond.end.87:                                      ; preds = %cond.end.85, %cond.true.73
  %cond88 = phi i32 [ %div75, %cond.true.73 ], [ %cond86, %cond.end.85 ]
  store i32 %cond88, i32* %rr, align 4
  %76 = load i32, i32* @blockb, align 4
  %77 = load i32, i32* %aycenter, align 4
  %78 = load i32, i32* %numbery, align 4
  %sub89 = sub nsw i32 %77, %78
  %cmp90 = icmp sgt i32 %76, %sub89
  br i1 %cmp90, label %cond.true.92, label %cond.false.95

cond.true.92:                                     ; preds = %cond.end.87
  %79 = load i32, i32* @blockb, align 4
  %80 = load i32, i32* %aycenter, align 4
  %sub93 = sub nsw i32 %79, %80
  %81 = load i32, i32* %scaley, align 4
  %div94 = sdiv i32 %sub93, %81
  br label %cond.end.107

cond.false.95:                                    ; preds = %cond.end.87
  %82 = load i32, i32* @blockt, align 4
  %83 = load i32, i32* %aycenter, align 4
  %84 = load i32, i32* %numbery, align 4
  %sub96 = sub nsw i32 %83, %84
  %cmp97 = icmp sle i32 %82, %sub96
  br i1 %cmp97, label %cond.true.99, label %cond.false.102

cond.true.99:                                     ; preds = %cond.false.95
  %85 = load i32, i32* @blockt, align 4
  %86 = load i32, i32* %aycenter, align 4
  %sub100 = sub nsw i32 %85, %86
  %87 = load i32, i32* %scaley, align 4
  %div101 = sdiv i32 %sub100, %87
  br label %cond.end.105

cond.false.102:                                   ; preds = %cond.false.95
  %88 = load i32, i32* %numbery, align 4
  %sub103 = sub nsw i32 0, %88
  %89 = load i32, i32* %scaley, align 4
  %div104 = sdiv i32 %sub103, %89
  br label %cond.end.105

cond.end.105:                                     ; preds = %cond.false.102, %cond.true.99
  %cond106 = phi i32 [ %div101, %cond.true.99 ], [ %div104, %cond.false.102 ]
  br label %cond.end.107

cond.end.107:                                     ; preds = %cond.end.105, %cond.true.92
  %cond108 = phi i32 [ %div94, %cond.true.92 ], [ %cond106, %cond.end.105 ]
  store i32 %cond108, i32* %bb, align 4
  %90 = load i32, i32* @blockt, align 4
  %91 = load i32, i32* %aycenter, align 4
  %92 = load i32, i32* %numbery, align 4
  %add109 = add nsw i32 %91, %92
  %cmp110 = icmp slt i32 %90, %add109
  br i1 %cmp110, label %cond.true.112, label %cond.false.115

cond.true.112:                                    ; preds = %cond.end.107
  %93 = load i32, i32* @blockt, align 4
  %94 = load i32, i32* %aycenter, align 4
  %sub113 = sub nsw i32 %93, %94
  %95 = load i32, i32* %scaley, align 4
  %div114 = sdiv i32 %sub113, %95
  br label %cond.end.126

cond.false.115:                                   ; preds = %cond.end.107
  %96 = load i32, i32* @blockb, align 4
  %97 = load i32, i32* %aycenter, align 4
  %98 = load i32, i32* %numbery, align 4
  %add116 = add nsw i32 %97, %98
  %cmp117 = icmp sge i32 %96, %add116
  br i1 %cmp117, label %cond.true.119, label %cond.false.122

cond.true.119:                                    ; preds = %cond.false.115
  %99 = load i32, i32* @blockb, align 4
  %100 = load i32, i32* %aycenter, align 4
  %sub120 = sub nsw i32 %99, %100
  %101 = load i32, i32* %scaley, align 4
  %div121 = sdiv i32 %sub120, %101
  br label %cond.end.124

cond.false.122:                                   ; preds = %cond.false.115
  %102 = load i32, i32* %numbery, align 4
  %103 = load i32, i32* %scaley, align 4
  %div123 = sdiv i32 %102, %103
  br label %cond.end.124

cond.end.124:                                     ; preds = %cond.false.122, %cond.true.119
  %cond125 = phi i32 [ %div121, %cond.true.119 ], [ %div123, %cond.false.122 ]
  br label %cond.end.126

cond.end.126:                                     ; preds = %cond.end.124, %cond.true.112
  %cond127 = phi i32 [ %div114, %cond.true.112 ], [ %cond125, %cond.end.124 ]
  store i32 %cond127, i32* %tt, align 4
  %104 = load i32, i32* %rr, align 4
  %105 = load i32, i32* %ll, align 4
  %sub128 = sub nsw i32 %104, %105
  %add129 = add nsw i32 %sub128, 1
  %conv130 = sitofp i32 %add129 to double
  %106 = load i32, i32* @randVar, align 4
  %mul131 = mul nsw i32 %106, 1103515245
  %add132 = add nsw i32 %mul131, 12345
  store i32 %add132, i32* @randVar, align 4
  %and133 = and i32 %add132, 2147483647
  %conv134 = sitofp i32 %and133 to double
  %div135 = fdiv double %conv134, 0x41DFFFFFFFC00000
  %mul136 = fmul double %conv130, %div135
  %conv137 = fptosi double %mul136 to i32
  %107 = load i32, i32* %ll, align 4
  %add138 = add nsw i32 %conv137, %107
  store i32 %add138, i32* %xb, align 4
  %108 = load i32, i32* %tt, align 4
  %109 = load i32, i32* %bb, align 4
  %sub139 = sub nsw i32 %108, %109
  %add140 = add nsw i32 %sub139, 1
  %conv141 = sitofp i32 %add140 to double
  %110 = load i32, i32* @randVar, align 4
  %mul142 = mul nsw i32 %110, 1103515245
  %add143 = add nsw i32 %mul142, 12345
  store i32 %add143, i32* @randVar, align 4
  %and144 = and i32 %add143, 2147483647
  %conv145 = sitofp i32 %and144 to double
  %div146 = fdiv double %conv145, 0x41DFFFFFFFC00000
  %mul147 = fmul double %conv141, %div146
  %conv148 = fptosi double %mul147 to i32
  %111 = load i32, i32* %bb, align 4
  %add149 = add nsw i32 %conv148, %111
  store i32 %add149, i32* %yb, align 4
  %112 = load i32, i32* %xb, align 4
  %cmp150 = icmp eq i32 %112, 0
  br i1 %cmp150, label %land.lhs.true, label %if.end.155

land.lhs.true:                                    ; preds = %cond.end.126
  %113 = load i32, i32* %yb, align 4
  %cmp152 = icmp eq i32 %113, 0
  br i1 %cmp152, label %if.then.154, label %if.end.155

if.then.154:                                      ; preds = %land.lhs.true
  br label %while.cond

if.end.155:                                       ; preds = %land.lhs.true, %cond.end.126
  %114 = load i32, i32* %axcenter, align 4
  %115 = load i32, i32* %scalex, align 4
  %116 = load i32, i32* %xb, align 4
  %mul156 = mul nsw i32 %115, %116
  %add157 = add nsw i32 %114, %mul156
  store i32 %add157, i32* %xb, align 4
  %117 = load i32, i32* %aycenter, align 4
  %118 = load i32, i32* %scaley, align 4
  %119 = load i32, i32* %yb, align 4
  %mul158 = mul nsw i32 %118, %119
  %add159 = add nsw i32 %117, %mul158
  store i32 %add159, i32* %yb, align 4
  %120 = load i32, i32* @gridGiven, align 4
  %tobool = icmp ne i32 %120, 0
  br i1 %tobool, label %if.then.160, label %if.end.170

if.then.160:                                      ; preds = %if.end.155
  %121 = load %struct.cellbox*, %struct.cellbox** %acellptr, align 8
  %orient = getelementptr inbounds %struct.cellbox, %struct.cellbox* %121, i32 0, i32 5
  %122 = load i32, i32* %orient, align 4
  %idxprom161 = sext i32 %122 to i64
  %123 = load %struct.cellbox*, %struct.cellbox** %acellptr, align 8
  %config = getelementptr inbounds %struct.cellbox, %struct.cellbox* %123, i32 0, i32 21
  %arrayidx162 = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %config, i32 0, i64 %idxprom161
  %124 = load %struct.tilebox*, %struct.tilebox** %arrayidx162, align 8
  %termptr163 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %124, i32 0, i32 17
  %125 = load %struct.termbox*, %struct.termbox** %termptr163, align 8
  store %struct.termbox* %125, %struct.termbox** %termptr, align 8
  %126 = load i32, i32* %xb, align 4
  %127 = load %struct.termbox*, %struct.termbox** %termptr, align 8
  %xpos = getelementptr inbounds %struct.termbox, %struct.termbox* %127, i32 0, i32 1
  %128 = load i32, i32* %xpos, align 4
  %add164 = add nsw i32 %126, %128
  %129 = load i32, i32* %yb, align 4
  %130 = load %struct.termbox*, %struct.termbox** %termptr, align 8
  %ypos = getelementptr inbounds %struct.termbox, %struct.termbox* %130, i32 0, i32 2
  %131 = load i32, i32* %ypos, align 4
  %add165 = add nsw i32 %129, %131
  call void @forceGrid(i32 %add164, i32 %add165)
  %132 = load i32, i32* @newxx, align 4
  %133 = load %struct.termbox*, %struct.termbox** %termptr, align 8
  %xpos166 = getelementptr inbounds %struct.termbox, %struct.termbox* %133, i32 0, i32 1
  %134 = load i32, i32* %xpos166, align 4
  %sub167 = sub nsw i32 %132, %134
  store i32 %sub167, i32* %xb, align 4
  %135 = load i32, i32* @newyy, align 4
  %136 = load %struct.termbox*, %struct.termbox** %termptr, align 8
  %ypos168 = getelementptr inbounds %struct.termbox, %struct.termbox* %136, i32 0, i32 2
  %137 = load i32, i32* %ypos168, align 4
  %sub169 = sub nsw i32 %135, %137
  store i32 %sub169, i32* %yb, align 4
  br label %if.end.170

if.end.170:                                       ; preds = %if.then.160, %if.end.155
  %138 = load i32, i32* %a, align 4
  %139 = load i32, i32* %xb, align 4
  %140 = load i32, i32* %yb, align 4
  %call171 = call i32 @usite1(i32 %138, i32 %139, i32 %140)
  %tobool172 = icmp ne i32 %call171, 0
  br i1 %tobool172, label %if.then.173, label %if.end.175

if.then.173:                                      ; preds = %if.end.170
  %141 = load i32, i32* @flips, align 4
  %inc = add nsw i32 %141, 1
  store i32 %inc, i32* @flips, align 4
  %142 = load i32, i32* %flip1, align 4
  %inc174 = add nsw i32 %142, 1
  store i32 %inc174, i32* %flip1, align 4
  br label %if.end.175

if.end.175:                                       ; preds = %if.then.173, %if.end.170
  %143 = load i32, i32* %attempts, align 4
  %inc176 = add nsw i32 %143, 1
  store i32 %inc176, i32* %attempts, align 4
  %144 = load i32, i32* %att1, align 4
  %inc177 = add nsw i32 %144, 1
  store i32 %inc177, i32* %att1, align 4
  %145 = load %struct.cellbox*, %struct.cellbox** %acellptr, align 8
  %numUnComTerms = getelementptr inbounds %struct.cellbox, %struct.cellbox* %145, i32 0, i32 18
  %146 = load i32, i32* %numUnComTerms, align 4
  %cmp178 = icmp ne i32 %146, 0
  br i1 %cmp178, label %if.then.180, label %if.end.184

if.then.180:                                      ; preds = %if.end.175
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.180
  %147 = load i32, i32* %i, align 4
  %148 = load %struct.cellbox*, %struct.cellbox** %acellptr, align 8
  %numgroups = getelementptr inbounds %struct.cellbox, %struct.cellbox* %148, i32 0, i32 9
  %149 = load i32, i32* %numgroups, align 4
  %cmp181 = icmp sle i32 %147, %149
  br i1 %cmp181, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %150 = load %struct.cellbox*, %struct.cellbox** %acellptr, align 8
  call void @selectpin(%struct.cellbox* %150)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %151 = load i32, i32* %i, align 4
  %inc183 = add nsw i32 %151, 1
  store i32 %inc183, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.184

if.end.184:                                       ; preds = %for.end, %if.end.175
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %152 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %call185 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %152, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i32 0, i32 0))
  %153 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %154 = load i32, i32* %flip1, align 4
  %155 = load i32, i32* %att1, align 4
  %call186 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %153, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.6, i32 0, i32 0), i32 %154, i32 %155)
  %156 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %157 = load i32, i32* @flips, align 4
  %call187 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %156, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i32 0, i32 0), i32 %157)
  ret void
}

; Function Attrs: nounwind
declare double @log10(double) #1

; Function Attrs: nounwind
declare double @pow(double, double) #1

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #2

declare void @forceGrid(i32, i32) #2

declare i32 @usite1(i32, i32, i32) #2

declare void @selectpin(%struct.cellbox*) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
