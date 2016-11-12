; ModuleID = './lib/printlen.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@.str = private unnamed_addr constant [6 x i8] c"-+ #0\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"hlL\00", align 1

; Function Attrs: nounwind uwtable
define i32 @vprintflen(i8* %format, %struct.__va_list_tag* %args) #0 {
entry:
  %format.addr = alloca i8*, align 8
  %args.addr = alloca %struct.__va_list_tag*, align 8
  %ap = alloca [1 x %struct.__va_list_tag], align 16
  %ret = alloca i32, align 4
  store i8* %format, i8** %format.addr, align 8
  store %struct.__va_list_tag* %args, %struct.__va_list_tag** %args.addr, align 8
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %0 = load %struct.__va_list_tag*, %struct.__va_list_tag** %args.addr, align 8
  %1 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  %2 = bitcast %struct.__va_list_tag* %0 to i8*
  call void @llvm.va_copy(i8* %1, i8* %2)
  %3 = load i8*, i8** %format.addr, align 8
  %arraydecay1 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %call = call i32 @int_printflen(i8* %3, %struct.__va_list_tag* %arraydecay1)
  store i32 %call, i32* %ret, align 4
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %arraydecay23 = bitcast %struct.__va_list_tag* %arraydecay2 to i8*
  call void @llvm.va_end(i8* %arraydecay23)
  %4 = load i32, i32* %ret, align 4
  ret i32 %4
}

; Function Attrs: nounwind
declare void @llvm.va_copy(i8*, i8*) #1

; Function Attrs: nounwind uwtable
define internal i32 @int_printflen(i8* %format, %struct.__va_list_tag* %ap) #0 {
entry:
  %format.addr = alloca i8*, align 8
  %ap.addr = alloca %struct.__va_list_tag*, align 8
  %cp = alloca i8*, align 8
  %total_width = alloca i32, align 4
  %width = alloca i32, align 4
  store i8* %format, i8** %format.addr, align 8
  store %struct.__va_list_tag* %ap, %struct.__va_list_tag** %ap.addr, align 8
  store i32 0, i32* %total_width, align 4
  store i32 0, i32* %width, align 4
  %0 = load i8*, i8** %format.addr, align 8
  store i8* %0, i8** %cp, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i8*, i8** %cp, align 8
  %2 = load i8, i8* %1, align 1
  %tobool = icmp ne i8 %2, 0
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i8*, i8** %cp, align 8
  %4 = load i8, i8* %3, align 1
  %conv = sext i8 %4 to i32
  %cmp = icmp ne i32 %conv, 37
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %5 = load i32, i32* %total_width, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, i32* %total_width, align 4
  br label %if.end.90

if.else:                                          ; preds = %for.body
  %6 = load i8*, i8** %cp, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %6, i32 1
  store i8* %incdec.ptr, i8** %cp, align 8
  store i32 0, i32* %width, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.else
  %7 = load i8*, i8** %cp, align 8
  %8 = load i8, i8* %7, align 1
  %conv2 = sext i8 %8 to i32
  %call = call i8* @strchr(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i32 %conv2) #4
  %tobool3 = icmp ne i8* %call, null
  br i1 %tobool3, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %9 = load i8*, i8** %cp, align 8
  %incdec.ptr4 = getelementptr inbounds i8, i8* %9, i32 1
  store i8* %incdec.ptr4, i8** %cp, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %10 = load i8*, i8** %cp, align 8
  %11 = load i8, i8* %10, align 1
  %conv5 = sext i8 %11 to i32
  %cmp6 = icmp eq i32 %conv5, 42
  br i1 %cmp6, label %if.then.8, label %if.end

if.then.8:                                        ; preds = %while.end
  %12 = load i8*, i8** %cp, align 8
  %incdec.ptr9 = getelementptr inbounds i8, i8* %12, i32 1
  store i8* %incdec.ptr9, i8** %cp, align 8
  %13 = load %struct.__va_list_tag*, %struct.__va_list_tag** %ap.addr, align 8
  %gp_offset_p = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %13, i32 0, i32 0
  %gp_offset = load i32, i32* %gp_offset_p
  %fits_in_gp = icmp ule i32 %gp_offset, 40
  br i1 %fits_in_gp, label %vaarg.in_reg, label %vaarg.in_mem

vaarg.in_reg:                                     ; preds = %if.then.8
  %14 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %13, i32 0, i32 3
  %reg_save_area = load i8*, i8** %14
  %15 = getelementptr i8, i8* %reg_save_area, i32 %gp_offset
  %16 = bitcast i8* %15 to i32*
  %17 = add i32 %gp_offset, 8
  store i32 %17, i32* %gp_offset_p
  br label %vaarg.end

vaarg.in_mem:                                     ; preds = %if.then.8
  %overflow_arg_area_p = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %13, i32 0, i32 2
  %overflow_arg_area = load i8*, i8** %overflow_arg_area_p
  %18 = bitcast i8* %overflow_arg_area to i32*
  %overflow_arg_area.next = getelementptr i8, i8* %overflow_arg_area, i32 8
  store i8* %overflow_arg_area.next, i8** %overflow_arg_area_p
  br label %vaarg.end

vaarg.end:                                        ; preds = %vaarg.in_mem, %vaarg.in_reg
  %vaarg.addr = phi i32* [ %16, %vaarg.in_reg ], [ %18, %vaarg.in_mem ]
  %19 = load i32, i32* %vaarg.addr
  %call10 = call i32 @abs(i32 %19) #5
  store i32 %call10, i32* %width, align 4
  br label %if.end

if.end:                                           ; preds = %vaarg.end, %while.end
  %20 = load i8*, i8** %cp, align 8
  %21 = load i8, i8* %20, align 1
  %conv11 = sext i8 %21 to i32
  %cmp12 = icmp eq i32 %conv11, 46
  br i1 %cmp12, label %if.then.14, label %if.end.34

if.then.14:                                       ; preds = %if.end
  %22 = load i8*, i8** %cp, align 8
  %incdec.ptr15 = getelementptr inbounds i8, i8* %22, i32 1
  store i8* %incdec.ptr15, i8** %cp, align 8
  %23 = load i8*, i8** %cp, align 8
  %24 = load i8, i8* %23, align 1
  %conv16 = sext i8 %24 to i32
  %cmp17 = icmp eq i32 %conv16, 42
  br i1 %cmp17, label %if.then.19, label %if.end.33

if.then.19:                                       ; preds = %if.then.14
  %25 = load i8*, i8** %cp, align 8
  %incdec.ptr20 = getelementptr inbounds i8, i8* %25, i32 1
  store i8* %incdec.ptr20, i8** %cp, align 8
  %26 = load %struct.__va_list_tag*, %struct.__va_list_tag** %ap.addr, align 8
  %gp_offset_p21 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %26, i32 0, i32 0
  %gp_offset22 = load i32, i32* %gp_offset_p21
  %fits_in_gp23 = icmp ule i32 %gp_offset22, 40
  br i1 %fits_in_gp23, label %vaarg.in_reg.24, label %vaarg.in_mem.26

vaarg.in_reg.24:                                  ; preds = %if.then.19
  %27 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %26, i32 0, i32 3
  %reg_save_area25 = load i8*, i8** %27
  %28 = getelementptr i8, i8* %reg_save_area25, i32 %gp_offset22
  %29 = bitcast i8* %28 to i32*
  %30 = add i32 %gp_offset22, 8
  store i32 %30, i32* %gp_offset_p21
  br label %vaarg.end.30

vaarg.in_mem.26:                                  ; preds = %if.then.19
  %overflow_arg_area_p27 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %26, i32 0, i32 2
  %overflow_arg_area28 = load i8*, i8** %overflow_arg_area_p27
  %31 = bitcast i8* %overflow_arg_area28 to i32*
  %overflow_arg_area.next29 = getelementptr i8, i8* %overflow_arg_area28, i32 8
  store i8* %overflow_arg_area.next29, i8** %overflow_arg_area_p27
  br label %vaarg.end.30

vaarg.end.30:                                     ; preds = %vaarg.in_mem.26, %vaarg.in_reg.24
  %vaarg.addr31 = phi i32* [ %29, %vaarg.in_reg.24 ], [ %31, %vaarg.in_mem.26 ]
  %32 = load i32, i32* %vaarg.addr31
  %call32 = call i32 @abs(i32 %32) #5
  store i32 %call32, i32* %width, align 4
  br label %if.end.33

if.end.33:                                        ; preds = %vaarg.end.30, %if.then.14
  br label %if.end.34

if.end.34:                                        ; preds = %if.end.33, %if.end
  br label %while.cond.35

while.cond.35:                                    ; preds = %while.body.39, %if.end.34
  %33 = load i8*, i8** %cp, align 8
  %34 = load i8, i8* %33, align 1
  %conv36 = sext i8 %34 to i32
  %call37 = call i8* @strchr(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i32 %conv36) #4
  %tobool38 = icmp ne i8* %call37, null
  br i1 %tobool38, label %while.body.39, label %while.end.41

while.body.39:                                    ; preds = %while.cond.35
  %35 = load i8*, i8** %cp, align 8
  %incdec.ptr40 = getelementptr inbounds i8, i8* %35, i32 1
  store i8* %incdec.ptr40, i8** %cp, align 8
  br label %while.cond.35

while.end.41:                                     ; preds = %while.cond.35
  %36 = load i8*, i8** %cp, align 8
  %37 = load i8, i8* %36, align 1
  %conv42 = sext i8 %37 to i32
  switch i32 %conv42, label %sw.epilog [
    i32 100, label %sw.bb
    i32 105, label %sw.bb
    i32 111, label %sw.bb
    i32 117, label %sw.bb
    i32 120, label %sw.bb
    i32 88, label %sw.bb
    i32 99, label %sw.bb
    i32 102, label %sw.bb.54
    i32 101, label %sw.bb.54
    i32 69, label %sw.bb.54
    i32 103, label %sw.bb.54
    i32 71, label %sw.bb.54
    i32 115, label %sw.bb.63
    i32 112, label %sw.bb.78
    i32 110, label %sw.bb.78
  ]

sw.bb:                                            ; preds = %while.end.41, %while.end.41, %while.end.41, %while.end.41, %while.end.41, %while.end.41, %while.end.41
  %38 = load %struct.__va_list_tag*, %struct.__va_list_tag** %ap.addr, align 8
  %gp_offset_p43 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %38, i32 0, i32 0
  %gp_offset44 = load i32, i32* %gp_offset_p43
  %fits_in_gp45 = icmp ule i32 %gp_offset44, 40
  br i1 %fits_in_gp45, label %vaarg.in_reg.46, label %vaarg.in_mem.48

vaarg.in_reg.46:                                  ; preds = %sw.bb
  %39 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %38, i32 0, i32 3
  %reg_save_area47 = load i8*, i8** %39
  %40 = getelementptr i8, i8* %reg_save_area47, i32 %gp_offset44
  %41 = bitcast i8* %40 to i32*
  %42 = add i32 %gp_offset44, 8
  store i32 %42, i32* %gp_offset_p43
  br label %vaarg.end.52

vaarg.in_mem.48:                                  ; preds = %sw.bb
  %overflow_arg_area_p49 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %38, i32 0, i32 2
  %overflow_arg_area50 = load i8*, i8** %overflow_arg_area_p49
  %43 = bitcast i8* %overflow_arg_area50 to i32*
  %overflow_arg_area.next51 = getelementptr i8, i8* %overflow_arg_area50, i32 8
  store i8* %overflow_arg_area.next51, i8** %overflow_arg_area_p49
  br label %vaarg.end.52

vaarg.end.52:                                     ; preds = %vaarg.in_mem.48, %vaarg.in_reg.46
  %vaarg.addr53 = phi i32* [ %41, %vaarg.in_reg.46 ], [ %43, %vaarg.in_mem.48 ]
  %44 = load i32, i32* %vaarg.addr53
  br label %sw.epilog

sw.bb.54:                                         ; preds = %while.end.41, %while.end.41, %while.end.41, %while.end.41, %while.end.41
  %45 = load %struct.__va_list_tag*, %struct.__va_list_tag** %ap.addr, align 8
  %fp_offset_p = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %45, i32 0, i32 1
  %fp_offset = load i32, i32* %fp_offset_p
  %fits_in_fp = icmp ule i32 %fp_offset, 160
  br i1 %fits_in_fp, label %vaarg.in_reg.55, label %vaarg.in_mem.57

vaarg.in_reg.55:                                  ; preds = %sw.bb.54
  %46 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %45, i32 0, i32 3
  %reg_save_area56 = load i8*, i8** %46
  %47 = getelementptr i8, i8* %reg_save_area56, i32 %fp_offset
  %48 = bitcast i8* %47 to double*
  %49 = add i32 %fp_offset, 16
  store i32 %49, i32* %fp_offset_p
  br label %vaarg.end.61

vaarg.in_mem.57:                                  ; preds = %sw.bb.54
  %overflow_arg_area_p58 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %45, i32 0, i32 2
  %overflow_arg_area59 = load i8*, i8** %overflow_arg_area_p58
  %50 = bitcast i8* %overflow_arg_area59 to double*
  %overflow_arg_area.next60 = getelementptr i8, i8* %overflow_arg_area59, i32 8
  store i8* %overflow_arg_area.next60, i8** %overflow_arg_area_p58
  br label %vaarg.end.61

vaarg.end.61:                                     ; preds = %vaarg.in_mem.57, %vaarg.in_reg.55
  %vaarg.addr62 = phi double* [ %48, %vaarg.in_reg.55 ], [ %50, %vaarg.in_mem.57 ]
  %51 = load double, double* %vaarg.addr62
  br label %sw.epilog

sw.bb.63:                                         ; preds = %while.end.41
  %52 = load %struct.__va_list_tag*, %struct.__va_list_tag** %ap.addr, align 8
  %gp_offset_p64 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %52, i32 0, i32 0
  %gp_offset65 = load i32, i32* %gp_offset_p64
  %fits_in_gp66 = icmp ule i32 %gp_offset65, 40
  br i1 %fits_in_gp66, label %vaarg.in_reg.67, label %vaarg.in_mem.69

vaarg.in_reg.67:                                  ; preds = %sw.bb.63
  %53 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %52, i32 0, i32 3
  %reg_save_area68 = load i8*, i8** %53
  %54 = getelementptr i8, i8* %reg_save_area68, i32 %gp_offset65
  %55 = bitcast i8* %54 to i8**
  %56 = add i32 %gp_offset65, 8
  store i32 %56, i32* %gp_offset_p64
  br label %vaarg.end.73

vaarg.in_mem.69:                                  ; preds = %sw.bb.63
  %overflow_arg_area_p70 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %52, i32 0, i32 2
  %overflow_arg_area71 = load i8*, i8** %overflow_arg_area_p70
  %57 = bitcast i8* %overflow_arg_area71 to i8**
  %overflow_arg_area.next72 = getelementptr i8, i8* %overflow_arg_area71, i32 8
  store i8* %overflow_arg_area.next72, i8** %overflow_arg_area_p70
  br label %vaarg.end.73

vaarg.end.73:                                     ; preds = %vaarg.in_mem.69, %vaarg.in_reg.67
  %vaarg.addr74 = phi i8** [ %55, %vaarg.in_reg.67 ], [ %57, %vaarg.in_mem.69 ]
  %58 = load i8*, i8** %vaarg.addr74
  %call75 = call i64 @strlen(i8* %58) #4
  %59 = load i32, i32* %total_width, align 4
  %conv76 = sext i32 %59 to i64
  %add = add i64 %conv76, %call75
  %conv77 = trunc i64 %add to i32
  store i32 %conv77, i32* %total_width, align 4
  br label %sw.epilog

sw.bb.78:                                         ; preds = %while.end.41, %while.end.41
  %60 = load %struct.__va_list_tag*, %struct.__va_list_tag** %ap.addr, align 8
  %gp_offset_p79 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %60, i32 0, i32 0
  %gp_offset80 = load i32, i32* %gp_offset_p79
  %fits_in_gp81 = icmp ule i32 %gp_offset80, 40
  br i1 %fits_in_gp81, label %vaarg.in_reg.82, label %vaarg.in_mem.84

vaarg.in_reg.82:                                  ; preds = %sw.bb.78
  %61 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %60, i32 0, i32 3
  %reg_save_area83 = load i8*, i8** %61
  %62 = getelementptr i8, i8* %reg_save_area83, i32 %gp_offset80
  %63 = bitcast i8* %62 to i8**
  %64 = add i32 %gp_offset80, 8
  store i32 %64, i32* %gp_offset_p79
  br label %vaarg.end.88

vaarg.in_mem.84:                                  ; preds = %sw.bb.78
  %overflow_arg_area_p85 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %60, i32 0, i32 2
  %overflow_arg_area86 = load i8*, i8** %overflow_arg_area_p85
  %65 = bitcast i8* %overflow_arg_area86 to i8**
  %overflow_arg_area.next87 = getelementptr i8, i8* %overflow_arg_area86, i32 8
  store i8* %overflow_arg_area.next87, i8** %overflow_arg_area_p85
  br label %vaarg.end.88

vaarg.end.88:                                     ; preds = %vaarg.in_mem.84, %vaarg.in_reg.82
  %vaarg.addr89 = phi i8** [ %63, %vaarg.in_reg.82 ], [ %65, %vaarg.in_mem.84 ]
  %66 = load i8*, i8** %vaarg.addr89
  br label %sw.epilog

sw.epilog:                                        ; preds = %while.end.41, %vaarg.end.88, %vaarg.end.73, %vaarg.end.61, %vaarg.end.52
  br label %if.end.90

if.end.90:                                        ; preds = %sw.epilog, %if.then
  br label %for.inc

for.inc:                                          ; preds = %if.end.90
  %67 = load i8*, i8** %cp, align 8
  %incdec.ptr91 = getelementptr inbounds i8, i8* %67, i32 1
  store i8* %incdec.ptr91, i8** %cp, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %68 = load i32, i32* %total_width, align 4
  ret i32 %68
}

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #1

; Function Attrs: nounwind uwtable
define i32 @printflen(i8* %format, ...) #0 {
entry:
  %format.addr = alloca i8*, align 8
  %args = alloca [1 x %struct.__va_list_tag], align 16
  %res = alloca i32, align 4
  store i8* %format, i8** %format.addr, align 8
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay1)
  %0 = load i8*, i8** %format.addr, align 8
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %call = call i32 @vprintflen(i8* %0, %struct.__va_list_tag* %arraydecay2)
  store i32 %call, i32* %res, align 4
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*
  call void @llvm.va_end(i8* %arraydecay34)
  %1 = load i32, i32* %res, align 4
  ret i32 %1
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #1

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) #2

; Function Attrs: nounwind readnone
declare i32 @abs(i32) #3

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly }
attributes #5 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
