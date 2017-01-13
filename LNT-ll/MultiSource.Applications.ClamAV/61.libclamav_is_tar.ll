; ModuleID = './MultiSource.Applications.ClamAV/61.libclamav_is_tar.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.record = type { [512 x i8] }
%struct.header = type { [100 x i8], [8 x i8], [8 x i8], [8 x i8], [12 x i8], [12 x i8], [8 x i8], i8, [100 x i8], [8 x i8], [32 x i8], [32 x i8], [8 x i8], [8 x i8] }

@.str = private unnamed_addr constant [8 x i8] c"ustar  \00", align 1

; Function Attrs: nounwind uwtable
define i32 @is_tar(i8* %buf, i32 %nbytes) #0 {
entry:
  %retval = alloca i32, align 4
  %buf.addr = alloca i8*, align 8
  %nbytes.addr = alloca i32, align 4
  %header = alloca %union.record*, align 8
  %i = alloca i32, align 4
  %sum = alloca i32, align 4
  %recsum = alloca i32, align 4
  %p = alloca i8*, align 8
  store i8* %buf, i8** %buf.addr, align 8
  store i32 %nbytes, i32* %nbytes.addr, align 4
  %0 = load i8*, i8** %buf.addr, align 8
  %1 = bitcast i8* %0 to %union.record*
  store %union.record* %1, %union.record** %header, align 8
  %2 = load i32, i32* %nbytes.addr, align 4
  %conv = zext i32 %2 to i64
  %cmp = icmp ult i64 %conv, 512
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %union.record*, %union.record** %header, align 8
  %header2 = bitcast %union.record* %3 to %struct.header*
  %chksum = getelementptr inbounds %struct.header, %struct.header* %header2, i32 0, i32 6
  %arraydecay = getelementptr inbounds [8 x i8], [8 x i8]* %chksum, i32 0, i32 0
  %call = call i32 @from_oct(i32 8, i8* %arraydecay)
  store i32 %call, i32* %recsum, align 4
  store i32 0, i32* %sum, align 4
  %4 = load %union.record*, %union.record** %header, align 8
  %charptr = bitcast %union.record* %4 to [512 x i8]*
  %arraydecay3 = getelementptr inbounds [512 x i8], [512 x i8]* %charptr, i32 0, i32 0
  store i8* %arraydecay3, i8** %p, align 8
  store i32 512, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.body, %if.end
  %5 = load i32, i32* %i, align 4
  %dec = add nsw i32 %5, -1
  store i32 %dec, i32* %i, align 4
  %cmp4 = icmp sge i32 %dec, 0
  br i1 %cmp4, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load i8*, i8** %p, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %6, i32 1
  store i8* %incdec.ptr, i8** %p, align 8
  %7 = load i8, i8* %6, align 1
  %conv6 = sext i8 %7 to i32
  %and = and i32 255, %conv6
  %8 = load i32, i32* %sum, align 4
  %add = add nsw i32 %8, %and
  store i32 %add, i32* %sum, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 8, i32* %i, align 4
  br label %for.cond.7

for.cond.7:                                       ; preds = %for.body.11, %for.end
  %9 = load i32, i32* %i, align 4
  %dec8 = add nsw i32 %9, -1
  store i32 %dec8, i32* %i, align 4
  %cmp9 = icmp sge i32 %dec8, 0
  br i1 %cmp9, label %for.body.11, label %for.end.16

for.body.11:                                      ; preds = %for.cond.7
  %10 = load i32, i32* %i, align 4
  %idxprom = sext i32 %10 to i64
  %11 = load %union.record*, %union.record** %header, align 8
  %header12 = bitcast %union.record* %11 to %struct.header*
  %chksum13 = getelementptr inbounds %struct.header, %struct.header* %header12, i32 0, i32 6
  %arrayidx = getelementptr inbounds [8 x i8], [8 x i8]* %chksum13, i32 0, i64 %idxprom
  %12 = load i8, i8* %arrayidx, align 1
  %conv14 = sext i8 %12 to i32
  %and15 = and i32 255, %conv14
  %13 = load i32, i32* %sum, align 4
  %sub = sub nsw i32 %13, %and15
  store i32 %sub, i32* %sum, align 4
  br label %for.cond.7

for.end.16:                                       ; preds = %for.cond.7
  %14 = load i32, i32* %sum, align 4
  %conv17 = sext i32 %14 to i64
  %add18 = add i64 %conv17, 256
  %conv19 = trunc i64 %add18 to i32
  store i32 %conv19, i32* %sum, align 4
  %15 = load i32, i32* %sum, align 4
  %16 = load i32, i32* %recsum, align 4
  %cmp20 = icmp ne i32 %15, %16
  br i1 %cmp20, label %if.then.22, label %if.end.23

if.then.22:                                       ; preds = %for.end.16
  store i32 0, i32* %retval
  br label %return

if.end.23:                                        ; preds = %for.end.16
  %17 = load %union.record*, %union.record** %header, align 8
  %header24 = bitcast %union.record* %17 to %struct.header*
  %magic = getelementptr inbounds %struct.header, %struct.header* %header24, i32 0, i32 9
  %arraydecay25 = getelementptr inbounds [8 x i8], [8 x i8]* %magic, i32 0, i32 0
  %call26 = call i32 @strcmp(i8* %arraydecay25, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0)) #3
  %cmp27 = icmp eq i32 0, %call26
  br i1 %cmp27, label %if.then.29, label %if.end.30

if.then.29:                                       ; preds = %if.end.23
  store i32 2, i32* %retval
  br label %return

if.end.30:                                        ; preds = %if.end.23
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.30, %if.then.29, %if.then.22, %if.then
  %18 = load i32, i32* %retval
  ret i32 %18
}

; Function Attrs: nounwind uwtable
define internal i32 @from_oct(i32 %digs, i8* %where) #0 {
entry:
  %retval = alloca i32, align 4
  %digs.addr = alloca i32, align 4
  %where.addr = alloca i8*, align 8
  %value = alloca i32, align 4
  store i32 %digs, i32* %digs.addr, align 4
  store i8* %where, i8** %where.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %0 = load i8*, i8** %where.addr, align 8
  %1 = load i8, i8* %0, align 1
  %conv = zext i8 %1 to i32
  %idxprom = sext i32 %conv to i64
  %call = call i16** @__ctype_b_loc() #4
  %2 = load i16*, i16** %call, align 8
  %arrayidx = getelementptr inbounds i16, i16* %2, i64 %idxprom
  %3 = load i16, i16* %arrayidx, align 2
  %conv1 = zext i16 %3 to i32
  %and = and i32 %conv1, 8192
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %4 = load i8*, i8** %where.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %4, i32 1
  store i8* %incdec.ptr, i8** %where.addr, align 8
  %5 = load i32, i32* %digs.addr, align 4
  %dec = add nsw i32 %5, -1
  store i32 %dec, i32* %digs.addr, align 4
  %cmp = icmp sle i32 %dec, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %while.body
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store i32 0, i32* %value, align 4
  br label %while.cond.3

while.cond.3:                                     ; preds = %while.body.14, %while.end
  %6 = load i32, i32* %digs.addr, align 4
  %cmp4 = icmp sgt i32 %6, 0
  br i1 %cmp4, label %land.rhs, label %land.end.13

land.rhs:                                         ; preds = %while.cond.3
  %7 = load i8*, i8** %where.addr, align 8
  %8 = load i8, i8* %7, align 1
  %conv6 = sext i8 %8 to i32
  %cmp7 = icmp sge i32 %conv6, 48
  br i1 %cmp7, label %land.rhs.9, label %land.end

land.rhs.9:                                       ; preds = %land.rhs
  %9 = load i8*, i8** %where.addr, align 8
  %10 = load i8, i8* %9, align 1
  %conv10 = sext i8 %10 to i32
  %cmp11 = icmp sle i32 %conv10, 55
  br label %land.end

land.end:                                         ; preds = %land.rhs.9, %land.rhs
  %11 = phi i1 [ false, %land.rhs ], [ %cmp11, %land.rhs.9 ]
  br label %land.end.13

land.end.13:                                      ; preds = %land.end, %while.cond.3
  %12 = phi i1 [ false, %while.cond.3 ], [ %11, %land.end ]
  br i1 %12, label %while.body.14, label %while.end.18

while.body.14:                                    ; preds = %land.end.13
  %13 = load i32, i32* %value, align 4
  %shl = shl i32 %13, 3
  %14 = load i8*, i8** %where.addr, align 8
  %incdec.ptr15 = getelementptr inbounds i8, i8* %14, i32 1
  store i8* %incdec.ptr15, i8** %where.addr, align 8
  %15 = load i8, i8* %14, align 1
  %conv16 = sext i8 %15 to i32
  %sub = sub nsw i32 %conv16, 48
  %or = or i32 %shl, %sub
  store i32 %or, i32* %value, align 4
  %16 = load i32, i32* %digs.addr, align 4
  %dec17 = add nsw i32 %16, -1
  store i32 %dec17, i32* %digs.addr, align 4
  br label %while.cond.3

while.end.18:                                     ; preds = %land.end.13
  %17 = load i32, i32* %digs.addr, align 4
  %cmp19 = icmp sgt i32 %17, 0
  br i1 %cmp19, label %land.lhs.true, label %if.end.32

land.lhs.true:                                    ; preds = %while.end.18
  %18 = load i8*, i8** %where.addr, align 8
  %19 = load i8, i8* %18, align 1
  %conv21 = sext i8 %19 to i32
  %tobool22 = icmp ne i32 %conv21, 0
  br i1 %tobool22, label %land.lhs.true.23, label %if.end.32

land.lhs.true.23:                                 ; preds = %land.lhs.true
  %20 = load i8*, i8** %where.addr, align 8
  %21 = load i8, i8* %20, align 1
  %conv24 = zext i8 %21 to i32
  %idxprom25 = sext i32 %conv24 to i64
  %call26 = call i16** @__ctype_b_loc() #4
  %22 = load i16*, i16** %call26, align 8
  %arrayidx27 = getelementptr inbounds i16, i16* %22, i64 %idxprom25
  %23 = load i16, i16* %arrayidx27, align 2
  %conv28 = zext i16 %23 to i32
  %and29 = and i32 %conv28, 8192
  %tobool30 = icmp ne i32 %and29, 0
  br i1 %tobool30, label %if.end.32, label %if.then.31

if.then.31:                                       ; preds = %land.lhs.true.23
  store i32 -1, i32* %retval
  br label %return

if.end.32:                                        ; preds = %land.lhs.true.23, %land.lhs.true, %while.end.18
  %24 = load i32, i32* %value, align 4
  store i32 %24, i32* %retval
  br label %return

return:                                           ; preds = %if.end.32, %if.then.31, %if.then
  %25 = load i32, i32* %retval
  ret i32 %25
}

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #1

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly }
attributes #4 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
