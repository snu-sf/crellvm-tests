; ModuleID = './MultiSource.Benchmarks.Ptrdist/20.bc.number.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bc_struct = type { i32, i32, i32, i32, [1024 x i8] }
%struct.stk_rec = type { i64, %struct.stk_rec* }

@_zero_ = common global %struct.bc_struct* null, align 8
@_one_ = common global %struct.bc_struct* null, align 8
@_two_ = common global %struct.bc_struct* null, align 8
@.str = private unnamed_addr constant [27 x i8] c"non-zero scale in exponent\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"exponent too large in raise\00", align 1
@ref_str = global [17 x i8] c"0123456789ABCDEF\00", align 16
@.str.2 = private unnamed_addr constant [4 x i8] c"%ld\00", align 1

; Function Attrs: nounwind uwtable
define void @free_num(%struct.bc_struct** %num) #0 {
entry:
  %num.addr = alloca %struct.bc_struct**, align 8
  store %struct.bc_struct** %num, %struct.bc_struct*** %num.addr, align 8
  %0 = load %struct.bc_struct**, %struct.bc_struct*** %num.addr, align 8
  %1 = load %struct.bc_struct*, %struct.bc_struct** %0, align 8
  %cmp = icmp eq %struct.bc_struct* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.bc_struct**, %struct.bc_struct*** %num.addr, align 8
  %3 = load %struct.bc_struct*, %struct.bc_struct** %2, align 8
  %n_refs = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %3, i32 0, i32 3
  %4 = load i32, i32* %n_refs, align 4
  %dec = add nsw i32 %4, -1
  store i32 %dec, i32* %n_refs, align 4
  %5 = load %struct.bc_struct**, %struct.bc_struct*** %num.addr, align 8
  %6 = load %struct.bc_struct*, %struct.bc_struct** %5, align 8
  %n_refs1 = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %6, i32 0, i32 3
  %7 = load i32, i32* %n_refs1, align 4
  %cmp2 = icmp eq i32 %7, 0
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  %8 = load %struct.bc_struct**, %struct.bc_struct*** %num.addr, align 8
  %9 = load %struct.bc_struct*, %struct.bc_struct** %8, align 8
  %10 = bitcast %struct.bc_struct* %9 to i8*
  call void @free(i8* %10) #2
  br label %if.end.4

if.end.4:                                         ; preds = %if.then.3, %if.end
  %11 = load %struct.bc_struct**, %struct.bc_struct*** %num.addr, align 8
  store %struct.bc_struct* null, %struct.bc_struct** %11, align 8
  br label %return

return:                                           ; preds = %if.end.4, %if.then
  ret void
}

; Function Attrs: nounwind
declare void @free(i8*) #1

; Function Attrs: nounwind uwtable
define %struct.bc_struct* @new_num(i32 %length, i32 %scale) #0 {
entry:
  %length.addr = alloca i32, align 4
  %scale.addr = alloca i32, align 4
  %temp = alloca %struct.bc_struct*, align 8
  store i32 %length, i32* %length.addr, align 4
  store i32 %scale, i32* %scale.addr, align 4
  %0 = load i32, i32* %length.addr, align 4
  %conv = sext i32 %0 to i64
  %add = add i64 1040, %conv
  %1 = load i32, i32* %scale.addr, align 4
  %conv1 = sext i32 %1 to i64
  %add2 = add i64 %add, %conv1
  %call = call noalias i8* @malloc(i64 %add2) #2
  %2 = bitcast i8* %call to %struct.bc_struct*
  store %struct.bc_struct* %2, %struct.bc_struct** %temp, align 8
  %3 = load %struct.bc_struct*, %struct.bc_struct** %temp, align 8
  %n_sign = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %3, i32 0, i32 0
  store i32 0, i32* %n_sign, align 4
  %4 = load i32, i32* %length.addr, align 4
  %5 = load %struct.bc_struct*, %struct.bc_struct** %temp, align 8
  %n_len = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %5, i32 0, i32 1
  store i32 %4, i32* %n_len, align 4
  %6 = load i32, i32* %scale.addr, align 4
  %7 = load %struct.bc_struct*, %struct.bc_struct** %temp, align 8
  %n_scale = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %7, i32 0, i32 2
  store i32 %6, i32* %n_scale, align 4
  %8 = load %struct.bc_struct*, %struct.bc_struct** %temp, align 8
  %n_refs = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %8, i32 0, i32 3
  store i32 1, i32* %n_refs, align 4
  %9 = load %struct.bc_struct*, %struct.bc_struct** %temp, align 8
  %n_value = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %9, i32 0, i32 4
  %arrayidx = getelementptr inbounds [1024 x i8], [1024 x i8]* %n_value, i32 0, i64 0
  store i8 0, i8* %arrayidx, align 1
  %10 = load %struct.bc_struct*, %struct.bc_struct** %temp, align 8
  ret %struct.bc_struct* %10
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #1

; Function Attrs: nounwind uwtable
define void @init_numbers() #0 {
entry:
  %call = call %struct.bc_struct* @new_num(i32 1, i32 0)
  store %struct.bc_struct* %call, %struct.bc_struct** @_zero_, align 8
  %call1 = call %struct.bc_struct* @new_num(i32 1, i32 0)
  store %struct.bc_struct* %call1, %struct.bc_struct** @_one_, align 8
  %0 = load %struct.bc_struct*, %struct.bc_struct** @_one_, align 8
  %n_value = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %0, i32 0, i32 4
  %arrayidx = getelementptr inbounds [1024 x i8], [1024 x i8]* %n_value, i32 0, i64 0
  store i8 1, i8* %arrayidx, align 1
  %call2 = call %struct.bc_struct* @new_num(i32 1, i32 0)
  store %struct.bc_struct* %call2, %struct.bc_struct** @_two_, align 8
  %1 = load %struct.bc_struct*, %struct.bc_struct** @_two_, align 8
  %n_value3 = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %1, i32 0, i32 4
  %arrayidx4 = getelementptr inbounds [1024 x i8], [1024 x i8]* %n_value3, i32 0, i64 0
  store i8 2, i8* %arrayidx4, align 1
  ret void
}

; Function Attrs: nounwind uwtable
define %struct.bc_struct* @copy_num(%struct.bc_struct* %num) #0 {
entry:
  %num.addr = alloca %struct.bc_struct*, align 8
  store %struct.bc_struct* %num, %struct.bc_struct** %num.addr, align 8
  %0 = load %struct.bc_struct*, %struct.bc_struct** %num.addr, align 8
  %n_refs = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %0, i32 0, i32 3
  %1 = load i32, i32* %n_refs, align 4
  %inc = add nsw i32 %1, 1
  store i32 %inc, i32* %n_refs, align 4
  %2 = load %struct.bc_struct*, %struct.bc_struct** %num.addr, align 8
  ret %struct.bc_struct* %2
}

; Function Attrs: nounwind uwtable
define void @init_num(%struct.bc_struct** %num) #0 {
entry:
  %num.addr = alloca %struct.bc_struct**, align 8
  store %struct.bc_struct** %num, %struct.bc_struct*** %num.addr, align 8
  %0 = load %struct.bc_struct*, %struct.bc_struct** @_zero_, align 8
  %call = call %struct.bc_struct* @copy_num(%struct.bc_struct* %0)
  %1 = load %struct.bc_struct**, %struct.bc_struct*** %num.addr, align 8
  store %struct.bc_struct* %call, %struct.bc_struct** %1, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @int2num(%struct.bc_struct** %num, i32 %val) #0 {
entry:
  %num.addr = alloca %struct.bc_struct**, align 8
  %val.addr = alloca i32, align 4
  %buffer = alloca [30 x i8], align 16
  %bptr = alloca i8*, align 8
  %vptr = alloca i8*, align 8
  %ix = alloca i32, align 4
  %neg = alloca i8, align 1
  store %struct.bc_struct** %num, %struct.bc_struct*** %num.addr, align 8
  store i32 %val, i32* %val.addr, align 4
  store i32 1, i32* %ix, align 4
  store i8 0, i8* %neg, align 1
  %0 = load i32, i32* %val.addr, align 4
  %cmp = icmp slt i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i8 1, i8* %neg, align 1
  %1 = load i32, i32* %val.addr, align 4
  %sub = sub nsw i32 0, %1
  store i32 %sub, i32* %val.addr, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %arrayidx = getelementptr inbounds [30 x i8], [30 x i8]* %buffer, i32 0, i64 0
  store i8* %arrayidx, i8** %bptr, align 8
  %2 = load i32, i32* %val.addr, align 4
  %rem = srem i32 %2, 10
  %conv = trunc i32 %rem to i8
  %3 = load i8*, i8** %bptr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %3, i32 1
  store i8* %incdec.ptr, i8** %bptr, align 8
  store i8 %conv, i8* %3, align 1
  %4 = load i32, i32* %val.addr, align 4
  %div = sdiv i32 %4, 10
  store i32 %div, i32* %val.addr, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %5 = load i32, i32* %val.addr, align 4
  %cmp1 = icmp ne i32 %5, 0
  br i1 %cmp1, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %6 = load i32, i32* %val.addr, align 4
  %rem3 = srem i32 %6, 10
  %conv4 = trunc i32 %rem3 to i8
  %7 = load i8*, i8** %bptr, align 8
  %incdec.ptr5 = getelementptr inbounds i8, i8* %7, i32 1
  store i8* %incdec.ptr5, i8** %bptr, align 8
  store i8 %conv4, i8* %7, align 1
  %8 = load i32, i32* %val.addr, align 4
  %div6 = sdiv i32 %8, 10
  store i32 %div6, i32* %val.addr, align 4
  %9 = load i32, i32* %ix, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %ix, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %10 = load %struct.bc_struct**, %struct.bc_struct*** %num.addr, align 8
  call void @free_num(%struct.bc_struct** %10)
  %11 = load i32, i32* %ix, align 4
  %call = call %struct.bc_struct* @new_num(i32 %11, i32 0)
  %12 = load %struct.bc_struct**, %struct.bc_struct*** %num.addr, align 8
  store %struct.bc_struct* %call, %struct.bc_struct** %12, align 8
  %13 = load i8, i8* %neg, align 1
  %tobool = icmp ne i8 %13, 0
  br i1 %tobool, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %while.end
  %14 = load %struct.bc_struct**, %struct.bc_struct*** %num.addr, align 8
  %15 = load %struct.bc_struct*, %struct.bc_struct** %14, align 8
  %n_sign = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %15, i32 0, i32 0
  store i32 1, i32* %n_sign, align 4
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.7, %while.end
  %16 = load %struct.bc_struct**, %struct.bc_struct*** %num.addr, align 8
  %17 = load %struct.bc_struct*, %struct.bc_struct** %16, align 8
  %n_value = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %17, i32 0, i32 4
  %arrayidx9 = getelementptr inbounds [1024 x i8], [1024 x i8]* %n_value, i32 0, i64 0
  store i8* %arrayidx9, i8** %vptr, align 8
  br label %while.cond.10

while.cond.10:                                    ; preds = %while.body.13, %if.end.8
  %18 = load i32, i32* %ix, align 4
  %dec = add nsw i32 %18, -1
  store i32 %dec, i32* %ix, align 4
  %cmp11 = icmp sgt i32 %18, 0
  br i1 %cmp11, label %while.body.13, label %while.end.16

while.body.13:                                    ; preds = %while.cond.10
  %19 = load i8*, i8** %bptr, align 8
  %incdec.ptr14 = getelementptr inbounds i8, i8* %19, i32 -1
  store i8* %incdec.ptr14, i8** %bptr, align 8
  %20 = load i8, i8* %incdec.ptr14, align 1
  %21 = load i8*, i8** %vptr, align 8
  %incdec.ptr15 = getelementptr inbounds i8, i8* %21, i32 1
  store i8* %incdec.ptr15, i8** %vptr, align 8
  store i8 %20, i8* %21, align 1
  br label %while.cond.10

while.end.16:                                     ; preds = %while.cond.10
  ret void
}

; Function Attrs: nounwind uwtable
define i64 @num2long(%struct.bc_struct* %num) #0 {
entry:
  %retval = alloca i64, align 8
  %num.addr = alloca %struct.bc_struct*, align 8
  %val = alloca i64, align 8
  %nptr = alloca i8*, align 8
  %index = alloca i32, align 4
  store %struct.bc_struct* %num, %struct.bc_struct** %num.addr, align 8
  store i64 0, i64* %val, align 8
  %0 = load %struct.bc_struct*, %struct.bc_struct** %num.addr, align 8
  %n_value = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %0, i32 0, i32 4
  %arrayidx = getelementptr inbounds [1024 x i8], [1024 x i8]* %n_value, i32 0, i64 0
  store i8* %arrayidx, i8** %nptr, align 8
  %1 = load %struct.bc_struct*, %struct.bc_struct** %num.addr, align 8
  %n_len = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %1, i32 0, i32 1
  %2 = load i32, i32* %n_len, align 4
  store i32 %2, i32* %index, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i32, i32* %index, align 4
  %cmp = icmp sgt i32 %3, 0
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %4 = load i64, i64* %val, align 8
  %cmp1 = icmp sle i64 %4, 922337203685477580
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %5 = phi i1 [ false, %for.cond ], [ %cmp1, %land.rhs ]
  br i1 %5, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %6 = load i64, i64* %val, align 8
  %mul = mul nsw i64 %6, 10
  %7 = load i8*, i8** %nptr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %7, i32 1
  store i8* %incdec.ptr, i8** %nptr, align 8
  %8 = load i8, i8* %7, align 1
  %conv = sext i8 %8 to i64
  %add = add nsw i64 %mul, %conv
  store i64 %add, i64* %val, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %9 = load i32, i32* %index, align 4
  %dec = add nsw i32 %9, -1
  store i32 %dec, i32* %index, align 4
  br label %for.cond

for.end:                                          ; preds = %land.end
  %10 = load i32, i32* %index, align 4
  %cmp2 = icmp sgt i32 %10, 0
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %for.end
  store i64 0, i64* %val, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end
  %11 = load i64, i64* %val, align 8
  %cmp4 = icmp slt i64 %11, 0
  br i1 %cmp4, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end
  store i64 0, i64* %val, align 8
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.6, %if.end
  %12 = load %struct.bc_struct*, %struct.bc_struct** %num.addr, align 8
  %n_sign = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %12, i32 0, i32 0
  %13 = load i32, i32* %n_sign, align 4
  %cmp8 = icmp eq i32 %13, 0
  br i1 %cmp8, label %if.then.10, label %if.else

if.then.10:                                       ; preds = %if.end.7
  %14 = load i64, i64* %val, align 8
  store i64 %14, i64* %retval
  br label %return

if.else:                                          ; preds = %if.end.7
  %15 = load i64, i64* %val, align 8
  %sub = sub nsw i64 0, %15
  store i64 %sub, i64* %retval
  br label %return

return:                                           ; preds = %if.else, %if.then.10
  %16 = load i64, i64* %retval
  ret i64 %16
}

; Function Attrs: nounwind uwtable
define i32 @bc_compare(%struct.bc_struct* %n1, %struct.bc_struct* %n2) #0 {
entry:
  %n1.addr = alloca %struct.bc_struct*, align 8
  %n2.addr = alloca %struct.bc_struct*, align 8
  store %struct.bc_struct* %n1, %struct.bc_struct** %n1.addr, align 8
  store %struct.bc_struct* %n2, %struct.bc_struct** %n2.addr, align 8
  %0 = load %struct.bc_struct*, %struct.bc_struct** %n1.addr, align 8
  %1 = load %struct.bc_struct*, %struct.bc_struct** %n2.addr, align 8
  %call = call i32 @_do_compare(%struct.bc_struct* %0, %struct.bc_struct* %1, i32 1, i32 0)
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @_do_compare(%struct.bc_struct* %n1, %struct.bc_struct* %n2, i32 %use_sign, i32 %ignore_last) #0 {
entry:
  %retval = alloca i32, align 4
  %n1.addr = alloca %struct.bc_struct*, align 8
  %n2.addr = alloca %struct.bc_struct*, align 8
  %use_sign.addr = alloca i32, align 4
  %ignore_last.addr = alloca i32, align 4
  %n1ptr = alloca i8*, align 8
  %n2ptr = alloca i8*, align 8
  %count = alloca i32, align 4
  store %struct.bc_struct* %n1, %struct.bc_struct** %n1.addr, align 8
  store %struct.bc_struct* %n2, %struct.bc_struct** %n2.addr, align 8
  store i32 %use_sign, i32* %use_sign.addr, align 4
  store i32 %ignore_last, i32* %ignore_last.addr, align 4
  %0 = load i32, i32* %use_sign.addr, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %1 = load %struct.bc_struct*, %struct.bc_struct** %n1.addr, align 8
  %n_sign = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %1, i32 0, i32 0
  %2 = load i32, i32* %n_sign, align 4
  %3 = load %struct.bc_struct*, %struct.bc_struct** %n2.addr, align 8
  %n_sign1 = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %3, i32 0, i32 0
  %4 = load i32, i32* %n_sign1, align 4
  %cmp = icmp ne i32 %2, %4
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %5 = load %struct.bc_struct*, %struct.bc_struct** %n1.addr, align 8
  %n_sign2 = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %5, i32 0, i32 0
  %6 = load i32, i32* %n_sign2, align 4
  %cmp3 = icmp eq i32 %6, 0
  br i1 %cmp3, label %if.then.4, label %if.else

if.then.4:                                        ; preds = %if.then
  store i32 1, i32* %retval
  br label %return

if.else:                                          ; preds = %if.then
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  %7 = load %struct.bc_struct*, %struct.bc_struct** %n1.addr, align 8
  %n_len = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %7, i32 0, i32 1
  %8 = load i32, i32* %n_len, align 4
  %9 = load %struct.bc_struct*, %struct.bc_struct** %n2.addr, align 8
  %n_len5 = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %9, i32 0, i32 1
  %10 = load i32, i32* %n_len5, align 4
  %cmp6 = icmp ne i32 %8, %10
  br i1 %cmp6, label %if.then.7, label %if.end.24

if.then.7:                                        ; preds = %if.end
  %11 = load %struct.bc_struct*, %struct.bc_struct** %n1.addr, align 8
  %n_len8 = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %11, i32 0, i32 1
  %12 = load i32, i32* %n_len8, align 4
  %13 = load %struct.bc_struct*, %struct.bc_struct** %n2.addr, align 8
  %n_len9 = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %13, i32 0, i32 1
  %14 = load i32, i32* %n_len9, align 4
  %cmp10 = icmp sgt i32 %12, %14
  br i1 %cmp10, label %if.then.11, label %if.else.17

if.then.11:                                       ; preds = %if.then.7
  %15 = load i32, i32* %use_sign.addr, align 4
  %tobool12 = icmp ne i32 %15, 0
  br i1 %tobool12, label %lor.lhs.false, label %if.then.15

lor.lhs.false:                                    ; preds = %if.then.11
  %16 = load %struct.bc_struct*, %struct.bc_struct** %n1.addr, align 8
  %n_sign13 = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %16, i32 0, i32 0
  %17 = load i32, i32* %n_sign13, align 4
  %cmp14 = icmp eq i32 %17, 0
  br i1 %cmp14, label %if.then.15, label %if.else.16

if.then.15:                                       ; preds = %lor.lhs.false, %if.then.11
  store i32 1, i32* %retval
  br label %return

if.else.16:                                       ; preds = %lor.lhs.false
  store i32 -1, i32* %retval
  br label %return

if.else.17:                                       ; preds = %if.then.7
  %18 = load i32, i32* %use_sign.addr, align 4
  %tobool18 = icmp ne i32 %18, 0
  br i1 %tobool18, label %lor.lhs.false.19, label %if.then.22

lor.lhs.false.19:                                 ; preds = %if.else.17
  %19 = load %struct.bc_struct*, %struct.bc_struct** %n1.addr, align 8
  %n_sign20 = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %19, i32 0, i32 0
  %20 = load i32, i32* %n_sign20, align 4
  %cmp21 = icmp eq i32 %20, 0
  br i1 %cmp21, label %if.then.22, label %if.else.23

if.then.22:                                       ; preds = %lor.lhs.false.19, %if.else.17
  store i32 -1, i32* %retval
  br label %return

if.else.23:                                       ; preds = %lor.lhs.false.19
  store i32 1, i32* %retval
  br label %return

if.end.24:                                        ; preds = %if.end
  %21 = load %struct.bc_struct*, %struct.bc_struct** %n1.addr, align 8
  %n_len25 = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %21, i32 0, i32 1
  %22 = load i32, i32* %n_len25, align 4
  %23 = load %struct.bc_struct*, %struct.bc_struct** %n1.addr, align 8
  %n_scale = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %23, i32 0, i32 2
  %24 = load i32, i32* %n_scale, align 4
  %25 = load %struct.bc_struct*, %struct.bc_struct** %n2.addr, align 8
  %n_scale26 = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %25, i32 0, i32 2
  %26 = load i32, i32* %n_scale26, align 4
  %cmp27 = icmp sgt i32 %24, %26
  br i1 %cmp27, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.24
  %27 = load %struct.bc_struct*, %struct.bc_struct** %n2.addr, align 8
  %n_scale28 = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %27, i32 0, i32 2
  %28 = load i32, i32* %n_scale28, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.end.24
  %29 = load %struct.bc_struct*, %struct.bc_struct** %n1.addr, align 8
  %n_scale29 = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %29, i32 0, i32 2
  %30 = load i32, i32* %n_scale29, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %28, %cond.true ], [ %30, %cond.false ]
  %add = add nsw i32 %22, %cond
  store i32 %add, i32* %count, align 4
  %31 = load %struct.bc_struct*, %struct.bc_struct** %n1.addr, align 8
  %n_value = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %31, i32 0, i32 4
  %arrayidx = getelementptr inbounds [1024 x i8], [1024 x i8]* %n_value, i32 0, i64 0
  store i8* %arrayidx, i8** %n1ptr, align 8
  %32 = load %struct.bc_struct*, %struct.bc_struct** %n2.addr, align 8
  %n_value30 = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %32, i32 0, i32 4
  %arrayidx31 = getelementptr inbounds [1024 x i8], [1024 x i8]* %n_value30, i32 0, i64 0
  store i8* %arrayidx31, i8** %n2ptr, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %cond.end
  %33 = load i32, i32* %count, align 4
  %cmp32 = icmp sgt i32 %33, 0
  br i1 %cmp32, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %34 = load i8*, i8** %n1ptr, align 8
  %35 = load i8, i8* %34, align 1
  %conv = sext i8 %35 to i32
  %36 = load i8*, i8** %n2ptr, align 8
  %37 = load i8, i8* %36, align 1
  %conv33 = sext i8 %37 to i32
  %cmp34 = icmp eq i32 %conv, %conv33
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %38 = phi i1 [ false, %while.cond ], [ %cmp34, %land.rhs ]
  br i1 %38, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %39 = load i8*, i8** %n1ptr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %39, i32 1
  store i8* %incdec.ptr, i8** %n1ptr, align 8
  %40 = load i8*, i8** %n2ptr, align 8
  %incdec.ptr36 = getelementptr inbounds i8, i8* %40, i32 1
  store i8* %incdec.ptr36, i8** %n2ptr, align 8
  %41 = load i32, i32* %count, align 4
  %dec = add nsw i32 %41, -1
  store i32 %dec, i32* %count, align 4
  br label %while.cond

while.end:                                        ; preds = %land.end
  %42 = load i32, i32* %ignore_last.addr, align 4
  %tobool37 = icmp ne i32 %42, 0
  br i1 %tobool37, label %land.lhs.true.38, label %if.end.47

land.lhs.true.38:                                 ; preds = %while.end
  %43 = load i32, i32* %count, align 4
  %cmp39 = icmp eq i32 %43, 1
  br i1 %cmp39, label %land.lhs.true.41, label %if.end.47

land.lhs.true.41:                                 ; preds = %land.lhs.true.38
  %44 = load %struct.bc_struct*, %struct.bc_struct** %n1.addr, align 8
  %n_scale42 = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %44, i32 0, i32 2
  %45 = load i32, i32* %n_scale42, align 4
  %46 = load %struct.bc_struct*, %struct.bc_struct** %n2.addr, align 8
  %n_scale43 = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %46, i32 0, i32 2
  %47 = load i32, i32* %n_scale43, align 4
  %cmp44 = icmp eq i32 %45, %47
  br i1 %cmp44, label %if.then.46, label %if.end.47

if.then.46:                                       ; preds = %land.lhs.true.41
  store i32 0, i32* %retval
  br label %return

if.end.47:                                        ; preds = %land.lhs.true.41, %land.lhs.true.38, %while.end
  %48 = load i32, i32* %count, align 4
  %cmp48 = icmp ne i32 %48, 0
  br i1 %cmp48, label %if.then.50, label %if.end.71

if.then.50:                                       ; preds = %if.end.47
  %49 = load i8*, i8** %n1ptr, align 8
  %50 = load i8, i8* %49, align 1
  %conv51 = sext i8 %50 to i32
  %51 = load i8*, i8** %n2ptr, align 8
  %52 = load i8, i8* %51, align 1
  %conv52 = sext i8 %52 to i32
  %cmp53 = icmp sgt i32 %conv51, %conv52
  br i1 %cmp53, label %if.then.55, label %if.else.63

if.then.55:                                       ; preds = %if.then.50
  %53 = load i32, i32* %use_sign.addr, align 4
  %tobool56 = icmp ne i32 %53, 0
  br i1 %tobool56, label %lor.lhs.false.57, label %if.then.61

lor.lhs.false.57:                                 ; preds = %if.then.55
  %54 = load %struct.bc_struct*, %struct.bc_struct** %n1.addr, align 8
  %n_sign58 = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %54, i32 0, i32 0
  %55 = load i32, i32* %n_sign58, align 4
  %cmp59 = icmp eq i32 %55, 0
  br i1 %cmp59, label %if.then.61, label %if.else.62

if.then.61:                                       ; preds = %lor.lhs.false.57, %if.then.55
  store i32 1, i32* %retval
  br label %return

if.else.62:                                       ; preds = %lor.lhs.false.57
  store i32 -1, i32* %retval
  br label %return

if.else.63:                                       ; preds = %if.then.50
  %56 = load i32, i32* %use_sign.addr, align 4
  %tobool64 = icmp ne i32 %56, 0
  br i1 %tobool64, label %lor.lhs.false.65, label %if.then.69

lor.lhs.false.65:                                 ; preds = %if.else.63
  %57 = load %struct.bc_struct*, %struct.bc_struct** %n1.addr, align 8
  %n_sign66 = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %57, i32 0, i32 0
  %58 = load i32, i32* %n_sign66, align 4
  %cmp67 = icmp eq i32 %58, 0
  br i1 %cmp67, label %if.then.69, label %if.else.70

if.then.69:                                       ; preds = %lor.lhs.false.65, %if.else.63
  store i32 -1, i32* %retval
  br label %return

if.else.70:                                       ; preds = %lor.lhs.false.65
  store i32 1, i32* %retval
  br label %return

if.end.71:                                        ; preds = %if.end.47
  %59 = load %struct.bc_struct*, %struct.bc_struct** %n1.addr, align 8
  %n_scale72 = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %59, i32 0, i32 2
  %60 = load i32, i32* %n_scale72, align 4
  %61 = load %struct.bc_struct*, %struct.bc_struct** %n2.addr, align 8
  %n_scale73 = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %61, i32 0, i32 2
  %62 = load i32, i32* %n_scale73, align 4
  %cmp74 = icmp ne i32 %60, %62
  br i1 %cmp74, label %if.then.76, label %if.end.125

if.then.76:                                       ; preds = %if.end.71
  %63 = load %struct.bc_struct*, %struct.bc_struct** %n1.addr, align 8
  %n_scale77 = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %63, i32 0, i32 2
  %64 = load i32, i32* %n_scale77, align 4
  %65 = load %struct.bc_struct*, %struct.bc_struct** %n2.addr, align 8
  %n_scale78 = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %65, i32 0, i32 2
  %66 = load i32, i32* %n_scale78, align 4
  %cmp79 = icmp sgt i32 %64, %66
  br i1 %cmp79, label %if.then.81, label %if.else.100

if.then.81:                                       ; preds = %if.then.76
  %67 = load %struct.bc_struct*, %struct.bc_struct** %n1.addr, align 8
  %n_scale82 = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %67, i32 0, i32 2
  %68 = load i32, i32* %n_scale82, align 4
  %69 = load %struct.bc_struct*, %struct.bc_struct** %n2.addr, align 8
  %n_scale83 = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %69, i32 0, i32 2
  %70 = load i32, i32* %n_scale83, align 4
  %sub = sub nsw i32 %68, %70
  store i32 %sub, i32* %count, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.81
  %71 = load i32, i32* %count, align 4
  %cmp84 = icmp sgt i32 %71, 0
  br i1 %cmp84, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %72 = load i8*, i8** %n1ptr, align 8
  %incdec.ptr86 = getelementptr inbounds i8, i8* %72, i32 1
  store i8* %incdec.ptr86, i8** %n1ptr, align 8
  %73 = load i8, i8* %72, align 1
  %conv87 = sext i8 %73 to i32
  %cmp88 = icmp ne i32 %conv87, 0
  br i1 %cmp88, label %if.then.90, label %if.end.98

if.then.90:                                       ; preds = %for.body
  %74 = load i32, i32* %use_sign.addr, align 4
  %tobool91 = icmp ne i32 %74, 0
  br i1 %tobool91, label %lor.lhs.false.92, label %if.then.96

lor.lhs.false.92:                                 ; preds = %if.then.90
  %75 = load %struct.bc_struct*, %struct.bc_struct** %n1.addr, align 8
  %n_sign93 = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %75, i32 0, i32 0
  %76 = load i32, i32* %n_sign93, align 4
  %cmp94 = icmp eq i32 %76, 0
  br i1 %cmp94, label %if.then.96, label %if.else.97

if.then.96:                                       ; preds = %lor.lhs.false.92, %if.then.90
  store i32 1, i32* %retval
  br label %return

if.else.97:                                       ; preds = %lor.lhs.false.92
  store i32 -1, i32* %retval
  br label %return

if.end.98:                                        ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.98
  %77 = load i32, i32* %count, align 4
  %dec99 = add nsw i32 %77, -1
  store i32 %dec99, i32* %count, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.124

if.else.100:                                      ; preds = %if.then.76
  %78 = load %struct.bc_struct*, %struct.bc_struct** %n2.addr, align 8
  %n_scale101 = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %78, i32 0, i32 2
  %79 = load i32, i32* %n_scale101, align 4
  %80 = load %struct.bc_struct*, %struct.bc_struct** %n1.addr, align 8
  %n_scale102 = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %80, i32 0, i32 2
  %81 = load i32, i32* %n_scale102, align 4
  %sub103 = sub nsw i32 %79, %81
  store i32 %sub103, i32* %count, align 4
  br label %for.cond.104

for.cond.104:                                     ; preds = %for.inc.121, %if.else.100
  %82 = load i32, i32* %count, align 4
  %cmp105 = icmp sgt i32 %82, 0
  br i1 %cmp105, label %for.body.107, label %for.end.123

for.body.107:                                     ; preds = %for.cond.104
  %83 = load i8*, i8** %n2ptr, align 8
  %incdec.ptr108 = getelementptr inbounds i8, i8* %83, i32 1
  store i8* %incdec.ptr108, i8** %n2ptr, align 8
  %84 = load i8, i8* %83, align 1
  %conv109 = sext i8 %84 to i32
  %cmp110 = icmp ne i32 %conv109, 0
  br i1 %cmp110, label %if.then.112, label %if.end.120

if.then.112:                                      ; preds = %for.body.107
  %85 = load i32, i32* %use_sign.addr, align 4
  %tobool113 = icmp ne i32 %85, 0
  br i1 %tobool113, label %lor.lhs.false.114, label %if.then.118

lor.lhs.false.114:                                ; preds = %if.then.112
  %86 = load %struct.bc_struct*, %struct.bc_struct** %n1.addr, align 8
  %n_sign115 = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %86, i32 0, i32 0
  %87 = load i32, i32* %n_sign115, align 4
  %cmp116 = icmp eq i32 %87, 0
  br i1 %cmp116, label %if.then.118, label %if.else.119

if.then.118:                                      ; preds = %lor.lhs.false.114, %if.then.112
  store i32 -1, i32* %retval
  br label %return

if.else.119:                                      ; preds = %lor.lhs.false.114
  store i32 1, i32* %retval
  br label %return

if.end.120:                                       ; preds = %for.body.107
  br label %for.inc.121

for.inc.121:                                      ; preds = %if.end.120
  %88 = load i32, i32* %count, align 4
  %dec122 = add nsw i32 %88, -1
  store i32 %dec122, i32* %count, align 4
  br label %for.cond.104

for.end.123:                                      ; preds = %for.cond.104
  br label %if.end.124

if.end.124:                                       ; preds = %for.end.123, %for.end
  br label %if.end.125

if.end.125:                                       ; preds = %if.end.124, %if.end.71
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.125, %if.else.119, %if.then.118, %if.else.97, %if.then.96, %if.else.70, %if.then.69, %if.else.62, %if.then.61, %if.then.46, %if.else.23, %if.then.22, %if.else.16, %if.then.15, %if.else, %if.then.4
  %89 = load i32, i32* %retval
  ret i32 %89
}

; Function Attrs: nounwind uwtable
define signext i8 @is_zero(%struct.bc_struct* %num) #0 {
entry:
  %retval = alloca i8, align 1
  %num.addr = alloca %struct.bc_struct*, align 8
  %count = alloca i32, align 4
  %nptr = alloca i8*, align 8
  store %struct.bc_struct* %num, %struct.bc_struct** %num.addr, align 8
  %0 = load %struct.bc_struct*, %struct.bc_struct** %num.addr, align 8
  %1 = load %struct.bc_struct*, %struct.bc_struct** @_zero_, align 8
  %cmp = icmp eq %struct.bc_struct* %0, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i8 1, i8* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.bc_struct*, %struct.bc_struct** %num.addr, align 8
  %n_len = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %2, i32 0, i32 1
  %3 = load i32, i32* %n_len, align 4
  %4 = load %struct.bc_struct*, %struct.bc_struct** %num.addr, align 8
  %n_scale = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %4, i32 0, i32 2
  %5 = load i32, i32* %n_scale, align 4
  %add = add nsw i32 %3, %5
  store i32 %add, i32* %count, align 4
  %6 = load %struct.bc_struct*, %struct.bc_struct** %num.addr, align 8
  %n_value = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %6, i32 0, i32 4
  %arrayidx = getelementptr inbounds [1024 x i8], [1024 x i8]* %n_value, i32 0, i64 0
  store i8* %arrayidx, i8** %nptr, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %7 = load i32, i32* %count, align 4
  %cmp1 = icmp sgt i32 %7, 0
  br i1 %cmp1, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %8 = load i8*, i8** %nptr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %8, i32 1
  store i8* %incdec.ptr, i8** %nptr, align 8
  %9 = load i8, i8* %8, align 1
  %conv = sext i8 %9 to i32
  %cmp2 = icmp eq i32 %conv, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %10 = phi i1 [ false, %while.cond ], [ %cmp2, %land.rhs ]
  br i1 %10, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %11 = load i32, i32* %count, align 4
  %dec = add nsw i32 %11, -1
  store i32 %dec, i32* %count, align 4
  br label %while.cond

while.end:                                        ; preds = %land.end
  %12 = load i32, i32* %count, align 4
  %cmp4 = icmp ne i32 %12, 0
  br i1 %cmp4, label %if.then.6, label %if.else

if.then.6:                                        ; preds = %while.end
  store i8 0, i8* %retval
  br label %return

if.else:                                          ; preds = %while.end
  store i8 1, i8* %retval
  br label %return

return:                                           ; preds = %if.else, %if.then.6, %if.then
  %13 = load i8, i8* %retval
  ret i8 %13
}

; Function Attrs: nounwind uwtable
define signext i8 @is_neg(%struct.bc_struct* %num) #0 {
entry:
  %num.addr = alloca %struct.bc_struct*, align 8
  store %struct.bc_struct* %num, %struct.bc_struct** %num.addr, align 8
  %0 = load %struct.bc_struct*, %struct.bc_struct** %num.addr, align 8
  %n_sign = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %0, i32 0, i32 0
  %1 = load i32, i32* %n_sign, align 4
  %cmp = icmp eq i32 %1, 1
  %conv = zext i1 %cmp to i32
  %conv1 = trunc i32 %conv to i8
  ret i8 %conv1
}

; Function Attrs: nounwind uwtable
define void @bc_add(%struct.bc_struct* %n1, %struct.bc_struct* %n2, %struct.bc_struct** %result) #0 {
entry:
  %n1.addr = alloca %struct.bc_struct*, align 8
  %n2.addr = alloca %struct.bc_struct*, align 8
  %result.addr = alloca %struct.bc_struct**, align 8
  %sum = alloca %struct.bc_struct*, align 8
  %cmp_res = alloca i32, align 4
  store %struct.bc_struct* %n1, %struct.bc_struct** %n1.addr, align 8
  store %struct.bc_struct* %n2, %struct.bc_struct** %n2.addr, align 8
  store %struct.bc_struct** %result, %struct.bc_struct*** %result.addr, align 8
  %0 = load %struct.bc_struct*, %struct.bc_struct** %n1.addr, align 8
  %n_sign = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %0, i32 0, i32 0
  %1 = load i32, i32* %n_sign, align 4
  %2 = load %struct.bc_struct*, %struct.bc_struct** %n2.addr, align 8
  %n_sign1 = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %2, i32 0, i32 0
  %3 = load i32, i32* %n_sign1, align 4
  %cmp = icmp eq i32 %1, %3
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %4 = load %struct.bc_struct*, %struct.bc_struct** %n1.addr, align 8
  %5 = load %struct.bc_struct*, %struct.bc_struct** %n2.addr, align 8
  %call = call %struct.bc_struct* @_do_add(%struct.bc_struct* %4, %struct.bc_struct* %5)
  store %struct.bc_struct* %call, %struct.bc_struct** %sum, align 8
  %6 = load %struct.bc_struct*, %struct.bc_struct** %n1.addr, align 8
  %n_sign2 = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %6, i32 0, i32 0
  %7 = load i32, i32* %n_sign2, align 4
  %8 = load %struct.bc_struct*, %struct.bc_struct** %sum, align 8
  %n_sign3 = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %8, i32 0, i32 0
  store i32 %7, i32* %n_sign3, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  %9 = load %struct.bc_struct*, %struct.bc_struct** %n1.addr, align 8
  %10 = load %struct.bc_struct*, %struct.bc_struct** %n2.addr, align 8
  %call4 = call i32 @_do_compare(%struct.bc_struct* %9, %struct.bc_struct* %10, i32 0, i32 0)
  store i32 %call4, i32* %cmp_res, align 4
  %11 = load i32, i32* %cmp_res, align 4
  switch i32 %11, label %sw.epilog [
    i32 -1, label %sw.bb
    i32 0, label %sw.bb.8
    i32 1, label %sw.bb.10
  ]

sw.bb:                                            ; preds = %if.else
  %12 = load %struct.bc_struct*, %struct.bc_struct** %n2.addr, align 8
  %13 = load %struct.bc_struct*, %struct.bc_struct** %n1.addr, align 8
  %call5 = call %struct.bc_struct* @_do_sub(%struct.bc_struct* %12, %struct.bc_struct* %13)
  store %struct.bc_struct* %call5, %struct.bc_struct** %sum, align 8
  %14 = load %struct.bc_struct*, %struct.bc_struct** %n2.addr, align 8
  %n_sign6 = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %14, i32 0, i32 0
  %15 = load i32, i32* %n_sign6, align 4
  %16 = load %struct.bc_struct*, %struct.bc_struct** %sum, align 8
  %n_sign7 = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %16, i32 0, i32 0
  store i32 %15, i32* %n_sign7, align 4
  br label %sw.epilog

sw.bb.8:                                          ; preds = %if.else
  %17 = load %struct.bc_struct*, %struct.bc_struct** @_zero_, align 8
  %call9 = call %struct.bc_struct* @copy_num(%struct.bc_struct* %17)
  store %struct.bc_struct* %call9, %struct.bc_struct** %sum, align 8
  br label %sw.epilog

sw.bb.10:                                         ; preds = %if.else
  %18 = load %struct.bc_struct*, %struct.bc_struct** %n1.addr, align 8
  %19 = load %struct.bc_struct*, %struct.bc_struct** %n2.addr, align 8
  %call11 = call %struct.bc_struct* @_do_sub(%struct.bc_struct* %18, %struct.bc_struct* %19)
  store %struct.bc_struct* %call11, %struct.bc_struct** %sum, align 8
  %20 = load %struct.bc_struct*, %struct.bc_struct** %n1.addr, align 8
  %n_sign12 = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %20, i32 0, i32 0
  %21 = load i32, i32* %n_sign12, align 4
  %22 = load %struct.bc_struct*, %struct.bc_struct** %sum, align 8
  %n_sign13 = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %22, i32 0, i32 0
  store i32 %21, i32* %n_sign13, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb.10, %if.else, %sw.bb.8, %sw.bb
  br label %if.end

if.end:                                           ; preds = %sw.epilog, %if.then
  %23 = load %struct.bc_struct**, %struct.bc_struct*** %result.addr, align 8
  call void @free_num(%struct.bc_struct** %23)
  %24 = load %struct.bc_struct*, %struct.bc_struct** %sum, align 8
  %25 = load %struct.bc_struct**, %struct.bc_struct*** %result.addr, align 8
  store %struct.bc_struct* %24, %struct.bc_struct** %25, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal %struct.bc_struct* @_do_add(%struct.bc_struct* %n1, %struct.bc_struct* %n2) #0 {
entry:
  %n1.addr = alloca %struct.bc_struct*, align 8
  %n2.addr = alloca %struct.bc_struct*, align 8
  %sum = alloca %struct.bc_struct*, align 8
  %sum_scale = alloca i32, align 4
  %sum_digits = alloca i32, align 4
  %n1ptr = alloca i8*, align 8
  %n2ptr = alloca i8*, align 8
  %sumptr = alloca i8*, align 8
  %carry = alloca i32, align 4
  %n1bytes = alloca i32, align 4
  %n2bytes = alloca i32, align 4
  store %struct.bc_struct* %n1, %struct.bc_struct** %n1.addr, align 8
  store %struct.bc_struct* %n2, %struct.bc_struct** %n2.addr, align 8
  %0 = load %struct.bc_struct*, %struct.bc_struct** %n1.addr, align 8
  %n_scale = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %0, i32 0, i32 2
  %1 = load i32, i32* %n_scale, align 4
  %2 = load %struct.bc_struct*, %struct.bc_struct** %n2.addr, align 8
  %n_scale1 = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %2, i32 0, i32 2
  %3 = load i32, i32* %n_scale1, align 4
  %cmp = icmp sgt i32 %1, %3
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %4 = load %struct.bc_struct*, %struct.bc_struct** %n1.addr, align 8
  %n_scale2 = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %4, i32 0, i32 2
  %5 = load i32, i32* %n_scale2, align 4
  br label %cond.end

cond.false:                                       ; preds = %entry
  %6 = load %struct.bc_struct*, %struct.bc_struct** %n2.addr, align 8
  %n_scale3 = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %6, i32 0, i32 2
  %7 = load i32, i32* %n_scale3, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %5, %cond.true ], [ %7, %cond.false ]
  store i32 %cond, i32* %sum_scale, align 4
  %8 = load %struct.bc_struct*, %struct.bc_struct** %n1.addr, align 8
  %n_len = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %8, i32 0, i32 1
  %9 = load i32, i32* %n_len, align 4
  %10 = load %struct.bc_struct*, %struct.bc_struct** %n2.addr, align 8
  %n_len4 = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %10, i32 0, i32 1
  %11 = load i32, i32* %n_len4, align 4
  %cmp5 = icmp sgt i32 %9, %11
  br i1 %cmp5, label %cond.true.6, label %cond.false.8

cond.true.6:                                      ; preds = %cond.end
  %12 = load %struct.bc_struct*, %struct.bc_struct** %n1.addr, align 8
  %n_len7 = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %12, i32 0, i32 1
  %13 = load i32, i32* %n_len7, align 4
  br label %cond.end.10

cond.false.8:                                     ; preds = %cond.end
  %14 = load %struct.bc_struct*, %struct.bc_struct** %n2.addr, align 8
  %n_len9 = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %14, i32 0, i32 1
  %15 = load i32, i32* %n_len9, align 4
  br label %cond.end.10

cond.end.10:                                      ; preds = %cond.false.8, %cond.true.6
  %cond11 = phi i32 [ %13, %cond.true.6 ], [ %15, %cond.false.8 ]
  %add = add nsw i32 %cond11, 1
  store i32 %add, i32* %sum_digits, align 4
  %16 = load i32, i32* %sum_digits, align 4
  %17 = load i32, i32* %sum_scale, align 4
  %call = call %struct.bc_struct* @new_num(i32 %16, i32 %17)
  store %struct.bc_struct* %call, %struct.bc_struct** %sum, align 8
  %18 = load %struct.bc_struct*, %struct.bc_struct** %n1.addr, align 8
  %n_scale12 = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %18, i32 0, i32 2
  %19 = load i32, i32* %n_scale12, align 4
  store i32 %19, i32* %n1bytes, align 4
  %20 = load %struct.bc_struct*, %struct.bc_struct** %n2.addr, align 8
  %n_scale13 = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %20, i32 0, i32 2
  %21 = load i32, i32* %n_scale13, align 4
  store i32 %21, i32* %n2bytes, align 4
  %22 = load %struct.bc_struct*, %struct.bc_struct** %n1.addr, align 8
  %n_value = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %22, i32 0, i32 4
  %arrayidx = getelementptr inbounds [1024 x i8], [1024 x i8]* %n_value, i32 0, i64 0
  %23 = load %struct.bc_struct*, %struct.bc_struct** %n1.addr, align 8
  %n_len14 = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %23, i32 0, i32 1
  %24 = load i32, i32* %n_len14, align 4
  %idx.ext = sext i32 %24 to i64
  %add.ptr = getelementptr inbounds i8, i8* %arrayidx, i64 %idx.ext
  %25 = load i32, i32* %n1bytes, align 4
  %idx.ext15 = sext i32 %25 to i64
  %add.ptr16 = getelementptr inbounds i8, i8* %add.ptr, i64 %idx.ext15
  %add.ptr17 = getelementptr inbounds i8, i8* %add.ptr16, i64 -1
  store i8* %add.ptr17, i8** %n1ptr, align 8
  %26 = load %struct.bc_struct*, %struct.bc_struct** %n2.addr, align 8
  %n_value18 = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %26, i32 0, i32 4
  %arrayidx19 = getelementptr inbounds [1024 x i8], [1024 x i8]* %n_value18, i32 0, i64 0
  %27 = load %struct.bc_struct*, %struct.bc_struct** %n2.addr, align 8
  %n_len20 = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %27, i32 0, i32 1
  %28 = load i32, i32* %n_len20, align 4
  %idx.ext21 = sext i32 %28 to i64
  %add.ptr22 = getelementptr inbounds i8, i8* %arrayidx19, i64 %idx.ext21
  %29 = load i32, i32* %n2bytes, align 4
  %idx.ext23 = sext i32 %29 to i64
  %add.ptr24 = getelementptr inbounds i8, i8* %add.ptr22, i64 %idx.ext23
  %add.ptr25 = getelementptr inbounds i8, i8* %add.ptr24, i64 -1
  store i8* %add.ptr25, i8** %n2ptr, align 8
  %30 = load %struct.bc_struct*, %struct.bc_struct** %sum, align 8
  %n_value26 = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %30, i32 0, i32 4
  %arrayidx27 = getelementptr inbounds [1024 x i8], [1024 x i8]* %n_value26, i32 0, i64 0
  %31 = load i32, i32* %sum_scale, align 4
  %idx.ext28 = sext i32 %31 to i64
  %add.ptr29 = getelementptr inbounds i8, i8* %arrayidx27, i64 %idx.ext28
  %32 = load i32, i32* %sum_digits, align 4
  %idx.ext30 = sext i32 %32 to i64
  %add.ptr31 = getelementptr inbounds i8, i8* %add.ptr29, i64 %idx.ext30
  %add.ptr32 = getelementptr inbounds i8, i8* %add.ptr31, i64 -1
  store i8* %add.ptr32, i8** %sumptr, align 8
  %33 = load i32, i32* %n1bytes, align 4
  %34 = load i32, i32* %n2bytes, align 4
  %cmp33 = icmp ne i32 %33, %34
  br i1 %cmp33, label %if.then, label %if.end.45

if.then:                                          ; preds = %cond.end.10
  %35 = load i32, i32* %n1bytes, align 4
  %36 = load i32, i32* %n2bytes, align 4
  %cmp34 = icmp sgt i32 %35, %36
  br i1 %cmp34, label %if.then.35, label %if.else

if.then.35:                                       ; preds = %if.then
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then.35
  %37 = load i32, i32* %n1bytes, align 4
  %38 = load i32, i32* %n2bytes, align 4
  %cmp36 = icmp sgt i32 %37, %38
  br i1 %cmp36, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %39 = load i8*, i8** %n1ptr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %39, i32 -1
  store i8* %incdec.ptr, i8** %n1ptr, align 8
  %40 = load i8, i8* %39, align 1
  %41 = load i8*, i8** %sumptr, align 8
  %incdec.ptr37 = getelementptr inbounds i8, i8* %41, i32 -1
  store i8* %incdec.ptr37, i8** %sumptr, align 8
  store i8 %40, i8* %41, align 1
  %42 = load i32, i32* %n1bytes, align 4
  %dec = add nsw i32 %42, -1
  store i32 %dec, i32* %n1bytes, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %if.end

if.else:                                          ; preds = %if.then
  br label %while.cond.38

while.cond.38:                                    ; preds = %while.body.40, %if.else
  %43 = load i32, i32* %n2bytes, align 4
  %44 = load i32, i32* %n1bytes, align 4
  %cmp39 = icmp sgt i32 %43, %44
  br i1 %cmp39, label %while.body.40, label %while.end.44

while.body.40:                                    ; preds = %while.cond.38
  %45 = load i8*, i8** %n2ptr, align 8
  %incdec.ptr41 = getelementptr inbounds i8, i8* %45, i32 -1
  store i8* %incdec.ptr41, i8** %n2ptr, align 8
  %46 = load i8, i8* %45, align 1
  %47 = load i8*, i8** %sumptr, align 8
  %incdec.ptr42 = getelementptr inbounds i8, i8* %47, i32 -1
  store i8* %incdec.ptr42, i8** %sumptr, align 8
  store i8 %46, i8* %47, align 1
  %48 = load i32, i32* %n2bytes, align 4
  %dec43 = add nsw i32 %48, -1
  store i32 %dec43, i32* %n2bytes, align 4
  br label %while.cond.38

while.end.44:                                     ; preds = %while.cond.38
  br label %if.end

if.end:                                           ; preds = %while.end.44, %while.end
  br label %if.end.45

if.end.45:                                        ; preds = %if.end, %cond.end.10
  %49 = load %struct.bc_struct*, %struct.bc_struct** %n1.addr, align 8
  %n_len46 = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %49, i32 0, i32 1
  %50 = load i32, i32* %n_len46, align 4
  %51 = load i32, i32* %n1bytes, align 4
  %add47 = add nsw i32 %51, %50
  store i32 %add47, i32* %n1bytes, align 4
  %52 = load %struct.bc_struct*, %struct.bc_struct** %n2.addr, align 8
  %n_len48 = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %52, i32 0, i32 1
  %53 = load i32, i32* %n_len48, align 4
  %54 = load i32, i32* %n2bytes, align 4
  %add49 = add nsw i32 %54, %53
  store i32 %add49, i32* %n2bytes, align 4
  store i32 0, i32* %carry, align 4
  br label %while.cond.50

while.cond.50:                                    ; preds = %if.end.67, %if.end.45
  %55 = load i32, i32* %n1bytes, align 4
  %cmp51 = icmp sgt i32 %55, 0
  br i1 %cmp51, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond.50
  %56 = load i32, i32* %n2bytes, align 4
  %cmp52 = icmp sgt i32 %56, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond.50
  %57 = phi i1 [ false, %while.cond.50 ], [ %cmp52, %land.rhs ]
  br i1 %57, label %while.body.53, label %while.end.71

while.body.53:                                    ; preds = %land.end
  %58 = load i8*, i8** %n1ptr, align 8
  %incdec.ptr54 = getelementptr inbounds i8, i8* %58, i32 -1
  store i8* %incdec.ptr54, i8** %n1ptr, align 8
  %59 = load i8, i8* %58, align 1
  %conv = sext i8 %59 to i32
  %60 = load i8*, i8** %n2ptr, align 8
  %incdec.ptr55 = getelementptr inbounds i8, i8* %60, i32 -1
  store i8* %incdec.ptr55, i8** %n2ptr, align 8
  %61 = load i8, i8* %60, align 1
  %conv56 = sext i8 %61 to i32
  %add57 = add nsw i32 %conv, %conv56
  %62 = load i32, i32* %carry, align 4
  %add58 = add nsw i32 %add57, %62
  %conv59 = trunc i32 %add58 to i8
  %63 = load i8*, i8** %sumptr, align 8
  store i8 %conv59, i8* %63, align 1
  %64 = load i8*, i8** %sumptr, align 8
  %65 = load i8, i8* %64, align 1
  %conv60 = sext i8 %65 to i32
  %cmp61 = icmp sgt i32 %conv60, 9
  br i1 %cmp61, label %if.then.63, label %if.else.66

if.then.63:                                       ; preds = %while.body.53
  store i32 1, i32* %carry, align 4
  %66 = load i8*, i8** %sumptr, align 8
  %67 = load i8, i8* %66, align 1
  %conv64 = sext i8 %67 to i32
  %sub = sub nsw i32 %conv64, 10
  %conv65 = trunc i32 %sub to i8
  store i8 %conv65, i8* %66, align 1
  br label %if.end.67

if.else.66:                                       ; preds = %while.body.53
  store i32 0, i32* %carry, align 4
  br label %if.end.67

if.end.67:                                        ; preds = %if.else.66, %if.then.63
  %68 = load i8*, i8** %sumptr, align 8
  %incdec.ptr68 = getelementptr inbounds i8, i8* %68, i32 -1
  store i8* %incdec.ptr68, i8** %sumptr, align 8
  %69 = load i32, i32* %n1bytes, align 4
  %dec69 = add nsw i32 %69, -1
  store i32 %dec69, i32* %n1bytes, align 4
  %70 = load i32, i32* %n2bytes, align 4
  %dec70 = add nsw i32 %70, -1
  store i32 %dec70, i32* %n2bytes, align 4
  br label %while.cond.50

while.end.71:                                     ; preds = %land.end
  %71 = load i32, i32* %n1bytes, align 4
  %cmp72 = icmp eq i32 %71, 0
  br i1 %cmp72, label %if.then.74, label %if.end.75

if.then.74:                                       ; preds = %while.end.71
  %72 = load i32, i32* %n2bytes, align 4
  store i32 %72, i32* %n1bytes, align 4
  %73 = load i8*, i8** %n2ptr, align 8
  store i8* %73, i8** %n1ptr, align 8
  br label %if.end.75

if.end.75:                                        ; preds = %if.then.74, %while.end.71
  br label %while.cond.76

while.cond.76:                                    ; preds = %if.end.93, %if.end.75
  %74 = load i32, i32* %n1bytes, align 4
  %dec77 = add nsw i32 %74, -1
  store i32 %dec77, i32* %n1bytes, align 4
  %cmp78 = icmp sgt i32 %74, 0
  br i1 %cmp78, label %while.body.80, label %while.end.95

while.body.80:                                    ; preds = %while.cond.76
  %75 = load i8*, i8** %n1ptr, align 8
  %incdec.ptr81 = getelementptr inbounds i8, i8* %75, i32 -1
  store i8* %incdec.ptr81, i8** %n1ptr, align 8
  %76 = load i8, i8* %75, align 1
  %conv82 = sext i8 %76 to i32
  %77 = load i32, i32* %carry, align 4
  %add83 = add nsw i32 %conv82, %77
  %conv84 = trunc i32 %add83 to i8
  %78 = load i8*, i8** %sumptr, align 8
  store i8 %conv84, i8* %78, align 1
  %79 = load i8*, i8** %sumptr, align 8
  %80 = load i8, i8* %79, align 1
  %conv85 = sext i8 %80 to i32
  %cmp86 = icmp sgt i32 %conv85, 9
  br i1 %cmp86, label %if.then.88, label %if.else.92

if.then.88:                                       ; preds = %while.body.80
  store i32 1, i32* %carry, align 4
  %81 = load i8*, i8** %sumptr, align 8
  %82 = load i8, i8* %81, align 1
  %conv89 = sext i8 %82 to i32
  %sub90 = sub nsw i32 %conv89, 10
  %conv91 = trunc i32 %sub90 to i8
  store i8 %conv91, i8* %81, align 1
  br label %if.end.93

if.else.92:                                       ; preds = %while.body.80
  store i32 0, i32* %carry, align 4
  br label %if.end.93

if.end.93:                                        ; preds = %if.else.92, %if.then.88
  %83 = load i8*, i8** %sumptr, align 8
  %incdec.ptr94 = getelementptr inbounds i8, i8* %83, i32 -1
  store i8* %incdec.ptr94, i8** %sumptr, align 8
  br label %while.cond.76

while.end.95:                                     ; preds = %while.cond.76
  %84 = load i32, i32* %carry, align 4
  %cmp96 = icmp eq i32 %84, 1
  br i1 %cmp96, label %if.then.98, label %if.end.102

if.then.98:                                       ; preds = %while.end.95
  %85 = load i8*, i8** %sumptr, align 8
  %86 = load i8, i8* %85, align 1
  %conv99 = sext i8 %86 to i32
  %add100 = add nsw i32 %conv99, 1
  %conv101 = trunc i32 %add100 to i8
  store i8 %conv101, i8* %85, align 1
  br label %if.end.102

if.end.102:                                       ; preds = %if.then.98, %while.end.95
  %87 = load %struct.bc_struct*, %struct.bc_struct** %sum, align 8
  call void @_rm_leading_zeros(%struct.bc_struct* %87)
  %88 = load %struct.bc_struct*, %struct.bc_struct** %sum, align 8
  ret %struct.bc_struct* %88
}

; Function Attrs: nounwind uwtable
define internal %struct.bc_struct* @_do_sub(%struct.bc_struct* %n1, %struct.bc_struct* %n2) #0 {
entry:
  %n1.addr = alloca %struct.bc_struct*, align 8
  %n2.addr = alloca %struct.bc_struct*, align 8
  %diff = alloca %struct.bc_struct*, align 8
  %diff_scale = alloca i32, align 4
  %diff_len = alloca i32, align 4
  %min_scale = alloca i32, align 4
  %min_len = alloca i32, align 4
  %n1ptr = alloca i8*, align 8
  %n2ptr = alloca i8*, align 8
  %diffptr = alloca i8*, align 8
  %borrow = alloca i32, align 4
  %count = alloca i32, align 4
  %val = alloca i32, align 4
  store %struct.bc_struct* %n1, %struct.bc_struct** %n1.addr, align 8
  store %struct.bc_struct* %n2, %struct.bc_struct** %n2.addr, align 8
  %0 = load %struct.bc_struct*, %struct.bc_struct** %n1.addr, align 8
  %n_len = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %0, i32 0, i32 1
  %1 = load i32, i32* %n_len, align 4
  %2 = load %struct.bc_struct*, %struct.bc_struct** %n2.addr, align 8
  %n_len1 = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %2, i32 0, i32 1
  %3 = load i32, i32* %n_len1, align 4
  %cmp = icmp sgt i32 %1, %3
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %4 = load %struct.bc_struct*, %struct.bc_struct** %n1.addr, align 8
  %n_len2 = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %4, i32 0, i32 1
  %5 = load i32, i32* %n_len2, align 4
  br label %cond.end

cond.false:                                       ; preds = %entry
  %6 = load %struct.bc_struct*, %struct.bc_struct** %n2.addr, align 8
  %n_len3 = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %6, i32 0, i32 1
  %7 = load i32, i32* %n_len3, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %5, %cond.true ], [ %7, %cond.false ]
  store i32 %cond, i32* %diff_len, align 4
  %8 = load %struct.bc_struct*, %struct.bc_struct** %n1.addr, align 8
  %n_scale = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %8, i32 0, i32 2
  %9 = load i32, i32* %n_scale, align 4
  %10 = load %struct.bc_struct*, %struct.bc_struct** %n2.addr, align 8
  %n_scale4 = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %10, i32 0, i32 2
  %11 = load i32, i32* %n_scale4, align 4
  %cmp5 = icmp sgt i32 %9, %11
  br i1 %cmp5, label %cond.true.6, label %cond.false.8

cond.true.6:                                      ; preds = %cond.end
  %12 = load %struct.bc_struct*, %struct.bc_struct** %n1.addr, align 8
  %n_scale7 = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %12, i32 0, i32 2
  %13 = load i32, i32* %n_scale7, align 4
  br label %cond.end.10

cond.false.8:                                     ; preds = %cond.end
  %14 = load %struct.bc_struct*, %struct.bc_struct** %n2.addr, align 8
  %n_scale9 = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %14, i32 0, i32 2
  %15 = load i32, i32* %n_scale9, align 4
  br label %cond.end.10

cond.end.10:                                      ; preds = %cond.false.8, %cond.true.6
  %cond11 = phi i32 [ %13, %cond.true.6 ], [ %15, %cond.false.8 ]
  store i32 %cond11, i32* %diff_scale, align 4
  %16 = load %struct.bc_struct*, %struct.bc_struct** %n1.addr, align 8
  %n_len12 = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %16, i32 0, i32 1
  %17 = load i32, i32* %n_len12, align 4
  %18 = load %struct.bc_struct*, %struct.bc_struct** %n2.addr, align 8
  %n_len13 = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %18, i32 0, i32 1
  %19 = load i32, i32* %n_len13, align 4
  %cmp14 = icmp sgt i32 %17, %19
  br i1 %cmp14, label %cond.true.15, label %cond.false.17

cond.true.15:                                     ; preds = %cond.end.10
  %20 = load %struct.bc_struct*, %struct.bc_struct** %n2.addr, align 8
  %n_len16 = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %20, i32 0, i32 1
  %21 = load i32, i32* %n_len16, align 4
  br label %cond.end.19

cond.false.17:                                    ; preds = %cond.end.10
  %22 = load %struct.bc_struct*, %struct.bc_struct** %n1.addr, align 8
  %n_len18 = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %22, i32 0, i32 1
  %23 = load i32, i32* %n_len18, align 4
  br label %cond.end.19

cond.end.19:                                      ; preds = %cond.false.17, %cond.true.15
  %cond20 = phi i32 [ %21, %cond.true.15 ], [ %23, %cond.false.17 ]
  store i32 %cond20, i32* %min_len, align 4
  %24 = load %struct.bc_struct*, %struct.bc_struct** %n1.addr, align 8
  %n_scale21 = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %24, i32 0, i32 2
  %25 = load i32, i32* %n_scale21, align 4
  %26 = load %struct.bc_struct*, %struct.bc_struct** %n2.addr, align 8
  %n_scale22 = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %26, i32 0, i32 2
  %27 = load i32, i32* %n_scale22, align 4
  %cmp23 = icmp sgt i32 %25, %27
  br i1 %cmp23, label %cond.true.24, label %cond.false.26

cond.true.24:                                     ; preds = %cond.end.19
  %28 = load %struct.bc_struct*, %struct.bc_struct** %n2.addr, align 8
  %n_scale25 = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %28, i32 0, i32 2
  %29 = load i32, i32* %n_scale25, align 4
  br label %cond.end.28

cond.false.26:                                    ; preds = %cond.end.19
  %30 = load %struct.bc_struct*, %struct.bc_struct** %n1.addr, align 8
  %n_scale27 = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %30, i32 0, i32 2
  %31 = load i32, i32* %n_scale27, align 4
  br label %cond.end.28

cond.end.28:                                      ; preds = %cond.false.26, %cond.true.24
  %cond29 = phi i32 [ %29, %cond.true.24 ], [ %31, %cond.false.26 ]
  store i32 %cond29, i32* %min_scale, align 4
  %32 = load i32, i32* %diff_len, align 4
  %33 = load i32, i32* %diff_scale, align 4
  %call = call %struct.bc_struct* @new_num(i32 %32, i32 %33)
  store %struct.bc_struct* %call, %struct.bc_struct** %diff, align 8
  %34 = load %struct.bc_struct*, %struct.bc_struct** %n1.addr, align 8
  %n_value = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %34, i32 0, i32 4
  %arrayidx = getelementptr inbounds [1024 x i8], [1024 x i8]* %n_value, i32 0, i64 0
  %35 = load %struct.bc_struct*, %struct.bc_struct** %n1.addr, align 8
  %n_len30 = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %35, i32 0, i32 1
  %36 = load i32, i32* %n_len30, align 4
  %idx.ext = sext i32 %36 to i64
  %add.ptr = getelementptr inbounds i8, i8* %arrayidx, i64 %idx.ext
  %37 = load %struct.bc_struct*, %struct.bc_struct** %n1.addr, align 8
  %n_scale31 = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %37, i32 0, i32 2
  %38 = load i32, i32* %n_scale31, align 4
  %idx.ext32 = sext i32 %38 to i64
  %add.ptr33 = getelementptr inbounds i8, i8* %add.ptr, i64 %idx.ext32
  %add.ptr34 = getelementptr inbounds i8, i8* %add.ptr33, i64 -1
  store i8* %add.ptr34, i8** %n1ptr, align 8
  %39 = load %struct.bc_struct*, %struct.bc_struct** %n2.addr, align 8
  %n_value35 = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %39, i32 0, i32 4
  %arrayidx36 = getelementptr inbounds [1024 x i8], [1024 x i8]* %n_value35, i32 0, i64 0
  %40 = load %struct.bc_struct*, %struct.bc_struct** %n2.addr, align 8
  %n_len37 = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %40, i32 0, i32 1
  %41 = load i32, i32* %n_len37, align 4
  %idx.ext38 = sext i32 %41 to i64
  %add.ptr39 = getelementptr inbounds i8, i8* %arrayidx36, i64 %idx.ext38
  %42 = load %struct.bc_struct*, %struct.bc_struct** %n2.addr, align 8
  %n_scale40 = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %42, i32 0, i32 2
  %43 = load i32, i32* %n_scale40, align 4
  %idx.ext41 = sext i32 %43 to i64
  %add.ptr42 = getelementptr inbounds i8, i8* %add.ptr39, i64 %idx.ext41
  %add.ptr43 = getelementptr inbounds i8, i8* %add.ptr42, i64 -1
  store i8* %add.ptr43, i8** %n2ptr, align 8
  %44 = load %struct.bc_struct*, %struct.bc_struct** %diff, align 8
  %n_value44 = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %44, i32 0, i32 4
  %arrayidx45 = getelementptr inbounds [1024 x i8], [1024 x i8]* %n_value44, i32 0, i64 0
  %45 = load i32, i32* %diff_len, align 4
  %idx.ext46 = sext i32 %45 to i64
  %add.ptr47 = getelementptr inbounds i8, i8* %arrayidx45, i64 %idx.ext46
  %46 = load i32, i32* %diff_scale, align 4
  %idx.ext48 = sext i32 %46 to i64
  %add.ptr49 = getelementptr inbounds i8, i8* %add.ptr47, i64 %idx.ext48
  %add.ptr50 = getelementptr inbounds i8, i8* %add.ptr49, i64 -1
  store i8* %add.ptr50, i8** %diffptr, align 8
  store i32 0, i32* %borrow, align 4
  %47 = load %struct.bc_struct*, %struct.bc_struct** %n1.addr, align 8
  %n_scale51 = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %47, i32 0, i32 2
  %48 = load i32, i32* %n_scale51, align 4
  %49 = load i32, i32* %min_scale, align 4
  %cmp52 = icmp ne i32 %48, %49
  br i1 %cmp52, label %if.then, label %if.else

if.then:                                          ; preds = %cond.end.28
  %50 = load %struct.bc_struct*, %struct.bc_struct** %n1.addr, align 8
  %n_scale53 = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %50, i32 0, i32 2
  %51 = load i32, i32* %n_scale53, align 4
  %52 = load i32, i32* %min_scale, align 4
  %sub = sub nsw i32 %51, %52
  store i32 %sub, i32* %count, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %53 = load i32, i32* %count, align 4
  %cmp54 = icmp sgt i32 %53, 0
  br i1 %cmp54, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %54 = load i8*, i8** %n1ptr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %54, i32 -1
  store i8* %incdec.ptr, i8** %n1ptr, align 8
  %55 = load i8, i8* %54, align 1
  %56 = load i8*, i8** %diffptr, align 8
  %incdec.ptr55 = getelementptr inbounds i8, i8* %56, i32 -1
  store i8* %incdec.ptr55, i8** %diffptr, align 8
  store i8 %55, i8* %56, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %57 = load i32, i32* %count, align 4
  %dec = add nsw i32 %57, -1
  store i32 %dec, i32* %count, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.73

if.else:                                          ; preds = %cond.end.28
  %58 = load %struct.bc_struct*, %struct.bc_struct** %n2.addr, align 8
  %n_scale56 = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %58, i32 0, i32 2
  %59 = load i32, i32* %n_scale56, align 4
  %60 = load i32, i32* %min_scale, align 4
  %sub57 = sub nsw i32 %59, %60
  store i32 %sub57, i32* %count, align 4
  br label %for.cond.58

for.cond.58:                                      ; preds = %for.inc.70, %if.else
  %61 = load i32, i32* %count, align 4
  %cmp59 = icmp sgt i32 %61, 0
  br i1 %cmp59, label %for.body.60, label %for.end.72

for.body.60:                                      ; preds = %for.cond.58
  %62 = load i8*, i8** %n2ptr, align 8
  %incdec.ptr61 = getelementptr inbounds i8, i8* %62, i32 -1
  store i8* %incdec.ptr61, i8** %n2ptr, align 8
  %63 = load i8, i8* %62, align 1
  %conv = sext i8 %63 to i32
  %sub62 = sub nsw i32 0, %conv
  %64 = load i32, i32* %borrow, align 4
  %sub63 = sub nsw i32 %sub62, %64
  store i32 %sub63, i32* %val, align 4
  %65 = load i32, i32* %val, align 4
  %cmp64 = icmp slt i32 %65, 0
  br i1 %cmp64, label %if.then.66, label %if.else.67

if.then.66:                                       ; preds = %for.body.60
  %66 = load i32, i32* %val, align 4
  %add = add nsw i32 %66, 10
  store i32 %add, i32* %val, align 4
  store i32 1, i32* %borrow, align 4
  br label %if.end

if.else.67:                                       ; preds = %for.body.60
  store i32 0, i32* %borrow, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.67, %if.then.66
  %67 = load i32, i32* %val, align 4
  %conv68 = trunc i32 %67 to i8
  %68 = load i8*, i8** %diffptr, align 8
  %incdec.ptr69 = getelementptr inbounds i8, i8* %68, i32 -1
  store i8* %incdec.ptr69, i8** %diffptr, align 8
  store i8 %conv68, i8* %68, align 1
  br label %for.inc.70

for.inc.70:                                       ; preds = %if.end
  %69 = load i32, i32* %count, align 4
  %dec71 = add nsw i32 %69, -1
  store i32 %dec71, i32* %count, align 4
  br label %for.cond.58

for.end.72:                                       ; preds = %for.cond.58
  br label %if.end.73

if.end.73:                                        ; preds = %for.end.72, %for.end
  store i32 0, i32* %count, align 4
  br label %for.cond.74

for.cond.74:                                      ; preds = %for.inc.93, %if.end.73
  %70 = load i32, i32* %count, align 4
  %71 = load i32, i32* %min_len, align 4
  %72 = load i32, i32* %min_scale, align 4
  %add75 = add nsw i32 %71, %72
  %cmp76 = icmp slt i32 %70, %add75
  br i1 %cmp76, label %for.body.78, label %for.end.94

for.body.78:                                      ; preds = %for.cond.74
  %73 = load i8*, i8** %n1ptr, align 8
  %incdec.ptr79 = getelementptr inbounds i8, i8* %73, i32 -1
  store i8* %incdec.ptr79, i8** %n1ptr, align 8
  %74 = load i8, i8* %73, align 1
  %conv80 = sext i8 %74 to i32
  %75 = load i8*, i8** %n2ptr, align 8
  %incdec.ptr81 = getelementptr inbounds i8, i8* %75, i32 -1
  store i8* %incdec.ptr81, i8** %n2ptr, align 8
  %76 = load i8, i8* %75, align 1
  %conv82 = sext i8 %76 to i32
  %sub83 = sub nsw i32 %conv80, %conv82
  %77 = load i32, i32* %borrow, align 4
  %sub84 = sub nsw i32 %sub83, %77
  store i32 %sub84, i32* %val, align 4
  %78 = load i32, i32* %val, align 4
  %cmp85 = icmp slt i32 %78, 0
  br i1 %cmp85, label %if.then.87, label %if.else.89

if.then.87:                                       ; preds = %for.body.78
  %79 = load i32, i32* %val, align 4
  %add88 = add nsw i32 %79, 10
  store i32 %add88, i32* %val, align 4
  store i32 1, i32* %borrow, align 4
  br label %if.end.90

if.else.89:                                       ; preds = %for.body.78
  store i32 0, i32* %borrow, align 4
  br label %if.end.90

if.end.90:                                        ; preds = %if.else.89, %if.then.87
  %80 = load i32, i32* %val, align 4
  %conv91 = trunc i32 %80 to i8
  %81 = load i8*, i8** %diffptr, align 8
  %incdec.ptr92 = getelementptr inbounds i8, i8* %81, i32 -1
  store i8* %incdec.ptr92, i8** %diffptr, align 8
  store i8 %conv91, i8* %81, align 1
  br label %for.inc.93

for.inc.93:                                       ; preds = %if.end.90
  %82 = load i32, i32* %count, align 4
  %inc = add nsw i32 %82, 1
  store i32 %inc, i32* %count, align 4
  br label %for.cond.74

for.end.94:                                       ; preds = %for.cond.74
  %83 = load i32, i32* %diff_len, align 4
  %84 = load i32, i32* %min_len, align 4
  %cmp95 = icmp ne i32 %83, %84
  br i1 %cmp95, label %if.then.97, label %if.end.117

if.then.97:                                       ; preds = %for.end.94
  %85 = load i32, i32* %diff_len, align 4
  %86 = load i32, i32* %min_len, align 4
  %sub98 = sub nsw i32 %85, %86
  store i32 %sub98, i32* %count, align 4
  br label %for.cond.99

for.cond.99:                                      ; preds = %for.inc.114, %if.then.97
  %87 = load i32, i32* %count, align 4
  %cmp100 = icmp sgt i32 %87, 0
  br i1 %cmp100, label %for.body.102, label %for.end.116

for.body.102:                                     ; preds = %for.cond.99
  %88 = load i8*, i8** %n1ptr, align 8
  %incdec.ptr103 = getelementptr inbounds i8, i8* %88, i32 -1
  store i8* %incdec.ptr103, i8** %n1ptr, align 8
  %89 = load i8, i8* %88, align 1
  %conv104 = sext i8 %89 to i32
  %90 = load i32, i32* %borrow, align 4
  %sub105 = sub nsw i32 %conv104, %90
  store i32 %sub105, i32* %val, align 4
  %91 = load i32, i32* %val, align 4
  %cmp106 = icmp slt i32 %91, 0
  br i1 %cmp106, label %if.then.108, label %if.else.110

if.then.108:                                      ; preds = %for.body.102
  %92 = load i32, i32* %val, align 4
  %add109 = add nsw i32 %92, 10
  store i32 %add109, i32* %val, align 4
  store i32 1, i32* %borrow, align 4
  br label %if.end.111

if.else.110:                                      ; preds = %for.body.102
  store i32 0, i32* %borrow, align 4
  br label %if.end.111

if.end.111:                                       ; preds = %if.else.110, %if.then.108
  %93 = load i32, i32* %val, align 4
  %conv112 = trunc i32 %93 to i8
  %94 = load i8*, i8** %diffptr, align 8
  %incdec.ptr113 = getelementptr inbounds i8, i8* %94, i32 -1
  store i8* %incdec.ptr113, i8** %diffptr, align 8
  store i8 %conv112, i8* %94, align 1
  br label %for.inc.114

for.inc.114:                                      ; preds = %if.end.111
  %95 = load i32, i32* %count, align 4
  %dec115 = add nsw i32 %95, -1
  store i32 %dec115, i32* %count, align 4
  br label %for.cond.99

for.end.116:                                      ; preds = %for.cond.99
  br label %if.end.117

if.end.117:                                       ; preds = %for.end.116, %for.end.94
  %96 = load %struct.bc_struct*, %struct.bc_struct** %diff, align 8
  call void @_rm_leading_zeros(%struct.bc_struct* %96)
  %97 = load %struct.bc_struct*, %struct.bc_struct** %diff, align 8
  ret %struct.bc_struct* %97
}

; Function Attrs: nounwind uwtable
define void @bc_sub(%struct.bc_struct* %n1, %struct.bc_struct* %n2, %struct.bc_struct** %result) #0 {
entry:
  %n1.addr = alloca %struct.bc_struct*, align 8
  %n2.addr = alloca %struct.bc_struct*, align 8
  %result.addr = alloca %struct.bc_struct**, align 8
  %diff = alloca %struct.bc_struct*, align 8
  %cmp_res = alloca i32, align 4
  store %struct.bc_struct* %n1, %struct.bc_struct** %n1.addr, align 8
  store %struct.bc_struct* %n2, %struct.bc_struct** %n2.addr, align 8
  store %struct.bc_struct** %result, %struct.bc_struct*** %result.addr, align 8
  %0 = load %struct.bc_struct*, %struct.bc_struct** %n1.addr, align 8
  %n_sign = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %0, i32 0, i32 0
  %1 = load i32, i32* %n_sign, align 4
  %2 = load %struct.bc_struct*, %struct.bc_struct** %n2.addr, align 8
  %n_sign1 = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %2, i32 0, i32 0
  %3 = load i32, i32* %n_sign1, align 4
  %cmp = icmp ne i32 %1, %3
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %4 = load %struct.bc_struct*, %struct.bc_struct** %n1.addr, align 8
  %5 = load %struct.bc_struct*, %struct.bc_struct** %n2.addr, align 8
  %call = call %struct.bc_struct* @_do_add(%struct.bc_struct* %4, %struct.bc_struct* %5)
  store %struct.bc_struct* %call, %struct.bc_struct** %diff, align 8
  %6 = load %struct.bc_struct*, %struct.bc_struct** %n1.addr, align 8
  %n_sign2 = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %6, i32 0, i32 0
  %7 = load i32, i32* %n_sign2, align 4
  %8 = load %struct.bc_struct*, %struct.bc_struct** %diff, align 8
  %n_sign3 = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %8, i32 0, i32 0
  store i32 %7, i32* %n_sign3, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  %9 = load %struct.bc_struct*, %struct.bc_struct** %n1.addr, align 8
  %10 = load %struct.bc_struct*, %struct.bc_struct** %n2.addr, align 8
  %call4 = call i32 @_do_compare(%struct.bc_struct* %9, %struct.bc_struct* %10, i32 0, i32 0)
  store i32 %call4, i32* %cmp_res, align 4
  %11 = load i32, i32* %cmp_res, align 4
  switch i32 %11, label %sw.epilog [
    i32 -1, label %sw.bb
    i32 0, label %sw.bb.9
    i32 1, label %sw.bb.11
  ]

sw.bb:                                            ; preds = %if.else
  %12 = load %struct.bc_struct*, %struct.bc_struct** %n2.addr, align 8
  %13 = load %struct.bc_struct*, %struct.bc_struct** %n1.addr, align 8
  %call5 = call %struct.bc_struct* @_do_sub(%struct.bc_struct* %12, %struct.bc_struct* %13)
  store %struct.bc_struct* %call5, %struct.bc_struct** %diff, align 8
  %14 = load %struct.bc_struct*, %struct.bc_struct** %n2.addr, align 8
  %n_sign6 = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %14, i32 0, i32 0
  %15 = load i32, i32* %n_sign6, align 4
  %cmp7 = icmp eq i32 %15, 0
  %cond = select i1 %cmp7, i32 1, i32 0
  %16 = load %struct.bc_struct*, %struct.bc_struct** %diff, align 8
  %n_sign8 = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %16, i32 0, i32 0
  store i32 %cond, i32* %n_sign8, align 4
  br label %sw.epilog

sw.bb.9:                                          ; preds = %if.else
  %17 = load %struct.bc_struct*, %struct.bc_struct** @_zero_, align 8
  %call10 = call %struct.bc_struct* @copy_num(%struct.bc_struct* %17)
  store %struct.bc_struct* %call10, %struct.bc_struct** %diff, align 8
  br label %sw.epilog

sw.bb.11:                                         ; preds = %if.else
  %18 = load %struct.bc_struct*, %struct.bc_struct** %n1.addr, align 8
  %19 = load %struct.bc_struct*, %struct.bc_struct** %n2.addr, align 8
  %call12 = call %struct.bc_struct* @_do_sub(%struct.bc_struct* %18, %struct.bc_struct* %19)
  store %struct.bc_struct* %call12, %struct.bc_struct** %diff, align 8
  %20 = load %struct.bc_struct*, %struct.bc_struct** %n1.addr, align 8
  %n_sign13 = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %20, i32 0, i32 0
  %21 = load i32, i32* %n_sign13, align 4
  %22 = load %struct.bc_struct*, %struct.bc_struct** %diff, align 8
  %n_sign14 = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %22, i32 0, i32 0
  store i32 %21, i32* %n_sign14, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.else, %sw.bb.11, %sw.bb.9, %sw.bb
  br label %if.end

if.end:                                           ; preds = %sw.epilog, %if.then
  %23 = load %struct.bc_struct**, %struct.bc_struct*** %result.addr, align 8
  call void @free_num(%struct.bc_struct** %23)
  %24 = load %struct.bc_struct*, %struct.bc_struct** %diff, align 8
  %25 = load %struct.bc_struct**, %struct.bc_struct*** %result.addr, align 8
  store %struct.bc_struct* %24, %struct.bc_struct** %25, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @bc_multiply(%struct.bc_struct* %n1, %struct.bc_struct* %n2, %struct.bc_struct** %prod, i32 %scale) #0 {
entry:
  %n1.addr = alloca %struct.bc_struct*, align 8
  %n2.addr = alloca %struct.bc_struct*, align 8
  %prod.addr = alloca %struct.bc_struct**, align 8
  %scale.addr = alloca i32, align 4
  %pval = alloca %struct.bc_struct*, align 8
  %n1ptr = alloca i8*, align 8
  %n2ptr = alloca i8*, align 8
  %pvptr = alloca i8*, align 8
  %n1end = alloca i8*, align 8
  %n2end = alloca i8*, align 8
  %indx = alloca i32, align 4
  %len1 = alloca i32, align 4
  %len2 = alloca i32, align 4
  %total_digits = alloca i32, align 4
  %sum = alloca i64, align 8
  %full_scale = alloca i32, align 4
  %prod_scale = alloca i32, align 4
  %toss = alloca i32, align 4
  %tmpI = alloca i32, align 4
  store %struct.bc_struct* %n1, %struct.bc_struct** %n1.addr, align 8
  store %struct.bc_struct* %n2, %struct.bc_struct** %n2.addr, align 8
  store %struct.bc_struct** %prod, %struct.bc_struct*** %prod.addr, align 8
  store i32 %scale, i32* %scale.addr, align 4
  %0 = load %struct.bc_struct*, %struct.bc_struct** %n1.addr, align 8
  %n_len = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %0, i32 0, i32 1
  %1 = load i32, i32* %n_len, align 4
  %2 = load %struct.bc_struct*, %struct.bc_struct** %n1.addr, align 8
  %n_scale = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %2, i32 0, i32 2
  %3 = load i32, i32* %n_scale, align 4
  %add = add nsw i32 %1, %3
  store i32 %add, i32* %len1, align 4
  %4 = load %struct.bc_struct*, %struct.bc_struct** %n2.addr, align 8
  %n_len1 = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %4, i32 0, i32 1
  %5 = load i32, i32* %n_len1, align 4
  %6 = load %struct.bc_struct*, %struct.bc_struct** %n2.addr, align 8
  %n_scale2 = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %6, i32 0, i32 2
  %7 = load i32, i32* %n_scale2, align 4
  %add3 = add nsw i32 %5, %7
  store i32 %add3, i32* %len2, align 4
  %8 = load i32, i32* %len1, align 4
  %9 = load i32, i32* %len2, align 4
  %add4 = add nsw i32 %8, %9
  store i32 %add4, i32* %total_digits, align 4
  %10 = load %struct.bc_struct*, %struct.bc_struct** %n1.addr, align 8
  %n_scale5 = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %10, i32 0, i32 2
  %11 = load i32, i32* %n_scale5, align 4
  %12 = load %struct.bc_struct*, %struct.bc_struct** %n2.addr, align 8
  %n_scale6 = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %12, i32 0, i32 2
  %13 = load i32, i32* %n_scale6, align 4
  %add7 = add nsw i32 %11, %13
  store i32 %add7, i32* %full_scale, align 4
  %14 = load i32, i32* %full_scale, align 4
  %15 = load i32, i32* %scale.addr, align 4
  %16 = load %struct.bc_struct*, %struct.bc_struct** %n1.addr, align 8
  %n_scale8 = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %16, i32 0, i32 2
  %17 = load i32, i32* %n_scale8, align 4
  %18 = load %struct.bc_struct*, %struct.bc_struct** %n2.addr, align 8
  %n_scale9 = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %18, i32 0, i32 2
  %19 = load i32, i32* %n_scale9, align 4
  %cmp = icmp sgt i32 %17, %19
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %20 = load %struct.bc_struct*, %struct.bc_struct** %n1.addr, align 8
  %n_scale10 = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %20, i32 0, i32 2
  %21 = load i32, i32* %n_scale10, align 4
  br label %cond.end

cond.false:                                       ; preds = %entry
  %22 = load %struct.bc_struct*, %struct.bc_struct** %n2.addr, align 8
  %n_scale11 = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %22, i32 0, i32 2
  %23 = load i32, i32* %n_scale11, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %21, %cond.true ], [ %23, %cond.false ]
  %cmp12 = icmp sgt i32 %15, %cond
  br i1 %cmp12, label %cond.true.13, label %cond.false.14

cond.true.13:                                     ; preds = %cond.end
  %24 = load i32, i32* %scale.addr, align 4
  br label %cond.end.24

cond.false.14:                                    ; preds = %cond.end
  %25 = load %struct.bc_struct*, %struct.bc_struct** %n1.addr, align 8
  %n_scale15 = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %25, i32 0, i32 2
  %26 = load i32, i32* %n_scale15, align 4
  %27 = load %struct.bc_struct*, %struct.bc_struct** %n2.addr, align 8
  %n_scale16 = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %27, i32 0, i32 2
  %28 = load i32, i32* %n_scale16, align 4
  %cmp17 = icmp sgt i32 %26, %28
  br i1 %cmp17, label %cond.true.18, label %cond.false.20

cond.true.18:                                     ; preds = %cond.false.14
  %29 = load %struct.bc_struct*, %struct.bc_struct** %n1.addr, align 8
  %n_scale19 = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %29, i32 0, i32 2
  %30 = load i32, i32* %n_scale19, align 4
  br label %cond.end.22

cond.false.20:                                    ; preds = %cond.false.14
  %31 = load %struct.bc_struct*, %struct.bc_struct** %n2.addr, align 8
  %n_scale21 = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %31, i32 0, i32 2
  %32 = load i32, i32* %n_scale21, align 4
  br label %cond.end.22

cond.end.22:                                      ; preds = %cond.false.20, %cond.true.18
  %cond23 = phi i32 [ %30, %cond.true.18 ], [ %32, %cond.false.20 ]
  br label %cond.end.24

cond.end.24:                                      ; preds = %cond.end.22, %cond.true.13
  %cond25 = phi i32 [ %24, %cond.true.13 ], [ %cond23, %cond.end.22 ]
  %cmp26 = icmp sgt i32 %14, %cond25
  br i1 %cmp26, label %cond.true.27, label %cond.false.51

cond.true.27:                                     ; preds = %cond.end.24
  %33 = load i32, i32* %scale.addr, align 4
  %34 = load %struct.bc_struct*, %struct.bc_struct** %n1.addr, align 8
  %n_scale28 = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %34, i32 0, i32 2
  %35 = load i32, i32* %n_scale28, align 4
  %36 = load %struct.bc_struct*, %struct.bc_struct** %n2.addr, align 8
  %n_scale29 = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %36, i32 0, i32 2
  %37 = load i32, i32* %n_scale29, align 4
  %cmp30 = icmp sgt i32 %35, %37
  br i1 %cmp30, label %cond.true.31, label %cond.false.33

cond.true.31:                                     ; preds = %cond.true.27
  %38 = load %struct.bc_struct*, %struct.bc_struct** %n1.addr, align 8
  %n_scale32 = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %38, i32 0, i32 2
  %39 = load i32, i32* %n_scale32, align 4
  br label %cond.end.35

cond.false.33:                                    ; preds = %cond.true.27
  %40 = load %struct.bc_struct*, %struct.bc_struct** %n2.addr, align 8
  %n_scale34 = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %40, i32 0, i32 2
  %41 = load i32, i32* %n_scale34, align 4
  br label %cond.end.35

cond.end.35:                                      ; preds = %cond.false.33, %cond.true.31
  %cond36 = phi i32 [ %39, %cond.true.31 ], [ %41, %cond.false.33 ]
  %cmp37 = icmp sgt i32 %33, %cond36
  br i1 %cmp37, label %cond.true.38, label %cond.false.39

cond.true.38:                                     ; preds = %cond.end.35
  %42 = load i32, i32* %scale.addr, align 4
  br label %cond.end.49

cond.false.39:                                    ; preds = %cond.end.35
  %43 = load %struct.bc_struct*, %struct.bc_struct** %n1.addr, align 8
  %n_scale40 = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %43, i32 0, i32 2
  %44 = load i32, i32* %n_scale40, align 4
  %45 = load %struct.bc_struct*, %struct.bc_struct** %n2.addr, align 8
  %n_scale41 = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %45, i32 0, i32 2
  %46 = load i32, i32* %n_scale41, align 4
  %cmp42 = icmp sgt i32 %44, %46
  br i1 %cmp42, label %cond.true.43, label %cond.false.45

cond.true.43:                                     ; preds = %cond.false.39
  %47 = load %struct.bc_struct*, %struct.bc_struct** %n1.addr, align 8
  %n_scale44 = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %47, i32 0, i32 2
  %48 = load i32, i32* %n_scale44, align 4
  br label %cond.end.47

cond.false.45:                                    ; preds = %cond.false.39
  %49 = load %struct.bc_struct*, %struct.bc_struct** %n2.addr, align 8
  %n_scale46 = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %49, i32 0, i32 2
  %50 = load i32, i32* %n_scale46, align 4
  br label %cond.end.47

cond.end.47:                                      ; preds = %cond.false.45, %cond.true.43
  %cond48 = phi i32 [ %48, %cond.true.43 ], [ %50, %cond.false.45 ]
  br label %cond.end.49

cond.end.49:                                      ; preds = %cond.end.47, %cond.true.38
  %cond50 = phi i32 [ %42, %cond.true.38 ], [ %cond48, %cond.end.47 ]
  br label %cond.end.52

cond.false.51:                                    ; preds = %cond.end.24
  %51 = load i32, i32* %full_scale, align 4
  br label %cond.end.52

cond.end.52:                                      ; preds = %cond.false.51, %cond.end.49
  %cond53 = phi i32 [ %cond50, %cond.end.49 ], [ %51, %cond.false.51 ]
  store i32 %cond53, i32* %prod_scale, align 4
  %52 = load i32, i32* %full_scale, align 4
  %53 = load i32, i32* %prod_scale, align 4
  %sub = sub nsw i32 %52, %53
  store i32 %sub, i32* %toss, align 4
  %54 = load i32, i32* %total_digits, align 4
  %55 = load i32, i32* %full_scale, align 4
  %sub54 = sub nsw i32 %54, %55
  %56 = load i32, i32* %prod_scale, align 4
  %call = call %struct.bc_struct* @new_num(i32 %sub54, i32 %56)
  store %struct.bc_struct* %call, %struct.bc_struct** %pval, align 8
  %57 = load %struct.bc_struct*, %struct.bc_struct** %n1.addr, align 8
  %n_sign = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %57, i32 0, i32 0
  %58 = load i32, i32* %n_sign, align 4
  %59 = load %struct.bc_struct*, %struct.bc_struct** %n2.addr, align 8
  %n_sign55 = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %59, i32 0, i32 0
  %60 = load i32, i32* %n_sign55, align 4
  %cmp56 = icmp eq i32 %58, %60
  %cond57 = select i1 %cmp56, i32 0, i32 1
  %61 = load %struct.bc_struct*, %struct.bc_struct** %pval, align 8
  %n_sign58 = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %61, i32 0, i32 0
  store i32 %cond57, i32* %n_sign58, align 4
  %62 = load %struct.bc_struct*, %struct.bc_struct** %n1.addr, align 8
  %n_value = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %62, i32 0, i32 4
  %arrayidx = getelementptr inbounds [1024 x i8], [1024 x i8]* %n_value, i32 0, i64 0
  %63 = load i32, i32* %len1, align 4
  %idx.ext = sext i32 %63 to i64
  %add.ptr = getelementptr inbounds i8, i8* %arrayidx, i64 %idx.ext
  %add.ptr59 = getelementptr inbounds i8, i8* %add.ptr, i64 -1
  store i8* %add.ptr59, i8** %n1end, align 8
  %64 = load %struct.bc_struct*, %struct.bc_struct** %n2.addr, align 8
  %n_value60 = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %64, i32 0, i32 4
  %arrayidx61 = getelementptr inbounds [1024 x i8], [1024 x i8]* %n_value60, i32 0, i64 0
  %65 = load i32, i32* %len2, align 4
  %idx.ext62 = sext i32 %65 to i64
  %add.ptr63 = getelementptr inbounds i8, i8* %arrayidx61, i64 %idx.ext62
  %add.ptr64 = getelementptr inbounds i8, i8* %add.ptr63, i64 -1
  store i8* %add.ptr64, i8** %n2end, align 8
  %66 = load i32, i32* %total_digits, align 4
  %67 = load i32, i32* %toss, align 4
  %sub65 = sub nsw i32 %66, %67
  %sub66 = sub nsw i32 %sub65, 1
  store i32 %sub66, i32* %tmpI, align 4
  %68 = load %struct.bc_struct*, %struct.bc_struct** %pval, align 8
  %n_value67 = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %68, i32 0, i32 4
  %arraydecay = getelementptr inbounds [1024 x i8], [1024 x i8]* %n_value67, i32 0, i32 0
  %69 = load i32, i32* %tmpI, align 4
  %idx.ext68 = sext i32 %69 to i64
  %add.ptr69 = getelementptr inbounds i8, i8* %arraydecay, i64 %idx.ext68
  store i8* %add.ptr69, i8** %pvptr, align 8
  store i64 0, i64* %sum, align 8
  store i32 0, i32* %indx, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end.52
  %70 = load i32, i32* %indx, align 4
  %71 = load i32, i32* %toss, align 4
  %cmp70 = icmp slt i32 %70, %71
  br i1 %cmp70, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %72 = load i8*, i8** %n1end, align 8
  %73 = load i32, i32* %indx, align 4
  %74 = load i32, i32* %len2, align 4
  %sub71 = sub nsw i32 %73, %74
  %add72 = add nsw i32 %sub71, 1
  %cmp73 = icmp sgt i32 0, %add72
  br i1 %cmp73, label %cond.true.74, label %cond.false.75

cond.true.74:                                     ; preds = %for.body
  br label %cond.end.78

cond.false.75:                                    ; preds = %for.body
  %75 = load i32, i32* %indx, align 4
  %76 = load i32, i32* %len2, align 4
  %sub76 = sub nsw i32 %75, %76
  %add77 = add nsw i32 %sub76, 1
  br label %cond.end.78

cond.end.78:                                      ; preds = %cond.false.75, %cond.true.74
  %cond79 = phi i32 [ 0, %cond.true.74 ], [ %add77, %cond.false.75 ]
  %idx.ext80 = sext i32 %cond79 to i64
  %idx.neg = sub i64 0, %idx.ext80
  %add.ptr81 = getelementptr inbounds i8, i8* %72, i64 %idx.neg
  store i8* %add.ptr81, i8** %n1ptr, align 8
  %77 = load i8*, i8** %n2end, align 8
  %78 = load i32, i32* %indx, align 4
  %79 = load i32, i32* %len2, align 4
  %sub82 = sub nsw i32 %79, 1
  %cmp83 = icmp sgt i32 %78, %sub82
  br i1 %cmp83, label %cond.true.84, label %cond.false.86

cond.true.84:                                     ; preds = %cond.end.78
  %80 = load i32, i32* %len2, align 4
  %sub85 = sub nsw i32 %80, 1
  br label %cond.end.87

cond.false.86:                                    ; preds = %cond.end.78
  %81 = load i32, i32* %indx, align 4
  br label %cond.end.87

cond.end.87:                                      ; preds = %cond.false.86, %cond.true.84
  %cond88 = phi i32 [ %sub85, %cond.true.84 ], [ %81, %cond.false.86 ]
  %idx.ext89 = sext i32 %cond88 to i64
  %idx.neg90 = sub i64 0, %idx.ext89
  %add.ptr91 = getelementptr inbounds i8, i8* %77, i64 %idx.neg90
  store i8* %add.ptr91, i8** %n2ptr, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %cond.end.87
  %82 = load i8*, i8** %n1ptr, align 8
  %83 = load %struct.bc_struct*, %struct.bc_struct** %n1.addr, align 8
  %n_value92 = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %83, i32 0, i32 4
  %arraydecay93 = getelementptr inbounds [1024 x i8], [1024 x i8]* %n_value92, i32 0, i32 0
  %cmp94 = icmp uge i8* %82, %arraydecay93
  br i1 %cmp94, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %84 = load i8*, i8** %n2ptr, align 8
  %85 = load i8*, i8** %n2end, align 8
  %cmp95 = icmp ule i8* %84, %85
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %86 = phi i1 [ false, %while.cond ], [ %cmp95, %land.rhs ]
  br i1 %86, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %87 = load i8*, i8** %n1ptr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %87, i32 -1
  store i8* %incdec.ptr, i8** %n1ptr, align 8
  %88 = load i8, i8* %87, align 1
  %conv = sext i8 %88 to i32
  %89 = load i8*, i8** %n2ptr, align 8
  %incdec.ptr96 = getelementptr inbounds i8, i8* %89, i32 1
  store i8* %incdec.ptr96, i8** %n2ptr, align 8
  %90 = load i8, i8* %89, align 1
  %conv97 = sext i8 %90 to i32
  %mul = mul nsw i32 %conv, %conv97
  %conv98 = sext i32 %mul to i64
  %91 = load i64, i64* %sum, align 8
  %add99 = add nsw i64 %91, %conv98
  store i64 %add99, i64* %sum, align 8
  br label %while.cond

while.end:                                        ; preds = %land.end
  %92 = load i64, i64* %sum, align 8
  %div = sdiv i64 %92, 10
  store i64 %div, i64* %sum, align 8
  br label %for.inc

for.inc:                                          ; preds = %while.end
  %93 = load i32, i32* %indx, align 4
  %inc = add nsw i32 %93, 1
  store i32 %inc, i32* %indx, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %for.cond.100

for.cond.100:                                     ; preds = %for.inc.150, %for.end
  %94 = load i32, i32* %indx, align 4
  %95 = load i32, i32* %total_digits, align 4
  %sub101 = sub nsw i32 %95, 1
  %cmp102 = icmp slt i32 %94, %sub101
  br i1 %cmp102, label %for.body.104, label %for.end.152

for.body.104:                                     ; preds = %for.cond.100
  %96 = load i8*, i8** %n1end, align 8
  %97 = load i32, i32* %indx, align 4
  %98 = load i32, i32* %len2, align 4
  %sub105 = sub nsw i32 %97, %98
  %add106 = add nsw i32 %sub105, 1
  %cmp107 = icmp sgt i32 0, %add106
  br i1 %cmp107, label %cond.true.109, label %cond.false.110

cond.true.109:                                    ; preds = %for.body.104
  br label %cond.end.113

cond.false.110:                                   ; preds = %for.body.104
  %99 = load i32, i32* %indx, align 4
  %100 = load i32, i32* %len2, align 4
  %sub111 = sub nsw i32 %99, %100
  %add112 = add nsw i32 %sub111, 1
  br label %cond.end.113

cond.end.113:                                     ; preds = %cond.false.110, %cond.true.109
  %cond114 = phi i32 [ 0, %cond.true.109 ], [ %add112, %cond.false.110 ]
  %idx.ext115 = sext i32 %cond114 to i64
  %idx.neg116 = sub i64 0, %idx.ext115
  %add.ptr117 = getelementptr inbounds i8, i8* %96, i64 %idx.neg116
  store i8* %add.ptr117, i8** %n1ptr, align 8
  %101 = load i8*, i8** %n2end, align 8
  %102 = load i32, i32* %indx, align 4
  %103 = load i32, i32* %len2, align 4
  %sub118 = sub nsw i32 %103, 1
  %cmp119 = icmp sgt i32 %102, %sub118
  br i1 %cmp119, label %cond.true.121, label %cond.false.123

cond.true.121:                                    ; preds = %cond.end.113
  %104 = load i32, i32* %len2, align 4
  %sub122 = sub nsw i32 %104, 1
  br label %cond.end.124

cond.false.123:                                   ; preds = %cond.end.113
  %105 = load i32, i32* %indx, align 4
  br label %cond.end.124

cond.end.124:                                     ; preds = %cond.false.123, %cond.true.121
  %cond125 = phi i32 [ %sub122, %cond.true.121 ], [ %105, %cond.false.123 ]
  %idx.ext126 = sext i32 %cond125 to i64
  %idx.neg127 = sub i64 0, %idx.ext126
  %add.ptr128 = getelementptr inbounds i8, i8* %101, i64 %idx.neg127
  store i8* %add.ptr128, i8** %n2ptr, align 8
  br label %while.cond.129

while.cond.129:                                   ; preds = %while.body.138, %cond.end.124
  %106 = load i8*, i8** %n1ptr, align 8
  %107 = load %struct.bc_struct*, %struct.bc_struct** %n1.addr, align 8
  %n_value130 = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %107, i32 0, i32 4
  %arraydecay131 = getelementptr inbounds [1024 x i8], [1024 x i8]* %n_value130, i32 0, i32 0
  %cmp132 = icmp uge i8* %106, %arraydecay131
  br i1 %cmp132, label %land.rhs.134, label %land.end.137

land.rhs.134:                                     ; preds = %while.cond.129
  %108 = load i8*, i8** %n2ptr, align 8
  %109 = load i8*, i8** %n2end, align 8
  %cmp135 = icmp ule i8* %108, %109
  br label %land.end.137

land.end.137:                                     ; preds = %land.rhs.134, %while.cond.129
  %110 = phi i1 [ false, %while.cond.129 ], [ %cmp135, %land.rhs.134 ]
  br i1 %110, label %while.body.138, label %while.end.146

while.body.138:                                   ; preds = %land.end.137
  %111 = load i8*, i8** %n1ptr, align 8
  %incdec.ptr139 = getelementptr inbounds i8, i8* %111, i32 -1
  store i8* %incdec.ptr139, i8** %n1ptr, align 8
  %112 = load i8, i8* %111, align 1
  %conv140 = sext i8 %112 to i32
  %113 = load i8*, i8** %n2ptr, align 8
  %incdec.ptr141 = getelementptr inbounds i8, i8* %113, i32 1
  store i8* %incdec.ptr141, i8** %n2ptr, align 8
  %114 = load i8, i8* %113, align 1
  %conv142 = sext i8 %114 to i32
  %mul143 = mul nsw i32 %conv140, %conv142
  %conv144 = sext i32 %mul143 to i64
  %115 = load i64, i64* %sum, align 8
  %add145 = add nsw i64 %115, %conv144
  store i64 %add145, i64* %sum, align 8
  br label %while.cond.129

while.end.146:                                    ; preds = %land.end.137
  %116 = load i64, i64* %sum, align 8
  %rem = srem i64 %116, 10
  %conv147 = trunc i64 %rem to i8
  %117 = load i8*, i8** %pvptr, align 8
  %incdec.ptr148 = getelementptr inbounds i8, i8* %117, i32 -1
  store i8* %incdec.ptr148, i8** %pvptr, align 8
  store i8 %conv147, i8* %117, align 1
  %118 = load i64, i64* %sum, align 8
  %div149 = sdiv i64 %118, 10
  store i64 %div149, i64* %sum, align 8
  br label %for.inc.150

for.inc.150:                                      ; preds = %while.end.146
  %119 = load i32, i32* %indx, align 4
  %inc151 = add nsw i32 %119, 1
  store i32 %inc151, i32* %indx, align 4
  br label %for.cond.100

for.end.152:                                      ; preds = %for.cond.100
  %120 = load i64, i64* %sum, align 8
  %conv153 = trunc i64 %120 to i8
  %121 = load i8*, i8** %pvptr, align 8
  %incdec.ptr154 = getelementptr inbounds i8, i8* %121, i32 -1
  store i8* %incdec.ptr154, i8** %pvptr, align 8
  store i8 %conv153, i8* %121, align 1
  %122 = load %struct.bc_struct**, %struct.bc_struct*** %prod.addr, align 8
  call void @free_num(%struct.bc_struct** %122)
  %123 = load %struct.bc_struct*, %struct.bc_struct** %pval, align 8
  %124 = load %struct.bc_struct**, %struct.bc_struct*** %prod.addr, align 8
  store %struct.bc_struct* %123, %struct.bc_struct** %124, align 8
  %125 = load %struct.bc_struct**, %struct.bc_struct*** %prod.addr, align 8
  %126 = load %struct.bc_struct*, %struct.bc_struct** %125, align 8
  call void @_rm_leading_zeros(%struct.bc_struct* %126)
  %127 = load %struct.bc_struct**, %struct.bc_struct*** %prod.addr, align 8
  %128 = load %struct.bc_struct*, %struct.bc_struct** %127, align 8
  %call155 = call signext i8 @is_zero(%struct.bc_struct* %128)
  %tobool = icmp ne i8 %call155, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.end.152
  %129 = load %struct.bc_struct**, %struct.bc_struct*** %prod.addr, align 8
  %130 = load %struct.bc_struct*, %struct.bc_struct** %129, align 8
  %n_sign156 = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %130, i32 0, i32 0
  store i32 0, i32* %n_sign156, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end.152
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @_rm_leading_zeros(%struct.bc_struct* %num) #0 {
entry:
  %num.addr = alloca %struct.bc_struct*, align 8
  %bytes = alloca i32, align 4
  %dst = alloca i8*, align 8
  %src = alloca i8*, align 8
  store %struct.bc_struct* %num, %struct.bc_struct** %num.addr, align 8
  %0 = load %struct.bc_struct*, %struct.bc_struct** %num.addr, align 8
  %n_len = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %0, i32 0, i32 1
  %1 = load i32, i32* %n_len, align 4
  store i32 %1, i32* %bytes, align 4
  %2 = load %struct.bc_struct*, %struct.bc_struct** %num.addr, align 8
  %n_value = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %2, i32 0, i32 4
  %arrayidx = getelementptr inbounds [1024 x i8], [1024 x i8]* %n_value, i32 0, i64 0
  store i8* %arrayidx, i8** %src, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %3 = load i32, i32* %bytes, align 4
  %cmp = icmp sgt i32 %3, 1
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %4 = load i8*, i8** %src, align 8
  %5 = load i8, i8* %4, align 1
  %conv = sext i8 %5 to i32
  %cmp1 = icmp eq i32 %conv, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %6 = phi i1 [ false, %while.cond ], [ %cmp1, %land.rhs ]
  br i1 %6, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %7 = load i8*, i8** %src, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %7, i32 1
  store i8* %incdec.ptr, i8** %src, align 8
  %8 = load i32, i32* %bytes, align 4
  %dec = add nsw i32 %8, -1
  store i32 %dec, i32* %bytes, align 4
  br label %while.cond

while.end:                                        ; preds = %land.end
  %9 = load i32, i32* %bytes, align 4
  %10 = load %struct.bc_struct*, %struct.bc_struct** %num.addr, align 8
  %n_len3 = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %10, i32 0, i32 1
  store i32 %9, i32* %n_len3, align 4
  %11 = load %struct.bc_struct*, %struct.bc_struct** %num.addr, align 8
  %n_scale = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %11, i32 0, i32 2
  %12 = load i32, i32* %n_scale, align 4
  %13 = load i32, i32* %bytes, align 4
  %add = add nsw i32 %13, %12
  store i32 %add, i32* %bytes, align 4
  %14 = load %struct.bc_struct*, %struct.bc_struct** %num.addr, align 8
  %n_value4 = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %14, i32 0, i32 4
  %arrayidx5 = getelementptr inbounds [1024 x i8], [1024 x i8]* %n_value4, i32 0, i64 0
  store i8* %arrayidx5, i8** %dst, align 8
  br label %while.cond.6

while.cond.6:                                     ; preds = %while.body.10, %while.end
  %15 = load i32, i32* %bytes, align 4
  %dec7 = add nsw i32 %15, -1
  store i32 %dec7, i32* %bytes, align 4
  %cmp8 = icmp sgt i32 %15, 0
  br i1 %cmp8, label %while.body.10, label %while.end.13

while.body.10:                                    ; preds = %while.cond.6
  %16 = load i8*, i8** %src, align 8
  %incdec.ptr11 = getelementptr inbounds i8, i8* %16, i32 1
  store i8* %incdec.ptr11, i8** %src, align 8
  %17 = load i8, i8* %16, align 1
  %18 = load i8*, i8** %dst, align 8
  %incdec.ptr12 = getelementptr inbounds i8, i8* %18, i32 1
  store i8* %incdec.ptr12, i8** %dst, align 8
  store i8 %17, i8* %18, align 1
  br label %while.cond.6

while.end.13:                                     ; preds = %while.cond.6
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @bc_divide(%struct.bc_struct* %n1, %struct.bc_struct* %n2, %struct.bc_struct** %quot, i32 %scale) #0 {
entry:
  %retval = alloca i32, align 4
  %n1.addr = alloca %struct.bc_struct*, align 8
  %n2.addr = alloca %struct.bc_struct*, align 8
  %quot.addr = alloca %struct.bc_struct**, align 8
  %scale.addr = alloca i32, align 4
  %qval = alloca %struct.bc_struct*, align 8
  %num1 = alloca i8*, align 8
  %num2 = alloca i8*, align 8
  %ptr1 = alloca i8*, align 8
  %ptr2 = alloca i8*, align 8
  %n2ptr = alloca i8*, align 8
  %qptr = alloca i8*, align 8
  %scale1 = alloca i32, align 4
  %val = alloca i32, align 4
  %len1 = alloca i32, align 4
  %len2 = alloca i32, align 4
  %scale2 = alloca i32, align 4
  %qdigits = alloca i32, align 4
  %extra = alloca i32, align 4
  %count = alloca i32, align 4
  %qdig = alloca i32, align 4
  %qguess = alloca i32, align 4
  %borrow = alloca i32, align 4
  %carry = alloca i32, align 4
  %mval = alloca i8*, align 8
  %zero = alloca i8, align 1
  %norm = alloca i32, align 4
  store %struct.bc_struct* %n1, %struct.bc_struct** %n1.addr, align 8
  store %struct.bc_struct* %n2, %struct.bc_struct** %n2.addr, align 8
  store %struct.bc_struct** %quot, %struct.bc_struct*** %quot.addr, align 8
  store i32 %scale, i32* %scale.addr, align 4
  %0 = load %struct.bc_struct*, %struct.bc_struct** %n2.addr, align 8
  %call = call signext i8 @is_zero(%struct.bc_struct* %0)
  %tobool = icmp ne i8 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.bc_struct*, %struct.bc_struct** %n2.addr, align 8
  %n_scale = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %1, i32 0, i32 2
  %2 = load i32, i32* %n_scale, align 4
  %cmp = icmp eq i32 %2, 0
  br i1 %cmp, label %if.then.1, label %if.end.26

if.then.1:                                        ; preds = %if.end
  %3 = load %struct.bc_struct*, %struct.bc_struct** %n2.addr, align 8
  %n_len = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %3, i32 0, i32 1
  %4 = load i32, i32* %n_len, align 4
  %cmp2 = icmp eq i32 %4, 1
  br i1 %cmp2, label %land.lhs.true, label %if.end.25

land.lhs.true:                                    ; preds = %if.then.1
  %5 = load %struct.bc_struct*, %struct.bc_struct** %n2.addr, align 8
  %n_value = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %5, i32 0, i32 4
  %arrayidx = getelementptr inbounds [1024 x i8], [1024 x i8]* %n_value, i32 0, i64 0
  %6 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %6 to i32
  %cmp3 = icmp eq i32 %conv, 1
  br i1 %cmp3, label %if.then.5, label %if.end.25

if.then.5:                                        ; preds = %land.lhs.true
  %7 = load %struct.bc_struct*, %struct.bc_struct** %n1.addr, align 8
  %n_len6 = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %7, i32 0, i32 1
  %8 = load i32, i32* %n_len6, align 4
  %9 = load i32, i32* %scale.addr, align 4
  %call7 = call %struct.bc_struct* @new_num(i32 %8, i32 %9)
  store %struct.bc_struct* %call7, %struct.bc_struct** %qval, align 8
  %10 = load %struct.bc_struct*, %struct.bc_struct** %n1.addr, align 8
  %n_sign = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %10, i32 0, i32 0
  %11 = load i32, i32* %n_sign, align 4
  %12 = load %struct.bc_struct*, %struct.bc_struct** %n2.addr, align 8
  %n_sign8 = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %12, i32 0, i32 0
  %13 = load i32, i32* %n_sign8, align 4
  %cmp9 = icmp eq i32 %11, %13
  %cond = select i1 %cmp9, i32 0, i32 1
  %14 = load %struct.bc_struct*, %struct.bc_struct** %qval, align 8
  %n_sign11 = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %14, i32 0, i32 0
  store i32 %cond, i32* %n_sign11, align 4
  %15 = load %struct.bc_struct*, %struct.bc_struct** %n1.addr, align 8
  %n_len12 = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %15, i32 0, i32 1
  %16 = load i32, i32* %n_len12, align 4
  %idxprom = sext i32 %16 to i64
  %17 = load %struct.bc_struct*, %struct.bc_struct** %qval, align 8
  %n_value13 = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %17, i32 0, i32 4
  %arrayidx14 = getelementptr inbounds [1024 x i8], [1024 x i8]* %n_value13, i32 0, i64 %idxprom
  %18 = load i32, i32* %scale.addr, align 4
  %conv15 = sext i32 %18 to i64
  call void @llvm.memset.p0i8.i64(i8* %arrayidx14, i8 0, i64 %conv15, i32 1, i1 false)
  %19 = load %struct.bc_struct*, %struct.bc_struct** %qval, align 8
  %n_value16 = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %19, i32 0, i32 4
  %20 = bitcast [1024 x i8]* %n_value16 to i8*
  %21 = load %struct.bc_struct*, %struct.bc_struct** %n1.addr, align 8
  %n_value17 = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %21, i32 0, i32 4
  %22 = bitcast [1024 x i8]* %n_value17 to i8*
  %23 = load %struct.bc_struct*, %struct.bc_struct** %n1.addr, align 8
  %n_len18 = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %23, i32 0, i32 1
  %24 = load i32, i32* %n_len18, align 4
  %25 = load %struct.bc_struct*, %struct.bc_struct** %n1.addr, align 8
  %n_scale19 = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %25, i32 0, i32 2
  %26 = load i32, i32* %n_scale19, align 4
  %27 = load i32, i32* %scale.addr, align 4
  %cmp20 = icmp sgt i32 %26, %27
  br i1 %cmp20, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.5
  %28 = load i32, i32* %scale.addr, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.then.5
  %29 = load %struct.bc_struct*, %struct.bc_struct** %n1.addr, align 8
  %n_scale22 = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %29, i32 0, i32 2
  %30 = load i32, i32* %n_scale22, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond23 = phi i32 [ %28, %cond.true ], [ %30, %cond.false ]
  %add = add nsw i32 %24, %cond23
  %conv24 = sext i32 %add to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %20, i8* %22, i64 %conv24, i32 4, i1 false)
  %31 = load %struct.bc_struct**, %struct.bc_struct*** %quot.addr, align 8
  call void @free_num(%struct.bc_struct** %31)
  %32 = load %struct.bc_struct*, %struct.bc_struct** %qval, align 8
  %33 = load %struct.bc_struct**, %struct.bc_struct*** %quot.addr, align 8
  store %struct.bc_struct* %32, %struct.bc_struct** %33, align 8
  br label %if.end.25

if.end.25:                                        ; preds = %cond.end, %land.lhs.true, %if.then.1
  br label %if.end.26

if.end.26:                                        ; preds = %if.end.25, %if.end
  %34 = load %struct.bc_struct*, %struct.bc_struct** %n2.addr, align 8
  %n_scale27 = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %34, i32 0, i32 2
  %35 = load i32, i32* %n_scale27, align 4
  store i32 %35, i32* %scale2, align 4
  %36 = load %struct.bc_struct*, %struct.bc_struct** %n2.addr, align 8
  %n_value28 = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %36, i32 0, i32 4
  %arrayidx29 = getelementptr inbounds [1024 x i8], [1024 x i8]* %n_value28, i32 0, i64 0
  %37 = load %struct.bc_struct*, %struct.bc_struct** %n2.addr, align 8
  %n_len30 = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %37, i32 0, i32 1
  %38 = load i32, i32* %n_len30, align 4
  %idx.ext = sext i32 %38 to i64
  %add.ptr = getelementptr inbounds i8, i8* %arrayidx29, i64 %idx.ext
  %39 = load i32, i32* %scale2, align 4
  %idx.ext31 = zext i32 %39 to i64
  %add.ptr32 = getelementptr inbounds i8, i8* %add.ptr, i64 %idx.ext31
  %add.ptr33 = getelementptr inbounds i8, i8* %add.ptr32, i64 -1
  store i8* %add.ptr33, i8** %n2ptr, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end.26
  %40 = load i32, i32* %scale2, align 4
  %cmp34 = icmp ugt i32 %40, 0
  br i1 %cmp34, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %41 = load i8*, i8** %n2ptr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %41, i32 -1
  store i8* %incdec.ptr, i8** %n2ptr, align 8
  %42 = load i8, i8* %41, align 1
  %conv36 = sext i8 %42 to i32
  %cmp37 = icmp eq i32 %conv36, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %43 = phi i1 [ false, %while.cond ], [ %cmp37, %land.rhs ]
  br i1 %43, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %44 = load i32, i32* %scale2, align 4
  %dec = add i32 %44, -1
  store i32 %dec, i32* %scale2, align 4
  br label %while.cond

while.end:                                        ; preds = %land.end
  %45 = load %struct.bc_struct*, %struct.bc_struct** %n1.addr, align 8
  %n_len39 = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %45, i32 0, i32 1
  %46 = load i32, i32* %n_len39, align 4
  %47 = load i32, i32* %scale2, align 4
  %add40 = add i32 %46, %47
  store i32 %add40, i32* %len1, align 4
  %48 = load %struct.bc_struct*, %struct.bc_struct** %n1.addr, align 8
  %n_scale41 = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %48, i32 0, i32 2
  %49 = load i32, i32* %n_scale41, align 4
  %50 = load i32, i32* %scale2, align 4
  %sub = sub i32 %49, %50
  store i32 %sub, i32* %scale1, align 4
  %51 = load i32, i32* %scale1, align 4
  %52 = load i32, i32* %scale.addr, align 4
  %cmp42 = icmp slt i32 %51, %52
  br i1 %cmp42, label %if.then.44, label %if.else

if.then.44:                                       ; preds = %while.end
  %53 = load i32, i32* %scale.addr, align 4
  %54 = load i32, i32* %scale1, align 4
  %sub45 = sub nsw i32 %53, %54
  store i32 %sub45, i32* %extra, align 4
  br label %if.end.46

if.else:                                          ; preds = %while.end
  store i32 0, i32* %extra, align 4
  br label %if.end.46

if.end.46:                                        ; preds = %if.else, %if.then.44
  %55 = load %struct.bc_struct*, %struct.bc_struct** %n1.addr, align 8
  %n_len47 = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %55, i32 0, i32 1
  %56 = load i32, i32* %n_len47, align 4
  %57 = load %struct.bc_struct*, %struct.bc_struct** %n1.addr, align 8
  %n_scale48 = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %57, i32 0, i32 2
  %58 = load i32, i32* %n_scale48, align 4
  %add49 = add nsw i32 %56, %58
  %59 = load i32, i32* %extra, align 4
  %add50 = add i32 %add49, %59
  %add51 = add i32 %add50, 2
  %conv52 = zext i32 %add51 to i64
  %call53 = call noalias i8* @malloc(i64 %conv52) #2
  store i8* %call53, i8** %num1, align 8
  %60 = load i8*, i8** %num1, align 8
  %61 = load %struct.bc_struct*, %struct.bc_struct** %n1.addr, align 8
  %n_len54 = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %61, i32 0, i32 1
  %62 = load i32, i32* %n_len54, align 4
  %63 = load %struct.bc_struct*, %struct.bc_struct** %n1.addr, align 8
  %n_scale55 = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %63, i32 0, i32 2
  %64 = load i32, i32* %n_scale55, align 4
  %add56 = add nsw i32 %62, %64
  %65 = load i32, i32* %extra, align 4
  %add57 = add i32 %add56, %65
  %add58 = add i32 %add57, 2
  %conv59 = zext i32 %add58 to i64
  call void @llvm.memset.p0i8.i64(i8* %60, i8 0, i64 %conv59, i32 1, i1 false)
  %66 = load i8*, i8** %num1, align 8
  %add.ptr60 = getelementptr inbounds i8, i8* %66, i64 1
  %67 = load %struct.bc_struct*, %struct.bc_struct** %n1.addr, align 8
  %n_value61 = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %67, i32 0, i32 4
  %68 = bitcast [1024 x i8]* %n_value61 to i8*
  %69 = load %struct.bc_struct*, %struct.bc_struct** %n1.addr, align 8
  %n_len62 = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %69, i32 0, i32 1
  %70 = load i32, i32* %n_len62, align 4
  %71 = load %struct.bc_struct*, %struct.bc_struct** %n1.addr, align 8
  %n_scale63 = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %71, i32 0, i32 2
  %72 = load i32, i32* %n_scale63, align 4
  %add64 = add nsw i32 %70, %72
  %conv65 = sext i32 %add64 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %add.ptr60, i8* %68, i64 %conv65, i32 1, i1 false)
  %73 = load %struct.bc_struct*, %struct.bc_struct** %n2.addr, align 8
  %n_len66 = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %73, i32 0, i32 1
  %74 = load i32, i32* %n_len66, align 4
  %75 = load i32, i32* %scale2, align 4
  %add67 = add i32 %74, %75
  store i32 %add67, i32* %len2, align 4
  %76 = load i32, i32* %len2, align 4
  %add68 = add i32 %76, 1
  %conv69 = zext i32 %add68 to i64
  %call70 = call noalias i8* @malloc(i64 %conv69) #2
  store i8* %call70, i8** %num2, align 8
  %77 = load i8*, i8** %num2, align 8
  %78 = load %struct.bc_struct*, %struct.bc_struct** %n2.addr, align 8
  %n_value71 = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %78, i32 0, i32 4
  %79 = bitcast [1024 x i8]* %n_value71 to i8*
  %80 = load i32, i32* %len2, align 4
  %conv72 = zext i32 %80 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %77, i8* %79, i64 %conv72, i32 1, i1 false)
  %81 = load i8*, i8** %num2, align 8
  %82 = load i32, i32* %len2, align 4
  %idx.ext73 = zext i32 %82 to i64
  %add.ptr74 = getelementptr inbounds i8, i8* %81, i64 %idx.ext73
  store i8 0, i8* %add.ptr74, align 1
  %83 = load i8*, i8** %num2, align 8
  store i8* %83, i8** %n2ptr, align 8
  br label %while.cond.75

while.cond.75:                                    ; preds = %while.body.79, %if.end.46
  %84 = load i8*, i8** %n2ptr, align 8
  %85 = load i8, i8* %84, align 1
  %conv76 = sext i8 %85 to i32
  %cmp77 = icmp eq i32 %conv76, 0
  br i1 %cmp77, label %while.body.79, label %while.end.82

while.body.79:                                    ; preds = %while.cond.75
  %86 = load i8*, i8** %n2ptr, align 8
  %incdec.ptr80 = getelementptr inbounds i8, i8* %86, i32 1
  store i8* %incdec.ptr80, i8** %n2ptr, align 8
  %87 = load i32, i32* %len2, align 4
  %dec81 = add i32 %87, -1
  store i32 %dec81, i32* %len2, align 4
  br label %while.cond.75

while.end.82:                                     ; preds = %while.cond.75
  %88 = load i32, i32* %len2, align 4
  %89 = load i32, i32* %len1, align 4
  %90 = load i32, i32* %scale.addr, align 4
  %add83 = add i32 %89, %90
  %cmp84 = icmp ugt i32 %88, %add83
  br i1 %cmp84, label %if.then.86, label %if.else.88

if.then.86:                                       ; preds = %while.end.82
  %91 = load i32, i32* %scale.addr, align 4
  %add87 = add nsw i32 %91, 1
  store i32 %add87, i32* %qdigits, align 4
  store i8 1, i8* %zero, align 1
  br label %if.end.98

if.else.88:                                       ; preds = %while.end.82
  store i8 0, i8* %zero, align 1
  %92 = load i32, i32* %len2, align 4
  %93 = load i32, i32* %len1, align 4
  %cmp89 = icmp ugt i32 %92, %93
  br i1 %cmp89, label %if.then.91, label %if.else.93

if.then.91:                                       ; preds = %if.else.88
  %94 = load i32, i32* %scale.addr, align 4
  %add92 = add nsw i32 %94, 1
  store i32 %add92, i32* %qdigits, align 4
  br label %if.end.97

if.else.93:                                       ; preds = %if.else.88
  %95 = load i32, i32* %len1, align 4
  %96 = load i32, i32* %len2, align 4
  %sub94 = sub i32 %95, %96
  %97 = load i32, i32* %scale.addr, align 4
  %add95 = add i32 %sub94, %97
  %add96 = add i32 %add95, 1
  store i32 %add96, i32* %qdigits, align 4
  br label %if.end.97

if.end.97:                                        ; preds = %if.else.93, %if.then.91
  br label %if.end.98

if.end.98:                                        ; preds = %if.end.97, %if.then.86
  %98 = load i32, i32* %qdigits, align 4
  %99 = load i32, i32* %scale.addr, align 4
  %sub99 = sub i32 %98, %99
  %100 = load i32, i32* %scale.addr, align 4
  %call100 = call %struct.bc_struct* @new_num(i32 %sub99, i32 %100)
  store %struct.bc_struct* %call100, %struct.bc_struct** %qval, align 8
  %101 = load %struct.bc_struct*, %struct.bc_struct** %qval, align 8
  %n_value101 = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %101, i32 0, i32 4
  %102 = bitcast [1024 x i8]* %n_value101 to i8*
  %103 = load i32, i32* %qdigits, align 4
  %conv102 = zext i32 %103 to i64
  call void @llvm.memset.p0i8.i64(i8* %102, i8 0, i64 %conv102, i32 4, i1 false)
  %104 = load i32, i32* %len2, align 4
  %add103 = add i32 %104, 1
  %conv104 = zext i32 %add103 to i64
  %call105 = call noalias i8* @malloc(i64 %conv104) #2
  store i8* %call105, i8** %mval, align 8
  %105 = load i8, i8* %zero, align 1
  %tobool106 = icmp ne i8 %105, 0
  br i1 %tobool106, label %if.end.277, label %if.then.107

if.then.107:                                      ; preds = %if.end.98
  %106 = load i8*, i8** %n2ptr, align 8
  %107 = load i8, i8* %106, align 1
  %conv108 = sext i8 %107 to i32
  %add109 = add nsw i32 %conv108, 1
  %div = sdiv i32 10, %add109
  store i32 %div, i32* %norm, align 4
  %108 = load i32, i32* %norm, align 4
  %cmp110 = icmp ne i32 %108, 1
  br i1 %cmp110, label %if.then.112, label %if.end.116

if.then.112:                                      ; preds = %if.then.107
  %109 = load i8*, i8** %num1, align 8
  %110 = load i32, i32* %len1, align 4
  %111 = load i32, i32* %scale1, align 4
  %add113 = add i32 %110, %111
  %112 = load i32, i32* %extra, align 4
  %add114 = add i32 %add113, %112
  %add115 = add i32 %add114, 1
  %113 = load i32, i32* %norm, align 4
  %114 = load i8*, i8** %num1, align 8
  call void @_one_mult(i8* %109, i32 %add115, i32 %113, i8* %114)
  %115 = load i8*, i8** %n2ptr, align 8
  %116 = load i32, i32* %len2, align 4
  %117 = load i32, i32* %norm, align 4
  %118 = load i8*, i8** %n2ptr, align 8
  call void @_one_mult(i8* %115, i32 %116, i32 %117, i8* %118)
  br label %if.end.116

if.end.116:                                       ; preds = %if.then.112, %if.then.107
  store i32 0, i32* %qdig, align 4
  %119 = load i32, i32* %len2, align 4
  %120 = load i32, i32* %len1, align 4
  %cmp117 = icmp ugt i32 %119, %120
  br i1 %cmp117, label %if.then.119, label %if.else.126

if.then.119:                                      ; preds = %if.end.116
  %121 = load %struct.bc_struct*, %struct.bc_struct** %qval, align 8
  %n_value120 = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %121, i32 0, i32 4
  %arrayidx121 = getelementptr inbounds [1024 x i8], [1024 x i8]* %n_value120, i32 0, i64 0
  %122 = load i32, i32* %len2, align 4
  %idx.ext122 = zext i32 %122 to i64
  %add.ptr123 = getelementptr inbounds i8, i8* %arrayidx121, i64 %idx.ext122
  %123 = load i32, i32* %len1, align 4
  %idx.ext124 = zext i32 %123 to i64
  %idx.neg = sub i64 0, %idx.ext124
  %add.ptr125 = getelementptr inbounds i8, i8* %add.ptr123, i64 %idx.neg
  store i8* %add.ptr125, i8** %qptr, align 8
  br label %if.end.129

if.else.126:                                      ; preds = %if.end.116
  %124 = load %struct.bc_struct*, %struct.bc_struct** %qval, align 8
  %n_value127 = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %124, i32 0, i32 4
  %arrayidx128 = getelementptr inbounds [1024 x i8], [1024 x i8]* %n_value127, i32 0, i64 0
  store i8* %arrayidx128, i8** %qptr, align 8
  br label %if.end.129

if.end.129:                                       ; preds = %if.else.126, %if.then.119
  br label %while.cond.130

while.cond.130:                                   ; preds = %if.end.272, %if.end.129
  %125 = load i32, i32* %qdig, align 4
  %126 = load i32, i32* %len1, align 4
  %127 = load i32, i32* %scale.addr, align 4
  %add131 = add i32 %126, %127
  %128 = load i32, i32* %len2, align 4
  %sub132 = sub i32 %add131, %128
  %cmp133 = icmp ule i32 %125, %sub132
  br i1 %cmp133, label %while.body.135, label %while.end.276

while.body.135:                                   ; preds = %while.cond.130
  %129 = load i8*, i8** %n2ptr, align 8
  %130 = load i8, i8* %129, align 1
  %conv136 = sext i8 %130 to i32
  %131 = load i32, i32* %qdig, align 4
  %idxprom137 = zext i32 %131 to i64
  %132 = load i8*, i8** %num1, align 8
  %arrayidx138 = getelementptr inbounds i8, i8* %132, i64 %idxprom137
  %133 = load i8, i8* %arrayidx138, align 1
  %conv139 = sext i8 %133 to i32
  %cmp140 = icmp eq i32 %conv136, %conv139
  br i1 %cmp140, label %if.then.142, label %if.else.143

if.then.142:                                      ; preds = %while.body.135
  store i32 9, i32* %qguess, align 4
  br label %if.end.154

if.else.143:                                      ; preds = %while.body.135
  %134 = load i32, i32* %qdig, align 4
  %idxprom144 = zext i32 %134 to i64
  %135 = load i8*, i8** %num1, align 8
  %arrayidx145 = getelementptr inbounds i8, i8* %135, i64 %idxprom144
  %136 = load i8, i8* %arrayidx145, align 1
  %conv146 = sext i8 %136 to i32
  %mul = mul nsw i32 %conv146, 10
  %137 = load i32, i32* %qdig, align 4
  %add147 = add i32 %137, 1
  %idxprom148 = zext i32 %add147 to i64
  %138 = load i8*, i8** %num1, align 8
  %arrayidx149 = getelementptr inbounds i8, i8* %138, i64 %idxprom148
  %139 = load i8, i8* %arrayidx149, align 1
  %conv150 = sext i8 %139 to i32
  %add151 = add nsw i32 %mul, %conv150
  %140 = load i8*, i8** %n2ptr, align 8
  %141 = load i8, i8* %140, align 1
  %conv152 = sext i8 %141 to i32
  %div153 = sdiv i32 %add151, %conv152
  store i32 %div153, i32* %qguess, align 4
  br label %if.end.154

if.end.154:                                       ; preds = %if.else.143, %if.then.142
  %142 = load i8*, i8** %n2ptr, align 8
  %arrayidx155 = getelementptr inbounds i8, i8* %142, i64 1
  %143 = load i8, i8* %arrayidx155, align 1
  %conv156 = sext i8 %143 to i32
  %144 = load i32, i32* %qguess, align 4
  %mul157 = mul i32 %conv156, %144
  %145 = load i32, i32* %qdig, align 4
  %idxprom158 = zext i32 %145 to i64
  %146 = load i8*, i8** %num1, align 8
  %arrayidx159 = getelementptr inbounds i8, i8* %146, i64 %idxprom158
  %147 = load i8, i8* %arrayidx159, align 1
  %conv160 = sext i8 %147 to i32
  %mul161 = mul nsw i32 %conv160, 10
  %148 = load i32, i32* %qdig, align 4
  %add162 = add i32 %148, 1
  %idxprom163 = zext i32 %add162 to i64
  %149 = load i8*, i8** %num1, align 8
  %arrayidx164 = getelementptr inbounds i8, i8* %149, i64 %idxprom163
  %150 = load i8, i8* %arrayidx164, align 1
  %conv165 = sext i8 %150 to i32
  %add166 = add nsw i32 %mul161, %conv165
  %151 = load i8*, i8** %n2ptr, align 8
  %152 = load i8, i8* %151, align 1
  %conv167 = sext i8 %152 to i32
  %153 = load i32, i32* %qguess, align 4
  %mul168 = mul i32 %conv167, %153
  %sub169 = sub i32 %add166, %mul168
  %mul170 = mul i32 %sub169, 10
  %154 = load i32, i32* %qdig, align 4
  %add171 = add i32 %154, 2
  %idxprom172 = zext i32 %add171 to i64
  %155 = load i8*, i8** %num1, align 8
  %arrayidx173 = getelementptr inbounds i8, i8* %155, i64 %idxprom172
  %156 = load i8, i8* %arrayidx173, align 1
  %conv174 = sext i8 %156 to i32
  %add175 = add i32 %mul170, %conv174
  %cmp176 = icmp ugt i32 %mul157, %add175
  br i1 %cmp176, label %if.then.178, label %if.end.206

if.then.178:                                      ; preds = %if.end.154
  %157 = load i32, i32* %qguess, align 4
  %dec179 = add i32 %157, -1
  store i32 %dec179, i32* %qguess, align 4
  %158 = load i8*, i8** %n2ptr, align 8
  %arrayidx180 = getelementptr inbounds i8, i8* %158, i64 1
  %159 = load i8, i8* %arrayidx180, align 1
  %conv181 = sext i8 %159 to i32
  %160 = load i32, i32* %qguess, align 4
  %mul182 = mul i32 %conv181, %160
  %161 = load i32, i32* %qdig, align 4
  %idxprom183 = zext i32 %161 to i64
  %162 = load i8*, i8** %num1, align 8
  %arrayidx184 = getelementptr inbounds i8, i8* %162, i64 %idxprom183
  %163 = load i8, i8* %arrayidx184, align 1
  %conv185 = sext i8 %163 to i32
  %mul186 = mul nsw i32 %conv185, 10
  %164 = load i32, i32* %qdig, align 4
  %add187 = add i32 %164, 1
  %idxprom188 = zext i32 %add187 to i64
  %165 = load i8*, i8** %num1, align 8
  %arrayidx189 = getelementptr inbounds i8, i8* %165, i64 %idxprom188
  %166 = load i8, i8* %arrayidx189, align 1
  %conv190 = sext i8 %166 to i32
  %add191 = add nsw i32 %mul186, %conv190
  %167 = load i8*, i8** %n2ptr, align 8
  %168 = load i8, i8* %167, align 1
  %conv192 = sext i8 %168 to i32
  %169 = load i32, i32* %qguess, align 4
  %mul193 = mul i32 %conv192, %169
  %sub194 = sub i32 %add191, %mul193
  %mul195 = mul i32 %sub194, 10
  %170 = load i32, i32* %qdig, align 4
  %add196 = add i32 %170, 2
  %idxprom197 = zext i32 %add196 to i64
  %171 = load i8*, i8** %num1, align 8
  %arrayidx198 = getelementptr inbounds i8, i8* %171, i64 %idxprom197
  %172 = load i8, i8* %arrayidx198, align 1
  %conv199 = sext i8 %172 to i32
  %add200 = add i32 %mul195, %conv199
  %cmp201 = icmp ugt i32 %mul182, %add200
  br i1 %cmp201, label %if.then.203, label %if.end.205

if.then.203:                                      ; preds = %if.then.178
  %173 = load i32, i32* %qguess, align 4
  %dec204 = add i32 %173, -1
  store i32 %dec204, i32* %qguess, align 4
  br label %if.end.205

if.end.205:                                       ; preds = %if.then.203, %if.then.178
  br label %if.end.206

if.end.206:                                       ; preds = %if.end.205, %if.end.154
  store i32 0, i32* %borrow, align 4
  %174 = load i32, i32* %qguess, align 4
  %cmp207 = icmp ne i32 %174, 0
  br i1 %cmp207, label %if.then.209, label %if.end.233

if.then.209:                                      ; preds = %if.end.206
  %175 = load i8*, i8** %mval, align 8
  store i8 0, i8* %175, align 1
  %176 = load i8*, i8** %n2ptr, align 8
  %177 = load i32, i32* %len2, align 4
  %178 = load i32, i32* %qguess, align 4
  %179 = load i8*, i8** %mval, align 8
  %add.ptr210 = getelementptr inbounds i8, i8* %179, i64 1
  call void @_one_mult(i8* %176, i32 %177, i32 %178, i8* %add.ptr210)
  %180 = load i8*, i8** %num1, align 8
  %181 = load i32, i32* %qdig, align 4
  %idx.ext211 = zext i32 %181 to i64
  %add.ptr212 = getelementptr inbounds i8, i8* %180, i64 %idx.ext211
  %182 = load i32, i32* %len2, align 4
  %idx.ext213 = zext i32 %182 to i64
  %add.ptr214 = getelementptr inbounds i8, i8* %add.ptr212, i64 %idx.ext213
  store i8* %add.ptr214, i8** %ptr1, align 8
  %183 = load i8*, i8** %mval, align 8
  %184 = load i32, i32* %len2, align 4
  %idx.ext215 = zext i32 %184 to i64
  %add.ptr216 = getelementptr inbounds i8, i8* %183, i64 %idx.ext215
  store i8* %add.ptr216, i8** %ptr2, align 8
  store i32 0, i32* %count, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.209
  %185 = load i32, i32* %count, align 4
  %186 = load i32, i32* %len2, align 4
  %add217 = add i32 %186, 1
  %cmp218 = icmp ult i32 %185, %add217
  br i1 %cmp218, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %187 = load i8*, i8** %ptr1, align 8
  %188 = load i8, i8* %187, align 1
  %conv220 = sext i8 %188 to i32
  %189 = load i8*, i8** %ptr2, align 8
  %incdec.ptr221 = getelementptr inbounds i8, i8* %189, i32 -1
  store i8* %incdec.ptr221, i8** %ptr2, align 8
  %190 = load i8, i8* %189, align 1
  %conv222 = sext i8 %190 to i32
  %sub223 = sub nsw i32 %conv220, %conv222
  %191 = load i32, i32* %borrow, align 4
  %sub224 = sub i32 %sub223, %191
  store i32 %sub224, i32* %val, align 4
  %192 = load i32, i32* %val, align 4
  %cmp225 = icmp slt i32 %192, 0
  br i1 %cmp225, label %if.then.227, label %if.else.229

if.then.227:                                      ; preds = %for.body
  %193 = load i32, i32* %val, align 4
  %add228 = add nsw i32 %193, 10
  store i32 %add228, i32* %val, align 4
  store i32 1, i32* %borrow, align 4
  br label %if.end.230

if.else.229:                                      ; preds = %for.body
  store i32 0, i32* %borrow, align 4
  br label %if.end.230

if.end.230:                                       ; preds = %if.else.229, %if.then.227
  %194 = load i32, i32* %val, align 4
  %conv231 = trunc i32 %194 to i8
  %195 = load i8*, i8** %ptr1, align 8
  %incdec.ptr232 = getelementptr inbounds i8, i8* %195, i32 -1
  store i8* %incdec.ptr232, i8** %ptr1, align 8
  store i8 %conv231, i8* %195, align 1
  br label %for.inc

for.inc:                                          ; preds = %if.end.230
  %196 = load i32, i32* %count, align 4
  %inc = add i32 %196, 1
  store i32 %inc, i32* %count, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.233

if.end.233:                                       ; preds = %for.end, %if.end.206
  %197 = load i32, i32* %borrow, align 4
  %cmp234 = icmp eq i32 %197, 1
  br i1 %cmp234, label %if.then.236, label %if.end.272

if.then.236:                                      ; preds = %if.end.233
  %198 = load i32, i32* %qguess, align 4
  %dec237 = add i32 %198, -1
  store i32 %dec237, i32* %qguess, align 4
  %199 = load i8*, i8** %num1, align 8
  %200 = load i32, i32* %qdig, align 4
  %idx.ext238 = zext i32 %200 to i64
  %add.ptr239 = getelementptr inbounds i8, i8* %199, i64 %idx.ext238
  %201 = load i32, i32* %len2, align 4
  %idx.ext240 = zext i32 %201 to i64
  %add.ptr241 = getelementptr inbounds i8, i8* %add.ptr239, i64 %idx.ext240
  store i8* %add.ptr241, i8** %ptr1, align 8
  %202 = load i8*, i8** %n2ptr, align 8
  %203 = load i32, i32* %len2, align 4
  %idx.ext242 = zext i32 %203 to i64
  %add.ptr243 = getelementptr inbounds i8, i8* %202, i64 %idx.ext242
  %add.ptr244 = getelementptr inbounds i8, i8* %add.ptr243, i64 -1
  store i8* %add.ptr244, i8** %ptr2, align 8
  store i32 0, i32* %carry, align 4
  store i32 0, i32* %count, align 4
  br label %for.cond.245

for.cond.245:                                     ; preds = %for.inc.262, %if.then.236
  %204 = load i32, i32* %count, align 4
  %205 = load i32, i32* %len2, align 4
  %cmp246 = icmp ult i32 %204, %205
  br i1 %cmp246, label %for.body.248, label %for.end.264

for.body.248:                                     ; preds = %for.cond.245
  %206 = load i8*, i8** %ptr1, align 8
  %207 = load i8, i8* %206, align 1
  %conv249 = sext i8 %207 to i32
  %208 = load i8*, i8** %ptr2, align 8
  %incdec.ptr250 = getelementptr inbounds i8, i8* %208, i32 -1
  store i8* %incdec.ptr250, i8** %ptr2, align 8
  %209 = load i8, i8* %208, align 1
  %conv251 = sext i8 %209 to i32
  %add252 = add nsw i32 %conv249, %conv251
  %210 = load i32, i32* %carry, align 4
  %add253 = add i32 %add252, %210
  store i32 %add253, i32* %val, align 4
  %211 = load i32, i32* %val, align 4
  %cmp254 = icmp sgt i32 %211, 9
  br i1 %cmp254, label %if.then.256, label %if.else.258

if.then.256:                                      ; preds = %for.body.248
  %212 = load i32, i32* %val, align 4
  %sub257 = sub nsw i32 %212, 10
  store i32 %sub257, i32* %val, align 4
  store i32 1, i32* %carry, align 4
  br label %if.end.259

if.else.258:                                      ; preds = %for.body.248
  store i32 0, i32* %carry, align 4
  br label %if.end.259

if.end.259:                                       ; preds = %if.else.258, %if.then.256
  %213 = load i32, i32* %val, align 4
  %conv260 = trunc i32 %213 to i8
  %214 = load i8*, i8** %ptr1, align 8
  %incdec.ptr261 = getelementptr inbounds i8, i8* %214, i32 -1
  store i8* %incdec.ptr261, i8** %ptr1, align 8
  store i8 %conv260, i8* %214, align 1
  br label %for.inc.262

for.inc.262:                                      ; preds = %if.end.259
  %215 = load i32, i32* %count, align 4
  %inc263 = add i32 %215, 1
  store i32 %inc263, i32* %count, align 4
  br label %for.cond.245

for.end.264:                                      ; preds = %for.cond.245
  %216 = load i32, i32* %carry, align 4
  %cmp265 = icmp eq i32 %216, 1
  br i1 %cmp265, label %if.then.267, label %if.end.271

if.then.267:                                      ; preds = %for.end.264
  %217 = load i8*, i8** %ptr1, align 8
  %218 = load i8, i8* %217, align 1
  %conv268 = sext i8 %218 to i32
  %add269 = add nsw i32 %conv268, 1
  %rem = srem i32 %add269, 10
  %conv270 = trunc i32 %rem to i8
  %219 = load i8*, i8** %ptr1, align 8
  store i8 %conv270, i8* %219, align 1
  br label %if.end.271

if.end.271:                                       ; preds = %if.then.267, %for.end.264
  br label %if.end.272

if.end.272:                                       ; preds = %if.end.271, %if.end.233
  %220 = load i32, i32* %qguess, align 4
  %conv273 = trunc i32 %220 to i8
  %221 = load i8*, i8** %qptr, align 8
  %incdec.ptr274 = getelementptr inbounds i8, i8* %221, i32 1
  store i8* %incdec.ptr274, i8** %qptr, align 8
  store i8 %conv273, i8* %221, align 1
  %222 = load i32, i32* %qdig, align 4
  %inc275 = add i32 %222, 1
  store i32 %inc275, i32* %qdig, align 4
  br label %while.cond.130

while.end.276:                                    ; preds = %while.cond.130
  br label %if.end.277

if.end.277:                                       ; preds = %while.end.276, %if.end.98
  %223 = load %struct.bc_struct*, %struct.bc_struct** %n1.addr, align 8
  %n_sign278 = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %223, i32 0, i32 0
  %224 = load i32, i32* %n_sign278, align 4
  %225 = load %struct.bc_struct*, %struct.bc_struct** %n2.addr, align 8
  %n_sign279 = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %225, i32 0, i32 0
  %226 = load i32, i32* %n_sign279, align 4
  %cmp280 = icmp eq i32 %224, %226
  %cond282 = select i1 %cmp280, i32 0, i32 1
  %227 = load %struct.bc_struct*, %struct.bc_struct** %qval, align 8
  %n_sign283 = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %227, i32 0, i32 0
  store i32 %cond282, i32* %n_sign283, align 4
  %228 = load %struct.bc_struct*, %struct.bc_struct** %qval, align 8
  %call284 = call signext i8 @is_zero(%struct.bc_struct* %228)
  %tobool285 = icmp ne i8 %call284, 0
  br i1 %tobool285, label %if.then.286, label %if.end.288

if.then.286:                                      ; preds = %if.end.277
  %229 = load %struct.bc_struct*, %struct.bc_struct** %qval, align 8
  %n_sign287 = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %229, i32 0, i32 0
  store i32 0, i32* %n_sign287, align 4
  br label %if.end.288

if.end.288:                                       ; preds = %if.then.286, %if.end.277
  %230 = load %struct.bc_struct*, %struct.bc_struct** %qval, align 8
  call void @_rm_leading_zeros(%struct.bc_struct* %230)
  %231 = load %struct.bc_struct**, %struct.bc_struct*** %quot.addr, align 8
  call void @free_num(%struct.bc_struct** %231)
  %232 = load %struct.bc_struct*, %struct.bc_struct** %qval, align 8
  %233 = load %struct.bc_struct**, %struct.bc_struct*** %quot.addr, align 8
  store %struct.bc_struct* %232, %struct.bc_struct** %233, align 8
  %234 = load i8*, i8** %mval, align 8
  call void @free(i8* %234) #2
  %235 = load i8*, i8** %num1, align 8
  call void @free(i8* %235) #2
  %236 = load i8*, i8** %num2, align 8
  call void @free(i8* %236) #2
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.288, %if.then
  %237 = load i32, i32* %retval
  ret i32 %237
}

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #2

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #2

; Function Attrs: nounwind uwtable
define internal void @_one_mult(i8* %num, i32 %size, i32 %digit, i8* %result) #0 {
entry:
  %num.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %digit.addr = alloca i32, align 4
  %result.addr = alloca i8*, align 8
  %carry = alloca i32, align 4
  %value = alloca i32, align 4
  %nptr = alloca i8*, align 8
  %rptr = alloca i8*, align 8
  store i8* %num, i8** %num.addr, align 8
  store i32 %size, i32* %size.addr, align 4
  store i32 %digit, i32* %digit.addr, align 4
  store i8* %result, i8** %result.addr, align 8
  %0 = load i32, i32* %digit.addr, align 4
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %result.addr, align 8
  %2 = load i32, i32* %size.addr, align 4
  %conv = sext i32 %2 to i64
  call void @llvm.memset.p0i8.i64(i8* %1, i8 0, i64 %conv, i32 1, i1 false)
  br label %if.end.20

if.else:                                          ; preds = %entry
  %3 = load i32, i32* %digit.addr, align 4
  %cmp1 = icmp eq i32 %3, 1
  br i1 %cmp1, label %if.then.3, label %if.else.5

if.then.3:                                        ; preds = %if.else
  %4 = load i8*, i8** %result.addr, align 8
  %5 = load i8*, i8** %num.addr, align 8
  %6 = load i32, i32* %size.addr, align 4
  %conv4 = sext i32 %6 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %5, i64 %conv4, i32 1, i1 false)
  br label %if.end.19

if.else.5:                                        ; preds = %if.else
  %7 = load i8*, i8** %num.addr, align 8
  %8 = load i32, i32* %size.addr, align 4
  %idx.ext = sext i32 %8 to i64
  %add.ptr = getelementptr inbounds i8, i8* %7, i64 %idx.ext
  %add.ptr6 = getelementptr inbounds i8, i8* %add.ptr, i64 -1
  store i8* %add.ptr6, i8** %nptr, align 8
  %9 = load i8*, i8** %result.addr, align 8
  %10 = load i32, i32* %size.addr, align 4
  %idx.ext7 = sext i32 %10 to i64
  %add.ptr8 = getelementptr inbounds i8, i8* %9, i64 %idx.ext7
  %add.ptr9 = getelementptr inbounds i8, i8* %add.ptr8, i64 -1
  store i8* %add.ptr9, i8** %rptr, align 8
  store i32 0, i32* %carry, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.else.5
  %11 = load i32, i32* %size.addr, align 4
  %dec = add nsw i32 %11, -1
  store i32 %dec, i32* %size.addr, align 4
  %cmp10 = icmp sgt i32 %11, 0
  br i1 %cmp10, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %12 = load i8*, i8** %nptr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %12, i32 -1
  store i8* %incdec.ptr, i8** %nptr, align 8
  %13 = load i8, i8* %12, align 1
  %conv12 = sext i8 %13 to i32
  %14 = load i32, i32* %digit.addr, align 4
  %mul = mul nsw i32 %conv12, %14
  %15 = load i32, i32* %carry, align 4
  %add = add nsw i32 %mul, %15
  store i32 %add, i32* %value, align 4
  %16 = load i32, i32* %value, align 4
  %rem = srem i32 %16, 10
  %conv13 = trunc i32 %rem to i8
  %17 = load i8*, i8** %rptr, align 8
  %incdec.ptr14 = getelementptr inbounds i8, i8* %17, i32 -1
  store i8* %incdec.ptr14, i8** %rptr, align 8
  store i8 %conv13, i8* %17, align 1
  %18 = load i32, i32* %value, align 4
  %div = sdiv i32 %18, 10
  store i32 %div, i32* %carry, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %19 = load i32, i32* %carry, align 4
  %cmp15 = icmp ne i32 %19, 0
  br i1 %cmp15, label %if.then.17, label %if.end

if.then.17:                                       ; preds = %while.end
  %20 = load i32, i32* %carry, align 4
  %conv18 = trunc i32 %20 to i8
  %21 = load i8*, i8** %rptr, align 8
  store i8 %conv18, i8* %21, align 1
  br label %if.end

if.end:                                           ; preds = %if.then.17, %while.end
  br label %if.end.19

if.end.19:                                        ; preds = %if.end, %if.then.3
  br label %if.end.20

if.end.20:                                        ; preds = %if.end.19, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @bc_modulo(%struct.bc_struct* %num1, %struct.bc_struct* %num2, %struct.bc_struct** %result, i32 %scale) #0 {
entry:
  %retval = alloca i32, align 4
  %num1.addr = alloca %struct.bc_struct*, align 8
  %num2.addr = alloca %struct.bc_struct*, align 8
  %result.addr = alloca %struct.bc_struct**, align 8
  %scale.addr = alloca i32, align 4
  %temp = alloca %struct.bc_struct*, align 8
  %rscale = alloca i32, align 4
  store %struct.bc_struct* %num1, %struct.bc_struct** %num1.addr, align 8
  store %struct.bc_struct* %num2, %struct.bc_struct** %num2.addr, align 8
  store %struct.bc_struct** %result, %struct.bc_struct*** %result.addr, align 8
  store i32 %scale, i32* %scale.addr, align 4
  %0 = load %struct.bc_struct*, %struct.bc_struct** %num2.addr, align 8
  %call = call signext i8 @is_zero(%struct.bc_struct* %0)
  %tobool = icmp ne i8 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.bc_struct*, %struct.bc_struct** %num1.addr, align 8
  %n_scale = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %1, i32 0, i32 2
  %2 = load i32, i32* %n_scale, align 4
  %3 = load %struct.bc_struct*, %struct.bc_struct** %num2.addr, align 8
  %n_scale1 = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %3, i32 0, i32 2
  %4 = load i32, i32* %n_scale1, align 4
  %5 = load i32, i32* %scale.addr, align 4
  %add = add nsw i32 %4, %5
  %cmp = icmp sgt i32 %2, %add
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %6 = load %struct.bc_struct*, %struct.bc_struct** %num1.addr, align 8
  %n_scale2 = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %6, i32 0, i32 2
  %7 = load i32, i32* %n_scale2, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %8 = load %struct.bc_struct*, %struct.bc_struct** %num2.addr, align 8
  %n_scale3 = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %8, i32 0, i32 2
  %9 = load i32, i32* %n_scale3, align 4
  %10 = load i32, i32* %scale.addr, align 4
  %add4 = add nsw i32 %9, %10
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %7, %cond.true ], [ %add4, %cond.false ]
  store i32 %cond, i32* %rscale, align 4
  call void @init_num(%struct.bc_struct** %temp)
  %11 = load %struct.bc_struct*, %struct.bc_struct** %num1.addr, align 8
  %12 = load %struct.bc_struct*, %struct.bc_struct** %num2.addr, align 8
  %13 = load i32, i32* %scale.addr, align 4
  %call5 = call i32 @bc_divide(%struct.bc_struct* %11, %struct.bc_struct* %12, %struct.bc_struct** %temp, i32 %13)
  %14 = load %struct.bc_struct*, %struct.bc_struct** %temp, align 8
  %15 = load %struct.bc_struct*, %struct.bc_struct** %num2.addr, align 8
  %16 = load i32, i32* %rscale, align 4
  call void @bc_multiply(%struct.bc_struct* %14, %struct.bc_struct* %15, %struct.bc_struct** %temp, i32 %16)
  %17 = load %struct.bc_struct*, %struct.bc_struct** %num1.addr, align 8
  %18 = load %struct.bc_struct*, %struct.bc_struct** %temp, align 8
  %19 = load %struct.bc_struct**, %struct.bc_struct*** %result.addr, align 8
  call void @bc_sub(%struct.bc_struct* %17, %struct.bc_struct* %18, %struct.bc_struct** %19)
  call void @free_num(%struct.bc_struct** %temp)
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %cond.end, %if.then
  %20 = load i32, i32* %retval
  ret i32 %20
}

; Function Attrs: nounwind uwtable
define void @bc_raise(%struct.bc_struct* %num1, %struct.bc_struct* %num2, %struct.bc_struct** %result, i32 %scale) #0 {
entry:
  %num1.addr = alloca %struct.bc_struct*, align 8
  %num2.addr = alloca %struct.bc_struct*, align 8
  %result.addr = alloca %struct.bc_struct**, align 8
  %scale.addr = alloca i32, align 4
  %temp = alloca %struct.bc_struct*, align 8
  %power = alloca %struct.bc_struct*, align 8
  %exponent = alloca i64, align 8
  %rscale = alloca i32, align 4
  %neg = alloca i8, align 1
  store %struct.bc_struct* %num1, %struct.bc_struct** %num1.addr, align 8
  store %struct.bc_struct* %num2, %struct.bc_struct** %num2.addr, align 8
  store %struct.bc_struct** %result, %struct.bc_struct*** %result.addr, align 8
  store i32 %scale, i32* %scale.addr, align 4
  %0 = load %struct.bc_struct*, %struct.bc_struct** %num2.addr, align 8
  %n_scale = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %0, i32 0, i32 2
  %1 = load i32, i32* %n_scale, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void (i8*, ...) @rt_warn(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load %struct.bc_struct*, %struct.bc_struct** %num2.addr, align 8
  %call = call i64 @num2long(%struct.bc_struct* %2)
  store i64 %call, i64* %exponent, align 8
  %3 = load i64, i64* %exponent, align 8
  %cmp1 = icmp eq i64 %3, 0
  br i1 %cmp1, label %land.lhs.true, label %if.end.6

land.lhs.true:                                    ; preds = %if.end
  %4 = load %struct.bc_struct*, %struct.bc_struct** %num2.addr, align 8
  %n_len = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %4, i32 0, i32 1
  %5 = load i32, i32* %n_len, align 4
  %cmp2 = icmp sgt i32 %5, 1
  br i1 %cmp2, label %if.then.5, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %6 = load %struct.bc_struct*, %struct.bc_struct** %num2.addr, align 8
  %n_value = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %6, i32 0, i32 4
  %arrayidx = getelementptr inbounds [1024 x i8], [1024 x i8]* %n_value, i32 0, i64 0
  %7 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %7 to i32
  %cmp3 = icmp ne i32 %conv, 0
  br i1 %cmp3, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %lor.lhs.false, %land.lhs.true
  call void (i8*, ...) @rt_error(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i32 0, i32 0))
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.5, %lor.lhs.false, %if.end
  %8 = load i64, i64* %exponent, align 8
  %cmp7 = icmp eq i64 %8, 0
  br i1 %cmp7, label %if.then.9, label %if.end.11

if.then.9:                                        ; preds = %if.end.6
  %9 = load %struct.bc_struct**, %struct.bc_struct*** %result.addr, align 8
  call void @free_num(%struct.bc_struct** %9)
  %10 = load %struct.bc_struct*, %struct.bc_struct** @_one_, align 8
  %call10 = call %struct.bc_struct* @copy_num(%struct.bc_struct* %10)
  %11 = load %struct.bc_struct**, %struct.bc_struct*** %result.addr, align 8
  store %struct.bc_struct* %call10, %struct.bc_struct** %11, align 8
  br label %return

if.end.11:                                        ; preds = %if.end.6
  %12 = load i64, i64* %exponent, align 8
  %cmp12 = icmp slt i64 %12, 0
  br i1 %cmp12, label %if.then.14, label %if.else

if.then.14:                                       ; preds = %if.end.11
  store i8 1, i8* %neg, align 1
  %13 = load i64, i64* %exponent, align 8
  %sub = sub nsw i64 0, %13
  store i64 %sub, i64* %exponent, align 8
  %14 = load i32, i32* %scale.addr, align 4
  store i32 %14, i32* %rscale, align 4
  br label %if.end.41

if.else:                                          ; preds = %if.end.11
  store i8 0, i8* %neg, align 1
  %15 = load %struct.bc_struct*, %struct.bc_struct** %num1.addr, align 8
  %n_scale15 = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %15, i32 0, i32 2
  %16 = load i32, i32* %n_scale15, align 4
  %conv16 = sext i32 %16 to i64
  %17 = load i64, i64* %exponent, align 8
  %mul = mul nsw i64 %conv16, %17
  %18 = load i32, i32* %scale.addr, align 4
  %19 = load %struct.bc_struct*, %struct.bc_struct** %num1.addr, align 8
  %n_scale17 = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %19, i32 0, i32 2
  %20 = load i32, i32* %n_scale17, align 4
  %cmp18 = icmp sgt i32 %18, %20
  br i1 %cmp18, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.else
  %21 = load i32, i32* %scale.addr, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.else
  %22 = load %struct.bc_struct*, %struct.bc_struct** %num1.addr, align 8
  %n_scale20 = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %22, i32 0, i32 2
  %23 = load i32, i32* %n_scale20, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %21, %cond.true ], [ %23, %cond.false ]
  %conv21 = sext i32 %cond to i64
  %cmp22 = icmp sgt i64 %mul, %conv21
  br i1 %cmp22, label %cond.true.24, label %cond.false.34

cond.true.24:                                     ; preds = %cond.end
  %24 = load i32, i32* %scale.addr, align 4
  %25 = load %struct.bc_struct*, %struct.bc_struct** %num1.addr, align 8
  %n_scale25 = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %25, i32 0, i32 2
  %26 = load i32, i32* %n_scale25, align 4
  %cmp26 = icmp sgt i32 %24, %26
  br i1 %cmp26, label %cond.true.28, label %cond.false.29

cond.true.28:                                     ; preds = %cond.true.24
  %27 = load i32, i32* %scale.addr, align 4
  br label %cond.end.31

cond.false.29:                                    ; preds = %cond.true.24
  %28 = load %struct.bc_struct*, %struct.bc_struct** %num1.addr, align 8
  %n_scale30 = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %28, i32 0, i32 2
  %29 = load i32, i32* %n_scale30, align 4
  br label %cond.end.31

cond.end.31:                                      ; preds = %cond.false.29, %cond.true.28
  %cond32 = phi i32 [ %27, %cond.true.28 ], [ %29, %cond.false.29 ]
  %conv33 = sext i32 %cond32 to i64
  br label %cond.end.38

cond.false.34:                                    ; preds = %cond.end
  %30 = load %struct.bc_struct*, %struct.bc_struct** %num1.addr, align 8
  %n_scale35 = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %30, i32 0, i32 2
  %31 = load i32, i32* %n_scale35, align 4
  %conv36 = sext i32 %31 to i64
  %32 = load i64, i64* %exponent, align 8
  %mul37 = mul nsw i64 %conv36, %32
  br label %cond.end.38

cond.end.38:                                      ; preds = %cond.false.34, %cond.end.31
  %cond39 = phi i64 [ %conv33, %cond.end.31 ], [ %mul37, %cond.false.34 ]
  %conv40 = trunc i64 %cond39 to i32
  store i32 %conv40, i32* %rscale, align 4
  br label %if.end.41

if.end.41:                                        ; preds = %cond.end.38, %if.then.14
  %33 = load %struct.bc_struct*, %struct.bc_struct** @_one_, align 8
  %call42 = call %struct.bc_struct* @copy_num(%struct.bc_struct* %33)
  store %struct.bc_struct* %call42, %struct.bc_struct** %temp, align 8
  %34 = load %struct.bc_struct*, %struct.bc_struct** %num1.addr, align 8
  %call43 = call %struct.bc_struct* @copy_num(%struct.bc_struct* %34)
  store %struct.bc_struct* %call43, %struct.bc_struct** %power, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.47, %if.end.41
  %35 = load i64, i64* %exponent, align 8
  %cmp44 = icmp ne i64 %35, 0
  br i1 %cmp44, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %36 = load i64, i64* %exponent, align 8
  %and = and i64 %36, 1
  %tobool = icmp ne i64 %and, 0
  br i1 %tobool, label %if.then.46, label %if.end.47

if.then.46:                                       ; preds = %while.body
  %37 = load %struct.bc_struct*, %struct.bc_struct** %temp, align 8
  %38 = load %struct.bc_struct*, %struct.bc_struct** %power, align 8
  %39 = load i32, i32* %rscale, align 4
  call void @bc_multiply(%struct.bc_struct* %37, %struct.bc_struct* %38, %struct.bc_struct** %temp, i32 %39)
  br label %if.end.47

if.end.47:                                        ; preds = %if.then.46, %while.body
  %40 = load %struct.bc_struct*, %struct.bc_struct** %power, align 8
  %41 = load %struct.bc_struct*, %struct.bc_struct** %power, align 8
  %42 = load i32, i32* %rscale, align 4
  call void @bc_multiply(%struct.bc_struct* %40, %struct.bc_struct* %41, %struct.bc_struct** %power, i32 %42)
  %43 = load i64, i64* %exponent, align 8
  %shr = ashr i64 %43, 1
  store i64 %shr, i64* %exponent, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %44 = load i8, i8* %neg, align 1
  %tobool48 = icmp ne i8 %44, 0
  br i1 %tobool48, label %if.then.49, label %if.else.51

if.then.49:                                       ; preds = %while.end
  %45 = load %struct.bc_struct*, %struct.bc_struct** @_one_, align 8
  %46 = load %struct.bc_struct*, %struct.bc_struct** %temp, align 8
  %47 = load %struct.bc_struct**, %struct.bc_struct*** %result.addr, align 8
  %48 = load i32, i32* %rscale, align 4
  %call50 = call i32 @bc_divide(%struct.bc_struct* %45, %struct.bc_struct* %46, %struct.bc_struct** %47, i32 %48)
  call void @free_num(%struct.bc_struct** %temp)
  br label %if.end.52

if.else.51:                                       ; preds = %while.end
  %49 = load %struct.bc_struct**, %struct.bc_struct*** %result.addr, align 8
  call void @free_num(%struct.bc_struct** %49)
  %50 = load %struct.bc_struct*, %struct.bc_struct** %temp, align 8
  %51 = load %struct.bc_struct**, %struct.bc_struct*** %result.addr, align 8
  store %struct.bc_struct* %50, %struct.bc_struct** %51, align 8
  br label %if.end.52

if.end.52:                                        ; preds = %if.else.51, %if.then.49
  call void @free_num(%struct.bc_struct** %power)
  br label %return

return:                                           ; preds = %if.end.52, %if.then.9
  ret void
}

declare void @rt_warn(i8*, ...) #3

declare void @rt_error(i8*, ...) #3

; Function Attrs: nounwind uwtable
define i32 @bc_sqrt(%struct.bc_struct** %num, i32 %scale) #0 {
entry:
  %retval = alloca i32, align 4
  %num.addr = alloca %struct.bc_struct**, align 8
  %scale.addr = alloca i32, align 4
  %rscale = alloca i32, align 4
  %cmp_res = alloca i32, align 4
  %done = alloca i32, align 4
  %cscale = alloca i32, align 4
  %guess = alloca %struct.bc_struct*, align 8
  %guess1 = alloca %struct.bc_struct*, align 8
  %point5 = alloca %struct.bc_struct*, align 8
  store %struct.bc_struct** %num, %struct.bc_struct*** %num.addr, align 8
  store i32 %scale, i32* %scale.addr, align 4
  %0 = load %struct.bc_struct**, %struct.bc_struct*** %num.addr, align 8
  %1 = load %struct.bc_struct*, %struct.bc_struct** %0, align 8
  %2 = load %struct.bc_struct*, %struct.bc_struct** @_zero_, align 8
  %call = call i32 @bc_compare(%struct.bc_struct* %1, %struct.bc_struct* %2)
  store i32 %call, i32* %cmp_res, align 4
  %3 = load i32, i32* %cmp_res, align 4
  %cmp = icmp slt i32 %3, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.else:                                          ; preds = %entry
  %4 = load i32, i32* %cmp_res, align 4
  %cmp1 = icmp eq i32 %4, 0
  br i1 %cmp1, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.else
  %5 = load %struct.bc_struct**, %struct.bc_struct*** %num.addr, align 8
  call void @free_num(%struct.bc_struct** %5)
  %6 = load %struct.bc_struct*, %struct.bc_struct** @_zero_, align 8
  %call3 = call %struct.bc_struct* @copy_num(%struct.bc_struct* %6)
  %7 = load %struct.bc_struct**, %struct.bc_struct*** %num.addr, align 8
  store %struct.bc_struct* %call3, %struct.bc_struct** %7, align 8
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %if.else
  br label %if.end.4

if.end.4:                                         ; preds = %if.end
  %8 = load %struct.bc_struct**, %struct.bc_struct*** %num.addr, align 8
  %9 = load %struct.bc_struct*, %struct.bc_struct** %8, align 8
  %10 = load %struct.bc_struct*, %struct.bc_struct** @_one_, align 8
  %call5 = call i32 @bc_compare(%struct.bc_struct* %9, %struct.bc_struct* %10)
  store i32 %call5, i32* %cmp_res, align 4
  %11 = load i32, i32* %cmp_res, align 4
  %cmp6 = icmp eq i32 %11, 0
  br i1 %cmp6, label %if.then.7, label %if.end.9

if.then.7:                                        ; preds = %if.end.4
  %12 = load %struct.bc_struct**, %struct.bc_struct*** %num.addr, align 8
  call void @free_num(%struct.bc_struct** %12)
  %13 = load %struct.bc_struct*, %struct.bc_struct** @_one_, align 8
  %call8 = call %struct.bc_struct* @copy_num(%struct.bc_struct* %13)
  %14 = load %struct.bc_struct**, %struct.bc_struct*** %num.addr, align 8
  store %struct.bc_struct* %call8, %struct.bc_struct** %14, align 8
  store i32 1, i32* %retval
  br label %return

if.end.9:                                         ; preds = %if.end.4
  %15 = load i32, i32* %scale.addr, align 4
  %16 = load %struct.bc_struct**, %struct.bc_struct*** %num.addr, align 8
  %17 = load %struct.bc_struct*, %struct.bc_struct** %16, align 8
  %n_scale = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %17, i32 0, i32 2
  %18 = load i32, i32* %n_scale, align 4
  %cmp10 = icmp sgt i32 %15, %18
  br i1 %cmp10, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.9
  %19 = load i32, i32* %scale.addr, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.end.9
  %20 = load %struct.bc_struct**, %struct.bc_struct*** %num.addr, align 8
  %21 = load %struct.bc_struct*, %struct.bc_struct** %20, align 8
  %n_scale11 = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %21, i32 0, i32 2
  %22 = load i32, i32* %n_scale11, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %19, %cond.true ], [ %22, %cond.false ]
  store i32 %cond, i32* %rscale, align 4
  %23 = load i32, i32* %rscale, align 4
  %add = add nsw i32 %23, 2
  store i32 %add, i32* %cscale, align 4
  call void @init_num(%struct.bc_struct** %guess)
  call void @init_num(%struct.bc_struct** %guess1)
  %call12 = call %struct.bc_struct* @new_num(i32 1, i32 1)
  store %struct.bc_struct* %call12, %struct.bc_struct** %point5, align 8
  %24 = load %struct.bc_struct*, %struct.bc_struct** %point5, align 8
  %n_value = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %24, i32 0, i32 4
  %arrayidx = getelementptr inbounds [1024 x i8], [1024 x i8]* %n_value, i32 0, i64 1
  store i8 5, i8* %arrayidx, align 1
  %25 = load i32, i32* %cmp_res, align 4
  %cmp13 = icmp slt i32 %25, 0
  br i1 %cmp13, label %if.then.14, label %if.else.16

if.then.14:                                       ; preds = %cond.end
  %26 = load %struct.bc_struct*, %struct.bc_struct** @_one_, align 8
  %call15 = call %struct.bc_struct* @copy_num(%struct.bc_struct* %26)
  store %struct.bc_struct* %call15, %struct.bc_struct** %guess, align 8
  br label %if.end.18

if.else.16:                                       ; preds = %cond.end
  call void @int2num(%struct.bc_struct** %guess, i32 10)
  %27 = load %struct.bc_struct**, %struct.bc_struct*** %num.addr, align 8
  %28 = load %struct.bc_struct*, %struct.bc_struct** %27, align 8
  %n_len = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %28, i32 0, i32 1
  %29 = load i32, i32* %n_len, align 4
  call void @int2num(%struct.bc_struct** %guess1, i32 %29)
  %30 = load %struct.bc_struct*, %struct.bc_struct** %guess1, align 8
  %31 = load %struct.bc_struct*, %struct.bc_struct** %point5, align 8
  %32 = load i32, i32* %rscale, align 4
  call void @bc_multiply(%struct.bc_struct* %30, %struct.bc_struct* %31, %struct.bc_struct** %guess1, i32 %32)
  %33 = load %struct.bc_struct*, %struct.bc_struct** %guess1, align 8
  %n_scale17 = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %33, i32 0, i32 2
  store i32 0, i32* %n_scale17, align 4
  %34 = load %struct.bc_struct*, %struct.bc_struct** %guess, align 8
  %35 = load %struct.bc_struct*, %struct.bc_struct** %guess1, align 8
  %36 = load i32, i32* %rscale, align 4
  call void @bc_raise(%struct.bc_struct* %34, %struct.bc_struct* %35, %struct.bc_struct** %guess, i32 %36)
  call void @free_num(%struct.bc_struct** %guess1)
  br label %if.end.18

if.end.18:                                        ; preds = %if.else.16, %if.then.14
  store i32 0, i32* %done, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end.24, %if.end.18
  %37 = load i32, i32* %done, align 4
  %tobool = icmp ne i32 %37, 0
  %lnot = xor i1 %tobool, true
  br i1 %lnot, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  call void @free_num(%struct.bc_struct** %guess1)
  %38 = load %struct.bc_struct*, %struct.bc_struct** %guess, align 8
  %call19 = call %struct.bc_struct* @copy_num(%struct.bc_struct* %38)
  store %struct.bc_struct* %call19, %struct.bc_struct** %guess1, align 8
  %39 = load %struct.bc_struct**, %struct.bc_struct*** %num.addr, align 8
  %40 = load %struct.bc_struct*, %struct.bc_struct** %39, align 8
  %41 = load %struct.bc_struct*, %struct.bc_struct** %guess, align 8
  %42 = load i32, i32* %cscale, align 4
  %call20 = call i32 @bc_divide(%struct.bc_struct* %40, %struct.bc_struct* %41, %struct.bc_struct** %guess, i32 %42)
  %43 = load %struct.bc_struct*, %struct.bc_struct** %guess, align 8
  %44 = load %struct.bc_struct*, %struct.bc_struct** %guess1, align 8
  call void @bc_add(%struct.bc_struct* %43, %struct.bc_struct* %44, %struct.bc_struct** %guess)
  %45 = load %struct.bc_struct*, %struct.bc_struct** %guess, align 8
  %46 = load %struct.bc_struct*, %struct.bc_struct** %point5, align 8
  %47 = load i32, i32* %cscale, align 4
  call void @bc_multiply(%struct.bc_struct* %45, %struct.bc_struct* %46, %struct.bc_struct** %guess, i32 %47)
  %48 = load %struct.bc_struct*, %struct.bc_struct** %guess, align 8
  %49 = load %struct.bc_struct*, %struct.bc_struct** %guess1, align 8
  %call21 = call i32 @_do_compare(%struct.bc_struct* %48, %struct.bc_struct* %49, i32 0, i32 1)
  store i32 %call21, i32* %cmp_res, align 4
  %50 = load i32, i32* %cmp_res, align 4
  %cmp22 = icmp eq i32 %50, 0
  br i1 %cmp22, label %if.then.23, label %if.end.24

if.then.23:                                       ; preds = %while.body
  store i32 1, i32* %done, align 4
  br label %if.end.24

if.end.24:                                        ; preds = %if.then.23, %while.body
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %51 = load %struct.bc_struct**, %struct.bc_struct*** %num.addr, align 8
  call void @free_num(%struct.bc_struct** %51)
  %52 = load %struct.bc_struct*, %struct.bc_struct** %guess, align 8
  %53 = load %struct.bc_struct*, %struct.bc_struct** @_one_, align 8
  %54 = load %struct.bc_struct**, %struct.bc_struct*** %num.addr, align 8
  %55 = load i32, i32* %rscale, align 4
  %call25 = call i32 @bc_divide(%struct.bc_struct* %52, %struct.bc_struct* %53, %struct.bc_struct** %54, i32 %55)
  call void @free_num(%struct.bc_struct** %guess)
  call void @free_num(%struct.bc_struct** %guess1)
  call void @free_num(%struct.bc_struct** %point5)
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %while.end, %if.then.7, %if.then.2, %if.then
  %56 = load i32, i32* %retval
  ret i32 %56
}

; Function Attrs: nounwind uwtable
define void @out_long(i64 %val, i32 %size, i32 %space, void (i32)* %out_char) #0 {
entry:
  %val.addr = alloca i64, align 8
  %size.addr = alloca i32, align 4
  %space.addr = alloca i32, align 4
  %out_char.addr = alloca void (i32)*, align 8
  %digits = alloca [40 x i8], align 16
  %len = alloca i32, align 4
  %ix = alloca i32, align 4
  store i64 %val, i64* %val.addr, align 8
  store i32 %size, i32* %size.addr, align 4
  store i32 %space, i32* %space.addr, align 4
  store void (i32)* %out_char, void (i32)** %out_char.addr, align 8
  %0 = load i32, i32* %space.addr, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load void (i32)*, void (i32)** %out_char.addr, align 8
  call void %1(i32 32)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %arraydecay = getelementptr inbounds [40 x i8], [40 x i8]* %digits, i32 0, i32 0
  %2 = load i64, i64* %val.addr, align 8
  %call = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0), i64 %2) #2
  %arraydecay1 = getelementptr inbounds [40 x i8], [40 x i8]* %digits, i32 0, i32 0
  %call2 = call i64 @strlen(i8* %arraydecay1) #5
  %conv = trunc i64 %call2 to i32
  store i32 %conv, i32* %len, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %3 = load i32, i32* %size.addr, align 4
  %4 = load i32, i32* %len, align 4
  %cmp = icmp sgt i32 %3, %4
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %5 = load void (i32)*, void (i32)** %out_char.addr, align 8
  call void %5(i32 48)
  %6 = load i32, i32* %size.addr, align 4
  %dec = add nsw i32 %6, -1
  store i32 %dec, i32* %size.addr, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store i32 0, i32* %ix, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.end
  %7 = load i32, i32* %ix, align 4
  %8 = load i32, i32* %len, align 4
  %cmp4 = icmp slt i32 %7, %8
  br i1 %cmp4, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load void (i32)*, void (i32)** %out_char.addr, align 8
  %10 = load i32, i32* %ix, align 4
  %idxprom = sext i32 %10 to i64
  %arrayidx = getelementptr inbounds [40 x i8], [40 x i8]* %digits, i32 0, i64 %idxprom
  %11 = load i8, i8* %arrayidx, align 1
  %conv6 = sext i8 %11 to i32
  call void %9(i32 %conv6)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %12 = load i32, i32* %ix, align 4
  %inc = add nsw i32 %12, 1
  store i32 %inc, i32* %ix, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind
declare i32 @sprintf(i8*, i8*, ...) #1

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #4

; Function Attrs: nounwind uwtable
define void @out_num(%struct.bc_struct* %num, i32 %o_base, void (i32)* %out_char) #0 {
entry:
  %num.addr = alloca %struct.bc_struct*, align 8
  %o_base.addr = alloca i32, align 4
  %out_char.addr = alloca void (i32)*, align 8
  %nptr = alloca i8*, align 8
  %index = alloca i32, align 4
  %fdigit = alloca i32, align 4
  %pre_space = alloca i32, align 4
  %digits = alloca %struct.stk_rec*, align 8
  %temp = alloca %struct.stk_rec*, align 8
  %int_part = alloca %struct.bc_struct*, align 8
  %frac_part = alloca %struct.bc_struct*, align 8
  %base = alloca %struct.bc_struct*, align 8
  %cur_dig = alloca %struct.bc_struct*, align 8
  %t_num = alloca %struct.bc_struct*, align 8
  %max_o_digit = alloca %struct.bc_struct*, align 8
  store %struct.bc_struct* %num, %struct.bc_struct** %num.addr, align 8
  store i32 %o_base, i32* %o_base.addr, align 4
  store void (i32)* %out_char, void (i32)** %out_char.addr, align 8
  %0 = load %struct.bc_struct*, %struct.bc_struct** %num.addr, align 8
  %n_sign = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %0, i32 0, i32 0
  %1 = load i32, i32* %n_sign, align 4
  %cmp = icmp eq i32 %1, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load void (i32)*, void (i32)** %out_char.addr, align 8
  call void %2(i32 45)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load %struct.bc_struct*, %struct.bc_struct** %num.addr, align 8
  %call = call signext i8 @is_zero(%struct.bc_struct* %3)
  %tobool = icmp ne i8 %call, 0
  br i1 %tobool, label %if.then.1, label %if.else

if.then.1:                                        ; preds = %if.end
  %4 = load void (i32)*, void (i32)** %out_char.addr, align 8
  call void %4(i32 48)
  br label %if.end.85

if.else:                                          ; preds = %if.end
  %5 = load i32, i32* %o_base.addr, align 4
  %cmp2 = icmp eq i32 %5, 10
  br i1 %cmp2, label %if.then.3, label %if.else.29

if.then.3:                                        ; preds = %if.else
  %6 = load %struct.bc_struct*, %struct.bc_struct** %num.addr, align 8
  %n_value = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %6, i32 0, i32 4
  %arrayidx = getelementptr inbounds [1024 x i8], [1024 x i8]* %n_value, i32 0, i64 0
  store i8* %arrayidx, i8** %nptr, align 8
  %7 = load %struct.bc_struct*, %struct.bc_struct** %num.addr, align 8
  %n_len = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %7, i32 0, i32 1
  %8 = load i32, i32* %n_len, align 4
  %cmp4 = icmp sgt i32 %8, 1
  br i1 %cmp4, label %if.then.7, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then.3
  %9 = load i8*, i8** %nptr, align 8
  %10 = load i8, i8* %9, align 1
  %conv = sext i8 %10 to i32
  %cmp5 = icmp ne i32 %conv, 0
  br i1 %cmp5, label %if.then.7, label %if.else.12

if.then.7:                                        ; preds = %lor.lhs.false, %if.then.3
  %11 = load %struct.bc_struct*, %struct.bc_struct** %num.addr, align 8
  %n_len8 = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %11, i32 0, i32 1
  %12 = load i32, i32* %n_len8, align 4
  store i32 %12, i32* %index, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.7
  %13 = load i32, i32* %index, align 4
  %cmp9 = icmp sgt i32 %13, 0
  br i1 %cmp9, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %14 = load void (i32)*, void (i32)** %out_char.addr, align 8
  %15 = load i8*, i8** %nptr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %15, i32 1
  store i8* %incdec.ptr, i8** %nptr, align 8
  %16 = load i8, i8* %15, align 1
  %conv11 = sext i8 %16 to i32
  %add = add nsw i32 %conv11, 48
  call void %14(i32 %add)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %17 = load i32, i32* %index, align 4
  %dec = add nsw i32 %17, -1
  store i32 %dec, i32* %index, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.14

if.else.12:                                       ; preds = %lor.lhs.false
  %18 = load i8*, i8** %nptr, align 8
  %incdec.ptr13 = getelementptr inbounds i8, i8* %18, i32 1
  store i8* %incdec.ptr13, i8** %nptr, align 8
  br label %if.end.14

if.end.14:                                        ; preds = %if.else.12, %for.end
  %19 = load %struct.bc_struct*, %struct.bc_struct** %num.addr, align 8
  %n_scale = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %19, i32 0, i32 2
  %20 = load i32, i32* %n_scale, align 4
  %cmp15 = icmp sgt i32 %20, 0
  br i1 %cmp15, label %if.then.17, label %if.end.28

if.then.17:                                       ; preds = %if.end.14
  %21 = load void (i32)*, void (i32)** %out_char.addr, align 8
  call void %21(i32 46)
  store i32 0, i32* %index, align 4
  br label %for.cond.18

for.cond.18:                                      ; preds = %for.inc.26, %if.then.17
  %22 = load i32, i32* %index, align 4
  %23 = load %struct.bc_struct*, %struct.bc_struct** %num.addr, align 8
  %n_scale19 = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %23, i32 0, i32 2
  %24 = load i32, i32* %n_scale19, align 4
  %cmp20 = icmp slt i32 %22, %24
  br i1 %cmp20, label %for.body.22, label %for.end.27

for.body.22:                                      ; preds = %for.cond.18
  %25 = load void (i32)*, void (i32)** %out_char.addr, align 8
  %26 = load i8*, i8** %nptr, align 8
  %incdec.ptr23 = getelementptr inbounds i8, i8* %26, i32 1
  store i8* %incdec.ptr23, i8** %nptr, align 8
  %27 = load i8, i8* %26, align 1
  %conv24 = sext i8 %27 to i32
  %add25 = add nsw i32 %conv24, 48
  call void %25(i32 %add25)
  br label %for.inc.26

for.inc.26:                                       ; preds = %for.body.22
  %28 = load i32, i32* %index, align 4
  %inc = add nsw i32 %28, 1
  store i32 %inc, i32* %index, align 4
  br label %for.cond.18

for.end.27:                                       ; preds = %for.cond.18
  br label %if.end.28

if.end.28:                                        ; preds = %for.end.27, %if.end.14
  br label %if.end.84

if.else.29:                                       ; preds = %if.else
  store %struct.stk_rec* null, %struct.stk_rec** %digits, align 8
  call void @init_num(%struct.bc_struct** %int_part)
  %29 = load %struct.bc_struct*, %struct.bc_struct** %num.addr, align 8
  %30 = load %struct.bc_struct*, %struct.bc_struct** @_one_, align 8
  %call30 = call i32 @bc_divide(%struct.bc_struct* %29, %struct.bc_struct* %30, %struct.bc_struct** %int_part, i32 0)
  call void @init_num(%struct.bc_struct** %frac_part)
  call void @init_num(%struct.bc_struct** %cur_dig)
  call void @init_num(%struct.bc_struct** %base)
  %31 = load %struct.bc_struct*, %struct.bc_struct** %num.addr, align 8
  %32 = load %struct.bc_struct*, %struct.bc_struct** %int_part, align 8
  call void @bc_sub(%struct.bc_struct* %31, %struct.bc_struct* %32, %struct.bc_struct** %frac_part)
  %33 = load i32, i32* %o_base.addr, align 4
  call void @int2num(%struct.bc_struct** %base, i32 %33)
  call void @init_num(%struct.bc_struct** %max_o_digit)
  %34 = load i32, i32* %o_base.addr, align 4
  %sub = sub nsw i32 %34, 1
  call void @int2num(%struct.bc_struct** %max_o_digit, i32 %sub)
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.else.29
  %35 = load %struct.bc_struct*, %struct.bc_struct** %int_part, align 8
  %call31 = call signext i8 @is_zero(%struct.bc_struct* %35)
  %tobool32 = icmp ne i8 %call31, 0
  %lnot = xor i1 %tobool32, true
  br i1 %lnot, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %36 = load %struct.bc_struct*, %struct.bc_struct** %int_part, align 8
  %37 = load %struct.bc_struct*, %struct.bc_struct** %base, align 8
  %call33 = call i32 @bc_modulo(%struct.bc_struct* %36, %struct.bc_struct* %37, %struct.bc_struct** %cur_dig, i32 0)
  %call34 = call noalias i8* @malloc(i64 16) #2
  %38 = bitcast i8* %call34 to %struct.stk_rec*
  store %struct.stk_rec* %38, %struct.stk_rec** %temp, align 8
  %39 = load %struct.bc_struct*, %struct.bc_struct** %cur_dig, align 8
  %call35 = call i64 @num2long(%struct.bc_struct* %39)
  %40 = load %struct.stk_rec*, %struct.stk_rec** %temp, align 8
  %digit = getelementptr inbounds %struct.stk_rec, %struct.stk_rec* %40, i32 0, i32 0
  store i64 %call35, i64* %digit, align 8
  %41 = load %struct.stk_rec*, %struct.stk_rec** %digits, align 8
  %42 = load %struct.stk_rec*, %struct.stk_rec** %temp, align 8
  %next = getelementptr inbounds %struct.stk_rec, %struct.stk_rec* %42, i32 0, i32 1
  store %struct.stk_rec* %41, %struct.stk_rec** %next, align 8
  %43 = load %struct.stk_rec*, %struct.stk_rec** %temp, align 8
  store %struct.stk_rec* %43, %struct.stk_rec** %digits, align 8
  %44 = load %struct.bc_struct*, %struct.bc_struct** %int_part, align 8
  %45 = load %struct.bc_struct*, %struct.bc_struct** %base, align 8
  %call36 = call i32 @bc_divide(%struct.bc_struct* %44, %struct.bc_struct* %45, %struct.bc_struct** %int_part, i32 0)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %46 = load %struct.stk_rec*, %struct.stk_rec** %digits, align 8
  %cmp37 = icmp ne %struct.stk_rec* %46, null
  br i1 %cmp37, label %if.then.39, label %if.end.57

if.then.39:                                       ; preds = %while.end
  br label %while.cond.40

while.cond.40:                                    ; preds = %if.end.55, %if.then.39
  %47 = load %struct.stk_rec*, %struct.stk_rec** %digits, align 8
  %cmp41 = icmp ne %struct.stk_rec* %47, null
  br i1 %cmp41, label %while.body.43, label %while.end.56

while.body.43:                                    ; preds = %while.cond.40
  %48 = load %struct.stk_rec*, %struct.stk_rec** %digits, align 8
  store %struct.stk_rec* %48, %struct.stk_rec** %temp, align 8
  %49 = load %struct.stk_rec*, %struct.stk_rec** %digits, align 8
  %next44 = getelementptr inbounds %struct.stk_rec, %struct.stk_rec* %49, i32 0, i32 1
  %50 = load %struct.stk_rec*, %struct.stk_rec** %next44, align 8
  store %struct.stk_rec* %50, %struct.stk_rec** %digits, align 8
  %51 = load i32, i32* %o_base.addr, align 4
  %cmp45 = icmp sle i32 %51, 16
  br i1 %cmp45, label %if.then.47, label %if.else.52

if.then.47:                                       ; preds = %while.body.43
  %52 = load void (i32)*, void (i32)** %out_char.addr, align 8
  %53 = load %struct.stk_rec*, %struct.stk_rec** %temp, align 8
  %digit48 = getelementptr inbounds %struct.stk_rec, %struct.stk_rec* %53, i32 0, i32 0
  %54 = load i64, i64* %digit48, align 8
  %conv49 = trunc i64 %54 to i32
  %idxprom = sext i32 %conv49 to i64
  %arrayidx50 = getelementptr inbounds [17 x i8], [17 x i8]* @ref_str, i32 0, i64 %idxprom
  %55 = load i8, i8* %arrayidx50, align 1
  %conv51 = sext i8 %55 to i32
  call void %52(i32 %conv51)
  br label %if.end.55

if.else.52:                                       ; preds = %while.body.43
  %56 = load %struct.stk_rec*, %struct.stk_rec** %temp, align 8
  %digit53 = getelementptr inbounds %struct.stk_rec, %struct.stk_rec* %56, i32 0, i32 0
  %57 = load i64, i64* %digit53, align 8
  %58 = load %struct.bc_struct*, %struct.bc_struct** %max_o_digit, align 8
  %n_len54 = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %58, i32 0, i32 1
  %59 = load i32, i32* %n_len54, align 4
  %60 = load void (i32)*, void (i32)** %out_char.addr, align 8
  call void @out_long(i64 %57, i32 %59, i32 1, void (i32)* %60)
  br label %if.end.55

if.end.55:                                        ; preds = %if.else.52, %if.then.47
  %61 = load %struct.stk_rec*, %struct.stk_rec** %temp, align 8
  %62 = bitcast %struct.stk_rec* %61 to i8*
  call void @free(i8* %62) #2
  br label %while.cond.40

while.end.56:                                     ; preds = %while.cond.40
  br label %if.end.57

if.end.57:                                        ; preds = %while.end.56, %while.end
  %63 = load %struct.bc_struct*, %struct.bc_struct** %num.addr, align 8
  %n_scale58 = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %63, i32 0, i32 2
  %64 = load i32, i32* %n_scale58, align 4
  %cmp59 = icmp sgt i32 %64, 0
  br i1 %cmp59, label %if.then.61, label %if.end.83

if.then.61:                                       ; preds = %if.end.57
  %65 = load void (i32)*, void (i32)** %out_char.addr, align 8
  call void %65(i32 46)
  store i32 0, i32* %pre_space, align 4
  %66 = load %struct.bc_struct*, %struct.bc_struct** @_one_, align 8
  %call62 = call %struct.bc_struct* @copy_num(%struct.bc_struct* %66)
  store %struct.bc_struct* %call62, %struct.bc_struct** %t_num, align 8
  br label %while.cond.63

while.cond.63:                                    ; preds = %if.end.81, %if.then.61
  %67 = load %struct.bc_struct*, %struct.bc_struct** %t_num, align 8
  %n_len64 = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %67, i32 0, i32 1
  %68 = load i32, i32* %n_len64, align 4
  %69 = load %struct.bc_struct*, %struct.bc_struct** %num.addr, align 8
  %n_scale65 = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %69, i32 0, i32 2
  %70 = load i32, i32* %n_scale65, align 4
  %cmp66 = icmp sle i32 %68, %70
  br i1 %cmp66, label %while.body.68, label %while.end.82

while.body.68:                                    ; preds = %while.cond.63
  %71 = load %struct.bc_struct*, %struct.bc_struct** %frac_part, align 8
  %72 = load %struct.bc_struct*, %struct.bc_struct** %base, align 8
  %73 = load %struct.bc_struct*, %struct.bc_struct** %num.addr, align 8
  %n_scale69 = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %73, i32 0, i32 2
  %74 = load i32, i32* %n_scale69, align 4
  call void @bc_multiply(%struct.bc_struct* %71, %struct.bc_struct* %72, %struct.bc_struct** %frac_part, i32 %74)
  %75 = load %struct.bc_struct*, %struct.bc_struct** %frac_part, align 8
  %call70 = call i64 @num2long(%struct.bc_struct* %75)
  %conv71 = trunc i64 %call70 to i32
  store i32 %conv71, i32* %fdigit, align 4
  %76 = load i32, i32* %fdigit, align 4
  call void @int2num(%struct.bc_struct** %int_part, i32 %76)
  %77 = load %struct.bc_struct*, %struct.bc_struct** %frac_part, align 8
  %78 = load %struct.bc_struct*, %struct.bc_struct** %int_part, align 8
  call void @bc_sub(%struct.bc_struct* %77, %struct.bc_struct* %78, %struct.bc_struct** %frac_part)
  %79 = load i32, i32* %o_base.addr, align 4
  %cmp72 = icmp sle i32 %79, 16
  br i1 %cmp72, label %if.then.74, label %if.else.78

if.then.74:                                       ; preds = %while.body.68
  %80 = load void (i32)*, void (i32)** %out_char.addr, align 8
  %81 = load i32, i32* %fdigit, align 4
  %idxprom75 = sext i32 %81 to i64
  %arrayidx76 = getelementptr inbounds [17 x i8], [17 x i8]* @ref_str, i32 0, i64 %idxprom75
  %82 = load i8, i8* %arrayidx76, align 1
  %conv77 = sext i8 %82 to i32
  call void %80(i32 %conv77)
  br label %if.end.81

if.else.78:                                       ; preds = %while.body.68
  %83 = load i32, i32* %fdigit, align 4
  %conv79 = sext i32 %83 to i64
  %84 = load %struct.bc_struct*, %struct.bc_struct** %max_o_digit, align 8
  %n_len80 = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %84, i32 0, i32 1
  %85 = load i32, i32* %n_len80, align 4
  %86 = load i32, i32* %pre_space, align 4
  %87 = load void (i32)*, void (i32)** %out_char.addr, align 8
  call void @out_long(i64 %conv79, i32 %85, i32 %86, void (i32)* %87)
  store i32 1, i32* %pre_space, align 4
  br label %if.end.81

if.end.81:                                        ; preds = %if.else.78, %if.then.74
  %88 = load %struct.bc_struct*, %struct.bc_struct** %t_num, align 8
  %89 = load %struct.bc_struct*, %struct.bc_struct** %base, align 8
  call void @bc_multiply(%struct.bc_struct* %88, %struct.bc_struct* %89, %struct.bc_struct** %t_num, i32 0)
  br label %while.cond.63

while.end.82:                                     ; preds = %while.cond.63
  br label %if.end.83

if.end.83:                                        ; preds = %while.end.82, %if.end.57
  call void @free_num(%struct.bc_struct** %int_part)
  call void @free_num(%struct.bc_struct** %frac_part)
  call void @free_num(%struct.bc_struct** %base)
  call void @free_num(%struct.bc_struct** %cur_dig)
  br label %if.end.84

if.end.84:                                        ; preds = %if.end.83, %if.end.28
  br label %if.end.85

if.end.85:                                        ; preds = %if.end.84, %if.then.1
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
