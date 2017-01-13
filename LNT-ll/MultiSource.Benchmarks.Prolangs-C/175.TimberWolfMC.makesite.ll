; ModuleID = './MultiSource.Benchmarks.Prolangs-C/175.TimberWolfMC.makesite.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cellbox = type { i8*, i32, i32, i32, [9 x i32], i32, i32, i32, i32, i32, i32, i32, double, double, double, double, double, i32, i32, %struct.contentbox*, %struct.uncombox*, [8 x %struct.tilebox*], %struct.sidebox* }
%struct.contentbox = type { i32, i32, i32, i32, i32 }
%struct.uncombox = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.tilebox = type { %struct.tilebox*, double, double, double, double, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.termbox*, %struct.locbox* }
%struct.termbox = type { %struct.termbox*, i32, i32, i32, i32, i32 }
%struct.locbox = type { i32, i32, i32, i32 }
%struct.sidebox = type { i32, i32 }
%struct.kbox = type { i32, i32, i32, i32, i32 }

@cellarray = external global %struct.cellbox**, align 8
@pinSpacing = external global i32, align 4
@kArray = external global %struct.kbox*, align 8
@val1 = common global double 0.000000e+00, align 8
@val2 = common global double 0.000000e+00, align 8

; Function Attrs: nounwind uwtable
define i32 @Vside(i32 %cell, i32 %x, i32 %yy1, i32 %yy2, i32 %flag) #0 {
entry:
  %cell.addr = alloca i32, align 4
  %x.addr = alloca i32, align 4
  %yy1.addr = alloca i32, align 4
  %yy2.addr = alloca i32, align 4
  %flag.addr = alloca i32, align 4
  %aspFactor = alloca double, align 8
  %aspect = alloca double, align 8
  %aspLB = alloca double, align 8
  %worstLen = alloca i32, align 4
  %pPinLocs = alloca i32, align 4
  %k = alloca i32, align 4
  %length = alloca i32, align 4
  %base = alloca i32, align 4
  %TotSites = alloca i32, align 4
  %siteSpace = alloca double, align 8
  store i32 %cell, i32* %cell.addr, align 4
  store i32 %x, i32* %x.addr, align 4
  store i32 %yy1, i32* %yy1.addr, align 4
  store i32 %yy2, i32* %yy2.addr, align 4
  store i32 %flag, i32* %flag.addr, align 4
  %0 = load i32, i32* %yy2.addr, align 4
  %1 = load i32, i32* %yy1.addr, align 4
  %sub = sub nsw i32 %0, %1
  %cmp = icmp sge i32 %sub, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %2 = load i32, i32* %yy2.addr, align 4
  %3 = load i32, i32* %yy1.addr, align 4
  %sub1 = sub nsw i32 %2, %3
  br label %cond.end

cond.false:                                       ; preds = %entry
  %4 = load i32, i32* %yy2.addr, align 4
  %5 = load i32, i32* %yy1.addr, align 4
  %sub2 = sub nsw i32 %4, %5
  %sub3 = sub nsw i32 0, %sub2
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %sub1, %cond.true ], [ %sub3, %cond.false ]
  store i32 %cond, i32* %length, align 4
  %6 = load i32, i32* %cell.addr, align 4
  %idxprom = sext i32 %6 to i64
  %7 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %arrayidx = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %7, i64 %idxprom
  %8 = load %struct.cellbox*, %struct.cellbox** %arrayidx, align 8
  %aspect4 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %8, i32 0, i32 13
  %9 = load double, double* %aspect4, align 8
  store double %9, double* %aspect, align 8
  %10 = load i32, i32* %cell.addr, align 4
  %idxprom5 = sext i32 %10 to i64
  %11 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %arrayidx6 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %11, i64 %idxprom5
  %12 = load %struct.cellbox*, %struct.cellbox** %arrayidx6, align 8
  %aspLB7 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %12, i32 0, i32 16
  %13 = load double, double* %aspLB7, align 8
  store double %13, double* %aspLB, align 8
  %14 = load double, double* %aspLB, align 8
  %add = fadd double %14, 1.000000e-02
  %15 = load i32, i32* %cell.addr, align 4
  %idxprom8 = sext i32 %15 to i64
  %16 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %arrayidx9 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %16, i64 %idxprom8
  %17 = load %struct.cellbox*, %struct.cellbox** %arrayidx9, align 8
  %aspUB = getelementptr inbounds %struct.cellbox, %struct.cellbox* %17, i32 0, i32 15
  %18 = load double, double* %aspUB, align 8
  %cmp10 = fcmp ogt double %add, %18
  br i1 %cmp10, label %if.then, label %if.else

if.then:                                          ; preds = %cond.end
  store double 1.000000e+00, double* %aspFactor, align 8
  br label %if.end

if.else:                                          ; preds = %cond.end
  %19 = load double, double* %aspLB, align 8
  %20 = load double, double* %aspect, align 8
  %div = fdiv double %19, %20
  %call = call double @sqrt(double %div) #2
  store double %call, double* %aspFactor, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %21 = load double, double* %aspFactor, align 8
  %22 = load i32, i32* %length, align 4
  %conv = sitofp i32 %22 to double
  %mul = fmul double %21, %conv
  %conv11 = fptosi double %mul to i32
  store i32 %conv11, i32* %worstLen, align 4
  %23 = load i32, i32* %worstLen, align 4
  %add12 = add nsw i32 %23, 1
  %conv13 = sitofp i32 %add12 to double
  %24 = load double, double* %aspFactor, align 8
  %div14 = fdiv double %conv13, %24
  %25 = load i32, i32* %length, align 4
  %conv15 = sitofp i32 %25 to double
  %sub16 = fsub double %div14, %conv15
  %26 = load i32, i32* %length, align 4
  %conv17 = sitofp i32 %26 to double
  %27 = load i32, i32* %worstLen, align 4
  %conv18 = sitofp i32 %27 to double
  %28 = load double, double* %aspFactor, align 8
  %div19 = fdiv double %conv18, %28
  %sub20 = fsub double %conv17, %div19
  %cmp21 = fcmp olt double %sub16, %sub20
  br i1 %cmp21, label %if.then.23, label %if.end.24

if.then.23:                                       ; preds = %if.end
  %29 = load i32, i32* %worstLen, align 4
  %inc = add nsw i32 %29, 1
  store i32 %inc, i32* %worstLen, align 4
  br label %if.end.24

if.end.24:                                        ; preds = %if.then.23, %if.end
  %30 = load i32, i32* %worstLen, align 4
  %31 = load i32, i32* @pinSpacing, align 4
  %div25 = sdiv i32 %30, %31
  %sub26 = sub nsw i32 %div25, 1
  store i32 %sub26, i32* %pPinLocs, align 4
  %32 = load i32, i32* %flag.addr, align 4
  %tobool = icmp ne i32 %32, 0
  br i1 %tobool, label %if.then.27, label %if.end.102

if.then.27:                                       ; preds = %if.end.24
  %33 = load i32, i32* %pPinLocs, align 4
  %cmp28 = icmp sgt i32 %33, 50
  br i1 %cmp28, label %if.then.30, label %if.else.68

if.then.30:                                       ; preds = %if.then.27
  store i32 1, i32* %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.30
  %34 = load i32, i32* %k, align 4
  %cmp31 = icmp sle i32 %34, 50
  br i1 %cmp31, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %35 = load i32, i32* %k, align 4
  %idxprom33 = sext i32 %35 to i64
  %36 = load %struct.kbox*, %struct.kbox** @kArray, align 8
  %arrayidx34 = getelementptr inbounds %struct.kbox, %struct.kbox* %36, i64 %idxprom33
  %cap = getelementptr inbounds %struct.kbox, %struct.kbox* %arrayidx34, i32 0, i32 0
  store i32 0, i32* %cap, align 4
  %37 = load i32, i32* %k, align 4
  %idxprom35 = sext i32 %37 to i64
  %38 = load %struct.kbox*, %struct.kbox** @kArray, align 8
  %arrayidx36 = getelementptr inbounds %struct.kbox, %struct.kbox* %38, i64 %idxprom35
  %HV = getelementptr inbounds %struct.kbox, %struct.kbox* %arrayidx36, i32 0, i32 1
  store i32 0, i32* %HV, align 4
  %39 = load i32, i32* %k, align 4
  %idxprom37 = sext i32 %39 to i64
  %40 = load %struct.kbox*, %struct.kbox** @kArray, align 8
  %arrayidx38 = getelementptr inbounds %struct.kbox, %struct.kbox* %40, i64 %idxprom37
  %sp = getelementptr inbounds %struct.kbox, %struct.kbox* %arrayidx38, i32 0, i32 2
  store i32 0, i32* %sp, align 4
  %41 = load i32, i32* %k, align 4
  %idxprom39 = sext i32 %41 to i64
  %42 = load %struct.kbox*, %struct.kbox** @kArray, align 8
  %arrayidx40 = getelementptr inbounds %struct.kbox, %struct.kbox* %42, i64 %idxprom39
  %x41 = getelementptr inbounds %struct.kbox, %struct.kbox* %arrayidx40, i32 0, i32 3
  store i32 0, i32* %x41, align 4
  %43 = load i32, i32* %k, align 4
  %idxprom42 = sext i32 %43 to i64
  %44 = load %struct.kbox*, %struct.kbox** @kArray, align 8
  %arrayidx43 = getelementptr inbounds %struct.kbox, %struct.kbox* %44, i64 %idxprom42
  %y = getelementptr inbounds %struct.kbox, %struct.kbox* %arrayidx43, i32 0, i32 4
  store i32 0, i32* %y, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %45 = load i32, i32* %k, align 4
  %inc44 = add nsw i32 %45, 1
  store i32 %inc44, i32* %k, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %46 = load i32, i32* %pPinLocs, align 4
  %div45 = sdiv i32 %46, 50
  store i32 %div45, i32* %base, align 4
  store i32 1, i32* %k, align 4
  br label %for.cond.46

for.cond.46:                                      ; preds = %for.inc.54, %for.end
  %47 = load i32, i32* %k, align 4
  %cmp47 = icmp sle i32 %47, 50
  br i1 %cmp47, label %for.body.49, label %for.end.56

for.body.49:                                      ; preds = %for.cond.46
  %48 = load i32, i32* %base, align 4
  %49 = load i32, i32* %k, align 4
  %idxprom50 = sext i32 %49 to i64
  %50 = load %struct.kbox*, %struct.kbox** @kArray, align 8
  %arrayidx51 = getelementptr inbounds %struct.kbox, %struct.kbox* %50, i64 %idxprom50
  %cap52 = getelementptr inbounds %struct.kbox, %struct.kbox* %arrayidx51, i32 0, i32 0
  %51 = load i32, i32* %cap52, align 4
  %add53 = add nsw i32 %51, %48
  store i32 %add53, i32* %cap52, align 4
  br label %for.inc.54

for.inc.54:                                       ; preds = %for.body.49
  %52 = load i32, i32* %k, align 4
  %inc55 = add nsw i32 %52, 1
  store i32 %inc55, i32* %k, align 4
  br label %for.cond.46

for.end.56:                                       ; preds = %for.cond.46
  store i32 1, i32* %k, align 4
  br label %for.cond.57

for.cond.57:                                      ; preds = %for.inc.65, %for.end.56
  %53 = load i32, i32* %k, align 4
  %54 = load i32, i32* %pPinLocs, align 4
  %rem = srem i32 %54, 50
  %cmp58 = icmp sle i32 %53, %rem
  br i1 %cmp58, label %for.body.60, label %for.end.67

for.body.60:                                      ; preds = %for.cond.57
  %55 = load i32, i32* %k, align 4
  %idxprom61 = sext i32 %55 to i64
  %56 = load %struct.kbox*, %struct.kbox** @kArray, align 8
  %arrayidx62 = getelementptr inbounds %struct.kbox, %struct.kbox* %56, i64 %idxprom61
  %cap63 = getelementptr inbounds %struct.kbox, %struct.kbox* %arrayidx62, i32 0, i32 0
  %57 = load i32, i32* %cap63, align 4
  %inc64 = add nsw i32 %57, 1
  store i32 %inc64, i32* %cap63, align 4
  br label %for.inc.65

for.inc.65:                                       ; preds = %for.body.60
  %58 = load i32, i32* %k, align 4
  %inc66 = add nsw i32 %58, 1
  store i32 %inc66, i32* %k, align 4
  br label %for.cond.57

for.end.67:                                       ; preds = %for.cond.57
  br label %if.end.101

if.else.68:                                       ; preds = %if.then.27
  store i32 1, i32* %k, align 4
  br label %for.cond.69

for.cond.69:                                      ; preds = %for.inc.88, %if.else.68
  %59 = load i32, i32* %k, align 4
  %60 = load i32, i32* %pPinLocs, align 4
  %cmp70 = icmp sle i32 %59, %60
  br i1 %cmp70, label %for.body.72, label %for.end.90

for.body.72:                                      ; preds = %for.cond.69
  %61 = load i32, i32* %k, align 4
  %idxprom73 = sext i32 %61 to i64
  %62 = load %struct.kbox*, %struct.kbox** @kArray, align 8
  %arrayidx74 = getelementptr inbounds %struct.kbox, %struct.kbox* %62, i64 %idxprom73
  %cap75 = getelementptr inbounds %struct.kbox, %struct.kbox* %arrayidx74, i32 0, i32 0
  store i32 0, i32* %cap75, align 4
  %63 = load i32, i32* %k, align 4
  %idxprom76 = sext i32 %63 to i64
  %64 = load %struct.kbox*, %struct.kbox** @kArray, align 8
  %arrayidx77 = getelementptr inbounds %struct.kbox, %struct.kbox* %64, i64 %idxprom76
  %HV78 = getelementptr inbounds %struct.kbox, %struct.kbox* %arrayidx77, i32 0, i32 1
  store i32 0, i32* %HV78, align 4
  %65 = load i32, i32* %k, align 4
  %idxprom79 = sext i32 %65 to i64
  %66 = load %struct.kbox*, %struct.kbox** @kArray, align 8
  %arrayidx80 = getelementptr inbounds %struct.kbox, %struct.kbox* %66, i64 %idxprom79
  %sp81 = getelementptr inbounds %struct.kbox, %struct.kbox* %arrayidx80, i32 0, i32 2
  store i32 0, i32* %sp81, align 4
  %67 = load i32, i32* %k, align 4
  %idxprom82 = sext i32 %67 to i64
  %68 = load %struct.kbox*, %struct.kbox** @kArray, align 8
  %arrayidx83 = getelementptr inbounds %struct.kbox, %struct.kbox* %68, i64 %idxprom82
  %x84 = getelementptr inbounds %struct.kbox, %struct.kbox* %arrayidx83, i32 0, i32 3
  store i32 0, i32* %x84, align 4
  %69 = load i32, i32* %k, align 4
  %idxprom85 = sext i32 %69 to i64
  %70 = load %struct.kbox*, %struct.kbox** @kArray, align 8
  %arrayidx86 = getelementptr inbounds %struct.kbox, %struct.kbox* %70, i64 %idxprom85
  %y87 = getelementptr inbounds %struct.kbox, %struct.kbox* %arrayidx86, i32 0, i32 4
  store i32 0, i32* %y87, align 4
  br label %for.inc.88

for.inc.88:                                       ; preds = %for.body.72
  %71 = load i32, i32* %k, align 4
  %inc89 = add nsw i32 %71, 1
  store i32 %inc89, i32* %k, align 4
  br label %for.cond.69

for.end.90:                                       ; preds = %for.cond.69
  store i32 1, i32* %k, align 4
  br label %for.cond.91

for.cond.91:                                      ; preds = %for.inc.98, %for.end.90
  %72 = load i32, i32* %k, align 4
  %73 = load i32, i32* %pPinLocs, align 4
  %cmp92 = icmp sle i32 %72, %73
  br i1 %cmp92, label %for.body.94, label %for.end.100

for.body.94:                                      ; preds = %for.cond.91
  %74 = load i32, i32* %k, align 4
  %idxprom95 = sext i32 %74 to i64
  %75 = load %struct.kbox*, %struct.kbox** @kArray, align 8
  %arrayidx96 = getelementptr inbounds %struct.kbox, %struct.kbox* %75, i64 %idxprom95
  %cap97 = getelementptr inbounds %struct.kbox, %struct.kbox* %arrayidx96, i32 0, i32 0
  store i32 1, i32* %cap97, align 4
  br label %for.inc.98

for.inc.98:                                       ; preds = %for.body.94
  %76 = load i32, i32* %k, align 4
  %inc99 = add nsw i32 %76, 1
  store i32 %inc99, i32* %k, align 4
  br label %for.cond.91

for.end.100:                                      ; preds = %for.cond.91
  br label %if.end.101

if.end.101:                                       ; preds = %for.end.100, %for.end.67
  br label %if.end.102

if.end.102:                                       ; preds = %if.end.101, %if.end.24
  %77 = load i32, i32* %pPinLocs, align 4
  %cmp103 = icmp sle i32 %77, 50
  br i1 %cmp103, label %if.then.105, label %if.else.106

if.then.105:                                      ; preds = %if.end.102
  %78 = load i32, i32* %pPinLocs, align 4
  store i32 %78, i32* %TotSites, align 4
  br label %if.end.107

if.else.106:                                      ; preds = %if.end.102
  store i32 50, i32* %TotSites, align 4
  br label %if.end.107

if.end.107:                                       ; preds = %if.else.106, %if.then.105
  %79 = load i32, i32* %length, align 4
  %conv108 = sitofp i32 %79 to double
  %80 = load i32, i32* %TotSites, align 4
  %add109 = add nsw i32 %80, 1
  %conv110 = sitofp i32 %add109 to double
  %div111 = fdiv double %conv108, %conv110
  store double %div111, double* %siteSpace, align 8
  %81 = load i32, i32* %flag.addr, align 4
  %tobool112 = icmp ne i32 %81, 0
  br i1 %tobool112, label %if.then.113, label %if.end.243

if.then.113:                                      ; preds = %if.end.107
  %82 = load i32, i32* %yy2.addr, align 4
  %83 = load i32, i32* %yy1.addr, align 4
  %cmp114 = icmp sgt i32 %82, %83
  br i1 %cmp114, label %if.then.116, label %if.else.179

if.then.116:                                      ; preds = %if.then.113
  store i32 1, i32* %k, align 4
  br label %for.cond.117

for.cond.117:                                     ; preds = %for.inc.176, %if.then.116
  %84 = load i32, i32* %k, align 4
  %85 = load i32, i32* %TotSites, align 4
  %cmp118 = icmp sle i32 %84, %85
  br i1 %cmp118, label %for.body.120, label %for.end.178

for.body.120:                                     ; preds = %for.cond.117
  %86 = load i32, i32* %x.addr, align 4
  %87 = load i32, i32* %k, align 4
  %idxprom121 = sext i32 %87 to i64
  %88 = load %struct.kbox*, %struct.kbox** @kArray, align 8
  %arrayidx122 = getelementptr inbounds %struct.kbox, %struct.kbox* %88, i64 %idxprom121
  %x123 = getelementptr inbounds %struct.kbox, %struct.kbox* %arrayidx122, i32 0, i32 3
  store i32 %86, i32* %x123, align 4
  %89 = load i32, i32* %k, align 4
  %add124 = add nsw i32 %89, 1
  %conv125 = sitofp i32 %add124 to double
  %90 = load double, double* %siteSpace, align 8
  %mul126 = fmul double %conv125, %90
  store double %mul126, double* @val1, align 8
  %91 = load i32, i32* %k, align 4
  %conv127 = sitofp i32 %91 to double
  %92 = load double, double* %siteSpace, align 8
  %mul128 = fmul double %conv127, %92
  store double %mul128, double* @val2, align 8
  %93 = load double, double* @val2, align 8
  %94 = load double, double* @val2, align 8
  %conv129 = fptosi double %94 to i32
  %conv130 = sitofp i32 %conv129 to double
  %sub131 = fsub double %93, %conv130
  %cmp132 = fcmp oge double %sub131, 5.000000e-01
  br i1 %cmp132, label %cond.true.134, label %cond.false.137

cond.true.134:                                    ; preds = %for.body.120
  %95 = load double, double* @val2, align 8
  %conv135 = fptosi double %95 to i32
  %add136 = add nsw i32 %conv135, 1
  br label %cond.end.139

cond.false.137:                                   ; preds = %for.body.120
  %96 = load double, double* @val2, align 8
  %conv138 = fptosi double %96 to i32
  br label %cond.end.139

cond.end.139:                                     ; preds = %cond.false.137, %cond.true.134
  %cond140 = phi i32 [ %add136, %cond.true.134 ], [ %conv138, %cond.false.137 ]
  %97 = load i32, i32* %yy1.addr, align 4
  %add141 = add nsw i32 %cond140, %97
  %98 = load i32, i32* %k, align 4
  %idxprom142 = sext i32 %98 to i64
  %99 = load %struct.kbox*, %struct.kbox** @kArray, align 8
  %arrayidx143 = getelementptr inbounds %struct.kbox, %struct.kbox* %99, i64 %idxprom142
  %y144 = getelementptr inbounds %struct.kbox, %struct.kbox* %arrayidx143, i32 0, i32 4
  store i32 %add141, i32* %y144, align 4
  %100 = load double, double* @val1, align 8
  %101 = load double, double* @val1, align 8
  %conv145 = fptosi double %101 to i32
  %conv146 = sitofp i32 %conv145 to double
  %sub147 = fsub double %100, %conv146
  %cmp148 = fcmp oge double %sub147, 5.000000e-01
  br i1 %cmp148, label %cond.true.150, label %cond.false.153

cond.true.150:                                    ; preds = %cond.end.139
  %102 = load double, double* @val1, align 8
  %conv151 = fptosi double %102 to i32
  %add152 = add nsw i32 %conv151, 1
  br label %cond.end.155

cond.false.153:                                   ; preds = %cond.end.139
  %103 = load double, double* @val1, align 8
  %conv154 = fptosi double %103 to i32
  br label %cond.end.155

cond.end.155:                                     ; preds = %cond.false.153, %cond.true.150
  %cond156 = phi i32 [ %add152, %cond.true.150 ], [ %conv154, %cond.false.153 ]
  %104 = load double, double* @val2, align 8
  %105 = load double, double* @val2, align 8
  %conv157 = fptosi double %105 to i32
  %conv158 = sitofp i32 %conv157 to double
  %sub159 = fsub double %104, %conv158
  %cmp160 = fcmp oge double %sub159, 5.000000e-01
  br i1 %cmp160, label %cond.true.162, label %cond.false.165

cond.true.162:                                    ; preds = %cond.end.155
  %106 = load double, double* @val2, align 8
  %conv163 = fptosi double %106 to i32
  %add164 = add nsw i32 %conv163, 1
  br label %cond.end.167

cond.false.165:                                   ; preds = %cond.end.155
  %107 = load double, double* @val2, align 8
  %conv166 = fptosi double %107 to i32
  br label %cond.end.167

cond.end.167:                                     ; preds = %cond.false.165, %cond.true.162
  %cond168 = phi i32 [ %add164, %cond.true.162 ], [ %conv166, %cond.false.165 ]
  %sub169 = sub nsw i32 %cond156, %cond168
  %108 = load i32, i32* %k, align 4
  %idxprom170 = sext i32 %108 to i64
  %109 = load %struct.kbox*, %struct.kbox** @kArray, align 8
  %arrayidx171 = getelementptr inbounds %struct.kbox, %struct.kbox* %109, i64 %idxprom170
  %sp172 = getelementptr inbounds %struct.kbox, %struct.kbox* %arrayidx171, i32 0, i32 2
  store i32 %sub169, i32* %sp172, align 4
  %110 = load i32, i32* %k, align 4
  %idxprom173 = sext i32 %110 to i64
  %111 = load %struct.kbox*, %struct.kbox** @kArray, align 8
  %arrayidx174 = getelementptr inbounds %struct.kbox, %struct.kbox* %111, i64 %idxprom173
  %HV175 = getelementptr inbounds %struct.kbox, %struct.kbox* %arrayidx174, i32 0, i32 1
  store i32 1, i32* %HV175, align 4
  br label %for.inc.176

for.inc.176:                                      ; preds = %cond.end.167
  %112 = load i32, i32* %k, align 4
  %inc177 = add nsw i32 %112, 1
  store i32 %inc177, i32* %k, align 4
  br label %for.cond.117

for.end.178:                                      ; preds = %for.cond.117
  br label %if.end.242

if.else.179:                                      ; preds = %if.then.113
  store i32 1, i32* %k, align 4
  br label %for.cond.180

for.cond.180:                                     ; preds = %for.inc.239, %if.else.179
  %113 = load i32, i32* %k, align 4
  %114 = load i32, i32* %TotSites, align 4
  %cmp181 = icmp sle i32 %113, %114
  br i1 %cmp181, label %for.body.183, label %for.end.241

for.body.183:                                     ; preds = %for.cond.180
  %115 = load i32, i32* %x.addr, align 4
  %116 = load i32, i32* %k, align 4
  %idxprom184 = sext i32 %116 to i64
  %117 = load %struct.kbox*, %struct.kbox** @kArray, align 8
  %arrayidx185 = getelementptr inbounds %struct.kbox, %struct.kbox* %117, i64 %idxprom184
  %x186 = getelementptr inbounds %struct.kbox, %struct.kbox* %arrayidx185, i32 0, i32 3
  store i32 %115, i32* %x186, align 4
  %118 = load i32, i32* %k, align 4
  %add187 = add nsw i32 %118, 1
  %conv188 = sitofp i32 %add187 to double
  %119 = load double, double* %siteSpace, align 8
  %mul189 = fmul double %conv188, %119
  store double %mul189, double* @val1, align 8
  %120 = load i32, i32* %k, align 4
  %conv190 = sitofp i32 %120 to double
  %121 = load double, double* %siteSpace, align 8
  %mul191 = fmul double %conv190, %121
  store double %mul191, double* @val2, align 8
  %122 = load i32, i32* %yy1.addr, align 4
  %123 = load double, double* @val2, align 8
  %124 = load double, double* @val2, align 8
  %conv192 = fptosi double %124 to i32
  %conv193 = sitofp i32 %conv192 to double
  %sub194 = fsub double %123, %conv193
  %cmp195 = fcmp oge double %sub194, 5.000000e-01
  br i1 %cmp195, label %cond.true.197, label %cond.false.200

cond.true.197:                                    ; preds = %for.body.183
  %125 = load double, double* @val2, align 8
  %conv198 = fptosi double %125 to i32
  %add199 = add nsw i32 %conv198, 1
  br label %cond.end.202

cond.false.200:                                   ; preds = %for.body.183
  %126 = load double, double* @val2, align 8
  %conv201 = fptosi double %126 to i32
  br label %cond.end.202

cond.end.202:                                     ; preds = %cond.false.200, %cond.true.197
  %cond203 = phi i32 [ %add199, %cond.true.197 ], [ %conv201, %cond.false.200 ]
  %sub204 = sub nsw i32 %122, %cond203
  %127 = load i32, i32* %k, align 4
  %idxprom205 = sext i32 %127 to i64
  %128 = load %struct.kbox*, %struct.kbox** @kArray, align 8
  %arrayidx206 = getelementptr inbounds %struct.kbox, %struct.kbox* %128, i64 %idxprom205
  %y207 = getelementptr inbounds %struct.kbox, %struct.kbox* %arrayidx206, i32 0, i32 4
  store i32 %sub204, i32* %y207, align 4
  %129 = load double, double* @val1, align 8
  %130 = load double, double* @val1, align 8
  %conv208 = fptosi double %130 to i32
  %conv209 = sitofp i32 %conv208 to double
  %sub210 = fsub double %129, %conv209
  %cmp211 = fcmp oge double %sub210, 5.000000e-01
  br i1 %cmp211, label %cond.true.213, label %cond.false.216

cond.true.213:                                    ; preds = %cond.end.202
  %131 = load double, double* @val1, align 8
  %conv214 = fptosi double %131 to i32
  %add215 = add nsw i32 %conv214, 1
  br label %cond.end.218

cond.false.216:                                   ; preds = %cond.end.202
  %132 = load double, double* @val1, align 8
  %conv217 = fptosi double %132 to i32
  br label %cond.end.218

cond.end.218:                                     ; preds = %cond.false.216, %cond.true.213
  %cond219 = phi i32 [ %add215, %cond.true.213 ], [ %conv217, %cond.false.216 ]
  %133 = load double, double* @val2, align 8
  %134 = load double, double* @val2, align 8
  %conv220 = fptosi double %134 to i32
  %conv221 = sitofp i32 %conv220 to double
  %sub222 = fsub double %133, %conv221
  %cmp223 = fcmp oge double %sub222, 5.000000e-01
  br i1 %cmp223, label %cond.true.225, label %cond.false.228

cond.true.225:                                    ; preds = %cond.end.218
  %135 = load double, double* @val2, align 8
  %conv226 = fptosi double %135 to i32
  %add227 = add nsw i32 %conv226, 1
  br label %cond.end.230

cond.false.228:                                   ; preds = %cond.end.218
  %136 = load double, double* @val2, align 8
  %conv229 = fptosi double %136 to i32
  br label %cond.end.230

cond.end.230:                                     ; preds = %cond.false.228, %cond.true.225
  %cond231 = phi i32 [ %add227, %cond.true.225 ], [ %conv229, %cond.false.228 ]
  %sub232 = sub nsw i32 %cond219, %cond231
  %137 = load i32, i32* %k, align 4
  %idxprom233 = sext i32 %137 to i64
  %138 = load %struct.kbox*, %struct.kbox** @kArray, align 8
  %arrayidx234 = getelementptr inbounds %struct.kbox, %struct.kbox* %138, i64 %idxprom233
  %sp235 = getelementptr inbounds %struct.kbox, %struct.kbox* %arrayidx234, i32 0, i32 2
  store i32 %sub232, i32* %sp235, align 4
  %139 = load i32, i32* %k, align 4
  %idxprom236 = sext i32 %139 to i64
  %140 = load %struct.kbox*, %struct.kbox** @kArray, align 8
  %arrayidx237 = getelementptr inbounds %struct.kbox, %struct.kbox* %140, i64 %idxprom236
  %HV238 = getelementptr inbounds %struct.kbox, %struct.kbox* %arrayidx237, i32 0, i32 1
  store i32 1, i32* %HV238, align 4
  br label %for.inc.239

for.inc.239:                                      ; preds = %cond.end.230
  %141 = load i32, i32* %k, align 4
  %inc240 = add nsw i32 %141, 1
  store i32 %inc240, i32* %k, align 4
  br label %for.cond.180

for.end.241:                                      ; preds = %for.cond.180
  br label %if.end.242

if.end.242:                                       ; preds = %for.end.241, %for.end.178
  br label %if.end.243

if.end.243:                                       ; preds = %if.end.242, %if.end.107
  %142 = load i32, i32* %TotSites, align 4
  ret i32 %142
}

; Function Attrs: nounwind
declare double @sqrt(double) #1

; Function Attrs: nounwind uwtable
define i32 @Hside(i32 %cell, i32 %xx1, i32 %xx2, i32 %y, i32 %flag) #0 {
entry:
  %cell.addr = alloca i32, align 4
  %xx1.addr = alloca i32, align 4
  %xx2.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %flag.addr = alloca i32, align 4
  %aspFactor = alloca double, align 8
  %aspect = alloca double, align 8
  %aspUB = alloca double, align 8
  %worstLen = alloca i32, align 4
  %pPinLocs = alloca i32, align 4
  %k = alloca i32, align 4
  %length = alloca i32, align 4
  %base = alloca i32, align 4
  %TotSites = alloca i32, align 4
  %siteSpace = alloca double, align 8
  store i32 %cell, i32* %cell.addr, align 4
  store i32 %xx1, i32* %xx1.addr, align 4
  store i32 %xx2, i32* %xx2.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  store i32 %flag, i32* %flag.addr, align 4
  %0 = load i32, i32* %xx2.addr, align 4
  %1 = load i32, i32* %xx1.addr, align 4
  %sub = sub nsw i32 %0, %1
  %cmp = icmp sge i32 %sub, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %2 = load i32, i32* %xx2.addr, align 4
  %3 = load i32, i32* %xx1.addr, align 4
  %sub1 = sub nsw i32 %2, %3
  br label %cond.end

cond.false:                                       ; preds = %entry
  %4 = load i32, i32* %xx2.addr, align 4
  %5 = load i32, i32* %xx1.addr, align 4
  %sub2 = sub nsw i32 %4, %5
  %sub3 = sub nsw i32 0, %sub2
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %sub1, %cond.true ], [ %sub3, %cond.false ]
  store i32 %cond, i32* %length, align 4
  %6 = load i32, i32* %cell.addr, align 4
  %idxprom = sext i32 %6 to i64
  %7 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %arrayidx = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %7, i64 %idxprom
  %8 = load %struct.cellbox*, %struct.cellbox** %arrayidx, align 8
  %aspect4 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %8, i32 0, i32 13
  %9 = load double, double* %aspect4, align 8
  store double %9, double* %aspect, align 8
  %10 = load i32, i32* %cell.addr, align 4
  %idxprom5 = sext i32 %10 to i64
  %11 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %arrayidx6 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %11, i64 %idxprom5
  %12 = load %struct.cellbox*, %struct.cellbox** %arrayidx6, align 8
  %aspUB7 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %12, i32 0, i32 15
  %13 = load double, double* %aspUB7, align 8
  store double %13, double* %aspUB, align 8
  %14 = load i32, i32* %cell.addr, align 4
  %idxprom8 = sext i32 %14 to i64
  %15 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %arrayidx9 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %15, i64 %idxprom8
  %16 = load %struct.cellbox*, %struct.cellbox** %arrayidx9, align 8
  %aspLB = getelementptr inbounds %struct.cellbox, %struct.cellbox* %16, i32 0, i32 16
  %17 = load double, double* %aspLB, align 8
  %add = fadd double %17, 1.000000e-02
  %18 = load double, double* %aspUB, align 8
  %cmp10 = fcmp ogt double %add, %18
  br i1 %cmp10, label %if.then, label %if.else

if.then:                                          ; preds = %cond.end
  store double 1.000000e+00, double* %aspFactor, align 8
  br label %if.end

if.else:                                          ; preds = %cond.end
  %19 = load double, double* %aspect, align 8
  %20 = load double, double* %aspUB, align 8
  %div = fdiv double %19, %20
  %call = call double @sqrt(double %div) #2
  store double %call, double* %aspFactor, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %21 = load double, double* %aspFactor, align 8
  %22 = load i32, i32* %length, align 4
  %conv = sitofp i32 %22 to double
  %mul = fmul double %21, %conv
  %conv11 = fptosi double %mul to i32
  store i32 %conv11, i32* %worstLen, align 4
  %23 = load i32, i32* %worstLen, align 4
  %add12 = add nsw i32 %23, 1
  %conv13 = sitofp i32 %add12 to double
  %24 = load double, double* %aspFactor, align 8
  %div14 = fdiv double %conv13, %24
  %25 = load i32, i32* %length, align 4
  %conv15 = sitofp i32 %25 to double
  %sub16 = fsub double %div14, %conv15
  %26 = load i32, i32* %length, align 4
  %conv17 = sitofp i32 %26 to double
  %27 = load i32, i32* %worstLen, align 4
  %conv18 = sitofp i32 %27 to double
  %28 = load double, double* %aspFactor, align 8
  %div19 = fdiv double %conv18, %28
  %sub20 = fsub double %conv17, %div19
  %cmp21 = fcmp olt double %sub16, %sub20
  br i1 %cmp21, label %if.then.23, label %if.end.24

if.then.23:                                       ; preds = %if.end
  %29 = load i32, i32* %worstLen, align 4
  %inc = add nsw i32 %29, 1
  store i32 %inc, i32* %worstLen, align 4
  br label %if.end.24

if.end.24:                                        ; preds = %if.then.23, %if.end
  %30 = load i32, i32* %worstLen, align 4
  %31 = load i32, i32* @pinSpacing, align 4
  %div25 = sdiv i32 %30, %31
  %sub26 = sub nsw i32 %div25, 1
  store i32 %sub26, i32* %pPinLocs, align 4
  %32 = load i32, i32* %flag.addr, align 4
  %tobool = icmp ne i32 %32, 0
  br i1 %tobool, label %if.then.27, label %if.end.102

if.then.27:                                       ; preds = %if.end.24
  %33 = load i32, i32* %pPinLocs, align 4
  %cmp28 = icmp sgt i32 %33, 50
  br i1 %cmp28, label %if.then.30, label %if.else.68

if.then.30:                                       ; preds = %if.then.27
  store i32 1, i32* %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.30
  %34 = load i32, i32* %k, align 4
  %cmp31 = icmp sle i32 %34, 50
  br i1 %cmp31, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %35 = load i32, i32* %k, align 4
  %idxprom33 = sext i32 %35 to i64
  %36 = load %struct.kbox*, %struct.kbox** @kArray, align 8
  %arrayidx34 = getelementptr inbounds %struct.kbox, %struct.kbox* %36, i64 %idxprom33
  %cap = getelementptr inbounds %struct.kbox, %struct.kbox* %arrayidx34, i32 0, i32 0
  store i32 0, i32* %cap, align 4
  %37 = load i32, i32* %k, align 4
  %idxprom35 = sext i32 %37 to i64
  %38 = load %struct.kbox*, %struct.kbox** @kArray, align 8
  %arrayidx36 = getelementptr inbounds %struct.kbox, %struct.kbox* %38, i64 %idxprom35
  %HV = getelementptr inbounds %struct.kbox, %struct.kbox* %arrayidx36, i32 0, i32 1
  store i32 0, i32* %HV, align 4
  %39 = load i32, i32* %k, align 4
  %idxprom37 = sext i32 %39 to i64
  %40 = load %struct.kbox*, %struct.kbox** @kArray, align 8
  %arrayidx38 = getelementptr inbounds %struct.kbox, %struct.kbox* %40, i64 %idxprom37
  %sp = getelementptr inbounds %struct.kbox, %struct.kbox* %arrayidx38, i32 0, i32 2
  store i32 0, i32* %sp, align 4
  %41 = load i32, i32* %k, align 4
  %idxprom39 = sext i32 %41 to i64
  %42 = load %struct.kbox*, %struct.kbox** @kArray, align 8
  %arrayidx40 = getelementptr inbounds %struct.kbox, %struct.kbox* %42, i64 %idxprom39
  %x = getelementptr inbounds %struct.kbox, %struct.kbox* %arrayidx40, i32 0, i32 3
  store i32 0, i32* %x, align 4
  %43 = load i32, i32* %k, align 4
  %idxprom41 = sext i32 %43 to i64
  %44 = load %struct.kbox*, %struct.kbox** @kArray, align 8
  %arrayidx42 = getelementptr inbounds %struct.kbox, %struct.kbox* %44, i64 %idxprom41
  %y43 = getelementptr inbounds %struct.kbox, %struct.kbox* %arrayidx42, i32 0, i32 4
  store i32 0, i32* %y43, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %45 = load i32, i32* %k, align 4
  %inc44 = add nsw i32 %45, 1
  store i32 %inc44, i32* %k, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %46 = load i32, i32* %pPinLocs, align 4
  %div45 = sdiv i32 %46, 50
  store i32 %div45, i32* %base, align 4
  store i32 1, i32* %k, align 4
  br label %for.cond.46

for.cond.46:                                      ; preds = %for.inc.54, %for.end
  %47 = load i32, i32* %k, align 4
  %cmp47 = icmp sle i32 %47, 50
  br i1 %cmp47, label %for.body.49, label %for.end.56

for.body.49:                                      ; preds = %for.cond.46
  %48 = load i32, i32* %base, align 4
  %49 = load i32, i32* %k, align 4
  %idxprom50 = sext i32 %49 to i64
  %50 = load %struct.kbox*, %struct.kbox** @kArray, align 8
  %arrayidx51 = getelementptr inbounds %struct.kbox, %struct.kbox* %50, i64 %idxprom50
  %cap52 = getelementptr inbounds %struct.kbox, %struct.kbox* %arrayidx51, i32 0, i32 0
  %51 = load i32, i32* %cap52, align 4
  %add53 = add nsw i32 %51, %48
  store i32 %add53, i32* %cap52, align 4
  br label %for.inc.54

for.inc.54:                                       ; preds = %for.body.49
  %52 = load i32, i32* %k, align 4
  %inc55 = add nsw i32 %52, 1
  store i32 %inc55, i32* %k, align 4
  br label %for.cond.46

for.end.56:                                       ; preds = %for.cond.46
  store i32 1, i32* %k, align 4
  br label %for.cond.57

for.cond.57:                                      ; preds = %for.inc.65, %for.end.56
  %53 = load i32, i32* %k, align 4
  %54 = load i32, i32* %pPinLocs, align 4
  %rem = srem i32 %54, 50
  %cmp58 = icmp sle i32 %53, %rem
  br i1 %cmp58, label %for.body.60, label %for.end.67

for.body.60:                                      ; preds = %for.cond.57
  %55 = load i32, i32* %k, align 4
  %idxprom61 = sext i32 %55 to i64
  %56 = load %struct.kbox*, %struct.kbox** @kArray, align 8
  %arrayidx62 = getelementptr inbounds %struct.kbox, %struct.kbox* %56, i64 %idxprom61
  %cap63 = getelementptr inbounds %struct.kbox, %struct.kbox* %arrayidx62, i32 0, i32 0
  %57 = load i32, i32* %cap63, align 4
  %inc64 = add nsw i32 %57, 1
  store i32 %inc64, i32* %cap63, align 4
  br label %for.inc.65

for.inc.65:                                       ; preds = %for.body.60
  %58 = load i32, i32* %k, align 4
  %inc66 = add nsw i32 %58, 1
  store i32 %inc66, i32* %k, align 4
  br label %for.cond.57

for.end.67:                                       ; preds = %for.cond.57
  br label %if.end.101

if.else.68:                                       ; preds = %if.then.27
  store i32 1, i32* %k, align 4
  br label %for.cond.69

for.cond.69:                                      ; preds = %for.inc.88, %if.else.68
  %59 = load i32, i32* %k, align 4
  %60 = load i32, i32* %pPinLocs, align 4
  %cmp70 = icmp sle i32 %59, %60
  br i1 %cmp70, label %for.body.72, label %for.end.90

for.body.72:                                      ; preds = %for.cond.69
  %61 = load i32, i32* %k, align 4
  %idxprom73 = sext i32 %61 to i64
  %62 = load %struct.kbox*, %struct.kbox** @kArray, align 8
  %arrayidx74 = getelementptr inbounds %struct.kbox, %struct.kbox* %62, i64 %idxprom73
  %cap75 = getelementptr inbounds %struct.kbox, %struct.kbox* %arrayidx74, i32 0, i32 0
  store i32 0, i32* %cap75, align 4
  %63 = load i32, i32* %k, align 4
  %idxprom76 = sext i32 %63 to i64
  %64 = load %struct.kbox*, %struct.kbox** @kArray, align 8
  %arrayidx77 = getelementptr inbounds %struct.kbox, %struct.kbox* %64, i64 %idxprom76
  %HV78 = getelementptr inbounds %struct.kbox, %struct.kbox* %arrayidx77, i32 0, i32 1
  store i32 0, i32* %HV78, align 4
  %65 = load i32, i32* %k, align 4
  %idxprom79 = sext i32 %65 to i64
  %66 = load %struct.kbox*, %struct.kbox** @kArray, align 8
  %arrayidx80 = getelementptr inbounds %struct.kbox, %struct.kbox* %66, i64 %idxprom79
  %sp81 = getelementptr inbounds %struct.kbox, %struct.kbox* %arrayidx80, i32 0, i32 2
  store i32 0, i32* %sp81, align 4
  %67 = load i32, i32* %k, align 4
  %idxprom82 = sext i32 %67 to i64
  %68 = load %struct.kbox*, %struct.kbox** @kArray, align 8
  %arrayidx83 = getelementptr inbounds %struct.kbox, %struct.kbox* %68, i64 %idxprom82
  %x84 = getelementptr inbounds %struct.kbox, %struct.kbox* %arrayidx83, i32 0, i32 3
  store i32 0, i32* %x84, align 4
  %69 = load i32, i32* %k, align 4
  %idxprom85 = sext i32 %69 to i64
  %70 = load %struct.kbox*, %struct.kbox** @kArray, align 8
  %arrayidx86 = getelementptr inbounds %struct.kbox, %struct.kbox* %70, i64 %idxprom85
  %y87 = getelementptr inbounds %struct.kbox, %struct.kbox* %arrayidx86, i32 0, i32 4
  store i32 0, i32* %y87, align 4
  br label %for.inc.88

for.inc.88:                                       ; preds = %for.body.72
  %71 = load i32, i32* %k, align 4
  %inc89 = add nsw i32 %71, 1
  store i32 %inc89, i32* %k, align 4
  br label %for.cond.69

for.end.90:                                       ; preds = %for.cond.69
  store i32 1, i32* %k, align 4
  br label %for.cond.91

for.cond.91:                                      ; preds = %for.inc.98, %for.end.90
  %72 = load i32, i32* %k, align 4
  %73 = load i32, i32* %pPinLocs, align 4
  %cmp92 = icmp sle i32 %72, %73
  br i1 %cmp92, label %for.body.94, label %for.end.100

for.body.94:                                      ; preds = %for.cond.91
  %74 = load i32, i32* %k, align 4
  %idxprom95 = sext i32 %74 to i64
  %75 = load %struct.kbox*, %struct.kbox** @kArray, align 8
  %arrayidx96 = getelementptr inbounds %struct.kbox, %struct.kbox* %75, i64 %idxprom95
  %cap97 = getelementptr inbounds %struct.kbox, %struct.kbox* %arrayidx96, i32 0, i32 0
  store i32 1, i32* %cap97, align 4
  br label %for.inc.98

for.inc.98:                                       ; preds = %for.body.94
  %76 = load i32, i32* %k, align 4
  %inc99 = add nsw i32 %76, 1
  store i32 %inc99, i32* %k, align 4
  br label %for.cond.91

for.end.100:                                      ; preds = %for.cond.91
  br label %if.end.101

if.end.101:                                       ; preds = %for.end.100, %for.end.67
  br label %if.end.102

if.end.102:                                       ; preds = %if.end.101, %if.end.24
  %77 = load i32, i32* %pPinLocs, align 4
  %cmp103 = icmp sle i32 %77, 50
  br i1 %cmp103, label %if.then.105, label %if.else.106

if.then.105:                                      ; preds = %if.end.102
  %78 = load i32, i32* %pPinLocs, align 4
  store i32 %78, i32* %TotSites, align 4
  br label %if.end.107

if.else.106:                                      ; preds = %if.end.102
  store i32 50, i32* %TotSites, align 4
  br label %if.end.107

if.end.107:                                       ; preds = %if.else.106, %if.then.105
  %79 = load i32, i32* %length, align 4
  %conv108 = sitofp i32 %79 to double
  %80 = load i32, i32* %TotSites, align 4
  %add109 = add nsw i32 %80, 1
  %conv110 = sitofp i32 %add109 to double
  %div111 = fdiv double %conv108, %conv110
  store double %div111, double* %siteSpace, align 8
  %81 = load i32, i32* %flag.addr, align 4
  %tobool112 = icmp ne i32 %81, 0
  br i1 %tobool112, label %if.then.113, label %if.end.243

if.then.113:                                      ; preds = %if.end.107
  %82 = load i32, i32* %xx2.addr, align 4
  %83 = load i32, i32* %xx1.addr, align 4
  %cmp114 = icmp sgt i32 %82, %83
  br i1 %cmp114, label %if.then.116, label %if.else.179

if.then.116:                                      ; preds = %if.then.113
  store i32 1, i32* %k, align 4
  br label %for.cond.117

for.cond.117:                                     ; preds = %for.inc.176, %if.then.116
  %84 = load i32, i32* %k, align 4
  %85 = load i32, i32* %TotSites, align 4
  %cmp118 = icmp sle i32 %84, %85
  br i1 %cmp118, label %for.body.120, label %for.end.178

for.body.120:                                     ; preds = %for.cond.117
  %86 = load i32, i32* %y.addr, align 4
  %87 = load i32, i32* %k, align 4
  %idxprom121 = sext i32 %87 to i64
  %88 = load %struct.kbox*, %struct.kbox** @kArray, align 8
  %arrayidx122 = getelementptr inbounds %struct.kbox, %struct.kbox* %88, i64 %idxprom121
  %y123 = getelementptr inbounds %struct.kbox, %struct.kbox* %arrayidx122, i32 0, i32 4
  store i32 %86, i32* %y123, align 4
  %89 = load i32, i32* %k, align 4
  %add124 = add nsw i32 %89, 1
  %conv125 = sitofp i32 %add124 to double
  %90 = load double, double* %siteSpace, align 8
  %mul126 = fmul double %conv125, %90
  store double %mul126, double* @val1, align 8
  %91 = load i32, i32* %k, align 4
  %conv127 = sitofp i32 %91 to double
  %92 = load double, double* %siteSpace, align 8
  %mul128 = fmul double %conv127, %92
  store double %mul128, double* @val2, align 8
  %93 = load double, double* @val2, align 8
  %94 = load double, double* @val2, align 8
  %conv129 = fptosi double %94 to i32
  %conv130 = sitofp i32 %conv129 to double
  %sub131 = fsub double %93, %conv130
  %cmp132 = fcmp oge double %sub131, 5.000000e-01
  br i1 %cmp132, label %cond.true.134, label %cond.false.137

cond.true.134:                                    ; preds = %for.body.120
  %95 = load double, double* @val2, align 8
  %conv135 = fptosi double %95 to i32
  %add136 = add nsw i32 %conv135, 1
  br label %cond.end.139

cond.false.137:                                   ; preds = %for.body.120
  %96 = load double, double* @val2, align 8
  %conv138 = fptosi double %96 to i32
  br label %cond.end.139

cond.end.139:                                     ; preds = %cond.false.137, %cond.true.134
  %cond140 = phi i32 [ %add136, %cond.true.134 ], [ %conv138, %cond.false.137 ]
  %97 = load i32, i32* %xx1.addr, align 4
  %add141 = add nsw i32 %cond140, %97
  %98 = load i32, i32* %k, align 4
  %idxprom142 = sext i32 %98 to i64
  %99 = load %struct.kbox*, %struct.kbox** @kArray, align 8
  %arrayidx143 = getelementptr inbounds %struct.kbox, %struct.kbox* %99, i64 %idxprom142
  %x144 = getelementptr inbounds %struct.kbox, %struct.kbox* %arrayidx143, i32 0, i32 3
  store i32 %add141, i32* %x144, align 4
  %100 = load double, double* @val1, align 8
  %101 = load double, double* @val1, align 8
  %conv145 = fptosi double %101 to i32
  %conv146 = sitofp i32 %conv145 to double
  %sub147 = fsub double %100, %conv146
  %cmp148 = fcmp oge double %sub147, 5.000000e-01
  br i1 %cmp148, label %cond.true.150, label %cond.false.153

cond.true.150:                                    ; preds = %cond.end.139
  %102 = load double, double* @val1, align 8
  %conv151 = fptosi double %102 to i32
  %add152 = add nsw i32 %conv151, 1
  br label %cond.end.155

cond.false.153:                                   ; preds = %cond.end.139
  %103 = load double, double* @val1, align 8
  %conv154 = fptosi double %103 to i32
  br label %cond.end.155

cond.end.155:                                     ; preds = %cond.false.153, %cond.true.150
  %cond156 = phi i32 [ %add152, %cond.true.150 ], [ %conv154, %cond.false.153 ]
  %104 = load double, double* @val2, align 8
  %105 = load double, double* @val2, align 8
  %conv157 = fptosi double %105 to i32
  %conv158 = sitofp i32 %conv157 to double
  %sub159 = fsub double %104, %conv158
  %cmp160 = fcmp oge double %sub159, 5.000000e-01
  br i1 %cmp160, label %cond.true.162, label %cond.false.165

cond.true.162:                                    ; preds = %cond.end.155
  %106 = load double, double* @val2, align 8
  %conv163 = fptosi double %106 to i32
  %add164 = add nsw i32 %conv163, 1
  br label %cond.end.167

cond.false.165:                                   ; preds = %cond.end.155
  %107 = load double, double* @val2, align 8
  %conv166 = fptosi double %107 to i32
  br label %cond.end.167

cond.end.167:                                     ; preds = %cond.false.165, %cond.true.162
  %cond168 = phi i32 [ %add164, %cond.true.162 ], [ %conv166, %cond.false.165 ]
  %sub169 = sub nsw i32 %cond156, %cond168
  %108 = load i32, i32* %k, align 4
  %idxprom170 = sext i32 %108 to i64
  %109 = load %struct.kbox*, %struct.kbox** @kArray, align 8
  %arrayidx171 = getelementptr inbounds %struct.kbox, %struct.kbox* %109, i64 %idxprom170
  %sp172 = getelementptr inbounds %struct.kbox, %struct.kbox* %arrayidx171, i32 0, i32 2
  store i32 %sub169, i32* %sp172, align 4
  %110 = load i32, i32* %k, align 4
  %idxprom173 = sext i32 %110 to i64
  %111 = load %struct.kbox*, %struct.kbox** @kArray, align 8
  %arrayidx174 = getelementptr inbounds %struct.kbox, %struct.kbox* %111, i64 %idxprom173
  %HV175 = getelementptr inbounds %struct.kbox, %struct.kbox* %arrayidx174, i32 0, i32 1
  store i32 0, i32* %HV175, align 4
  br label %for.inc.176

for.inc.176:                                      ; preds = %cond.end.167
  %112 = load i32, i32* %k, align 4
  %inc177 = add nsw i32 %112, 1
  store i32 %inc177, i32* %k, align 4
  br label %for.cond.117

for.end.178:                                      ; preds = %for.cond.117
  br label %if.end.242

if.else.179:                                      ; preds = %if.then.113
  store i32 1, i32* %k, align 4
  br label %for.cond.180

for.cond.180:                                     ; preds = %for.inc.239, %if.else.179
  %113 = load i32, i32* %k, align 4
  %114 = load i32, i32* %TotSites, align 4
  %cmp181 = icmp sle i32 %113, %114
  br i1 %cmp181, label %for.body.183, label %for.end.241

for.body.183:                                     ; preds = %for.cond.180
  %115 = load i32, i32* %y.addr, align 4
  %116 = load i32, i32* %k, align 4
  %idxprom184 = sext i32 %116 to i64
  %117 = load %struct.kbox*, %struct.kbox** @kArray, align 8
  %arrayidx185 = getelementptr inbounds %struct.kbox, %struct.kbox* %117, i64 %idxprom184
  %y186 = getelementptr inbounds %struct.kbox, %struct.kbox* %arrayidx185, i32 0, i32 4
  store i32 %115, i32* %y186, align 4
  %118 = load i32, i32* %k, align 4
  %add187 = add nsw i32 %118, 1
  %conv188 = sitofp i32 %add187 to double
  %119 = load double, double* %siteSpace, align 8
  %mul189 = fmul double %conv188, %119
  store double %mul189, double* @val1, align 8
  %120 = load i32, i32* %k, align 4
  %conv190 = sitofp i32 %120 to double
  %121 = load double, double* %siteSpace, align 8
  %mul191 = fmul double %conv190, %121
  store double %mul191, double* @val2, align 8
  %122 = load i32, i32* %xx1.addr, align 4
  %123 = load double, double* @val2, align 8
  %124 = load double, double* @val2, align 8
  %conv192 = fptosi double %124 to i32
  %conv193 = sitofp i32 %conv192 to double
  %sub194 = fsub double %123, %conv193
  %cmp195 = fcmp oge double %sub194, 5.000000e-01
  br i1 %cmp195, label %cond.true.197, label %cond.false.200

cond.true.197:                                    ; preds = %for.body.183
  %125 = load double, double* @val2, align 8
  %conv198 = fptosi double %125 to i32
  %add199 = add nsw i32 %conv198, 1
  br label %cond.end.202

cond.false.200:                                   ; preds = %for.body.183
  %126 = load double, double* @val2, align 8
  %conv201 = fptosi double %126 to i32
  br label %cond.end.202

cond.end.202:                                     ; preds = %cond.false.200, %cond.true.197
  %cond203 = phi i32 [ %add199, %cond.true.197 ], [ %conv201, %cond.false.200 ]
  %sub204 = sub nsw i32 %122, %cond203
  %127 = load i32, i32* %k, align 4
  %idxprom205 = sext i32 %127 to i64
  %128 = load %struct.kbox*, %struct.kbox** @kArray, align 8
  %arrayidx206 = getelementptr inbounds %struct.kbox, %struct.kbox* %128, i64 %idxprom205
  %x207 = getelementptr inbounds %struct.kbox, %struct.kbox* %arrayidx206, i32 0, i32 3
  store i32 %sub204, i32* %x207, align 4
  %129 = load double, double* @val1, align 8
  %130 = load double, double* @val1, align 8
  %conv208 = fptosi double %130 to i32
  %conv209 = sitofp i32 %conv208 to double
  %sub210 = fsub double %129, %conv209
  %cmp211 = fcmp oge double %sub210, 5.000000e-01
  br i1 %cmp211, label %cond.true.213, label %cond.false.216

cond.true.213:                                    ; preds = %cond.end.202
  %131 = load double, double* @val1, align 8
  %conv214 = fptosi double %131 to i32
  %add215 = add nsw i32 %conv214, 1
  br label %cond.end.218

cond.false.216:                                   ; preds = %cond.end.202
  %132 = load double, double* @val1, align 8
  %conv217 = fptosi double %132 to i32
  br label %cond.end.218

cond.end.218:                                     ; preds = %cond.false.216, %cond.true.213
  %cond219 = phi i32 [ %add215, %cond.true.213 ], [ %conv217, %cond.false.216 ]
  %133 = load double, double* @val2, align 8
  %134 = load double, double* @val2, align 8
  %conv220 = fptosi double %134 to i32
  %conv221 = sitofp i32 %conv220 to double
  %sub222 = fsub double %133, %conv221
  %cmp223 = fcmp oge double %sub222, 5.000000e-01
  br i1 %cmp223, label %cond.true.225, label %cond.false.228

cond.true.225:                                    ; preds = %cond.end.218
  %135 = load double, double* @val2, align 8
  %conv226 = fptosi double %135 to i32
  %add227 = add nsw i32 %conv226, 1
  br label %cond.end.230

cond.false.228:                                   ; preds = %cond.end.218
  %136 = load double, double* @val2, align 8
  %conv229 = fptosi double %136 to i32
  br label %cond.end.230

cond.end.230:                                     ; preds = %cond.false.228, %cond.true.225
  %cond231 = phi i32 [ %add227, %cond.true.225 ], [ %conv229, %cond.false.228 ]
  %sub232 = sub nsw i32 %cond219, %cond231
  %137 = load i32, i32* %k, align 4
  %idxprom233 = sext i32 %137 to i64
  %138 = load %struct.kbox*, %struct.kbox** @kArray, align 8
  %arrayidx234 = getelementptr inbounds %struct.kbox, %struct.kbox* %138, i64 %idxprom233
  %sp235 = getelementptr inbounds %struct.kbox, %struct.kbox* %arrayidx234, i32 0, i32 2
  store i32 %sub232, i32* %sp235, align 4
  %139 = load i32, i32* %k, align 4
  %idxprom236 = sext i32 %139 to i64
  %140 = load %struct.kbox*, %struct.kbox** @kArray, align 8
  %arrayidx237 = getelementptr inbounds %struct.kbox, %struct.kbox* %140, i64 %idxprom236
  %HV238 = getelementptr inbounds %struct.kbox, %struct.kbox* %arrayidx237, i32 0, i32 1
  store i32 0, i32* %HV238, align 4
  br label %for.inc.239

for.inc.239:                                      ; preds = %cond.end.230
  %141 = load i32, i32* %k, align 4
  %inc240 = add nsw i32 %141, 1
  store i32 %inc240, i32* %k, align 4
  br label %for.cond.180

for.end.241:                                      ; preds = %for.cond.180
  br label %if.end.242

if.end.242:                                       ; preds = %for.end.241, %for.end.178
  br label %if.end.243

if.end.243:                                       ; preds = %if.end.242, %if.end.107
  %142 = load i32, i32* %TotSites, align 4
  ret i32 %142
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
