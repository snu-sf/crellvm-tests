; ModuleID = 'ucbqsort.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@qsz = internal global i32 0, align 4
@qcmp = internal global i32 (...)* null, align 8
@thresh = internal global i32 0, align 4
@mthresh = internal global i32 0, align 4

; Function Attrs: nounwind uwtable
define void @specqsort(i8* %base, i32 %n, i32 %size, i32 (...)* %compar) #0 {
entry:
  %base.addr = alloca i8*, align 8
  %n.addr = alloca i32, align 4
  %size.addr = alloca i32, align 4
  %compar.addr = alloca i32 (...)*, align 8
  %c = alloca i8, align 1
  %i = alloca i8*, align 8
  %j = alloca i8*, align 8
  %lo = alloca i8*, align 8
  %hi = alloca i8*, align 8
  %min = alloca i8*, align 8
  %max = alloca i8*, align 8
  store i8* %base, i8** %base.addr, align 8
  store i32 %n, i32* %n.addr, align 4
  store i32 %size, i32* %size.addr, align 4
  store i32 (...)* %compar, i32 (...)** %compar.addr, align 8
  %0 = load i32, i32* %n.addr, align 4
  %cmp = icmp sle i32 %0, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %for.end.53

if.end:                                           ; preds = %entry
  %1 = load i32, i32* %size.addr, align 4
  store i32 %1, i32* @qsz, align 4
  %2 = load i32 (...)*, i32 (...)** %compar.addr, align 8
  store i32 (...)* %2, i32 (...)** @qcmp, align 8
  %3 = load i32, i32* @qsz, align 4
  %mul = mul nsw i32 %3, 4
  store i32 %mul, i32* @thresh, align 4
  %4 = load i32, i32* @qsz, align 4
  %mul1 = mul nsw i32 %4, 6
  store i32 %mul1, i32* @mthresh, align 4
  %5 = load i8*, i8** %base.addr, align 8
  %6 = load i32, i32* %n.addr, align 4
  %7 = load i32, i32* @qsz, align 4
  %mul2 = mul nsw i32 %6, %7
  %idx.ext = sext i32 %mul2 to i64
  %add.ptr = getelementptr inbounds i8, i8* %5, i64 %idx.ext
  store i8* %add.ptr, i8** %max, align 8
  %8 = load i32, i32* %n.addr, align 4
  %cmp3 = icmp sge i32 %8, 4
  br i1 %cmp3, label %if.then.4, label %if.else

if.then.4:                                        ; preds = %if.end
  %9 = load i8*, i8** %base.addr, align 8
  %10 = load i8*, i8** %max, align 8
  call void @qst(i8* %9, i8* %10)
  %11 = load i8*, i8** %base.addr, align 8
  %12 = load i32, i32* @thresh, align 4
  %idx.ext5 = sext i32 %12 to i64
  %add.ptr6 = getelementptr inbounds i8, i8* %11, i64 %idx.ext5
  store i8* %add.ptr6, i8** %hi, align 8
  br label %if.end.7

if.else:                                          ; preds = %if.end
  %13 = load i8*, i8** %max, align 8
  store i8* %13, i8** %hi, align 8
  br label %if.end.7

if.end.7:                                         ; preds = %if.else, %if.then.4
  %14 = load i8*, i8** %base.addr, align 8
  store i8* %14, i8** %lo, align 8
  store i8* %14, i8** %j, align 8
  br label %for.cond

for.cond:                                         ; preds = %if.end.13, %if.end.7
  %15 = load i32, i32* @qsz, align 4
  %16 = load i8*, i8** %lo, align 8
  %idx.ext8 = sext i32 %15 to i64
  %add.ptr9 = getelementptr inbounds i8, i8* %16, i64 %idx.ext8
  store i8* %add.ptr9, i8** %lo, align 8
  %17 = load i8*, i8** %hi, align 8
  %cmp10 = icmp ult i8* %add.ptr9, %17
  br i1 %cmp10, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %18 = load i32 (...)*, i32 (...)** @qcmp, align 8
  %19 = load i8*, i8** %j, align 8
  %20 = load i8*, i8** %lo, align 8
  %callee.knr.cast = bitcast i32 (...)* %18 to i32 (i8*, i8*, ...)*
  %call = call i32 (i8*, i8*, ...) %callee.knr.cast(i8* %19, i8* %20)
  %cmp11 = icmp sgt i32 %call, 0
  br i1 %cmp11, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %for.body
  %21 = load i8*, i8** %lo, align 8
  store i8* %21, i8** %j, align 8
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.12, %for.body
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %22 = load i8*, i8** %j, align 8
  %23 = load i8*, i8** %base.addr, align 8
  %cmp14 = icmp ne i8* %22, %23
  br i1 %cmp14, label %if.then.15, label %if.end.23

if.then.15:                                       ; preds = %for.end
  %24 = load i8*, i8** %base.addr, align 8
  store i8* %24, i8** %i, align 8
  %25 = load i8*, i8** %base.addr, align 8
  %26 = load i32, i32* @qsz, align 4
  %idx.ext16 = sext i32 %26 to i64
  %add.ptr17 = getelementptr inbounds i8, i8* %25, i64 %idx.ext16
  store i8* %add.ptr17, i8** %hi, align 8
  br label %for.cond.18

for.cond.18:                                      ; preds = %for.body.20, %if.then.15
  %27 = load i8*, i8** %i, align 8
  %28 = load i8*, i8** %hi, align 8
  %cmp19 = icmp ult i8* %27, %28
  br i1 %cmp19, label %for.body.20, label %for.end.22

for.body.20:                                      ; preds = %for.cond.18
  %29 = load i8*, i8** %j, align 8
  %30 = load i8, i8* %29, align 1
  store i8 %30, i8* %c, align 1
  %31 = load i8*, i8** %i, align 8
  %32 = load i8, i8* %31, align 1
  %33 = load i8*, i8** %j, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %33, i32 1
  store i8* %incdec.ptr, i8** %j, align 8
  store i8 %32, i8* %33, align 1
  %34 = load i8, i8* %c, align 1
  %35 = load i8*, i8** %i, align 8
  %incdec.ptr21 = getelementptr inbounds i8, i8* %35, i32 1
  store i8* %incdec.ptr21, i8** %i, align 8
  store i8 %34, i8* %35, align 1
  br label %for.cond.18

for.end.22:                                       ; preds = %for.cond.18
  br label %if.end.23

if.end.23:                                        ; preds = %for.end.22, %for.end
  %36 = load i8*, i8** %base.addr, align 8
  store i8* %36, i8** %min, align 8
  br label %for.cond.24

for.cond.24:                                      ; preds = %if.end.52, %if.end.23
  %37 = load i32, i32* @qsz, align 4
  %38 = load i8*, i8** %min, align 8
  %idx.ext25 = sext i32 %37 to i64
  %add.ptr26 = getelementptr inbounds i8, i8* %38, i64 %idx.ext25
  store i8* %add.ptr26, i8** %min, align 8
  store i8* %add.ptr26, i8** %hi, align 8
  %39 = load i8*, i8** %max, align 8
  %cmp27 = icmp ult i8* %add.ptr26, %39
  br i1 %cmp27, label %for.body.28, label %for.end.53

for.body.28:                                      ; preds = %for.cond.24
  br label %while.cond

while.cond:                                       ; preds = %while.body, %for.body.28
  %40 = load i32 (...)*, i32 (...)** @qcmp, align 8
  %41 = load i32, i32* @qsz, align 4
  %42 = load i8*, i8** %hi, align 8
  %idx.ext29 = sext i32 %41 to i64
  %idx.neg = sub i64 0, %idx.ext29
  %add.ptr30 = getelementptr inbounds i8, i8* %42, i64 %idx.neg
  store i8* %add.ptr30, i8** %hi, align 8
  %43 = load i8*, i8** %min, align 8
  %callee.knr.cast31 = bitcast i32 (...)* %40 to i32 (i8*, i8*, ...)*
  %call32 = call i32 (i8*, i8*, ...) %callee.knr.cast31(i8* %add.ptr30, i8* %43)
  %cmp33 = icmp sgt i32 %call32, 0
  br i1 %cmp33, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %44 = load i32, i32* @qsz, align 4
  %45 = load i8*, i8** %hi, align 8
  %idx.ext34 = sext i32 %44 to i64
  %add.ptr35 = getelementptr inbounds i8, i8* %45, i64 %idx.ext34
  store i8* %add.ptr35, i8** %hi, align 8
  %46 = load i8*, i8** %min, align 8
  %cmp36 = icmp ne i8* %add.ptr35, %46
  br i1 %cmp36, label %if.then.37, label %if.end.52

if.then.37:                                       ; preds = %while.end
  %47 = load i8*, i8** %min, align 8
  %48 = load i32, i32* @qsz, align 4
  %idx.ext38 = sext i32 %48 to i64
  %add.ptr39 = getelementptr inbounds i8, i8* %47, i64 %idx.ext38
  store i8* %add.ptr39, i8** %lo, align 8
  br label %for.cond.40

for.cond.40:                                      ; preds = %for.end.50, %if.then.37
  %49 = load i8*, i8** %lo, align 8
  %incdec.ptr41 = getelementptr inbounds i8, i8* %49, i32 -1
  store i8* %incdec.ptr41, i8** %lo, align 8
  %50 = load i8*, i8** %min, align 8
  %cmp42 = icmp uge i8* %incdec.ptr41, %50
  br i1 %cmp42, label %for.body.43, label %for.end.51

for.body.43:                                      ; preds = %for.cond.40
  %51 = load i8*, i8** %lo, align 8
  %52 = load i8, i8* %51, align 1
  store i8 %52, i8* %c, align 1
  %53 = load i8*, i8** %lo, align 8
  store i8* %53, i8** %j, align 8
  store i8* %53, i8** %i, align 8
  br label %for.cond.44

for.cond.44:                                      ; preds = %for.inc, %for.body.43
  %54 = load i32, i32* @qsz, align 4
  %55 = load i8*, i8** %j, align 8
  %idx.ext45 = sext i32 %54 to i64
  %idx.neg46 = sub i64 0, %idx.ext45
  %add.ptr47 = getelementptr inbounds i8, i8* %55, i64 %idx.neg46
  store i8* %add.ptr47, i8** %j, align 8
  %56 = load i8*, i8** %hi, align 8
  %cmp48 = icmp uge i8* %add.ptr47, %56
  br i1 %cmp48, label %for.body.49, label %for.end.50

for.body.49:                                      ; preds = %for.cond.44
  %57 = load i8*, i8** %j, align 8
  %58 = load i8, i8* %57, align 1
  %59 = load i8*, i8** %i, align 8
  store i8 %58, i8* %59, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body.49
  %60 = load i8*, i8** %j, align 8
  store i8* %60, i8** %i, align 8
  br label %for.cond.44

for.end.50:                                       ; preds = %for.cond.44
  %61 = load i8, i8* %c, align 1
  %62 = load i8*, i8** %i, align 8
  store i8 %61, i8* %62, align 1
  br label %for.cond.40

for.end.51:                                       ; preds = %for.cond.40
  br label %if.end.52

if.end.52:                                        ; preds = %for.end.51, %while.end
  br label %for.cond.24

for.end.53:                                       ; preds = %if.then, %for.cond.24
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @qst(i8* %base, i8* %max) #0 {
entry:
  %base.addr = alloca i8*, align 8
  %max.addr = alloca i8*, align 8
  %c = alloca i8, align 1
  %i = alloca i8*, align 8
  %j = alloca i8*, align 8
  %jj = alloca i8*, align 8
  %ii = alloca i32, align 4
  %mid = alloca i8*, align 8
  %tmp = alloca i8*, align 8
  %lo = alloca i32, align 4
  %hi = alloca i32, align 4
  store i8* %base, i8** %base.addr, align 8
  store i8* %max, i8** %max.addr, align 8
  %0 = load i8*, i8** %max.addr, align 8
  %1 = load i8*, i8** %base.addr, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %0 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %1 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv = trunc i64 %sub.ptr.sub to i32
  store i32 %conv, i32* %lo, align 4
  br label %do.body

do.body:                                          ; preds = %do.cond.104, %entry
  %2 = load i8*, i8** %base.addr, align 8
  %3 = load i32, i32* @qsz, align 4
  %4 = load i32, i32* %lo, align 4
  %5 = load i32, i32* @qsz, align 4
  %div = sdiv i32 %4, %5
  %shr = ashr i32 %div, 1
  %mul = mul nsw i32 %3, %shr
  %idx.ext = sext i32 %mul to i64
  %add.ptr = getelementptr inbounds i8, i8* %2, i64 %idx.ext
  store i8* %add.ptr, i8** %i, align 8
  store i8* %add.ptr, i8** %mid, align 8
  %6 = load i32, i32* %lo, align 4
  %7 = load i32, i32* @mthresh, align 4
  %cmp = icmp sge i32 %6, %7
  br i1 %cmp, label %if.then, label %if.end.31

if.then:                                          ; preds = %do.body
  %8 = load i32 (...)*, i32 (...)** @qcmp, align 8
  %9 = load i8*, i8** %base.addr, align 8
  store i8* %9, i8** %jj, align 8
  %10 = load i8*, i8** %i, align 8
  %callee.knr.cast = bitcast i32 (...)* %8 to i32 (i8*, i8*, ...)*
  %call = call i32 (i8*, i8*, ...) %callee.knr.cast(i8* %9, i8* %10)
  %cmp4 = icmp sgt i32 %call, 0
  br i1 %cmp4, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  %11 = load i8*, i8** %jj, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.then
  %12 = load i8*, i8** %i, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %11, %cond.true ], [ %12, %cond.false ]
  store i8* %cond, i8** %j, align 8
  %13 = load i32 (...)*, i32 (...)** @qcmp, align 8
  %14 = load i8*, i8** %j, align 8
  %15 = load i8*, i8** %max.addr, align 8
  %16 = load i32, i32* @qsz, align 4
  %idx.ext6 = sext i32 %16 to i64
  %idx.neg = sub i64 0, %idx.ext6
  %add.ptr7 = getelementptr inbounds i8, i8* %15, i64 %idx.neg
  store i8* %add.ptr7, i8** %tmp, align 8
  %callee.knr.cast8 = bitcast i32 (...)* %13 to i32 (i8*, i8*, ...)*
  %call9 = call i32 (i8*, i8*, ...) %callee.knr.cast8(i8* %14, i8* %add.ptr7)
  %cmp10 = icmp sgt i32 %call9, 0
  br i1 %cmp10, label %if.then.12, label %if.end.24

if.then.12:                                       ; preds = %cond.end
  %17 = load i8*, i8** %j, align 8
  %18 = load i8*, i8** %jj, align 8
  %cmp13 = icmp eq i8* %17, %18
  br i1 %cmp13, label %cond.true.15, label %cond.false.16

cond.true.15:                                     ; preds = %if.then.12
  %19 = load i8*, i8** %i, align 8
  br label %cond.end.17

cond.false.16:                                    ; preds = %if.then.12
  %20 = load i8*, i8** %jj, align 8
  br label %cond.end.17

cond.end.17:                                      ; preds = %cond.false.16, %cond.true.15
  %cond18 = phi i8* [ %19, %cond.true.15 ], [ %20, %cond.false.16 ]
  store i8* %cond18, i8** %j, align 8
  %21 = load i32 (...)*, i32 (...)** @qcmp, align 8
  %22 = load i8*, i8** %j, align 8
  %23 = load i8*, i8** %tmp, align 8
  %callee.knr.cast19 = bitcast i32 (...)* %21 to i32 (i8*, i8*, ...)*
  %call20 = call i32 (i8*, i8*, ...) %callee.knr.cast19(i8* %22, i8* %23)
  %cmp21 = icmp slt i32 %call20, 0
  br i1 %cmp21, label %if.then.23, label %if.end

if.then.23:                                       ; preds = %cond.end.17
  %24 = load i8*, i8** %tmp, align 8
  store i8* %24, i8** %j, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.23, %cond.end.17
  br label %if.end.24

if.end.24:                                        ; preds = %if.end, %cond.end
  %25 = load i8*, i8** %j, align 8
  %26 = load i8*, i8** %i, align 8
  %cmp25 = icmp ne i8* %25, %26
  br i1 %cmp25, label %if.then.27, label %if.end.30

if.then.27:                                       ; preds = %if.end.24
  %27 = load i32, i32* @qsz, align 4
  store i32 %27, i32* %ii, align 4
  br label %do.body.28

do.body.28:                                       ; preds = %do.cond, %if.then.27
  %28 = load i8*, i8** %i, align 8
  %29 = load i8, i8* %28, align 1
  store i8 %29, i8* %c, align 1
  %30 = load i8*, i8** %j, align 8
  %31 = load i8, i8* %30, align 1
  %32 = load i8*, i8** %i, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %32, i32 1
  store i8* %incdec.ptr, i8** %i, align 8
  store i8 %31, i8* %32, align 1
  %33 = load i8, i8* %c, align 1
  %34 = load i8*, i8** %j, align 8
  %incdec.ptr29 = getelementptr inbounds i8, i8* %34, i32 1
  store i8* %incdec.ptr29, i8** %j, align 8
  store i8 %33, i8* %34, align 1
  br label %do.cond

do.cond:                                          ; preds = %do.body.28
  %35 = load i32, i32* %ii, align 4
  %dec = add nsw i32 %35, -1
  store i32 %dec, i32* %ii, align 4
  %tobool = icmp ne i32 %dec, 0
  br i1 %tobool, label %do.body.28, label %do.end

do.end:                                           ; preds = %do.cond
  br label %if.end.30

if.end.30:                                        ; preds = %do.end, %if.end.24
  br label %if.end.31

if.end.31:                                        ; preds = %if.end.30, %do.body
  %36 = load i8*, i8** %base.addr, align 8
  store i8* %36, i8** %i, align 8
  %37 = load i8*, i8** %max.addr, align 8
  %38 = load i32, i32* @qsz, align 4
  %idx.ext32 = sext i32 %38 to i64
  %idx.neg33 = sub i64 0, %idx.ext32
  %add.ptr34 = getelementptr inbounds i8, i8* %37, i64 %idx.neg33
  store i8* %add.ptr34, i8** %j, align 8
  br label %for.cond

for.cond:                                         ; preds = %do.end.80, %if.end.31
  br label %while.cond

while.cond:                                       ; preds = %while.body, %for.cond
  %39 = load i8*, i8** %i, align 8
  %40 = load i8*, i8** %mid, align 8
  %cmp35 = icmp ult i8* %39, %40
  br i1 %cmp35, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %41 = load i32 (...)*, i32 (...)** @qcmp, align 8
  %42 = load i8*, i8** %i, align 8
  %43 = load i8*, i8** %mid, align 8
  %callee.knr.cast37 = bitcast i32 (...)* %41 to i32 (i8*, i8*, ...)*
  %call38 = call i32 (i8*, i8*, ...) %callee.knr.cast37(i8* %42, i8* %43)
  %cmp39 = icmp sle i32 %call38, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %44 = phi i1 [ false, %while.cond ], [ %cmp39, %land.rhs ]
  br i1 %44, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %45 = load i32, i32* @qsz, align 4
  %46 = load i8*, i8** %i, align 8
  %idx.ext41 = sext i32 %45 to i64
  %add.ptr42 = getelementptr inbounds i8, i8* %46, i64 %idx.ext41
  store i8* %add.ptr42, i8** %i, align 8
  br label %while.cond

while.end:                                        ; preds = %land.end
  br label %while.cond.43

while.cond.43:                                    ; preds = %if.then.51, %while.end
  %47 = load i8*, i8** %j, align 8
  %48 = load i8*, i8** %mid, align 8
  %cmp44 = icmp ugt i8* %47, %48
  br i1 %cmp44, label %while.body.46, label %while.end.65

while.body.46:                                    ; preds = %while.cond.43
  %49 = load i32 (...)*, i32 (...)** @qcmp, align 8
  %50 = load i8*, i8** %mid, align 8
  %51 = load i8*, i8** %j, align 8
  %callee.knr.cast47 = bitcast i32 (...)* %49 to i32 (i8*, i8*, ...)*
  %call48 = call i32 (i8*, i8*, ...) %callee.knr.cast47(i8* %50, i8* %51)
  %cmp49 = icmp sle i32 %call48, 0
  br i1 %cmp49, label %if.then.51, label %if.end.55

if.then.51:                                       ; preds = %while.body.46
  %52 = load i32, i32* @qsz, align 4
  %53 = load i8*, i8** %j, align 8
  %idx.ext52 = sext i32 %52 to i64
  %idx.neg53 = sub i64 0, %idx.ext52
  %add.ptr54 = getelementptr inbounds i8, i8* %53, i64 %idx.neg53
  store i8* %add.ptr54, i8** %j, align 8
  br label %while.cond.43

if.end.55:                                        ; preds = %while.body.46
  %54 = load i8*, i8** %i, align 8
  %55 = load i32, i32* @qsz, align 4
  %idx.ext56 = sext i32 %55 to i64
  %add.ptr57 = getelementptr inbounds i8, i8* %54, i64 %idx.ext56
  store i8* %add.ptr57, i8** %tmp, align 8
  %56 = load i8*, i8** %i, align 8
  %57 = load i8*, i8** %mid, align 8
  %cmp58 = icmp eq i8* %56, %57
  br i1 %cmp58, label %if.then.60, label %if.else

if.then.60:                                       ; preds = %if.end.55
  %58 = load i8*, i8** %j, align 8
  store i8* %58, i8** %jj, align 8
  store i8* %58, i8** %mid, align 8
  br label %if.end.64

if.else:                                          ; preds = %if.end.55
  %59 = load i8*, i8** %j, align 8
  store i8* %59, i8** %jj, align 8
  %60 = load i32, i32* @qsz, align 4
  %61 = load i8*, i8** %j, align 8
  %idx.ext61 = sext i32 %60 to i64
  %idx.neg62 = sub i64 0, %idx.ext61
  %add.ptr63 = getelementptr inbounds i8, i8* %61, i64 %idx.neg62
  store i8* %add.ptr63, i8** %j, align 8
  br label %if.end.64

if.end.64:                                        ; preds = %if.else, %if.then.60
  br label %swap

while.end.65:                                     ; preds = %while.cond.43
  %62 = load i8*, i8** %i, align 8
  %63 = load i8*, i8** %mid, align 8
  %cmp66 = icmp eq i8* %62, %63
  br i1 %cmp66, label %if.then.68, label %if.else.69

if.then.68:                                       ; preds = %while.end.65
  br label %for.end

if.else.69:                                       ; preds = %while.end.65
  %64 = load i8*, i8** %mid, align 8
  store i8* %64, i8** %jj, align 8
  %65 = load i8*, i8** %i, align 8
  store i8* %65, i8** %mid, align 8
  store i8* %65, i8** %tmp, align 8
  %66 = load i32, i32* @qsz, align 4
  %67 = load i8*, i8** %j, align 8
  %idx.ext70 = sext i32 %66 to i64
  %idx.neg71 = sub i64 0, %idx.ext70
  %add.ptr72 = getelementptr inbounds i8, i8* %67, i64 %idx.neg71
  store i8* %add.ptr72, i8** %j, align 8
  br label %if.end.73

if.end.73:                                        ; preds = %if.else.69
  br label %swap

swap:                                             ; preds = %if.end.73, %if.end.64
  %68 = load i32, i32* @qsz, align 4
  store i32 %68, i32* %ii, align 4
  br label %do.body.74

do.body.74:                                       ; preds = %do.cond.77, %swap
  %69 = load i8*, i8** %i, align 8
  %70 = load i8, i8* %69, align 1
  store i8 %70, i8* %c, align 1
  %71 = load i8*, i8** %jj, align 8
  %72 = load i8, i8* %71, align 1
  %73 = load i8*, i8** %i, align 8
  %incdec.ptr75 = getelementptr inbounds i8, i8* %73, i32 1
  store i8* %incdec.ptr75, i8** %i, align 8
  store i8 %72, i8* %73, align 1
  %74 = load i8, i8* %c, align 1
  %75 = load i8*, i8** %jj, align 8
  %incdec.ptr76 = getelementptr inbounds i8, i8* %75, i32 1
  store i8* %incdec.ptr76, i8** %jj, align 8
  store i8 %74, i8* %75, align 1
  br label %do.cond.77

do.cond.77:                                       ; preds = %do.body.74
  %76 = load i32, i32* %ii, align 4
  %dec78 = add nsw i32 %76, -1
  store i32 %dec78, i32* %ii, align 4
  %tobool79 = icmp ne i32 %dec78, 0
  br i1 %tobool79, label %do.body.74, label %do.end.80

do.end.80:                                        ; preds = %do.cond.77
  %77 = load i8*, i8** %tmp, align 8
  store i8* %77, i8** %i, align 8
  br label %for.cond

for.end:                                          ; preds = %if.then.68
  %78 = load i8*, i8** %mid, align 8
  store i8* %78, i8** %j, align 8
  %79 = load i32, i32* @qsz, align 4
  %idx.ext81 = sext i32 %79 to i64
  %add.ptr82 = getelementptr inbounds i8, i8* %78, i64 %idx.ext81
  store i8* %add.ptr82, i8** %i, align 8
  %80 = load i8*, i8** %j, align 8
  %81 = load i8*, i8** %base.addr, align 8
  %sub.ptr.lhs.cast83 = ptrtoint i8* %80 to i64
  %sub.ptr.rhs.cast84 = ptrtoint i8* %81 to i64
  %sub.ptr.sub85 = sub i64 %sub.ptr.lhs.cast83, %sub.ptr.rhs.cast84
  %conv86 = trunc i64 %sub.ptr.sub85 to i32
  store i32 %conv86, i32* %lo, align 4
  %82 = load i8*, i8** %max.addr, align 8
  %83 = load i8*, i8** %i, align 8
  %sub.ptr.lhs.cast87 = ptrtoint i8* %82 to i64
  %sub.ptr.rhs.cast88 = ptrtoint i8* %83 to i64
  %sub.ptr.sub89 = sub i64 %sub.ptr.lhs.cast87, %sub.ptr.rhs.cast88
  %conv90 = trunc i64 %sub.ptr.sub89 to i32
  store i32 %conv90, i32* %hi, align 4
  %cmp91 = icmp sle i32 %conv86, %conv90
  br i1 %cmp91, label %if.then.93, label %if.else.98

if.then.93:                                       ; preds = %for.end
  %84 = load i32, i32* %lo, align 4
  %85 = load i32, i32* @thresh, align 4
  %cmp94 = icmp sge i32 %84, %85
  br i1 %cmp94, label %if.then.96, label %if.end.97

if.then.96:                                       ; preds = %if.then.93
  %86 = load i8*, i8** %base.addr, align 8
  %87 = load i8*, i8** %j, align 8
  call void @qst(i8* %86, i8* %87)
  br label %if.end.97

if.end.97:                                        ; preds = %if.then.96, %if.then.93
  %88 = load i8*, i8** %i, align 8
  store i8* %88, i8** %base.addr, align 8
  %89 = load i32, i32* %hi, align 4
  store i32 %89, i32* %lo, align 4
  br label %if.end.103

if.else.98:                                       ; preds = %for.end
  %90 = load i32, i32* %hi, align 4
  %91 = load i32, i32* @thresh, align 4
  %cmp99 = icmp sge i32 %90, %91
  br i1 %cmp99, label %if.then.101, label %if.end.102

if.then.101:                                      ; preds = %if.else.98
  %92 = load i8*, i8** %i, align 8
  %93 = load i8*, i8** %max.addr, align 8
  call void @qst(i8* %92, i8* %93)
  br label %if.end.102

if.end.102:                                       ; preds = %if.then.101, %if.else.98
  %94 = load i8*, i8** %j, align 8
  store i8* %94, i8** %max.addr, align 8
  br label %if.end.103

if.end.103:                                       ; preds = %if.end.102, %if.end.97
  br label %do.cond.104

do.cond.104:                                      ; preds = %if.end.103
  %95 = load i32, i32* %lo, align 4
  %96 = load i32, i32* @thresh, align 4
  %cmp105 = icmp sge i32 %95, %96
  br i1 %cmp105, label %do.body, label %do.end.107

do.end.107:                                       ; preds = %do.cond.104
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
