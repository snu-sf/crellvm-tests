; ModuleID = './lib/fcntl.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@rpl_fcntl.have_dupfd_cloexec = internal global i32 0, align 4

; Function Attrs: nounwind uwtable
define i32 @rpl_fcntl(i32 %fd, i32 %action, ...) #0 {
entry:
  %fd.addr = alloca i32, align 4
  %action.addr = alloca i32, align 4
  %arg = alloca [1 x %struct.__va_list_tag], align 16
  %result = alloca i32, align 4
  %target = alloca i32, align 4
  %flags = alloca i32, align 4
  %saved_errno = alloca i32, align 4
  %p = alloca i8*, align 8
  store i32 %fd, i32* %fd.addr, align 4
  store i32 %action, i32* %action.addr, align 4
  store i32 -1, i32* %result, align 4
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %arg, i32 0, i32 0
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay1)
  %0 = load i32, i32* %action.addr, align 4
  switch i32 %0, label %sw.default [
    i32 1030, label %sw.bb
  ]

sw.bb:                                            ; preds = %entry
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %arg, i32 0, i32 0
  %gp_offset_p = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay2, i32 0, i32 0
  %gp_offset = load i32, i32* %gp_offset_p
  %fits_in_gp = icmp ule i32 %gp_offset, 40
  br i1 %fits_in_gp, label %vaarg.in_reg, label %vaarg.in_mem

vaarg.in_reg:                                     ; preds = %sw.bb
  %1 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay2, i32 0, i32 3
  %reg_save_area = load i8*, i8** %1
  %2 = getelementptr i8, i8* %reg_save_area, i32 %gp_offset
  %3 = bitcast i8* %2 to i32*
  %4 = add i32 %gp_offset, 8
  store i32 %4, i32* %gp_offset_p
  br label %vaarg.end

vaarg.in_mem:                                     ; preds = %sw.bb
  %overflow_arg_area_p = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay2, i32 0, i32 2
  %overflow_arg_area = load i8*, i8** %overflow_arg_area_p
  %5 = bitcast i8* %overflow_arg_area to i32*
  %overflow_arg_area.next = getelementptr i8, i8* %overflow_arg_area, i32 8
  store i8* %overflow_arg_area.next, i8** %overflow_arg_area_p
  br label %vaarg.end

vaarg.end:                                        ; preds = %vaarg.in_mem, %vaarg.in_reg
  %vaarg.addr = phi i32* [ %3, %vaarg.in_reg ], [ %5, %vaarg.in_mem ]
  %6 = load i32, i32* %vaarg.addr
  store i32 %6, i32* %target, align 4
  %7 = load i32, i32* @rpl_fcntl.have_dupfd_cloexec, align 4
  %cmp = icmp sle i32 0, %7
  br i1 %cmp, label %if.then, label %if.else.11

if.then:                                          ; preds = %vaarg.end
  %8 = load i32, i32* %fd.addr, align 4
  %9 = load i32, i32* %action.addr, align 4
  %10 = load i32, i32* %target, align 4
  %call = call i32 (i32, i32, ...) @fcntl(i32 %8, i32 %9, i32 %10)
  store i32 %call, i32* %result, align 4
  %11 = load i32, i32* %result, align 4
  %cmp3 = icmp sle i32 0, %11
  br i1 %cmp3, label %if.then.6, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then
  %call4 = call i32* @__errno_location() #4
  %12 = load i32, i32* %call4, align 4
  %cmp5 = icmp ne i32 %12, 22
  br i1 %cmp5, label %if.then.6, label %if.else

if.then.6:                                        ; preds = %lor.lhs.false, %if.then
  store i32 1, i32* @rpl_fcntl.have_dupfd_cloexec, align 4
  br label %if.end.10

if.else:                                          ; preds = %lor.lhs.false
  %13 = load i32, i32* %fd.addr, align 4
  %14 = load i32, i32* %target, align 4
  %call7 = call i32 (i32, i32, ...) @rpl_fcntl(i32 %13, i32 0, i32 %14)
  store i32 %call7, i32* %result, align 4
  %15 = load i32, i32* %result, align 4
  %cmp8 = icmp slt i32 %15, 0
  br i1 %cmp8, label %if.then.9, label %if.end

if.then.9:                                        ; preds = %if.else
  br label %sw.epilog

if.end:                                           ; preds = %if.else
  store i32 -1, i32* @rpl_fcntl.have_dupfd_cloexec, align 4
  br label %if.end.10

if.end.10:                                        ; preds = %if.end, %if.then.6
  br label %if.end.13

if.else.11:                                       ; preds = %vaarg.end
  %16 = load i32, i32* %fd.addr, align 4
  %17 = load i32, i32* %target, align 4
  %call12 = call i32 (i32, i32, ...) @rpl_fcntl(i32 %16, i32 0, i32 %17)
  store i32 %call12, i32* %result, align 4
  br label %if.end.13

if.end.13:                                        ; preds = %if.else.11, %if.end.10
  %18 = load i32, i32* %result, align 4
  %cmp14 = icmp sle i32 0, %18
  br i1 %cmp14, label %land.lhs.true, label %if.end.27

land.lhs.true:                                    ; preds = %if.end.13
  %19 = load i32, i32* @rpl_fcntl.have_dupfd_cloexec, align 4
  %cmp15 = icmp eq i32 %19, -1
  br i1 %cmp15, label %if.then.16, label %if.end.27

if.then.16:                                       ; preds = %land.lhs.true
  %20 = load i32, i32* %result, align 4
  %call17 = call i32 (i32, i32, ...) @fcntl(i32 %20, i32 1)
  store i32 %call17, i32* %flags, align 4
  %21 = load i32, i32* %flags, align 4
  %cmp18 = icmp slt i32 %21, 0
  br i1 %cmp18, label %if.then.22, label %lor.lhs.false.19

lor.lhs.false.19:                                 ; preds = %if.then.16
  %22 = load i32, i32* %result, align 4
  %23 = load i32, i32* %flags, align 4
  %or = or i32 %23, 1
  %call20 = call i32 (i32, i32, ...) @fcntl(i32 %22, i32 2, i32 %or)
  %cmp21 = icmp eq i32 %call20, -1
  br i1 %cmp21, label %if.then.22, label %if.end.26

if.then.22:                                       ; preds = %lor.lhs.false.19, %if.then.16
  %call23 = call i32* @__errno_location() #4
  %24 = load i32, i32* %call23, align 4
  store i32 %24, i32* %saved_errno, align 4
  %25 = load i32, i32* %result, align 4
  %call24 = call i32 @close(i32 %25)
  %26 = load i32, i32* %saved_errno, align 4
  %call25 = call i32* @__errno_location() #4
  store i32 %26, i32* %call25, align 4
  store i32 -1, i32* %result, align 4
  br label %if.end.26

if.end.26:                                        ; preds = %if.then.22, %lor.lhs.false.19
  br label %if.end.27

if.end.27:                                        ; preds = %if.end.26, %land.lhs.true, %if.end.13
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %arraydecay28 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %arg, i32 0, i32 0
  %gp_offset_p29 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay28, i32 0, i32 0
  %gp_offset30 = load i32, i32* %gp_offset_p29
  %fits_in_gp31 = icmp ule i32 %gp_offset30, 40
  br i1 %fits_in_gp31, label %vaarg.in_reg.32, label %vaarg.in_mem.34

vaarg.in_reg.32:                                  ; preds = %sw.default
  %27 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay28, i32 0, i32 3
  %reg_save_area33 = load i8*, i8** %27
  %28 = getelementptr i8, i8* %reg_save_area33, i32 %gp_offset30
  %29 = bitcast i8* %28 to i8**
  %30 = add i32 %gp_offset30, 8
  store i32 %30, i32* %gp_offset_p29
  br label %vaarg.end.38

vaarg.in_mem.34:                                  ; preds = %sw.default
  %overflow_arg_area_p35 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay28, i32 0, i32 2
  %overflow_arg_area36 = load i8*, i8** %overflow_arg_area_p35
  %31 = bitcast i8* %overflow_arg_area36 to i8**
  %overflow_arg_area.next37 = getelementptr i8, i8* %overflow_arg_area36, i32 8
  store i8* %overflow_arg_area.next37, i8** %overflow_arg_area_p35
  br label %vaarg.end.38

vaarg.end.38:                                     ; preds = %vaarg.in_mem.34, %vaarg.in_reg.32
  %vaarg.addr39 = phi i8** [ %29, %vaarg.in_reg.32 ], [ %31, %vaarg.in_mem.34 ]
  %32 = load i8*, i8** %vaarg.addr39
  store i8* %32, i8** %p, align 8
  %33 = load i32, i32* %fd.addr, align 4
  %34 = load i32, i32* %action.addr, align 4
  %35 = load i8*, i8** %p, align 8
  %call40 = call i32 (i32, i32, ...) @fcntl(i32 %33, i32 %34, i8* %35)
  store i32 %call40, i32* %result, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %vaarg.end.38, %if.end.27, %if.then.9
  %arraydecay41 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %arg, i32 0, i32 0
  %arraydecay4142 = bitcast %struct.__va_list_tag* %arraydecay41 to i8*
  call void @llvm.va_end(i8* %arraydecay4142)
  %36 = load i32, i32* %result, align 4
  ret i32 %36
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #1

declare i32 @fcntl(i32, i32, ...) #2

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #3

declare i32 @close(i32) #2

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
