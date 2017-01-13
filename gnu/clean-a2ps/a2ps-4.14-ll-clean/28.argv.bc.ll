; ModuleID = './lib/argv.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define i8** @dupargv(i8** %argv) #0 {
entry:
  %retval = alloca i8**, align 8
  %argv.addr = alloca i8**, align 8
  %argc = alloca i32, align 4
  %copy = alloca i8**, align 8
  %len = alloca i32, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  %0 = load i8**, i8*** %argv.addr, align 8
  %cmp = icmp eq i8** %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i8** null, i8*** %retval
  br label %return

if.end:                                           ; preds = %entry
  store i32 0, i32* %argc, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %1 = load i32, i32* %argc, align 4
  %idxprom = sext i32 %1 to i64
  %2 = load i8**, i8*** %argv.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %2, i64 %idxprom
  %3 = load i8*, i8** %arrayidx, align 8
  %cmp1 = icmp ne i8* %3, null
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %4 = load i32, i32* %argc, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, i32* %argc, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %5 = load i32, i32* %argc, align 4
  %add = add nsw i32 %5, 1
  %conv = sext i32 %add to i64
  %mul = mul i64 %conv, 8
  %call = call noalias i8* @malloc(i64 %mul) #4
  %6 = bitcast i8* %call to i8**
  store i8** %6, i8*** %copy, align 8
  %7 = load i8**, i8*** %copy, align 8
  %cmp2 = icmp eq i8** %7, null
  br i1 %cmp2, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %for.end
  store i8** null, i8*** %retval
  br label %return

if.end.5:                                         ; preds = %for.end
  store i32 0, i32* %argc, align 4
  br label %for.cond.6

for.cond.6:                                       ; preds = %for.inc.33, %if.end.5
  %8 = load i32, i32* %argc, align 4
  %idxprom7 = sext i32 %8 to i64
  %9 = load i8**, i8*** %argv.addr, align 8
  %arrayidx8 = getelementptr inbounds i8*, i8** %9, i64 %idxprom7
  %10 = load i8*, i8** %arrayidx8, align 8
  %cmp9 = icmp ne i8* %10, null
  br i1 %cmp9, label %for.body.11, label %for.end.35

for.body.11:                                      ; preds = %for.cond.6
  %11 = load i32, i32* %argc, align 4
  %idxprom12 = sext i32 %11 to i64
  %12 = load i8**, i8*** %argv.addr, align 8
  %arrayidx13 = getelementptr inbounds i8*, i8** %12, i64 %idxprom12
  %13 = load i8*, i8** %arrayidx13, align 8
  %call14 = call i64 @strlen(i8* %13) #5
  %conv15 = trunc i64 %call14 to i32
  store i32 %conv15, i32* %len, align 4
  %14 = load i32, i32* %len, align 4
  %add16 = add nsw i32 %14, 1
  %conv17 = sext i32 %add16 to i64
  %mul18 = mul i64 8, %conv17
  %call19 = call noalias i8* @malloc(i64 %mul18) #4
  %15 = load i32, i32* %argc, align 4
  %idxprom20 = sext i32 %15 to i64
  %16 = load i8**, i8*** %copy, align 8
  %arrayidx21 = getelementptr inbounds i8*, i8** %16, i64 %idxprom20
  store i8* %call19, i8** %arrayidx21, align 8
  %17 = load i32, i32* %argc, align 4
  %idxprom22 = sext i32 %17 to i64
  %18 = load i8**, i8*** %copy, align 8
  %arrayidx23 = getelementptr inbounds i8*, i8** %18, i64 %idxprom22
  %19 = load i8*, i8** %arrayidx23, align 8
  %cmp24 = icmp eq i8* %19, null
  br i1 %cmp24, label %if.then.26, label %if.end.27

if.then.26:                                       ; preds = %for.body.11
  %20 = load i8**, i8*** %copy, align 8
  call void @freeargv(i8** %20)
  store i8** null, i8*** %retval
  br label %return

if.end.27:                                        ; preds = %for.body.11
  %21 = load i32, i32* %argc, align 4
  %idxprom28 = sext i32 %21 to i64
  %22 = load i8**, i8*** %copy, align 8
  %arrayidx29 = getelementptr inbounds i8*, i8** %22, i64 %idxprom28
  %23 = load i8*, i8** %arrayidx29, align 8
  %24 = load i32, i32* %argc, align 4
  %idxprom30 = sext i32 %24 to i64
  %25 = load i8**, i8*** %argv.addr, align 8
  %arrayidx31 = getelementptr inbounds i8*, i8** %25, i64 %idxprom30
  %26 = load i8*, i8** %arrayidx31, align 8
  %call32 = call i8* @strcpy(i8* %23, i8* %26) #4
  br label %for.inc.33

for.inc.33:                                       ; preds = %if.end.27
  %27 = load i32, i32* %argc, align 4
  %inc34 = add nsw i32 %27, 1
  store i32 %inc34, i32* %argc, align 4
  br label %for.cond.6

for.end.35:                                       ; preds = %for.cond.6
  %28 = load i32, i32* %argc, align 4
  %idxprom36 = sext i32 %28 to i64
  %29 = load i8**, i8*** %copy, align 8
  %arrayidx37 = getelementptr inbounds i8*, i8** %29, i64 %idxprom36
  store i8* null, i8** %arrayidx37, align 8
  %30 = load i8**, i8*** %copy, align 8
  store i8** %30, i8*** %retval
  br label %return

return:                                           ; preds = %for.end.35, %if.then.26, %if.then.4, %if.then
  %31 = load i8**, i8*** %retval
  ret i8** %31
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #1

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #2

; Function Attrs: nounwind uwtable
define void @freeargv(i8** %vector) #0 {
entry:
  %vector.addr = alloca i8**, align 8
  %scan = alloca i8**, align 8
  store i8** %vector, i8*** %vector.addr, align 8
  %0 = load i8**, i8*** %vector.addr, align 8
  %cmp = icmp ne i8** %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i8**, i8*** %vector.addr, align 8
  store i8** %1, i8*** %scan, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %2 = load i8**, i8*** %scan, align 8
  %3 = load i8*, i8** %2, align 8
  %cmp1 = icmp ne i8* %3, null
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i8**, i8*** %scan, align 8
  %5 = load i8*, i8** %4, align 8
  call void @free(i8* %5) #4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load i8**, i8*** %scan, align 8
  %incdec.ptr = getelementptr inbounds i8*, i8** %6, i32 1
  store i8** %incdec.ptr, i8*** %scan, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %7 = load i8**, i8*** %vector.addr, align 8
  %8 = bitcast i8** %7 to i8*
  call void @free(i8* %8) #4
  br label %if.end

if.end:                                           ; preds = %for.end, %entry
  ret void
}

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #1

; Function Attrs: nounwind
declare void @free(i8*) #1

; Function Attrs: nounwind uwtable
define void @freeargv_from(i8** %vector, i32 %from) #0 {
entry:
  %vector.addr = alloca i8**, align 8
  %from.addr = alloca i32, align 4
  %scan = alloca i8**, align 8
  store i8** %vector, i8*** %vector.addr, align 8
  store i32 %from, i32* %from.addr, align 4
  %0 = load i8**, i8*** %vector.addr, align 8
  %cmp = icmp ne i8** %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i8**, i8*** %vector.addr, align 8
  store i8** %1, i8*** %scan, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %2 = load i32, i32* %from.addr, align 4
  %cmp1 = icmp sgt i32 %2, 0
  br i1 %cmp1, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %3 = load i8**, i8*** %scan, align 8
  %4 = load i8*, i8** %3, align 8
  %cmp2 = icmp ne i8* %4, null
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %5 = phi i1 [ false, %for.cond ], [ %cmp2, %land.rhs ]
  br i1 %5, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %6 = load i8**, i8*** %scan, align 8
  %incdec.ptr = getelementptr inbounds i8*, i8** %6, i32 1
  store i8** %incdec.ptr, i8*** %scan, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load i32, i32* %from.addr, align 4
  %dec = add nsw i32 %7, -1
  store i32 %dec, i32* %from.addr, align 4
  br label %for.cond

for.end:                                          ; preds = %land.end
  br label %for.cond.3

for.cond.3:                                       ; preds = %for.inc.6, %for.end
  %8 = load i8**, i8*** %scan, align 8
  %9 = load i8*, i8** %8, align 8
  %cmp4 = icmp ne i8* %9, null
  br i1 %cmp4, label %for.body.5, label %for.end.8

for.body.5:                                       ; preds = %for.cond.3
  %10 = load i8**, i8*** %scan, align 8
  %11 = load i8*, i8** %10, align 8
  call void @free(i8* %11) #4
  br label %for.inc.6

for.inc.6:                                        ; preds = %for.body.5
  %12 = load i8**, i8*** %scan, align 8
  %incdec.ptr7 = getelementptr inbounds i8*, i8** %12, i32 1
  store i8** %incdec.ptr7, i8*** %scan, align 8
  br label %for.cond.3

for.end.8:                                        ; preds = %for.cond.3
  %13 = load i8**, i8*** %vector.addr, align 8
  %14 = bitcast i8** %13 to i8*
  call void @free(i8* %14) #4
  br label %if.end

if.end:                                           ; preds = %for.end.8, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define i8** @buildargv_argc(i8* %input, i32* %argc) #0 {
entry:
  %input.addr = alloca i8*, align 8
  %argc.addr = alloca i32*, align 8
  %arg = alloca i8*, align 8
  %copybuf = alloca i8*, align 8
  %squote = alloca i32, align 4
  %dquote = alloca i32, align 4
  %bsquote = alloca i32, align 4
  %maxargc = alloca i32, align 4
  %argv = alloca i8**, align 8
  %nargv = alloca i8**, align 8
  store i8* %input, i8** %input.addr, align 8
  store i32* %argc, i32** %argc.addr, align 8
  store i32 0, i32* %squote, align 4
  store i32 0, i32* %dquote, align 4
  store i32 0, i32* %bsquote, align 4
  store i32 0, i32* %maxargc, align 4
  store i8** null, i8*** %argv, align 8
  %0 = load i8*, i8** %input.addr, align 8
  %cmp = icmp ne i8* %0, null
  br i1 %cmp, label %if.then, label %if.end.123

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %input.addr, align 8
  %call = call i64 @strlen(i8* %1) #5
  %add = add i64 %call, 1
  %2 = alloca i8, i64 %add
  store i8* %2, i8** %copybuf, align 8
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.then
  br label %while.cond

while.cond:                                       ; preds = %while.body, %do.body
  %3 = load i8*, i8** %input.addr, align 8
  %4 = load i8, i8* %3, align 1
  %conv = sext i8 %4 to i32
  %idxprom = sext i32 %conv to i64
  %call1 = call i16** @__ctype_b_loc() #6
  %5 = load i16*, i16** %call1, align 8
  %arrayidx = getelementptr inbounds i16, i16* %5, i64 %idxprom
  %6 = load i16, i16* %arrayidx, align 2
  %conv2 = zext i16 %6 to i32
  %and = and i32 %conv2, 8192
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %7 = load i8*, i8** %input.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %7, i32 1
  store i8* %incdec.ptr, i8** %input.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %8 = load i32, i32* %maxargc, align 4
  %cmp3 = icmp eq i32 %8, 0
  br i1 %cmp3, label %if.then.7, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.end
  %9 = load i32*, i32** %argc.addr, align 8
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* %maxargc, align 4
  %sub = sub nsw i32 %11, 1
  %cmp5 = icmp sge i32 %10, %sub
  br i1 %cmp5, label %if.then.7, label %if.end.29

if.then.7:                                        ; preds = %lor.lhs.false, %while.end
  %12 = load i8**, i8*** %argv, align 8
  %cmp8 = icmp eq i8** %12, null
  br i1 %cmp8, label %if.then.10, label %if.else

if.then.10:                                       ; preds = %if.then.7
  %13 = load i32*, i32** %argc.addr, align 8
  %14 = load i32, i32* %13, align 4
  %cmp11 = icmp sgt i32 %14, 8
  br i1 %cmp11, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.10
  %15 = load i32*, i32** %argc.addr, align 8
  %16 = load i32, i32* %15, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.then.10
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %16, %cond.true ], [ 8, %cond.false ]
  store i32 %cond, i32* %maxargc, align 4
  %17 = load i32, i32* %maxargc, align 4
  %conv13 = sext i32 %17 to i64
  %mul = mul i64 %conv13, 8
  %call14 = call noalias i8* @malloc(i64 %mul) #4
  %18 = bitcast i8* %call14 to i8**
  store i8** %18, i8*** %nargv, align 8
  br label %if.end

if.else:                                          ; preds = %if.then.7
  %19 = load i32, i32* %maxargc, align 4
  %mul15 = mul nsw i32 %19, 2
  store i32 %mul15, i32* %maxargc, align 4
  %20 = load i8**, i8*** %argv, align 8
  %21 = bitcast i8** %20 to i8*
  %22 = load i32, i32* %maxargc, align 4
  %conv16 = sext i32 %22 to i64
  %mul17 = mul i64 %conv16, 8
  %call18 = call i8* @realloc(i8* %21, i64 %mul17) #4
  %23 = bitcast i8* %call18 to i8**
  store i8** %23, i8*** %nargv, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %cond.end
  %24 = load i8**, i8*** %nargv, align 8
  %cmp19 = icmp eq i8** %24, null
  br i1 %cmp19, label %if.then.21, label %if.end.26

if.then.21:                                       ; preds = %if.end
  %25 = load i8**, i8*** %argv, align 8
  %cmp22 = icmp ne i8** %25, null
  br i1 %cmp22, label %if.then.24, label %if.end.25

if.then.24:                                       ; preds = %if.then.21
  %26 = load i8**, i8*** %argv, align 8
  call void @freeargv(i8** %26)
  store i8** null, i8*** %argv, align 8
  br label %if.end.25

if.end.25:                                        ; preds = %if.then.24, %if.then.21
  br label %do.end

if.end.26:                                        ; preds = %if.end
  %27 = load i8**, i8*** %nargv, align 8
  store i8** %27, i8*** %argv, align 8
  %28 = load i32*, i32** %argc.addr, align 8
  %29 = load i32, i32* %28, align 4
  %idxprom27 = sext i32 %29 to i64
  %30 = load i8**, i8*** %argv, align 8
  %arrayidx28 = getelementptr inbounds i8*, i8** %30, i64 %idxprom27
  store i8* null, i8** %arrayidx28, align 8
  br label %if.end.29

if.end.29:                                        ; preds = %if.end.26, %lor.lhs.false
  %31 = load i8*, i8** %copybuf, align 8
  store i8* %31, i8** %arg, align 8
  br label %while.cond.30

while.cond.30:                                    ; preds = %if.end.96, %if.end.29
  %32 = load i8*, i8** %input.addr, align 8
  %33 = load i8, i8* %32, align 1
  %conv31 = sext i8 %33 to i32
  %cmp32 = icmp ne i32 %conv31, 0
  br i1 %cmp32, label %while.body.34, label %while.end.97

while.body.34:                                    ; preds = %while.cond.30
  %34 = load i8*, i8** %input.addr, align 8
  %35 = load i8, i8* %34, align 1
  %conv35 = sext i8 %35 to i32
  %idxprom36 = sext i32 %conv35 to i64
  %call37 = call i16** @__ctype_b_loc() #6
  %36 = load i16*, i16** %call37, align 8
  %arrayidx38 = getelementptr inbounds i16, i16* %36, i64 %idxprom36
  %37 = load i16, i16* %arrayidx38, align 2
  %conv39 = zext i16 %37 to i32
  %and40 = and i32 %conv39, 8192
  %tobool41 = icmp ne i32 %and40, 0
  br i1 %tobool41, label %land.lhs.true, label %if.else.48

land.lhs.true:                                    ; preds = %while.body.34
  %38 = load i32, i32* %squote, align 4
  %tobool42 = icmp ne i32 %38, 0
  br i1 %tobool42, label %if.else.48, label %land.lhs.true.43

land.lhs.true.43:                                 ; preds = %land.lhs.true
  %39 = load i32, i32* %dquote, align 4
  %tobool44 = icmp ne i32 %39, 0
  br i1 %tobool44, label %if.else.48, label %land.lhs.true.45

land.lhs.true.45:                                 ; preds = %land.lhs.true.43
  %40 = load i32, i32* %bsquote, align 4
  %tobool46 = icmp ne i32 %40, 0
  br i1 %tobool46, label %if.else.48, label %if.then.47

if.then.47:                                       ; preds = %land.lhs.true.45
  br label %while.end.97

if.else.48:                                       ; preds = %land.lhs.true.45, %land.lhs.true.43, %land.lhs.true, %while.body.34
  %41 = load i32, i32* %bsquote, align 4
  %tobool49 = icmp ne i32 %41, 0
  br i1 %tobool49, label %if.then.50, label %if.else.52

if.then.50:                                       ; preds = %if.else.48
  store i32 0, i32* %bsquote, align 4
  %42 = load i8*, i8** %input.addr, align 8
  %43 = load i8, i8* %42, align 1
  %44 = load i8*, i8** %arg, align 8
  %incdec.ptr51 = getelementptr inbounds i8, i8* %44, i32 1
  store i8* %incdec.ptr51, i8** %arg, align 8
  store i8 %43, i8* %44, align 1
  br label %if.end.94

if.else.52:                                       ; preds = %if.else.48
  %45 = load i8*, i8** %input.addr, align 8
  %46 = load i8, i8* %45, align 1
  %conv53 = sext i8 %46 to i32
  %cmp54 = icmp eq i32 %conv53, 92
  br i1 %cmp54, label %if.then.56, label %if.else.57

if.then.56:                                       ; preds = %if.else.52
  store i32 1, i32* %bsquote, align 4
  br label %if.end.93

if.else.57:                                       ; preds = %if.else.52
  %47 = load i32, i32* %squote, align 4
  %tobool58 = icmp ne i32 %47, 0
  br i1 %tobool58, label %if.then.59, label %if.else.67

if.then.59:                                       ; preds = %if.else.57
  %48 = load i8*, i8** %input.addr, align 8
  %49 = load i8, i8* %48, align 1
  %conv60 = sext i8 %49 to i32
  %cmp61 = icmp eq i32 %conv60, 39
  br i1 %cmp61, label %if.then.63, label %if.else.64

if.then.63:                                       ; preds = %if.then.59
  store i32 0, i32* %squote, align 4
  br label %if.end.66

if.else.64:                                       ; preds = %if.then.59
  %50 = load i8*, i8** %input.addr, align 8
  %51 = load i8, i8* %50, align 1
  %52 = load i8*, i8** %arg, align 8
  %incdec.ptr65 = getelementptr inbounds i8, i8* %52, i32 1
  store i8* %incdec.ptr65, i8** %arg, align 8
  store i8 %51, i8* %52, align 1
  br label %if.end.66

if.end.66:                                        ; preds = %if.else.64, %if.then.63
  br label %if.end.92

if.else.67:                                       ; preds = %if.else.57
  %53 = load i32, i32* %dquote, align 4
  %tobool68 = icmp ne i32 %53, 0
  br i1 %tobool68, label %if.then.69, label %if.else.77

if.then.69:                                       ; preds = %if.else.67
  %54 = load i8*, i8** %input.addr, align 8
  %55 = load i8, i8* %54, align 1
  %conv70 = sext i8 %55 to i32
  %cmp71 = icmp eq i32 %conv70, 34
  br i1 %cmp71, label %if.then.73, label %if.else.74

if.then.73:                                       ; preds = %if.then.69
  store i32 0, i32* %dquote, align 4
  br label %if.end.76

if.else.74:                                       ; preds = %if.then.69
  %56 = load i8*, i8** %input.addr, align 8
  %57 = load i8, i8* %56, align 1
  %58 = load i8*, i8** %arg, align 8
  %incdec.ptr75 = getelementptr inbounds i8, i8* %58, i32 1
  store i8* %incdec.ptr75, i8** %arg, align 8
  store i8 %57, i8* %58, align 1
  br label %if.end.76

if.end.76:                                        ; preds = %if.else.74, %if.then.73
  br label %if.end.91

if.else.77:                                       ; preds = %if.else.67
  %59 = load i8*, i8** %input.addr, align 8
  %60 = load i8, i8* %59, align 1
  %conv78 = sext i8 %60 to i32
  %cmp79 = icmp eq i32 %conv78, 39
  br i1 %cmp79, label %if.then.81, label %if.else.82

if.then.81:                                       ; preds = %if.else.77
  store i32 1, i32* %squote, align 4
  br label %if.end.90

if.else.82:                                       ; preds = %if.else.77
  %61 = load i8*, i8** %input.addr, align 8
  %62 = load i8, i8* %61, align 1
  %conv83 = sext i8 %62 to i32
  %cmp84 = icmp eq i32 %conv83, 34
  br i1 %cmp84, label %if.then.86, label %if.else.87

if.then.86:                                       ; preds = %if.else.82
  store i32 1, i32* %dquote, align 4
  br label %if.end.89

if.else.87:                                       ; preds = %if.else.82
  %63 = load i8*, i8** %input.addr, align 8
  %64 = load i8, i8* %63, align 1
  %65 = load i8*, i8** %arg, align 8
  %incdec.ptr88 = getelementptr inbounds i8, i8* %65, i32 1
  store i8* %incdec.ptr88, i8** %arg, align 8
  store i8 %64, i8* %65, align 1
  br label %if.end.89

if.end.89:                                        ; preds = %if.else.87, %if.then.86
  br label %if.end.90

if.end.90:                                        ; preds = %if.end.89, %if.then.81
  br label %if.end.91

if.end.91:                                        ; preds = %if.end.90, %if.end.76
  br label %if.end.92

if.end.92:                                        ; preds = %if.end.91, %if.end.66
  br label %if.end.93

if.end.93:                                        ; preds = %if.end.92, %if.then.56
  br label %if.end.94

if.end.94:                                        ; preds = %if.end.93, %if.then.50
  %66 = load i8*, i8** %input.addr, align 8
  %incdec.ptr95 = getelementptr inbounds i8, i8* %66, i32 1
  store i8* %incdec.ptr95, i8** %input.addr, align 8
  br label %if.end.96

if.end.96:                                        ; preds = %if.end.94
  br label %while.cond.30

while.end.97:                                     ; preds = %if.then.47, %while.cond.30
  %67 = load i8*, i8** %arg, align 8
  store i8 0, i8* %67, align 1
  %68 = load i8*, i8** %copybuf, align 8
  %call98 = call noalias i8* @strdup(i8* %68) #4
  %69 = load i32*, i32** %argc.addr, align 8
  %70 = load i32, i32* %69, align 4
  %idxprom99 = sext i32 %70 to i64
  %71 = load i8**, i8*** %argv, align 8
  %arrayidx100 = getelementptr inbounds i8*, i8** %71, i64 %idxprom99
  store i8* %call98, i8** %arrayidx100, align 8
  %72 = load i32*, i32** %argc.addr, align 8
  %73 = load i32, i32* %72, align 4
  %idxprom101 = sext i32 %73 to i64
  %74 = load i8**, i8*** %argv, align 8
  %arrayidx102 = getelementptr inbounds i8*, i8** %74, i64 %idxprom101
  %75 = load i8*, i8** %arrayidx102, align 8
  %cmp103 = icmp eq i8* %75, null
  br i1 %cmp103, label %if.then.105, label %if.end.106

if.then.105:                                      ; preds = %while.end.97
  %76 = load i8**, i8*** %argv, align 8
  call void @freeargv(i8** %76)
  store i8** null, i8*** %argv, align 8
  br label %do.end

if.end.106:                                       ; preds = %while.end.97
  %77 = load i32*, i32** %argc.addr, align 8
  %78 = load i32, i32* %77, align 4
  %inc = add nsw i32 %78, 1
  store i32 %inc, i32* %77, align 4
  %79 = load i32*, i32** %argc.addr, align 8
  %80 = load i32, i32* %79, align 4
  %idxprom107 = sext i32 %80 to i64
  %81 = load i8**, i8*** %argv, align 8
  %arrayidx108 = getelementptr inbounds i8*, i8** %81, i64 %idxprom107
  store i8* null, i8** %arrayidx108, align 8
  br label %while.cond.109

while.cond.109:                                   ; preds = %while.body.117, %if.end.106
  %82 = load i8*, i8** %input.addr, align 8
  %83 = load i8, i8* %82, align 1
  %conv110 = sext i8 %83 to i32
  %idxprom111 = sext i32 %conv110 to i64
  %call112 = call i16** @__ctype_b_loc() #6
  %84 = load i16*, i16** %call112, align 8
  %arrayidx113 = getelementptr inbounds i16, i16* %84, i64 %idxprom111
  %85 = load i16, i16* %arrayidx113, align 2
  %conv114 = zext i16 %85 to i32
  %and115 = and i32 %conv114, 8192
  %tobool116 = icmp ne i32 %and115, 0
  br i1 %tobool116, label %while.body.117, label %while.end.119

while.body.117:                                   ; preds = %while.cond.109
  %86 = load i8*, i8** %input.addr, align 8
  %incdec.ptr118 = getelementptr inbounds i8, i8* %86, i32 1
  store i8* %incdec.ptr118, i8** %input.addr, align 8
  br label %while.cond.109

while.end.119:                                    ; preds = %while.cond.109
  br label %do.cond

do.cond:                                          ; preds = %while.end.119
  %87 = load i8*, i8** %input.addr, align 8
  %88 = load i8, i8* %87, align 1
  %conv120 = sext i8 %88 to i32
  %cmp121 = icmp ne i32 %conv120, 0
  br i1 %cmp121, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond, %if.then.105, %if.end.25
  br label %if.end.123

if.end.123:                                       ; preds = %do.end, %entry
  %89 = load i8**, i8*** %argv, align 8
  ret i8** %89
}

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() #3

; Function Attrs: nounwind
declare i8* @realloc(i8*, i64) #1

; Function Attrs: nounwind
declare noalias i8* @strdup(i8*) #1

; Function Attrs: nounwind uwtable
define i8** @buildargv(i8* %string) #0 {
entry:
  %string.addr = alloca i8*, align 8
  %argc = alloca i32, align 4
  store i8* %string, i8** %string.addr, align 8
  store i32 0, i32* %argc, align 4
  %0 = load i8*, i8** %string.addr, align 8
  %call = call i8** @buildargv_argc(i8* %0, i32* %argc)
  ret i8** %call
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind readonly }
attributes #6 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
