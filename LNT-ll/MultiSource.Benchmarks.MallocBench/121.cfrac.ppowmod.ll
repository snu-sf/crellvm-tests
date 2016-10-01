; ModuleID = './MultiSource.Benchmarks.MallocBench/121.cfrac.ppowmod.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@pone = external global i16*, align 8

; Function Attrs: nounwind uwtable
define i16* @ppowmod(i16* %u, i16* %v, i16* %m) #0 {
entry:
  %u.addr = alloca i16*, align 8
  %v.addr = alloca i16*, align 8
  %m.addr = alloca i16*, align 8
  %j = alloca i16*, align 8
  %i = alloca i16*, align 8
  %n = alloca i16*, align 8
  store i16* %u, i16** %u.addr, align 8
  store i16* %v, i16** %v.addr, align 8
  store i16* %m, i16** %m.addr, align 8
  store i16* null, i16** %j, align 8
  store i16* null, i16** %i, align 8
  store i16* null, i16** %n, align 8
  %0 = load i16*, i16** %m.addr, align 8
  %cmp = icmp ne i16* %0, null
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %1 = load i16*, i16** %m.addr, align 8
  %2 = load i16, i16* %1, align 2
  %inc = add i16 %2, 1
  store i16 %inc, i16* %1, align 2
  %conv = zext i16 %2 to i32
  %tobool = icmp ne i32 %conv, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %3 = phi i1 [ false, %entry ], [ %tobool, %land.rhs ]
  %land.ext = zext i1 %3 to i32
  %4 = load i16*, i16** %m.addr, align 8
  %5 = load i16*, i16** %u.addr, align 8
  %cmp1 = icmp ne i16* %5, null
  br i1 %cmp1, label %land.rhs.3, label %land.end.7

land.rhs.3:                                       ; preds = %land.end
  %6 = load i16*, i16** %u.addr, align 8
  %7 = load i16, i16* %6, align 2
  %inc4 = add i16 %7, 1
  store i16 %inc4, i16* %6, align 2
  %conv5 = zext i16 %7 to i32
  %tobool6 = icmp ne i32 %conv5, 0
  br label %land.end.7

land.end.7:                                       ; preds = %land.rhs.3, %land.end
  %8 = phi i1 [ false, %land.end ], [ %tobool6, %land.rhs.3 ]
  %land.ext8 = zext i1 %8 to i32
  %9 = load i16*, i16** %u.addr, align 8
  %call = call i16* @psetq(i16** %i, i16* %9)
  %10 = load i16*, i16** %v.addr, align 8
  %cmp9 = icmp ne i16* %10, null
  br i1 %cmp9, label %land.rhs.11, label %land.end.15

land.rhs.11:                                      ; preds = %land.end.7
  %11 = load i16*, i16** %v.addr, align 8
  %12 = load i16, i16* %11, align 2
  %inc12 = add i16 %12, 1
  store i16 %inc12, i16* %11, align 2
  %conv13 = zext i16 %12 to i32
  %tobool14 = icmp ne i32 %conv13, 0
  br label %land.end.15

land.end.15:                                      ; preds = %land.rhs.11, %land.end.7
  %13 = phi i1 [ false, %land.end.7 ], [ %tobool14, %land.rhs.11 ]
  %land.ext16 = zext i1 %13 to i32
  %14 = load i16*, i16** %v.addr, align 8
  %call17 = call i16* @psetq(i16** %n, i16* %14)
  %15 = load i16*, i16** @pone, align 8
  %call18 = call i16* @psetq(i16** %j, i16* %15)
  br label %do.body

do.body:                                          ; preds = %do.cond, %land.end.15
  %16 = load i16*, i16** %n, align 8
  %call19 = call i32 @podd(i16* %16)
  %tobool20 = icmp ne i32 %call19, 0
  br i1 %tobool20, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  %17 = load i16*, i16** %i, align 8
  %18 = load i16*, i16** %j, align 8
  %call21 = call i16* @pmul(i16* %17, i16* %18)
  %19 = load i16*, i16** %m.addr, align 8
  %call22 = call i16* @pdivmod(i16* %call21, i16* %19, i16** null, i16** inttoptr (i64 -1 to i16**))
  %call23 = call i16* @psetq(i16** %j, i16* %call22)
  br label %if.end

if.end:                                           ; preds = %if.then, %do.body
  %20 = load i16*, i16** %n, align 8
  %call24 = call i16* @phalf(i16* %20)
  %call25 = call i16* @psetq(i16** %n, i16* %call24)
  %21 = load i16*, i16** %n, align 8
  %call26 = call i32 @pcmpz(i16* %21)
  %cmp27 = icmp eq i32 %call26, 0
  br i1 %cmp27, label %if.then.29, label %if.end.30

if.then.29:                                       ; preds = %if.end
  br label %do.end

if.end.30:                                        ; preds = %if.end
  %22 = load i16*, i16** %i, align 8
  %23 = load i16*, i16** %i, align 8
  %call31 = call i16* @pmul(i16* %22, i16* %23)
  %24 = load i16*, i16** %m.addr, align 8
  %call32 = call i16* @pdivmod(i16* %call31, i16* %24, i16** null, i16** inttoptr (i64 -1 to i16**))
  %call33 = call i16* @psetq(i16** %i, i16* %call32)
  br label %do.cond

do.cond:                                          ; preds = %if.end.30
  br i1 true, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond, %if.then.29
  %25 = load i16*, i16** %i, align 8
  %cmp34 = icmp ne i16* %25, null
  br i1 %cmp34, label %land.lhs.true, label %land.end.42

land.lhs.true:                                    ; preds = %do.end
  %26 = load i16*, i16** %i, align 8
  %27 = load i16, i16* %26, align 2
  %dec = add i16 %27, -1
  store i16 %dec, i16* %26, align 2
  %conv36 = zext i16 %dec to i32
  %cmp37 = icmp eq i32 %conv36, 0
  br i1 %cmp37, label %land.rhs.39, label %land.end.42

land.rhs.39:                                      ; preds = %land.lhs.true
  %28 = load i16*, i16** %i, align 8
  %call40 = call i32 (i16*, ...) bitcast (i32 (...)* @pfree to i32 (i16*, ...)*)(i16* %28)
  %tobool41 = icmp ne i32 %call40, 0
  br label %land.end.42

land.end.42:                                      ; preds = %land.rhs.39, %land.lhs.true, %do.end
  %29 = phi i1 [ false, %land.lhs.true ], [ false, %do.end ], [ %tobool41, %land.rhs.39 ]
  %land.ext43 = zext i1 %29 to i32
  %30 = load i16*, i16** %n, align 8
  %cmp44 = icmp ne i16* %30, null
  br i1 %cmp44, label %land.lhs.true.46, label %land.end.54

land.lhs.true.46:                                 ; preds = %land.end.42
  %31 = load i16*, i16** %n, align 8
  %32 = load i16, i16* %31, align 2
  %dec47 = add i16 %32, -1
  store i16 %dec47, i16* %31, align 2
  %conv48 = zext i16 %dec47 to i32
  %cmp49 = icmp eq i32 %conv48, 0
  br i1 %cmp49, label %land.rhs.51, label %land.end.54

land.rhs.51:                                      ; preds = %land.lhs.true.46
  %33 = load i16*, i16** %n, align 8
  %call52 = call i32 (i16*, ...) bitcast (i32 (...)* @pfree to i32 (i16*, ...)*)(i16* %33)
  %tobool53 = icmp ne i32 %call52, 0
  br label %land.end.54

land.end.54:                                      ; preds = %land.rhs.51, %land.lhs.true.46, %land.end.42
  %34 = phi i1 [ false, %land.lhs.true.46 ], [ false, %land.end.42 ], [ %tobool53, %land.rhs.51 ]
  %land.ext55 = zext i1 %34 to i32
  %35 = load i16*, i16** %u.addr, align 8
  %cmp56 = icmp ne i16* %35, null
  br i1 %cmp56, label %land.lhs.true.58, label %land.end.66

land.lhs.true.58:                                 ; preds = %land.end.54
  %36 = load i16*, i16** %u.addr, align 8
  %37 = load i16, i16* %36, align 2
  %dec59 = add i16 %37, -1
  store i16 %dec59, i16* %36, align 2
  %conv60 = zext i16 %dec59 to i32
  %cmp61 = icmp eq i32 %conv60, 0
  br i1 %cmp61, label %land.rhs.63, label %land.end.66

land.rhs.63:                                      ; preds = %land.lhs.true.58
  %38 = load i16*, i16** %u.addr, align 8
  %call64 = call i32 (i16*, ...) bitcast (i32 (...)* @pfree to i32 (i16*, ...)*)(i16* %38)
  %tobool65 = icmp ne i32 %call64, 0
  br label %land.end.66

land.end.66:                                      ; preds = %land.rhs.63, %land.lhs.true.58, %land.end.54
  %39 = phi i1 [ false, %land.lhs.true.58 ], [ false, %land.end.54 ], [ %tobool65, %land.rhs.63 ]
  %land.ext67 = zext i1 %39 to i32
  %40 = load i16*, i16** %v.addr, align 8
  %cmp68 = icmp ne i16* %40, null
  br i1 %cmp68, label %land.lhs.true.70, label %land.end.78

land.lhs.true.70:                                 ; preds = %land.end.66
  %41 = load i16*, i16** %v.addr, align 8
  %42 = load i16, i16* %41, align 2
  %dec71 = add i16 %42, -1
  store i16 %dec71, i16* %41, align 2
  %conv72 = zext i16 %dec71 to i32
  %cmp73 = icmp eq i32 %conv72, 0
  br i1 %cmp73, label %land.rhs.75, label %land.end.78

land.rhs.75:                                      ; preds = %land.lhs.true.70
  %43 = load i16*, i16** %v.addr, align 8
  %call76 = call i32 (i16*, ...) bitcast (i32 (...)* @pfree to i32 (i16*, ...)*)(i16* %43)
  %tobool77 = icmp ne i32 %call76, 0
  br label %land.end.78

land.end.78:                                      ; preds = %land.rhs.75, %land.lhs.true.70, %land.end.66
  %44 = phi i1 [ false, %land.lhs.true.70 ], [ false, %land.end.66 ], [ %tobool77, %land.rhs.75 ]
  %land.ext79 = zext i1 %44 to i32
  %45 = load i16*, i16** %m.addr, align 8
  %cmp80 = icmp ne i16* %45, null
  br i1 %cmp80, label %land.lhs.true.82, label %land.end.90

land.lhs.true.82:                                 ; preds = %land.end.78
  %46 = load i16*, i16** %m.addr, align 8
  %47 = load i16, i16* %46, align 2
  %dec83 = add i16 %47, -1
  store i16 %dec83, i16* %46, align 2
  %conv84 = zext i16 %dec83 to i32
  %cmp85 = icmp eq i32 %conv84, 0
  br i1 %cmp85, label %land.rhs.87, label %land.end.90

land.rhs.87:                                      ; preds = %land.lhs.true.82
  %48 = load i16*, i16** %m.addr, align 8
  %call88 = call i32 (i16*, ...) bitcast (i32 (...)* @pfree to i32 (i16*, ...)*)(i16* %48)
  %tobool89 = icmp ne i32 %call88, 0
  br label %land.end.90

land.end.90:                                      ; preds = %land.rhs.87, %land.lhs.true.82, %land.end.78
  %49 = phi i1 [ false, %land.lhs.true.82 ], [ false, %land.end.78 ], [ %tobool89, %land.rhs.87 ]
  %land.ext91 = zext i1 %49 to i32
  %50 = load i16*, i16** %j, align 8
  %call92 = call i16* @presult(i16* %50)
  ret i16* %call92
}

declare i16* @psetq(i16**, i16*) #1

declare i32 @podd(i16*) #1

declare i16* @pdivmod(i16*, i16*, i16**, i16**) #1

declare i16* @pmul(i16*, i16*) #1

declare i16* @phalf(i16*) #1

declare i32 @pcmpz(i16*) #1

declare i32 @pfree(...) #1

declare i16* @presult(i16*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
