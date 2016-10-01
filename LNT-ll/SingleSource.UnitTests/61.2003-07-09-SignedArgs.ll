; ModuleID = './SingleSource.UnitTests/61.2003-07-09-SignedArgs.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"getShort():\09%d %d %d %d %d %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"getUnknown():\09%d %d %d %d %d %d %d\0A\00", align 1

; Function Attrs: nounwind uwtable
define i32 @passShort(i8 signext %c, i16 signext %s) #0 {
entry:
  %c.addr = alloca i8, align 1
  %s.addr = alloca i16, align 2
  %c2 = alloca i8, align 1
  %c3 = alloca i8, align 1
  %s2 = alloca i16, align 2
  %i = alloca i32, align 4
  %s3 = alloca i16, align 2
  store i8 %c, i8* %c.addr, align 1
  store i16 %s, i16* %s.addr, align 2
  %0 = load i16, i16* %s.addr, align 2
  %conv = sext i16 %0 to i32
  %1 = load i8, i8* %c.addr, align 1
  %conv1 = sext i8 %1 to i32
  %add = add nsw i32 %conv, %conv1
  %conv2 = trunc i32 %add to i8
  store i8 %conv2, i8* %c2, align 1
  %2 = load i16, i16* %s.addr, align 2
  %conv3 = sext i16 %2 to i32
  %3 = load i8, i8* %c.addr, align 1
  %conv4 = sext i8 %3 to i32
  %sub = sub nsw i32 %conv3, %conv4
  %conv5 = trunc i32 %sub to i8
  store i8 %conv5, i8* %c3, align 1
  %4 = load i16, i16* %s.addr, align 2
  %conv6 = sext i16 %4 to i32
  %5 = load i8, i8* %c.addr, align 1
  %conv7 = sext i8 %5 to i32
  %mul = mul nsw i32 %conv6, %conv7
  %conv8 = trunc i32 %mul to i16
  store i16 %conv8, i16* %s2, align 2
  %6 = load i16, i16* %s.addr, align 2
  %conv9 = sext i16 %6 to i32
  %7 = load i16, i16* %s.addr, align 2
  %conv10 = sext i16 %7 to i32
  %mul11 = mul nsw i32 %conv9, %conv10
  %8 = load i8, i8* %c.addr, align 1
  %conv12 = sext i8 %8 to i32
  %mul13 = mul nsw i32 %mul11, %conv12
  %9 = load i8, i8* %c.addr, align 1
  %conv14 = sext i8 %9 to i32
  %mul15 = mul nsw i32 %mul13, %conv14
  store i32 %mul15, i32* %i, align 4
  %10 = load i8, i8* %c.addr, align 1
  %11 = load i8, i8* %c2, align 1
  %12 = load i8, i8* %c3, align 1
  %13 = load i16, i16* %s.addr, align 2
  %14 = load i16, i16* %s2, align 2
  %15 = load i32, i32* %i, align 4
  %call = call signext i16 @getShort(i8 signext %10, i8 signext %11, i8 signext %12, i16 signext %13, i16 signext %14, i32 %15)
  store i16 %call, i16* %s3, align 2
  %16 = load i8, i8* %c.addr, align 1
  %17 = load i8, i8* %c2, align 1
  %conv16 = sext i8 %17 to i32
  %18 = load i8, i8* %c3, align 1
  %conv17 = sext i8 %18 to i32
  %19 = load i16, i16* %s.addr, align 2
  %conv18 = sext i16 %19 to i32
  %20 = load i16, i16* %s2, align 2
  %conv19 = sext i16 %20 to i32
  %21 = load i16, i16* %s3, align 2
  %conv20 = sext i16 %21 to i32
  %22 = load i32, i32* %i, align 4
  %call21 = call i32 (i8, ...) @getUnknown(i8 signext %16, i32 %conv16, i32 %conv17, i32 %conv18, i32 %conv19, i32 %conv20, i32 %22)
  ret i32 %call21
}

; Function Attrs: nounwind uwtable
define signext i16 @getShort(i8 signext %c, i8 signext %c2, i8 signext %c3, i16 signext %s, i16 signext %s2, i32 %i) #0 {
entry:
  %c.addr = alloca i8, align 1
  %c2.addr = alloca i8, align 1
  %c3.addr = alloca i8, align 1
  %s.addr = alloca i16, align 2
  %s2.addr = alloca i16, align 2
  %i.addr = alloca i32, align 4
  %bc = alloca i32, align 4
  %bc2 = alloca i32, align 4
  %bc3 = alloca i32, align 4
  %bs = alloca i32, align 4
  %bs2 = alloca i32, align 4
  %bi = alloca i32, align 4
  store i8 %c, i8* %c.addr, align 1
  store i8 %c2, i8* %c2.addr, align 1
  store i8 %c3, i8* %c3.addr, align 1
  store i16 %s, i16* %s.addr, align 2
  store i16 %s2, i16* %s2.addr, align 2
  store i32 %i, i32* %i.addr, align 4
  %0 = load i8, i8* %c.addr, align 1
  %conv = sext i8 %0 to i32
  %cmp = icmp eq i32 %conv, -128
  %conv1 = zext i1 %cmp to i32
  store i32 %conv1, i32* %bc, align 4
  %1 = load i8, i8* %c2.addr, align 1
  %conv2 = sext i8 %1 to i32
  %cmp3 = icmp eq i32 %conv2, 116
  %conv4 = zext i1 %cmp3 to i32
  store i32 %conv4, i32* %bc2, align 4
  %2 = load i8, i8* %c3.addr, align 1
  %conv5 = sext i8 %2 to i32
  %cmp6 = icmp eq i32 %conv5, 116
  %conv7 = zext i1 %cmp6 to i32
  store i32 %conv7, i32* %bc3, align 4
  %3 = load i16, i16* %s.addr, align 2
  %conv8 = sext i16 %3 to i32
  %cmp9 = icmp eq i32 %conv8, -3852
  %conv10 = zext i1 %cmp9 to i32
  store i32 %conv10, i32* %bs, align 4
  %4 = load i16, i16* %s2.addr, align 2
  %conv11 = sext i16 %4 to i32
  %cmp12 = icmp eq i32 %conv11, -31232
  %conv13 = zext i1 %cmp12 to i32
  store i32 %conv13, i32* %bs2, align 4
  %5 = load i32, i32* %i.addr, align 4
  %cmp14 = icmp eq i32 %5, -1708916736
  %conv15 = zext i1 %cmp14 to i32
  store i32 %conv15, i32* %bi, align 4
  %6 = load i32, i32* %bc, align 4
  %7 = load i32, i32* %bc2, align 4
  %8 = load i32, i32* %bc3, align 4
  %9 = load i32, i32* %bs, align 4
  %10 = load i32, i32* %bs2, align 4
  %11 = load i32, i32* %bi, align 4
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i32 0, i32 0), i32 %6, i32 %7, i32 %8, i32 %9, i32 %10, i32 %11)
  %12 = load i8, i8* %c.addr, align 1
  %conv16 = sext i8 %12 to i32
  %13 = load i8, i8* %c2.addr, align 1
  %conv17 = sext i8 %13 to i32
  %14 = load i8, i8* %c3.addr, align 1
  %conv18 = sext i8 %14 to i32
  %15 = load i16, i16* %s.addr, align 2
  %conv19 = sext i16 %15 to i32
  %16 = load i16, i16* %s2.addr, align 2
  %conv20 = sext i16 %16 to i32
  %17 = load i32, i32* %i.addr, align 4
  %call21 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i32 0, i32 0), i32 %conv16, i32 %conv17, i32 %conv18, i32 %conv19, i32 %conv20, i32 %17)
  %18 = load i8, i8* %c.addr, align 1
  %conv22 = sext i8 %18 to i32
  %19 = load i8, i8* %c2.addr, align 1
  %conv23 = sext i8 %19 to i32
  %add = add nsw i32 %conv22, %conv23
  %20 = load i8, i8* %c3.addr, align 1
  %conv24 = sext i8 %20 to i32
  %add25 = add nsw i32 %add, %conv24
  %21 = load i16, i16* %s.addr, align 2
  %conv26 = sext i16 %21 to i32
  %add27 = add nsw i32 %add25, %conv26
  %22 = load i16, i16* %s2.addr, align 2
  %conv28 = sext i16 %22 to i32
  %add29 = add nsw i32 %add27, %conv28
  %23 = load i32, i32* %i.addr, align 4
  %conv30 = trunc i32 %23 to i16
  %conv31 = sext i16 %conv30 to i32
  %add32 = add nsw i32 %add29, %conv31
  %conv33 = trunc i32 %add32 to i16
  ret i16 %conv33
}

; Function Attrs: nounwind uwtable
define i32 @getUnknown(i8 signext %c, ...) #0 {
entry:
  %c.addr = alloca i8, align 1
  %c2 = alloca i8, align 1
  %c3 = alloca i8, align 1
  %s = alloca i16, align 2
  %s2 = alloca i16, align 2
  %s3 = alloca i16, align 2
  %i = alloca i32, align 4
  %ap = alloca [1 x %struct.__va_list_tag], align 16
  store i8 %c, i8* %c.addr, align 1
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
  %conv = trunc i32 %5 to i8
  store i8 %conv, i8* %c2, align 1
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %gp_offset_p4 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay3, i32 0, i32 0
  %gp_offset5 = load i32, i32* %gp_offset_p4
  %fits_in_gp6 = icmp ule i32 %gp_offset5, 40
  br i1 %fits_in_gp6, label %vaarg.in_reg.7, label %vaarg.in_mem.9

vaarg.in_reg.7:                                   ; preds = %vaarg.end
  %6 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay3, i32 0, i32 3
  %reg_save_area8 = load i8*, i8** %6
  %7 = getelementptr i8, i8* %reg_save_area8, i32 %gp_offset5
  %8 = bitcast i8* %7 to i32*
  %9 = add i32 %gp_offset5, 8
  store i32 %9, i32* %gp_offset_p4
  br label %vaarg.end.13

vaarg.in_mem.9:                                   ; preds = %vaarg.end
  %overflow_arg_area_p10 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay3, i32 0, i32 2
  %overflow_arg_area11 = load i8*, i8** %overflow_arg_area_p10
  %10 = bitcast i8* %overflow_arg_area11 to i32*
  %overflow_arg_area.next12 = getelementptr i8, i8* %overflow_arg_area11, i32 8
  store i8* %overflow_arg_area.next12, i8** %overflow_arg_area_p10
  br label %vaarg.end.13

vaarg.end.13:                                     ; preds = %vaarg.in_mem.9, %vaarg.in_reg.7
  %vaarg.addr14 = phi i32* [ %8, %vaarg.in_reg.7 ], [ %10, %vaarg.in_mem.9 ]
  %11 = load i32, i32* %vaarg.addr14
  %conv15 = trunc i32 %11 to i8
  store i8 %conv15, i8* %c3, align 1
  %arraydecay16 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %gp_offset_p17 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay16, i32 0, i32 0
  %gp_offset18 = load i32, i32* %gp_offset_p17
  %fits_in_gp19 = icmp ule i32 %gp_offset18, 40
  br i1 %fits_in_gp19, label %vaarg.in_reg.20, label %vaarg.in_mem.22

vaarg.in_reg.20:                                  ; preds = %vaarg.end.13
  %12 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay16, i32 0, i32 3
  %reg_save_area21 = load i8*, i8** %12
  %13 = getelementptr i8, i8* %reg_save_area21, i32 %gp_offset18
  %14 = bitcast i8* %13 to i32*
  %15 = add i32 %gp_offset18, 8
  store i32 %15, i32* %gp_offset_p17
  br label %vaarg.end.26

vaarg.in_mem.22:                                  ; preds = %vaarg.end.13
  %overflow_arg_area_p23 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay16, i32 0, i32 2
  %overflow_arg_area24 = load i8*, i8** %overflow_arg_area_p23
  %16 = bitcast i8* %overflow_arg_area24 to i32*
  %overflow_arg_area.next25 = getelementptr i8, i8* %overflow_arg_area24, i32 8
  store i8* %overflow_arg_area.next25, i8** %overflow_arg_area_p23
  br label %vaarg.end.26

vaarg.end.26:                                     ; preds = %vaarg.in_mem.22, %vaarg.in_reg.20
  %vaarg.addr27 = phi i32* [ %14, %vaarg.in_reg.20 ], [ %16, %vaarg.in_mem.22 ]
  %17 = load i32, i32* %vaarg.addr27
  %conv28 = trunc i32 %17 to i16
  store i16 %conv28, i16* %s, align 2
  %arraydecay29 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %gp_offset_p30 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay29, i32 0, i32 0
  %gp_offset31 = load i32, i32* %gp_offset_p30
  %fits_in_gp32 = icmp ule i32 %gp_offset31, 40
  br i1 %fits_in_gp32, label %vaarg.in_reg.33, label %vaarg.in_mem.35

vaarg.in_reg.33:                                  ; preds = %vaarg.end.26
  %18 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay29, i32 0, i32 3
  %reg_save_area34 = load i8*, i8** %18
  %19 = getelementptr i8, i8* %reg_save_area34, i32 %gp_offset31
  %20 = bitcast i8* %19 to i32*
  %21 = add i32 %gp_offset31, 8
  store i32 %21, i32* %gp_offset_p30
  br label %vaarg.end.39

vaarg.in_mem.35:                                  ; preds = %vaarg.end.26
  %overflow_arg_area_p36 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay29, i32 0, i32 2
  %overflow_arg_area37 = load i8*, i8** %overflow_arg_area_p36
  %22 = bitcast i8* %overflow_arg_area37 to i32*
  %overflow_arg_area.next38 = getelementptr i8, i8* %overflow_arg_area37, i32 8
  store i8* %overflow_arg_area.next38, i8** %overflow_arg_area_p36
  br label %vaarg.end.39

vaarg.end.39:                                     ; preds = %vaarg.in_mem.35, %vaarg.in_reg.33
  %vaarg.addr40 = phi i32* [ %20, %vaarg.in_reg.33 ], [ %22, %vaarg.in_mem.35 ]
  %23 = load i32, i32* %vaarg.addr40
  %conv41 = trunc i32 %23 to i16
  store i16 %conv41, i16* %s2, align 2
  %arraydecay42 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %gp_offset_p43 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay42, i32 0, i32 0
  %gp_offset44 = load i32, i32* %gp_offset_p43
  %fits_in_gp45 = icmp ule i32 %gp_offset44, 40
  br i1 %fits_in_gp45, label %vaarg.in_reg.46, label %vaarg.in_mem.48

vaarg.in_reg.46:                                  ; preds = %vaarg.end.39
  %24 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay42, i32 0, i32 3
  %reg_save_area47 = load i8*, i8** %24
  %25 = getelementptr i8, i8* %reg_save_area47, i32 %gp_offset44
  %26 = bitcast i8* %25 to i32*
  %27 = add i32 %gp_offset44, 8
  store i32 %27, i32* %gp_offset_p43
  br label %vaarg.end.52

vaarg.in_mem.48:                                  ; preds = %vaarg.end.39
  %overflow_arg_area_p49 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay42, i32 0, i32 2
  %overflow_arg_area50 = load i8*, i8** %overflow_arg_area_p49
  %28 = bitcast i8* %overflow_arg_area50 to i32*
  %overflow_arg_area.next51 = getelementptr i8, i8* %overflow_arg_area50, i32 8
  store i8* %overflow_arg_area.next51, i8** %overflow_arg_area_p49
  br label %vaarg.end.52

vaarg.end.52:                                     ; preds = %vaarg.in_mem.48, %vaarg.in_reg.46
  %vaarg.addr53 = phi i32* [ %26, %vaarg.in_reg.46 ], [ %28, %vaarg.in_mem.48 ]
  %29 = load i32, i32* %vaarg.addr53
  %conv54 = trunc i32 %29 to i16
  store i16 %conv54, i16* %s3, align 2
  %arraydecay55 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %gp_offset_p56 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay55, i32 0, i32 0
  %gp_offset57 = load i32, i32* %gp_offset_p56
  %fits_in_gp58 = icmp ule i32 %gp_offset57, 40
  br i1 %fits_in_gp58, label %vaarg.in_reg.59, label %vaarg.in_mem.61

vaarg.in_reg.59:                                  ; preds = %vaarg.end.52
  %30 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay55, i32 0, i32 3
  %reg_save_area60 = load i8*, i8** %30
  %31 = getelementptr i8, i8* %reg_save_area60, i32 %gp_offset57
  %32 = bitcast i8* %31 to i32*
  %33 = add i32 %gp_offset57, 8
  store i32 %33, i32* %gp_offset_p56
  br label %vaarg.end.65

vaarg.in_mem.61:                                  ; preds = %vaarg.end.52
  %overflow_arg_area_p62 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay55, i32 0, i32 2
  %overflow_arg_area63 = load i8*, i8** %overflow_arg_area_p62
  %34 = bitcast i8* %overflow_arg_area63 to i32*
  %overflow_arg_area.next64 = getelementptr i8, i8* %overflow_arg_area63, i32 8
  store i8* %overflow_arg_area.next64, i8** %overflow_arg_area_p62
  br label %vaarg.end.65

vaarg.end.65:                                     ; preds = %vaarg.in_mem.61, %vaarg.in_reg.59
  %vaarg.addr66 = phi i32* [ %32, %vaarg.in_reg.59 ], [ %34, %vaarg.in_mem.61 ]
  %35 = load i32, i32* %vaarg.addr66
  store i32 %35, i32* %i, align 4
  %arraydecay67 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %arraydecay6768 = bitcast %struct.__va_list_tag* %arraydecay67 to i8*
  call void @llvm.va_end(i8* %arraydecay6768)
  %36 = load i8, i8* %c.addr, align 1
  %conv69 = sext i8 %36 to i32
  %37 = load i8, i8* %c2, align 1
  %conv70 = sext i8 %37 to i32
  %38 = load i8, i8* %c3, align 1
  %conv71 = sext i8 %38 to i32
  %39 = load i16, i16* %s, align 2
  %conv72 = sext i16 %39 to i32
  %40 = load i16, i16* %s2, align 2
  %conv73 = sext i16 %40 to i32
  %41 = load i16, i16* %s3, align 2
  %conv74 = sext i16 %41 to i32
  %42 = load i32, i32* %i, align 4
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i32 0, i32 0), i32 %conv69, i32 %conv70, i32 %conv71, i32 %conv72, i32 %conv73, i32 %conv74, i32 %42)
  %43 = load i8, i8* %c.addr, align 1
  %conv75 = sext i8 %43 to i32
  %44 = load i8, i8* %c2, align 1
  %conv76 = sext i8 %44 to i32
  %add = add nsw i32 %conv75, %conv76
  %45 = load i8, i8* %c3, align 1
  %conv77 = sext i8 %45 to i32
  %add78 = add nsw i32 %add, %conv77
  %46 = load i16, i16* %s, align 2
  %conv79 = sext i16 %46 to i32
  %add80 = add nsw i32 %add78, %conv79
  %47 = load i16, i16* %s2, align 2
  %conv81 = sext i16 %47 to i32
  %add82 = add nsw i32 %add80, %conv81
  %48 = load i16, i16* %s3, align 2
  %conv83 = sext i16 %48 to i32
  %add84 = add nsw i32 %add82, %conv83
  %49 = load i32, i32* %i, align 4
  %add85 = add nsw i32 %add84, %49
  ret i32 %add85
}

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  store i32 0, i32* %retval
  %call = call i32 @passShort(i8 signext -128, i16 signext -3852)
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i32 %call)
  ret i32 0
}

declare i32 @printf(i8*, ...) #1

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #2

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
