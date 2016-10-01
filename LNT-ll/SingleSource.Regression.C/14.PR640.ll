; ModuleID = './SingleSource.Regression.C/14.PR640.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@.str = private unnamed_addr constant [7 x i8] c"ERROR\0A\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"All done.\0A\00", align 1

; Function Attrs: nounwind uwtable
define i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  store i32 0, i32* %retval
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  %call = call i32 @test_stdarg(i32 1)
  %cmp = icmp ne i32 %call, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0))
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %0 = load i32, i32* %retval
  ret i32 %0
}

; Function Attrs: nounwind uwtable
define internal i32 @test_stdarg(i32 %r) #0 {
entry:
  %retval = alloca i32, align 4
  %r.addr = alloca i32, align 4
  %c1 = alloca i8, align 1
  %c2 = alloca i8, align 1
  store i32 %r, i32* %r.addr, align 4
  store i8 1, i8* %c1, align 1
  store i8 2, i8* %c2, align 1
  %0 = bitcast i32* %r.addr to i8*
  %1 = load i8, i8* %c1, align 1
  %conv = sext i8 %1 to i32
  %2 = load i8, i8* %c2, align 1
  %conv1 = sext i8 %2 to i32
  %call = call i32 (i8*, ...) @test_stdarg_va(i8* %0, i32 %conv, i64 1981891429, i32 %conv1, i32* %r.addr)
  %cmp = icmp ne i32 %call, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = bitcast i32* %r.addr to i8*
  %4 = load i8, i8* %c1, align 1
  %conv3 = sext i8 %4 to i32
  %5 = load i8, i8* %c2, align 1
  %conv4 = sext i8 %5 to i32
  %call5 = call i32 (i8*, ...) @test_stdarg_builtin_va(i8* %3, i32 %conv3, i64 1981891433, i32 %conv4, i32* %r.addr)
  %cmp6 = icmp ne i32 %call5, 1
  br i1 %cmp6, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %if.end
  store i32 0, i32* %retval
  br label %return

if.end.9:                                         ; preds = %if.end
  %6 = load i32, i32* %r.addr, align 4
  %and = and i32 %6, 1
  store i32 %and, i32* %retval
  br label %return

return:                                           ; preds = %if.end.9, %if.then.8, %if.then
  %7 = load i32, i32* %retval
  ret i32 %7
}

declare i32 @printf(i8*, ...) #1

; Function Attrs: nounwind uwtable
define internal i32 @test_stdarg_va(i8* %p1, ...) #0 {
entry:
  %p1.addr = alloca i8*, align 8
  %ap = alloca [1 x %struct.__va_list_tag], align 16
  %l = alloca i64, align 8
  %i1 = alloca i32, align 4
  %i2 = alloca i32, align 4
  %p2 = alloca i8*, align 8
  store i8* %p1, i8** %p1.addr, align 8
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay1)
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %gp_offset_p = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay2, i32 0, i32 0
  %gp_offset = load i32, i32* %gp_offset_p
  %fits_in_gp = icmp ule i32 %gp_offset, 40
  br i1 %fits_in_gp, label %vaarg.in_reg, label %vaarg.in_mem

vaarg.in_reg:                                     ; preds = %entry
  %0 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay2, i32 0, i32 3
  %reg_save_area = load i8*, i8** %0
  %1 = getelementptr i8, i8* %reg_save_area, i32 %gp_offset
  %2 = bitcast i8* %1 to i32*
  %3 = add i32 %gp_offset, 8
  store i32 %3, i32* %gp_offset_p
  br label %vaarg.end

vaarg.in_mem:                                     ; preds = %entry
  %overflow_arg_area_p = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay2, i32 0, i32 2
  %overflow_arg_area = load i8*, i8** %overflow_arg_area_p
  %4 = bitcast i8* %overflow_arg_area to i32*
  %overflow_arg_area.next = getelementptr i8, i8* %overflow_arg_area, i32 8
  store i8* %overflow_arg_area.next, i8** %overflow_arg_area_p
  br label %vaarg.end

vaarg.end:                                        ; preds = %vaarg.in_mem, %vaarg.in_reg
  %vaarg.addr = phi i32* [ %2, %vaarg.in_reg ], [ %4, %vaarg.in_mem ]
  %5 = load i32, i32* %vaarg.addr
  store i32 %5, i32* %i1, align 4
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %gp_offset_p4 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay3, i32 0, i32 0
  %gp_offset5 = load i32, i32* %gp_offset_p4
  %fits_in_gp6 = icmp ule i32 %gp_offset5, 40
  br i1 %fits_in_gp6, label %vaarg.in_reg.7, label %vaarg.in_mem.9

vaarg.in_reg.7:                                   ; preds = %vaarg.end
  %6 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay3, i32 0, i32 3
  %reg_save_area8 = load i8*, i8** %6
  %7 = getelementptr i8, i8* %reg_save_area8, i32 %gp_offset5
  %8 = bitcast i8* %7 to i64*
  %9 = add i32 %gp_offset5, 8
  store i32 %9, i32* %gp_offset_p4
  br label %vaarg.end.13

vaarg.in_mem.9:                                   ; preds = %vaarg.end
  %overflow_arg_area_p10 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay3, i32 0, i32 2
  %overflow_arg_area11 = load i8*, i8** %overflow_arg_area_p10
  %10 = bitcast i8* %overflow_arg_area11 to i64*
  %overflow_arg_area.next12 = getelementptr i8, i8* %overflow_arg_area11, i32 8
  store i8* %overflow_arg_area.next12, i8** %overflow_arg_area_p10
  br label %vaarg.end.13

vaarg.end.13:                                     ; preds = %vaarg.in_mem.9, %vaarg.in_reg.7
  %vaarg.addr14 = phi i64* [ %8, %vaarg.in_reg.7 ], [ %10, %vaarg.in_mem.9 ]
  %11 = load i64, i64* %vaarg.addr14
  store i64 %11, i64* %l, align 8
  %arraydecay15 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %gp_offset_p16 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay15, i32 0, i32 0
  %gp_offset17 = load i32, i32* %gp_offset_p16
  %fits_in_gp18 = icmp ule i32 %gp_offset17, 40
  br i1 %fits_in_gp18, label %vaarg.in_reg.19, label %vaarg.in_mem.21

vaarg.in_reg.19:                                  ; preds = %vaarg.end.13
  %12 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay15, i32 0, i32 3
  %reg_save_area20 = load i8*, i8** %12
  %13 = getelementptr i8, i8* %reg_save_area20, i32 %gp_offset17
  %14 = bitcast i8* %13 to i32*
  %15 = add i32 %gp_offset17, 8
  store i32 %15, i32* %gp_offset_p16
  br label %vaarg.end.25

vaarg.in_mem.21:                                  ; preds = %vaarg.end.13
  %overflow_arg_area_p22 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay15, i32 0, i32 2
  %overflow_arg_area23 = load i8*, i8** %overflow_arg_area_p22
  %16 = bitcast i8* %overflow_arg_area23 to i32*
  %overflow_arg_area.next24 = getelementptr i8, i8* %overflow_arg_area23, i32 8
  store i8* %overflow_arg_area.next24, i8** %overflow_arg_area_p22
  br label %vaarg.end.25

vaarg.end.25:                                     ; preds = %vaarg.in_mem.21, %vaarg.in_reg.19
  %vaarg.addr26 = phi i32* [ %14, %vaarg.in_reg.19 ], [ %16, %vaarg.in_mem.21 ]
  %17 = load i32, i32* %vaarg.addr26
  store i32 %17, i32* %i2, align 4
  %arraydecay27 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %gp_offset_p28 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay27, i32 0, i32 0
  %gp_offset29 = load i32, i32* %gp_offset_p28
  %fits_in_gp30 = icmp ule i32 %gp_offset29, 40
  br i1 %fits_in_gp30, label %vaarg.in_reg.31, label %vaarg.in_mem.33

vaarg.in_reg.31:                                  ; preds = %vaarg.end.25
  %18 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay27, i32 0, i32 3
  %reg_save_area32 = load i8*, i8** %18
  %19 = getelementptr i8, i8* %reg_save_area32, i32 %gp_offset29
  %20 = bitcast i8* %19 to i8**
  %21 = add i32 %gp_offset29, 8
  store i32 %21, i32* %gp_offset_p28
  br label %vaarg.end.37

vaarg.in_mem.33:                                  ; preds = %vaarg.end.25
  %overflow_arg_area_p34 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay27, i32 0, i32 2
  %overflow_arg_area35 = load i8*, i8** %overflow_arg_area_p34
  %22 = bitcast i8* %overflow_arg_area35 to i8**
  %overflow_arg_area.next36 = getelementptr i8, i8* %overflow_arg_area35, i32 8
  store i8* %overflow_arg_area.next36, i8** %overflow_arg_area_p34
  br label %vaarg.end.37

vaarg.end.37:                                     ; preds = %vaarg.in_mem.33, %vaarg.in_reg.31
  %vaarg.addr38 = phi i8** [ %20, %vaarg.in_reg.31 ], [ %22, %vaarg.in_mem.33 ]
  %23 = load i8*, i8** %vaarg.addr38
  store i8* %23, i8** %p2, align 8
  %arraydecay39 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %arraydecay3940 = bitcast %struct.__va_list_tag* %arraydecay39 to i8*
  call void @llvm.va_end(i8* %arraydecay3940)
  %24 = load i8*, i8** %p1.addr, align 8
  %25 = load i8*, i8** %p2, align 8
  %cmp = icmp eq i8* %24, %25
  br i1 %cmp, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %vaarg.end.37
  %26 = load i32, i32* %i1, align 4
  %cmp41 = icmp eq i32 %26, 1
  br i1 %cmp41, label %land.lhs.true.42, label %land.end

land.lhs.true.42:                                 ; preds = %land.lhs.true
  %27 = load i64, i64* %l, align 8
  %cmp43 = icmp eq i64 %27, 1981891429
  br i1 %cmp43, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true.42
  %28 = load i32, i32* %i2, align 4
  %cmp44 = icmp eq i32 %28, 2
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true.42, %land.lhs.true, %vaarg.end.37
  %29 = phi i1 [ false, %land.lhs.true.42 ], [ false, %land.lhs.true ], [ false, %vaarg.end.37 ], [ %cmp44, %land.rhs ]
  %land.ext = zext i1 %29 to i32
  ret i32 %land.ext
}

; Function Attrs: nounwind uwtable
define internal i32 @test_stdarg_builtin_va(i8* %p1, ...) #0 {
entry:
  %p1.addr = alloca i8*, align 8
  %ap = alloca [1 x %struct.__va_list_tag], align 16
  %l = alloca i64, align 8
  %i1 = alloca i32, align 4
  %i2 = alloca i32, align 4
  %p2 = alloca i8*, align 8
  store i8* %p1, i8** %p1.addr, align 8
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay1)
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %gp_offset_p = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay2, i32 0, i32 0
  %gp_offset = load i32, i32* %gp_offset_p
  %fits_in_gp = icmp ule i32 %gp_offset, 40
  br i1 %fits_in_gp, label %vaarg.in_reg, label %vaarg.in_mem

vaarg.in_reg:                                     ; preds = %entry
  %0 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay2, i32 0, i32 3
  %reg_save_area = load i8*, i8** %0
  %1 = getelementptr i8, i8* %reg_save_area, i32 %gp_offset
  %2 = bitcast i8* %1 to i32*
  %3 = add i32 %gp_offset, 8
  store i32 %3, i32* %gp_offset_p
  br label %vaarg.end

vaarg.in_mem:                                     ; preds = %entry
  %overflow_arg_area_p = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay2, i32 0, i32 2
  %overflow_arg_area = load i8*, i8** %overflow_arg_area_p
  %4 = bitcast i8* %overflow_arg_area to i32*
  %overflow_arg_area.next = getelementptr i8, i8* %overflow_arg_area, i32 8
  store i8* %overflow_arg_area.next, i8** %overflow_arg_area_p
  br label %vaarg.end

vaarg.end:                                        ; preds = %vaarg.in_mem, %vaarg.in_reg
  %vaarg.addr = phi i32* [ %2, %vaarg.in_reg ], [ %4, %vaarg.in_mem ]
  %5 = load i32, i32* %vaarg.addr
  store i32 %5, i32* %i1, align 4
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %gp_offset_p4 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay3, i32 0, i32 0
  %gp_offset5 = load i32, i32* %gp_offset_p4
  %fits_in_gp6 = icmp ule i32 %gp_offset5, 40
  br i1 %fits_in_gp6, label %vaarg.in_reg.7, label %vaarg.in_mem.9

vaarg.in_reg.7:                                   ; preds = %vaarg.end
  %6 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay3, i32 0, i32 3
  %reg_save_area8 = load i8*, i8** %6
  %7 = getelementptr i8, i8* %reg_save_area8, i32 %gp_offset5
  %8 = bitcast i8* %7 to i64*
  %9 = add i32 %gp_offset5, 8
  store i32 %9, i32* %gp_offset_p4
  br label %vaarg.end.13

vaarg.in_mem.9:                                   ; preds = %vaarg.end
  %overflow_arg_area_p10 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay3, i32 0, i32 2
  %overflow_arg_area11 = load i8*, i8** %overflow_arg_area_p10
  %10 = bitcast i8* %overflow_arg_area11 to i64*
  %overflow_arg_area.next12 = getelementptr i8, i8* %overflow_arg_area11, i32 8
  store i8* %overflow_arg_area.next12, i8** %overflow_arg_area_p10
  br label %vaarg.end.13

vaarg.end.13:                                     ; preds = %vaarg.in_mem.9, %vaarg.in_reg.7
  %vaarg.addr14 = phi i64* [ %8, %vaarg.in_reg.7 ], [ %10, %vaarg.in_mem.9 ]
  %11 = load i64, i64* %vaarg.addr14
  store i64 %11, i64* %l, align 8
  %arraydecay15 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %gp_offset_p16 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay15, i32 0, i32 0
  %gp_offset17 = load i32, i32* %gp_offset_p16
  %fits_in_gp18 = icmp ule i32 %gp_offset17, 40
  br i1 %fits_in_gp18, label %vaarg.in_reg.19, label %vaarg.in_mem.21

vaarg.in_reg.19:                                  ; preds = %vaarg.end.13
  %12 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay15, i32 0, i32 3
  %reg_save_area20 = load i8*, i8** %12
  %13 = getelementptr i8, i8* %reg_save_area20, i32 %gp_offset17
  %14 = bitcast i8* %13 to i32*
  %15 = add i32 %gp_offset17, 8
  store i32 %15, i32* %gp_offset_p16
  br label %vaarg.end.25

vaarg.in_mem.21:                                  ; preds = %vaarg.end.13
  %overflow_arg_area_p22 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay15, i32 0, i32 2
  %overflow_arg_area23 = load i8*, i8** %overflow_arg_area_p22
  %16 = bitcast i8* %overflow_arg_area23 to i32*
  %overflow_arg_area.next24 = getelementptr i8, i8* %overflow_arg_area23, i32 8
  store i8* %overflow_arg_area.next24, i8** %overflow_arg_area_p22
  br label %vaarg.end.25

vaarg.end.25:                                     ; preds = %vaarg.in_mem.21, %vaarg.in_reg.19
  %vaarg.addr26 = phi i32* [ %14, %vaarg.in_reg.19 ], [ %16, %vaarg.in_mem.21 ]
  %17 = load i32, i32* %vaarg.addr26
  store i32 %17, i32* %i2, align 4
  %arraydecay27 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %gp_offset_p28 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay27, i32 0, i32 0
  %gp_offset29 = load i32, i32* %gp_offset_p28
  %fits_in_gp30 = icmp ule i32 %gp_offset29, 40
  br i1 %fits_in_gp30, label %vaarg.in_reg.31, label %vaarg.in_mem.33

vaarg.in_reg.31:                                  ; preds = %vaarg.end.25
  %18 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay27, i32 0, i32 3
  %reg_save_area32 = load i8*, i8** %18
  %19 = getelementptr i8, i8* %reg_save_area32, i32 %gp_offset29
  %20 = bitcast i8* %19 to i8**
  %21 = add i32 %gp_offset29, 8
  store i32 %21, i32* %gp_offset_p28
  br label %vaarg.end.37

vaarg.in_mem.33:                                  ; preds = %vaarg.end.25
  %overflow_arg_area_p34 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay27, i32 0, i32 2
  %overflow_arg_area35 = load i8*, i8** %overflow_arg_area_p34
  %22 = bitcast i8* %overflow_arg_area35 to i8**
  %overflow_arg_area.next36 = getelementptr i8, i8* %overflow_arg_area35, i32 8
  store i8* %overflow_arg_area.next36, i8** %overflow_arg_area_p34
  br label %vaarg.end.37

vaarg.end.37:                                     ; preds = %vaarg.in_mem.33, %vaarg.in_reg.31
  %vaarg.addr38 = phi i8** [ %20, %vaarg.in_reg.31 ], [ %22, %vaarg.in_mem.33 ]
  %23 = load i8*, i8** %vaarg.addr38
  store i8* %23, i8** %p2, align 8
  %arraydecay39 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %arraydecay3940 = bitcast %struct.__va_list_tag* %arraydecay39 to i8*
  call void @llvm.va_end(i8* %arraydecay3940)
  %24 = load i8*, i8** %p1.addr, align 8
  %25 = load i8*, i8** %p2, align 8
  %cmp = icmp eq i8* %24, %25
  br i1 %cmp, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %vaarg.end.37
  %26 = load i32, i32* %i1, align 4
  %cmp41 = icmp eq i32 %26, 1
  br i1 %cmp41, label %land.lhs.true.42, label %land.end

land.lhs.true.42:                                 ; preds = %land.lhs.true
  %27 = load i64, i64* %l, align 8
  %cmp43 = icmp eq i64 %27, 1981891433
  br i1 %cmp43, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true.42
  %28 = load i32, i32* %i2, align 4
  %cmp44 = icmp eq i32 %28, 2
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true.42, %land.lhs.true, %vaarg.end.37
  %29 = phi i1 [ false, %land.lhs.true.42 ], [ false, %land.lhs.true ], [ false, %vaarg.end.37 ], [ %cmp44, %land.rhs ]
  %land.ext = zext i1 %29 to i32
  ret i32 %land.ext
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #2

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
