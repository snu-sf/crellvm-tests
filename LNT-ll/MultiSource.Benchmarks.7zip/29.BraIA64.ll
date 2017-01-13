; ModuleID = './MultiSource.Benchmarks.7zip/29.BraIA64.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@kBranchTable = internal constant [32 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\04\04\06\06\00\00\07\07\04\04\00\00\04\04\00\00", align 16

; Function Attrs: nounwind uwtable
define i64 @IA64_Convert(i8* %data, i64 %size, i32 %ip, i32 %encoding) #0 {
entry:
  %retval = alloca i64, align 8
  %data.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %ip.addr = alloca i32, align 4
  %encoding.addr = alloca i32, align 4
  %i = alloca i64, align 8
  %instrTemplate = alloca i32, align 4
  %mask = alloca i32, align 4
  %bitPos = alloca i32, align 4
  %slot = alloca i32, align 4
  %bytePos = alloca i32, align 4
  %bitRes = alloca i32, align 4
  %instruction = alloca i64, align 8
  %instNorm = alloca i64, align 8
  %j = alloca i32, align 4
  %src = alloca i32, align 4
  %dest = alloca i32, align 4
  store i8* %data, i8** %data.addr, align 8
  store i64 %size, i64* %size.addr, align 8
  store i32 %ip, i32* %ip.addr, align 4
  store i32 %encoding, i32* %encoding.addr, align 4
  %0 = load i64, i64* %size.addr, align 8
  %cmp = icmp ult i64 %0, 16
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i64 0, i64* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i64, i64* %size.addr, align 8
  %sub = sub i64 %1, 16
  store i64 %sub, i64* %size.addr, align 8
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.90, %if.end
  %2 = load i64, i64* %i, align 8
  %3 = load i64, i64* %size.addr, align 8
  %cmp1 = icmp ule i64 %2, %3
  br i1 %cmp1, label %for.body, label %for.end.92

for.body:                                         ; preds = %for.cond
  %4 = load i64, i64* %i, align 8
  %5 = load i8*, i8** %data.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %5, i64 %4
  %6 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %6 to i32
  %and = and i32 %conv, 31
  store i32 %and, i32* %instrTemplate, align 4
  %7 = load i32, i32* %instrTemplate, align 4
  %idxprom = zext i32 %7 to i64
  %arrayidx2 = getelementptr inbounds [32 x i8], [32 x i8]* @kBranchTable, i32 0, i64 %idxprom
  %8 = load i8, i8* %arrayidx2, align 1
  %conv3 = zext i8 %8 to i32
  store i32 %conv3, i32* %mask, align 4
  store i32 5, i32* %bitPos, align 4
  store i32 0, i32* %slot, align 4
  br label %for.cond.4

for.cond.4:                                       ; preds = %for.inc.86, %for.body
  %9 = load i32, i32* %slot, align 4
  %cmp5 = icmp slt i32 %9, 3
  br i1 %cmp5, label %for.body.7, label %for.end.89

for.body.7:                                       ; preds = %for.cond.4
  %10 = load i32, i32* %mask, align 4
  %11 = load i32, i32* %slot, align 4
  %shr = lshr i32 %10, %11
  %and8 = and i32 %shr, 1
  %cmp9 = icmp eq i32 %and8, 0
  br i1 %cmp9, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %for.body.7
  br label %for.inc.86

if.end.12:                                        ; preds = %for.body.7
  %12 = load i32, i32* %bitPos, align 4
  %shr13 = lshr i32 %12, 3
  store i32 %shr13, i32* %bytePos, align 4
  %13 = load i32, i32* %bitPos, align 4
  %and14 = and i32 %13, 7
  store i32 %and14, i32* %bitRes, align 4
  store i64 0, i64* %instruction, align 8
  store i32 0, i32* %j, align 4
  br label %for.cond.15

for.cond.15:                                      ; preds = %for.inc, %if.end.12
  %14 = load i32, i32* %j, align 4
  %cmp16 = icmp slt i32 %14, 6
  br i1 %cmp16, label %for.body.18, label %for.end

for.body.18:                                      ; preds = %for.cond.15
  %15 = load i64, i64* %i, align 8
  %16 = load i32, i32* %j, align 4
  %conv19 = sext i32 %16 to i64
  %add = add i64 %15, %conv19
  %17 = load i32, i32* %bytePos, align 4
  %conv20 = zext i32 %17 to i64
  %add21 = add i64 %add, %conv20
  %18 = load i8*, i8** %data.addr, align 8
  %arrayidx22 = getelementptr inbounds i8, i8* %18, i64 %add21
  %19 = load i8, i8* %arrayidx22, align 1
  %conv23 = zext i8 %19 to i64
  %20 = load i32, i32* %j, align 4
  %mul = mul nsw i32 8, %20
  %sh_prom = zext i32 %mul to i64
  %shl = shl i64 %conv23, %sh_prom
  %21 = load i64, i64* %instruction, align 8
  %add24 = add i64 %21, %shl
  store i64 %add24, i64* %instruction, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body.18
  %22 = load i32, i32* %j, align 4
  %inc = add nsw i32 %22, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.15

for.end:                                          ; preds = %for.cond.15
  %23 = load i64, i64* %instruction, align 8
  %24 = load i32, i32* %bitRes, align 4
  %sh_prom25 = zext i32 %24 to i64
  %shr26 = lshr i64 %23, %sh_prom25
  store i64 %shr26, i64* %instNorm, align 8
  %25 = load i64, i64* %instNorm, align 8
  %shr27 = lshr i64 %25, 37
  %and28 = and i64 %shr27, 15
  %cmp29 = icmp eq i64 %and28, 5
  br i1 %cmp29, label %land.lhs.true, label %if.end.85

land.lhs.true:                                    ; preds = %for.end
  %26 = load i64, i64* %instNorm, align 8
  %shr31 = lshr i64 %26, 9
  %and32 = and i64 %shr31, 7
  %cmp33 = icmp eq i64 %and32, 0
  br i1 %cmp33, label %if.then.35, label %if.end.85

if.then.35:                                       ; preds = %land.lhs.true
  %27 = load i64, i64* %instNorm, align 8
  %shr36 = lshr i64 %27, 13
  %and37 = and i64 %shr36, 1048575
  %conv38 = trunc i64 %and37 to i32
  store i32 %conv38, i32* %src, align 4
  %28 = load i64, i64* %instNorm, align 8
  %shr39 = lshr i64 %28, 36
  %conv40 = trunc i64 %shr39 to i32
  %and41 = and i32 %conv40, 1
  %shl42 = shl i32 %and41, 20
  %29 = load i32, i32* %src, align 4
  %or = or i32 %29, %shl42
  store i32 %or, i32* %src, align 4
  %30 = load i32, i32* %src, align 4
  %shl43 = shl i32 %30, 4
  store i32 %shl43, i32* %src, align 4
  %31 = load i32, i32* %encoding.addr, align 4
  %tobool = icmp ne i32 %31, 0
  br i1 %tobool, label %if.then.44, label %if.else

if.then.44:                                       ; preds = %if.then.35
  %32 = load i32, i32* %ip.addr, align 4
  %33 = load i64, i64* %i, align 8
  %conv45 = trunc i64 %33 to i32
  %add46 = add i32 %32, %conv45
  %34 = load i32, i32* %src, align 4
  %add47 = add i32 %add46, %34
  store i32 %add47, i32* %dest, align 4
  br label %if.end.51

if.else:                                          ; preds = %if.then.35
  %35 = load i32, i32* %src, align 4
  %36 = load i32, i32* %ip.addr, align 4
  %37 = load i64, i64* %i, align 8
  %conv48 = trunc i64 %37 to i32
  %add49 = add i32 %36, %conv48
  %sub50 = sub i32 %35, %add49
  store i32 %sub50, i32* %dest, align 4
  br label %if.end.51

if.end.51:                                        ; preds = %if.else, %if.then.44
  %38 = load i32, i32* %dest, align 4
  %shr52 = lshr i32 %38, 4
  store i32 %shr52, i32* %dest, align 4
  %39 = load i64, i64* %instNorm, align 8
  %and53 = and i64 %39, -77309403137
  store i64 %and53, i64* %instNorm, align 8
  %40 = load i32, i32* %dest, align 4
  %and54 = and i32 %40, 1048575
  %conv55 = zext i32 %and54 to i64
  %shl56 = shl i64 %conv55, 13
  %41 = load i64, i64* %instNorm, align 8
  %or57 = or i64 %41, %shl56
  store i64 %or57, i64* %instNorm, align 8
  %42 = load i32, i32* %dest, align 4
  %and58 = and i32 %42, 1048576
  %conv59 = zext i32 %and58 to i64
  %shl60 = shl i64 %conv59, 16
  %43 = load i64, i64* %instNorm, align 8
  %or61 = or i64 %43, %shl60
  store i64 %or61, i64* %instNorm, align 8
  %44 = load i32, i32* %bitRes, align 4
  %shl62 = shl i32 1, %44
  %sub63 = sub nsw i32 %shl62, 1
  %conv64 = sext i32 %sub63 to i64
  %45 = load i64, i64* %instruction, align 8
  %and65 = and i64 %45, %conv64
  store i64 %and65, i64* %instruction, align 8
  %46 = load i64, i64* %instNorm, align 8
  %47 = load i32, i32* %bitRes, align 4
  %sh_prom66 = zext i32 %47 to i64
  %shl67 = shl i64 %46, %sh_prom66
  %48 = load i64, i64* %instruction, align 8
  %or68 = or i64 %48, %shl67
  store i64 %or68, i64* %instruction, align 8
  store i32 0, i32* %j, align 4
  br label %for.cond.69

for.cond.69:                                      ; preds = %for.inc.82, %if.end.51
  %49 = load i32, i32* %j, align 4
  %cmp70 = icmp slt i32 %49, 6
  br i1 %cmp70, label %for.body.72, label %for.end.84

for.body.72:                                      ; preds = %for.cond.69
  %50 = load i64, i64* %instruction, align 8
  %51 = load i32, i32* %j, align 4
  %mul73 = mul nsw i32 8, %51
  %sh_prom74 = zext i32 %mul73 to i64
  %shr75 = lshr i64 %50, %sh_prom74
  %conv76 = trunc i64 %shr75 to i8
  %52 = load i64, i64* %i, align 8
  %53 = load i32, i32* %j, align 4
  %conv77 = sext i32 %53 to i64
  %add78 = add i64 %52, %conv77
  %54 = load i32, i32* %bytePos, align 4
  %conv79 = zext i32 %54 to i64
  %add80 = add i64 %add78, %conv79
  %55 = load i8*, i8** %data.addr, align 8
  %arrayidx81 = getelementptr inbounds i8, i8* %55, i64 %add80
  store i8 %conv76, i8* %arrayidx81, align 1
  br label %for.inc.82

for.inc.82:                                       ; preds = %for.body.72
  %56 = load i32, i32* %j, align 4
  %inc83 = add nsw i32 %56, 1
  store i32 %inc83, i32* %j, align 4
  br label %for.cond.69

for.end.84:                                       ; preds = %for.cond.69
  br label %if.end.85

if.end.85:                                        ; preds = %for.end.84, %land.lhs.true, %for.end
  br label %for.inc.86

for.inc.86:                                       ; preds = %if.end.85, %if.then.11
  %57 = load i32, i32* %slot, align 4
  %inc87 = add nsw i32 %57, 1
  store i32 %inc87, i32* %slot, align 4
  %58 = load i32, i32* %bitPos, align 4
  %add88 = add i32 %58, 41
  store i32 %add88, i32* %bitPos, align 4
  br label %for.cond.4

for.end.89:                                       ; preds = %for.cond.4
  br label %for.inc.90

for.inc.90:                                       ; preds = %for.end.89
  %59 = load i64, i64* %i, align 8
  %add91 = add i64 %59, 16
  store i64 %add91, i64* %i, align 8
  br label %for.cond

for.end.92:                                       ; preds = %for.cond
  %60 = load i64, i64* %i, align 8
  store i64 %60, i64* %retval
  br label %return

return:                                           ; preds = %for.end.92, %if.then
  %61 = load i64, i64* %retval
  ret i64 %61
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
