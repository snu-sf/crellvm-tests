; ModuleID = '26.trace.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@tTvect = internal global i8* null, align 8
@tTsize = internal global i32 0, align 4
@DefFlags = internal global i8* null, align 8

; Function Attrs: nounwind uwtable
define void @tTsetup(i8* %vect, i32 %size, i8* %defflags) #0 {
entry:
  %vect.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %defflags.addr = alloca i8*, align 8
  store i8* %vect, i8** %vect.addr, align 8, !tbaa !1
  store i32 %size, i32* %size.addr, align 4, !tbaa !5
  store i8* %defflags, i8** %defflags.addr, align 8, !tbaa !1
  %0 = load i8*, i8** %vect.addr, align 8, !tbaa !1
  store i8* %0, i8** @tTvect, align 8, !tbaa !1
  %1 = load i32, i32* %size.addr, align 4, !tbaa !5
  store i32 %1, i32* @tTsize, align 4, !tbaa !5
  %2 = load i8*, i8** %defflags.addr, align 8, !tbaa !1
  store i8* %2, i8** @DefFlags, align 8, !tbaa !1
  ret void
}

; Function Attrs: nounwind uwtable
define void @tTflag(i8* %s) #0 {
entry:
  %s.addr = alloca i8*, align 8
  store i8* %s, i8** %s.addr, align 8, !tbaa !1
  %0 = load i8*, i8** %s.addr, align 8, !tbaa !1
  %cmp = icmp eq i8* %0, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i8*, i8** %s.addr, align 8, !tbaa !1
  %2 = load i8, i8* %1, align 1, !tbaa !7
  %conv = sext i8 %2 to i32
  %cmp1 = icmp eq i32 %conv, 0
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %3 = load i8*, i8** @DefFlags, align 8, !tbaa !1
  store i8* %3, i8** %s.addr, align 8, !tbaa !1
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false
  br label %for.cond

for.cond:                                         ; preds = %if.end.30, %if.then.19, %if.end
  %4 = load i8*, i8** %s.addr, align 8, !tbaa !1
  %5 = load i8, i8* %4, align 1, !tbaa !7
  %conv3 = sext i8 %5 to i32
  %cmp4 = icmp eq i32 %conv3, 0
  br i1 %cmp4, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %for.cond
  ret void

if.end.7:                                         ; preds = %for.cond
  %6 = load i8*, i8** %s.addr, align 8, !tbaa !1
  %7 = load i8, i8* %6, align 1, !tbaa !7
  %conv8 = sext i8 %7 to i32
  %cmp9 = icmp eq i32 %conv8, 44
  br i1 %cmp9, label %if.then.19, label %lor.lhs.false.11

lor.lhs.false.11:                                 ; preds = %if.end.7
  %8 = load i8*, i8** %s.addr, align 8, !tbaa !1
  %9 = load i8, i8* %8, align 1, !tbaa !7
  %conv12 = sext i8 %9 to i32
  %cmp13 = icmp eq i32 %conv12, 32
  br i1 %cmp13, label %if.then.19, label %lor.lhs.false.15

lor.lhs.false.15:                                 ; preds = %lor.lhs.false.11
  %10 = load i8*, i8** %s.addr, align 8, !tbaa !1
  %11 = load i8, i8* %10, align 1, !tbaa !7
  %conv16 = sext i8 %11 to i32
  %cmp17 = icmp eq i32 %conv16, 9
  br i1 %cmp17, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %lor.lhs.false.15, %lor.lhs.false.11, %if.end.7
  %12 = load i8*, i8** %s.addr, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %12, i32 1
  store i8* %incdec.ptr, i8** %s.addr, align 8, !tbaa !1
  br label %for.cond

if.end.20:                                        ; preds = %lor.lhs.false.15
  %13 = load i8*, i8** %s.addr, align 8, !tbaa !1
  %14 = load i8, i8* %13, align 1, !tbaa !7
  %conv21 = sext i8 %14 to i32
  %and = and i32 %conv21, -128
  %cmp22 = icmp eq i32 %and, 0
  br i1 %cmp22, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.end.20
  %15 = load i8*, i8** %s.addr, align 8, !tbaa !1
  %16 = load i8, i8* %15, align 1, !tbaa !7
  %conv24 = sext i8 %16 to i32
  %idxprom = sext i32 %conv24 to i64
  %call = call i16** @__ctype_b_loc() #4
  %17 = load i16*, i16** %call, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i16, i16* %17, i64 %idxprom
  %18 = load i16, i16* %arrayidx, align 2, !tbaa !8
  %conv25 = zext i16 %18 to i32
  %and26 = and i32 %conv25, 2048
  %tobool = icmp ne i32 %and26, 0
  br i1 %tobool, label %if.then.27, label %if.else

if.then.27:                                       ; preds = %land.lhs.true
  %19 = load i8*, i8** %s.addr, align 8, !tbaa !1
  %call28 = call i8* @tToldflag(i8* %19)
  store i8* %call28, i8** %s.addr, align 8, !tbaa !1
  br label %if.end.30

if.else:                                          ; preds = %land.lhs.true, %if.end.20
  %20 = load i8*, i8** %s.addr, align 8, !tbaa !1
  %call29 = call i8* @tTnewflag(i8* %20)
  store i8* %call29, i8** %s.addr, align 8, !tbaa !1
  br label %if.end.30

if.end.30:                                        ; preds = %if.else, %if.then.27
  br label %for.cond
}

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() #1

; Function Attrs: nounwind uwtable
define internal i8* @tToldflag(i8* %s) #0 {
entry:
  %s.addr = alloca i8*, align 8
  %first = alloca i32, align 4
  %last = alloca i32, align 4
  %i = alloca i32, align 4
  store i8* %s, i8** %s.addr, align 8, !tbaa !1
  %0 = bitcast i32* %first to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = bitcast i32* %last to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #2
  %2 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #2
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %3 = load i8*, i8** %s.addr, align 8, !tbaa !1
  %4 = load i8, i8* %3, align 1, !tbaa !7
  %conv = sext i8 %4 to i32
  %and = and i32 %conv, -128
  %cmp = icmp eq i32 %and, 0
  br i1 %cmp, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %while.cond
  %5 = load i8*, i8** %s.addr, align 8, !tbaa !1
  %6 = load i8, i8* %5, align 1, !tbaa !7
  %conv2 = sext i8 %6 to i32
  %idxprom = sext i32 %conv2 to i64
  %call = call i16** @__ctype_b_loc() #4
  %7 = load i16*, i16** %call, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i16, i16* %7, i64 %idxprom
  %8 = load i16, i16* %arrayidx, align 2, !tbaa !8
  %conv3 = zext i16 %8 to i32
  %and4 = and i32 %conv3, 2048
  %tobool = icmp ne i32 %and4, 0
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true
  %9 = load i32, i32* %i, align 4, !tbaa !5
  %10 = load i32, i32* @tTsize, align 4, !tbaa !5
  %cmp5 = icmp ult i32 %9, %10
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %11 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %cmp5, %land.rhs ]
  br i1 %11, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %12 = load i32, i32* %i, align 4, !tbaa !5
  %mul = mul i32 %12, 10
  %13 = load i8*, i8** %s.addr, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %13, i32 1
  store i8* %incdec.ptr, i8** %s.addr, align 8, !tbaa !1
  %14 = load i8, i8* %13, align 1, !tbaa !7
  %conv7 = sext i8 %14 to i32
  %sub = sub nsw i32 %conv7, 48
  %add = add i32 %mul, %sub
  store i32 %add, i32* %i, align 4, !tbaa !5
  br label %while.cond

while.end:                                        ; preds = %land.end
  br label %while.cond.8

while.cond.8:                                     ; preds = %while.body.25, %while.end
  %15 = load i8*, i8** %s.addr, align 8, !tbaa !1
  %16 = load i8, i8* %15, align 1, !tbaa !7
  %conv9 = sext i8 %16 to i32
  %and10 = and i32 %conv9, -128
  %cmp11 = icmp eq i32 %and10, 0
  br i1 %cmp11, label %land.lhs.true.13, label %land.end.24

land.lhs.true.13:                                 ; preds = %while.cond.8
  %17 = load i8*, i8** %s.addr, align 8, !tbaa !1
  %18 = load i8, i8* %17, align 1, !tbaa !7
  %conv14 = sext i8 %18 to i32
  %idxprom15 = sext i32 %conv14 to i64
  %call16 = call i16** @__ctype_b_loc() #4
  %19 = load i16*, i16** %call16, align 8, !tbaa !1
  %arrayidx17 = getelementptr inbounds i16, i16* %19, i64 %idxprom15
  %20 = load i16, i16* %arrayidx17, align 2, !tbaa !8
  %conv18 = zext i16 %20 to i32
  %and19 = and i32 %conv18, 2048
  %tobool20 = icmp ne i32 %and19, 0
  br i1 %tobool20, label %land.rhs.21, label %land.end.24

land.rhs.21:                                      ; preds = %land.lhs.true.13
  %21 = load i32, i32* %i, align 4, !tbaa !5
  %22 = load i32, i32* @tTsize, align 4, !tbaa !5
  %cmp22 = icmp uge i32 %21, %22
  br label %land.end.24

land.end.24:                                      ; preds = %land.rhs.21, %land.lhs.true.13, %while.cond.8
  %23 = phi i1 [ false, %land.lhs.true.13 ], [ false, %while.cond.8 ], [ %cmp22, %land.rhs.21 ]
  br i1 %23, label %while.body.25, label %while.end.27

while.body.25:                                    ; preds = %land.end.24
  %24 = load i8*, i8** %s.addr, align 8, !tbaa !1
  %incdec.ptr26 = getelementptr inbounds i8, i8* %24, i32 1
  store i8* %incdec.ptr26, i8** %s.addr, align 8, !tbaa !1
  br label %while.cond.8

while.end.27:                                     ; preds = %land.end.24
  %25 = load i32, i32* %i, align 4, !tbaa !5
  store i32 %25, i32* %first, align 4, !tbaa !5
  %26 = load i8*, i8** %s.addr, align 8, !tbaa !1
  %27 = load i8, i8* %26, align 1, !tbaa !7
  %conv28 = sext i8 %27 to i32
  %cmp29 = icmp eq i32 %conv28, 45
  br i1 %cmp29, label %if.then, label %if.end

if.then:                                          ; preds = %while.end.27
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %while.cond.31

while.cond.31:                                    ; preds = %while.body.49, %if.then
  %28 = load i8*, i8** %s.addr, align 8, !tbaa !1
  %incdec.ptr32 = getelementptr inbounds i8, i8* %28, i32 1
  store i8* %incdec.ptr32, i8** %s.addr, align 8, !tbaa !1
  %29 = load i8, i8* %incdec.ptr32, align 1, !tbaa !7
  %conv33 = sext i8 %29 to i32
  %and34 = and i32 %conv33, -128
  %cmp35 = icmp eq i32 %and34, 0
  br i1 %cmp35, label %land.lhs.true.37, label %land.end.48

land.lhs.true.37:                                 ; preds = %while.cond.31
  %30 = load i8*, i8** %s.addr, align 8, !tbaa !1
  %31 = load i8, i8* %30, align 1, !tbaa !7
  %conv38 = sext i8 %31 to i32
  %idxprom39 = sext i32 %conv38 to i64
  %call40 = call i16** @__ctype_b_loc() #4
  %32 = load i16*, i16** %call40, align 8, !tbaa !1
  %arrayidx41 = getelementptr inbounds i16, i16* %32, i64 %idxprom39
  %33 = load i16, i16* %arrayidx41, align 2, !tbaa !8
  %conv42 = zext i16 %33 to i32
  %and43 = and i32 %conv42, 2048
  %tobool44 = icmp ne i32 %and43, 0
  br i1 %tobool44, label %land.rhs.45, label %land.end.48

land.rhs.45:                                      ; preds = %land.lhs.true.37
  %34 = load i32, i32* %i, align 4, !tbaa !5
  %35 = load i32, i32* @tTsize, align 4, !tbaa !5
  %cmp46 = icmp ult i32 %34, %35
  br label %land.end.48

land.end.48:                                      ; preds = %land.rhs.45, %land.lhs.true.37, %while.cond.31
  %36 = phi i1 [ false, %land.lhs.true.37 ], [ false, %while.cond.31 ], [ %cmp46, %land.rhs.45 ]
  br i1 %36, label %while.body.49, label %while.end.54

while.body.49:                                    ; preds = %land.end.48
  %37 = load i32, i32* %i, align 4, !tbaa !5
  %mul50 = mul i32 %37, 10
  %38 = load i8*, i8** %s.addr, align 8, !tbaa !1
  %39 = load i8, i8* %38, align 1, !tbaa !7
  %conv51 = sext i8 %39 to i32
  %sub52 = sub nsw i32 %conv51, 48
  %add53 = add i32 %mul50, %sub52
  store i32 %add53, i32* %i, align 4, !tbaa !5
  br label %while.cond.31

while.end.54:                                     ; preds = %land.end.48
  br label %while.cond.55

while.cond.55:                                    ; preds = %while.body.72, %while.end.54
  %40 = load i8*, i8** %s.addr, align 8, !tbaa !1
  %41 = load i8, i8* %40, align 1, !tbaa !7
  %conv56 = sext i8 %41 to i32
  %and57 = and i32 %conv56, -128
  %cmp58 = icmp eq i32 %and57, 0
  br i1 %cmp58, label %land.lhs.true.60, label %land.end.71

land.lhs.true.60:                                 ; preds = %while.cond.55
  %42 = load i8*, i8** %s.addr, align 8, !tbaa !1
  %43 = load i8, i8* %42, align 1, !tbaa !7
  %conv61 = sext i8 %43 to i32
  %idxprom62 = sext i32 %conv61 to i64
  %call63 = call i16** @__ctype_b_loc() #4
  %44 = load i16*, i16** %call63, align 8, !tbaa !1
  %arrayidx64 = getelementptr inbounds i16, i16* %44, i64 %idxprom62
  %45 = load i16, i16* %arrayidx64, align 2, !tbaa !8
  %conv65 = zext i16 %45 to i32
  %and66 = and i32 %conv65, 2048
  %tobool67 = icmp ne i32 %and66, 0
  br i1 %tobool67, label %land.rhs.68, label %land.end.71

land.rhs.68:                                      ; preds = %land.lhs.true.60
  %46 = load i32, i32* %i, align 4, !tbaa !5
  %47 = load i32, i32* @tTsize, align 4, !tbaa !5
  %cmp69 = icmp uge i32 %46, %47
  br label %land.end.71

land.end.71:                                      ; preds = %land.rhs.68, %land.lhs.true.60, %while.cond.55
  %48 = phi i1 [ false, %land.lhs.true.60 ], [ false, %while.cond.55 ], [ %cmp69, %land.rhs.68 ]
  br i1 %48, label %while.body.72, label %while.end.74

while.body.72:                                    ; preds = %land.end.71
  %49 = load i8*, i8** %s.addr, align 8, !tbaa !1
  %incdec.ptr73 = getelementptr inbounds i8, i8* %49, i32 1
  store i8* %incdec.ptr73, i8** %s.addr, align 8, !tbaa !1
  br label %while.cond.55

while.end.74:                                     ; preds = %land.end.71
  br label %if.end

if.end:                                           ; preds = %while.end.74, %while.end.27
  %50 = load i32, i32* %i, align 4, !tbaa !5
  store i32 %50, i32* %last, align 4, !tbaa !5
  store i32 1, i32* %i, align 4, !tbaa !5
  %51 = load i8*, i8** %s.addr, align 8, !tbaa !1
  %52 = load i8, i8* %51, align 1, !tbaa !7
  %conv75 = sext i8 %52 to i32
  %cmp76 = icmp eq i32 %conv75, 46
  br i1 %cmp76, label %if.then.78, label %if.end.100

if.then.78:                                       ; preds = %if.end
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %while.cond.79

while.cond.79:                                    ; preds = %while.body.94, %if.then.78
  %53 = load i8*, i8** %s.addr, align 8, !tbaa !1
  %incdec.ptr80 = getelementptr inbounds i8, i8* %53, i32 1
  store i8* %incdec.ptr80, i8** %s.addr, align 8, !tbaa !1
  %54 = load i8, i8* %incdec.ptr80, align 1, !tbaa !7
  %conv81 = sext i8 %54 to i32
  %and82 = and i32 %conv81, -128
  %cmp83 = icmp eq i32 %and82, 0
  br i1 %cmp83, label %land.rhs.85, label %land.end.93

land.rhs.85:                                      ; preds = %while.cond.79
  %55 = load i8*, i8** %s.addr, align 8, !tbaa !1
  %56 = load i8, i8* %55, align 1, !tbaa !7
  %conv86 = sext i8 %56 to i32
  %idxprom87 = sext i32 %conv86 to i64
  %call88 = call i16** @__ctype_b_loc() #4
  %57 = load i16*, i16** %call88, align 8, !tbaa !1
  %arrayidx89 = getelementptr inbounds i16, i16* %57, i64 %idxprom87
  %58 = load i16, i16* %arrayidx89, align 2, !tbaa !8
  %conv90 = zext i16 %58 to i32
  %and91 = and i32 %conv90, 2048
  %tobool92 = icmp ne i32 %and91, 0
  br label %land.end.93

land.end.93:                                      ; preds = %land.rhs.85, %while.cond.79
  %59 = phi i1 [ false, %while.cond.79 ], [ %tobool92, %land.rhs.85 ]
  br i1 %59, label %while.body.94, label %while.end.99

while.body.94:                                    ; preds = %land.end.93
  %60 = load i32, i32* %i, align 4, !tbaa !5
  %mul95 = mul i32 %60, 10
  %61 = load i8*, i8** %s.addr, align 8, !tbaa !1
  %62 = load i8, i8* %61, align 1, !tbaa !7
  %conv96 = sext i8 %62 to i32
  %sub97 = sub nsw i32 %conv96, 48
  %add98 = add i32 %mul95, %sub97
  store i32 %add98, i32* %i, align 4, !tbaa !5
  br label %while.cond.79

while.end.99:                                     ; preds = %land.end.93
  br label %if.end.100

if.end.100:                                       ; preds = %while.end.99, %if.end
  %63 = load i32, i32* %first, align 4, !tbaa !5
  %64 = load i32, i32* @tTsize, align 4, !tbaa !5
  %cmp101 = icmp uge i32 %63, %64
  br i1 %cmp101, label %if.then.103, label %if.end.105

if.then.103:                                      ; preds = %if.end.100
  %65 = load i32, i32* @tTsize, align 4, !tbaa !5
  %sub104 = sub i32 %65, 1
  store i32 %sub104, i32* %first, align 4, !tbaa !5
  br label %if.end.105

if.end.105:                                       ; preds = %if.then.103, %if.end.100
  %66 = load i32, i32* %last, align 4, !tbaa !5
  %67 = load i32, i32* @tTsize, align 4, !tbaa !5
  %cmp106 = icmp uge i32 %66, %67
  br i1 %cmp106, label %if.then.108, label %if.end.110

if.then.108:                                      ; preds = %if.end.105
  %68 = load i32, i32* @tTsize, align 4, !tbaa !5
  %sub109 = sub i32 %68, 1
  store i32 %sub109, i32* %last, align 4, !tbaa !5
  br label %if.end.110

if.end.110:                                       ; preds = %if.then.108, %if.end.105
  br label %while.cond.111

while.cond.111:                                   ; preds = %while.body.114, %if.end.110
  %69 = load i32, i32* %first, align 4, !tbaa !5
  %70 = load i32, i32* %last, align 4, !tbaa !5
  %cmp112 = icmp ule i32 %69, %70
  br i1 %cmp112, label %while.body.114, label %while.end.118

while.body.114:                                   ; preds = %while.cond.111
  %71 = load i32, i32* %i, align 4, !tbaa !5
  %conv115 = trunc i32 %71 to i8
  %72 = load i32, i32* %first, align 4, !tbaa !5
  %inc = add i32 %72, 1
  store i32 %inc, i32* %first, align 4, !tbaa !5
  %idxprom116 = zext i32 %72 to i64
  %73 = load i8*, i8** @tTvect, align 8, !tbaa !1
  %arrayidx117 = getelementptr inbounds i8, i8* %73, i64 %idxprom116
  store i8 %conv115, i8* %arrayidx117, align 1, !tbaa !7
  br label %while.cond.111

while.end.118:                                    ; preds = %while.cond.111
  br label %while.cond.119

while.cond.119:                                   ; preds = %while.body.136, %while.end.118
  %74 = load i8*, i8** %s.addr, align 8, !tbaa !1
  %75 = load i8, i8* %74, align 1, !tbaa !7
  %conv120 = sext i8 %75 to i32
  %cmp121 = icmp ne i32 %conv120, 0
  br i1 %cmp121, label %land.lhs.true.123, label %land.end.135

land.lhs.true.123:                                ; preds = %while.cond.119
  %76 = load i8*, i8** %s.addr, align 8, !tbaa !1
  %77 = load i8, i8* %76, align 1, !tbaa !7
  %conv124 = sext i8 %77 to i32
  %cmp125 = icmp ne i32 %conv124, 44
  br i1 %cmp125, label %land.lhs.true.127, label %land.end.135

land.lhs.true.127:                                ; preds = %land.lhs.true.123
  %78 = load i8*, i8** %s.addr, align 8, !tbaa !1
  %79 = load i8, i8* %78, align 1, !tbaa !7
  %conv128 = sext i8 %79 to i32
  %cmp129 = icmp ne i32 %conv128, 32
  br i1 %cmp129, label %land.rhs.131, label %land.end.135

land.rhs.131:                                     ; preds = %land.lhs.true.127
  %80 = load i8*, i8** %s.addr, align 8, !tbaa !1
  %81 = load i8, i8* %80, align 1, !tbaa !7
  %conv132 = sext i8 %81 to i32
  %cmp133 = icmp ne i32 %conv132, 9
  br label %land.end.135

land.end.135:                                     ; preds = %land.rhs.131, %land.lhs.true.127, %land.lhs.true.123, %while.cond.119
  %82 = phi i1 [ false, %land.lhs.true.127 ], [ false, %land.lhs.true.123 ], [ false, %while.cond.119 ], [ %cmp133, %land.rhs.131 ]
  br i1 %82, label %while.body.136, label %while.end.138

while.body.136:                                   ; preds = %land.end.135
  %83 = load i8*, i8** %s.addr, align 8, !tbaa !1
  %incdec.ptr137 = getelementptr inbounds i8, i8* %83, i32 1
  store i8* %incdec.ptr137, i8** %s.addr, align 8, !tbaa !1
  br label %while.cond.119

while.end.138:                                    ; preds = %land.end.135
  %84 = load i8*, i8** %s.addr, align 8, !tbaa !1
  %85 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %85) #2
  %86 = bitcast i32* %last to i8*
  call void @llvm.lifetime.end(i64 4, i8* %86) #2
  %87 = bitcast i32* %first to i8*
  call void @llvm.lifetime.end(i64 4, i8* %87) #2
  ret i8* %84
}

; Function Attrs: nounwind uwtable
define internal i8* @tTnewflag(i8* %s) #0 {
entry:
  %s.addr = alloca i8*, align 8
  %pat = alloca i8*, align 8
  %endpat = alloca i8*, align 8
  %level = alloca i32, align 4
  store i8* %s, i8** %s.addr, align 8, !tbaa !1
  %0 = bitcast i8** %pat to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = bitcast i8** %endpat to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #2
  %2 = bitcast i32* %level to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #2
  %3 = load i8*, i8** %s.addr, align 8, !tbaa !1
  store i8* %3, i8** %pat, align 8, !tbaa !1
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %4 = load i8*, i8** %s.addr, align 8, !tbaa !1
  %5 = load i8, i8* %4, align 1, !tbaa !7
  %conv = sext i8 %5 to i32
  %cmp = icmp ne i32 %conv, 0
  br i1 %cmp, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %while.cond
  %6 = load i8*, i8** %s.addr, align 8, !tbaa !1
  %7 = load i8, i8* %6, align 1, !tbaa !7
  %conv2 = sext i8 %7 to i32
  %cmp3 = icmp ne i32 %conv2, 44
  br i1 %cmp3, label %land.lhs.true.5, label %land.end

land.lhs.true.5:                                  ; preds = %land.lhs.true
  %8 = load i8*, i8** %s.addr, align 8, !tbaa !1
  %9 = load i8, i8* %8, align 1, !tbaa !7
  %conv6 = sext i8 %9 to i32
  %cmp7 = icmp ne i32 %conv6, 32
  br i1 %cmp7, label %land.lhs.true.9, label %land.end

land.lhs.true.9:                                  ; preds = %land.lhs.true.5
  %10 = load i8*, i8** %s.addr, align 8, !tbaa !1
  %11 = load i8, i8* %10, align 1, !tbaa !7
  %conv10 = sext i8 %11 to i32
  %cmp11 = icmp ne i32 %conv10, 9
  br i1 %cmp11, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true.9
  %12 = load i8*, i8** %s.addr, align 8, !tbaa !1
  %13 = load i8, i8* %12, align 1, !tbaa !7
  %conv13 = sext i8 %13 to i32
  %cmp14 = icmp ne i32 %conv13, 46
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true.9, %land.lhs.true.5, %land.lhs.true, %while.cond
  %14 = phi i1 [ false, %land.lhs.true.9 ], [ false, %land.lhs.true.5 ], [ false, %land.lhs.true ], [ false, %while.cond ], [ %cmp14, %land.rhs ]
  br i1 %14, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %15 = load i8*, i8** %s.addr, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %15, i32 1
  store i8* %incdec.ptr, i8** %s.addr, align 8, !tbaa !1
  br label %while.cond

while.end:                                        ; preds = %land.end
  %16 = load i8*, i8** %s.addr, align 8, !tbaa !1
  store i8* %16, i8** %endpat, align 8, !tbaa !1
  %17 = load i8*, i8** %s.addr, align 8, !tbaa !1
  %18 = load i8, i8* %17, align 1, !tbaa !7
  %conv16 = sext i8 %18 to i32
  %cmp17 = icmp eq i32 %conv16, 46
  br i1 %cmp17, label %if.then, label %if.else

if.then:                                          ; preds = %while.end
  %19 = load i8*, i8** %s.addr, align 8, !tbaa !1
  %incdec.ptr19 = getelementptr inbounds i8, i8* %19, i32 1
  store i8* %incdec.ptr19, i8** %s.addr, align 8, !tbaa !1
  store i32 0, i32* %level, align 4, !tbaa !5
  br label %while.cond.20

while.cond.20:                                    ; preds = %while.body.29, %if.then
  %20 = load i8*, i8** %s.addr, align 8, !tbaa !1
  %21 = load i8, i8* %20, align 1, !tbaa !7
  %conv21 = sext i8 %21 to i32
  %and = and i32 %conv21, -128
  %cmp22 = icmp eq i32 %and, 0
  br i1 %cmp22, label %land.rhs.24, label %land.end.28

land.rhs.24:                                      ; preds = %while.cond.20
  %22 = load i8*, i8** %s.addr, align 8, !tbaa !1
  %23 = load i8, i8* %22, align 1, !tbaa !7
  %conv25 = sext i8 %23 to i32
  %idxprom = sext i32 %conv25 to i64
  %call = call i16** @__ctype_b_loc() #4
  %24 = load i16*, i16** %call, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i16, i16* %24, i64 %idxprom
  %25 = load i16, i16* %arrayidx, align 2, !tbaa !8
  %conv26 = zext i16 %25 to i32
  %and27 = and i32 %conv26, 2048
  %tobool = icmp ne i32 %and27, 0
  br label %land.end.28

land.end.28:                                      ; preds = %land.rhs.24, %while.cond.20
  %26 = phi i1 [ false, %while.cond.20 ], [ %tobool, %land.rhs.24 ]
  br i1 %26, label %while.body.29, label %while.end.32

while.body.29:                                    ; preds = %land.end.28
  %27 = load i32, i32* %level, align 4, !tbaa !5
  %mul = mul nsw i32 %27, 10
  %28 = load i8*, i8** %s.addr, align 8, !tbaa !1
  %29 = load i8, i8* %28, align 1, !tbaa !7
  %conv30 = sext i8 %29 to i32
  %sub = sub nsw i32 %conv30, 48
  %add = add nsw i32 %mul, %sub
  store i32 %add, i32* %level, align 4, !tbaa !5
  %30 = load i8*, i8** %s.addr, align 8, !tbaa !1
  %incdec.ptr31 = getelementptr inbounds i8, i8* %30, i32 1
  store i8* %incdec.ptr31, i8** %s.addr, align 8, !tbaa !1
  br label %while.cond.20

while.end.32:                                     ; preds = %land.end.28
  %31 = load i32, i32* %level, align 4, !tbaa !5
  %cmp33 = icmp slt i32 %31, 0
  br i1 %cmp33, label %if.then.35, label %if.end

if.then.35:                                       ; preds = %while.end.32
  store i32 0, i32* %level, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then.35, %while.end.32
  br label %if.end.36

if.else:                                          ; preds = %while.end
  store i32 1, i32* %level, align 4, !tbaa !5
  br label %if.end.36

if.end.36:                                        ; preds = %if.else, %if.end
  %32 = load i8*, i8** %pat, align 8, !tbaa !1
  %33 = load i8*, i8** %endpat, align 8, !tbaa !1
  %34 = load i8*, i8** %pat, align 8, !tbaa !1
  %sub.ptr.lhs.cast = ptrtoint i8* %33 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %34 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %call37 = call i8* @sm_strndup_x(i8* %32, i64 %sub.ptr.sub)
  %35 = load i32, i32* %level, align 4, !tbaa !5
  call void @sm_debug_addsetting_x(i8* %call37, i32 %35)
  br label %while.cond.38

while.cond.38:                                    ; preds = %while.body.55, %if.end.36
  %36 = load i8*, i8** %s.addr, align 8, !tbaa !1
  %37 = load i8, i8* %36, align 1, !tbaa !7
  %conv39 = sext i8 %37 to i32
  %cmp40 = icmp ne i32 %conv39, 0
  br i1 %cmp40, label %land.lhs.true.42, label %land.end.54

land.lhs.true.42:                                 ; preds = %while.cond.38
  %38 = load i8*, i8** %s.addr, align 8, !tbaa !1
  %39 = load i8, i8* %38, align 1, !tbaa !7
  %conv43 = sext i8 %39 to i32
  %cmp44 = icmp ne i32 %conv43, 44
  br i1 %cmp44, label %land.lhs.true.46, label %land.end.54

land.lhs.true.46:                                 ; preds = %land.lhs.true.42
  %40 = load i8*, i8** %s.addr, align 8, !tbaa !1
  %41 = load i8, i8* %40, align 1, !tbaa !7
  %conv47 = sext i8 %41 to i32
  %cmp48 = icmp ne i32 %conv47, 32
  br i1 %cmp48, label %land.rhs.50, label %land.end.54

land.rhs.50:                                      ; preds = %land.lhs.true.46
  %42 = load i8*, i8** %s.addr, align 8, !tbaa !1
  %43 = load i8, i8* %42, align 1, !tbaa !7
  %conv51 = sext i8 %43 to i32
  %cmp52 = icmp ne i32 %conv51, 9
  br label %land.end.54

land.end.54:                                      ; preds = %land.rhs.50, %land.lhs.true.46, %land.lhs.true.42, %while.cond.38
  %44 = phi i1 [ false, %land.lhs.true.46 ], [ false, %land.lhs.true.42 ], [ false, %while.cond.38 ], [ %cmp52, %land.rhs.50 ]
  br i1 %44, label %while.body.55, label %while.end.57

while.body.55:                                    ; preds = %land.end.54
  %45 = load i8*, i8** %s.addr, align 8, !tbaa !1
  %incdec.ptr56 = getelementptr inbounds i8, i8* %45, i32 1
  store i8* %incdec.ptr56, i8** %s.addr, align 8, !tbaa !1
  br label %while.cond.38

while.end.57:                                     ; preds = %land.end.54
  %46 = load i8*, i8** %s.addr, align 8, !tbaa !1
  %47 = bitcast i32* %level to i8*
  call void @llvm.lifetime.end(i64 4, i8* %47) #2
  %48 = bitcast i8** %endpat to i8*
  call void @llvm.lifetime.end(i64 8, i8* %48) #2
  %49 = bitcast i8** %pat to i8*
  call void @llvm.lifetime.end(i64 8, i8* %49) #2
  ret i8* %46
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #2

declare void @sm_debug_addsetting_x(i8*, i32) #3

declare i8* @sm_strndup_x(i8*, i64) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"any pointer", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !3, i64 0}
!7 = !{!3, !3, i64 0}
!8 = !{!9, !9, i64 0}
!9 = !{!"short", !3, i64 0}
