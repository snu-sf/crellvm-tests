; ModuleID = './lib/xstrrpl.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.__va_list_tag = type { i32, i32, i8*, i8* }

; Function Attrs: nounwind uwtable
define i8* @xstrrpl(i8* %string, [2 x i8*]* %subst) #0 {
entry:
  %string.addr = alloca i8*, align 8
  %subst.addr = alloca [2 x i8*]*, align 8
  %res = alloca i8*, align 8
  %cp = alloca i8*, align 8
  %i = alloca i32, align 4
  %max = alloca i64, align 8
  store i8* %string, i8** %string.addr, align 8
  store [2 x i8*]* %subst, [2 x i8*]** %subst.addr, align 8
  store i64 0, i64* %max, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %idxprom = sext i32 %0 to i64
  %1 = load [2 x i8*]*, [2 x i8*]** %subst.addr, align 8
  %arrayidx = getelementptr inbounds [2 x i8*], [2 x i8*]* %1, i64 %idxprom
  %arrayidx1 = getelementptr inbounds [2 x i8*], [2 x i8*]* %arrayidx, i32 0, i64 0
  %2 = load i8*, i8** %arrayidx1, align 8
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i64, i64* %max, align 8
  %4 = load i32, i32* %i, align 4
  %idxprom2 = sext i32 %4 to i64
  %5 = load [2 x i8*]*, [2 x i8*]** %subst.addr, align 8
  %arrayidx3 = getelementptr inbounds [2 x i8*], [2 x i8*]* %5, i64 %idxprom2
  %arrayidx4 = getelementptr inbounds [2 x i8*], [2 x i8*]* %arrayidx3, i32 0, i64 1
  %6 = load i8*, i8** %arrayidx4, align 8
  %call = call i64 @strlen(i8* %6) #5
  %cmp = icmp ugt i64 %3, %call
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  %7 = load i64, i64* %max, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.body
  %8 = load i32, i32* %i, align 4
  %idxprom5 = sext i32 %8 to i64
  %9 = load [2 x i8*]*, [2 x i8*]** %subst.addr, align 8
  %arrayidx6 = getelementptr inbounds [2 x i8*], [2 x i8*]* %9, i64 %idxprom5
  %arrayidx7 = getelementptr inbounds [2 x i8*], [2 x i8*]* %arrayidx6, i32 0, i64 1
  %10 = load i8*, i8** %arrayidx7, align 8
  %call8 = call i64 @strlen(i8* %10) #5
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %7, %cond.true ], [ %call8, %cond.false ]
  store i64 %cond, i64* %max, align 8
  br label %for.inc

for.inc:                                          ; preds = %cond.end
  %11 = load i32, i32* %i, align 4
  %inc = add nsw i32 %11, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %12 = load i8*, i8** %string.addr, align 8
  %call9 = call i64 @strlen(i8* %12) #5
  %13 = load i64, i64* %max, align 8
  %add = add i64 %13, 1
  %mul = mul i64 %call9, %add
  %add10 = add i64 %mul, 1
  %mul11 = mul i64 1, %add10
  %call12 = call i8* @xmalloc(i64 %mul11)
  store i8* %call12, i8** %res, align 8
  %14 = load i8*, i8** %res, align 8
  store i8* %14, i8** %cp, align 8
  br label %while.cond

while.cond:                                       ; preds = %__next_char, %for.end
  %15 = load i8*, i8** %string.addr, align 8
  %16 = load i8, i8* %15, align 1
  %tobool13 = icmp ne i8 %16, 0
  br i1 %tobool13, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  store i32 0, i32* %i, align 4
  br label %for.cond.14

for.cond.14:                                      ; preds = %for.inc.37, %while.body
  %17 = load i32, i32* %i, align 4
  %idxprom15 = sext i32 %17 to i64
  %18 = load [2 x i8*]*, [2 x i8*]** %subst.addr, align 8
  %arrayidx16 = getelementptr inbounds [2 x i8*], [2 x i8*]* %18, i64 %idxprom15
  %arrayidx17 = getelementptr inbounds [2 x i8*], [2 x i8*]* %arrayidx16, i32 0, i64 0
  %19 = load i8*, i8** %arrayidx17, align 8
  %tobool18 = icmp ne i8* %19, null
  br i1 %tobool18, label %for.body.19, label %for.end.39

for.body.19:                                      ; preds = %for.cond.14
  %20 = load i32, i32* %i, align 4
  %idxprom20 = sext i32 %20 to i64
  %21 = load [2 x i8*]*, [2 x i8*]** %subst.addr, align 8
  %arrayidx21 = getelementptr inbounds [2 x i8*], [2 x i8*]* %21, i64 %idxprom20
  %arrayidx22 = getelementptr inbounds [2 x i8*], [2 x i8*]* %arrayidx21, i32 0, i64 0
  %22 = load i8*, i8** %arrayidx22, align 8
  %23 = load i8*, i8** %string.addr, align 8
  %24 = load i32, i32* %i, align 4
  %idxprom23 = sext i32 %24 to i64
  %25 = load [2 x i8*]*, [2 x i8*]** %subst.addr, align 8
  %arrayidx24 = getelementptr inbounds [2 x i8*], [2 x i8*]* %25, i64 %idxprom23
  %arrayidx25 = getelementptr inbounds [2 x i8*], [2 x i8*]* %arrayidx24, i32 0, i64 0
  %26 = load i8*, i8** %arrayidx25, align 8
  %call26 = call i64 @strlen(i8* %26) #5
  %call27 = call i32 @strncmp(i8* %22, i8* %23, i64 %call26) #5
  %tobool28 = icmp ne i32 %call27, 0
  br i1 %tobool28, label %if.end, label %if.then

if.then:                                          ; preds = %for.body.19
  %27 = load i8*, i8** %cp, align 8
  %28 = load i32, i32* %i, align 4
  %idxprom29 = sext i32 %28 to i64
  %29 = load [2 x i8*]*, [2 x i8*]** %subst.addr, align 8
  %arrayidx30 = getelementptr inbounds [2 x i8*], [2 x i8*]* %29, i64 %idxprom29
  %arrayidx31 = getelementptr inbounds [2 x i8*], [2 x i8*]* %arrayidx30, i32 0, i64 1
  %30 = load i8*, i8** %arrayidx31, align 8
  %call32 = call i8* @stpcpy(i8* %27, i8* %30) #4
  store i8* %call32, i8** %cp, align 8
  %31 = load i32, i32* %i, align 4
  %idxprom33 = sext i32 %31 to i64
  %32 = load [2 x i8*]*, [2 x i8*]** %subst.addr, align 8
  %arrayidx34 = getelementptr inbounds [2 x i8*], [2 x i8*]* %32, i64 %idxprom33
  %arrayidx35 = getelementptr inbounds [2 x i8*], [2 x i8*]* %arrayidx34, i32 0, i64 0
  %33 = load i8*, i8** %arrayidx35, align 8
  %call36 = call i64 @strlen(i8* %33) #5
  %34 = load i8*, i8** %string.addr, align 8
  %add.ptr = getelementptr inbounds i8, i8* %34, i64 %call36
  store i8* %add.ptr, i8** %string.addr, align 8
  br label %__next_char

if.end:                                           ; preds = %for.body.19
  br label %for.inc.37

for.inc.37:                                       ; preds = %if.end
  %35 = load i32, i32* %i, align 4
  %inc38 = add nsw i32 %35, 1
  store i32 %inc38, i32* %i, align 4
  br label %for.cond.14

for.end.39:                                       ; preds = %for.cond.14
  %36 = load i8*, i8** %string.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %36, i32 1
  store i8* %incdec.ptr, i8** %string.addr, align 8
  %37 = load i8, i8* %36, align 1
  %38 = load i8*, i8** %cp, align 8
  %incdec.ptr40 = getelementptr inbounds i8, i8* %38, i32 1
  store i8* %incdec.ptr40, i8** %cp, align 8
  store i8 %37, i8* %38, align 1
  br label %__next_char

__next_char:                                      ; preds = %for.end.39, %if.then
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %39 = load i8*, i8** %cp, align 8
  store i8 0, i8* %39, align 1
  %40 = load i8*, i8** %res, align 8
  %41 = load i8*, i8** %cp, align 8
  %42 = load i8*, i8** %res, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %41 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %42 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %add41 = add nsw i64 %sub.ptr.sub, 1
  %mul42 = mul i64 1, %add41
  %call43 = call i8* @xrealloc(i8* %40, i64 %mul42)
  store i8* %call43, i8** %res, align 8
  %43 = load i8*, i8** %res, align 8
  ret i8* %43
}

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #1

declare i8* @xmalloc(i64) #2

; Function Attrs: nounwind readonly
declare i32 @strncmp(i8*, i8*, i64) #1

; Function Attrs: nounwind
declare i8* @stpcpy(i8*, i8*) #3

declare i8* @xrealloc(i8*, i64) #2

; Function Attrs: nounwind uwtable
define void @strrpl(i8** %string, [2 x i8*]* %subst) #0 {
entry:
  %string.addr = alloca i8**, align 8
  %subst.addr = alloca [2 x i8*]*, align 8
  %res = alloca i8*, align 8
  store i8** %string, i8*** %string.addr, align 8
  store [2 x i8*]* %subst, [2 x i8*]** %subst.addr, align 8
  %0 = load i8**, i8*** %string.addr, align 8
  %1 = load i8*, i8** %0, align 8
  %2 = load [2 x i8*]*, [2 x i8*]** %subst.addr, align 8
  %call = call i8* @xstrrpl(i8* %1, [2 x i8*]* %2)
  store i8* %call, i8** %res, align 8
  %3 = load i8**, i8*** %string.addr, align 8
  %4 = load i8*, i8** %3, align 8
  call void @free(i8* %4) #4
  %5 = load i8*, i8** %res, align 8
  %6 = load i8**, i8*** %string.addr, align 8
  store i8* %5, i8** %6, align 8
  ret void
}

; Function Attrs: nounwind
declare void @free(i8*) #3

; Function Attrs: nounwind uwtable
define i8* @xvstrrpl(i8* %string, ...) #0 {
entry:
  %retval = alloca i8*, align 8
  %string.addr = alloca i8*, align 8
  %ap = alloca [1 x %struct.__va_list_tag], align 16
  %subst = alloca [100 x [2 x i8*]], align 16
  %i = alloca i32, align 4
  store i8* %string, i8** %string.addr, align 8
  store i32 0, i32* %i, align 4
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay1)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %gp_offset_p = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay2, i32 0, i32 0
  %gp_offset = load i32, i32* %gp_offset_p
  %fits_in_gp = icmp ule i32 %gp_offset, 40
  br i1 %fits_in_gp, label %vaarg.in_reg, label %vaarg.in_mem

vaarg.in_reg:                                     ; preds = %for.cond
  %0 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay2, i32 0, i32 3
  %reg_save_area = load i8*, i8** %0
  %1 = getelementptr i8, i8* %reg_save_area, i32 %gp_offset
  %2 = bitcast i8* %1 to i8**
  %3 = add i32 %gp_offset, 8
  store i32 %3, i32* %gp_offset_p
  br label %vaarg.end

vaarg.in_mem:                                     ; preds = %for.cond
  %overflow_arg_area_p = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay2, i32 0, i32 2
  %overflow_arg_area = load i8*, i8** %overflow_arg_area_p
  %4 = bitcast i8* %overflow_arg_area to i8**
  %overflow_arg_area.next = getelementptr i8, i8* %overflow_arg_area, i32 8
  store i8* %overflow_arg_area.next, i8** %overflow_arg_area_p
  br label %vaarg.end

vaarg.end:                                        ; preds = %vaarg.in_mem, %vaarg.in_reg
  %vaarg.addr = phi i8** [ %2, %vaarg.in_reg ], [ %4, %vaarg.in_mem ]
  %5 = load i8*, i8** %vaarg.addr
  %6 = load i32, i32* %i, align 4
  %rem = srem i32 %6, 2
  %idxprom = sext i32 %rem to i64
  %7 = load i32, i32* %i, align 4
  %div = sdiv i32 %7, 2
  %idxprom3 = sext i32 %div to i64
  %arrayidx = getelementptr inbounds [100 x [2 x i8*]], [100 x [2 x i8*]]* %subst, i32 0, i64 %idxprom3
  %arrayidx4 = getelementptr inbounds [2 x i8*], [2 x i8*]* %arrayidx, i32 0, i64 %idxprom
  store i8* %5, i8** %arrayidx4, align 8
  %tobool = icmp ne i8* %5, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %vaarg.end
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %vaarg.end
  %arraydecay5 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %arraydecay56 = bitcast %struct.__va_list_tag* %arraydecay5 to i8*
  call void @llvm.va_end(i8* %arraydecay56)
  %9 = load i32, i32* %i, align 4
  %rem7 = srem i32 %9, 2
  %tobool8 = icmp ne i32 %rem7, 0
  br i1 %tobool8, label %if.then, label %if.end

if.then:                                          ; preds = %for.end
  store i8* null, i8** %retval
  br label %return

if.end:                                           ; preds = %for.end
  %10 = load i8*, i8** %string.addr, align 8
  %arraydecay9 = getelementptr inbounds [100 x [2 x i8*]], [100 x [2 x i8*]]* %subst, i32 0, i32 0
  %call = call i8* @xstrrpl(i8* %10, [2 x i8*]* %arraydecay9)
  store i8* %call, i8** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %11 = load i8*, i8** %retval
  ret i8* %11
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #4

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #4

; Function Attrs: nounwind uwtable
define void @vstrrpl(i8** %string, ...) #0 {
entry:
  %string.addr = alloca i8**, align 8
  %ap = alloca [1 x %struct.__va_list_tag], align 16
  %subst = alloca [100 x [2 x i8*]], align 16
  %i = alloca i32, align 4
  store i8** %string, i8*** %string.addr, align 8
  store i32 0, i32* %i, align 4
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay1)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %gp_offset_p = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay2, i32 0, i32 0
  %gp_offset = load i32, i32* %gp_offset_p
  %fits_in_gp = icmp ule i32 %gp_offset, 40
  br i1 %fits_in_gp, label %vaarg.in_reg, label %vaarg.in_mem

vaarg.in_reg:                                     ; preds = %for.cond
  %0 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay2, i32 0, i32 3
  %reg_save_area = load i8*, i8** %0
  %1 = getelementptr i8, i8* %reg_save_area, i32 %gp_offset
  %2 = bitcast i8* %1 to i8**
  %3 = add i32 %gp_offset, 8
  store i32 %3, i32* %gp_offset_p
  br label %vaarg.end

vaarg.in_mem:                                     ; preds = %for.cond
  %overflow_arg_area_p = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay2, i32 0, i32 2
  %overflow_arg_area = load i8*, i8** %overflow_arg_area_p
  %4 = bitcast i8* %overflow_arg_area to i8**
  %overflow_arg_area.next = getelementptr i8, i8* %overflow_arg_area, i32 8
  store i8* %overflow_arg_area.next, i8** %overflow_arg_area_p
  br label %vaarg.end

vaarg.end:                                        ; preds = %vaarg.in_mem, %vaarg.in_reg
  %vaarg.addr = phi i8** [ %2, %vaarg.in_reg ], [ %4, %vaarg.in_mem ]
  %5 = load i8*, i8** %vaarg.addr
  %6 = load i32, i32* %i, align 4
  %rem = srem i32 %6, 2
  %idxprom = sext i32 %rem to i64
  %7 = load i32, i32* %i, align 4
  %div = sdiv i32 %7, 2
  %idxprom3 = sext i32 %div to i64
  %arrayidx = getelementptr inbounds [100 x [2 x i8*]], [100 x [2 x i8*]]* %subst, i32 0, i64 %idxprom3
  %arrayidx4 = getelementptr inbounds [2 x i8*], [2 x i8*]* %arrayidx, i32 0, i64 %idxprom
  store i8* %5, i8** %arrayidx4, align 8
  %tobool = icmp ne i8* %5, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %vaarg.end
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %vaarg.end
  %arraydecay5 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %arraydecay56 = bitcast %struct.__va_list_tag* %arraydecay5 to i8*
  call void @llvm.va_end(i8* %arraydecay56)
  %9 = load i32, i32* %i, align 4
  %rem7 = srem i32 %9, 2
  %tobool8 = icmp ne i32 %rem7, 0
  br i1 %tobool8, label %if.then, label %if.else

if.then:                                          ; preds = %for.end
  %10 = load i8**, i8*** %string.addr, align 8
  %11 = load i8*, i8** %10, align 8
  call void @free(i8* %11) #4
  br label %if.end

if.else:                                          ; preds = %for.end
  %12 = load i8**, i8*** %string.addr, align 8
  %arraydecay9 = getelementptr inbounds [100 x [2 x i8*]], [100 x [2 x i8*]]* %subst, i32 0, i32 0
  call void @strrpl(i8** %12, [2 x i8*]* %arraydecay9)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
