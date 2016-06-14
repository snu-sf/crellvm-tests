; ModuleID = 'concat.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@libiberty_concat_ptr = common global i8* null, align 8

; Function Attrs: nounwind uwtable
define i64 @concat_length(i8* %first, ...) #0 {
entry:
  %first.addr = alloca i8*, align 8
  %length = alloca i64, align 8
  %args = alloca [1 x %struct.__va_list_tag], align 16
  store i8* %first, i8** %first.addr, align 8
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay1)
  %0 = load i8*, i8** %first.addr, align 8
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %call = call i64 @vconcat_length(i8* %0, %struct.__va_list_tag* %arraydecay2)
  store i64 %call, i64* %length, align 8
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*
  call void @llvm.va_end(i8* %arraydecay34)
  %1 = load i64, i64* %length, align 8
  ret i64 %1
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #1

; Function Attrs: inlinehint nounwind uwtable
define internal i64 @vconcat_length(i8* %first, %struct.__va_list_tag* %args) #2 {
entry:
  %first.addr = alloca i8*, align 8
  %args.addr = alloca %struct.__va_list_tag*, align 8
  %length = alloca i64, align 8
  %arg = alloca i8*, align 8
  store i8* %first, i8** %first.addr, align 8
  store %struct.__va_list_tag* %args, %struct.__va_list_tag** %args.addr, align 8
  store i64 0, i64* %length, align 8
  %0 = load i8*, i8** %first.addr, align 8
  store i8* %0, i8** %arg, align 8
  br label %for.cond

for.cond:                                         ; preds = %vaarg.end, %entry
  %1 = load i8*, i8** %arg, align 8
  %tobool = icmp ne i8* %1, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i8*, i8** %arg, align 8
  %call = call i64 @strlen(i8* %2) #6
  %3 = load i64, i64* %length, align 8
  %add = add i64 %3, %call
  store i64 %add, i64* %length, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %4 = load %struct.__va_list_tag*, %struct.__va_list_tag** %args.addr, align 8
  %gp_offset_p = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i32 0, i32 0
  %gp_offset = load i32, i32* %gp_offset_p
  %fits_in_gp = icmp ule i32 %gp_offset, 40
  br i1 %fits_in_gp, label %vaarg.in_reg, label %vaarg.in_mem

vaarg.in_reg:                                     ; preds = %for.inc
  %5 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i32 0, i32 3
  %reg_save_area = load i8*, i8** %5
  %6 = getelementptr i8, i8* %reg_save_area, i32 %gp_offset
  %7 = bitcast i8* %6 to i8**
  %8 = add i32 %gp_offset, 8
  store i32 %8, i32* %gp_offset_p
  br label %vaarg.end

vaarg.in_mem:                                     ; preds = %for.inc
  %overflow_arg_area_p = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i32 0, i32 2
  %overflow_arg_area = load i8*, i8** %overflow_arg_area_p
  %9 = bitcast i8* %overflow_arg_area to i8**
  %overflow_arg_area.next = getelementptr i8, i8* %overflow_arg_area, i32 8
  store i8* %overflow_arg_area.next, i8** %overflow_arg_area_p
  br label %vaarg.end

vaarg.end:                                        ; preds = %vaarg.in_mem, %vaarg.in_reg
  %vaarg.addr = phi i8** [ %7, %vaarg.in_reg ], [ %9, %vaarg.in_mem ]
  %10 = load i8*, i8** %vaarg.addr
  store i8* %10, i8** %arg, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %11 = load i64, i64* %length, align 8
  ret i64 %11
}

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #1

; Function Attrs: nounwind uwtable
define i8* @concat_copy(i8* %dst, i8* %first, ...) #0 {
entry:
  %dst.addr = alloca i8*, align 8
  %first.addr = alloca i8*, align 8
  %save_dst = alloca i8*, align 8
  %args = alloca [1 x %struct.__va_list_tag], align 16
  store i8* %dst, i8** %dst.addr, align 8
  store i8* %first, i8** %first.addr, align 8
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay1)
  %0 = load i8*, i8** %dst.addr, align 8
  %1 = load i8*, i8** %first.addr, align 8
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %call = call i8* @vconcat_copy(i8* %0, i8* %1, %struct.__va_list_tag* %arraydecay2)
  %2 = load i8*, i8** %dst.addr, align 8
  store i8* %2, i8** %save_dst, align 8
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*
  call void @llvm.va_end(i8* %arraydecay34)
  %3 = load i8*, i8** %save_dst, align 8
  ret i8* %3
}

; Function Attrs: inlinehint nounwind uwtable
define internal i8* @vconcat_copy(i8* %dst, i8* %first, %struct.__va_list_tag* %args) #2 {
entry:
  %dst.addr = alloca i8*, align 8
  %first.addr = alloca i8*, align 8
  %args.addr = alloca %struct.__va_list_tag*, align 8
  %end = alloca i8*, align 8
  %arg = alloca i8*, align 8
  %length = alloca i64, align 8
  store i8* %dst, i8** %dst.addr, align 8
  store i8* %first, i8** %first.addr, align 8
  store %struct.__va_list_tag* %args, %struct.__va_list_tag** %args.addr, align 8
  %0 = load i8*, i8** %dst.addr, align 8
  store i8* %0, i8** %end, align 8
  %1 = load i8*, i8** %first.addr, align 8
  store i8* %1, i8** %arg, align 8
  br label %for.cond

for.cond:                                         ; preds = %vaarg.end, %entry
  %2 = load i8*, i8** %arg, align 8
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i8*, i8** %arg, align 8
  %call = call i64 @strlen(i8* %3) #6
  store i64 %call, i64* %length, align 8
  %4 = load i8*, i8** %end, align 8
  %5 = load i8*, i8** %arg, align 8
  %6 = load i64, i64* %length, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %5, i64 %6, i32 1, i1 false)
  %7 = load i64, i64* %length, align 8
  %8 = load i8*, i8** %end, align 8
  %add.ptr = getelementptr inbounds i8, i8* %8, i64 %7
  store i8* %add.ptr, i8** %end, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %9 = load %struct.__va_list_tag*, %struct.__va_list_tag** %args.addr, align 8
  %gp_offset_p = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %9, i32 0, i32 0
  %gp_offset = load i32, i32* %gp_offset_p
  %fits_in_gp = icmp ule i32 %gp_offset, 40
  br i1 %fits_in_gp, label %vaarg.in_reg, label %vaarg.in_mem

vaarg.in_reg:                                     ; preds = %for.inc
  %10 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %9, i32 0, i32 3
  %reg_save_area = load i8*, i8** %10
  %11 = getelementptr i8, i8* %reg_save_area, i32 %gp_offset
  %12 = bitcast i8* %11 to i8**
  %13 = add i32 %gp_offset, 8
  store i32 %13, i32* %gp_offset_p
  br label %vaarg.end

vaarg.in_mem:                                     ; preds = %for.inc
  %overflow_arg_area_p = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %9, i32 0, i32 2
  %overflow_arg_area = load i8*, i8** %overflow_arg_area_p
  %14 = bitcast i8* %overflow_arg_area to i8**
  %overflow_arg_area.next = getelementptr i8, i8* %overflow_arg_area, i32 8
  store i8* %overflow_arg_area.next, i8** %overflow_arg_area_p
  br label %vaarg.end

vaarg.end:                                        ; preds = %vaarg.in_mem, %vaarg.in_reg
  %vaarg.addr = phi i8** [ %12, %vaarg.in_reg ], [ %14, %vaarg.in_mem ]
  %15 = load i8*, i8** %vaarg.addr
  store i8* %15, i8** %arg, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %16 = load i8*, i8** %end, align 8
  store i8 0, i8* %16, align 1
  %17 = load i8*, i8** %dst.addr, align 8
  ret i8* %17
}

; Function Attrs: nounwind uwtable
define i8* @concat_copy2(i8* %first, ...) #0 {
entry:
  %first.addr = alloca i8*, align 8
  %args = alloca [1 x %struct.__va_list_tag], align 16
  store i8* %first, i8** %first.addr, align 8
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay1)
  %0 = load i8*, i8** @libiberty_concat_ptr, align 8
  %1 = load i8*, i8** %first.addr, align 8
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %call = call i8* @vconcat_copy(i8* %0, i8* %1, %struct.__va_list_tag* %arraydecay2)
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*
  call void @llvm.va_end(i8* %arraydecay34)
  %2 = load i8*, i8** @libiberty_concat_ptr, align 8
  ret i8* %2
}

; Function Attrs: nounwind uwtable
define noalias i8* @concat(i8* %first, ...) #0 {
entry:
  %first.addr = alloca i8*, align 8
  %newstr = alloca i8*, align 8
  %args = alloca [1 x %struct.__va_list_tag], align 16
  %args6 = alloca [1 x %struct.__va_list_tag], align 16
  store i8* %first, i8** %first.addr, align 8
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay1)
  %0 = load i8*, i8** %first.addr, align 8
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %call = call i64 @vconcat_length(i8* %0, %struct.__va_list_tag* %arraydecay2)
  %add = add i64 %call, 1
  %call3 = call noalias i8* @xmalloc(i64 %add)
  store i8* %call3, i8** %newstr, align 8
  %arraydecay4 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay45 = bitcast %struct.__va_list_tag* %arraydecay4 to i8*
  call void @llvm.va_end(i8* %arraydecay45)
  %arraydecay7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args6, i32 0, i32 0
  %arraydecay78 = bitcast %struct.__va_list_tag* %arraydecay7 to i8*
  call void @llvm.va_start(i8* %arraydecay78)
  %1 = load i8*, i8** %newstr, align 8
  %2 = load i8*, i8** %first.addr, align 8
  %arraydecay9 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args6, i32 0, i32 0
  %call10 = call i8* @vconcat_copy(i8* %1, i8* %2, %struct.__va_list_tag* %arraydecay9)
  %arraydecay11 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args6, i32 0, i32 0
  %arraydecay1112 = bitcast %struct.__va_list_tag* %arraydecay11 to i8*
  call void @llvm.va_end(i8* %arraydecay1112)
  %3 = load i8*, i8** %newstr, align 8
  ret i8* %3
}

declare noalias i8* @xmalloc(i64) #3

; Function Attrs: nounwind uwtable
define noalias i8* @reconcat(i8* %optr, i8* %first, ...) #0 {
entry:
  %optr.addr = alloca i8*, align 8
  %first.addr = alloca i8*, align 8
  %newstr = alloca i8*, align 8
  %args = alloca [1 x %struct.__va_list_tag], align 16
  %args6 = alloca [1 x %struct.__va_list_tag], align 16
  store i8* %optr, i8** %optr.addr, align 8
  store i8* %first, i8** %first.addr, align 8
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay1)
  %0 = load i8*, i8** %first.addr, align 8
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %call = call i64 @vconcat_length(i8* %0, %struct.__va_list_tag* %arraydecay2)
  %add = add i64 %call, 1
  %call3 = call noalias i8* @xmalloc(i64 %add)
  store i8* %call3, i8** %newstr, align 8
  %arraydecay4 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay45 = bitcast %struct.__va_list_tag* %arraydecay4 to i8*
  call void @llvm.va_end(i8* %arraydecay45)
  %arraydecay7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args6, i32 0, i32 0
  %arraydecay78 = bitcast %struct.__va_list_tag* %arraydecay7 to i8*
  call void @llvm.va_start(i8* %arraydecay78)
  %1 = load i8*, i8** %newstr, align 8
  %2 = load i8*, i8** %first.addr, align 8
  %arraydecay9 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args6, i32 0, i32 0
  %call10 = call i8* @vconcat_copy(i8* %1, i8* %2, %struct.__va_list_tag* %arraydecay9)
  %3 = load i8*, i8** %optr.addr, align 8
  %tobool = icmp ne i8* %3, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load i8*, i8** %optr.addr, align 8
  call void @free(i8* %4) #1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %arraydecay11 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args6, i32 0, i32 0
  %arraydecay1112 = bitcast %struct.__va_list_tag* %arraydecay11 to i8*
  call void @llvm.va_end(i8* %arraydecay1112)
  %5 = load i8*, i8** %newstr, align 8
  ret i8* %5
}

; Function Attrs: nounwind
declare void @free(i8*) #4

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #5

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
