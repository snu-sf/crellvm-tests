; ModuleID = './gsserial.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define i32 @enc_u_size_uint(i32 %uval) #0 {
entry:
  %uval.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 %uval, i32* %uval.addr, align 4, !tbaa !1
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  store i32 1, i32* %i, align 4, !tbaa !1
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %1 = load i32, i32* %uval.addr, align 4, !tbaa !1
  %shr = lshr i32 %1, 7
  store i32 %shr, i32* %uval.addr, align 4, !tbaa !1
  %cmp = icmp ugt i32 %shr, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load i32, i32* %i, align 4, !tbaa !1
  %inc = add nsw i32 %2, 1
  store i32 %inc, i32* %i, align 4, !tbaa !1
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %3 = load i32, i32* %i, align 4, !tbaa !1
  %4 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %4) #1
  ret i32 %3
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define i32 @enc_s_size_int(i32 %ival) #0 {
entry:
  %retval = alloca i32, align 4
  %ival.addr = alloca i32, align 4
  store i32 %ival, i32* %ival.addr, align 4, !tbaa !1
  %0 = load i32, i32* %ival.addr, align 4, !tbaa !1
  %cmp = icmp slt i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end.3

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %ival.addr, align 4, !tbaa !1
  %cmp1 = icmp eq i32 %1, -2147483648
  br i1 %cmp1, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.then
  store i32 5, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  %2 = load i32, i32* %ival.addr, align 4, !tbaa !1
  %sub = sub nsw i32 0, %2
  store i32 %sub, i32* %ival.addr, align 4, !tbaa !1
  br label %if.end.3

if.end.3:                                         ; preds = %if.end, %entry
  %3 = load i32, i32* %ival.addr, align 4, !tbaa !1
  %shl = shl i32 %3, 1
  %cmp4 = icmp ult i32 %shl, 128
  br i1 %cmp4, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.3
  br label %cond.end.10

cond.false:                                       ; preds = %if.end.3
  %4 = load i32, i32* %ival.addr, align 4, !tbaa !1
  %shl5 = shl i32 %4, 1
  %cmp6 = icmp ult i32 %shl5, 16384
  br i1 %cmp6, label %cond.true.7, label %cond.false.8

cond.true.7:                                      ; preds = %cond.false
  br label %cond.end

cond.false.8:                                     ; preds = %cond.false
  %5 = load i32, i32* %ival.addr, align 4, !tbaa !1
  %shl9 = shl i32 %5, 1
  %call = call i32 @enc_u_size_uint(i32 %shl9) #2
  br label %cond.end

cond.end:                                         ; preds = %cond.false.8, %cond.true.7
  %cond = phi i32 [ 2, %cond.true.7 ], [ %call, %cond.false.8 ]
  br label %cond.end.10

cond.end.10:                                      ; preds = %cond.end, %cond.true
  %cond11 = phi i32 [ 1, %cond.true ], [ %cond, %cond.end ]
  store i32 %cond11, i32* %retval
  br label %return

return:                                           ; preds = %cond.end.10, %if.then.2
  %6 = load i32, i32* %retval
  ret i32 %6
}

; Function Attrs: nounwind uwtable
define i8* @enc_u_put_uint(i32 %uval, i8* %ptr) #0 {
entry:
  %uval.addr = alloca i32, align 4
  %ptr.addr = alloca i8*, align 8
  %tmp_v = alloca i32, align 4
  store i32 %uval, i32* %uval.addr, align 4, !tbaa !1
  store i8* %ptr, i8** %ptr.addr, align 8, !tbaa !5
  %0 = bitcast i32* %tmp_v to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  br label %for.cond

for.cond:                                         ; preds = %if.end, %entry
  %1 = load i32, i32* %uval.addr, align 4, !tbaa !1
  %and = and i32 %1, 127
  store i32 %and, i32* %tmp_v, align 4, !tbaa !1
  %2 = load i32, i32* %uval.addr, align 4, !tbaa !1
  %shr = lshr i32 %2, 7
  store i32 %shr, i32* %uval.addr, align 4, !tbaa !1
  %cmp = icmp eq i32 %shr, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %for.cond
  br label %for.end

if.end:                                           ; preds = %for.cond
  %3 = load i32, i32* %tmp_v, align 4, !tbaa !1
  %or = or i32 %3, 128
  %conv = trunc i32 %or to i8
  %4 = load i8*, i8** %ptr.addr, align 8, !tbaa !5
  %incdec.ptr = getelementptr inbounds i8, i8* %4, i32 1
  store i8* %incdec.ptr, i8** %ptr.addr, align 8, !tbaa !5
  store i8 %conv, i8* %4, align 1, !tbaa !7
  br label %for.cond

for.end:                                          ; preds = %if.then
  %5 = load i32, i32* %tmp_v, align 4, !tbaa !1
  %conv1 = trunc i32 %5 to i8
  %6 = load i8*, i8** %ptr.addr, align 8, !tbaa !5
  %incdec.ptr2 = getelementptr inbounds i8, i8* %6, i32 1
  store i8* %incdec.ptr2, i8** %ptr.addr, align 8, !tbaa !5
  store i8 %conv1, i8* %6, align 1, !tbaa !7
  %7 = load i8*, i8** %ptr.addr, align 8, !tbaa !5
  %8 = bitcast i32* %tmp_v to i8*
  call void @llvm.lifetime.end(i64 4, i8* %8) #1
  ret i8* %7
}

; Function Attrs: nounwind uwtable
define i8* @enc_s_put_int(i32 %ival, i8* %ptr) #0 {
entry:
  %retval = alloca i8*, align 8
  %ival.addr = alloca i32, align 4
  %ptr.addr = alloca i8*, align 8
  %uval = alloca i32, align 4
  %tmp_v = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store i32 %ival, i32* %ival.addr, align 4, !tbaa !1
  store i8* %ptr, i8** %ptr.addr, align 8, !tbaa !5
  %0 = bitcast i32* %uval to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %tmp_v to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = load i32, i32* %ival.addr, align 4, !tbaa !1
  %cmp = icmp slt i32 %2, 0
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %3 = load i32, i32* %ival.addr, align 4, !tbaa !1
  %cmp1 = icmp ne i32 %3, -2147483648
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %4 = load i32, i32* %ival.addr, align 4, !tbaa !1
  %sub = sub nsw i32 0, %4
  store i32 %sub, i32* %uval, align 4, !tbaa !1
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %entry
  %5 = load i32, i32* %ival.addr, align 4, !tbaa !1
  store i32 %5, i32* %uval, align 4, !tbaa !1
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %6 = load i32, i32* %uval, align 4, !tbaa !1
  %and = and i32 %6, 63
  %7 = load i32, i32* %ival.addr, align 4, !tbaa !1
  %cmp2 = icmp slt i32 %7, 0
  %cond = select i1 %cmp2, i32 64, i32 0
  %or = or i32 %and, %cond
  store i32 %or, i32* %tmp_v, align 4, !tbaa !1
  %8 = load i32, i32* %uval, align 4, !tbaa !1
  %cmp3 = icmp ugt i32 %8, 63
  br i1 %cmp3, label %if.then.4, label %if.else.6

if.then.4:                                        ; preds = %if.end
  %9 = load i32, i32* %tmp_v, align 4, !tbaa !1
  %or5 = or i32 %9, 128
  %conv = trunc i32 %or5 to i8
  %10 = load i8*, i8** %ptr.addr, align 8, !tbaa !5
  %incdec.ptr = getelementptr inbounds i8, i8* %10, i32 1
  store i8* %incdec.ptr, i8** %ptr.addr, align 8, !tbaa !5
  store i8 %conv, i8* %10, align 1, !tbaa !7
  %11 = load i32, i32* %uval, align 4, !tbaa !1
  %shr = lshr i32 %11, 6
  %12 = load i8*, i8** %ptr.addr, align 8, !tbaa !5
  %call = call i8* @enc_u_put_uint(i32 %shr, i8* %12) #2
  store i8* %call, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else.6:                                        ; preds = %if.end
  %13 = load i32, i32* %tmp_v, align 4, !tbaa !1
  %conv7 = trunc i32 %13 to i8
  %14 = load i8*, i8** %ptr.addr, align 8, !tbaa !5
  %incdec.ptr8 = getelementptr inbounds i8, i8* %14, i32 1
  store i8* %incdec.ptr8, i8** %ptr.addr, align 8, !tbaa !5
  store i8 %conv7, i8* %14, align 1, !tbaa !7
  %15 = load i8*, i8** %ptr.addr, align 8, !tbaa !5
  store i8* %15, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.else.6, %if.then.4
  %16 = bitcast i32* %tmp_v to i8*
  call void @llvm.lifetime.end(i64 4, i8* %16) #1
  %17 = bitcast i32* %uval to i8*
  call void @llvm.lifetime.end(i64 4, i8* %17) #1
  %18 = load i8*, i8** %retval
  ret i8* %18
}

; Function Attrs: nounwind uwtable
define i8* @enc_u_get_uint(i32* %pval, i8* %ptr) #0 {
entry:
  %pval.addr = alloca i32*, align 8
  %ptr.addr = alloca i8*, align 8
  %uval = alloca i32, align 4
  %tmp_val = alloca i32, align 4
  %shift = alloca i32, align 4
  store i32* %pval, i32** %pval.addr, align 8, !tbaa !5
  store i8* %ptr, i8** %ptr.addr, align 8, !tbaa !5
  %0 = bitcast i32* %uval to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  store i32 0, i32* %uval, align 4, !tbaa !1
  %1 = bitcast i32* %tmp_val to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast i32* %shift to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  store i32 0, i32* %shift, align 4, !tbaa !1
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %3 = load i8*, i8** %ptr.addr, align 8, !tbaa !5
  %incdec.ptr = getelementptr inbounds i8, i8* %3, i32 1
  store i8* %incdec.ptr, i8** %ptr.addr, align 8, !tbaa !5
  %4 = load i8, i8* %3, align 1, !tbaa !7
  %conv = zext i8 %4 to i32
  store i32 %conv, i32* %tmp_val, align 4, !tbaa !1
  %and = and i32 %conv, 128
  %cmp = icmp ne i32 %and, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %5 = load i32, i32* %tmp_val, align 4, !tbaa !1
  %and2 = and i32 %5, 127
  %6 = load i32, i32* %shift, align 4, !tbaa !1
  %shl = shl i32 %and2, %6
  %7 = load i32, i32* %uval, align 4, !tbaa !1
  %or = or i32 %7, %shl
  store i32 %or, i32* %uval, align 4, !tbaa !1
  %8 = load i32, i32* %shift, align 4, !tbaa !1
  %add = add nsw i32 %8, 7
  store i32 %add, i32* %shift, align 4, !tbaa !1
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %9 = load i32, i32* %uval, align 4, !tbaa !1
  %10 = load i32, i32* %tmp_val, align 4, !tbaa !1
  %11 = load i32, i32* %shift, align 4, !tbaa !1
  %shl3 = shl i32 %10, %11
  %or4 = or i32 %9, %shl3
  %12 = load i32*, i32** %pval.addr, align 8, !tbaa !5
  store i32 %or4, i32* %12, align 4, !tbaa !1
  %13 = load i8*, i8** %ptr.addr, align 8, !tbaa !5
  %14 = bitcast i32* %shift to i8*
  call void @llvm.lifetime.end(i64 4, i8* %14) #1
  %15 = bitcast i32* %tmp_val to i8*
  call void @llvm.lifetime.end(i64 4, i8* %15) #1
  %16 = bitcast i32* %uval to i8*
  call void @llvm.lifetime.end(i64 4, i8* %16) #1
  ret i8* %13
}

; Function Attrs: nounwind uwtable
define i8* @enc_u_get_uint_nc(i32* %pval, i8* %ptr) #0 {
entry:
  %pval.addr = alloca i32*, align 8
  %ptr.addr = alloca i8*, align 8
  %tmp_ptr = alloca i8*, align 8
  store i32* %pval, i32** %pval.addr, align 8, !tbaa !5
  store i8* %ptr, i8** %ptr.addr, align 8, !tbaa !5
  %0 = bitcast i8** %tmp_ptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i8*, i8** %ptr.addr, align 8, !tbaa !5
  store i8* %1, i8** %tmp_ptr, align 8, !tbaa !5
  %2 = load i32*, i32** %pval.addr, align 8, !tbaa !5
  %3 = load i8*, i8** %tmp_ptr, align 8, !tbaa !5
  %call = call i8* @enc_u_get_uint(i32* %2, i8* %3) #2
  store i8* %call, i8** %tmp_ptr, align 8, !tbaa !5
  %4 = load i8*, i8** %tmp_ptr, align 8, !tbaa !5
  %5 = load i8*, i8** %ptr.addr, align 8, !tbaa !5
  %sub.ptr.lhs.cast = ptrtoint i8* %4 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %5 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %6 = load i8*, i8** %ptr.addr, align 8, !tbaa !5
  %add.ptr = getelementptr inbounds i8, i8* %6, i64 %sub.ptr.sub
  store i8* %add.ptr, i8** %ptr.addr, align 8, !tbaa !5
  %7 = bitcast i8** %tmp_ptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %7) #1
  ret i8* %add.ptr
}

; Function Attrs: nounwind uwtable
define i8* @enc_s_get_int(i32* %pval, i8* %ptr) #0 {
entry:
  %pval.addr = alloca i32*, align 8
  %ptr.addr = alloca i8*, align 8
  %ival = alloca i32, align 4
  %neg = alloca i32, align 4
  %tmp_val = alloca i32, align 4
  store i32* %pval, i32** %pval.addr, align 8, !tbaa !5
  store i8* %ptr, i8** %ptr.addr, align 8, !tbaa !5
  %0 = bitcast i32* %ival to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load i8*, i8** %ptr.addr, align 8, !tbaa !5
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i32 1
  store i8* %incdec.ptr, i8** %ptr.addr, align 8, !tbaa !5
  %2 = load i8, i8* %1, align 1, !tbaa !7
  %conv = zext i8 %2 to i32
  store i32 %conv, i32* %ival, align 4, !tbaa !1
  %3 = bitcast i32* %neg to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  store i32 0, i32* %neg, align 4, !tbaa !1
  %4 = load i32, i32* %ival, align 4, !tbaa !1
  %and = and i32 %4, 64
  %cmp = icmp ne i32 %and, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load i32, i32* %ival, align 4, !tbaa !1
  %xor = xor i32 %5, 64
  store i32 %xor, i32* %ival, align 4, !tbaa !1
  store i32 1, i32* %neg, align 4, !tbaa !1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %6 = load i32, i32* %ival, align 4, !tbaa !1
  %and2 = and i32 %6, 128
  %cmp3 = icmp ne i32 %and2, 0
  br i1 %cmp3, label %if.then.5, label %if.end.7

if.then.5:                                        ; preds = %if.end
  %7 = bitcast i32* %tmp_val to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  %8 = load i32, i32* %ival, align 4, !tbaa !1
  %xor6 = xor i32 %8, 128
  store i32 %xor6, i32* %ival, align 4, !tbaa !1
  %9 = load i8*, i8** %ptr.addr, align 8, !tbaa !5
  %call = call i8* @enc_u_get_uint(i32* %tmp_val, i8* %9) #2
  store i8* %call, i8** %ptr.addr, align 8, !tbaa !5
  %10 = load i32, i32* %tmp_val, align 4, !tbaa !1
  %shl = shl i32 %10, 6
  %11 = load i32, i32* %ival, align 4, !tbaa !1
  %or = or i32 %11, %shl
  store i32 %or, i32* %ival, align 4, !tbaa !1
  %12 = bitcast i32* %tmp_val to i8*
  call void @llvm.lifetime.end(i64 4, i8* %12) #1
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.5, %if.end
  %13 = load i32, i32* %neg, align 4, !tbaa !1
  %tobool = icmp ne i32 %13, 0
  br i1 %tobool, label %land.lhs.true, label %if.end.11

land.lhs.true:                                    ; preds = %if.end.7
  %14 = load i32, i32* %ival, align 4, !tbaa !1
  %cmp8 = icmp sge i32 %14, 0
  br i1 %cmp8, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %land.lhs.true
  %15 = load i32, i32* %ival, align 4, !tbaa !1
  %sub = sub nsw i32 0, %15
  store i32 %sub, i32* %ival, align 4, !tbaa !1
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.10, %land.lhs.true, %if.end.7
  %16 = load i32, i32* %ival, align 4, !tbaa !1
  %17 = load i32*, i32** %pval.addr, align 8, !tbaa !5
  store i32 %16, i32* %17, align 4, !tbaa !1
  %18 = load i8*, i8** %ptr.addr, align 8, !tbaa !5
  %19 = bitcast i32* %neg to i8*
  call void @llvm.lifetime.end(i64 4, i8* %19) #1
  %20 = bitcast i32* %ival to i8*
  call void @llvm.lifetime.end(i64 4, i8* %20) #1
  ret i8* %18
}

; Function Attrs: nounwind uwtable
define i8* @enc_s_get_int_nc(i32* %pval, i8* %ptr) #0 {
entry:
  %pval.addr = alloca i32*, align 8
  %ptr.addr = alloca i8*, align 8
  %tmp_ptr = alloca i8*, align 8
  store i32* %pval, i32** %pval.addr, align 8, !tbaa !5
  store i8* %ptr, i8** %ptr.addr, align 8, !tbaa !5
  %0 = bitcast i8** %tmp_ptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i8*, i8** %ptr.addr, align 8, !tbaa !5
  store i8* %1, i8** %tmp_ptr, align 8, !tbaa !5
  %2 = load i32*, i32** %pval.addr, align 8, !tbaa !5
  %3 = load i8*, i8** %tmp_ptr, align 8, !tbaa !5
  %call = call i8* @enc_s_get_int(i32* %2, i8* %3) #2
  store i8* %call, i8** %tmp_ptr, align 8, !tbaa !5
  %4 = load i8*, i8** %tmp_ptr, align 8, !tbaa !5
  %5 = load i8*, i8** %ptr.addr, align 8, !tbaa !5
  %sub.ptr.lhs.cast = ptrtoint i8* %4 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %5 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %6 = load i8*, i8** %ptr.addr, align 8, !tbaa !5
  %add.ptr = getelementptr inbounds i8, i8* %6, i64 %sub.ptr.sub
  store i8* %add.ptr, i8** %ptr.addr, align 8, !tbaa !5
  %7 = bitcast i8** %tmp_ptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %7) #1
  ret i8* %add.ptr
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { nobuiltin }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"int", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !6, i64 0}
!6 = !{!"any pointer", !3, i64 0}
!7 = !{!3, !3, i64 0}
