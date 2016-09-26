; ModuleID = './convolute.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@mpd_moduli = external hidden constant [0 x i64], align 8

; Function Attrs: nounwind uwtable
define hidden i32 @fnt_convolute(i64* %c1, i64* %c2, i64 %n, i32 %modnum) #0 {
entry:
  %retval = alloca i32, align 4
  %c1.addr = alloca i64*, align 8
  %c2.addr = alloca i64*, align 8
  %n.addr = alloca i64, align 8
  %modnum.addr = alloca i32, align 4
  %fnt = alloca i32 (i64*, i64, i32)*, align 8
  %inv_fnt = alloca i32 (i64*, i64, i32)*, align 8
  %n_inv = alloca i64, align 8
  %umod = alloca i64, align 8
  %i = alloca i64, align 8
  %x0 = alloca i64, align 8
  %y0 = alloca i64, align 8
  %x1 = alloca i64, align 8
  %y1 = alloca i64, align 8
  %x031 = alloca i64, align 8
  %x133 = alloca i64, align 8
  %x2 = alloca i64, align 8
  %x3 = alloca i64, align 8
  store i64* %c1, i64** %c1.addr, align 8
  store i64* %c2, i64** %c2.addr, align 8
  store i64 %n, i64* %n.addr, align 8
  store i32 %modnum, i32* %modnum.addr, align 4
  %0 = load i32, i32* %modnum.addr, align 4
  call void @std_setmodulus(i32 %0, i64* %umod)
  %1 = load i64, i64* %n.addr, align 8
  %2 = load i64, i64* %umod, align 8
  %sub = sub i64 %2, 2
  %3 = load i64, i64* %umod, align 8
  %call = call i64 @x64_powmod(i64 %1, i64 %sub, i64 %3)
  store i64 %call, i64* %n_inv, align 8
  %4 = load i64, i64* %n.addr, align 8
  %call1 = call i32 @ispower2(i64 %4)
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.then, label %if.else.3

if.then:                                          ; preds = %entry
  %5 = load i64, i64* %n.addr, align 8
  %cmp = icmp ugt i64 %5, 4096
  br i1 %cmp, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %if.then
  store i32 (i64*, i64, i32)* @six_step_fnt, i32 (i64*, i64, i32)** %fnt, align 8
  store i32 (i64*, i64, i32)* @inv_six_step_fnt, i32 (i64*, i64, i32)** %inv_fnt, align 8
  br label %if.end

if.else:                                          ; preds = %if.then
  store i32 (i64*, i64, i32)* @std_fnt, i32 (i64*, i64, i32)** %fnt, align 8
  store i32 (i64*, i64, i32)* @std_inv_fnt, i32 (i64*, i64, i32)** %inv_fnt, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.2
  br label %if.end.4

if.else.3:                                        ; preds = %entry
  store i32 (i64*, i64, i32)* @four_step_fnt, i32 (i64*, i64, i32)** %fnt, align 8
  store i32 (i64*, i64, i32)* @inv_four_step_fnt, i32 (i64*, i64, i32)** %inv_fnt, align 8
  br label %if.end.4

if.end.4:                                         ; preds = %if.else.3, %if.end
  %6 = load i32 (i64*, i64, i32)*, i32 (i64*, i64, i32)** %fnt, align 8
  %7 = load i64*, i64** %c1.addr, align 8
  %8 = load i64, i64* %n.addr, align 8
  %9 = load i32, i32* %modnum.addr, align 4
  %call5 = call i32 %6(i64* %7, i64 %8, i32 %9)
  %tobool6 = icmp ne i32 %call5, 0
  br i1 %tobool6, label %if.end.8, label %if.then.7

if.then.7:                                        ; preds = %if.end.4
  store i32 0, i32* %retval
  br label %return

if.end.8:                                         ; preds = %if.end.4
  %10 = load i32 (i64*, i64, i32)*, i32 (i64*, i64, i32)** %fnt, align 8
  %11 = load i64*, i64** %c2.addr, align 8
  %12 = load i64, i64* %n.addr, align 8
  %13 = load i32, i32* %modnum.addr, align 4
  %call9 = call i32 %10(i64* %11, i64 %12, i32 %13)
  %tobool10 = icmp ne i32 %call9, 0
  br i1 %tobool10, label %if.end.12, label %if.then.11

if.then.11:                                       ; preds = %if.end.8
  store i32 0, i32* %retval
  br label %return

if.end.12:                                        ; preds = %if.end.8
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.12
  %14 = load i64, i64* %i, align 8
  %15 = load i64, i64* %n.addr, align 8
  %sub13 = sub i64 %15, 1
  %cmp14 = icmp ult i64 %14, %sub13
  br i1 %cmp14, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %16 = load i64, i64* %i, align 8
  %17 = load i64*, i64** %c1.addr, align 8
  %arrayidx = getelementptr i64, i64* %17, i64 %16
  %18 = load i64, i64* %arrayidx, align 8
  store i64 %18, i64* %x0, align 8
  %19 = load i64, i64* %i, align 8
  %20 = load i64*, i64** %c2.addr, align 8
  %arrayidx15 = getelementptr i64, i64* %20, i64 %19
  %21 = load i64, i64* %arrayidx15, align 8
  store i64 %21, i64* %y0, align 8
  %22 = load i64, i64* %i, align 8
  %add = add i64 %22, 1
  %23 = load i64*, i64** %c1.addr, align 8
  %arrayidx16 = getelementptr i64, i64* %23, i64 %add
  %24 = load i64, i64* %arrayidx16, align 8
  store i64 %24, i64* %x1, align 8
  %25 = load i64, i64* %i, align 8
  %add17 = add i64 %25, 1
  %26 = load i64*, i64** %c2.addr, align 8
  %arrayidx18 = getelementptr i64, i64* %26, i64 %add17
  %27 = load i64, i64* %arrayidx18, align 8
  store i64 %27, i64* %y1, align 8
  %28 = load i64, i64* %y0, align 8
  %29 = load i64, i64* %y1, align 8
  %30 = load i64, i64* %umod, align 8
  call void @x64_mulmod2(i64* %x0, i64 %28, i64* %x1, i64 %29, i64 %30)
  %31 = load i64, i64* %x0, align 8
  %32 = load i64, i64* %i, align 8
  %33 = load i64*, i64** %c1.addr, align 8
  %arrayidx19 = getelementptr i64, i64* %33, i64 %32
  store i64 %31, i64* %arrayidx19, align 8
  %34 = load i64, i64* %x1, align 8
  %35 = load i64, i64* %i, align 8
  %add20 = add i64 %35, 1
  %36 = load i64*, i64** %c1.addr, align 8
  %arrayidx21 = getelementptr i64, i64* %36, i64 %add20
  store i64 %34, i64* %arrayidx21, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %37 = load i64, i64* %i, align 8
  %add22 = add i64 %37, 2
  store i64 %add22, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %38 = load i32 (i64*, i64, i32)*, i32 (i64*, i64, i32)** %inv_fnt, align 8
  %39 = load i64*, i64** %c1.addr, align 8
  %40 = load i64, i64* %n.addr, align 8
  %41 = load i32, i32* %modnum.addr, align 4
  %call23 = call i32 %38(i64* %39, i64 %40, i32 %41)
  %tobool24 = icmp ne i32 %call23, 0
  br i1 %tobool24, label %if.end.26, label %if.then.25

if.then.25:                                       ; preds = %for.end
  store i32 0, i32* %retval
  br label %return

if.end.26:                                        ; preds = %for.end
  store i64 0, i64* %i, align 8
  br label %for.cond.27

for.cond.27:                                      ; preds = %for.inc.47, %if.end.26
  %42 = load i64, i64* %i, align 8
  %43 = load i64, i64* %n.addr, align 8
  %sub28 = sub i64 %43, 3
  %cmp29 = icmp ult i64 %42, %sub28
  br i1 %cmp29, label %for.body.30, label %for.end.49

for.body.30:                                      ; preds = %for.cond.27
  %44 = load i64, i64* %i, align 8
  %45 = load i64*, i64** %c1.addr, align 8
  %arrayidx32 = getelementptr i64, i64* %45, i64 %44
  %46 = load i64, i64* %arrayidx32, align 8
  store i64 %46, i64* %x031, align 8
  %47 = load i64, i64* %i, align 8
  %add34 = add i64 %47, 1
  %48 = load i64*, i64** %c1.addr, align 8
  %arrayidx35 = getelementptr i64, i64* %48, i64 %add34
  %49 = load i64, i64* %arrayidx35, align 8
  store i64 %49, i64* %x133, align 8
  %50 = load i64, i64* %i, align 8
  %add36 = add i64 %50, 2
  %51 = load i64*, i64** %c1.addr, align 8
  %arrayidx37 = getelementptr i64, i64* %51, i64 %add36
  %52 = load i64, i64* %arrayidx37, align 8
  store i64 %52, i64* %x2, align 8
  %53 = load i64, i64* %i, align 8
  %add38 = add i64 %53, 3
  %54 = load i64*, i64** %c1.addr, align 8
  %arrayidx39 = getelementptr i64, i64* %54, i64 %add38
  %55 = load i64, i64* %arrayidx39, align 8
  store i64 %55, i64* %x3, align 8
  %56 = load i64, i64* %n_inv, align 8
  %57 = load i64, i64* %umod, align 8
  call void @x64_mulmod2c(i64* %x031, i64* %x133, i64 %56, i64 %57)
  %58 = load i64, i64* %n_inv, align 8
  %59 = load i64, i64* %umod, align 8
  call void @x64_mulmod2c(i64* %x2, i64* %x3, i64 %58, i64 %59)
  %60 = load i64, i64* %x031, align 8
  %61 = load i64, i64* %i, align 8
  %62 = load i64*, i64** %c1.addr, align 8
  %arrayidx40 = getelementptr i64, i64* %62, i64 %61
  store i64 %60, i64* %arrayidx40, align 8
  %63 = load i64, i64* %x133, align 8
  %64 = load i64, i64* %i, align 8
  %add41 = add i64 %64, 1
  %65 = load i64*, i64** %c1.addr, align 8
  %arrayidx42 = getelementptr i64, i64* %65, i64 %add41
  store i64 %63, i64* %arrayidx42, align 8
  %66 = load i64, i64* %x2, align 8
  %67 = load i64, i64* %i, align 8
  %add43 = add i64 %67, 2
  %68 = load i64*, i64** %c1.addr, align 8
  %arrayidx44 = getelementptr i64, i64* %68, i64 %add43
  store i64 %66, i64* %arrayidx44, align 8
  %69 = load i64, i64* %x3, align 8
  %70 = load i64, i64* %i, align 8
  %add45 = add i64 %70, 3
  %71 = load i64*, i64** %c1.addr, align 8
  %arrayidx46 = getelementptr i64, i64* %71, i64 %add45
  store i64 %69, i64* %arrayidx46, align 8
  br label %for.inc.47

for.inc.47:                                       ; preds = %for.body.30
  %72 = load i64, i64* %i, align 8
  %add48 = add i64 %72, 4
  store i64 %add48, i64* %i, align 8
  br label %for.cond.27

for.end.49:                                       ; preds = %for.cond.27
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %for.end.49, %if.then.25, %if.then.11, %if.then.7
  %73 = load i32, i32* %retval
  ret i32 %73
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @std_setmodulus(i32 %modnum, i64* %umod) #1 {
entry:
  %modnum.addr = alloca i32, align 4
  %umod.addr = alloca i64*, align 8
  store i32 %modnum, i32* %modnum.addr, align 4
  store i64* %umod, i64** %umod.addr, align 8
  %0 = load i32, i32* %modnum.addr, align 4
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr [0 x i64], [0 x i64]* @mpd_moduli, i32 0, i64 %idxprom
  %1 = load i64, i64* %arrayidx, align 8
  %2 = load i64*, i64** %umod.addr, align 8
  store i64 %1, i64* %2, align 8
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal i64 @x64_powmod(i64 %base, i64 %exp, i64 %umod) #1 {
entry:
  %base.addr = alloca i64, align 8
  %exp.addr = alloca i64, align 8
  %umod.addr = alloca i64, align 8
  %r = alloca i64, align 8
  store i64 %base, i64* %base.addr, align 8
  store i64 %exp, i64* %exp.addr, align 8
  store i64 %umod, i64* %umod.addr, align 8
  store i64 1, i64* %r, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %0 = load i64, i64* %exp.addr, align 8
  %cmp = icmp ugt i64 %0, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load i64, i64* %exp.addr, align 8
  %and = and i64 %1, 1
  %tobool = icmp ne i64 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %2 = load i64, i64* %r, align 8
  %3 = load i64, i64* %base.addr, align 8
  %4 = load i64, i64* %umod.addr, align 8
  %call = call i64 @x64_mulmod(i64 %2, i64 %3, i64 %4)
  store i64 %call, i64* %r, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body
  %5 = load i64, i64* %base.addr, align 8
  %6 = load i64, i64* %base.addr, align 8
  %7 = load i64, i64* %umod.addr, align 8
  %call1 = call i64 @x64_mulmod(i64 %5, i64 %6, i64 %7)
  store i64 %call1, i64* %base.addr, align 8
  %8 = load i64, i64* %exp.addr, align 8
  %shr = lshr i64 %8, 1
  store i64 %shr, i64* %exp.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %9 = load i64, i64* %r, align 8
  ret i64 %9
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @ispower2(i64 %n) #1 {
entry:
  %n.addr = alloca i64, align 8
  store i64 %n, i64* %n.addr, align 8
  %0 = load i64, i64* %n.addr, align 8
  %cmp = icmp ne i64 %0, 0
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %1 = load i64, i64* %n.addr, align 8
  %2 = load i64, i64* %n.addr, align 8
  %sub = sub i64 %2, 1
  %and = and i64 %1, %sub
  %cmp1 = icmp eq i64 %and, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %3 = phi i1 [ false, %entry ], [ %cmp1, %land.rhs ]
  %land.ext = zext i1 %3 to i32
  ret i32 %land.ext
}

declare hidden i32 @six_step_fnt(i64*, i64, i32) #2

declare hidden i32 @inv_six_step_fnt(i64*, i64, i32) #2

declare hidden i32 @std_fnt(i64*, i64, i32) #2

declare hidden i32 @std_inv_fnt(i64*, i64, i32) #2

declare hidden i32 @four_step_fnt(i64*, i64, i32) #2

declare hidden i32 @inv_four_step_fnt(i64*, i64, i32) #2

; Function Attrs: inlinehint nounwind uwtable
define internal void @x64_mulmod2(i64* %a0, i64 %b0, i64* %a1, i64 %b1, i64 %m) #1 {
entry:
  %a0.addr = alloca i64*, align 8
  %b0.addr = alloca i64, align 8
  %a1.addr = alloca i64*, align 8
  %b1.addr = alloca i64, align 8
  %m.addr = alloca i64, align 8
  store i64* %a0, i64** %a0.addr, align 8
  store i64 %b0, i64* %b0.addr, align 8
  store i64* %a1, i64** %a1.addr, align 8
  store i64 %b1, i64* %b1.addr, align 8
  store i64 %m, i64* %m.addr, align 8
  %0 = load i64*, i64** %a0.addr, align 8
  %1 = load i64, i64* %0, align 8
  %2 = load i64, i64* %b0.addr, align 8
  %3 = load i64, i64* %m.addr, align 8
  %call = call i64 @x64_mulmod(i64 %1, i64 %2, i64 %3)
  %4 = load i64*, i64** %a0.addr, align 8
  store i64 %call, i64* %4, align 8
  %5 = load i64*, i64** %a1.addr, align 8
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* %b1.addr, align 8
  %8 = load i64, i64* %m.addr, align 8
  %call1 = call i64 @x64_mulmod(i64 %6, i64 %7, i64 %8)
  %9 = load i64*, i64** %a1.addr, align 8
  store i64 %call1, i64* %9, align 8
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @x64_mulmod2c(i64* %a, i64* %b, i64 %w, i64 %m) #1 {
entry:
  %a.addr = alloca i64*, align 8
  %b.addr = alloca i64*, align 8
  %w.addr = alloca i64, align 8
  %m.addr = alloca i64, align 8
  store i64* %a, i64** %a.addr, align 8
  store i64* %b, i64** %b.addr, align 8
  store i64 %w, i64* %w.addr, align 8
  store i64 %m, i64* %m.addr, align 8
  %0 = load i64*, i64** %a.addr, align 8
  %1 = load i64, i64* %0, align 8
  %2 = load i64, i64* %w.addr, align 8
  %3 = load i64, i64* %m.addr, align 8
  %call = call i64 @x64_mulmod(i64 %1, i64 %2, i64 %3)
  %4 = load i64*, i64** %a.addr, align 8
  store i64 %call, i64* %4, align 8
  %5 = load i64*, i64** %b.addr, align 8
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* %w.addr, align 8
  %8 = load i64, i64* %m.addr, align 8
  %call1 = call i64 @x64_mulmod(i64 %6, i64 %7, i64 %8)
  %9 = load i64*, i64** %b.addr, align 8
  store i64 %call1, i64* %9, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define hidden i32 @fnt_autoconvolute(i64* %c1, i64 %n, i32 %modnum) #0 {
entry:
  %retval = alloca i32, align 4
  %c1.addr = alloca i64*, align 8
  %n.addr = alloca i64, align 8
  %modnum.addr = alloca i32, align 4
  %fnt = alloca i32 (i64*, i64, i32)*, align 8
  %inv_fnt = alloca i32 (i64*, i64, i32)*, align 8
  %n_inv = alloca i64, align 8
  %umod = alloca i64, align 8
  %i = alloca i64, align 8
  %x0 = alloca i64, align 8
  %x1 = alloca i64, align 8
  %x024 = alloca i64, align 8
  %x126 = alloca i64, align 8
  %x2 = alloca i64, align 8
  %x3 = alloca i64, align 8
  store i64* %c1, i64** %c1.addr, align 8
  store i64 %n, i64* %n.addr, align 8
  store i32 %modnum, i32* %modnum.addr, align 4
  %0 = load i32, i32* %modnum.addr, align 4
  call void @std_setmodulus(i32 %0, i64* %umod)
  %1 = load i64, i64* %n.addr, align 8
  %2 = load i64, i64* %umod, align 8
  %sub = sub i64 %2, 2
  %3 = load i64, i64* %umod, align 8
  %call = call i64 @x64_powmod(i64 %1, i64 %sub, i64 %3)
  store i64 %call, i64* %n_inv, align 8
  %4 = load i64, i64* %n.addr, align 8
  %call1 = call i32 @ispower2(i64 %4)
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.then, label %if.else.3

if.then:                                          ; preds = %entry
  %5 = load i64, i64* %n.addr, align 8
  %cmp = icmp ugt i64 %5, 4096
  br i1 %cmp, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %if.then
  store i32 (i64*, i64, i32)* @six_step_fnt, i32 (i64*, i64, i32)** %fnt, align 8
  store i32 (i64*, i64, i32)* @inv_six_step_fnt, i32 (i64*, i64, i32)** %inv_fnt, align 8
  br label %if.end

if.else:                                          ; preds = %if.then
  store i32 (i64*, i64, i32)* @std_fnt, i32 (i64*, i64, i32)** %fnt, align 8
  store i32 (i64*, i64, i32)* @std_inv_fnt, i32 (i64*, i64, i32)** %inv_fnt, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.2
  br label %if.end.4

if.else.3:                                        ; preds = %entry
  store i32 (i64*, i64, i32)* @four_step_fnt, i32 (i64*, i64, i32)** %fnt, align 8
  store i32 (i64*, i64, i32)* @inv_four_step_fnt, i32 (i64*, i64, i32)** %inv_fnt, align 8
  br label %if.end.4

if.end.4:                                         ; preds = %if.else.3, %if.end
  %6 = load i32 (i64*, i64, i32)*, i32 (i64*, i64, i32)** %fnt, align 8
  %7 = load i64*, i64** %c1.addr, align 8
  %8 = load i64, i64* %n.addr, align 8
  %9 = load i32, i32* %modnum.addr, align 4
  %call5 = call i32 %6(i64* %7, i64 %8, i32 %9)
  %tobool6 = icmp ne i32 %call5, 0
  br i1 %tobool6, label %if.end.8, label %if.then.7

if.then.7:                                        ; preds = %if.end.4
  store i32 0, i32* %retval
  br label %return

if.end.8:                                         ; preds = %if.end.4
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.8
  %10 = load i64, i64* %i, align 8
  %11 = load i64, i64* %n.addr, align 8
  %sub9 = sub i64 %11, 1
  %cmp10 = icmp ult i64 %10, %sub9
  br i1 %cmp10, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %12 = load i64, i64* %i, align 8
  %13 = load i64*, i64** %c1.addr, align 8
  %arrayidx = getelementptr i64, i64* %13, i64 %12
  %14 = load i64, i64* %arrayidx, align 8
  store i64 %14, i64* %x0, align 8
  %15 = load i64, i64* %i, align 8
  %add = add i64 %15, 1
  %16 = load i64*, i64** %c1.addr, align 8
  %arrayidx11 = getelementptr i64, i64* %16, i64 %add
  %17 = load i64, i64* %arrayidx11, align 8
  store i64 %17, i64* %x1, align 8
  %18 = load i64, i64* %x0, align 8
  %19 = load i64, i64* %x1, align 8
  %20 = load i64, i64* %umod, align 8
  call void @x64_mulmod2(i64* %x0, i64 %18, i64* %x1, i64 %19, i64 %20)
  %21 = load i64, i64* %x0, align 8
  %22 = load i64, i64* %i, align 8
  %23 = load i64*, i64** %c1.addr, align 8
  %arrayidx12 = getelementptr i64, i64* %23, i64 %22
  store i64 %21, i64* %arrayidx12, align 8
  %24 = load i64, i64* %x1, align 8
  %25 = load i64, i64* %i, align 8
  %add13 = add i64 %25, 1
  %26 = load i64*, i64** %c1.addr, align 8
  %arrayidx14 = getelementptr i64, i64* %26, i64 %add13
  store i64 %24, i64* %arrayidx14, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %27 = load i64, i64* %i, align 8
  %add15 = add i64 %27, 2
  store i64 %add15, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %28 = load i32 (i64*, i64, i32)*, i32 (i64*, i64, i32)** %inv_fnt, align 8
  %29 = load i64*, i64** %c1.addr, align 8
  %30 = load i64, i64* %n.addr, align 8
  %31 = load i32, i32* %modnum.addr, align 4
  %call16 = call i32 %28(i64* %29, i64 %30, i32 %31)
  %tobool17 = icmp ne i32 %call16, 0
  br i1 %tobool17, label %if.end.19, label %if.then.18

if.then.18:                                       ; preds = %for.end
  store i32 0, i32* %retval
  br label %return

if.end.19:                                        ; preds = %for.end
  store i64 0, i64* %i, align 8
  br label %for.cond.20

for.cond.20:                                      ; preds = %for.inc.40, %if.end.19
  %32 = load i64, i64* %i, align 8
  %33 = load i64, i64* %n.addr, align 8
  %sub21 = sub i64 %33, 3
  %cmp22 = icmp ult i64 %32, %sub21
  br i1 %cmp22, label %for.body.23, label %for.end.42

for.body.23:                                      ; preds = %for.cond.20
  %34 = load i64, i64* %i, align 8
  %35 = load i64*, i64** %c1.addr, align 8
  %arrayidx25 = getelementptr i64, i64* %35, i64 %34
  %36 = load i64, i64* %arrayidx25, align 8
  store i64 %36, i64* %x024, align 8
  %37 = load i64, i64* %i, align 8
  %add27 = add i64 %37, 1
  %38 = load i64*, i64** %c1.addr, align 8
  %arrayidx28 = getelementptr i64, i64* %38, i64 %add27
  %39 = load i64, i64* %arrayidx28, align 8
  store i64 %39, i64* %x126, align 8
  %40 = load i64, i64* %i, align 8
  %add29 = add i64 %40, 2
  %41 = load i64*, i64** %c1.addr, align 8
  %arrayidx30 = getelementptr i64, i64* %41, i64 %add29
  %42 = load i64, i64* %arrayidx30, align 8
  store i64 %42, i64* %x2, align 8
  %43 = load i64, i64* %i, align 8
  %add31 = add i64 %43, 3
  %44 = load i64*, i64** %c1.addr, align 8
  %arrayidx32 = getelementptr i64, i64* %44, i64 %add31
  %45 = load i64, i64* %arrayidx32, align 8
  store i64 %45, i64* %x3, align 8
  %46 = load i64, i64* %n_inv, align 8
  %47 = load i64, i64* %umod, align 8
  call void @x64_mulmod2c(i64* %x024, i64* %x126, i64 %46, i64 %47)
  %48 = load i64, i64* %n_inv, align 8
  %49 = load i64, i64* %umod, align 8
  call void @x64_mulmod2c(i64* %x2, i64* %x3, i64 %48, i64 %49)
  %50 = load i64, i64* %x024, align 8
  %51 = load i64, i64* %i, align 8
  %52 = load i64*, i64** %c1.addr, align 8
  %arrayidx33 = getelementptr i64, i64* %52, i64 %51
  store i64 %50, i64* %arrayidx33, align 8
  %53 = load i64, i64* %x126, align 8
  %54 = load i64, i64* %i, align 8
  %add34 = add i64 %54, 1
  %55 = load i64*, i64** %c1.addr, align 8
  %arrayidx35 = getelementptr i64, i64* %55, i64 %add34
  store i64 %53, i64* %arrayidx35, align 8
  %56 = load i64, i64* %x2, align 8
  %57 = load i64, i64* %i, align 8
  %add36 = add i64 %57, 2
  %58 = load i64*, i64** %c1.addr, align 8
  %arrayidx37 = getelementptr i64, i64* %58, i64 %add36
  store i64 %56, i64* %arrayidx37, align 8
  %59 = load i64, i64* %x3, align 8
  %60 = load i64, i64* %i, align 8
  %add38 = add i64 %60, 3
  %61 = load i64*, i64** %c1.addr, align 8
  %arrayidx39 = getelementptr i64, i64* %61, i64 %add38
  store i64 %59, i64* %arrayidx39, align 8
  br label %for.inc.40

for.inc.40:                                       ; preds = %for.body.23
  %62 = load i64, i64* %i, align 8
  %add41 = add i64 %62, 4
  store i64 %add41, i64* %i, align 8
  br label %for.cond.20

for.end.42:                                       ; preds = %for.cond.20
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %for.end.42, %if.then.18, %if.then.7
  %63 = load i32, i32* %retval
  ret i32 %63
}

; Function Attrs: inlinehint nounwind uwtable
define internal i64 @x64_mulmod(i64 %a, i64 %b, i64 %m) #1 {
entry:
  %retval = alloca i64, align 8
  %a.addr = alloca i64, align 8
  %b.addr = alloca i64, align 8
  %m.addr = alloca i64, align 8
  %hi = alloca i64, align 8
  %lo = alloca i64, align 8
  %x = alloca i64, align 8
  %y = alloca i64, align 8
  store i64 %a, i64* %a.addr, align 8
  store i64 %b, i64* %b.addr, align 8
  store i64 %m, i64* %m.addr, align 8
  %0 = load i64, i64* %a.addr, align 8
  %1 = load i64, i64* %b.addr, align 8
  call void @_mpd_mul_words(i64* %hi, i64* %lo, i64 %0, i64 %1)
  %2 = load i64, i64* %m.addr, align 8
  %and = and i64 %2, 4294967296
  %tobool = icmp ne i64 %and, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load i64, i64* %hi, align 8
  store i64 %3, i64* %y, align 8
  store i64 %3, i64* %x, align 8
  %4 = load i64, i64* %hi, align 8
  %shr = lshr i64 %4, 32
  store i64 %shr, i64* %hi, align 8
  %5 = load i64, i64* %lo, align 8
  %6 = load i64, i64* %x, align 8
  %sub = sub i64 %5, %6
  store i64 %sub, i64* %x, align 8
  %7 = load i64, i64* %x, align 8
  %8 = load i64, i64* %lo, align 8
  %cmp = icmp ugt i64 %7, %8
  br i1 %cmp, label %if.then.1, label %if.end

if.then.1:                                        ; preds = %if.then
  %9 = load i64, i64* %hi, align 8
  %dec = add i64 %9, -1
  store i64 %dec, i64* %hi, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.1, %if.then
  %10 = load i64, i64* %y, align 8
  %shl = shl i64 %10, 32
  store i64 %shl, i64* %y, align 8
  %11 = load i64, i64* %y, align 8
  %12 = load i64, i64* %x, align 8
  %add = add i64 %11, %12
  store i64 %add, i64* %lo, align 8
  %13 = load i64, i64* %lo, align 8
  %14 = load i64, i64* %y, align 8
  %cmp2 = icmp ult i64 %13, %14
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  %15 = load i64, i64* %hi, align 8
  %inc = add i64 %15, 1
  store i64 %inc, i64* %hi, align 8
  br label %if.end.4

if.end.4:                                         ; preds = %if.then.3, %if.end
  %16 = load i64, i64* %hi, align 8
  store i64 %16, i64* %y, align 8
  store i64 %16, i64* %x, align 8
  %17 = load i64, i64* %hi, align 8
  %shr5 = lshr i64 %17, 32
  store i64 %shr5, i64* %hi, align 8
  %18 = load i64, i64* %lo, align 8
  %19 = load i64, i64* %x, align 8
  %sub6 = sub i64 %18, %19
  store i64 %sub6, i64* %x, align 8
  %20 = load i64, i64* %x, align 8
  %21 = load i64, i64* %lo, align 8
  %cmp7 = icmp ugt i64 %20, %21
  br i1 %cmp7, label %if.then.8, label %if.end.10

if.then.8:                                        ; preds = %if.end.4
  %22 = load i64, i64* %hi, align 8
  %dec9 = add i64 %22, -1
  store i64 %dec9, i64* %hi, align 8
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.8, %if.end.4
  %23 = load i64, i64* %y, align 8
  %shl11 = shl i64 %23, 32
  store i64 %shl11, i64* %y, align 8
  %24 = load i64, i64* %y, align 8
  %25 = load i64, i64* %x, align 8
  %add12 = add i64 %24, %25
  store i64 %add12, i64* %lo, align 8
  %26 = load i64, i64* %lo, align 8
  %27 = load i64, i64* %y, align 8
  %cmp13 = icmp ult i64 %26, %27
  br i1 %cmp13, label %if.then.14, label %if.end.16

if.then.14:                                       ; preds = %if.end.10
  %28 = load i64, i64* %hi, align 8
  %inc15 = add i64 %28, 1
  store i64 %inc15, i64* %hi, align 8
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.14, %if.end.10
  %29 = load i64, i64* %hi, align 8
  %tobool17 = icmp ne i64 %29, 0
  br i1 %tobool17, label %cond.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.16
  %30 = load i64, i64* %lo, align 8
  %31 = load i64, i64* %m.addr, align 8
  %cmp18 = icmp uge i64 %30, %31
  br i1 %cmp18, label %cond.true, label %cond.false

cond.true:                                        ; preds = %lor.lhs.false, %if.end.16
  %32 = load i64, i64* %lo, align 8
  %33 = load i64, i64* %m.addr, align 8
  %sub19 = sub i64 %32, %33
  br label %cond.end

cond.false:                                       ; preds = %lor.lhs.false
  %34 = load i64, i64* %lo, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %sub19, %cond.true ], [ %34, %cond.false ]
  store i64 %cond, i64* %retval
  br label %return

if.else:                                          ; preds = %entry
  %35 = load i64, i64* %m.addr, align 8
  %and20 = and i64 %35, 17179869184
  %tobool21 = icmp ne i64 %and20, 0
  br i1 %tobool21, label %if.then.22, label %if.else.67

if.then.22:                                       ; preds = %if.else
  %36 = load i64, i64* %hi, align 8
  store i64 %36, i64* %y, align 8
  store i64 %36, i64* %x, align 8
  %37 = load i64, i64* %hi, align 8
  %shr23 = lshr i64 %37, 30
  store i64 %shr23, i64* %hi, align 8
  %38 = load i64, i64* %lo, align 8
  %39 = load i64, i64* %x, align 8
  %sub24 = sub i64 %38, %39
  store i64 %sub24, i64* %x, align 8
  %40 = load i64, i64* %x, align 8
  %41 = load i64, i64* %lo, align 8
  %cmp25 = icmp ugt i64 %40, %41
  br i1 %cmp25, label %if.then.26, label %if.end.28

if.then.26:                                       ; preds = %if.then.22
  %42 = load i64, i64* %hi, align 8
  %dec27 = add i64 %42, -1
  store i64 %dec27, i64* %hi, align 8
  br label %if.end.28

if.end.28:                                        ; preds = %if.then.26, %if.then.22
  %43 = load i64, i64* %y, align 8
  %shl29 = shl i64 %43, 34
  store i64 %shl29, i64* %y, align 8
  %44 = load i64, i64* %y, align 8
  %45 = load i64, i64* %x, align 8
  %add30 = add i64 %44, %45
  store i64 %add30, i64* %lo, align 8
  %46 = load i64, i64* %lo, align 8
  %47 = load i64, i64* %y, align 8
  %cmp31 = icmp ult i64 %46, %47
  br i1 %cmp31, label %if.then.32, label %if.end.34

if.then.32:                                       ; preds = %if.end.28
  %48 = load i64, i64* %hi, align 8
  %inc33 = add i64 %48, 1
  store i64 %inc33, i64* %hi, align 8
  br label %if.end.34

if.end.34:                                        ; preds = %if.then.32, %if.end.28
  %49 = load i64, i64* %hi, align 8
  store i64 %49, i64* %y, align 8
  store i64 %49, i64* %x, align 8
  %50 = load i64, i64* %hi, align 8
  %shr35 = lshr i64 %50, 30
  store i64 %shr35, i64* %hi, align 8
  %51 = load i64, i64* %lo, align 8
  %52 = load i64, i64* %x, align 8
  %sub36 = sub i64 %51, %52
  store i64 %sub36, i64* %x, align 8
  %53 = load i64, i64* %x, align 8
  %54 = load i64, i64* %lo, align 8
  %cmp37 = icmp ugt i64 %53, %54
  br i1 %cmp37, label %if.then.38, label %if.end.40

if.then.38:                                       ; preds = %if.end.34
  %55 = load i64, i64* %hi, align 8
  %dec39 = add i64 %55, -1
  store i64 %dec39, i64* %hi, align 8
  br label %if.end.40

if.end.40:                                        ; preds = %if.then.38, %if.end.34
  %56 = load i64, i64* %y, align 8
  %shl41 = shl i64 %56, 34
  store i64 %shl41, i64* %y, align 8
  %57 = load i64, i64* %y, align 8
  %58 = load i64, i64* %x, align 8
  %add42 = add i64 %57, %58
  store i64 %add42, i64* %lo, align 8
  %59 = load i64, i64* %lo, align 8
  %60 = load i64, i64* %y, align 8
  %cmp43 = icmp ult i64 %59, %60
  br i1 %cmp43, label %if.then.44, label %if.end.46

if.then.44:                                       ; preds = %if.end.40
  %61 = load i64, i64* %hi, align 8
  %inc45 = add i64 %61, 1
  store i64 %inc45, i64* %hi, align 8
  br label %if.end.46

if.end.46:                                        ; preds = %if.then.44, %if.end.40
  %62 = load i64, i64* %hi, align 8
  store i64 %62, i64* %y, align 8
  store i64 %62, i64* %x, align 8
  %63 = load i64, i64* %hi, align 8
  %shr47 = lshr i64 %63, 30
  store i64 %shr47, i64* %hi, align 8
  %64 = load i64, i64* %lo, align 8
  %65 = load i64, i64* %x, align 8
  %sub48 = sub i64 %64, %65
  store i64 %sub48, i64* %x, align 8
  %66 = load i64, i64* %x, align 8
  %67 = load i64, i64* %lo, align 8
  %cmp49 = icmp ugt i64 %66, %67
  br i1 %cmp49, label %if.then.50, label %if.end.52

if.then.50:                                       ; preds = %if.end.46
  %68 = load i64, i64* %hi, align 8
  %dec51 = add i64 %68, -1
  store i64 %dec51, i64* %hi, align 8
  br label %if.end.52

if.end.52:                                        ; preds = %if.then.50, %if.end.46
  %69 = load i64, i64* %y, align 8
  %shl53 = shl i64 %69, 34
  store i64 %shl53, i64* %y, align 8
  %70 = load i64, i64* %y, align 8
  %71 = load i64, i64* %x, align 8
  %add54 = add i64 %70, %71
  store i64 %add54, i64* %lo, align 8
  %72 = load i64, i64* %lo, align 8
  %73 = load i64, i64* %y, align 8
  %cmp55 = icmp ult i64 %72, %73
  br i1 %cmp55, label %if.then.56, label %if.end.58

if.then.56:                                       ; preds = %if.end.52
  %74 = load i64, i64* %hi, align 8
  %inc57 = add i64 %74, 1
  store i64 %inc57, i64* %hi, align 8
  br label %if.end.58

if.end.58:                                        ; preds = %if.then.56, %if.end.52
  %75 = load i64, i64* %hi, align 8
  %tobool59 = icmp ne i64 %75, 0
  br i1 %tobool59, label %cond.true.62, label %lor.lhs.false.60

lor.lhs.false.60:                                 ; preds = %if.end.58
  %76 = load i64, i64* %lo, align 8
  %77 = load i64, i64* %m.addr, align 8
  %cmp61 = icmp uge i64 %76, %77
  br i1 %cmp61, label %cond.true.62, label %cond.false.64

cond.true.62:                                     ; preds = %lor.lhs.false.60, %if.end.58
  %78 = load i64, i64* %lo, align 8
  %79 = load i64, i64* %m.addr, align 8
  %sub63 = sub i64 %78, %79
  br label %cond.end.65

cond.false.64:                                    ; preds = %lor.lhs.false.60
  %80 = load i64, i64* %lo, align 8
  br label %cond.end.65

cond.end.65:                                      ; preds = %cond.false.64, %cond.true.62
  %cond66 = phi i64 [ %sub63, %cond.true.62 ], [ %80, %cond.false.64 ]
  store i64 %cond66, i64* %retval
  br label %return

if.else.67:                                       ; preds = %if.else
  %81 = load i64, i64* %hi, align 8
  store i64 %81, i64* %y, align 8
  store i64 %81, i64* %x, align 8
  %82 = load i64, i64* %hi, align 8
  %shr68 = lshr i64 %82, 24
  store i64 %shr68, i64* %hi, align 8
  %83 = load i64, i64* %lo, align 8
  %84 = load i64, i64* %x, align 8
  %sub69 = sub i64 %83, %84
  store i64 %sub69, i64* %x, align 8
  %85 = load i64, i64* %x, align 8
  %86 = load i64, i64* %lo, align 8
  %cmp70 = icmp ugt i64 %85, %86
  br i1 %cmp70, label %if.then.71, label %if.end.73

if.then.71:                                       ; preds = %if.else.67
  %87 = load i64, i64* %hi, align 8
  %dec72 = add i64 %87, -1
  store i64 %dec72, i64* %hi, align 8
  br label %if.end.73

if.end.73:                                        ; preds = %if.then.71, %if.else.67
  %88 = load i64, i64* %y, align 8
  %shl74 = shl i64 %88, 40
  store i64 %shl74, i64* %y, align 8
  %89 = load i64, i64* %y, align 8
  %90 = load i64, i64* %x, align 8
  %add75 = add i64 %89, %90
  store i64 %add75, i64* %lo, align 8
  %91 = load i64, i64* %lo, align 8
  %92 = load i64, i64* %y, align 8
  %cmp76 = icmp ult i64 %91, %92
  br i1 %cmp76, label %if.then.77, label %if.end.79

if.then.77:                                       ; preds = %if.end.73
  %93 = load i64, i64* %hi, align 8
  %inc78 = add i64 %93, 1
  store i64 %inc78, i64* %hi, align 8
  br label %if.end.79

if.end.79:                                        ; preds = %if.then.77, %if.end.73
  %94 = load i64, i64* %hi, align 8
  store i64 %94, i64* %y, align 8
  store i64 %94, i64* %x, align 8
  %95 = load i64, i64* %hi, align 8
  %shr80 = lshr i64 %95, 24
  store i64 %shr80, i64* %hi, align 8
  %96 = load i64, i64* %lo, align 8
  %97 = load i64, i64* %x, align 8
  %sub81 = sub i64 %96, %97
  store i64 %sub81, i64* %x, align 8
  %98 = load i64, i64* %x, align 8
  %99 = load i64, i64* %lo, align 8
  %cmp82 = icmp ugt i64 %98, %99
  br i1 %cmp82, label %if.then.83, label %if.end.85

if.then.83:                                       ; preds = %if.end.79
  %100 = load i64, i64* %hi, align 8
  %dec84 = add i64 %100, -1
  store i64 %dec84, i64* %hi, align 8
  br label %if.end.85

if.end.85:                                        ; preds = %if.then.83, %if.end.79
  %101 = load i64, i64* %y, align 8
  %shl86 = shl i64 %101, 40
  store i64 %shl86, i64* %y, align 8
  %102 = load i64, i64* %y, align 8
  %103 = load i64, i64* %x, align 8
  %add87 = add i64 %102, %103
  store i64 %add87, i64* %lo, align 8
  %104 = load i64, i64* %lo, align 8
  %105 = load i64, i64* %y, align 8
  %cmp88 = icmp ult i64 %104, %105
  br i1 %cmp88, label %if.then.89, label %if.end.91

if.then.89:                                       ; preds = %if.end.85
  %106 = load i64, i64* %hi, align 8
  %inc90 = add i64 %106, 1
  store i64 %inc90, i64* %hi, align 8
  br label %if.end.91

if.end.91:                                        ; preds = %if.then.89, %if.end.85
  %107 = load i64, i64* %hi, align 8
  store i64 %107, i64* %y, align 8
  store i64 %107, i64* %x, align 8
  %108 = load i64, i64* %hi, align 8
  %shr92 = lshr i64 %108, 24
  store i64 %shr92, i64* %hi, align 8
  %109 = load i64, i64* %lo, align 8
  %110 = load i64, i64* %x, align 8
  %sub93 = sub i64 %109, %110
  store i64 %sub93, i64* %x, align 8
  %111 = load i64, i64* %x, align 8
  %112 = load i64, i64* %lo, align 8
  %cmp94 = icmp ugt i64 %111, %112
  br i1 %cmp94, label %if.then.95, label %if.end.97

if.then.95:                                       ; preds = %if.end.91
  %113 = load i64, i64* %hi, align 8
  %dec96 = add i64 %113, -1
  store i64 %dec96, i64* %hi, align 8
  br label %if.end.97

if.end.97:                                        ; preds = %if.then.95, %if.end.91
  %114 = load i64, i64* %y, align 8
  %shl98 = shl i64 %114, 40
  store i64 %shl98, i64* %y, align 8
  %115 = load i64, i64* %y, align 8
  %116 = load i64, i64* %x, align 8
  %add99 = add i64 %115, %116
  store i64 %add99, i64* %lo, align 8
  %117 = load i64, i64* %lo, align 8
  %118 = load i64, i64* %y, align 8
  %cmp100 = icmp ult i64 %117, %118
  br i1 %cmp100, label %if.then.101, label %if.end.103

if.then.101:                                      ; preds = %if.end.97
  %119 = load i64, i64* %hi, align 8
  %inc102 = add i64 %119, 1
  store i64 %inc102, i64* %hi, align 8
  br label %if.end.103

if.end.103:                                       ; preds = %if.then.101, %if.end.97
  %120 = load i64, i64* %hi, align 8
  %tobool104 = icmp ne i64 %120, 0
  br i1 %tobool104, label %cond.true.107, label %lor.lhs.false.105

lor.lhs.false.105:                                ; preds = %if.end.103
  %121 = load i64, i64* %lo, align 8
  %122 = load i64, i64* %m.addr, align 8
  %cmp106 = icmp uge i64 %121, %122
  br i1 %cmp106, label %cond.true.107, label %cond.false.109

cond.true.107:                                    ; preds = %lor.lhs.false.105, %if.end.103
  %123 = load i64, i64* %lo, align 8
  %124 = load i64, i64* %m.addr, align 8
  %sub108 = sub i64 %123, %124
  br label %cond.end.110

cond.false.109:                                   ; preds = %lor.lhs.false.105
  %125 = load i64, i64* %lo, align 8
  br label %cond.end.110

cond.end.110:                                     ; preds = %cond.false.109, %cond.true.107
  %cond111 = phi i64 [ %sub108, %cond.true.107 ], [ %125, %cond.false.109 ]
  store i64 %cond111, i64* %retval
  br label %return

return:                                           ; preds = %cond.end.110, %cond.end.65, %cond.end
  %126 = load i64, i64* %retval
  ret i64 %126
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @_mpd_mul_words(i64* %hi, i64* %lo, i64 %a, i64 %b) #1 {
entry:
  %hi.addr = alloca i64*, align 8
  %lo.addr = alloca i64*, align 8
  %a.addr = alloca i64, align 8
  %b.addr = alloca i64, align 8
  %h = alloca i64, align 8
  %l = alloca i64, align 8
  store i64* %hi, i64** %hi.addr, align 8
  store i64* %lo, i64** %lo.addr, align 8
  store i64 %a, i64* %a.addr, align 8
  store i64 %b, i64* %b.addr, align 8
  %0 = load i64, i64* %a.addr, align 8
  %1 = load i64, i64* %b.addr, align 8
  %2 = call { i64, i64 } asm "mulq $3\0A\09", "={dx},={ax},%{ax},rm,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %0, i64 %1) #3, !srcloc !2
  %asmresult = extractvalue { i64, i64 } %2, 0
  %asmresult1 = extractvalue { i64, i64 } %2, 1
  store i64 %asmresult, i64* %h, align 8
  store i64 %asmresult1, i64* %l, align 8
  %3 = load i64, i64* %h, align 8
  %4 = load i64*, i64** %hi.addr, align 8
  store i64 %3, i64* %4, align 8
  %5 = load i64, i64* %l, align 8
  %6 = load i64*, i64** %lo.addr, align 8
  store i64 %5, i64* %6, align 8
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!2 = !{i32 92131, i32 92141}