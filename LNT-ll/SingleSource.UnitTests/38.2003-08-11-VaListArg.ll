; ModuleID = './SingleSource.UnitTests/38.2003-08-11-VaListArg.bc'
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
define void @test(i8* %fmt, %struct.__va_list_tag* %ap) #0 {
entry:
  %fmt.addr = alloca i8*, align 8
  %ap.addr = alloca %struct.__va_list_tag*, align 8
  %d = alloca i32, align 4
  %c = alloca i8, align 1
  %s = alloca i8*, align 8
  %dw = alloca %struct.DWordS_struct, align 4
  %qw = alloca %struct.QuadWordS_struct, align 8
  %ls = alloca %struct.LargeS_struct, align 8
  %tmp = alloca %struct.QuadWordS_struct, align 8
  store i8* %fmt, i8** %fmt.addr, align 8
  store %struct.__va_list_tag* %ap, %struct.__va_list_tag** %ap.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %sw.epilog, %entry
  %0 = load i8*, i8** %fmt.addr, align 8
  %1 = load i8, i8* %0, align 1
  %tobool = icmp ne i8 %1, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load i8*, i8** %fmt.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %2, i32 1
  store i8* %incdec.ptr, i8** %fmt.addr, align 8
  %3 = load i8, i8* %2, align 1
  %conv = sext i8 %3 to i32
  switch i32 %conv, label %sw.epilog [
    i32 115, label %sw.bb
    i32 105, label %sw.bb.1
    i32 100, label %sw.bb.14
    i32 108, label %sw.bb.24
    i32 99, label %sw.bb.37
    i32 68, label %sw.bb.52
    i32 81, label %sw.bb.67
    i32 76, label %sw.bb.85
  ]

sw.bb:                                            ; preds = %while.body
  %4 = load %struct.__va_list_tag*, %struct.__va_list_tag** %ap.addr, align 8
  %gp_offset_p = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i32 0, i32 0
  %gp_offset = load i32, i32* %gp_offset_p
  %fits_in_gp = icmp ule i32 %gp_offset, 40
  br i1 %fits_in_gp, label %vaarg.in_reg, label %vaarg.in_mem

vaarg.in_reg:                                     ; preds = %sw.bb
  %5 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i32 0, i32 3
  %reg_save_area = load i8*, i8** %5
  %6 = getelementptr i8, i8* %reg_save_area, i32 %gp_offset
  %7 = bitcast i8* %6 to i8**
  %8 = add i32 %gp_offset, 8
  store i32 %8, i32* %gp_offset_p
  br label %vaarg.end

vaarg.in_mem:                                     ; preds = %sw.bb
  %overflow_arg_area_p = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i32 0, i32 2
  %overflow_arg_area = load i8*, i8** %overflow_arg_area_p
  %9 = bitcast i8* %overflow_arg_area to i8**
  %overflow_arg_area.next = getelementptr i8, i8* %overflow_arg_area, i32 8
  store i8* %overflow_arg_area.next, i8** %overflow_arg_area_p
  br label %vaarg.end

vaarg.end:                                        ; preds = %vaarg.in_mem, %vaarg.in_reg
  %vaarg.addr = phi i8** [ %7, %vaarg.in_reg ], [ %9, %vaarg.in_mem ]
  %10 = load i8*, i8** %vaarg.addr
  store i8* %10, i8** %s, align 8
  %11 = load i8*, i8** %s, align 8
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), i8* %11)
  br label %sw.epilog

sw.bb.1:                                          ; preds = %while.body
  %12 = load %struct.__va_list_tag*, %struct.__va_list_tag** %ap.addr, align 8
  %gp_offset_p2 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %12, i32 0, i32 0
  %gp_offset3 = load i32, i32* %gp_offset_p2
  %fits_in_gp4 = icmp ule i32 %gp_offset3, 40
  br i1 %fits_in_gp4, label %vaarg.in_reg.5, label %vaarg.in_mem.7

vaarg.in_reg.5:                                   ; preds = %sw.bb.1
  %13 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %12, i32 0, i32 3
  %reg_save_area6 = load i8*, i8** %13
  %14 = getelementptr i8, i8* %reg_save_area6, i32 %gp_offset3
  %15 = bitcast i8* %14 to i32*
  %16 = add i32 %gp_offset3, 8
  store i32 %16, i32* %gp_offset_p2
  br label %vaarg.end.11

vaarg.in_mem.7:                                   ; preds = %sw.bb.1
  %overflow_arg_area_p8 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %12, i32 0, i32 2
  %overflow_arg_area9 = load i8*, i8** %overflow_arg_area_p8
  %17 = bitcast i8* %overflow_arg_area9 to i32*
  %overflow_arg_area.next10 = getelementptr i8, i8* %overflow_arg_area9, i32 8
  store i8* %overflow_arg_area.next10, i8** %overflow_arg_area_p8
  br label %vaarg.end.11

vaarg.end.11:                                     ; preds = %vaarg.in_mem.7, %vaarg.in_reg.5
  %vaarg.addr12 = phi i32* [ %15, %vaarg.in_reg.5 ], [ %17, %vaarg.in_mem.7 ]
  %18 = load i32, i32* %vaarg.addr12
  store i32 %18, i32* %d, align 4
  %19 = load i32, i32* %d, align 4
  %call13 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), i32 %19)
  br label %sw.epilog

sw.bb.14:                                         ; preds = %while.body
  %20 = load %struct.__va_list_tag*, %struct.__va_list_tag** %ap.addr, align 8
  %fp_offset_p = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %20, i32 0, i32 1
  %fp_offset = load i32, i32* %fp_offset_p
  %fits_in_fp = icmp ule i32 %fp_offset, 160
  br i1 %fits_in_fp, label %vaarg.in_reg.15, label %vaarg.in_mem.17

vaarg.in_reg.15:                                  ; preds = %sw.bb.14
  %21 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %20, i32 0, i32 3
  %reg_save_area16 = load i8*, i8** %21
  %22 = getelementptr i8, i8* %reg_save_area16, i32 %fp_offset
  %23 = bitcast i8* %22 to double*
  %24 = add i32 %fp_offset, 16
  store i32 %24, i32* %fp_offset_p
  br label %vaarg.end.21

vaarg.in_mem.17:                                  ; preds = %sw.bb.14
  %overflow_arg_area_p18 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %20, i32 0, i32 2
  %overflow_arg_area19 = load i8*, i8** %overflow_arg_area_p18
  %25 = bitcast i8* %overflow_arg_area19 to double*
  %overflow_arg_area.next20 = getelementptr i8, i8* %overflow_arg_area19, i32 8
  store i8* %overflow_arg_area.next20, i8** %overflow_arg_area_p18
  br label %vaarg.end.21

vaarg.end.21:                                     ; preds = %vaarg.in_mem.17, %vaarg.in_reg.15
  %vaarg.addr22 = phi double* [ %23, %vaarg.in_reg.15 ], [ %25, %vaarg.in_mem.17 ]
  %26 = load double, double* %vaarg.addr22
  %call23 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i32 0, i32 0), double %26)
  br label %sw.epilog

sw.bb.24:                                         ; preds = %while.body
  %27 = load %struct.__va_list_tag*, %struct.__va_list_tag** %ap.addr, align 8
  %gp_offset_p25 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %27, i32 0, i32 0
  %gp_offset26 = load i32, i32* %gp_offset_p25
  %fits_in_gp27 = icmp ule i32 %gp_offset26, 40
  br i1 %fits_in_gp27, label %vaarg.in_reg.28, label %vaarg.in_mem.30

vaarg.in_reg.28:                                  ; preds = %sw.bb.24
  %28 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %27, i32 0, i32 3
  %reg_save_area29 = load i8*, i8** %28
  %29 = getelementptr i8, i8* %reg_save_area29, i32 %gp_offset26
  %30 = bitcast i8* %29 to i64*
  %31 = add i32 %gp_offset26, 8
  store i32 %31, i32* %gp_offset_p25
  br label %vaarg.end.34

vaarg.in_mem.30:                                  ; preds = %sw.bb.24
  %overflow_arg_area_p31 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %27, i32 0, i32 2
  %overflow_arg_area32 = load i8*, i8** %overflow_arg_area_p31
  %32 = bitcast i8* %overflow_arg_area32 to i64*
  %overflow_arg_area.next33 = getelementptr i8, i8* %overflow_arg_area32, i32 8
  store i8* %overflow_arg_area.next33, i8** %overflow_arg_area_p31
  br label %vaarg.end.34

vaarg.end.34:                                     ; preds = %vaarg.in_mem.30, %vaarg.in_reg.28
  %vaarg.addr35 = phi i64* [ %30, %vaarg.in_reg.28 ], [ %32, %vaarg.in_mem.30 ]
  %33 = load i64, i64* %vaarg.addr35
  %call36 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i32 0, i32 0), i64 %33)
  br label %sw.epilog

sw.bb.37:                                         ; preds = %while.body
  %34 = load %struct.__va_list_tag*, %struct.__va_list_tag** %ap.addr, align 8
  %gp_offset_p38 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %34, i32 0, i32 0
  %gp_offset39 = load i32, i32* %gp_offset_p38
  %fits_in_gp40 = icmp ule i32 %gp_offset39, 40
  br i1 %fits_in_gp40, label %vaarg.in_reg.41, label %vaarg.in_mem.43

vaarg.in_reg.41:                                  ; preds = %sw.bb.37
  %35 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %34, i32 0, i32 3
  %reg_save_area42 = load i8*, i8** %35
  %36 = getelementptr i8, i8* %reg_save_area42, i32 %gp_offset39
  %37 = bitcast i8* %36 to i32*
  %38 = add i32 %gp_offset39, 8
  store i32 %38, i32* %gp_offset_p38
  br label %vaarg.end.47

vaarg.in_mem.43:                                  ; preds = %sw.bb.37
  %overflow_arg_area_p44 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %34, i32 0, i32 2
  %overflow_arg_area45 = load i8*, i8** %overflow_arg_area_p44
  %39 = bitcast i8* %overflow_arg_area45 to i32*
  %overflow_arg_area.next46 = getelementptr i8, i8* %overflow_arg_area45, i32 8
  store i8* %overflow_arg_area.next46, i8** %overflow_arg_area_p44
  br label %vaarg.end.47

vaarg.end.47:                                     ; preds = %vaarg.in_mem.43, %vaarg.in_reg.41
  %vaarg.addr48 = phi i32* [ %37, %vaarg.in_reg.41 ], [ %39, %vaarg.in_mem.43 ]
  %40 = load i32, i32* %vaarg.addr48
  %conv49 = trunc i32 %40 to i8
  store i8 %conv49, i8* %c, align 1
  %41 = load i8, i8* %c, align 1
  %conv50 = sext i8 %41 to i32
  %call51 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), i32 %conv50)
  br label %sw.epilog

sw.bb.52:                                         ; preds = %while.body
  %42 = load %struct.__va_list_tag*, %struct.__va_list_tag** %ap.addr, align 8
  %gp_offset_p53 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %42, i32 0, i32 0
  %gp_offset54 = load i32, i32* %gp_offset_p53
  %fits_in_gp55 = icmp ule i32 %gp_offset54, 40
  br i1 %fits_in_gp55, label %vaarg.in_reg.56, label %vaarg.in_mem.58

vaarg.in_reg.56:                                  ; preds = %sw.bb.52
  %43 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %42, i32 0, i32 3
  %reg_save_area57 = load i8*, i8** %43
  %44 = getelementptr i8, i8* %reg_save_area57, i32 %gp_offset54
  %45 = bitcast i8* %44 to %struct.DWordS_struct*
  %46 = add i32 %gp_offset54, 8
  store i32 %46, i32* %gp_offset_p53
  br label %vaarg.end.62

vaarg.in_mem.58:                                  ; preds = %sw.bb.52
  %overflow_arg_area_p59 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %42, i32 0, i32 2
  %overflow_arg_area60 = load i8*, i8** %overflow_arg_area_p59
  %47 = bitcast i8* %overflow_arg_area60 to %struct.DWordS_struct*
  %overflow_arg_area.next61 = getelementptr i8, i8* %overflow_arg_area60, i32 8
  store i8* %overflow_arg_area.next61, i8** %overflow_arg_area_p59
  br label %vaarg.end.62

vaarg.end.62:                                     ; preds = %vaarg.in_mem.58, %vaarg.in_reg.56
  %vaarg.addr63 = phi %struct.DWordS_struct* [ %45, %vaarg.in_reg.56 ], [ %47, %vaarg.in_mem.58 ]
  %48 = bitcast %struct.DWordS_struct* %dw to i8*
  %49 = bitcast %struct.DWordS_struct* %vaarg.addr63 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %48, i8* %49, i64 8, i32 4, i1 false)
  %i = getelementptr inbounds %struct.DWordS_struct, %struct.DWordS_struct* %dw, i32 0, i32 0
  %50 = load i32, i32* %i, align 4
  %c64 = getelementptr inbounds %struct.DWordS_struct, %struct.DWordS_struct* %dw, i32 0, i32 1
  %51 = load i8, i8* %c64, align 1
  %conv65 = sext i8 %51 to i32
  %call66 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i32 0, i32 0), i32 %50, i32 %conv65)
  br label %sw.epilog

sw.bb.67:                                         ; preds = %while.body
  %52 = load %struct.__va_list_tag*, %struct.__va_list_tag** %ap.addr, align 8
  %gp_offset_p68 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %52, i32 0, i32 0
  %gp_offset69 = load i32, i32* %gp_offset_p68
  %fits_in_gp70 = icmp ule i32 %gp_offset69, 40
  %fp_offset_p71 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %52, i32 0, i32 1
  %fp_offset72 = load i32, i32* %fp_offset_p71
  %fits_in_fp73 = icmp ule i32 %fp_offset72, 160
  %53 = and i1 %fits_in_gp70, %fits_in_fp73
  br i1 %53, label %vaarg.in_reg.74, label %vaarg.in_mem.76

vaarg.in_reg.74:                                  ; preds = %sw.bb.67
  %54 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %52, i32 0, i32 3
  %reg_save_area75 = load i8*, i8** %54
  %55 = bitcast %struct.QuadWordS_struct* %tmp to { i32, double }*
  %56 = getelementptr i8, i8* %reg_save_area75, i32 %gp_offset69
  %57 = getelementptr i8, i8* %reg_save_area75, i32 %fp_offset72
  %58 = bitcast i8* %56 to i32*
  %59 = load i32, i32* %58
  %60 = getelementptr inbounds { i32, double }, { i32, double }* %55, i32 0, i32 0
  store i32 %59, i32* %60
  %61 = bitcast i8* %57 to double*
  %62 = load double, double* %61
  %63 = getelementptr inbounds { i32, double }, { i32, double }* %55, i32 0, i32 1
  store double %62, double* %63
  %64 = bitcast { i32, double }* %55 to %struct.QuadWordS_struct*
  %65 = add i32 %gp_offset69, 8
  store i32 %65, i32* %gp_offset_p68
  %66 = add i32 %fp_offset72, 16
  store i32 %66, i32* %fp_offset_p71
  br label %vaarg.end.80

vaarg.in_mem.76:                                  ; preds = %sw.bb.67
  %overflow_arg_area_p77 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %52, i32 0, i32 2
  %overflow_arg_area78 = load i8*, i8** %overflow_arg_area_p77
  %67 = bitcast i8* %overflow_arg_area78 to %struct.QuadWordS_struct*
  %overflow_arg_area.next79 = getelementptr i8, i8* %overflow_arg_area78, i32 16
  store i8* %overflow_arg_area.next79, i8** %overflow_arg_area_p77
  br label %vaarg.end.80

vaarg.end.80:                                     ; preds = %vaarg.in_mem.76, %vaarg.in_reg.74
  %vaarg.addr81 = phi %struct.QuadWordS_struct* [ %64, %vaarg.in_reg.74 ], [ %67, %vaarg.in_mem.76 ]
  %68 = bitcast %struct.QuadWordS_struct* %qw to i8*
  %69 = bitcast %struct.QuadWordS_struct* %vaarg.addr81 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %68, i8* %69, i64 16, i32 8, i1 false)
  %i82 = getelementptr inbounds %struct.QuadWordS_struct, %struct.QuadWordS_struct* %qw, i32 0, i32 0
  %70 = load i32, i32* %i82, align 4
  %d83 = getelementptr inbounds %struct.QuadWordS_struct, %struct.QuadWordS_struct* %qw, i32 0, i32 1
  %71 = load double, double* %d83, align 8
  %call84 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i32 0, i32 0), i32 %70, double %71)
  br label %sw.epilog

sw.bb.85:                                         ; preds = %while.body
  %72 = load %struct.__va_list_tag*, %struct.__va_list_tag** %ap.addr, align 8
  %overflow_arg_area_p86 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %72, i32 0, i32 2
  %overflow_arg_area87 = load i8*, i8** %overflow_arg_area_p86
  %73 = bitcast i8* %overflow_arg_area87 to %struct.LargeS_struct*
  %overflow_arg_area.next88 = getelementptr i8, i8* %overflow_arg_area87, i32 32
  store i8* %overflow_arg_area.next88, i8** %overflow_arg_area_p86
  %74 = bitcast %struct.LargeS_struct* %ls to i8*
  %75 = bitcast %struct.LargeS_struct* %73 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %74, i8* %75, i64 32, i32 8, i1 false)
  %i89 = getelementptr inbounds %struct.LargeS_struct, %struct.LargeS_struct* %ls, i32 0, i32 0
  %76 = load i32, i32* %i89, align 4
  %d90 = getelementptr inbounds %struct.LargeS_struct, %struct.LargeS_struct* %ls, i32 0, i32 1
  %77 = load double, double* %d90, align 8
  %ptr = getelementptr inbounds %struct.LargeS_struct, %struct.LargeS_struct* %ls, i32 0, i32 2
  %78 = load %struct.DWordS_struct*, %struct.DWordS_struct** %ptr, align 8
  %cmp = icmp ne %struct.DWordS_struct* %78, null
  %conv91 = zext i1 %cmp to i32
  %j = getelementptr inbounds %struct.LargeS_struct, %struct.LargeS_struct* %ls, i32 0, i32 3
  %79 = load i32, i32* %j, align 4
  %call92 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i32 0, i32 0), i32 %76, double %77, i32 %conv91, i32 %79)
  br label %sw.epilog

sw.epilog:                                        ; preds = %while.body, %sw.bb.85, %vaarg.end.80, %vaarg.end.62, %vaarg.end.47, %vaarg.end.34, %vaarg.end.21, %vaarg.end.11, %vaarg.end
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %80 = load %struct.__va_list_tag*, %struct.__va_list_tag** %ap.addr, align 8
  %81 = bitcast %struct.__va_list_tag* %80 to i8*
  call void @llvm.va_end(i8* %81)
  ret void
}

declare i32 @printf(i8*, ...) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #2

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #2

; Function Attrs: nounwind uwtable
define void @testVaListArg(i8* %fmt, ...) #0 {
entry:
  %fmt.addr = alloca i8*, align 8
  %ap = alloca [1 x %struct.__va_list_tag], align 16
  store i8* %fmt, i8** %fmt.addr, align 8
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay1)
  %0 = load i8*, i8** %fmt.addr, align 8
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  call void @test(i8* %0, %struct.__va_list_tag* %arraydecay2)
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*
  call void @llvm.va_end(i8* %arraydecay34)
  ret void
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #2

; Function Attrs: nounwind uwtable
define void @testVaCopyArg(i8* %fmt, ...) #0 {
entry:
  %fmt.addr = alloca i8*, align 8
  %ap = alloca [1 x %struct.__va_list_tag], align 16
  %aq = alloca [1 x %struct.__va_list_tag], align 16
  store i8* %fmt, i8** %fmt.addr, align 8
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay1)
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %aq, i32 0, i32 0
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %0 = bitcast %struct.__va_list_tag* %arraydecay2 to i8*
  %1 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*
  call void @llvm.va_copy(i8* %0, i8* %1)
  %2 = load i8*, i8** %fmt.addr, align 8
  %arraydecay4 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %aq, i32 0, i32 0
  call void @test(i8* %2, %struct.__va_list_tag* %arraydecay4)
  %arraydecay5 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %aq, i32 0, i32 0
  %arraydecay56 = bitcast %struct.__va_list_tag* %arraydecay5 to i8*
  call void @llvm.va_end(i8* %arraydecay56)
  %arraydecay7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %arraydecay78 = bitcast %struct.__va_list_tag* %arraydecay7 to i8*
  call void @llvm.va_end(i8* %arraydecay78)
  ret void
}

; Function Attrs: nounwind
declare void @llvm.va_copy(i8*, i8*) #2

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
  call void (i8*, ...) @testVaListArg(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i32 0, i32 0), i32 -123, i32 97, i32 123, i32 6, i32 7, i32 8, i32 9, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i32 0, i32 0))
  call void (i8*, ...) @testVaCopyArg(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i32 0, i32 0), i32 -123, i32 97, i32 123, i32 6, i32 7, i32 8, i32 9, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i32 0, i32 0))
  call void (i8*, ...) @testVaListArg(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i32 0, i32 0), double 1.000000e+00, double 2.000000e+00, i32 32764, i64 12345677823423)
  call void (i8*, ...) @testVaCopyArg(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i32 0, i32 0), double 1.000000e+00, double 2.000000e+00, i32 32764, i64 12345677823423)
  %2 = bitcast %struct.DWordS_struct* %dw to i64*
  %3 = load i64, i64* %2, align 4
  %4 = bitcast %struct.QuadWordS_struct* %qw to { i32, double }*
  %5 = getelementptr { i32, double }, { i32, double }* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 1
  %7 = getelementptr { i32, double }, { i32, double }* %4, i32 0, i32 1
  %8 = load double, double* %7, align 1
  call void (i8*, ...) @testVaListArg(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i32 0, i32 0), i64 %3, i32 %6, double %8, %struct.LargeS_struct* byval align 8 %ls)
  %9 = bitcast %struct.DWordS_struct* %dw to i64*
  %10 = load i64, i64* %9, align 4
  %11 = bitcast %struct.QuadWordS_struct* %qw to { i32, double }*
  %12 = getelementptr { i32, double }, { i32, double }* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 1
  %14 = getelementptr { i32, double }, { i32, double }* %11, i32 0, i32 1
  %15 = load double, double* %14, align 1
  call void (i8*, ...) @testVaCopyArg(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i32 0, i32 0), i64 %10, i32 %13, double %15, %struct.LargeS_struct* byval align 8 %ls)
  ret i32 0
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
