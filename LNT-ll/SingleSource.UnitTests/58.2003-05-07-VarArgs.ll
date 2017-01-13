; ModuleID = './SingleSource.UnitTests/58.2003-05-07-VarArgs.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.DWordS_struct = type { i32, i8 }
%struct.QuadWordS_struct = type { i32, double }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.LargeS_struct = type { i32, double, %struct.DWordS_struct*, i32 }

@.str = private unnamed_addr constant [11 x i8] c"string %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"int %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"double %f\0A\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"long long %lld\0A\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"char %c\0A\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"DWord { %d, %c }\0A\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"QuadWord { %d, %f }\0A\00", align 1
@.str.7 = private unnamed_addr constant [29 x i8] c"LargeS { %d, %f, 0x%d, %d }\0A\00", align 1
@main.dw = private unnamed_addr constant %struct.DWordS_struct { i32 18, i8 97 }, align 4
@main.qw = private unnamed_addr constant %struct.QuadWordS_struct { i32 19, double 2.000000e+01 }, align 8
@.str.8 = private unnamed_addr constant [11 x i8] c"ssiciiiiis\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"abc\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"def\00", align 1
@.str.11 = private unnamed_addr constant [14 x i8] c"10 args done!\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"ddil\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c"DQL\00", align 1

; Function Attrs: nounwind uwtable
define void @test(i8* %fmt, ...) #0 {
entry:
  %fmt.addr = alloca i8*, align 8
  %ap = alloca [1 x %struct.__va_list_tag], align 16
  %aq = alloca [1 x %struct.__va_list_tag], align 16
  %d = alloca i32, align 4
  %c = alloca i8, align 1
  %s = alloca i8*, align 8
  %dw = alloca %struct.DWordS_struct, align 4
  %qw = alloca %struct.QuadWordS_struct, align 8
  %ls = alloca %struct.LargeS_struct, align 8
  %tmp = alloca %struct.QuadWordS_struct, align 8
  store i8* %fmt, i8** %fmt.addr, align 8
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay1)
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %aq, i32 0, i32 0
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %0 = bitcast %struct.__va_list_tag* %arraydecay2 to i8*
  %1 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*
  call void @llvm.va_copy(i8* %0, i8* %1)
  %arraydecay4 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %aq, i32 0, i32 0
  %arraydecay45 = bitcast %struct.__va_list_tag* %arraydecay4 to i8*
  call void @llvm.va_end(i8* %arraydecay45)
  br label %while.cond

while.cond:                                       ; preds = %sw.epilog, %entry
  %2 = load i8*, i8** %fmt.addr, align 8
  %3 = load i8, i8* %2, align 1
  %tobool = icmp ne i8 %3, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %4 = load i8*, i8** %fmt.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %4, i32 1
  store i8* %incdec.ptr, i8** %fmt.addr, align 8
  %5 = load i8, i8* %4, align 1
  %conv = sext i8 %5 to i32
  switch i32 %conv, label %sw.epilog [
    i32 115, label %sw.bb
    i32 105, label %sw.bb.7
    i32 100, label %sw.bb.21
    i32 108, label %sw.bb.32
    i32 99, label %sw.bb.46
    i32 68, label %sw.bb.62
    i32 81, label %sw.bb.78
    i32 76, label %sw.bb.97
  ]

sw.bb:                                            ; preds = %while.body
  %arraydecay6 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %gp_offset_p = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay6, i32 0, i32 0
  %gp_offset = load i32, i32* %gp_offset_p
  %fits_in_gp = icmp ule i32 %gp_offset, 40
  br i1 %fits_in_gp, label %vaarg.in_reg, label %vaarg.in_mem

vaarg.in_reg:                                     ; preds = %sw.bb
  %6 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay6, i32 0, i32 3
  %reg_save_area = load i8*, i8** %6
  %7 = getelementptr i8, i8* %reg_save_area, i32 %gp_offset
  %8 = bitcast i8* %7 to i8**
  %9 = add i32 %gp_offset, 8
  store i32 %9, i32* %gp_offset_p
  br label %vaarg.end

vaarg.in_mem:                                     ; preds = %sw.bb
  %overflow_arg_area_p = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay6, i32 0, i32 2
  %overflow_arg_area = load i8*, i8** %overflow_arg_area_p
  %10 = bitcast i8* %overflow_arg_area to i8**
  %overflow_arg_area.next = getelementptr i8, i8* %overflow_arg_area, i32 8
  store i8* %overflow_arg_area.next, i8** %overflow_arg_area_p
  br label %vaarg.end

vaarg.end:                                        ; preds = %vaarg.in_mem, %vaarg.in_reg
  %vaarg.addr = phi i8** [ %8, %vaarg.in_reg ], [ %10, %vaarg.in_mem ]
  %11 = load i8*, i8** %vaarg.addr
  store i8* %11, i8** %s, align 8
  %12 = load i8*, i8** %s, align 8
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), i8* %12)
  br label %sw.epilog

sw.bb.7:                                          ; preds = %while.body
  %arraydecay8 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %gp_offset_p9 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay8, i32 0, i32 0
  %gp_offset10 = load i32, i32* %gp_offset_p9
  %fits_in_gp11 = icmp ule i32 %gp_offset10, 40
  br i1 %fits_in_gp11, label %vaarg.in_reg.12, label %vaarg.in_mem.14

vaarg.in_reg.12:                                  ; preds = %sw.bb.7
  %13 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay8, i32 0, i32 3
  %reg_save_area13 = load i8*, i8** %13
  %14 = getelementptr i8, i8* %reg_save_area13, i32 %gp_offset10
  %15 = bitcast i8* %14 to i32*
  %16 = add i32 %gp_offset10, 8
  store i32 %16, i32* %gp_offset_p9
  br label %vaarg.end.18

vaarg.in_mem.14:                                  ; preds = %sw.bb.7
  %overflow_arg_area_p15 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay8, i32 0, i32 2
  %overflow_arg_area16 = load i8*, i8** %overflow_arg_area_p15
  %17 = bitcast i8* %overflow_arg_area16 to i32*
  %overflow_arg_area.next17 = getelementptr i8, i8* %overflow_arg_area16, i32 8
  store i8* %overflow_arg_area.next17, i8** %overflow_arg_area_p15
  br label %vaarg.end.18

vaarg.end.18:                                     ; preds = %vaarg.in_mem.14, %vaarg.in_reg.12
  %vaarg.addr19 = phi i32* [ %15, %vaarg.in_reg.12 ], [ %17, %vaarg.in_mem.14 ]
  %18 = load i32, i32* %vaarg.addr19
  store i32 %18, i32* %d, align 4
  %19 = load i32, i32* %d, align 4
  %call20 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), i32 %19)
  br label %sw.epilog

sw.bb.21:                                         ; preds = %while.body
  %arraydecay22 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %fp_offset_p = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay22, i32 0, i32 1
  %fp_offset = load i32, i32* %fp_offset_p
  %fits_in_fp = icmp ule i32 %fp_offset, 160
  br i1 %fits_in_fp, label %vaarg.in_reg.23, label %vaarg.in_mem.25

vaarg.in_reg.23:                                  ; preds = %sw.bb.21
  %20 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay22, i32 0, i32 3
  %reg_save_area24 = load i8*, i8** %20
  %21 = getelementptr i8, i8* %reg_save_area24, i32 %fp_offset
  %22 = bitcast i8* %21 to double*
  %23 = add i32 %fp_offset, 16
  store i32 %23, i32* %fp_offset_p
  br label %vaarg.end.29

vaarg.in_mem.25:                                  ; preds = %sw.bb.21
  %overflow_arg_area_p26 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay22, i32 0, i32 2
  %overflow_arg_area27 = load i8*, i8** %overflow_arg_area_p26
  %24 = bitcast i8* %overflow_arg_area27 to double*
  %overflow_arg_area.next28 = getelementptr i8, i8* %overflow_arg_area27, i32 8
  store i8* %overflow_arg_area.next28, i8** %overflow_arg_area_p26
  br label %vaarg.end.29

vaarg.end.29:                                     ; preds = %vaarg.in_mem.25, %vaarg.in_reg.23
  %vaarg.addr30 = phi double* [ %22, %vaarg.in_reg.23 ], [ %24, %vaarg.in_mem.25 ]
  %25 = load double, double* %vaarg.addr30
  %call31 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i32 0, i32 0), double %25)
  br label %sw.epilog

sw.bb.32:                                         ; preds = %while.body
  %arraydecay33 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %gp_offset_p34 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay33, i32 0, i32 0
  %gp_offset35 = load i32, i32* %gp_offset_p34
  %fits_in_gp36 = icmp ule i32 %gp_offset35, 40
  br i1 %fits_in_gp36, label %vaarg.in_reg.37, label %vaarg.in_mem.39

vaarg.in_reg.37:                                  ; preds = %sw.bb.32
  %26 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay33, i32 0, i32 3
  %reg_save_area38 = load i8*, i8** %26
  %27 = getelementptr i8, i8* %reg_save_area38, i32 %gp_offset35
  %28 = bitcast i8* %27 to i64*
  %29 = add i32 %gp_offset35, 8
  store i32 %29, i32* %gp_offset_p34
  br label %vaarg.end.43

vaarg.in_mem.39:                                  ; preds = %sw.bb.32
  %overflow_arg_area_p40 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay33, i32 0, i32 2
  %overflow_arg_area41 = load i8*, i8** %overflow_arg_area_p40
  %30 = bitcast i8* %overflow_arg_area41 to i64*
  %overflow_arg_area.next42 = getelementptr i8, i8* %overflow_arg_area41, i32 8
  store i8* %overflow_arg_area.next42, i8** %overflow_arg_area_p40
  br label %vaarg.end.43

vaarg.end.43:                                     ; preds = %vaarg.in_mem.39, %vaarg.in_reg.37
  %vaarg.addr44 = phi i64* [ %28, %vaarg.in_reg.37 ], [ %30, %vaarg.in_mem.39 ]
  %31 = load i64, i64* %vaarg.addr44
  %call45 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i32 0, i32 0), i64 %31)
  br label %sw.epilog

sw.bb.46:                                         ; preds = %while.body
  %arraydecay47 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %gp_offset_p48 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay47, i32 0, i32 0
  %gp_offset49 = load i32, i32* %gp_offset_p48
  %fits_in_gp50 = icmp ule i32 %gp_offset49, 40
  br i1 %fits_in_gp50, label %vaarg.in_reg.51, label %vaarg.in_mem.53

vaarg.in_reg.51:                                  ; preds = %sw.bb.46
  %32 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay47, i32 0, i32 3
  %reg_save_area52 = load i8*, i8** %32
  %33 = getelementptr i8, i8* %reg_save_area52, i32 %gp_offset49
  %34 = bitcast i8* %33 to i32*
  %35 = add i32 %gp_offset49, 8
  store i32 %35, i32* %gp_offset_p48
  br label %vaarg.end.57

vaarg.in_mem.53:                                  ; preds = %sw.bb.46
  %overflow_arg_area_p54 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay47, i32 0, i32 2
  %overflow_arg_area55 = load i8*, i8** %overflow_arg_area_p54
  %36 = bitcast i8* %overflow_arg_area55 to i32*
  %overflow_arg_area.next56 = getelementptr i8, i8* %overflow_arg_area55, i32 8
  store i8* %overflow_arg_area.next56, i8** %overflow_arg_area_p54
  br label %vaarg.end.57

vaarg.end.57:                                     ; preds = %vaarg.in_mem.53, %vaarg.in_reg.51
  %vaarg.addr58 = phi i32* [ %34, %vaarg.in_reg.51 ], [ %36, %vaarg.in_mem.53 ]
  %37 = load i32, i32* %vaarg.addr58
  %conv59 = trunc i32 %37 to i8
  store i8 %conv59, i8* %c, align 1
  %38 = load i8, i8* %c, align 1
  %conv60 = sext i8 %38 to i32
  %call61 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), i32 %conv60)
  br label %sw.epilog

sw.bb.62:                                         ; preds = %while.body
  %arraydecay63 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %gp_offset_p64 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay63, i32 0, i32 0
  %gp_offset65 = load i32, i32* %gp_offset_p64
  %fits_in_gp66 = icmp ule i32 %gp_offset65, 40
  br i1 %fits_in_gp66, label %vaarg.in_reg.67, label %vaarg.in_mem.69

vaarg.in_reg.67:                                  ; preds = %sw.bb.62
  %39 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay63, i32 0, i32 3
  %reg_save_area68 = load i8*, i8** %39
  %40 = getelementptr i8, i8* %reg_save_area68, i32 %gp_offset65
  %41 = bitcast i8* %40 to %struct.DWordS_struct*
  %42 = add i32 %gp_offset65, 8
  store i32 %42, i32* %gp_offset_p64
  br label %vaarg.end.73

vaarg.in_mem.69:                                  ; preds = %sw.bb.62
  %overflow_arg_area_p70 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay63, i32 0, i32 2
  %overflow_arg_area71 = load i8*, i8** %overflow_arg_area_p70
  %43 = bitcast i8* %overflow_arg_area71 to %struct.DWordS_struct*
  %overflow_arg_area.next72 = getelementptr i8, i8* %overflow_arg_area71, i32 8
  store i8* %overflow_arg_area.next72, i8** %overflow_arg_area_p70
  br label %vaarg.end.73

vaarg.end.73:                                     ; preds = %vaarg.in_mem.69, %vaarg.in_reg.67
  %vaarg.addr74 = phi %struct.DWordS_struct* [ %41, %vaarg.in_reg.67 ], [ %43, %vaarg.in_mem.69 ]
  %44 = bitcast %struct.DWordS_struct* %dw to i8*
  %45 = bitcast %struct.DWordS_struct* %vaarg.addr74 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %44, i8* %45, i64 8, i32 4, i1 false)
  %i = getelementptr inbounds %struct.DWordS_struct, %struct.DWordS_struct* %dw, i32 0, i32 0
  %46 = load i32, i32* %i, align 4
  %c75 = getelementptr inbounds %struct.DWordS_struct, %struct.DWordS_struct* %dw, i32 0, i32 1
  %47 = load i8, i8* %c75, align 1
  %conv76 = sext i8 %47 to i32
  %call77 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i32 0, i32 0), i32 %46, i32 %conv76)
  br label %sw.epilog

sw.bb.78:                                         ; preds = %while.body
  %arraydecay79 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %gp_offset_p80 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay79, i32 0, i32 0
  %gp_offset81 = load i32, i32* %gp_offset_p80
  %fits_in_gp82 = icmp ule i32 %gp_offset81, 40
  %fp_offset_p83 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay79, i32 0, i32 1
  %fp_offset84 = load i32, i32* %fp_offset_p83
  %fits_in_fp85 = icmp ule i32 %fp_offset84, 160
  %48 = and i1 %fits_in_gp82, %fits_in_fp85
  br i1 %48, label %vaarg.in_reg.86, label %vaarg.in_mem.88

vaarg.in_reg.86:                                  ; preds = %sw.bb.78
  %49 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay79, i32 0, i32 3
  %reg_save_area87 = load i8*, i8** %49
  %50 = bitcast %struct.QuadWordS_struct* %tmp to { i32, double }*
  %51 = getelementptr i8, i8* %reg_save_area87, i32 %gp_offset81
  %52 = getelementptr i8, i8* %reg_save_area87, i32 %fp_offset84
  %53 = bitcast i8* %51 to i32*
  %54 = load i32, i32* %53
  %55 = getelementptr inbounds { i32, double }, { i32, double }* %50, i32 0, i32 0
  store i32 %54, i32* %55
  %56 = bitcast i8* %52 to double*
  %57 = load double, double* %56
  %58 = getelementptr inbounds { i32, double }, { i32, double }* %50, i32 0, i32 1
  store double %57, double* %58
  %59 = bitcast { i32, double }* %50 to %struct.QuadWordS_struct*
  %60 = add i32 %gp_offset81, 8
  store i32 %60, i32* %gp_offset_p80
  %61 = add i32 %fp_offset84, 16
  store i32 %61, i32* %fp_offset_p83
  br label %vaarg.end.92

vaarg.in_mem.88:                                  ; preds = %sw.bb.78
  %overflow_arg_area_p89 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay79, i32 0, i32 2
  %overflow_arg_area90 = load i8*, i8** %overflow_arg_area_p89
  %62 = bitcast i8* %overflow_arg_area90 to %struct.QuadWordS_struct*
  %overflow_arg_area.next91 = getelementptr i8, i8* %overflow_arg_area90, i32 16
  store i8* %overflow_arg_area.next91, i8** %overflow_arg_area_p89
  br label %vaarg.end.92

vaarg.end.92:                                     ; preds = %vaarg.in_mem.88, %vaarg.in_reg.86
  %vaarg.addr93 = phi %struct.QuadWordS_struct* [ %59, %vaarg.in_reg.86 ], [ %62, %vaarg.in_mem.88 ]
  %63 = bitcast %struct.QuadWordS_struct* %qw to i8*
  %64 = bitcast %struct.QuadWordS_struct* %vaarg.addr93 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %63, i8* %64, i64 16, i32 8, i1 false)
  %i94 = getelementptr inbounds %struct.QuadWordS_struct, %struct.QuadWordS_struct* %qw, i32 0, i32 0
  %65 = load i32, i32* %i94, align 4
  %d95 = getelementptr inbounds %struct.QuadWordS_struct, %struct.QuadWordS_struct* %qw, i32 0, i32 1
  %66 = load double, double* %d95, align 8
  %call96 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i32 0, i32 0), i32 %65, double %66)
  br label %sw.epilog

sw.bb.97:                                         ; preds = %while.body
  %arraydecay98 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %overflow_arg_area_p99 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay98, i32 0, i32 2
  %overflow_arg_area100 = load i8*, i8** %overflow_arg_area_p99
  %67 = bitcast i8* %overflow_arg_area100 to %struct.LargeS_struct*
  %overflow_arg_area.next101 = getelementptr i8, i8* %overflow_arg_area100, i32 32
  store i8* %overflow_arg_area.next101, i8** %overflow_arg_area_p99
  %68 = bitcast %struct.LargeS_struct* %ls to i8*
  %69 = bitcast %struct.LargeS_struct* %67 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %68, i8* %69, i64 32, i32 8, i1 false)
  %i102 = getelementptr inbounds %struct.LargeS_struct, %struct.LargeS_struct* %ls, i32 0, i32 0
  %70 = load i32, i32* %i102, align 4
  %d103 = getelementptr inbounds %struct.LargeS_struct, %struct.LargeS_struct* %ls, i32 0, i32 1
  %71 = load double, double* %d103, align 8
  %ptr = getelementptr inbounds %struct.LargeS_struct, %struct.LargeS_struct* %ls, i32 0, i32 2
  %72 = load %struct.DWordS_struct*, %struct.DWordS_struct** %ptr, align 8
  %cmp = icmp ne %struct.DWordS_struct* %72, null
  %conv104 = zext i1 %cmp to i32
  %j = getelementptr inbounds %struct.LargeS_struct, %struct.LargeS_struct* %ls, i32 0, i32 3
  %73 = load i32, i32* %j, align 4
  %call105 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i32 0, i32 0), i32 %70, double %71, i32 %conv104, i32 %73)
  br label %sw.epilog

sw.epilog:                                        ; preds = %while.body, %sw.bb.97, %vaarg.end.92, %vaarg.end.73, %vaarg.end.57, %vaarg.end.43, %vaarg.end.29, %vaarg.end.18, %vaarg.end
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %arraydecay106 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %arraydecay106107 = bitcast %struct.__va_list_tag* %arraydecay106 to i8*
  call void @llvm.va_end(i8* %arraydecay106107)
  ret void
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #1

; Function Attrs: nounwind
declare void @llvm.va_copy(i8*, i8*) #1

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #1

declare i32 @printf(i8*, ...) #2

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %dw = alloca %struct.DWordS_struct, align 4
  %qw = alloca %struct.QuadWordS_struct, align 8
  %ls = alloca %struct.LargeS_struct, align 8
  store i32 0, i32* %retval
  %0 = bitcast %struct.DWordS_struct* %dw to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* bitcast (%struct.DWordS_struct* @main.dw to i8*), i64 8, i32 4, i1 false)
  %1 = bitcast %struct.QuadWordS_struct* %qw to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1, i8* bitcast (%struct.QuadWordS_struct* @main.qw to i8*), i64 16, i32 8, i1 false)
  %i = getelementptr inbounds %struct.LargeS_struct, %struct.LargeS_struct* %ls, i32 0, i32 0
  store i32 21, i32* %i, align 4
  %d = getelementptr inbounds %struct.LargeS_struct, %struct.LargeS_struct* %ls, i32 0, i32 1
  store double 2.200000e+01, double* %d, align 8
  %ptr = getelementptr inbounds %struct.LargeS_struct, %struct.LargeS_struct* %ls, i32 0, i32 2
  store %struct.DWordS_struct* %dw, %struct.DWordS_struct** %ptr, align 8
  %j = getelementptr inbounds %struct.LargeS_struct, %struct.LargeS_struct* %ls, i32 0, i32 3
  store i32 23, i32* %j, align 4
  call void (i8*, ...) @test(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i32 0, i32 0), i32 -123, i32 97, i32 123, i32 6, i32 7, i32 8, i32 9, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i32 0, i32 0))
  call void (i8*, ...) @test(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i32 0, i32 0), double 1.000000e+00, double 2.000000e+00, i32 32764, i64 12345677823423)
  %2 = bitcast %struct.DWordS_struct* %dw to i64*
  %3 = load i64, i64* %2, align 4
  %4 = bitcast %struct.QuadWordS_struct* %qw to { i32, double }*
  %5 = getelementptr { i32, double }, { i32, double }* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 1
  %7 = getelementptr { i32, double }, { i32, double }* %4, i32 0, i32 1
  %8 = load double, double* %7, align 1
  call void (i8*, ...) @test(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i32 0, i32 0), i64 %3, i32 %6, double %8, %struct.LargeS_struct* byval align 8 %ls)
  ret i32 0
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
