; ModuleID = './MultiSource.Benchmarks.MallocBench/110.cfrac.atop.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.precisionType = type { i16, i16, i16, i8, [1 x i16] }

@pzero = external global %struct.precisionType*, align 8

; Function Attrs: nounwind uwtable
define %struct.precisionType* @atop(i8* %chp) #0 {
entry:
  %chp.addr = alloca i8*, align 8
  %res = alloca %struct.precisionType*, align 8
  %clump = alloca %struct.precisionType*, align 8
  %sign = alloca i32, align 4
  %ch = alloca i32, align 4
  %temp = alloca i32, align 4
  %x = alloca i32, align 4
  %i = alloca i32, align 4
  store i8* %chp, i8** %chp.addr, align 8
  store %struct.precisionType* null, %struct.precisionType** %res, align 8
  store %struct.precisionType* null, %struct.precisionType** %clump, align 8
  store i32 0, i32* %sign, align 4
  %0 = load i8*, i8** %chp.addr, align 8
  %cmp = icmp ne i8* %0, null
  br i1 %cmp, label %if.then, label %if.end.69

if.then:                                          ; preds = %entry
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then
  %1 = load i8*, i8** %chp.addr, align 8
  %2 = load i8, i8* %1, align 1
  %conv = sext i8 %2 to i32
  %idxprom = sext i32 %conv to i64
  %call = call i16** @__ctype_b_loc() #3
  %3 = load i16*, i16** %call, align 8
  %arrayidx = getelementptr inbounds i16, i16* %3, i64 %idxprom
  %4 = load i16, i16* %arrayidx, align 2
  %conv1 = zext i16 %4 to i32
  %and = and i32 %conv1, 8192
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %5 = load i8*, i8** %chp.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %5, i32 1
  store i8* %incdec.ptr, i8** %chp.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %6 = load i8*, i8** %chp.addr, align 8
  %7 = load i8, i8* %6, align 1
  %conv2 = sext i8 %7 to i32
  %cmp3 = icmp eq i32 %conv2, 45
  br i1 %cmp3, label %if.then.5, label %if.else

if.then.5:                                        ; preds = %while.end
  store i32 1, i32* %sign, align 4
  %8 = load i8*, i8** %chp.addr, align 8
  %incdec.ptr6 = getelementptr inbounds i8, i8* %8, i32 1
  store i8* %incdec.ptr6, i8** %chp.addr, align 8
  br label %if.end.12

if.else:                                          ; preds = %while.end
  %9 = load i8*, i8** %chp.addr, align 8
  %10 = load i8, i8* %9, align 1
  %conv7 = sext i8 %10 to i32
  %cmp8 = icmp eq i32 %conv7, 43
  br i1 %cmp8, label %if.then.10, label %if.end

if.then.10:                                       ; preds = %if.else
  %11 = load i8*, i8** %chp.addr, align 8
  %incdec.ptr11 = getelementptr inbounds i8, i8* %11, i32 1
  store i8* %incdec.ptr11, i8** %chp.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.10, %if.else
  br label %if.end.12

if.end.12:                                        ; preds = %if.end, %if.then.5
  %12 = load i8*, i8** %chp.addr, align 8
  %13 = load i8, i8* %12, align 1
  %conv13 = zext i8 %13 to i32
  store i32 %conv13, i32* %ch, align 4
  %idxprom14 = sext i32 %conv13 to i64
  %call15 = call i16** @__ctype_b_loc() #3
  %14 = load i16*, i16** %call15, align 8
  %arrayidx16 = getelementptr inbounds i16, i16* %14, i64 %idxprom14
  %15 = load i16, i16* %arrayidx16, align 2
  %conv17 = zext i16 %15 to i32
  %and18 = and i32 %conv17, 2048
  %tobool19 = icmp ne i32 %and18, 0
  br i1 %tobool19, label %if.then.20, label %if.end.68

if.then.20:                                       ; preds = %if.end.12
  %16 = load %struct.precisionType*, %struct.precisionType** @pzero, align 8
  %call21 = call %struct.precisionType* @psetq(%struct.precisionType** %res, %struct.precisionType* %16)
  %call22 = call %struct.precisionType* @utop(i32 1000000000)
  %call23 = call %struct.precisionType* @psetq(%struct.precisionType** %clump, %struct.precisionType* %call22)
  br label %do.body

do.body:                                          ; preds = %do.cond.42, %if.then.20
  store i32 8, i32* %i, align 4
  %17 = load i32, i32* %ch, align 4
  %sub = sub nsw i32 %17, 48
  store i32 %sub, i32* %temp, align 4
  br label %do.body.24

do.body.24:                                       ; preds = %do.cond, %do.body
  %18 = load i8*, i8** %chp.addr, align 8
  %incdec.ptr25 = getelementptr inbounds i8, i8* %18, i32 1
  store i8* %incdec.ptr25, i8** %chp.addr, align 8
  %19 = load i8, i8* %incdec.ptr25, align 1
  %conv26 = zext i8 %19 to i32
  store i32 %conv26, i32* %ch, align 4
  %idxprom27 = sext i32 %conv26 to i64
  %call28 = call i16** @__ctype_b_loc() #3
  %20 = load i16*, i16** %call28, align 8
  %arrayidx29 = getelementptr inbounds i16, i16* %20, i64 %idxprom27
  %21 = load i16, i16* %arrayidx29, align 2
  %conv30 = zext i16 %21 to i32
  %and31 = and i32 %conv30, 2048
  %tobool32 = icmp ne i32 %and31, 0
  br i1 %tobool32, label %if.end.34, label %if.then.33

if.then.33:                                       ; preds = %do.body.24
  br label %atoplast

if.end.34:                                        ; preds = %do.body.24
  %22 = load i32, i32* %temp, align 4
  %mul = mul i32 %22, 10
  %23 = load i32, i32* %ch, align 4
  %sub35 = sub nsw i32 %23, 48
  %add = add i32 %mul, %sub35
  store i32 %add, i32* %temp, align 4
  br label %do.cond

do.cond:                                          ; preds = %if.end.34
  %24 = load i32, i32* %i, align 4
  %dec = add nsw i32 %24, -1
  store i32 %dec, i32* %i, align 4
  %cmp36 = icmp sgt i32 %dec, 0
  br i1 %cmp36, label %do.body.24, label %do.end

do.end:                                           ; preds = %do.cond
  %25 = load %struct.precisionType*, %struct.precisionType** %res, align 8
  %26 = load %struct.precisionType*, %struct.precisionType** %clump, align 8
  %call38 = call %struct.precisionType* @pmul(%struct.precisionType* %25, %struct.precisionType* %26)
  %27 = load i32, i32* %temp, align 4
  %call39 = call %struct.precisionType* @utop(i32 %27)
  %call40 = call %struct.precisionType* @padd(%struct.precisionType* %call38, %struct.precisionType* %call39)
  %call41 = call %struct.precisionType* @psetq(%struct.precisionType** %res, %struct.precisionType* %call40)
  br label %do.cond.42

do.cond.42:                                       ; preds = %do.end
  %28 = load i8*, i8** %chp.addr, align 8
  %incdec.ptr43 = getelementptr inbounds i8, i8* %28, i32 1
  store i8* %incdec.ptr43, i8** %chp.addr, align 8
  %29 = load i8, i8* %incdec.ptr43, align 1
  %conv44 = zext i8 %29 to i32
  store i32 %conv44, i32* %ch, align 4
  %idxprom45 = sext i32 %conv44 to i64
  %call46 = call i16** @__ctype_b_loc() #3
  %30 = load i16*, i16** %call46, align 8
  %arrayidx47 = getelementptr inbounds i16, i16* %30, i64 %idxprom45
  %31 = load i16, i16* %arrayidx47, align 2
  %conv48 = zext i16 %31 to i32
  %and49 = and i32 %conv48, 2048
  %tobool50 = icmp ne i32 %and49, 0
  br i1 %tobool50, label %do.body, label %do.end.51

do.end.51:                                        ; preds = %do.cond.42
  br label %atopdone

atoplast:                                         ; preds = %if.then.33
  store i32 10, i32* %x, align 4
  br label %while.cond.52

while.cond.52:                                    ; preds = %while.body.55, %atoplast
  %32 = load i32, i32* %i, align 4
  %inc = add nsw i32 %32, 1
  store i32 %inc, i32* %i, align 4
  %cmp53 = icmp slt i32 %32, 8
  br i1 %cmp53, label %while.body.55, label %while.end.57

while.body.55:                                    ; preds = %while.cond.52
  %33 = load i32, i32* %x, align 4
  %mul56 = mul i32 %33, 10
  store i32 %mul56, i32* %x, align 4
  br label %while.cond.52

while.end.57:                                     ; preds = %while.cond.52
  %34 = load %struct.precisionType*, %struct.precisionType** %res, align 8
  %35 = load i32, i32* %x, align 4
  %call58 = call %struct.precisionType* @utop(i32 %35)
  %call59 = call %struct.precisionType* @pmul(%struct.precisionType* %34, %struct.precisionType* %call58)
  %36 = load i32, i32* %temp, align 4
  %call60 = call %struct.precisionType* @utop(i32 %36)
  %call61 = call %struct.precisionType* @padd(%struct.precisionType* %call59, %struct.precisionType* %call60)
  %call62 = call %struct.precisionType* @psetq(%struct.precisionType** %res, %struct.precisionType* %call61)
  br label %atopdone

atopdone:                                         ; preds = %while.end.57, %do.end.51
  %37 = load i32, i32* %sign, align 4
  %tobool63 = icmp ne i32 %37, 0
  br i1 %tobool63, label %if.then.64, label %if.end.67

if.then.64:                                       ; preds = %atopdone
  %38 = load %struct.precisionType*, %struct.precisionType** %res, align 8
  %call65 = call %struct.precisionType* @pneg(%struct.precisionType* %38)
  %call66 = call %struct.precisionType* @psetq(%struct.precisionType** %res, %struct.precisionType* %call65)
  br label %if.end.67

if.end.67:                                        ; preds = %if.then.64, %atopdone
  br label %if.end.68

if.end.68:                                        ; preds = %if.end.67, %if.end.12
  br label %if.end.69

if.end.69:                                        ; preds = %if.end.68, %entry
  %39 = load %struct.precisionType*, %struct.precisionType** %clump, align 8
  %cmp70 = icmp ne %struct.precisionType* %39, null
  br i1 %cmp70, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %if.end.69
  %40 = load %struct.precisionType*, %struct.precisionType** %clump, align 8
  %41 = bitcast %struct.precisionType* %40 to i16*
  %42 = load i16, i16* %41, align 2
  %dec72 = add i16 %42, -1
  store i16 %dec72, i16* %41, align 2
  %conv73 = zext i16 %dec72 to i32
  %cmp74 = icmp eq i32 %conv73, 0
  br i1 %cmp74, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true
  %43 = load %struct.precisionType*, %struct.precisionType** %clump, align 8
  %call76 = call i32 (%struct.precisionType*, ...) bitcast (i32 (...)* @pfree to i32 (%struct.precisionType*, ...)*)(%struct.precisionType* %43)
  %tobool77 = icmp ne i32 %call76, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %if.end.69
  %44 = phi i1 [ false, %land.lhs.true ], [ false, %if.end.69 ], [ %tobool77, %land.rhs ]
  %land.ext = zext i1 %44 to i32
  %45 = load %struct.precisionType*, %struct.precisionType** %res, align 8
  %call78 = call %struct.precisionType* @presult(%struct.precisionType* %45)
  ret %struct.precisionType* %call78
}

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() #1

declare %struct.precisionType* @psetq(%struct.precisionType**, %struct.precisionType*) #2

declare %struct.precisionType* @utop(i32) #2

declare %struct.precisionType* @padd(%struct.precisionType*, %struct.precisionType*) #2

declare %struct.precisionType* @pmul(%struct.precisionType*, %struct.precisionType*) #2

declare %struct.precisionType* @pneg(%struct.precisionType*) #2

declare i32 @pfree(...) #2

declare %struct.precisionType* @presult(%struct.precisionType*) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
