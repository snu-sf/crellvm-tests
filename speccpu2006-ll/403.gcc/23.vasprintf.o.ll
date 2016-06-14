; ModuleID = 'vasprintf.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@.str = private unnamed_addr constant [6 x i8] c"-+ #0\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"hlL\00", align 1

; Function Attrs: nounwind uwtable
define i32 @vasprintf(i8** %result, i8* %format, %struct.__va_list_tag* %args) #0 {
entry:
  %result.addr = alloca i8**, align 8
  %format.addr = alloca i8*, align 8
  %args.addr = alloca %struct.__va_list_tag*, align 8
  store i8** %result, i8*** %result.addr, align 8
  store i8* %format, i8** %format.addr, align 8
  store %struct.__va_list_tag* %args, %struct.__va_list_tag** %args.addr, align 8
  %0 = load i8**, i8*** %result.addr, align 8
  %1 = load i8*, i8** %format.addr, align 8
  %2 = load %struct.__va_list_tag*, %struct.__va_list_tag** %args.addr, align 8
  %call = call i32 @int_vasprintf(i8** %0, i8* %1, %struct.__va_list_tag* %2)
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @int_vasprintf(i8** %result, i8* %format, %struct.__va_list_tag* %args) #0 {
entry:
  %retval = alloca i32, align 4
  %result.addr = alloca i8**, align 8
  %format.addr = alloca i8*, align 8
  %args.addr = alloca %struct.__va_list_tag*, align 8
  %p = alloca i8*, align 8
  %total_width = alloca i32, align 4
  %ap = alloca [1 x %struct.__va_list_tag], align 16
  store i8** %result, i8*** %result.addr, align 8
  store i8* %format, i8** %format.addr, align 8
  store %struct.__va_list_tag* %args, %struct.__va_list_tag** %args.addr, align 8
  %0 = load i8*, i8** %format.addr, align 8
  store i8* %0, i8** %p, align 8
  %1 = load i8*, i8** %format.addr, align 8
  %call = call i64 @strlen(i8* %1) #5
  %add = add i64 %call, 1
  %conv = trunc i64 %add to i32
  store i32 %conv, i32* %total_width, align 4
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %2 = load %struct.__va_list_tag*, %struct.__va_list_tag** %args.addr, align 8
  %3 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  %4 = bitcast %struct.__va_list_tag* %2 to i8*
  call void @llvm.va_copy(i8* %3, i8* %4)
  br label %while.cond

while.cond:                                       ; preds = %if.end.117, %entry
  %5 = load i8*, i8** %p, align 8
  %6 = load i8, i8* %5, align 1
  %conv1 = sext i8 %6 to i32
  %cmp = icmp ne i32 %conv1, 0
  br i1 %cmp, label %while.body, label %while.end.118

while.body:                                       ; preds = %while.cond
  %7 = load i8*, i8** %p, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %7, i32 1
  store i8* %incdec.ptr, i8** %p, align 8
  %8 = load i8, i8* %7, align 1
  %conv3 = sext i8 %8 to i32
  %cmp4 = icmp eq i32 %conv3, 37
  br i1 %cmp4, label %if.then, label %if.end.117

if.then:                                          ; preds = %while.body
  br label %while.cond.6

while.cond.6:                                     ; preds = %while.body.9, %if.then
  %9 = load i8*, i8** %p, align 8
  %10 = load i8, i8* %9, align 1
  %conv7 = sext i8 %10 to i32
  %call8 = call i8* @strchr(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i32 %conv7) #5
  %tobool = icmp ne i8* %call8, null
  br i1 %tobool, label %while.body.9, label %while.end

while.body.9:                                     ; preds = %while.cond.6
  %11 = load i8*, i8** %p, align 8
  %incdec.ptr10 = getelementptr inbounds i8, i8* %11, i32 1
  store i8* %incdec.ptr10, i8** %p, align 8
  br label %while.cond.6

while.end:                                        ; preds = %while.cond.6
  %12 = load i8*, i8** %p, align 8
  %13 = load i8, i8* %12, align 1
  %conv11 = sext i8 %13 to i32
  %cmp12 = icmp eq i32 %conv11, 42
  br i1 %cmp12, label %if.then.14, label %if.else

if.then.14:                                       ; preds = %while.end
  %14 = load i8*, i8** %p, align 8
  %incdec.ptr15 = getelementptr inbounds i8, i8* %14, i32 1
  store i8* %incdec.ptr15, i8** %p, align 8
  %arraydecay16 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %gp_offset_p = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay16, i32 0, i32 0
  %gp_offset = load i32, i32* %gp_offset_p
  %fits_in_gp = icmp ule i32 %gp_offset, 40
  br i1 %fits_in_gp, label %vaarg.in_reg, label %vaarg.in_mem

vaarg.in_reg:                                     ; preds = %if.then.14
  %15 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay16, i32 0, i32 3
  %reg_save_area = load i8*, i8** %15
  %16 = getelementptr i8, i8* %reg_save_area, i32 %gp_offset
  %17 = bitcast i8* %16 to i32*
  %18 = add i32 %gp_offset, 8
  store i32 %18, i32* %gp_offset_p
  br label %vaarg.end

vaarg.in_mem:                                     ; preds = %if.then.14
  %overflow_arg_area_p = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay16, i32 0, i32 2
  %overflow_arg_area = load i8*, i8** %overflow_arg_area_p
  %19 = bitcast i8* %overflow_arg_area to i32*
  %overflow_arg_area.next = getelementptr i8, i8* %overflow_arg_area, i32 8
  store i8* %overflow_arg_area.next, i8** %overflow_arg_area_p
  br label %vaarg.end

vaarg.end:                                        ; preds = %vaarg.in_mem, %vaarg.in_reg
  %vaarg.addr = phi i32* [ %17, %vaarg.in_reg ], [ %19, %vaarg.in_mem ]
  %20 = load i32, i32* %vaarg.addr
  %call17 = call i32 @abs(i32 %20) #6
  %21 = load i32, i32* %total_width, align 4
  %add18 = add nsw i32 %21, %call17
  store i32 %add18, i32* %total_width, align 4
  br label %if.end

if.else:                                          ; preds = %while.end
  %22 = load i8*, i8** %p, align 8
  %call19 = call i64 @strtoul(i8* %22, i8** %p, i32 10) #2
  %23 = load i32, i32* %total_width, align 4
  %conv20 = sext i32 %23 to i64
  %add21 = add i64 %conv20, %call19
  %conv22 = trunc i64 %add21 to i32
  store i32 %conv22, i32* %total_width, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %vaarg.end
  %24 = load i8*, i8** %p, align 8
  %25 = load i8, i8* %24, align 1
  %conv23 = sext i8 %25 to i32
  %cmp24 = icmp eq i32 %conv23, 46
  br i1 %cmp24, label %if.then.26, label %if.end.53

if.then.26:                                       ; preds = %if.end
  %26 = load i8*, i8** %p, align 8
  %incdec.ptr27 = getelementptr inbounds i8, i8* %26, i32 1
  store i8* %incdec.ptr27, i8** %p, align 8
  %27 = load i8*, i8** %p, align 8
  %28 = load i8, i8* %27, align 1
  %conv28 = sext i8 %28 to i32
  %cmp29 = icmp eq i32 %conv28, 42
  br i1 %cmp29, label %if.then.31, label %if.else.47

if.then.31:                                       ; preds = %if.then.26
  %29 = load i8*, i8** %p, align 8
  %incdec.ptr32 = getelementptr inbounds i8, i8* %29, i32 1
  store i8* %incdec.ptr32, i8** %p, align 8
  %arraydecay33 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %gp_offset_p34 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay33, i32 0, i32 0
  %gp_offset35 = load i32, i32* %gp_offset_p34
  %fits_in_gp36 = icmp ule i32 %gp_offset35, 40
  br i1 %fits_in_gp36, label %vaarg.in_reg.37, label %vaarg.in_mem.39

vaarg.in_reg.37:                                  ; preds = %if.then.31
  %30 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay33, i32 0, i32 3
  %reg_save_area38 = load i8*, i8** %30
  %31 = getelementptr i8, i8* %reg_save_area38, i32 %gp_offset35
  %32 = bitcast i8* %31 to i32*
  %33 = add i32 %gp_offset35, 8
  store i32 %33, i32* %gp_offset_p34
  br label %vaarg.end.43

vaarg.in_mem.39:                                  ; preds = %if.then.31
  %overflow_arg_area_p40 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay33, i32 0, i32 2
  %overflow_arg_area41 = load i8*, i8** %overflow_arg_area_p40
  %34 = bitcast i8* %overflow_arg_area41 to i32*
  %overflow_arg_area.next42 = getelementptr i8, i8* %overflow_arg_area41, i32 8
  store i8* %overflow_arg_area.next42, i8** %overflow_arg_area_p40
  br label %vaarg.end.43

vaarg.end.43:                                     ; preds = %vaarg.in_mem.39, %vaarg.in_reg.37
  %vaarg.addr44 = phi i32* [ %32, %vaarg.in_reg.37 ], [ %34, %vaarg.in_mem.39 ]
  %35 = load i32, i32* %vaarg.addr44
  %call45 = call i32 @abs(i32 %35) #6
  %36 = load i32, i32* %total_width, align 4
  %add46 = add nsw i32 %36, %call45
  store i32 %add46, i32* %total_width, align 4
  br label %if.end.52

if.else.47:                                       ; preds = %if.then.26
  %37 = load i8*, i8** %p, align 8
  %call48 = call i64 @strtoul(i8* %37, i8** %p, i32 10) #2
  %38 = load i32, i32* %total_width, align 4
  %conv49 = sext i32 %38 to i64
  %add50 = add i64 %conv49, %call48
  %conv51 = trunc i64 %add50 to i32
  store i32 %conv51, i32* %total_width, align 4
  br label %if.end.52

if.end.52:                                        ; preds = %if.else.47, %vaarg.end.43
  br label %if.end.53

if.end.53:                                        ; preds = %if.end.52, %if.end
  br label %while.cond.54

while.cond.54:                                    ; preds = %while.body.58, %if.end.53
  %39 = load i8*, i8** %p, align 8
  %40 = load i8, i8* %39, align 1
  %conv55 = sext i8 %40 to i32
  %call56 = call i8* @strchr(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i32 %conv55) #5
  %tobool57 = icmp ne i8* %call56, null
  br i1 %tobool57, label %while.body.58, label %while.end.60

while.body.58:                                    ; preds = %while.cond.54
  %41 = load i8*, i8** %p, align 8
  %incdec.ptr59 = getelementptr inbounds i8, i8* %41, i32 1
  store i8* %incdec.ptr59, i8** %p, align 8
  br label %while.cond.54

while.end.60:                                     ; preds = %while.cond.54
  %42 = load i32, i32* %total_width, align 4
  %add61 = add nsw i32 %42, 30
  store i32 %add61, i32* %total_width, align 4
  %43 = load i8*, i8** %p, align 8
  %44 = load i8, i8* %43, align 1
  %conv62 = sext i8 %44 to i32
  switch i32 %conv62, label %sw.epilog [
    i32 100, label %sw.bb
    i32 105, label %sw.bb
    i32 111, label %sw.bb
    i32 117, label %sw.bb
    i32 120, label %sw.bb
    i32 88, label %sw.bb
    i32 99, label %sw.bb
    i32 102, label %sw.bb.75
    i32 101, label %sw.bb.75
    i32 69, label %sw.bb.75
    i32 103, label %sw.bb.75
    i32 71, label %sw.bb.75
    i32 115, label %sw.bb.86
    i32 112, label %sw.bb.103
    i32 110, label %sw.bb.103
  ]

sw.bb:                                            ; preds = %while.end.60, %while.end.60, %while.end.60, %while.end.60, %while.end.60, %while.end.60, %while.end.60
  %arraydecay63 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %gp_offset_p64 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay63, i32 0, i32 0
  %gp_offset65 = load i32, i32* %gp_offset_p64
  %fits_in_gp66 = icmp ule i32 %gp_offset65, 40
  br i1 %fits_in_gp66, label %vaarg.in_reg.67, label %vaarg.in_mem.69

vaarg.in_reg.67:                                  ; preds = %sw.bb
  %45 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay63, i32 0, i32 3
  %reg_save_area68 = load i8*, i8** %45
  %46 = getelementptr i8, i8* %reg_save_area68, i32 %gp_offset65
  %47 = bitcast i8* %46 to i32*
  %48 = add i32 %gp_offset65, 8
  store i32 %48, i32* %gp_offset_p64
  br label %vaarg.end.73

vaarg.in_mem.69:                                  ; preds = %sw.bb
  %overflow_arg_area_p70 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay63, i32 0, i32 2
  %overflow_arg_area71 = load i8*, i8** %overflow_arg_area_p70
  %49 = bitcast i8* %overflow_arg_area71 to i32*
  %overflow_arg_area.next72 = getelementptr i8, i8* %overflow_arg_area71, i32 8
  store i8* %overflow_arg_area.next72, i8** %overflow_arg_area_p70
  br label %vaarg.end.73

vaarg.end.73:                                     ; preds = %vaarg.in_mem.69, %vaarg.in_reg.67
  %vaarg.addr74 = phi i32* [ %47, %vaarg.in_reg.67 ], [ %49, %vaarg.in_mem.69 ]
  %50 = load i32, i32* %vaarg.addr74
  br label %sw.epilog

sw.bb.75:                                         ; preds = %while.end.60, %while.end.60, %while.end.60, %while.end.60, %while.end.60
  %arraydecay76 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %fp_offset_p = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay76, i32 0, i32 1
  %fp_offset = load i32, i32* %fp_offset_p
  %fits_in_fp = icmp ule i32 %fp_offset, 160
  br i1 %fits_in_fp, label %vaarg.in_reg.77, label %vaarg.in_mem.79

vaarg.in_reg.77:                                  ; preds = %sw.bb.75
  %51 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay76, i32 0, i32 3
  %reg_save_area78 = load i8*, i8** %51
  %52 = getelementptr i8, i8* %reg_save_area78, i32 %fp_offset
  %53 = bitcast i8* %52 to double*
  %54 = add i32 %fp_offset, 16
  store i32 %54, i32* %fp_offset_p
  br label %vaarg.end.83

vaarg.in_mem.79:                                  ; preds = %sw.bb.75
  %overflow_arg_area_p80 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay76, i32 0, i32 2
  %overflow_arg_area81 = load i8*, i8** %overflow_arg_area_p80
  %55 = bitcast i8* %overflow_arg_area81 to double*
  %overflow_arg_area.next82 = getelementptr i8, i8* %overflow_arg_area81, i32 8
  store i8* %overflow_arg_area.next82, i8** %overflow_arg_area_p80
  br label %vaarg.end.83

vaarg.end.83:                                     ; preds = %vaarg.in_mem.79, %vaarg.in_reg.77
  %vaarg.addr84 = phi double* [ %53, %vaarg.in_reg.77 ], [ %55, %vaarg.in_mem.79 ]
  %56 = load double, double* %vaarg.addr84
  %57 = load i32, i32* %total_width, align 4
  %add85 = add nsw i32 %57, 307
  store i32 %add85, i32* %total_width, align 4
  br label %sw.epilog

sw.bb.86:                                         ; preds = %while.end.60
  %arraydecay87 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %gp_offset_p88 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay87, i32 0, i32 0
  %gp_offset89 = load i32, i32* %gp_offset_p88
  %fits_in_gp90 = icmp ule i32 %gp_offset89, 40
  br i1 %fits_in_gp90, label %vaarg.in_reg.91, label %vaarg.in_mem.93

vaarg.in_reg.91:                                  ; preds = %sw.bb.86
  %58 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay87, i32 0, i32 3
  %reg_save_area92 = load i8*, i8** %58
  %59 = getelementptr i8, i8* %reg_save_area92, i32 %gp_offset89
  %60 = bitcast i8* %59 to i8**
  %61 = add i32 %gp_offset89, 8
  store i32 %61, i32* %gp_offset_p88
  br label %vaarg.end.97

vaarg.in_mem.93:                                  ; preds = %sw.bb.86
  %overflow_arg_area_p94 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay87, i32 0, i32 2
  %overflow_arg_area95 = load i8*, i8** %overflow_arg_area_p94
  %62 = bitcast i8* %overflow_arg_area95 to i8**
  %overflow_arg_area.next96 = getelementptr i8, i8* %overflow_arg_area95, i32 8
  store i8* %overflow_arg_area.next96, i8** %overflow_arg_area_p94
  br label %vaarg.end.97

vaarg.end.97:                                     ; preds = %vaarg.in_mem.93, %vaarg.in_reg.91
  %vaarg.addr98 = phi i8** [ %60, %vaarg.in_reg.91 ], [ %62, %vaarg.in_mem.93 ]
  %63 = load i8*, i8** %vaarg.addr98
  %call99 = call i64 @strlen(i8* %63) #5
  %64 = load i32, i32* %total_width, align 4
  %conv100 = sext i32 %64 to i64
  %add101 = add i64 %conv100, %call99
  %conv102 = trunc i64 %add101 to i32
  store i32 %conv102, i32* %total_width, align 4
  br label %sw.epilog

sw.bb.103:                                        ; preds = %while.end.60, %while.end.60
  %arraydecay104 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %gp_offset_p105 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay104, i32 0, i32 0
  %gp_offset106 = load i32, i32* %gp_offset_p105
  %fits_in_gp107 = icmp ule i32 %gp_offset106, 40
  br i1 %fits_in_gp107, label %vaarg.in_reg.108, label %vaarg.in_mem.110

vaarg.in_reg.108:                                 ; preds = %sw.bb.103
  %65 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay104, i32 0, i32 3
  %reg_save_area109 = load i8*, i8** %65
  %66 = getelementptr i8, i8* %reg_save_area109, i32 %gp_offset106
  %67 = bitcast i8* %66 to i8**
  %68 = add i32 %gp_offset106, 8
  store i32 %68, i32* %gp_offset_p105
  br label %vaarg.end.114

vaarg.in_mem.110:                                 ; preds = %sw.bb.103
  %overflow_arg_area_p111 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay104, i32 0, i32 2
  %overflow_arg_area112 = load i8*, i8** %overflow_arg_area_p111
  %69 = bitcast i8* %overflow_arg_area112 to i8**
  %overflow_arg_area.next113 = getelementptr i8, i8* %overflow_arg_area112, i32 8
  store i8* %overflow_arg_area.next113, i8** %overflow_arg_area_p111
  br label %vaarg.end.114

vaarg.end.114:                                    ; preds = %vaarg.in_mem.110, %vaarg.in_reg.108
  %vaarg.addr115 = phi i8** [ %67, %vaarg.in_reg.108 ], [ %69, %vaarg.in_mem.110 ]
  %70 = load i8*, i8** %vaarg.addr115
  br label %sw.epilog

sw.epilog:                                        ; preds = %while.end.60, %vaarg.end.114, %vaarg.end.97, %vaarg.end.83, %vaarg.end.73
  %71 = load i8*, i8** %p, align 8
  %incdec.ptr116 = getelementptr inbounds i8, i8* %71, i32 1
  store i8* %incdec.ptr116, i8** %p, align 8
  br label %if.end.117

if.end.117:                                       ; preds = %sw.epilog, %while.body
  br label %while.cond

while.end.118:                                    ; preds = %while.cond
  %arraydecay119 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %arraydecay119120 = bitcast %struct.__va_list_tag* %arraydecay119 to i8*
  call void @llvm.va_end(i8* %arraydecay119120)
  %72 = load i32, i32* %total_width, align 4
  %conv121 = sext i32 %72 to i64
  %call122 = call noalias i8* @malloc(i64 %conv121) #2
  %73 = load i8**, i8*** %result.addr, align 8
  store i8* %call122, i8** %73, align 8
  %74 = load i8**, i8*** %result.addr, align 8
  %75 = load i8*, i8** %74, align 8
  %cmp123 = icmp ne i8* %75, null
  br i1 %cmp123, label %if.then.125, label %if.else.127

if.then.125:                                      ; preds = %while.end.118
  %76 = load i8**, i8*** %result.addr, align 8
  %77 = load i8*, i8** %76, align 8
  %78 = load i8*, i8** %format.addr, align 8
  %79 = load %struct.__va_list_tag*, %struct.__va_list_tag** %args.addr, align 8
  %call126 = call i32 @vsprintf(i8* %77, i8* %78, %struct.__va_list_tag* %79) #2
  store i32 %call126, i32* %retval
  br label %return

if.else.127:                                      ; preds = %while.end.118
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.else.127, %if.then.125
  %80 = load i32, i32* %retval
  ret i32 %80
}

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #1

; Function Attrs: nounwind
declare void @llvm.va_copy(i8*, i8*) #2

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) #1

; Function Attrs: nounwind readnone
declare i32 @abs(i32) #3

; Function Attrs: nounwind
declare i64 @strtoul(i8*, i8**, i32) #4

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #2

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #4

; Function Attrs: nounwind
declare i32 @vsprintf(i8*, i8*, %struct.__va_list_tag*) #4

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly }
attributes #6 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
