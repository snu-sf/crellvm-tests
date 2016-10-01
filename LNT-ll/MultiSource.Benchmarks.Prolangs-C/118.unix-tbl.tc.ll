; ModuleID = './MultiSource.Benchmarks.Prolangs-C/118.unix-tbl.tc.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.colstr = type { i8*, i8* }

@F2 = external global i32, align 4
@F1 = external global i32, align 4
@nlin = external global i32, align 4
@instead = external global [0 x i8*], align 8
@fullbot = external global [0 x i32], align 4
@ncol = external global i32, align 4
@table = external global [0 x %struct.colstr*], align 8
@.str = private unnamed_addr constant [71 x i8] c"\02\03\05\06\07!%&#/?,:;<=>@`^~_{}+-*ABCDEFGHIJKMNOPQRSTUVWXYZabcdefgjkoqrstwxyz\00", align 1
@.str.1 = private unnamed_addr constant [71 x i8] c"\02\03\05\06\07:_~^`@;,<=>#%&!/?{}+-*ABCDEFGHIJKMNOPQRSTUVWXZabcdefgjkoqrstuwxyz\00", align 1
@.str.2 = private unnamed_addr constant [47 x i8] c"couldn't find characters to use for delimiters\00", align 1

; Function Attrs: nounwind uwtable
define void @choochar() #0 {
entry:
  %had = alloca [128 x i32], align 16
  %ilin = alloca i32, align 4
  %icol = alloca i32, align 4
  %k = alloca i32, align 4
  %s = alloca i8*, align 8
  store i32 0, i32* %icol, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %icol, align 4
  %cmp = icmp slt i32 %0, 128
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %icol, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [128 x i32], [128 x i32]* %had, i32 0, i64 %idxprom
  store i32 0, i32* %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %2 = load i32, i32* %icol, align 4
  %inc = add nsw i32 %2, 1
  store i32 %inc, i32* %icol, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* @F2, align 4
  store i32 0, i32* @F1, align 4
  store i32 0, i32* %ilin, align 4
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc.49, %for.end
  %3 = load i32, i32* %ilin, align 4
  %4 = load i32, i32* @nlin, align 4
  %cmp2 = icmp slt i32 %3, %4
  br i1 %cmp2, label %for.body.3, label %for.end.51

for.body.3:                                       ; preds = %for.cond.1
  %5 = load i32, i32* %ilin, align 4
  %idxprom4 = sext i32 %5 to i64
  %arrayidx5 = getelementptr inbounds [0 x i8*], [0 x i8*]* @instead, i32 0, i64 %idxprom4
  %6 = load i8*, i8** %arrayidx5, align 8
  %tobool = icmp ne i8* %6, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body.3
  br label %for.inc.49

if.end:                                           ; preds = %for.body.3
  %7 = load i32, i32* %ilin, align 4
  %idxprom6 = sext i32 %7 to i64
  %arrayidx7 = getelementptr inbounds [0 x i32], [0 x i32]* @fullbot, i32 0, i64 %idxprom6
  %8 = load i32, i32* %arrayidx7, align 4
  %tobool8 = icmp ne i32 %8, 0
  br i1 %tobool8, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %if.end
  br label %for.inc.49

if.end.10:                                        ; preds = %if.end
  store i32 0, i32* %icol, align 4
  br label %for.cond.11

for.cond.11:                                      ; preds = %for.inc.46, %if.end.10
  %9 = load i32, i32* %icol, align 4
  %10 = load i32, i32* @ncol, align 4
  %cmp12 = icmp slt i32 %9, %10
  br i1 %cmp12, label %for.body.13, label %for.end.48

for.body.13:                                      ; preds = %for.cond.11
  %11 = load i32, i32* %ilin, align 4
  %12 = load i32, i32* %icol, align 4
  %call = call i32 @ctype(i32 %11, i32 %12)
  store i32 %call, i32* %k, align 4
  %13 = load i32, i32* %k, align 4
  %cmp14 = icmp eq i32 %13, 0
  br i1 %cmp14, label %if.then.18, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body.13
  %14 = load i32, i32* %k, align 4
  %cmp15 = icmp eq i32 %14, 45
  br i1 %cmp15, label %if.then.18, label %lor.lhs.false.16

lor.lhs.false.16:                                 ; preds = %lor.lhs.false
  %15 = load i32, i32* %k, align 4
  %cmp17 = icmp eq i32 %15, 61
  br i1 %cmp17, label %if.then.18, label %if.end.19

if.then.18:                                       ; preds = %lor.lhs.false.16, %lor.lhs.false, %for.body.13
  br label %for.inc.46

if.end.19:                                        ; preds = %lor.lhs.false.16
  %16 = load i32, i32* %icol, align 4
  %idxprom20 = sext i32 %16 to i64
  %17 = load i32, i32* %ilin, align 4
  %idxprom21 = sext i32 %17 to i64
  %arrayidx22 = getelementptr inbounds [0 x %struct.colstr*], [0 x %struct.colstr*]* @table, i32 0, i64 %idxprom21
  %18 = load %struct.colstr*, %struct.colstr** %arrayidx22, align 8
  %arrayidx23 = getelementptr inbounds %struct.colstr, %struct.colstr* %18, i64 %idxprom20
  %col = getelementptr inbounds %struct.colstr, %struct.colstr* %arrayidx23, i32 0, i32 0
  %19 = load i8*, i8** %col, align 8
  store i8* %19, i8** %s, align 8
  %20 = load i8*, i8** %s, align 8
  %21 = ptrtoint i8* %20 to i32
  %call24 = call i32 @point(i32 %21)
  %tobool25 = icmp ne i32 %call24, 0
  br i1 %tobool25, label %if.then.26, label %if.end.30

if.then.26:                                       ; preds = %if.end.19
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then.26
  %22 = load i8*, i8** %s, align 8
  %23 = load i8, i8* %22, align 1
  %tobool27 = icmp ne i8 %23, 0
  br i1 %tobool27, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %24 = load i8*, i8** %s, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %24, i32 1
  store i8* %incdec.ptr, i8** %s, align 8
  %25 = load i8, i8* %24, align 1
  %idxprom28 = sext i8 %25 to i64
  %arrayidx29 = getelementptr inbounds [128 x i32], [128 x i32]* %had, i32 0, i64 %idxprom28
  store i32 1, i32* %arrayidx29, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %if.end.30

if.end.30:                                        ; preds = %while.end, %if.end.19
  %26 = load i32, i32* %icol, align 4
  %idxprom31 = sext i32 %26 to i64
  %27 = load i32, i32* %ilin, align 4
  %idxprom32 = sext i32 %27 to i64
  %arrayidx33 = getelementptr inbounds [0 x %struct.colstr*], [0 x %struct.colstr*]* @table, i32 0, i64 %idxprom32
  %28 = load %struct.colstr*, %struct.colstr** %arrayidx33, align 8
  %arrayidx34 = getelementptr inbounds %struct.colstr, %struct.colstr* %28, i64 %idxprom31
  %rcol = getelementptr inbounds %struct.colstr, %struct.colstr* %arrayidx34, i32 0, i32 1
  %29 = load i8*, i8** %rcol, align 8
  store i8* %29, i8** %s, align 8
  %30 = load i8*, i8** %s, align 8
  %31 = ptrtoint i8* %30 to i32
  %call35 = call i32 @point(i32 %31)
  %tobool36 = icmp ne i32 %call35, 0
  br i1 %tobool36, label %if.then.37, label %if.end.45

if.then.37:                                       ; preds = %if.end.30
  br label %while.cond.38

while.cond.38:                                    ; preds = %while.body.40, %if.then.37
  %32 = load i8*, i8** %s, align 8
  %33 = load i8, i8* %32, align 1
  %tobool39 = icmp ne i8 %33, 0
  br i1 %tobool39, label %while.body.40, label %while.end.44

while.body.40:                                    ; preds = %while.cond.38
  %34 = load i8*, i8** %s, align 8
  %incdec.ptr41 = getelementptr inbounds i8, i8* %34, i32 1
  store i8* %incdec.ptr41, i8** %s, align 8
  %35 = load i8, i8* %34, align 1
  %idxprom42 = sext i8 %35 to i64
  %arrayidx43 = getelementptr inbounds [128 x i32], [128 x i32]* %had, i32 0, i64 %idxprom42
  store i32 1, i32* %arrayidx43, align 4
  br label %while.cond.38

while.end.44:                                     ; preds = %while.cond.38
  br label %if.end.45

if.end.45:                                        ; preds = %while.end.44, %if.end.30
  br label %for.inc.46

for.inc.46:                                       ; preds = %if.end.45, %if.then.18
  %36 = load i32, i32* %icol, align 4
  %inc47 = add nsw i32 %36, 1
  store i32 %inc47, i32* %icol, align 4
  br label %for.cond.11

for.end.48:                                       ; preds = %for.cond.11
  br label %for.inc.49

for.inc.49:                                       ; preds = %for.end.48, %if.then.9, %if.then
  %37 = load i32, i32* %ilin, align 4
  %inc50 = add nsw i32 %37, 1
  store i32 %inc50, i32* %ilin, align 4
  br label %for.cond.1

for.end.51:                                       ; preds = %for.cond.1
  store i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str, i32 0, i32 0), i8** %s, align 8
  br label %for.cond.52

for.cond.52:                                      ; preds = %for.inc.62, %for.end.51
  %38 = load i8*, i8** %s, align 8
  %39 = load i8, i8* %38, align 1
  %tobool53 = icmp ne i8 %39, 0
  br i1 %tobool53, label %for.body.54, label %for.end.64

for.body.54:                                      ; preds = %for.cond.52
  %40 = load i8*, i8** %s, align 8
  %41 = load i8, i8* %40, align 1
  %idxprom55 = sext i8 %41 to i64
  %arrayidx56 = getelementptr inbounds [128 x i32], [128 x i32]* %had, i32 0, i64 %idxprom55
  %42 = load i32, i32* %arrayidx56, align 4
  %cmp57 = icmp eq i32 %42, 0
  br i1 %cmp57, label %if.then.58, label %if.end.61

if.then.58:                                       ; preds = %for.body.54
  %43 = load i8*, i8** %s, align 8
  %44 = load i8, i8* %43, align 1
  %conv = sext i8 %44 to i32
  store i32 %conv, i32* @F1, align 4
  %45 = load i32, i32* @F1, align 4
  %idxprom59 = sext i32 %45 to i64
  %arrayidx60 = getelementptr inbounds [128 x i32], [128 x i32]* %had, i32 0, i64 %idxprom59
  store i32 1, i32* %arrayidx60, align 4
  br label %for.end.64

if.end.61:                                        ; preds = %for.body.54
  br label %for.inc.62

for.inc.62:                                       ; preds = %if.end.61
  %46 = load i8*, i8** %s, align 8
  %incdec.ptr63 = getelementptr inbounds i8, i8* %46, i32 1
  store i8* %incdec.ptr63, i8** %s, align 8
  br label %for.cond.52

for.end.64:                                       ; preds = %if.then.58, %for.cond.52
  store i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.1, i32 0, i32 0), i8** %s, align 8
  br label %for.cond.65

for.cond.65:                                      ; preds = %for.inc.75, %for.end.64
  %47 = load i8*, i8** %s, align 8
  %48 = load i8, i8* %47, align 1
  %tobool66 = icmp ne i8 %48, 0
  br i1 %tobool66, label %for.body.67, label %for.end.77

for.body.67:                                      ; preds = %for.cond.65
  %49 = load i8*, i8** %s, align 8
  %50 = load i8, i8* %49, align 1
  %idxprom68 = sext i8 %50 to i64
  %arrayidx69 = getelementptr inbounds [128 x i32], [128 x i32]* %had, i32 0, i64 %idxprom68
  %51 = load i32, i32* %arrayidx69, align 4
  %cmp70 = icmp eq i32 %51, 0
  br i1 %cmp70, label %if.then.72, label %if.end.74

if.then.72:                                       ; preds = %for.body.67
  %52 = load i8*, i8** %s, align 8
  %53 = load i8, i8* %52, align 1
  %conv73 = sext i8 %53 to i32
  store i32 %conv73, i32* @F2, align 4
  br label %for.end.77

if.end.74:                                        ; preds = %for.body.67
  br label %for.inc.75

for.inc.75:                                       ; preds = %if.end.74
  %54 = load i8*, i8** %s, align 8
  %incdec.ptr76 = getelementptr inbounds i8, i8* %54, i32 1
  store i8* %incdec.ptr76, i8** %s, align 8
  br label %for.cond.65

for.end.77:                                       ; preds = %if.then.72, %for.cond.65
  %55 = load i32, i32* @F1, align 4
  %cmp78 = icmp eq i32 %55, 0
  br i1 %cmp78, label %if.then.83, label %lor.lhs.false.80

lor.lhs.false.80:                                 ; preds = %for.end.77
  %56 = load i32, i32* @F2, align 4
  %cmp81 = icmp eq i32 %56, 0
  br i1 %cmp81, label %if.then.83, label %if.end.84

if.then.83:                                       ; preds = %lor.lhs.false.80, %for.end.77
  call void @error(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i32 0, i32 0))
  br label %if.end.84

if.end.84:                                        ; preds = %if.then.83, %lor.lhs.false.80
  ret void
}

declare i32 @ctype(i32, i32) #1

; Function Attrs: nounwind uwtable
define i32 @point(i32 %s) #0 {
entry:
  %s.addr = alloca i32, align 4
  store i32 %s, i32* %s.addr, align 4
  %0 = load i32, i32* %s.addr, align 4
  %cmp = icmp sge i32 %0, 128
  br i1 %cmp, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %entry
  %1 = load i32, i32* %s.addr, align 4
  %cmp1 = icmp slt i32 %1, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %entry
  %2 = phi i1 [ true, %entry ], [ %cmp1, %lor.rhs ]
  %lor.ext = zext i1 %2 to i32
  ret i32 %lor.ext
}

declare void @error(i8*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
