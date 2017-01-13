; ModuleID = './MultiSource.Benchmarks.Prolangs-C/245.TimberWolfMC.makebins.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@numBinsX = external global i32, align 4
@numBinsY = external global i32, align 4
@fpo = external global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [34 x i8] c"numBinsX automatically set to:%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"numBinsY automatically set to:%d\0A\00", align 1
@blockarray = external global i32***, align 8
@numcells = external global i32, align 4
@bucket = external global i32*, align 8

; Function Attrs: nounwind uwtable
define void @makebins(i32 %numc) #0 {
entry:
  %numc.addr = alloca i32, align 4
  %b = alloca double, align 8
  %e = alloca double, align 8
  %c = alloca double, align 8
  %a = alloca i32, align 4
  %b1 = alloca i32, align 4
  %xbins = alloca i32, align 4
  %ybins = alloca i32, align 4
  %saveHx = alloca i32, align 4
  %saveHy = alloca i32, align 4
  %saveLx = alloca i32, align 4
  %saveLy = alloca i32, align 4
  %totalH = alloca i32, align 4
  %totalL = alloca i32, align 4
  %saveL2x = alloca i32, align 4
  %saveL2y = alloca i32, align 4
  %totalL2 = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %diff = alloca i32, align 4
  store i32 %numc, i32* %numc.addr, align 4
  %0 = load i32, i32* %numc.addr, align 4
  %conv = sitofp i32 %0 to double
  store double %conv, double* %c, align 8
  store i32 1, i32* %b1, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.21, %entry
  %1 = load i32, i32* %b1, align 4
  %cmp = icmp sle i32 %1, 19
  br i1 %cmp, label %for.body, label %for.end.23

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %a, align 4
  br label %for.cond.2

for.cond.2:                                       ; preds = %for.inc, %for.body
  %2 = load i32, i32* %a, align 4
  %cmp3 = icmp sle i32 %2, 99
  br i1 %cmp3, label %for.body.5, label %for.end

for.body.5:                                       ; preds = %for.cond.2
  %3 = load i32, i32* %b1, align 4
  %conv6 = sitofp i32 %3 to double
  %4 = load i32, i32* %a, align 4
  %conv7 = sitofp i32 %4 to double
  %div = fdiv double %conv7, 1.000000e+02
  %add = fadd double %conv6, %div
  store double %add, double* %b, align 8
  %5 = load double, double* %b, align 8
  %call = call double @pow(double %5, double 4.000000e+00) #3
  %6 = load double, double* %c, align 8
  %call8 = call double @sqrt(double %6) #3
  %mul = fmul double 2.000000e+00, %call8
  %add9 = fadd double %mul, 2.000000e+00
  %7 = load double, double* %b, align 8
  %call10 = call double @pow(double %7, double 3.000000e+00) #3
  %mul11 = fmul double %add9, %call10
  %sub = fsub double %call, %mul11
  %8 = load double, double* %c, align 8
  %call12 = call double @sqrt(double %8) #3
  %mul13 = fmul double 2.000000e+00, %call12
  %add14 = fadd double %mul13, 1.000000e+00
  %9 = load double, double* %b, align 8
  %call15 = call double @pow(double %9, double 2.000000e+00) #3
  %mul16 = fmul double %add14, %call15
  %add17 = fadd double %sub, %mul16
  %10 = load double, double* %c, align 8
  %add18 = fadd double %add17, %10
  store double %add18, double* %e, align 8
  %11 = load double, double* %e, align 8
  %cmp19 = fcmp olt double %11, 0.000000e+00
  br i1 %cmp19, label %if.then, label %if.end

if.then:                                          ; preds = %for.body.5
  store i32 20, i32* %b1, align 4
  br label %for.end

if.end:                                           ; preds = %for.body.5
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %12 = load i32, i32* %a, align 4
  %inc = add nsw i32 %12, 1
  store i32 %inc, i32* %a, align 4
  br label %for.cond.2

for.end:                                          ; preds = %if.then, %for.cond.2
  br label %for.inc.21

for.inc.21:                                       ; preds = %for.end
  %13 = load i32, i32* %b1, align 4
  %inc22 = add nsw i32 %13, 1
  store i32 %inc22, i32* %b1, align 4
  br label %for.cond

for.end.23:                                       ; preds = %for.cond
  %14 = load double, double* %b, align 8
  %conv24 = fptosi double %14 to i32
  %add25 = add nsw i32 %conv24, 1
  store i32 %add25, i32* %xbins, align 4
  %15 = load double, double* %b, align 8
  %conv26 = fptosi double %15 to i32
  %add27 = add nsw i32 %conv26, 1
  store i32 %add27, i32* %ybins, align 4
  %16 = load i32, i32* %xbins, align 4
  %17 = load i32, i32* %ybins, align 4
  %add28 = add nsw i32 %16, %17
  store i32 %add28, i32* %totalH, align 4
  %18 = load i32, i32* %totalH, align 4
  %sub29 = sub nsw i32 %18, 1
  store i32 %sub29, i32* %totalL, align 4
  %19 = load i32, i32* %totalL, align 4
  %sub30 = sub nsw i32 %19, 1
  store i32 %sub30, i32* %totalL2, align 4
  store i32 100, i32* %saveHx, align 4
  store i32 32000, i32* %diff, align 4
  store i32 1, i32* %x, align 4
  br label %for.cond.31

for.cond.31:                                      ; preds = %for.inc.58, %for.end.23
  %20 = load i32, i32* %x, align 4
  %21 = load i32, i32* %xbins, align 4
  %cmp32 = icmp sle i32 %20, %21
  br i1 %cmp32, label %for.body.34, label %for.end.60

for.body.34:                                      ; preds = %for.cond.31
  %22 = load i32, i32* %totalH, align 4
  %23 = load i32, i32* %x, align 4
  %sub35 = sub nsw i32 %22, %23
  store i32 %sub35, i32* %y, align 4
  %24 = load i32, i32* %x, align 4
  %25 = load i32, i32* %y, align 4
  %mul36 = mul nsw i32 %24, %25
  %conv37 = sitofp i32 %mul36 to double
  %26 = load double, double* %b, align 8
  %27 = load double, double* %b, align 8
  %mul38 = fmul double %26, %27
  %sub39 = fsub double %mul38, 5.000000e-01
  %cmp40 = fcmp olt double %conv37, %sub39
  br i1 %cmp40, label %if.then.42, label %if.end.43

if.then.42:                                       ; preds = %for.body.34
  br label %for.inc.58

if.end.43:                                        ; preds = %for.body.34
  %28 = load i32, i32* %x, align 4
  %29 = load i32, i32* %y, align 4
  %mul44 = mul nsw i32 %28, %29
  %conv45 = sitofp i32 %mul44 to double
  %30 = load double, double* %b, align 8
  %31 = load double, double* %b, align 8
  %mul46 = fmul double %30, %31
  %sub47 = fsub double %conv45, %mul46
  %32 = load i32, i32* %diff, align 4
  %conv48 = sitofp i32 %32 to double
  %cmp49 = fcmp olt double %sub47, %conv48
  br i1 %cmp49, label %if.then.51, label %if.end.57

if.then.51:                                       ; preds = %if.end.43
  %33 = load i32, i32* %x, align 4
  %34 = load i32, i32* %y, align 4
  %mul52 = mul nsw i32 %33, %34
  %conv53 = sitofp i32 %mul52 to double
  %35 = load double, double* %b, align 8
  %36 = load double, double* %b, align 8
  %mul54 = fmul double %35, %36
  %sub55 = fsub double %conv53, %mul54
  %conv56 = fptosi double %sub55 to i32
  store i32 %conv56, i32* %diff, align 4
  %37 = load i32, i32* %x, align 4
  store i32 %37, i32* %saveHx, align 4
  %38 = load i32, i32* %y, align 4
  store i32 %38, i32* %saveHy, align 4
  br label %if.end.57

if.end.57:                                        ; preds = %if.then.51, %if.end.43
  br label %for.inc.58

for.inc.58:                                       ; preds = %if.end.57, %if.then.42
  %39 = load i32, i32* %x, align 4
  %inc59 = add nsw i32 %39, 1
  store i32 %inc59, i32* %x, align 4
  br label %for.cond.31

for.end.60:                                       ; preds = %for.cond.31
  store i32 100, i32* %saveLx, align 4
  store i32 32000, i32* %diff, align 4
  store i32 1, i32* %x, align 4
  br label %for.cond.61

for.cond.61:                                      ; preds = %for.inc.88, %for.end.60
  %40 = load i32, i32* %x, align 4
  %41 = load i32, i32* %xbins, align 4
  %cmp62 = icmp sle i32 %40, %41
  br i1 %cmp62, label %for.body.64, label %for.end.90

for.body.64:                                      ; preds = %for.cond.61
  %42 = load i32, i32* %totalL, align 4
  %43 = load i32, i32* %x, align 4
  %sub65 = sub nsw i32 %42, %43
  store i32 %sub65, i32* %y, align 4
  %44 = load i32, i32* %x, align 4
  %45 = load i32, i32* %y, align 4
  %mul66 = mul nsw i32 %44, %45
  %conv67 = sitofp i32 %mul66 to double
  %46 = load double, double* %b, align 8
  %47 = load double, double* %b, align 8
  %mul68 = fmul double %46, %47
  %sub69 = fsub double %mul68, 5.000000e-01
  %cmp70 = fcmp olt double %conv67, %sub69
  br i1 %cmp70, label %if.then.72, label %if.end.73

if.then.72:                                       ; preds = %for.body.64
  br label %for.inc.88

if.end.73:                                        ; preds = %for.body.64
  %48 = load i32, i32* %x, align 4
  %49 = load i32, i32* %y, align 4
  %mul74 = mul nsw i32 %48, %49
  %conv75 = sitofp i32 %mul74 to double
  %50 = load double, double* %b, align 8
  %51 = load double, double* %b, align 8
  %mul76 = fmul double %50, %51
  %sub77 = fsub double %conv75, %mul76
  %52 = load i32, i32* %diff, align 4
  %conv78 = sitofp i32 %52 to double
  %cmp79 = fcmp olt double %sub77, %conv78
  br i1 %cmp79, label %if.then.81, label %if.end.87

if.then.81:                                       ; preds = %if.end.73
  %53 = load i32, i32* %x, align 4
  %54 = load i32, i32* %y, align 4
  %mul82 = mul nsw i32 %53, %54
  %conv83 = sitofp i32 %mul82 to double
  %55 = load double, double* %b, align 8
  %56 = load double, double* %b, align 8
  %mul84 = fmul double %55, %56
  %sub85 = fsub double %conv83, %mul84
  %conv86 = fptosi double %sub85 to i32
  store i32 %conv86, i32* %diff, align 4
  %57 = load i32, i32* %x, align 4
  store i32 %57, i32* %saveLx, align 4
  %58 = load i32, i32* %y, align 4
  store i32 %58, i32* %saveLy, align 4
  br label %if.end.87

if.end.87:                                        ; preds = %if.then.81, %if.end.73
  br label %for.inc.88

for.inc.88:                                       ; preds = %if.end.87, %if.then.72
  %59 = load i32, i32* %x, align 4
  %inc89 = add nsw i32 %59, 1
  store i32 %inc89, i32* %x, align 4
  br label %for.cond.61

for.end.90:                                       ; preds = %for.cond.61
  store i32 100, i32* %saveL2x, align 4
  store i32 32000, i32* %diff, align 4
  store i32 1, i32* %x, align 4
  br label %for.cond.91

for.cond.91:                                      ; preds = %for.inc.118, %for.end.90
  %60 = load i32, i32* %x, align 4
  %61 = load i32, i32* %xbins, align 4
  %cmp92 = icmp sle i32 %60, %61
  br i1 %cmp92, label %for.body.94, label %for.end.120

for.body.94:                                      ; preds = %for.cond.91
  %62 = load i32, i32* %totalL2, align 4
  %63 = load i32, i32* %x, align 4
  %sub95 = sub nsw i32 %62, %63
  store i32 %sub95, i32* %y, align 4
  %64 = load i32, i32* %x, align 4
  %65 = load i32, i32* %y, align 4
  %mul96 = mul nsw i32 %64, %65
  %conv97 = sitofp i32 %mul96 to double
  %66 = load double, double* %b, align 8
  %67 = load double, double* %b, align 8
  %mul98 = fmul double %66, %67
  %sub99 = fsub double %mul98, 5.000000e-01
  %cmp100 = fcmp olt double %conv97, %sub99
  br i1 %cmp100, label %if.then.102, label %if.end.103

if.then.102:                                      ; preds = %for.body.94
  br label %for.inc.118

if.end.103:                                       ; preds = %for.body.94
  %68 = load i32, i32* %x, align 4
  %69 = load i32, i32* %y, align 4
  %mul104 = mul nsw i32 %68, %69
  %conv105 = sitofp i32 %mul104 to double
  %70 = load double, double* %b, align 8
  %71 = load double, double* %b, align 8
  %mul106 = fmul double %70, %71
  %sub107 = fsub double %conv105, %mul106
  %72 = load i32, i32* %diff, align 4
  %conv108 = sitofp i32 %72 to double
  %cmp109 = fcmp olt double %sub107, %conv108
  br i1 %cmp109, label %if.then.111, label %if.end.117

if.then.111:                                      ; preds = %if.end.103
  %73 = load i32, i32* %x, align 4
  %74 = load i32, i32* %y, align 4
  %mul112 = mul nsw i32 %73, %74
  %conv113 = sitofp i32 %mul112 to double
  %75 = load double, double* %b, align 8
  %76 = load double, double* %b, align 8
  %mul114 = fmul double %75, %76
  %sub115 = fsub double %conv113, %mul114
  %conv116 = fptosi double %sub115 to i32
  store i32 %conv116, i32* %diff, align 4
  %77 = load i32, i32* %x, align 4
  store i32 %77, i32* %saveL2x, align 4
  %78 = load i32, i32* %y, align 4
  store i32 %78, i32* %saveL2y, align 4
  br label %if.end.117

if.end.117:                                       ; preds = %if.then.111, %if.end.103
  br label %for.inc.118

for.inc.118:                                      ; preds = %if.end.117, %if.then.102
  %79 = load i32, i32* %x, align 4
  %inc119 = add nsw i32 %79, 1
  store i32 %inc119, i32* %x, align 4
  br label %for.cond.91

for.end.120:                                      ; preds = %for.cond.91
  %80 = load i32, i32* %saveLx, align 4
  %cmp121 = icmp slt i32 %80, 100
  br i1 %cmp121, label %land.lhs.true, label %if.else.132

land.lhs.true:                                    ; preds = %for.end.120
  %81 = load i32, i32* %saveHx, align 4
  %cmp123 = icmp slt i32 %81, 100
  br i1 %cmp123, label %if.then.125, label %if.else.132

if.then.125:                                      ; preds = %land.lhs.true
  %82 = load i32, i32* %saveLx, align 4
  %83 = load i32, i32* %saveLy, align 4
  %mul126 = mul nsw i32 %82, %83
  %84 = load i32, i32* %saveHx, align 4
  %85 = load i32, i32* %saveHy, align 4
  %mul127 = mul nsw i32 %84, %85
  %cmp128 = icmp sle i32 %mul126, %mul127
  br i1 %cmp128, label %if.then.130, label %if.else

if.then.130:                                      ; preds = %if.then.125
  %86 = load i32, i32* %saveLx, align 4
  store i32 %86, i32* %xbins, align 4
  %87 = load i32, i32* %saveLy, align 4
  store i32 %87, i32* %ybins, align 4
  br label %if.end.131

if.else:                                          ; preds = %if.then.125
  %88 = load i32, i32* %saveHx, align 4
  store i32 %88, i32* %xbins, align 4
  %89 = load i32, i32* %saveHy, align 4
  store i32 %89, i32* %ybins, align 4
  br label %if.end.131

if.end.131:                                       ; preds = %if.else, %if.then.130
  br label %if.end.142

if.else.132:                                      ; preds = %land.lhs.true, %for.end.120
  %90 = load i32, i32* %saveHx, align 4
  %cmp133 = icmp slt i32 %90, 100
  br i1 %cmp133, label %if.then.135, label %if.else.136

if.then.135:                                      ; preds = %if.else.132
  %91 = load i32, i32* %saveHx, align 4
  store i32 %91, i32* %xbins, align 4
  %92 = load i32, i32* %saveHy, align 4
  store i32 %92, i32* %ybins, align 4
  br label %if.end.141

if.else.136:                                      ; preds = %if.else.132
  %93 = load i32, i32* %saveLx, align 4
  %cmp137 = icmp slt i32 %93, 100
  br i1 %cmp137, label %if.then.139, label %if.end.140

if.then.139:                                      ; preds = %if.else.136
  %94 = load i32, i32* %saveLx, align 4
  store i32 %94, i32* %xbins, align 4
  %95 = load i32, i32* %saveLy, align 4
  store i32 %95, i32* %ybins, align 4
  br label %if.end.140

if.end.140:                                       ; preds = %if.then.139, %if.else.136
  br label %if.end.141

if.end.141:                                       ; preds = %if.end.140, %if.then.135
  br label %if.end.142

if.end.142:                                       ; preds = %if.end.141, %if.end.131
  %96 = load i32, i32* %saveLx, align 4
  %cmp143 = icmp slt i32 %96, 100
  br i1 %cmp143, label %if.then.147, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.142
  %97 = load i32, i32* %saveHx, align 4
  %cmp145 = icmp slt i32 %97, 100
  br i1 %cmp145, label %if.then.147, label %if.else.158

if.then.147:                                      ; preds = %lor.lhs.false, %if.end.142
  %98 = load i32, i32* %saveL2x, align 4
  %cmp148 = icmp slt i32 %98, 100
  br i1 %cmp148, label %if.then.150, label %if.end.157

if.then.150:                                      ; preds = %if.then.147
  %99 = load i32, i32* %xbins, align 4
  %100 = load i32, i32* %ybins, align 4
  %mul151 = mul nsw i32 %99, %100
  %101 = load i32, i32* %saveL2x, align 4
  %102 = load i32, i32* %saveL2y, align 4
  %mul152 = mul nsw i32 %101, %102
  %cmp153 = icmp sge i32 %mul151, %mul152
  br i1 %cmp153, label %if.then.155, label %if.end.156

if.then.155:                                      ; preds = %if.then.150
  %103 = load i32, i32* %saveL2x, align 4
  store i32 %103, i32* %xbins, align 4
  %104 = load i32, i32* %saveL2y, align 4
  store i32 %104, i32* %ybins, align 4
  br label %if.end.156

if.end.156:                                       ; preds = %if.then.155, %if.then.150
  br label %if.end.157

if.end.157:                                       ; preds = %if.end.156, %if.then.147
  br label %if.end.159

if.else.158:                                      ; preds = %lor.lhs.false
  %105 = load i32, i32* %saveL2x, align 4
  store i32 %105, i32* %xbins, align 4
  %106 = load i32, i32* %saveL2y, align 4
  store i32 %106, i32* %ybins, align 4
  br label %if.end.159

if.end.159:                                       ; preds = %if.else.158, %if.end.157
  %107 = load i32, i32* %xbins, align 4
  store i32 %107, i32* @numBinsX, align 4
  %108 = load i32, i32* %ybins, align 4
  store i32 %108, i32* @numBinsY, align 4
  %109 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %110 = load i32, i32* @numBinsX, align 4
  %call160 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %109, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i32 0, i32 0), i32 %110)
  %111 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %112 = load i32, i32* @numBinsY, align 4
  %call161 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %111, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i32 0, i32 0), i32 %112)
  %113 = load i32, i32* @numBinsX, align 4
  %add162 = add nsw i32 1, %113
  %conv163 = sext i32 %add162 to i64
  %mul164 = mul i64 %conv163, 8
  %call165 = call noalias i8* @malloc(i64 %mul164) #3
  %114 = bitcast i8* %call165 to i32***
  store i32*** %114, i32**** @blockarray, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.166

for.cond.166:                                     ; preds = %for.inc.189, %if.end.159
  %115 = load i32, i32* %i, align 4
  %116 = load i32, i32* @numBinsX, align 4
  %cmp167 = icmp sle i32 %115, %116
  br i1 %cmp167, label %for.body.169, label %for.end.191

for.body.169:                                     ; preds = %for.cond.166
  %117 = load i32, i32* @numBinsY, align 4
  %add170 = add nsw i32 1, %117
  %conv171 = sext i32 %add170 to i64
  %mul172 = mul i64 %conv171, 8
  %call173 = call noalias i8* @malloc(i64 %mul172) #3
  %118 = bitcast i8* %call173 to i32**
  %119 = load i32, i32* %i, align 4
  %idxprom = sext i32 %119 to i64
  %120 = load i32***, i32**** @blockarray, align 8
  %arrayidx = getelementptr inbounds i32**, i32*** %120, i64 %idxprom
  store i32** %118, i32*** %arrayidx, align 8
  store i32 0, i32* %j, align 4
  br label %for.cond.174

for.cond.174:                                     ; preds = %for.inc.186, %for.body.169
  %121 = load i32, i32* %j, align 4
  %122 = load i32, i32* @numBinsY, align 4
  %cmp175 = icmp sle i32 %121, %122
  br i1 %cmp175, label %for.body.177, label %for.end.188

for.body.177:                                     ; preds = %for.cond.174
  %123 = load i32, i32* @numcells, align 4
  %add178 = add nsw i32 5, %123
  %conv179 = sext i32 %add178 to i64
  %mul180 = mul i64 %conv179, 4
  %call181 = call noalias i8* @malloc(i64 %mul180) #3
  %124 = bitcast i8* %call181 to i32*
  %125 = load i32, i32* %j, align 4
  %idxprom182 = sext i32 %125 to i64
  %126 = load i32, i32* %i, align 4
  %idxprom183 = sext i32 %126 to i64
  %127 = load i32***, i32**** @blockarray, align 8
  %arrayidx184 = getelementptr inbounds i32**, i32*** %127, i64 %idxprom183
  %128 = load i32**, i32*** %arrayidx184, align 8
  %arrayidx185 = getelementptr inbounds i32*, i32** %128, i64 %idxprom182
  store i32* %124, i32** %arrayidx185, align 8
  br label %for.inc.186

for.inc.186:                                      ; preds = %for.body.177
  %129 = load i32, i32* %j, align 4
  %inc187 = add nsw i32 %129, 1
  store i32 %inc187, i32* %j, align 4
  br label %for.cond.174

for.end.188:                                      ; preds = %for.cond.174
  br label %for.inc.189

for.inc.189:                                      ; preds = %for.end.188
  %130 = load i32, i32* %i, align 4
  %inc190 = add nsw i32 %130, 1
  store i32 %inc190, i32* %i, align 4
  br label %for.cond.166

for.end.191:                                      ; preds = %for.cond.166
  %131 = load i32***, i32**** @blockarray, align 8
  %arrayidx192 = getelementptr inbounds i32**, i32*** %131, i64 0
  %132 = load i32**, i32*** %arrayidx192, align 8
  %arrayidx193 = getelementptr inbounds i32*, i32** %132, i64 0
  %133 = load i32*, i32** %arrayidx193, align 8
  store i32* %133, i32** @bucket, align 8
  ret void
}

; Function Attrs: nounwind
declare double @pow(double, double) #1

; Function Attrs: nounwind
declare double @sqrt(double) #1

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #2

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
