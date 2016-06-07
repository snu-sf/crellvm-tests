; ModuleID = 'seqencode.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iupactype = type { i8, i8, i8, i8 }

@iupac = external global [0 x %struct.iupactype], align 1

; Function Attrs: nounwind uwtable
define i32 @seqcmp(i8* %s1, i8* %s2, i32 %allow) #0 {
entry:
  %s1.addr = alloca i8*, align 8
  %s2.addr = alloca i8*, align 8
  %allow.addr = alloca i32, align 4
  %mmat = alloca i32, align 4
  store i8* %s1, i8** %s1.addr, align 8
  store i8* %s2, i8** %s2.addr, align 8
  store i32 %allow, i32* %allow.addr, align 4
  store i32 0, i32* %mmat, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %0 = load i8*, i8** %s1.addr, align 8
  %1 = load i8, i8* %0, align 1
  %conv = sext i8 %1 to i32
  %cmp = icmp ne i32 %conv, 0
  br i1 %cmp, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %while.cond
  %2 = load i8*, i8** %s2.addr, align 8
  %3 = load i8, i8* %2, align 1
  %conv2 = sext i8 %3 to i32
  %cmp3 = icmp ne i32 %conv2, 0
  br i1 %cmp3, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true
  %4 = load i32, i32* %mmat, align 4
  %5 = load i32, i32* %allow.addr, align 4
  %cmp5 = icmp sle i32 %4, %5
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %6 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %cmp5, %land.rhs ]
  br i1 %6, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %7 = load i8*, i8** %s1.addr, align 8
  %8 = load i8, i8* %7, align 1
  %conv7 = sext i8 %8 to i32
  %9 = load i8*, i8** %s2.addr, align 8
  %10 = load i8, i8* %9, align 1
  %conv8 = sext i8 %10 to i32
  %and = and i32 %conv7, %conv8
  %11 = load i8*, i8** %s2.addr, align 8
  %12 = load i8, i8* %11, align 1
  %conv9 = sext i8 %12 to i32
  %cmp10 = icmp eq i32 %and, %conv9
  br i1 %cmp10, label %if.end, label %if.then

if.then:                                          ; preds = %while.body
  %13 = load i32, i32* %mmat, align 4
  %inc = add nsw i32 %13, 1
  store i32 %inc, i32* %mmat, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body
  %14 = load i8*, i8** %s1.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %14, i32 1
  store i8* %incdec.ptr, i8** %s1.addr, align 8
  %15 = load i8*, i8** %s2.addr, align 8
  %incdec.ptr12 = getelementptr inbounds i8, i8* %15, i32 1
  store i8* %incdec.ptr12, i8** %s2.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %land.end
  br label %while.cond.13

while.cond.13:                                    ; preds = %while.body.22, %while.end
  %16 = load i8*, i8** %s1.addr, align 8
  %incdec.ptr14 = getelementptr inbounds i8, i8* %16, i32 1
  store i8* %incdec.ptr14, i8** %s1.addr, align 8
  %17 = load i8, i8* %16, align 1
  %conv15 = sext i8 %17 to i32
  %cmp16 = icmp ne i32 %conv15, 0
  br i1 %cmp16, label %land.rhs.18, label %land.end.21

land.rhs.18:                                      ; preds = %while.cond.13
  %18 = load i32, i32* %mmat, align 4
  %19 = load i32, i32* %allow.addr, align 4
  %cmp19 = icmp sle i32 %18, %19
  br label %land.end.21

land.end.21:                                      ; preds = %land.rhs.18, %while.cond.13
  %20 = phi i1 [ false, %while.cond.13 ], [ %cmp19, %land.rhs.18 ]
  br i1 %20, label %while.body.22, label %while.end.24

while.body.22:                                    ; preds = %land.end.21
  %21 = load i32, i32* %mmat, align 4
  %inc23 = add nsw i32 %21, 1
  store i32 %inc23, i32* %mmat, align 4
  br label %while.cond.13

while.end.24:                                     ; preds = %land.end.21
  %22 = load i32, i32* %mmat, align 4
  ret i32 %22
}

; Function Attrs: nounwind uwtable
define i32 @seqncmp(i8* %s1, i8* %s2, i32 %n, i32 %allow) #0 {
entry:
  %retval = alloca i32, align 4
  %s1.addr = alloca i8*, align 8
  %s2.addr = alloca i8*, align 8
  %n.addr = alloca i32, align 4
  %allow.addr = alloca i32, align 4
  %mmat = alloca i32, align 4
  store i8* %s1, i8** %s1.addr, align 8
  store i8* %s2, i8** %s2.addr, align 8
  store i32 %n, i32* %n.addr, align 4
  store i32 %allow, i32* %allow.addr, align 4
  store i32 0, i32* %mmat, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %0 = load i8*, i8** %s2.addr, align 8
  %1 = load i8, i8* %0, align 1
  %conv = sext i8 %1 to i32
  %cmp = icmp ne i32 %conv, 0
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %2 = load i32, i32* %n.addr, align 4
  %dec = add nsw i32 %2, -1
  store i32 %dec, i32* %n.addr, align 4
  %cmp2 = icmp ne i32 %2, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %3 = phi i1 [ false, %while.cond ], [ %cmp2, %land.rhs ]
  br i1 %3, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %4 = load i8*, i8** %s1.addr, align 8
  %5 = load i8, i8* %4, align 1
  %conv4 = sext i8 %5 to i32
  %6 = load i8*, i8** %s2.addr, align 8
  %7 = load i8, i8* %6, align 1
  %conv5 = sext i8 %7 to i32
  %and = and i32 %conv4, %conv5
  %8 = load i8*, i8** %s2.addr, align 8
  %9 = load i8, i8* %8, align 1
  %conv6 = sext i8 %9 to i32
  %cmp7 = icmp eq i32 %and, %conv6
  br i1 %cmp7, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %while.body
  %10 = load i32, i32* %mmat, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, i32* %mmat, align 4
  %11 = load i32, i32* %allow.addr, align 4
  %cmp9 = icmp sgt i32 %inc, %11
  br i1 %cmp9, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %12 = load i32, i32* %mmat, align 4
  store i32 %12, i32* %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true, %while.body
  %13 = load i8*, i8** %s1.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %13, i32 1
  store i8* %incdec.ptr, i8** %s1.addr, align 8
  %14 = load i8*, i8** %s2.addr, align 8
  %incdec.ptr11 = getelementptr inbounds i8, i8* %14, i32 1
  store i8* %incdec.ptr11, i8** %s2.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %land.end
  br label %while.cond.12

while.cond.12:                                    ; preds = %while.body.25, %while.end
  %15 = load i32, i32* %n.addr, align 4
  %dec13 = add nsw i32 %15, -1
  store i32 %dec13, i32* %n.addr, align 4
  %cmp14 = icmp ne i32 %15, 0
  br i1 %cmp14, label %land.lhs.true.16, label %land.end.24

land.lhs.true.16:                                 ; preds = %while.cond.12
  %16 = load i8*, i8** %s1.addr, align 8
  %incdec.ptr17 = getelementptr inbounds i8, i8* %16, i32 1
  store i8* %incdec.ptr17, i8** %s1.addr, align 8
  %17 = load i8, i8* %16, align 1
  %conv18 = sext i8 %17 to i32
  %cmp19 = icmp ne i32 %conv18, 0
  br i1 %cmp19, label %land.rhs.21, label %land.end.24

land.rhs.21:                                      ; preds = %land.lhs.true.16
  %18 = load i32, i32* %mmat, align 4
  %19 = load i32, i32* %allow.addr, align 4
  %cmp22 = icmp sle i32 %18, %19
  br label %land.end.24

land.end.24:                                      ; preds = %land.rhs.21, %land.lhs.true.16, %while.cond.12
  %20 = phi i1 [ false, %land.lhs.true.16 ], [ false, %while.cond.12 ], [ %cmp22, %land.rhs.21 ]
  br i1 %20, label %while.body.25, label %while.end.27

while.body.25:                                    ; preds = %land.end.24
  %21 = load i32, i32* %mmat, align 4
  %inc26 = add nsw i32 %21, 1
  store i32 %inc26, i32* %mmat, align 4
  br label %while.cond.12

while.end.27:                                     ; preds = %land.end.24
  %22 = load i32, i32* %mmat, align 4
  store i32 %22, i32* %retval
  br label %return

return:                                           ; preds = %while.end.27, %if.then
  %23 = load i32, i32* %retval
  ret i32 %23
}

; Function Attrs: nounwind uwtable
define i32 @seqencode(i8* %codeseq, i8* %str) #0 {
entry:
  %retval = alloca i32, align 4
  %codeseq.addr = alloca i8*, align 8
  %str.addr = alloca i8*, align 8
  %ptr = alloca i8*, align 8
  %idx = alloca i32, align 4
  store i8* %codeseq, i8** %codeseq.addr, align 8
  store i8* %str, i8** %str.addr, align 8
  %0 = load i8*, i8** %codeseq.addr, align 8
  store i8* %0, i8** %ptr, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.20, %entry
  %1 = load i8*, i8** %str.addr, align 8
  %2 = load i8, i8* %1, align 1
  %conv = sext i8 %2 to i32
  %cmp = icmp ne i32 %conv, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load i8*, i8** %str.addr, align 8
  %4 = load i8, i8* %3, align 1
  %conv2 = sext i8 %4 to i32
  %idxprom = sext i32 %conv2 to i64
  %call = call i16** @__ctype_b_loc() #4
  %5 = load i16*, i16** %call, align 8
  %arrayidx = getelementptr inbounds i16, i16* %5, i64 %idxprom
  %6 = load i16, i16* %arrayidx, align 2
  %conv3 = zext i16 %6 to i32
  %and = and i32 %conv3, 512
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %7 = load i8*, i8** %str.addr, align 8
  %8 = load i8, i8* %7, align 1
  %conv4 = sext i8 %8 to i32
  %call5 = call i32 @toupper(i32 %conv4) #5
  %conv6 = trunc i32 %call5 to i8
  %9 = load i8*, i8** %str.addr, align 8
  store i8 %conv6, i8* %9, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body
  store i32 0, i32* %idx, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %10 = load i8*, i8** %str.addr, align 8
  %11 = load i8, i8* %10, align 1
  %conv7 = sext i8 %11 to i32
  %12 = load i32, i32* %idx, align 4
  %idxprom8 = sext i32 %12 to i64
  %arrayidx9 = getelementptr inbounds [0 x %struct.iupactype], [0 x %struct.iupactype]* @iupac, i32 0, i64 %idxprom8
  %sym = getelementptr inbounds %struct.iupactype, %struct.iupactype* %arrayidx9, i32 0, i32 0
  %13 = load i8, i8* %sym, align 1
  %conv10 = sext i8 %13 to i32
  %cmp11 = icmp ne i32 %conv7, %conv10
  br i1 %cmp11, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %14 = load i32, i32* %idx, align 4
  %cmp13 = icmp sle i32 %14, 17
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %15 = phi i1 [ false, %for.cond ], [ %cmp13, %land.rhs ]
  br i1 %15, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %16 = load i32, i32* %idx, align 4
  %inc = add nsw i32 %16, 1
  store i32 %inc, i32* %idx, align 4
  br label %for.cond

for.end:                                          ; preds = %land.end
  %17 = load i32, i32* %idx, align 4
  %cmp15 = icmp sgt i32 %17, 17
  br i1 %cmp15, label %if.then.17, label %if.else

if.then.17:                                       ; preds = %for.end
  %18 = load i8*, i8** %ptr, align 8
  store i8 0, i8* %18, align 1
  store i32 0, i32* %retval
  br label %return

if.else:                                          ; preds = %for.end
  %19 = load i32, i32* %idx, align 4
  %idxprom18 = sext i32 %19 to i64
  %arrayidx19 = getelementptr inbounds [0 x %struct.iupactype], [0 x %struct.iupactype]* @iupac, i32 0, i64 %idxprom18
  %code = getelementptr inbounds %struct.iupactype, %struct.iupactype* %arrayidx19, i32 0, i32 2
  %20 = load i8, i8* %code, align 1
  %21 = load i8*, i8** %ptr, align 8
  store i8 %20, i8* %21, align 1
  br label %if.end.20

if.end.20:                                        ; preds = %if.else
  %22 = load i8*, i8** %ptr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %22, i32 1
  store i8* %incdec.ptr, i8** %ptr, align 8
  %23 = load i8*, i8** %str.addr, align 8
  %incdec.ptr21 = getelementptr inbounds i8, i8* %23, i32 1
  store i8* %incdec.ptr21, i8** %str.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %24 = load i8*, i8** %ptr, align 8
  store i8 0, i8* %24, align 1
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %while.end, %if.then.17
  %25 = load i32, i32* %retval
  ret i32 %25
}

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() #1

; Function Attrs: nounwind
declare i32 @toupper(i32) #2

; Function Attrs: nounwind uwtable
define i32 @coded_revcomp(i8* %comp, i8* %seq) #0 {
entry:
  %retval = alloca i32, align 4
  %comp.addr = alloca i8*, align 8
  %seq.addr = alloca i8*, align 8
  %bases = alloca i64, align 8
  %bckp = alloca i8*, align 8
  %fwdp = alloca i8*, align 8
  %idx = alloca i32, align 4
  %pos = alloca i64, align 8
  store i8* %comp, i8** %comp.addr, align 8
  store i8* %seq, i8** %seq.addr, align 8
  %0 = load i8*, i8** %seq.addr, align 8
  %call = call i64 @strlen(i8* %0) #6
  store i64 %call, i64* %bases, align 8
  %1 = load i8*, i8** %comp.addr, align 8
  store i8* %1, i8** %fwdp, align 8
  %2 = load i8*, i8** %seq.addr, align 8
  %3 = load i64, i64* %bases, align 8
  %add.ptr = getelementptr inbounds i8, i8* %2, i64 %3
  %add.ptr1 = getelementptr inbounds i8, i8* %add.ptr, i64 -1
  store i8* %add.ptr1, i8** %bckp, align 8
  store i64 0, i64* %pos, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.15, %entry
  %4 = load i64, i64* %pos, align 8
  %5 = load i64, i64* %bases, align 8
  %cmp = icmp slt i64 %4, %5
  br i1 %cmp, label %for.body, label %for.end.17

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %idx, align 4
  br label %for.cond.2

for.cond.2:                                       ; preds = %for.inc, %for.body
  %6 = load i8*, i8** %bckp, align 8
  %7 = load i8, i8* %6, align 1
  %conv = sext i8 %7 to i32
  %8 = load i32, i32* %idx, align 4
  %idxprom = sext i32 %8 to i64
  %arrayidx = getelementptr inbounds [0 x %struct.iupactype], [0 x %struct.iupactype]* @iupac, i32 0, i64 %idxprom
  %code = getelementptr inbounds %struct.iupactype, %struct.iupactype* %arrayidx, i32 0, i32 2
  %9 = load i8, i8* %code, align 1
  %conv3 = sext i8 %9 to i32
  %cmp4 = icmp ne i32 %conv, %conv3
  br i1 %cmp4, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond.2
  %10 = load i32, i32* %idx, align 4
  %cmp6 = icmp slt i32 %10, 17
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond.2
  %11 = phi i1 [ false, %for.cond.2 ], [ %cmp6, %land.rhs ]
  br i1 %11, label %for.body.8, label %for.end

for.body.8:                                       ; preds = %land.end
  br label %for.inc

for.inc:                                          ; preds = %for.body.8
  %12 = load i32, i32* %idx, align 4
  %inc = add nsw i32 %12, 1
  store i32 %inc, i32* %idx, align 4
  br label %for.cond.2

for.end:                                          ; preds = %land.end
  %13 = load i32, i32* %idx, align 4
  %cmp9 = icmp sgt i32 %13, 17
  br i1 %cmp9, label %if.then, label %if.else

if.then:                                          ; preds = %for.end
  %14 = load i8*, i8** %fwdp, align 8
  store i8 0, i8* %14, align 1
  store i32 0, i32* %retval
  br label %return

if.else:                                          ; preds = %for.end
  %15 = load i32, i32* %idx, align 4
  %idxprom11 = sext i32 %15 to i64
  %arrayidx12 = getelementptr inbounds [0 x %struct.iupactype], [0 x %struct.iupactype]* @iupac, i32 0, i64 %idxprom11
  %comp13 = getelementptr inbounds %struct.iupactype, %struct.iupactype* %arrayidx12, i32 0, i32 3
  %16 = load i8, i8* %comp13, align 1
  %17 = load i8*, i8** %fwdp, align 8
  store i8 %16, i8* %17, align 1
  br label %if.end

if.end:                                           ; preds = %if.else
  %18 = load i8*, i8** %fwdp, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %18, i32 1
  store i8* %incdec.ptr, i8** %fwdp, align 8
  %19 = load i8*, i8** %bckp, align 8
  %incdec.ptr14 = getelementptr inbounds i8, i8* %19, i32 -1
  store i8* %incdec.ptr14, i8** %bckp, align 8
  br label %for.inc.15

for.inc.15:                                       ; preds = %if.end
  %20 = load i64, i64* %pos, align 8
  %inc16 = add nsw i64 %20, 1
  store i64 %inc16, i64* %pos, align 8
  br label %for.cond

for.end.17:                                       ; preds = %for.cond
  %21 = load i8*, i8** %fwdp, align 8
  store i8 0, i8* %21, align 1
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %for.end.17, %if.then
  %22 = load i32, i32* %retval
  ret i32 %22
}

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #3

; Function Attrs: nounwind uwtable
define i32 @seqdecode(i8* %str, i8* %codeseq) #0 {
entry:
  %retval = alloca i32, align 4
  %str.addr = alloca i8*, align 8
  %codeseq.addr = alloca i8*, align 8
  %idx = alloca i32, align 4
  %pos = alloca i32, align 4
  store i8* %str, i8** %str.addr, align 8
  store i8* %codeseq, i8** %codeseq.addr, align 8
  store i32 0, i32* %pos, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %0 = load i8*, i8** %codeseq.addr, align 8
  %1 = load i8, i8* %0, align 1
  %conv = sext i8 %1 to i32
  %cmp = icmp ne i32 %conv, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  store i32 0, i32* %idx, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.body
  %2 = load i8*, i8** %codeseq.addr, align 8
  %3 = load i8, i8* %2, align 1
  %conv2 = sext i8 %3 to i32
  %4 = load i32, i32* %idx, align 4
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds [0 x %struct.iupactype], [0 x %struct.iupactype]* @iupac, i32 0, i64 %idxprom
  %code = getelementptr inbounds %struct.iupactype, %struct.iupactype* %arrayidx, i32 0, i32 2
  %5 = load i8, i8* %code, align 1
  %conv3 = sext i8 %5 to i32
  %cmp4 = icmp ne i32 %conv2, %conv3
  br i1 %cmp4, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %6 = load i32, i32* %idx, align 4
  %cmp6 = icmp slt i32 %6, 17
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %7 = phi i1 [ false, %for.cond ], [ %cmp6, %land.rhs ]
  br i1 %7, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %idx, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* %idx, align 4
  br label %for.cond

for.end:                                          ; preds = %land.end
  %9 = load i32, i32* %idx, align 4
  %cmp8 = icmp sgt i32 %9, 17
  br i1 %cmp8, label %if.then, label %if.else

if.then:                                          ; preds = %for.end
  %10 = load i32, i32* %pos, align 4
  %idxprom10 = sext i32 %10 to i64
  %11 = load i8*, i8** %str.addr, align 8
  %arrayidx11 = getelementptr inbounds i8, i8* %11, i64 %idxprom10
  store i8 88, i8* %arrayidx11, align 1
  store i32 0, i32* %retval
  br label %return

if.else:                                          ; preds = %for.end
  %12 = load i32, i32* %idx, align 4
  %idxprom12 = sext i32 %12 to i64
  %arrayidx13 = getelementptr inbounds [0 x %struct.iupactype], [0 x %struct.iupactype]* @iupac, i32 0, i64 %idxprom12
  %sym = getelementptr inbounds %struct.iupactype, %struct.iupactype* %arrayidx13, i32 0, i32 0
  %13 = load i8, i8* %sym, align 1
  %14 = load i32, i32* %pos, align 4
  %idxprom14 = sext i32 %14 to i64
  %15 = load i8*, i8** %str.addr, align 8
  %arrayidx15 = getelementptr inbounds i8, i8* %15, i64 %idxprom14
  store i8 %13, i8* %arrayidx15, align 1
  br label %if.end

if.end:                                           ; preds = %if.else
  %16 = load i8*, i8** %codeseq.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %16, i32 1
  store i8* %incdec.ptr, i8** %codeseq.addr, align 8
  %17 = load i32, i32* %pos, align 4
  %inc16 = add nsw i32 %17, 1
  store i32 %inc16, i32* %pos, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %18 = load i32, i32* %pos, align 4
  %idxprom17 = sext i32 %18 to i64
  %19 = load i8*, i8** %str.addr, align 8
  %arrayidx18 = getelementptr inbounds i8, i8* %19, i64 %idxprom17
  store i8 0, i8* %arrayidx18, align 1
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %while.end, %if.then
  %20 = load i32, i32* %retval
  ret i32 %20
}

; Function Attrs: nounwind uwtable
define i32 @seqndecode(i8* %str, i8* %codeseq, i32 %n) #0 {
entry:
  %retval = alloca i32, align 4
  %str.addr = alloca i8*, align 8
  %codeseq.addr = alloca i8*, align 8
  %n.addr = alloca i32, align 4
  %idx = alloca i32, align 4
  %pos = alloca i32, align 4
  store i8* %str, i8** %str.addr, align 8
  store i8* %codeseq, i8** %codeseq.addr, align 8
  store i32 %n, i32* %n.addr, align 4
  store i32 0, i32* %pos, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %0 = load i32, i32* %n.addr, align 4
  %dec = add nsw i32 %0, -1
  store i32 %dec, i32* %n.addr, align 4
  %cmp = icmp sge i32 %dec, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  store i32 0, i32* %idx, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.body
  %1 = load i8*, i8** %codeseq.addr, align 8
  %2 = load i8, i8* %1, align 1
  %conv = sext i8 %2 to i32
  %3 = load i32, i32* %idx, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds [0 x %struct.iupactype], [0 x %struct.iupactype]* @iupac, i32 0, i64 %idxprom
  %code = getelementptr inbounds %struct.iupactype, %struct.iupactype* %arrayidx, i32 0, i32 2
  %4 = load i8, i8* %code, align 1
  %conv1 = sext i8 %4 to i32
  %cmp2 = icmp ne i32 %conv, %conv1
  br i1 %cmp2, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %5 = load i32, i32* %idx, align 4
  %cmp4 = icmp slt i32 %5, 17
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %6 = phi i1 [ false, %for.cond ], [ %cmp4, %land.rhs ]
  br i1 %6, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load i32, i32* %idx, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, i32* %idx, align 4
  br label %for.cond

for.end:                                          ; preds = %land.end
  %8 = load i32, i32* %idx, align 4
  %cmp6 = icmp sgt i32 %8, 17
  br i1 %cmp6, label %if.then, label %if.else

if.then:                                          ; preds = %for.end
  %9 = load i32, i32* %pos, align 4
  %idxprom8 = sext i32 %9 to i64
  %10 = load i8*, i8** %str.addr, align 8
  %arrayidx9 = getelementptr inbounds i8, i8* %10, i64 %idxprom8
  store i8 88, i8* %arrayidx9, align 1
  store i32 0, i32* %retval
  br label %return

if.else:                                          ; preds = %for.end
  %11 = load i32, i32* %idx, align 4
  %idxprom10 = sext i32 %11 to i64
  %arrayidx11 = getelementptr inbounds [0 x %struct.iupactype], [0 x %struct.iupactype]* @iupac, i32 0, i64 %idxprom10
  %sym = getelementptr inbounds %struct.iupactype, %struct.iupactype* %arrayidx11, i32 0, i32 0
  %12 = load i8, i8* %sym, align 1
  %13 = load i32, i32* %pos, align 4
  %idxprom12 = sext i32 %13 to i64
  %14 = load i8*, i8** %str.addr, align 8
  %arrayidx13 = getelementptr inbounds i8, i8* %14, i64 %idxprom12
  store i8 %12, i8* %arrayidx13, align 1
  br label %if.end

if.end:                                           ; preds = %if.else
  %15 = load i8*, i8** %codeseq.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %15, i32 1
  store i8* %incdec.ptr, i8** %codeseq.addr, align 8
  %16 = load i32, i32* %pos, align 4
  %inc14 = add nsw i32 %16, 1
  store i32 %inc14, i32* %pos, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %17 = load i32, i32* %pos, align 4
  %idxprom15 = sext i32 %17 to i64
  %18 = load i8*, i8** %str.addr, align 8
  %arrayidx16 = getelementptr inbounds i8, i8* %18, i64 %idxprom15
  store i8 0, i8* %arrayidx16, align 1
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %while.end, %if.then
  %19 = load i32, i32* %retval
  ret i32 %19
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone }
attributes #5 = { nounwind }
attributes #6 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
