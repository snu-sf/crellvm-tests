; ModuleID = './MultiSource.Benchmarks.Prolangs-C/198.TimberWolfMC.neworient.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cellbox = type { i8*, i32, i32, i32, [9 x i32], i32, i32, i32, i32, i32, i32, i32, double, double, double, double, double, i32, i32, %struct.contentbox*, %struct.uncombox*, [8 x %struct.tilebox*], %struct.sidebox* }
%struct.contentbox = type { i32, i32, i32, i32, i32 }
%struct.uncombox = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.tilebox = type { %struct.tilebox*, double, double, double, double, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.termbox*, %struct.locbox* }
%struct.termbox = type { %struct.termbox*, i32, i32, i32, i32, i32 }
%struct.locbox = type { i32, i32, i32, i32 }
%struct.sidebox = type { i32, i32 }

@randVar = external global i32, align 4

; Function Attrs: nounwind uwtable
define i32 @newOrient(%struct.cellbox* %cellptr, i32 %range) #0 {
entry:
  %retval = alloca i32, align 4
  %cellptr.addr = alloca %struct.cellbox*, align 8
  %range.addr = alloca i32, align 4
  %incidence = alloca i32, align 4
  %count = alloca i32, align 4
  %i = alloca i32, align 4
  %orient = alloca i32, align 4
  store %struct.cellbox* %cellptr, %struct.cellbox** %cellptr.addr, align 8
  store i32 %range, i32* %range.addr, align 4
  %0 = load %struct.cellbox*, %struct.cellbox** %cellptr.addr, align 8
  %orient1 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %0, i32 0, i32 5
  %1 = load i32, i32* %orient1, align 4
  store i32 %1, i32* %orient, align 4
  %2 = load i32, i32* %range.addr, align 4
  %cmp = icmp eq i32 %2, 4
  br i1 %cmp, label %if.then, label %if.else.91

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %orient, align 4
  %cmp2 = icmp sge i32 %3, 4
  br i1 %cmp2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %if.then
  store i32 0, i32* %count, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.3
  %4 = load i32, i32* %i, align 4
  %cmp4 = icmp sle i32 %4, 3
  br i1 %cmp4, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %i, align 4
  %idxprom = sext i32 %5 to i64
  %6 = load %struct.cellbox*, %struct.cellbox** %cellptr.addr, align 8
  %orientList = getelementptr inbounds %struct.cellbox, %struct.cellbox* %6, i32 0, i32 4
  %arrayidx = getelementptr inbounds [9 x i32], [9 x i32]* %orientList, i32 0, i64 %idxprom
  %7 = load i32, i32* %arrayidx, align 4
  %cmp5 = icmp eq i32 %7, 1
  br i1 %cmp5, label %if.then.6, label %if.end

if.then.6:                                        ; preds = %for.body
  %8 = load i32, i32* %count, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* %count, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.6, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %9 = load i32, i32* %i, align 4
  %inc7 = add nsw i32 %9, 1
  store i32 %inc7, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %10 = load i32, i32* %count, align 4
  %cmp8 = icmp eq i32 %10, 0
  br i1 %cmp8, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %for.end
  store i32 -1, i32* %retval
  br label %if.end.153

if.end.10:                                        ; preds = %for.end
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.end.10
  %11 = load i32, i32* %count, align 4
  %conv = sitofp i32 %11 to double
  %12 = load i32, i32* @randVar, align 4
  %mul = mul nsw i32 %12, 1103515245
  %add = add nsw i32 %mul, 12345
  store i32 %add, i32* @randVar, align 4
  %and = and i32 %add, 2147483647
  %conv11 = sitofp i32 %and to double
  %div = fdiv double %conv11, 0x41DFFFFFFFC00000
  %mul12 = fmul double %conv, %div
  %conv13 = fptosi double %mul12 to i32
  %add14 = add nsw i32 %conv13, 1
  store i32 %add14, i32* %incidence, align 4
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %13 = load i32, i32* %incidence, align 4
  %14 = load i32, i32* %count, align 4
  %add15 = add nsw i32 %14, 1
  %cmp16 = icmp eq i32 %13, %add15
  br i1 %cmp16, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  store i32 0, i32* %count, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.18

for.cond.18:                                      ; preds = %for.inc.34, %do.end
  %15 = load i32, i32* %i, align 4
  %cmp19 = icmp sle i32 %15, 3
  br i1 %cmp19, label %for.body.21, label %for.end.36

for.body.21:                                      ; preds = %for.cond.18
  %16 = load i32, i32* %i, align 4
  %idxprom22 = sext i32 %16 to i64
  %17 = load %struct.cellbox*, %struct.cellbox** %cellptr.addr, align 8
  %orientList23 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %17, i32 0, i32 4
  %arrayidx24 = getelementptr inbounds [9 x i32], [9 x i32]* %orientList23, i32 0, i64 %idxprom22
  %18 = load i32, i32* %arrayidx24, align 4
  %cmp25 = icmp eq i32 %18, 1
  br i1 %cmp25, label %if.then.27, label %if.end.33

if.then.27:                                       ; preds = %for.body.21
  %19 = load i32, i32* %count, align 4
  %inc28 = add nsw i32 %19, 1
  store i32 %inc28, i32* %count, align 4
  %20 = load i32, i32* %incidence, align 4
  %cmp29 = icmp eq i32 %inc28, %20
  br i1 %cmp29, label %if.then.31, label %if.end.32

if.then.31:                                       ; preds = %if.then.27
  %21 = load i32, i32* %i, align 4
  store i32 %21, i32* %retval
  br label %if.end.153

if.end.32:                                        ; preds = %if.then.27
  br label %if.end.33

if.end.33:                                        ; preds = %if.end.32, %for.body.21
  br label %for.inc.34

for.inc.34:                                       ; preds = %if.end.33
  %22 = load i32, i32* %i, align 4
  %inc35 = add nsw i32 %22, 1
  store i32 %inc35, i32* %i, align 4
  br label %for.cond.18

for.end.36:                                       ; preds = %for.cond.18
  br label %if.end.90

if.else:                                          ; preds = %if.then
  store i32 0, i32* %count, align 4
  store i32 4, i32* %i, align 4
  br label %for.cond.37

for.cond.37:                                      ; preds = %for.inc.49, %if.else
  %23 = load i32, i32* %i, align 4
  %cmp38 = icmp sle i32 %23, 7
  br i1 %cmp38, label %for.body.40, label %for.end.51

for.body.40:                                      ; preds = %for.cond.37
  %24 = load i32, i32* %i, align 4
  %idxprom41 = sext i32 %24 to i64
  %25 = load %struct.cellbox*, %struct.cellbox** %cellptr.addr, align 8
  %orientList42 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %25, i32 0, i32 4
  %arrayidx43 = getelementptr inbounds [9 x i32], [9 x i32]* %orientList42, i32 0, i64 %idxprom41
  %26 = load i32, i32* %arrayidx43, align 4
  %cmp44 = icmp eq i32 %26, 1
  br i1 %cmp44, label %if.then.46, label %if.end.48

if.then.46:                                       ; preds = %for.body.40
  %27 = load i32, i32* %count, align 4
  %inc47 = add nsw i32 %27, 1
  store i32 %inc47, i32* %count, align 4
  br label %if.end.48

if.end.48:                                        ; preds = %if.then.46, %for.body.40
  br label %for.inc.49

for.inc.49:                                       ; preds = %if.end.48
  %28 = load i32, i32* %i, align 4
  %inc50 = add nsw i32 %28, 1
  store i32 %inc50, i32* %i, align 4
  br label %for.cond.37

for.end.51:                                       ; preds = %for.cond.37
  %29 = load i32, i32* %count, align 4
  %cmp52 = icmp eq i32 %29, 0
  br i1 %cmp52, label %if.then.54, label %if.end.55

if.then.54:                                       ; preds = %for.end.51
  store i32 -1, i32* %retval
  br label %if.end.153

if.end.55:                                        ; preds = %for.end.51
  br label %do.body.56

do.body.56:                                       ; preds = %do.cond.66, %if.end.55
  %30 = load i32, i32* %count, align 4
  %conv57 = sitofp i32 %30 to double
  %31 = load i32, i32* @randVar, align 4
  %mul58 = mul nsw i32 %31, 1103515245
  %add59 = add nsw i32 %mul58, 12345
  store i32 %add59, i32* @randVar, align 4
  %and60 = and i32 %add59, 2147483647
  %conv61 = sitofp i32 %and60 to double
  %div62 = fdiv double %conv61, 0x41DFFFFFFFC00000
  %mul63 = fmul double %conv57, %div62
  %conv64 = fptosi double %mul63 to i32
  %add65 = add nsw i32 %conv64, 1
  store i32 %add65, i32* %incidence, align 4
  br label %do.cond.66

do.cond.66:                                       ; preds = %do.body.56
  %32 = load i32, i32* %incidence, align 4
  %33 = load i32, i32* %count, align 4
  %add67 = add nsw i32 %33, 1
  %cmp68 = icmp eq i32 %32, %add67
  br i1 %cmp68, label %do.body.56, label %do.end.70

do.end.70:                                        ; preds = %do.cond.66
  store i32 0, i32* %count, align 4
  store i32 4, i32* %i, align 4
  br label %for.cond.71

for.cond.71:                                      ; preds = %for.inc.87, %do.end.70
  %34 = load i32, i32* %i, align 4
  %cmp72 = icmp sle i32 %34, 7
  br i1 %cmp72, label %for.body.74, label %for.end.89

for.body.74:                                      ; preds = %for.cond.71
  %35 = load i32, i32* %i, align 4
  %idxprom75 = sext i32 %35 to i64
  %36 = load %struct.cellbox*, %struct.cellbox** %cellptr.addr, align 8
  %orientList76 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %36, i32 0, i32 4
  %arrayidx77 = getelementptr inbounds [9 x i32], [9 x i32]* %orientList76, i32 0, i64 %idxprom75
  %37 = load i32, i32* %arrayidx77, align 4
  %cmp78 = icmp eq i32 %37, 1
  br i1 %cmp78, label %if.then.80, label %if.end.86

if.then.80:                                       ; preds = %for.body.74
  %38 = load i32, i32* %count, align 4
  %inc81 = add nsw i32 %38, 1
  store i32 %inc81, i32* %count, align 4
  %39 = load i32, i32* %incidence, align 4
  %cmp82 = icmp eq i32 %inc81, %39
  br i1 %cmp82, label %if.then.84, label %if.end.85

if.then.84:                                       ; preds = %if.then.80
  %40 = load i32, i32* %i, align 4
  store i32 %40, i32* %retval
  br label %if.end.153

if.end.85:                                        ; preds = %if.then.80
  br label %if.end.86

if.end.86:                                        ; preds = %if.end.85, %for.body.74
  br label %for.inc.87

for.inc.87:                                       ; preds = %if.end.86
  %41 = load i32, i32* %i, align 4
  %inc88 = add nsw i32 %41, 1
  store i32 %inc88, i32* %i, align 4
  br label %for.cond.71

for.end.89:                                       ; preds = %for.cond.71
  br label %if.end.90

if.end.90:                                        ; preds = %for.end.89, %for.end.36
  br label %if.end.153

if.else.91:                                       ; preds = %entry
  store i32 0, i32* %count, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.92

for.cond.92:                                      ; preds = %for.inc.108, %if.else.91
  %42 = load i32, i32* %i, align 4
  %cmp93 = icmp sle i32 %42, 7
  br i1 %cmp93, label %for.body.95, label %for.end.110

for.body.95:                                      ; preds = %for.cond.92
  %43 = load i32, i32* %i, align 4
  %44 = load i32, i32* %orient, align 4
  %cmp96 = icmp eq i32 %43, %44
  br i1 %cmp96, label %if.then.98, label %if.end.99

if.then.98:                                       ; preds = %for.body.95
  br label %for.inc.108

if.end.99:                                        ; preds = %for.body.95
  %45 = load i32, i32* %i, align 4
  %idxprom100 = sext i32 %45 to i64
  %46 = load %struct.cellbox*, %struct.cellbox** %cellptr.addr, align 8
  %orientList101 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %46, i32 0, i32 4
  %arrayidx102 = getelementptr inbounds [9 x i32], [9 x i32]* %orientList101, i32 0, i64 %idxprom100
  %47 = load i32, i32* %arrayidx102, align 4
  %cmp103 = icmp eq i32 %47, 1
  br i1 %cmp103, label %if.then.105, label %if.end.107

if.then.105:                                      ; preds = %if.end.99
  %48 = load i32, i32* %count, align 4
  %inc106 = add nsw i32 %48, 1
  store i32 %inc106, i32* %count, align 4
  br label %if.end.107

if.end.107:                                       ; preds = %if.then.105, %if.end.99
  br label %for.inc.108

for.inc.108:                                      ; preds = %if.end.107, %if.then.98
  %49 = load i32, i32* %i, align 4
  %inc109 = add nsw i32 %49, 1
  store i32 %inc109, i32* %i, align 4
  br label %for.cond.92

for.end.110:                                      ; preds = %for.cond.92
  %50 = load i32, i32* %count, align 4
  %cmp111 = icmp eq i32 %50, 0
  br i1 %cmp111, label %if.then.113, label %if.end.114

if.then.113:                                      ; preds = %for.end.110
  store i32 -1, i32* %retval
  br label %if.end.153

if.end.114:                                       ; preds = %for.end.110
  br label %do.body.115

do.body.115:                                      ; preds = %do.cond.125, %if.end.114
  %51 = load i32, i32* %count, align 4
  %conv116 = sitofp i32 %51 to double
  %52 = load i32, i32* @randVar, align 4
  %mul117 = mul nsw i32 %52, 1103515245
  %add118 = add nsw i32 %mul117, 12345
  store i32 %add118, i32* @randVar, align 4
  %and119 = and i32 %add118, 2147483647
  %conv120 = sitofp i32 %and119 to double
  %div121 = fdiv double %conv120, 0x41DFFFFFFFC00000
  %mul122 = fmul double %conv116, %div121
  %conv123 = fptosi double %mul122 to i32
  %add124 = add nsw i32 %conv123, 1
  store i32 %add124, i32* %incidence, align 4
  br label %do.cond.125

do.cond.125:                                      ; preds = %do.body.115
  %53 = load i32, i32* %incidence, align 4
  %54 = load i32, i32* %count, align 4
  %add126 = add nsw i32 %54, 1
  %cmp127 = icmp eq i32 %53, %add126
  br i1 %cmp127, label %do.body.115, label %do.end.129

do.end.129:                                       ; preds = %do.cond.125
  store i32 0, i32* %count, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.130

for.cond.130:                                     ; preds = %for.inc.150, %do.end.129
  %55 = load i32, i32* %i, align 4
  %cmp131 = icmp sle i32 %55, 7
  br i1 %cmp131, label %for.body.133, label %for.end.152

for.body.133:                                     ; preds = %for.cond.130
  %56 = load i32, i32* %i, align 4
  %57 = load i32, i32* %orient, align 4
  %cmp134 = icmp eq i32 %56, %57
  br i1 %cmp134, label %if.then.136, label %if.end.137

if.then.136:                                      ; preds = %for.body.133
  br label %for.inc.150

if.end.137:                                       ; preds = %for.body.133
  %58 = load i32, i32* %i, align 4
  %idxprom138 = sext i32 %58 to i64
  %59 = load %struct.cellbox*, %struct.cellbox** %cellptr.addr, align 8
  %orientList139 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %59, i32 0, i32 4
  %arrayidx140 = getelementptr inbounds [9 x i32], [9 x i32]* %orientList139, i32 0, i64 %idxprom138
  %60 = load i32, i32* %arrayidx140, align 4
  %cmp141 = icmp eq i32 %60, 1
  br i1 %cmp141, label %if.then.143, label %if.end.149

if.then.143:                                      ; preds = %if.end.137
  %61 = load i32, i32* %count, align 4
  %inc144 = add nsw i32 %61, 1
  store i32 %inc144, i32* %count, align 4
  %62 = load i32, i32* %incidence, align 4
  %cmp145 = icmp eq i32 %inc144, %62
  br i1 %cmp145, label %if.then.147, label %if.end.148

if.then.147:                                      ; preds = %if.then.143
  %63 = load i32, i32* %i, align 4
  store i32 %63, i32* %retval
  br label %if.end.153

if.end.148:                                       ; preds = %if.then.143
  br label %if.end.149

if.end.149:                                       ; preds = %if.end.148, %if.end.137
  br label %for.inc.150

for.inc.150:                                      ; preds = %if.end.149, %if.then.136
  %64 = load i32, i32* %i, align 4
  %inc151 = add nsw i32 %64, 1
  store i32 %inc151, i32* %i, align 4
  br label %for.cond.130

for.end.152:                                      ; preds = %for.cond.130
  br label %if.end.153

if.end.153:                                       ; preds = %if.then.9, %if.then.31, %if.then.54, %if.then.84, %if.then.113, %if.then.147, %for.end.152, %if.end.90
  %65 = load i32, i32* %retval
  ret i32 %65
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
