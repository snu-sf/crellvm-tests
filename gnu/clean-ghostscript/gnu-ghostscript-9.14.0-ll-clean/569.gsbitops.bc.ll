; ModuleID = './gsbitops.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gs_int_rect_s = type { %struct.gs_int_point_s, %struct.gs_int_point_s }
%struct.gs_int_point_s = type { i32, i32 }
%struct.bits_plane_s = type { %union.bpd_, i32, i32, i32 }
%union.bpd_ = type { i8* }

@mono_copy_masks = constant [17 x i16] [i16 -1, i16 -129, i16 -193, i16 -225, i16 -241, i16 -249, i16 -253, i16 -255, i16 -256, i16 32512, i16 16128, i16 7936, i16 3840, i16 1792, i16 768, i16 256, i16 0], align 16
@mono_fill_masks = constant [33 x i32] [i32 -1, i32 -129, i32 -193, i32 -225, i32 -241, i32 -249, i32 -253, i32 -255, i32 -256, i32 -33024, i32 -49408, i32 -57600, i32 -61696, i32 -63744, i32 -64768, i32 -65280, i32 -65536, i32 -8454144, i32 -12648448, i32 -14745600, i32 -15794176, i32 -16318464, i32 -16580608, i32 -16711680, i32 -16777216, i32 2130706432, i32 1056964608, i32 520093696, i32 251658240, i32 117440512, i32 50331648, i32 16777216, i32 0], align 16
@bits_bounding_box.first_1 = internal constant [16 x i8] c"\04\03\02\02\01\01\01\01\00\00\00\00\00\00\00\00", align 16
@bits_bounding_box.last_1 = internal constant [16 x i8] c"\00\04\03\04\02\04\03\04\01\04\03\04\02\04\03\04", align 16
@byte_acegbdfh_to_abcdefgh = external constant [256 x i8], align 16

; Function Attrs: nounwind uwtable
define void @bits_fill_rectangle(i8* %dest, i32 %dest_bit, i32 %draster, i32 %pattern, i32 %width_bits, i32 %height) #0 {
entry:
  %dest.addr = alloca i8*, align 8
  %dest_bit.addr = alloca i32, align 4
  %draster.addr = alloca i32, align 4
  %pattern.addr = alloca i32, align 4
  %width_bits.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  %bit = alloca i32, align 4
  %right_mask = alloca i32, align 4
  %line_count = alloca i32, align 4
  %ptr = alloca i32*, align 8
  %last_bit = alloca i32, align 4
  %mask = alloca i32, align 4
  %last = alloca i32, align 4
  %byte_count = alloca i32, align 4
  store i8* %dest, i8** %dest.addr, align 8, !tbaa !1
  store i32 %dest_bit, i32* %dest_bit.addr, align 4, !tbaa !5
  store i32 %draster, i32* %draster.addr, align 4, !tbaa !5
  store i32 %pattern, i32* %pattern.addr, align 4, !tbaa !5
  store i32 %width_bits, i32* %width_bits.addr, align 4, !tbaa !5
  store i32 %height, i32* %height.addr, align 4, !tbaa !5
  %0 = bitcast i32* %bit to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %right_mask to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast i32* %line_count to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = load i32, i32* %height.addr, align 4, !tbaa !5
  store i32 %3, i32* %line_count, align 4, !tbaa !5
  %4 = bitcast i32** %ptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = bitcast i32* %last_bit to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = load i32, i32* %dest_bit.addr, align 4, !tbaa !5
  %shr = ashr i32 %6, 3
  %and = and i32 %shr, -4
  %7 = load i8*, i8** %dest.addr, align 8, !tbaa !1
  %idx.ext = sext i32 %and to i64
  %add.ptr = getelementptr inbounds i8, i8* %7, i64 %idx.ext
  store i8* %add.ptr, i8** %dest.addr, align 8, !tbaa !1
  %8 = load i8*, i8** %dest.addr, align 8, !tbaa !1
  %9 = bitcast i8* %8 to i32*
  store i32* %9, i32** %ptr, align 8, !tbaa !1
  %10 = load i32, i32* %dest_bit.addr, align 4, !tbaa !5
  %and1 = and i32 %10, 31
  store i32 %and1, i32* %bit, align 4, !tbaa !5
  %11 = load i32, i32* %width_bits.addr, align 4, !tbaa !5
  %12 = load i32, i32* %bit, align 4, !tbaa !5
  %add = add i32 %11, %12
  %sub = sub i32 %add, 33
  store i32 %sub, i32* %last_bit, align 4, !tbaa !5
  %13 = load i32, i32* %last_bit, align 4, !tbaa !5
  %cmp = icmp slt i32 %13, 0
  br i1 %cmp, label %if.then, label %if.else.34

if.then:                                          ; preds = %entry
  %14 = load i32, i32* %width_bits.addr, align 4, !tbaa !5
  %15 = load i32, i32* %bit, align 4, !tbaa !5
  %add2 = add i32 %14, %15
  %idxprom = zext i32 %add2 to i64
  %arrayidx = getelementptr inbounds [33 x i32], [33 x i32]* @mono_fill_masks, i32 0, i64 %idxprom
  %16 = load i32, i32* %arrayidx, align 4, !tbaa !5
  %neg = xor i32 %16, -1
  %17 = load i32, i32* %bit, align 4, !tbaa !5
  %idxprom3 = zext i32 %17 to i64
  %arrayidx4 = getelementptr inbounds [33 x i32], [33 x i32]* @mono_fill_masks, i32 0, i64 %idxprom3
  %18 = load i32, i32* %arrayidx4, align 4, !tbaa !5
  %and5 = and i32 %neg, %18
  store i32 %and5, i32* %right_mask, align 4, !tbaa !5
  %19 = load i32, i32* %pattern.addr, align 4, !tbaa !5
  %cmp6 = icmp eq i32 %19, 0
  br i1 %cmp6, label %if.then.7, label %if.else

if.then.7:                                        ; preds = %if.then
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.then.7
  %20 = load i32, i32* %right_mask, align 4, !tbaa !5
  %neg8 = xor i32 %20, -1
  %21 = load i32*, i32** %ptr, align 8, !tbaa !1
  %22 = load i32, i32* %21, align 4, !tbaa !5
  %and9 = and i32 %22, %neg8
  store i32 %and9, i32* %21, align 4, !tbaa !5
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %23 = load i32*, i32** %ptr, align 8, !tbaa !1
  %24 = bitcast i32* %23 to i8*
  %25 = load i32, i32* %draster.addr, align 4, !tbaa !5
  %idx.ext10 = zext i32 %25 to i64
  %add.ptr11 = getelementptr inbounds i8, i8* %24, i64 %idx.ext10
  %26 = bitcast i8* %add.ptr11 to i32*
  store i32* %26, i32** %ptr, align 8, !tbaa !1
  %27 = load i32, i32* %line_count, align 4, !tbaa !5
  %dec = add nsw i32 %27, -1
  store i32 %dec, i32* %line_count, align 4, !tbaa !5
  %tobool = icmp ne i32 %dec, 0
  br i1 %tobool, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  br label %if.end.33

if.else:                                          ; preds = %if.then
  %28 = load i32, i32* %pattern.addr, align 4, !tbaa !5
  %cmp12 = icmp eq i32 %28, -1
  br i1 %cmp12, label %if.then.13, label %if.else.21

if.then.13:                                       ; preds = %if.else
  br label %do.body.14

do.body.14:                                       ; preds = %do.cond.15, %if.then.13
  %29 = load i32, i32* %right_mask, align 4, !tbaa !5
  %30 = load i32*, i32** %ptr, align 8, !tbaa !1
  %31 = load i32, i32* %30, align 4, !tbaa !5
  %or = or i32 %31, %29
  store i32 %or, i32* %30, align 4, !tbaa !5
  br label %do.cond.15

do.cond.15:                                       ; preds = %do.body.14
  %32 = load i32*, i32** %ptr, align 8, !tbaa !1
  %33 = bitcast i32* %32 to i8*
  %34 = load i32, i32* %draster.addr, align 4, !tbaa !5
  %idx.ext16 = zext i32 %34 to i64
  %add.ptr17 = getelementptr inbounds i8, i8* %33, i64 %idx.ext16
  %35 = bitcast i8* %add.ptr17 to i32*
  store i32* %35, i32** %ptr, align 8, !tbaa !1
  %36 = load i32, i32* %line_count, align 4, !tbaa !5
  %dec18 = add nsw i32 %36, -1
  store i32 %dec18, i32* %line_count, align 4, !tbaa !5
  %tobool19 = icmp ne i32 %dec18, 0
  br i1 %tobool19, label %do.body.14, label %do.end.20

do.end.20:                                        ; preds = %do.cond.15
  br label %if.end

if.else.21:                                       ; preds = %if.else
  br label %do.body.22

do.body.22:                                       ; preds = %do.cond.27, %if.else.21
  %37 = load i32*, i32** %ptr, align 8, !tbaa !1
  %38 = load i32, i32* %37, align 4, !tbaa !5
  %39 = load i32, i32* %right_mask, align 4, !tbaa !5
  %neg23 = xor i32 %39, -1
  %and24 = and i32 %38, %neg23
  %40 = load i32, i32* %pattern.addr, align 4, !tbaa !5
  %41 = load i32, i32* %right_mask, align 4, !tbaa !5
  %and25 = and i32 %40, %41
  %or26 = or i32 %and24, %and25
  %42 = load i32*, i32** %ptr, align 8, !tbaa !1
  store i32 %or26, i32* %42, align 4, !tbaa !5
  br label %do.cond.27

do.cond.27:                                       ; preds = %do.body.22
  %43 = load i32*, i32** %ptr, align 8, !tbaa !1
  %44 = bitcast i32* %43 to i8*
  %45 = load i32, i32* %draster.addr, align 4, !tbaa !5
  %idx.ext28 = zext i32 %45 to i64
  %add.ptr29 = getelementptr inbounds i8, i8* %44, i64 %idx.ext28
  %46 = bitcast i8* %add.ptr29 to i32*
  store i32* %46, i32** %ptr, align 8, !tbaa !1
  %47 = load i32, i32* %line_count, align 4, !tbaa !5
  %dec30 = add nsw i32 %47, -1
  store i32 %dec30, i32* %line_count, align 4, !tbaa !5
  %tobool31 = icmp ne i32 %dec30, 0
  br i1 %tobool31, label %do.body.22, label %do.end.32

do.end.32:                                        ; preds = %do.cond.27
  br label %if.end

if.end:                                           ; preds = %do.end.32, %do.end.20
  br label %if.end.33

if.end.33:                                        ; preds = %if.end, %do.end
  br label %if.end.208

if.else.34:                                       ; preds = %entry
  %48 = bitcast i32* %mask to i8*
  call void @llvm.lifetime.start(i64 4, i8* %48) #1
  %49 = bitcast i32* %last to i8*
  call void @llvm.lifetime.start(i64 4, i8* %49) #1
  %50 = load i32, i32* %last_bit, align 4, !tbaa !5
  %shr35 = ashr i32 %50, 5
  store i32 %shr35, i32* %last, align 4, !tbaa !5
  %51 = load i32, i32* %bit, align 4, !tbaa !5
  %idxprom36 = zext i32 %51 to i64
  %arrayidx37 = getelementptr inbounds [33 x i32], [33 x i32]* @mono_fill_masks, i32 0, i64 %idxprom36
  %52 = load i32, i32* %arrayidx37, align 4, !tbaa !5
  store i32 %52, i32* %mask, align 4, !tbaa !5
  %53 = load i32, i32* %last_bit, align 4, !tbaa !5
  %and38 = and i32 %53, 31
  %add39 = add nsw i32 %and38, 1
  %idxprom40 = sext i32 %add39 to i64
  %arrayidx41 = getelementptr inbounds [33 x i32], [33 x i32]* @mono_fill_masks, i32 0, i64 %idxprom40
  %54 = load i32, i32* %arrayidx41, align 4, !tbaa !5
  %neg42 = xor i32 %54, -1
  store i32 %neg42, i32* %right_mask, align 4, !tbaa !5
  %55 = load i32, i32* %last, align 4, !tbaa !5
  switch i32 %55, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.90
  ]

sw.bb:                                            ; preds = %if.else.34
  %56 = load i32, i32* %pattern.addr, align 4, !tbaa !5
  %cmp43 = icmp eq i32 %56, 0
  br i1 %cmp43, label %if.then.44, label %if.else.57

if.then.44:                                       ; preds = %sw.bb
  br label %do.body.45

do.body.45:                                       ; preds = %do.cond.51, %if.then.44
  %57 = load i32, i32* %mask, align 4, !tbaa !5
  %neg46 = xor i32 %57, -1
  %58 = load i32*, i32** %ptr, align 8, !tbaa !1
  %59 = load i32, i32* %58, align 4, !tbaa !5
  %and47 = and i32 %59, %neg46
  store i32 %and47, i32* %58, align 4, !tbaa !5
  %60 = load i32, i32* %right_mask, align 4, !tbaa !5
  %neg48 = xor i32 %60, -1
  %61 = load i32*, i32** %ptr, align 8, !tbaa !1
  %arrayidx49 = getelementptr inbounds i32, i32* %61, i64 1
  %62 = load i32, i32* %arrayidx49, align 4, !tbaa !5
  %and50 = and i32 %62, %neg48
  store i32 %and50, i32* %arrayidx49, align 4, !tbaa !5
  br label %do.cond.51

do.cond.51:                                       ; preds = %do.body.45
  %63 = load i32*, i32** %ptr, align 8, !tbaa !1
  %64 = bitcast i32* %63 to i8*
  %65 = load i32, i32* %draster.addr, align 4, !tbaa !5
  %idx.ext52 = zext i32 %65 to i64
  %add.ptr53 = getelementptr inbounds i8, i8* %64, i64 %idx.ext52
  %66 = bitcast i8* %add.ptr53 to i32*
  store i32* %66, i32** %ptr, align 8, !tbaa !1
  %67 = load i32, i32* %line_count, align 4, !tbaa !5
  %dec54 = add nsw i32 %67, -1
  store i32 %dec54, i32* %line_count, align 4, !tbaa !5
  %tobool55 = icmp ne i32 %dec54, 0
  br i1 %tobool55, label %do.body.45, label %do.end.56

do.end.56:                                        ; preds = %do.cond.51
  br label %if.end.89

if.else.57:                                       ; preds = %sw.bb
  %68 = load i32, i32* %pattern.addr, align 4, !tbaa !5
  %cmp58 = icmp eq i32 %68, -1
  br i1 %cmp58, label %if.then.59, label %if.else.70

if.then.59:                                       ; preds = %if.else.57
  br label %do.body.60

do.body.60:                                       ; preds = %do.cond.64, %if.then.59
  %69 = load i32, i32* %mask, align 4, !tbaa !5
  %70 = load i32*, i32** %ptr, align 8, !tbaa !1
  %71 = load i32, i32* %70, align 4, !tbaa !5
  %or61 = or i32 %71, %69
  store i32 %or61, i32* %70, align 4, !tbaa !5
  %72 = load i32, i32* %right_mask, align 4, !tbaa !5
  %73 = load i32*, i32** %ptr, align 8, !tbaa !1
  %arrayidx62 = getelementptr inbounds i32, i32* %73, i64 1
  %74 = load i32, i32* %arrayidx62, align 4, !tbaa !5
  %or63 = or i32 %74, %72
  store i32 %or63, i32* %arrayidx62, align 4, !tbaa !5
  br label %do.cond.64

do.cond.64:                                       ; preds = %do.body.60
  %75 = load i32*, i32** %ptr, align 8, !tbaa !1
  %76 = bitcast i32* %75 to i8*
  %77 = load i32, i32* %draster.addr, align 4, !tbaa !5
  %idx.ext65 = zext i32 %77 to i64
  %add.ptr66 = getelementptr inbounds i8, i8* %76, i64 %idx.ext65
  %78 = bitcast i8* %add.ptr66 to i32*
  store i32* %78, i32** %ptr, align 8, !tbaa !1
  %79 = load i32, i32* %line_count, align 4, !tbaa !5
  %dec67 = add nsw i32 %79, -1
  store i32 %dec67, i32* %line_count, align 4, !tbaa !5
  %tobool68 = icmp ne i32 %dec67, 0
  br i1 %tobool68, label %do.body.60, label %do.end.69

do.end.69:                                        ; preds = %do.cond.64
  br label %if.end.88

if.else.70:                                       ; preds = %if.else.57
  br label %do.body.71

do.body.71:                                       ; preds = %do.cond.82, %if.else.70
  %80 = load i32*, i32** %ptr, align 8, !tbaa !1
  %81 = load i32, i32* %80, align 4, !tbaa !5
  %82 = load i32, i32* %mask, align 4, !tbaa !5
  %neg72 = xor i32 %82, -1
  %and73 = and i32 %81, %neg72
  %83 = load i32, i32* %pattern.addr, align 4, !tbaa !5
  %84 = load i32, i32* %mask, align 4, !tbaa !5
  %and74 = and i32 %83, %84
  %or75 = or i32 %and73, %and74
  %85 = load i32*, i32** %ptr, align 8, !tbaa !1
  store i32 %or75, i32* %85, align 4, !tbaa !5
  %86 = load i32*, i32** %ptr, align 8, !tbaa !1
  %arrayidx76 = getelementptr inbounds i32, i32* %86, i64 1
  %87 = load i32, i32* %arrayidx76, align 4, !tbaa !5
  %88 = load i32, i32* %right_mask, align 4, !tbaa !5
  %neg77 = xor i32 %88, -1
  %and78 = and i32 %87, %neg77
  %89 = load i32, i32* %pattern.addr, align 4, !tbaa !5
  %90 = load i32, i32* %right_mask, align 4, !tbaa !5
  %and79 = and i32 %89, %90
  %or80 = or i32 %and78, %and79
  %91 = load i32*, i32** %ptr, align 8, !tbaa !1
  %arrayidx81 = getelementptr inbounds i32, i32* %91, i64 1
  store i32 %or80, i32* %arrayidx81, align 4, !tbaa !5
  br label %do.cond.82

do.cond.82:                                       ; preds = %do.body.71
  %92 = load i32*, i32** %ptr, align 8, !tbaa !1
  %93 = bitcast i32* %92 to i8*
  %94 = load i32, i32* %draster.addr, align 4, !tbaa !5
  %idx.ext83 = zext i32 %94 to i64
  %add.ptr84 = getelementptr inbounds i8, i8* %93, i64 %idx.ext83
  %95 = bitcast i8* %add.ptr84 to i32*
  store i32* %95, i32** %ptr, align 8, !tbaa !1
  %96 = load i32, i32* %line_count, align 4, !tbaa !5
  %dec85 = add nsw i32 %96, -1
  store i32 %dec85, i32* %line_count, align 4, !tbaa !5
  %tobool86 = icmp ne i32 %dec85, 0
  br i1 %tobool86, label %do.body.71, label %do.end.87

do.end.87:                                        ; preds = %do.cond.82
  br label %if.end.88

if.end.88:                                        ; preds = %do.end.87, %do.end.69
  br label %if.end.89

if.end.89:                                        ; preds = %if.end.88, %do.end.56
  br label %sw.epilog

sw.bb.90:                                         ; preds = %if.else.34
  %97 = load i32, i32* %pattern.addr, align 4, !tbaa !5
  %cmp91 = icmp eq i32 %97, 0
  br i1 %cmp91, label %if.then.92, label %if.else.106

if.then.92:                                       ; preds = %sw.bb.90
  br label %do.body.93

do.body.93:                                       ; preds = %do.cond.100, %if.then.92
  %98 = load i32, i32* %mask, align 4, !tbaa !5
  %neg94 = xor i32 %98, -1
  %99 = load i32*, i32** %ptr, align 8, !tbaa !1
  %100 = load i32, i32* %99, align 4, !tbaa !5
  %and95 = and i32 %100, %neg94
  store i32 %and95, i32* %99, align 4, !tbaa !5
  %101 = load i32*, i32** %ptr, align 8, !tbaa !1
  %arrayidx96 = getelementptr inbounds i32, i32* %101, i64 1
  store i32 0, i32* %arrayidx96, align 4, !tbaa !5
  %102 = load i32, i32* %right_mask, align 4, !tbaa !5
  %neg97 = xor i32 %102, -1
  %103 = load i32*, i32** %ptr, align 8, !tbaa !1
  %arrayidx98 = getelementptr inbounds i32, i32* %103, i64 2
  %104 = load i32, i32* %arrayidx98, align 4, !tbaa !5
  %and99 = and i32 %104, %neg97
  store i32 %and99, i32* %arrayidx98, align 4, !tbaa !5
  br label %do.cond.100

do.cond.100:                                      ; preds = %do.body.93
  %105 = load i32*, i32** %ptr, align 8, !tbaa !1
  %106 = bitcast i32* %105 to i8*
  %107 = load i32, i32* %draster.addr, align 4, !tbaa !5
  %idx.ext101 = zext i32 %107 to i64
  %add.ptr102 = getelementptr inbounds i8, i8* %106, i64 %idx.ext101
  %108 = bitcast i8* %add.ptr102 to i32*
  store i32* %108, i32** %ptr, align 8, !tbaa !1
  %109 = load i32, i32* %line_count, align 4, !tbaa !5
  %dec103 = add nsw i32 %109, -1
  store i32 %dec103, i32* %line_count, align 4, !tbaa !5
  %tobool104 = icmp ne i32 %dec103, 0
  br i1 %tobool104, label %do.body.93, label %do.end.105

do.end.105:                                       ; preds = %do.cond.100
  br label %if.end.140

if.else.106:                                      ; preds = %sw.bb.90
  %110 = load i32, i32* %pattern.addr, align 4, !tbaa !5
  %cmp107 = icmp eq i32 %110, -1
  br i1 %cmp107, label %if.then.108, label %if.else.120

if.then.108:                                      ; preds = %if.else.106
  br label %do.body.109

do.body.109:                                      ; preds = %do.cond.114, %if.then.108
  %111 = load i32, i32* %mask, align 4, !tbaa !5
  %112 = load i32*, i32** %ptr, align 8, !tbaa !1
  %113 = load i32, i32* %112, align 4, !tbaa !5
  %or110 = or i32 %113, %111
  store i32 %or110, i32* %112, align 4, !tbaa !5
  %114 = load i32*, i32** %ptr, align 8, !tbaa !1
  %arrayidx111 = getelementptr inbounds i32, i32* %114, i64 1
  store i32 -1, i32* %arrayidx111, align 4, !tbaa !5
  %115 = load i32, i32* %right_mask, align 4, !tbaa !5
  %116 = load i32*, i32** %ptr, align 8, !tbaa !1
  %arrayidx112 = getelementptr inbounds i32, i32* %116, i64 2
  %117 = load i32, i32* %arrayidx112, align 4, !tbaa !5
  %or113 = or i32 %117, %115
  store i32 %or113, i32* %arrayidx112, align 4, !tbaa !5
  br label %do.cond.114

do.cond.114:                                      ; preds = %do.body.109
  %118 = load i32*, i32** %ptr, align 8, !tbaa !1
  %119 = bitcast i32* %118 to i8*
  %120 = load i32, i32* %draster.addr, align 4, !tbaa !5
  %idx.ext115 = zext i32 %120 to i64
  %add.ptr116 = getelementptr inbounds i8, i8* %119, i64 %idx.ext115
  %121 = bitcast i8* %add.ptr116 to i32*
  store i32* %121, i32** %ptr, align 8, !tbaa !1
  %122 = load i32, i32* %line_count, align 4, !tbaa !5
  %dec117 = add nsw i32 %122, -1
  store i32 %dec117, i32* %line_count, align 4, !tbaa !5
  %tobool118 = icmp ne i32 %dec117, 0
  br i1 %tobool118, label %do.body.109, label %do.end.119

do.end.119:                                       ; preds = %do.cond.114
  br label %if.end.139

if.else.120:                                      ; preds = %if.else.106
  br label %do.body.121

do.body.121:                                      ; preds = %do.cond.133, %if.else.120
  %123 = load i32*, i32** %ptr, align 8, !tbaa !1
  %124 = load i32, i32* %123, align 4, !tbaa !5
  %125 = load i32, i32* %mask, align 4, !tbaa !5
  %neg122 = xor i32 %125, -1
  %and123 = and i32 %124, %neg122
  %126 = load i32, i32* %pattern.addr, align 4, !tbaa !5
  %127 = load i32, i32* %mask, align 4, !tbaa !5
  %and124 = and i32 %126, %127
  %or125 = or i32 %and123, %and124
  %128 = load i32*, i32** %ptr, align 8, !tbaa !1
  store i32 %or125, i32* %128, align 4, !tbaa !5
  %129 = load i32, i32* %pattern.addr, align 4, !tbaa !5
  %130 = load i32*, i32** %ptr, align 8, !tbaa !1
  %arrayidx126 = getelementptr inbounds i32, i32* %130, i64 1
  store i32 %129, i32* %arrayidx126, align 4, !tbaa !5
  %131 = load i32*, i32** %ptr, align 8, !tbaa !1
  %arrayidx127 = getelementptr inbounds i32, i32* %131, i64 2
  %132 = load i32, i32* %arrayidx127, align 4, !tbaa !5
  %133 = load i32, i32* %right_mask, align 4, !tbaa !5
  %neg128 = xor i32 %133, -1
  %and129 = and i32 %132, %neg128
  %134 = load i32, i32* %pattern.addr, align 4, !tbaa !5
  %135 = load i32, i32* %right_mask, align 4, !tbaa !5
  %and130 = and i32 %134, %135
  %or131 = or i32 %and129, %and130
  %136 = load i32*, i32** %ptr, align 8, !tbaa !1
  %arrayidx132 = getelementptr inbounds i32, i32* %136, i64 2
  store i32 %or131, i32* %arrayidx132, align 4, !tbaa !5
  br label %do.cond.133

do.cond.133:                                      ; preds = %do.body.121
  %137 = load i32*, i32** %ptr, align 8, !tbaa !1
  %138 = bitcast i32* %137 to i8*
  %139 = load i32, i32* %draster.addr, align 4, !tbaa !5
  %idx.ext134 = zext i32 %139 to i64
  %add.ptr135 = getelementptr inbounds i8, i8* %138, i64 %idx.ext134
  %140 = bitcast i8* %add.ptr135 to i32*
  store i32* %140, i32** %ptr, align 8, !tbaa !1
  %141 = load i32, i32* %line_count, align 4, !tbaa !5
  %dec136 = add nsw i32 %141, -1
  store i32 %dec136, i32* %line_count, align 4, !tbaa !5
  %tobool137 = icmp ne i32 %dec136, 0
  br i1 %tobool137, label %do.body.121, label %do.end.138

do.end.138:                                       ; preds = %do.cond.133
  br label %if.end.139

if.end.139:                                       ; preds = %do.end.138, %do.end.119
  br label %if.end.140

if.end.140:                                       ; preds = %if.end.139, %do.end.105
  br label %sw.epilog

sw.default:                                       ; preds = %if.else.34
  %142 = bitcast i32* %byte_count to i8*
  call void @llvm.lifetime.start(i64 4, i8* %142) #1
  %143 = load i32, i32* %last_bit, align 4, !tbaa !5
  %shr141 = ashr i32 %143, 3
  %and142 = and i32 %shr141, -4
  store i32 %and142, i32* %byte_count, align 4, !tbaa !5
  %144 = load i32, i32* %pattern.addr, align 4, !tbaa !5
  %cmp143 = icmp eq i32 %144, 0
  br i1 %cmp143, label %if.then.144, label %if.else.160

if.then.144:                                      ; preds = %sw.default
  br label %do.body.145

do.body.145:                                      ; preds = %do.cond.154, %if.then.144
  %145 = load i32, i32* %mask, align 4, !tbaa !5
  %neg146 = xor i32 %145, -1
  %146 = load i32*, i32** %ptr, align 8, !tbaa !1
  %147 = load i32, i32* %146, align 4, !tbaa !5
  %and147 = and i32 %147, %neg146
  store i32 %and147, i32* %146, align 4, !tbaa !5
  %148 = load i32*, i32** %ptr, align 8, !tbaa !1
  %add.ptr148 = getelementptr inbounds i32, i32* %148, i64 1
  %149 = bitcast i32* %add.ptr148 to i8*
  %150 = load i32, i32* %byte_count, align 4, !tbaa !5
  %conv = zext i32 %150 to i64
  %call = call i8* @memset(i8* %149, i32 0, i64 %conv) #3
  %151 = load i32, i32* %right_mask, align 4, !tbaa !5
  %neg149 = xor i32 %151, -1
  %152 = load i32, i32* %last, align 4, !tbaa !5
  %add150 = add nsw i32 %152, 1
  %idxprom151 = sext i32 %add150 to i64
  %153 = load i32*, i32** %ptr, align 8, !tbaa !1
  %arrayidx152 = getelementptr inbounds i32, i32* %153, i64 %idxprom151
  %154 = load i32, i32* %arrayidx152, align 4, !tbaa !5
  %and153 = and i32 %154, %neg149
  store i32 %and153, i32* %arrayidx152, align 4, !tbaa !5
  br label %do.cond.154

do.cond.154:                                      ; preds = %do.body.145
  %155 = load i32*, i32** %ptr, align 8, !tbaa !1
  %156 = bitcast i32* %155 to i8*
  %157 = load i32, i32* %draster.addr, align 4, !tbaa !5
  %idx.ext155 = zext i32 %157 to i64
  %add.ptr156 = getelementptr inbounds i8, i8* %156, i64 %idx.ext155
  %158 = bitcast i8* %add.ptr156 to i32*
  store i32* %158, i32** %ptr, align 8, !tbaa !1
  %159 = load i32, i32* %line_count, align 4, !tbaa !5
  %dec157 = add nsw i32 %159, -1
  store i32 %dec157, i32* %line_count, align 4, !tbaa !5
  %tobool158 = icmp ne i32 %dec157, 0
  br i1 %tobool158, label %do.body.145, label %do.end.159

do.end.159:                                       ; preds = %do.cond.154
  br label %if.end.207

if.else.160:                                      ; preds = %sw.default
  %160 = load i32, i32* %pattern.addr, align 4, !tbaa !5
  %cmp161 = icmp eq i32 %160, -1
  br i1 %cmp161, label %if.then.163, label %if.else.179

if.then.163:                                      ; preds = %if.else.160
  br label %do.body.164

do.body.164:                                      ; preds = %do.cond.173, %if.then.163
  %161 = load i32, i32* %mask, align 4, !tbaa !5
  %162 = load i32*, i32** %ptr, align 8, !tbaa !1
  %163 = load i32, i32* %162, align 4, !tbaa !5
  %or165 = or i32 %163, %161
  store i32 %or165, i32* %162, align 4, !tbaa !5
  %164 = load i32*, i32** %ptr, align 8, !tbaa !1
  %add.ptr166 = getelementptr inbounds i32, i32* %164, i64 1
  %165 = bitcast i32* %add.ptr166 to i8*
  %166 = load i32, i32* %byte_count, align 4, !tbaa !5
  %conv167 = zext i32 %166 to i64
  %call168 = call i8* @memset(i8* %165, i32 255, i64 %conv167) #3
  %167 = load i32, i32* %right_mask, align 4, !tbaa !5
  %168 = load i32, i32* %last, align 4, !tbaa !5
  %add169 = add nsw i32 %168, 1
  %idxprom170 = sext i32 %add169 to i64
  %169 = load i32*, i32** %ptr, align 8, !tbaa !1
  %arrayidx171 = getelementptr inbounds i32, i32* %169, i64 %idxprom170
  %170 = load i32, i32* %arrayidx171, align 4, !tbaa !5
  %or172 = or i32 %170, %167
  store i32 %or172, i32* %arrayidx171, align 4, !tbaa !5
  br label %do.cond.173

do.cond.173:                                      ; preds = %do.body.164
  %171 = load i32*, i32** %ptr, align 8, !tbaa !1
  %172 = bitcast i32* %171 to i8*
  %173 = load i32, i32* %draster.addr, align 4, !tbaa !5
  %idx.ext174 = zext i32 %173 to i64
  %add.ptr175 = getelementptr inbounds i8, i8* %172, i64 %idx.ext174
  %174 = bitcast i8* %add.ptr175 to i32*
  store i32* %174, i32** %ptr, align 8, !tbaa !1
  %175 = load i32, i32* %line_count, align 4, !tbaa !5
  %dec176 = add nsw i32 %175, -1
  store i32 %dec176, i32* %line_count, align 4, !tbaa !5
  %tobool177 = icmp ne i32 %dec176, 0
  br i1 %tobool177, label %do.body.164, label %do.end.178

do.end.178:                                       ; preds = %do.cond.173
  br label %if.end.206

if.else.179:                                      ; preds = %if.else.160
  br label %do.body.180

do.body.180:                                      ; preds = %do.cond.200, %if.else.179
  %176 = load i32*, i32** %ptr, align 8, !tbaa !1
  %177 = load i32, i32* %176, align 4, !tbaa !5
  %178 = load i32, i32* %mask, align 4, !tbaa !5
  %neg181 = xor i32 %178, -1
  %and182 = and i32 %177, %neg181
  %179 = load i32, i32* %pattern.addr, align 4, !tbaa !5
  %180 = load i32, i32* %mask, align 4, !tbaa !5
  %and183 = and i32 %179, %180
  %or184 = or i32 %and182, %and183
  %181 = load i32*, i32** %ptr, align 8, !tbaa !1
  store i32 %or184, i32* %181, align 4, !tbaa !5
  %182 = load i32*, i32** %ptr, align 8, !tbaa !1
  %add.ptr185 = getelementptr inbounds i32, i32* %182, i64 1
  %183 = bitcast i32* %add.ptr185 to i8*
  %184 = load i32, i32* %pattern.addr, align 4, !tbaa !5
  %conv186 = trunc i32 %184 to i8
  %conv187 = zext i8 %conv186 to i32
  %185 = load i32, i32* %byte_count, align 4, !tbaa !5
  %conv188 = zext i32 %185 to i64
  %call189 = call i8* @memset(i8* %183, i32 %conv187, i64 %conv188) #3
  %186 = load i32, i32* %last, align 4, !tbaa !5
  %add190 = add nsw i32 %186, 1
  %idxprom191 = sext i32 %add190 to i64
  %187 = load i32*, i32** %ptr, align 8, !tbaa !1
  %arrayidx192 = getelementptr inbounds i32, i32* %187, i64 %idxprom191
  %188 = load i32, i32* %arrayidx192, align 4, !tbaa !5
  %189 = load i32, i32* %right_mask, align 4, !tbaa !5
  %neg193 = xor i32 %189, -1
  %and194 = and i32 %188, %neg193
  %190 = load i32, i32* %pattern.addr, align 4, !tbaa !5
  %191 = load i32, i32* %right_mask, align 4, !tbaa !5
  %and195 = and i32 %190, %191
  %or196 = or i32 %and194, %and195
  %192 = load i32, i32* %last, align 4, !tbaa !5
  %add197 = add nsw i32 %192, 1
  %idxprom198 = sext i32 %add197 to i64
  %193 = load i32*, i32** %ptr, align 8, !tbaa !1
  %arrayidx199 = getelementptr inbounds i32, i32* %193, i64 %idxprom198
  store i32 %or196, i32* %arrayidx199, align 4, !tbaa !5
  br label %do.cond.200

do.cond.200:                                      ; preds = %do.body.180
  %194 = load i32*, i32** %ptr, align 8, !tbaa !1
  %195 = bitcast i32* %194 to i8*
  %196 = load i32, i32* %draster.addr, align 4, !tbaa !5
  %idx.ext201 = zext i32 %196 to i64
  %add.ptr202 = getelementptr inbounds i8, i8* %195, i64 %idx.ext201
  %197 = bitcast i8* %add.ptr202 to i32*
  store i32* %197, i32** %ptr, align 8, !tbaa !1
  %198 = load i32, i32* %line_count, align 4, !tbaa !5
  %dec203 = add nsw i32 %198, -1
  store i32 %dec203, i32* %line_count, align 4, !tbaa !5
  %tobool204 = icmp ne i32 %dec203, 0
  br i1 %tobool204, label %do.body.180, label %do.end.205

do.end.205:                                       ; preds = %do.cond.200
  br label %if.end.206

if.end.206:                                       ; preds = %do.end.205, %do.end.178
  br label %if.end.207

if.end.207:                                       ; preds = %if.end.206, %do.end.159
  %199 = bitcast i32* %byte_count to i8*
  call void @llvm.lifetime.end(i64 4, i8* %199) #1
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end.207, %if.end.140, %if.end.89
  %200 = bitcast i32* %last to i8*
  call void @llvm.lifetime.end(i64 4, i8* %200) #1
  %201 = bitcast i32* %mask to i8*
  call void @llvm.lifetime.end(i64 4, i8* %201) #1
  br label %if.end.208

if.end.208:                                       ; preds = %sw.epilog, %if.end.33
  %202 = bitcast i32* %last_bit to i8*
  call void @llvm.lifetime.end(i64 4, i8* %202) #1
  %203 = bitcast i32** %ptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %203) #1
  %204 = bitcast i32* %line_count to i8*
  call void @llvm.lifetime.end(i64 4, i8* %204) #1
  %205 = bitcast i32* %right_mask to i8*
  call void @llvm.lifetime.end(i64 4, i8* %205) #1
  %206 = bitcast i32* %bit to i8*
  call void @llvm.lifetime.end(i64 4, i8* %206) #1
  ret void
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: nounwind
declare i8* @memset(i8*, i32, i64) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define void @bits_fill_rectangle_masked(i8* %dest, i32 %dest_bit, i32 %draster, i32 %pattern, i32 %src_mask, i32 %width_bits, i32 %height) #0 {
entry:
  %dest.addr = alloca i8*, align 8
  %dest_bit.addr = alloca i32, align 4
  %draster.addr = alloca i32, align 4
  %pattern.addr = alloca i32, align 4
  %src_mask.addr = alloca i32, align 4
  %width_bits.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  %bit = alloca i32, align 4
  %right_mask = alloca i32, align 4
  %line_count = alloca i32, align 4
  %ptr = alloca i32*, align 8
  %last_bit = alloca i32, align 4
  %mask = alloca i32, align 4
  %last = alloca i32, align 4
  %i = alloca i32, align 4
  store i8* %dest, i8** %dest.addr, align 8, !tbaa !1
  store i32 %dest_bit, i32* %dest_bit.addr, align 4, !tbaa !5
  store i32 %draster, i32* %draster.addr, align 4, !tbaa !5
  store i32 %pattern, i32* %pattern.addr, align 4, !tbaa !5
  store i32 %src_mask, i32* %src_mask.addr, align 4, !tbaa !5
  store i32 %width_bits, i32* %width_bits.addr, align 4, !tbaa !5
  store i32 %height, i32* %height.addr, align 4, !tbaa !5
  %0 = bitcast i32* %bit to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %right_mask to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast i32* %line_count to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = load i32, i32* %height.addr, align 4, !tbaa !5
  store i32 %3, i32* %line_count, align 4, !tbaa !5
  %4 = bitcast i32** %ptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = bitcast i32* %last_bit to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = load i32, i32* %dest_bit.addr, align 4, !tbaa !5
  %shr = ashr i32 %6, 3
  %and = and i32 %shr, -4
  %7 = load i8*, i8** %dest.addr, align 8, !tbaa !1
  %idx.ext = sext i32 %and to i64
  %add.ptr = getelementptr inbounds i8, i8* %7, i64 %idx.ext
  store i8* %add.ptr, i8** %dest.addr, align 8, !tbaa !1
  %8 = load i8*, i8** %dest.addr, align 8, !tbaa !1
  %9 = bitcast i8* %8 to i32*
  store i32* %9, i32** %ptr, align 8, !tbaa !1
  %10 = load i32, i32* %dest_bit.addr, align 4, !tbaa !5
  %and1 = and i32 %10, 31
  store i32 %and1, i32* %bit, align 4, !tbaa !5
  %11 = load i32, i32* %width_bits.addr, align 4, !tbaa !5
  %12 = load i32, i32* %bit, align 4, !tbaa !5
  %add = add i32 %11, %12
  %sub = sub i32 %add, 33
  store i32 %sub, i32* %last_bit, align 4, !tbaa !5
  %13 = load i32, i32* %last_bit, align 4, !tbaa !5
  %cmp = icmp slt i32 %13, 0
  br i1 %cmp, label %if.then, label %if.else.36

if.then:                                          ; preds = %entry
  %14 = load i32, i32* %width_bits.addr, align 4, !tbaa !5
  %15 = load i32, i32* %bit, align 4, !tbaa !5
  %add2 = add i32 %14, %15
  %idxprom = zext i32 %add2 to i64
  %arrayidx = getelementptr inbounds [33 x i32], [33 x i32]* @mono_fill_masks, i32 0, i64 %idxprom
  %16 = load i32, i32* %arrayidx, align 4, !tbaa !5
  %neg = xor i32 %16, -1
  %17 = load i32, i32* %bit, align 4, !tbaa !5
  %idxprom3 = zext i32 %17 to i64
  %arrayidx4 = getelementptr inbounds [33 x i32], [33 x i32]* @mono_fill_masks, i32 0, i64 %idxprom3
  %18 = load i32, i32* %arrayidx4, align 4, !tbaa !5
  %and5 = and i32 %neg, %18
  store i32 %and5, i32* %right_mask, align 4, !tbaa !5
  %19 = load i32, i32* %src_mask.addr, align 4, !tbaa !5
  %neg6 = xor i32 %19, -1
  %20 = load i32, i32* %right_mask, align 4, !tbaa !5
  %and7 = and i32 %20, %neg6
  store i32 %and7, i32* %right_mask, align 4, !tbaa !5
  %21 = load i32, i32* %pattern.addr, align 4, !tbaa !5
  %cmp8 = icmp eq i32 %21, 0
  br i1 %cmp8, label %if.then.9, label %if.else

if.then.9:                                        ; preds = %if.then
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.then.9
  %22 = load i32, i32* %right_mask, align 4, !tbaa !5
  %neg10 = xor i32 %22, -1
  %23 = load i32*, i32** %ptr, align 8, !tbaa !1
  %24 = load i32, i32* %23, align 4, !tbaa !5
  %and11 = and i32 %24, %neg10
  store i32 %and11, i32* %23, align 4, !tbaa !5
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %25 = load i32*, i32** %ptr, align 8, !tbaa !1
  %26 = bitcast i32* %25 to i8*
  %27 = load i32, i32* %draster.addr, align 4, !tbaa !5
  %idx.ext12 = zext i32 %27 to i64
  %add.ptr13 = getelementptr inbounds i8, i8* %26, i64 %idx.ext12
  %28 = bitcast i8* %add.ptr13 to i32*
  store i32* %28, i32** %ptr, align 8, !tbaa !1
  %29 = load i32, i32* %line_count, align 4, !tbaa !5
  %dec = add nsw i32 %29, -1
  store i32 %dec, i32* %line_count, align 4, !tbaa !5
  %tobool = icmp ne i32 %dec, 0
  br i1 %tobool, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  br label %if.end.35

if.else:                                          ; preds = %if.then
  %30 = load i32, i32* %pattern.addr, align 4, !tbaa !5
  %cmp14 = icmp eq i32 %30, -1
  br i1 %cmp14, label %if.then.15, label %if.else.23

if.then.15:                                       ; preds = %if.else
  br label %do.body.16

do.body.16:                                       ; preds = %do.cond.17, %if.then.15
  %31 = load i32, i32* %right_mask, align 4, !tbaa !5
  %32 = load i32*, i32** %ptr, align 8, !tbaa !1
  %33 = load i32, i32* %32, align 4, !tbaa !5
  %or = or i32 %33, %31
  store i32 %or, i32* %32, align 4, !tbaa !5
  br label %do.cond.17

do.cond.17:                                       ; preds = %do.body.16
  %34 = load i32*, i32** %ptr, align 8, !tbaa !1
  %35 = bitcast i32* %34 to i8*
  %36 = load i32, i32* %draster.addr, align 4, !tbaa !5
  %idx.ext18 = zext i32 %36 to i64
  %add.ptr19 = getelementptr inbounds i8, i8* %35, i64 %idx.ext18
  %37 = bitcast i8* %add.ptr19 to i32*
  store i32* %37, i32** %ptr, align 8, !tbaa !1
  %38 = load i32, i32* %line_count, align 4, !tbaa !5
  %dec20 = add nsw i32 %38, -1
  store i32 %dec20, i32* %line_count, align 4, !tbaa !5
  %tobool21 = icmp ne i32 %dec20, 0
  br i1 %tobool21, label %do.body.16, label %do.end.22

do.end.22:                                        ; preds = %do.cond.17
  br label %if.end

if.else.23:                                       ; preds = %if.else
  br label %do.body.24

do.body.24:                                       ; preds = %do.cond.29, %if.else.23
  %39 = load i32*, i32** %ptr, align 8, !tbaa !1
  %40 = load i32, i32* %39, align 4, !tbaa !5
  %41 = load i32, i32* %right_mask, align 4, !tbaa !5
  %neg25 = xor i32 %41, -1
  %and26 = and i32 %40, %neg25
  %42 = load i32, i32* %pattern.addr, align 4, !tbaa !5
  %43 = load i32, i32* %right_mask, align 4, !tbaa !5
  %and27 = and i32 %42, %43
  %or28 = or i32 %and26, %and27
  %44 = load i32*, i32** %ptr, align 8, !tbaa !1
  store i32 %or28, i32* %44, align 4, !tbaa !5
  br label %do.cond.29

do.cond.29:                                       ; preds = %do.body.24
  %45 = load i32*, i32** %ptr, align 8, !tbaa !1
  %46 = bitcast i32* %45 to i8*
  %47 = load i32, i32* %draster.addr, align 4, !tbaa !5
  %idx.ext30 = zext i32 %47 to i64
  %add.ptr31 = getelementptr inbounds i8, i8* %46, i64 %idx.ext30
  %48 = bitcast i8* %add.ptr31 to i32*
  store i32* %48, i32** %ptr, align 8, !tbaa !1
  %49 = load i32, i32* %line_count, align 4, !tbaa !5
  %dec32 = add nsw i32 %49, -1
  store i32 %dec32, i32* %line_count, align 4, !tbaa !5
  %tobool33 = icmp ne i32 %dec32, 0
  br i1 %tobool33, label %do.body.24, label %do.end.34

do.end.34:                                        ; preds = %do.cond.29
  br label %if.end

if.end:                                           ; preds = %do.end.34, %do.end.22
  br label %if.end.35

if.end.35:                                        ; preds = %if.end, %do.end
  br label %if.end.219

if.else.36:                                       ; preds = %entry
  %50 = bitcast i32* %mask to i8*
  call void @llvm.lifetime.start(i64 4, i8* %50) #1
  %51 = bitcast i32* %last to i8*
  call void @llvm.lifetime.start(i64 4, i8* %51) #1
  %52 = load i32, i32* %last_bit, align 4, !tbaa !5
  %shr37 = ashr i32 %52, 5
  store i32 %shr37, i32* %last, align 4, !tbaa !5
  %53 = load i32, i32* %bit, align 4, !tbaa !5
  %idxprom38 = zext i32 %53 to i64
  %arrayidx39 = getelementptr inbounds [33 x i32], [33 x i32]* @mono_fill_masks, i32 0, i64 %idxprom38
  %54 = load i32, i32* %arrayidx39, align 4, !tbaa !5
  store i32 %54, i32* %mask, align 4, !tbaa !5
  %55 = load i32, i32* %last_bit, align 4, !tbaa !5
  %and40 = and i32 %55, 31
  %add41 = add nsw i32 %and40, 1
  %idxprom42 = sext i32 %add41 to i64
  %arrayidx43 = getelementptr inbounds [33 x i32], [33 x i32]* @mono_fill_masks, i32 0, i64 %idxprom42
  %56 = load i32, i32* %arrayidx43, align 4, !tbaa !5
  %neg44 = xor i32 %56, -1
  store i32 %neg44, i32* %right_mask, align 4, !tbaa !5
  %57 = load i32, i32* %src_mask.addr, align 4, !tbaa !5
  %neg45 = xor i32 %57, -1
  %58 = load i32, i32* %mask, align 4, !tbaa !5
  %and46 = and i32 %58, %neg45
  store i32 %and46, i32* %mask, align 4, !tbaa !5
  %59 = load i32, i32* %src_mask.addr, align 4, !tbaa !5
  %neg47 = xor i32 %59, -1
  %60 = load i32, i32* %right_mask, align 4, !tbaa !5
  %and48 = and i32 %60, %neg47
  store i32 %and48, i32* %right_mask, align 4, !tbaa !5
  %61 = load i32, i32* %last, align 4, !tbaa !5
  switch i32 %61, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.96
  ]

sw.bb:                                            ; preds = %if.else.36
  %62 = load i32, i32* %pattern.addr, align 4, !tbaa !5
  %cmp49 = icmp eq i32 %62, 0
  br i1 %cmp49, label %if.then.50, label %if.else.63

if.then.50:                                       ; preds = %sw.bb
  br label %do.body.51

do.body.51:                                       ; preds = %do.cond.57, %if.then.50
  %63 = load i32, i32* %mask, align 4, !tbaa !5
  %neg52 = xor i32 %63, -1
  %64 = load i32*, i32** %ptr, align 8, !tbaa !1
  %65 = load i32, i32* %64, align 4, !tbaa !5
  %and53 = and i32 %65, %neg52
  store i32 %and53, i32* %64, align 4, !tbaa !5
  %66 = load i32, i32* %right_mask, align 4, !tbaa !5
  %neg54 = xor i32 %66, -1
  %67 = load i32*, i32** %ptr, align 8, !tbaa !1
  %arrayidx55 = getelementptr inbounds i32, i32* %67, i64 1
  %68 = load i32, i32* %arrayidx55, align 4, !tbaa !5
  %and56 = and i32 %68, %neg54
  store i32 %and56, i32* %arrayidx55, align 4, !tbaa !5
  br label %do.cond.57

do.cond.57:                                       ; preds = %do.body.51
  %69 = load i32*, i32** %ptr, align 8, !tbaa !1
  %70 = bitcast i32* %69 to i8*
  %71 = load i32, i32* %draster.addr, align 4, !tbaa !5
  %idx.ext58 = zext i32 %71 to i64
  %add.ptr59 = getelementptr inbounds i8, i8* %70, i64 %idx.ext58
  %72 = bitcast i8* %add.ptr59 to i32*
  store i32* %72, i32** %ptr, align 8, !tbaa !1
  %73 = load i32, i32* %line_count, align 4, !tbaa !5
  %dec60 = add nsw i32 %73, -1
  store i32 %dec60, i32* %line_count, align 4, !tbaa !5
  %tobool61 = icmp ne i32 %dec60, 0
  br i1 %tobool61, label %do.body.51, label %do.end.62

do.end.62:                                        ; preds = %do.cond.57
  br label %if.end.95

if.else.63:                                       ; preds = %sw.bb
  %74 = load i32, i32* %pattern.addr, align 4, !tbaa !5
  %cmp64 = icmp eq i32 %74, -1
  br i1 %cmp64, label %if.then.65, label %if.else.76

if.then.65:                                       ; preds = %if.else.63
  br label %do.body.66

do.body.66:                                       ; preds = %do.cond.70, %if.then.65
  %75 = load i32, i32* %mask, align 4, !tbaa !5
  %76 = load i32*, i32** %ptr, align 8, !tbaa !1
  %77 = load i32, i32* %76, align 4, !tbaa !5
  %or67 = or i32 %77, %75
  store i32 %or67, i32* %76, align 4, !tbaa !5
  %78 = load i32, i32* %right_mask, align 4, !tbaa !5
  %79 = load i32*, i32** %ptr, align 8, !tbaa !1
  %arrayidx68 = getelementptr inbounds i32, i32* %79, i64 1
  %80 = load i32, i32* %arrayidx68, align 4, !tbaa !5
  %or69 = or i32 %80, %78
  store i32 %or69, i32* %arrayidx68, align 4, !tbaa !5
  br label %do.cond.70

do.cond.70:                                       ; preds = %do.body.66
  %81 = load i32*, i32** %ptr, align 8, !tbaa !1
  %82 = bitcast i32* %81 to i8*
  %83 = load i32, i32* %draster.addr, align 4, !tbaa !5
  %idx.ext71 = zext i32 %83 to i64
  %add.ptr72 = getelementptr inbounds i8, i8* %82, i64 %idx.ext71
  %84 = bitcast i8* %add.ptr72 to i32*
  store i32* %84, i32** %ptr, align 8, !tbaa !1
  %85 = load i32, i32* %line_count, align 4, !tbaa !5
  %dec73 = add nsw i32 %85, -1
  store i32 %dec73, i32* %line_count, align 4, !tbaa !5
  %tobool74 = icmp ne i32 %dec73, 0
  br i1 %tobool74, label %do.body.66, label %do.end.75

do.end.75:                                        ; preds = %do.cond.70
  br label %if.end.94

if.else.76:                                       ; preds = %if.else.63
  br label %do.body.77

do.body.77:                                       ; preds = %do.cond.88, %if.else.76
  %86 = load i32*, i32** %ptr, align 8, !tbaa !1
  %87 = load i32, i32* %86, align 4, !tbaa !5
  %88 = load i32, i32* %mask, align 4, !tbaa !5
  %neg78 = xor i32 %88, -1
  %and79 = and i32 %87, %neg78
  %89 = load i32, i32* %pattern.addr, align 4, !tbaa !5
  %90 = load i32, i32* %mask, align 4, !tbaa !5
  %and80 = and i32 %89, %90
  %or81 = or i32 %and79, %and80
  %91 = load i32*, i32** %ptr, align 8, !tbaa !1
  store i32 %or81, i32* %91, align 4, !tbaa !5
  %92 = load i32*, i32** %ptr, align 8, !tbaa !1
  %arrayidx82 = getelementptr inbounds i32, i32* %92, i64 1
  %93 = load i32, i32* %arrayidx82, align 4, !tbaa !5
  %94 = load i32, i32* %right_mask, align 4, !tbaa !5
  %neg83 = xor i32 %94, -1
  %and84 = and i32 %93, %neg83
  %95 = load i32, i32* %pattern.addr, align 4, !tbaa !5
  %96 = load i32, i32* %right_mask, align 4, !tbaa !5
  %and85 = and i32 %95, %96
  %or86 = or i32 %and84, %and85
  %97 = load i32*, i32** %ptr, align 8, !tbaa !1
  %arrayidx87 = getelementptr inbounds i32, i32* %97, i64 1
  store i32 %or86, i32* %arrayidx87, align 4, !tbaa !5
  br label %do.cond.88

do.cond.88:                                       ; preds = %do.body.77
  %98 = load i32*, i32** %ptr, align 8, !tbaa !1
  %99 = bitcast i32* %98 to i8*
  %100 = load i32, i32* %draster.addr, align 4, !tbaa !5
  %idx.ext89 = zext i32 %100 to i64
  %add.ptr90 = getelementptr inbounds i8, i8* %99, i64 %idx.ext89
  %101 = bitcast i8* %add.ptr90 to i32*
  store i32* %101, i32** %ptr, align 8, !tbaa !1
  %102 = load i32, i32* %line_count, align 4, !tbaa !5
  %dec91 = add nsw i32 %102, -1
  store i32 %dec91, i32* %line_count, align 4, !tbaa !5
  %tobool92 = icmp ne i32 %dec91, 0
  br i1 %tobool92, label %do.body.77, label %do.end.93

do.end.93:                                        ; preds = %do.cond.88
  br label %if.end.94

if.end.94:                                        ; preds = %do.end.93, %do.end.75
  br label %if.end.95

if.end.95:                                        ; preds = %if.end.94, %do.end.62
  br label %sw.epilog

sw.bb.96:                                         ; preds = %if.else.36
  %103 = load i32, i32* %pattern.addr, align 4, !tbaa !5
  %cmp97 = icmp eq i32 %103, 0
  br i1 %cmp97, label %if.then.98, label %if.else.113

if.then.98:                                       ; preds = %sw.bb.96
  br label %do.body.99

do.body.99:                                       ; preds = %do.cond.107, %if.then.98
  %104 = load i32, i32* %mask, align 4, !tbaa !5
  %neg100 = xor i32 %104, -1
  %105 = load i32*, i32** %ptr, align 8, !tbaa !1
  %106 = load i32, i32* %105, align 4, !tbaa !5
  %and101 = and i32 %106, %neg100
  store i32 %and101, i32* %105, align 4, !tbaa !5
  %107 = load i32, i32* %src_mask.addr, align 4, !tbaa !5
  %108 = load i32*, i32** %ptr, align 8, !tbaa !1
  %arrayidx102 = getelementptr inbounds i32, i32* %108, i64 1
  %109 = load i32, i32* %arrayidx102, align 4, !tbaa !5
  %and103 = and i32 %109, %107
  store i32 %and103, i32* %arrayidx102, align 4, !tbaa !5
  %110 = load i32, i32* %right_mask, align 4, !tbaa !5
  %neg104 = xor i32 %110, -1
  %111 = load i32*, i32** %ptr, align 8, !tbaa !1
  %arrayidx105 = getelementptr inbounds i32, i32* %111, i64 2
  %112 = load i32, i32* %arrayidx105, align 4, !tbaa !5
  %and106 = and i32 %112, %neg104
  store i32 %and106, i32* %arrayidx105, align 4, !tbaa !5
  br label %do.cond.107

do.cond.107:                                      ; preds = %do.body.99
  %113 = load i32*, i32** %ptr, align 8, !tbaa !1
  %114 = bitcast i32* %113 to i8*
  %115 = load i32, i32* %draster.addr, align 4, !tbaa !5
  %idx.ext108 = zext i32 %115 to i64
  %add.ptr109 = getelementptr inbounds i8, i8* %114, i64 %idx.ext108
  %116 = bitcast i8* %add.ptr109 to i32*
  store i32* %116, i32** %ptr, align 8, !tbaa !1
  %117 = load i32, i32* %line_count, align 4, !tbaa !5
  %dec110 = add nsw i32 %117, -1
  store i32 %dec110, i32* %line_count, align 4, !tbaa !5
  %tobool111 = icmp ne i32 %dec110, 0
  br i1 %tobool111, label %do.body.99, label %do.end.112

do.end.112:                                       ; preds = %do.cond.107
  br label %if.end.152

if.else.113:                                      ; preds = %sw.bb.96
  %118 = load i32, i32* %pattern.addr, align 4, !tbaa !5
  %cmp114 = icmp eq i32 %118, -1
  br i1 %cmp114, label %if.then.115, label %if.else.129

if.then.115:                                      ; preds = %if.else.113
  br label %do.body.116

do.body.116:                                      ; preds = %do.cond.123, %if.then.115
  %119 = load i32, i32* %mask, align 4, !tbaa !5
  %120 = load i32*, i32** %ptr, align 8, !tbaa !1
  %121 = load i32, i32* %120, align 4, !tbaa !5
  %or117 = or i32 %121, %119
  store i32 %or117, i32* %120, align 4, !tbaa !5
  %122 = load i32, i32* %src_mask.addr, align 4, !tbaa !5
  %neg118 = xor i32 %122, -1
  %123 = load i32*, i32** %ptr, align 8, !tbaa !1
  %arrayidx119 = getelementptr inbounds i32, i32* %123, i64 1
  %124 = load i32, i32* %arrayidx119, align 4, !tbaa !5
  %or120 = or i32 %124, %neg118
  store i32 %or120, i32* %arrayidx119, align 4, !tbaa !5
  %125 = load i32, i32* %right_mask, align 4, !tbaa !5
  %126 = load i32*, i32** %ptr, align 8, !tbaa !1
  %arrayidx121 = getelementptr inbounds i32, i32* %126, i64 2
  %127 = load i32, i32* %arrayidx121, align 4, !tbaa !5
  %or122 = or i32 %127, %125
  store i32 %or122, i32* %arrayidx121, align 4, !tbaa !5
  br label %do.cond.123

do.cond.123:                                      ; preds = %do.body.116
  %128 = load i32*, i32** %ptr, align 8, !tbaa !1
  %129 = bitcast i32* %128 to i8*
  %130 = load i32, i32* %draster.addr, align 4, !tbaa !5
  %idx.ext124 = zext i32 %130 to i64
  %add.ptr125 = getelementptr inbounds i8, i8* %129, i64 %idx.ext124
  %131 = bitcast i8* %add.ptr125 to i32*
  store i32* %131, i32** %ptr, align 8, !tbaa !1
  %132 = load i32, i32* %line_count, align 4, !tbaa !5
  %dec126 = add nsw i32 %132, -1
  store i32 %dec126, i32* %line_count, align 4, !tbaa !5
  %tobool127 = icmp ne i32 %dec126, 0
  br i1 %tobool127, label %do.body.116, label %do.end.128

do.end.128:                                       ; preds = %do.cond.123
  br label %if.end.151

if.else.129:                                      ; preds = %if.else.113
  br label %do.body.130

do.body.130:                                      ; preds = %do.cond.145, %if.else.129
  %133 = load i32*, i32** %ptr, align 8, !tbaa !1
  %134 = load i32, i32* %133, align 4, !tbaa !5
  %135 = load i32, i32* %mask, align 4, !tbaa !5
  %neg131 = xor i32 %135, -1
  %and132 = and i32 %134, %neg131
  %136 = load i32, i32* %pattern.addr, align 4, !tbaa !5
  %137 = load i32, i32* %mask, align 4, !tbaa !5
  %and133 = and i32 %136, %137
  %or134 = or i32 %and132, %and133
  %138 = load i32*, i32** %ptr, align 8, !tbaa !1
  store i32 %or134, i32* %138, align 4, !tbaa !5
  %139 = load i32*, i32** %ptr, align 8, !tbaa !1
  %arrayidx135 = getelementptr inbounds i32, i32* %139, i64 1
  %140 = load i32, i32* %arrayidx135, align 4, !tbaa !5
  %141 = load i32, i32* %src_mask.addr, align 4, !tbaa !5
  %and136 = and i32 %140, %141
  %142 = load i32, i32* %pattern.addr, align 4, !tbaa !5
  %or137 = or i32 %and136, %142
  %143 = load i32*, i32** %ptr, align 8, !tbaa !1
  %arrayidx138 = getelementptr inbounds i32, i32* %143, i64 1
  store i32 %or137, i32* %arrayidx138, align 4, !tbaa !5
  %144 = load i32*, i32** %ptr, align 8, !tbaa !1
  %arrayidx139 = getelementptr inbounds i32, i32* %144, i64 2
  %145 = load i32, i32* %arrayidx139, align 4, !tbaa !5
  %146 = load i32, i32* %right_mask, align 4, !tbaa !5
  %neg140 = xor i32 %146, -1
  %and141 = and i32 %145, %neg140
  %147 = load i32, i32* %pattern.addr, align 4, !tbaa !5
  %148 = load i32, i32* %right_mask, align 4, !tbaa !5
  %and142 = and i32 %147, %148
  %or143 = or i32 %and141, %and142
  %149 = load i32*, i32** %ptr, align 8, !tbaa !1
  %arrayidx144 = getelementptr inbounds i32, i32* %149, i64 2
  store i32 %or143, i32* %arrayidx144, align 4, !tbaa !5
  br label %do.cond.145

do.cond.145:                                      ; preds = %do.body.130
  %150 = load i32*, i32** %ptr, align 8, !tbaa !1
  %151 = bitcast i32* %150 to i8*
  %152 = load i32, i32* %draster.addr, align 4, !tbaa !5
  %idx.ext146 = zext i32 %152 to i64
  %add.ptr147 = getelementptr inbounds i8, i8* %151, i64 %idx.ext146
  %153 = bitcast i8* %add.ptr147 to i32*
  store i32* %153, i32** %ptr, align 8, !tbaa !1
  %154 = load i32, i32* %line_count, align 4, !tbaa !5
  %dec148 = add nsw i32 %154, -1
  store i32 %dec148, i32* %line_count, align 4, !tbaa !5
  %tobool149 = icmp ne i32 %dec148, 0
  br i1 %tobool149, label %do.body.130, label %do.end.150

do.end.150:                                       ; preds = %do.cond.145
  br label %if.end.151

if.end.151:                                       ; preds = %do.end.150, %do.end.128
  br label %if.end.152

if.end.152:                                       ; preds = %if.end.151, %do.end.112
  br label %sw.epilog

sw.default:                                       ; preds = %if.else.36
  %155 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %155) #1
  %156 = load i32, i32* %pattern.addr, align 4, !tbaa !5
  %cmp153 = icmp eq i32 %156, 0
  br i1 %cmp153, label %if.then.154, label %if.else.169

if.then.154:                                      ; preds = %sw.default
  br label %do.body.155

do.body.155:                                      ; preds = %do.cond.163, %if.then.154
  %157 = load i32, i32* %mask, align 4, !tbaa !5
  %neg156 = xor i32 %157, -1
  %158 = load i32*, i32** %ptr, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i32, i32* %158, i32 1
  store i32* %incdec.ptr, i32** %ptr, align 8, !tbaa !1
  %159 = load i32, i32* %158, align 4, !tbaa !5
  %and157 = and i32 %159, %neg156
  store i32 %and157, i32* %158, align 4, !tbaa !5
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.body.155
  %160 = load i32, i32* %i, align 4, !tbaa !5
  %161 = load i32, i32* %last, align 4, !tbaa !5
  %cmp158 = icmp slt i32 %160, %161
  br i1 %cmp158, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %162 = load i32, i32* %src_mask.addr, align 4, !tbaa !5
  %163 = load i32*, i32** %ptr, align 8, !tbaa !1
  %incdec.ptr159 = getelementptr inbounds i32, i32* %163, i32 1
  store i32* %incdec.ptr159, i32** %ptr, align 8, !tbaa !1
  %164 = load i32, i32* %163, align 4, !tbaa !5
  %and160 = and i32 %164, %162
  store i32 %and160, i32* %163, align 4, !tbaa !5
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %165 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add nsw i32 %165, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %166 = load i32, i32* %right_mask, align 4, !tbaa !5
  %neg161 = xor i32 %166, -1
  %167 = load i32*, i32** %ptr, align 8, !tbaa !1
  %168 = load i32, i32* %167, align 4, !tbaa !5
  %and162 = and i32 %168, %neg161
  store i32 %and162, i32* %167, align 4, !tbaa !5
  br label %do.cond.163

do.cond.163:                                      ; preds = %for.end
  %169 = load i32*, i32** %ptr, align 8, !tbaa !1
  %170 = bitcast i32* %169 to i8*
  %171 = load i32, i32* %draster.addr, align 4, !tbaa !5
  %idx.ext164 = zext i32 %171 to i64
  %add.ptr165 = getelementptr inbounds i8, i8* %170, i64 %idx.ext164
  %172 = bitcast i8* %add.ptr165 to i32*
  store i32* %172, i32** %ptr, align 8, !tbaa !1
  %173 = load i32, i32* %line_count, align 4, !tbaa !5
  %dec166 = add nsw i32 %173, -1
  store i32 %dec166, i32* %line_count, align 4, !tbaa !5
  %tobool167 = icmp ne i32 %dec166, 0
  br i1 %tobool167, label %do.body.155, label %do.end.168

do.end.168:                                       ; preds = %do.cond.163
  br label %if.end.218

if.else.169:                                      ; preds = %sw.default
  %174 = load i32, i32* %pattern.addr, align 4, !tbaa !5
  %cmp170 = icmp eq i32 %174, -1
  br i1 %cmp170, label %if.then.171, label %if.else.191

if.then.171:                                      ; preds = %if.else.169
  br label %do.body.172

do.body.172:                                      ; preds = %do.cond.185, %if.then.171
  %175 = load i32, i32* %mask, align 4, !tbaa !5
  %176 = load i32*, i32** %ptr, align 8, !tbaa !1
  %incdec.ptr173 = getelementptr inbounds i32, i32* %176, i32 1
  store i32* %incdec.ptr173, i32** %ptr, align 8, !tbaa !1
  %177 = load i32, i32* %176, align 4, !tbaa !5
  %or174 = or i32 %177, %175
  store i32 %or174, i32* %176, align 4, !tbaa !5
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond.175

for.cond.175:                                     ; preds = %for.inc.181, %do.body.172
  %178 = load i32, i32* %i, align 4, !tbaa !5
  %179 = load i32, i32* %last, align 4, !tbaa !5
  %cmp176 = icmp slt i32 %178, %179
  br i1 %cmp176, label %for.body.177, label %for.end.183

for.body.177:                                     ; preds = %for.cond.175
  %180 = load i32, i32* %src_mask.addr, align 4, !tbaa !5
  %neg178 = xor i32 %180, -1
  %181 = load i32*, i32** %ptr, align 8, !tbaa !1
  %incdec.ptr179 = getelementptr inbounds i32, i32* %181, i32 1
  store i32* %incdec.ptr179, i32** %ptr, align 8, !tbaa !1
  %182 = load i32, i32* %181, align 4, !tbaa !5
  %or180 = or i32 %182, %neg178
  store i32 %or180, i32* %181, align 4, !tbaa !5
  br label %for.inc.181

for.inc.181:                                      ; preds = %for.body.177
  %183 = load i32, i32* %i, align 4, !tbaa !5
  %inc182 = add nsw i32 %183, 1
  store i32 %inc182, i32* %i, align 4, !tbaa !5
  br label %for.cond.175

for.end.183:                                      ; preds = %for.cond.175
  %184 = load i32, i32* %right_mask, align 4, !tbaa !5
  %185 = load i32*, i32** %ptr, align 8, !tbaa !1
  %186 = load i32, i32* %185, align 4, !tbaa !5
  %or184 = or i32 %186, %184
  store i32 %or184, i32* %185, align 4, !tbaa !5
  br label %do.cond.185

do.cond.185:                                      ; preds = %for.end.183
  %187 = load i32*, i32** %ptr, align 8, !tbaa !1
  %188 = bitcast i32* %187 to i8*
  %189 = load i32, i32* %draster.addr, align 4, !tbaa !5
  %idx.ext186 = zext i32 %189 to i64
  %add.ptr187 = getelementptr inbounds i8, i8* %188, i64 %idx.ext186
  %190 = bitcast i8* %add.ptr187 to i32*
  store i32* %190, i32** %ptr, align 8, !tbaa !1
  %191 = load i32, i32* %line_count, align 4, !tbaa !5
  %dec188 = add nsw i32 %191, -1
  store i32 %dec188, i32* %line_count, align 4, !tbaa !5
  %tobool189 = icmp ne i32 %dec188, 0
  br i1 %tobool189, label %do.body.172, label %do.end.190

do.end.190:                                       ; preds = %do.cond.185
  br label %if.end.217

if.else.191:                                      ; preds = %if.else.169
  br label %do.body.192

do.body.192:                                      ; preds = %do.cond.211, %if.else.191
  %192 = load i32*, i32** %ptr, align 8, !tbaa !1
  %193 = load i32, i32* %192, align 4, !tbaa !5
  %194 = load i32, i32* %mask, align 4, !tbaa !5
  %neg193 = xor i32 %194, -1
  %and194 = and i32 %193, %neg193
  %195 = load i32, i32* %pattern.addr, align 4, !tbaa !5
  %196 = load i32, i32* %mask, align 4, !tbaa !5
  %and195 = and i32 %195, %196
  %or196 = or i32 %and194, %and195
  %197 = load i32*, i32** %ptr, align 8, !tbaa !1
  store i32 %or196, i32* %197, align 4, !tbaa !5
  %198 = load i32*, i32** %ptr, align 8, !tbaa !1
  %incdec.ptr197 = getelementptr inbounds i32, i32* %198, i32 1
  store i32* %incdec.ptr197, i32** %ptr, align 8, !tbaa !1
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond.198

for.cond.198:                                     ; preds = %for.inc.203, %do.body.192
  %199 = load i32, i32* %i, align 4, !tbaa !5
  %200 = load i32, i32* %last, align 4, !tbaa !5
  %cmp199 = icmp slt i32 %199, %200
  br i1 %cmp199, label %for.body.200, label %for.end.206

for.body.200:                                     ; preds = %for.cond.198
  %201 = load i32*, i32** %ptr, align 8, !tbaa !1
  %202 = load i32, i32* %201, align 4, !tbaa !5
  %203 = load i32, i32* %src_mask.addr, align 4, !tbaa !5
  %and201 = and i32 %202, %203
  %204 = load i32, i32* %pattern.addr, align 4, !tbaa !5
  %or202 = or i32 %and201, %204
  %205 = load i32*, i32** %ptr, align 8, !tbaa !1
  store i32 %or202, i32* %205, align 4, !tbaa !5
  br label %for.inc.203

for.inc.203:                                      ; preds = %for.body.200
  %206 = load i32, i32* %i, align 4, !tbaa !5
  %inc204 = add nsw i32 %206, 1
  store i32 %inc204, i32* %i, align 4, !tbaa !5
  %207 = load i32*, i32** %ptr, align 8, !tbaa !1
  %incdec.ptr205 = getelementptr inbounds i32, i32* %207, i32 1
  store i32* %incdec.ptr205, i32** %ptr, align 8, !tbaa !1
  br label %for.cond.198

for.end.206:                                      ; preds = %for.cond.198
  %208 = load i32*, i32** %ptr, align 8, !tbaa !1
  %209 = load i32, i32* %208, align 4, !tbaa !5
  %210 = load i32, i32* %right_mask, align 4, !tbaa !5
  %neg207 = xor i32 %210, -1
  %and208 = and i32 %209, %neg207
  %211 = load i32, i32* %pattern.addr, align 4, !tbaa !5
  %212 = load i32, i32* %right_mask, align 4, !tbaa !5
  %and209 = and i32 %211, %212
  %or210 = or i32 %and208, %and209
  %213 = load i32*, i32** %ptr, align 8, !tbaa !1
  store i32 %or210, i32* %213, align 4, !tbaa !5
  br label %do.cond.211

do.cond.211:                                      ; preds = %for.end.206
  %214 = load i32*, i32** %ptr, align 8, !tbaa !1
  %215 = bitcast i32* %214 to i8*
  %216 = load i32, i32* %draster.addr, align 4, !tbaa !5
  %idx.ext212 = zext i32 %216 to i64
  %add.ptr213 = getelementptr inbounds i8, i8* %215, i64 %idx.ext212
  %217 = bitcast i8* %add.ptr213 to i32*
  store i32* %217, i32** %ptr, align 8, !tbaa !1
  %218 = load i32, i32* %line_count, align 4, !tbaa !5
  %dec214 = add nsw i32 %218, -1
  store i32 %dec214, i32* %line_count, align 4, !tbaa !5
  %tobool215 = icmp ne i32 %dec214, 0
  br i1 %tobool215, label %do.body.192, label %do.end.216

do.end.216:                                       ; preds = %do.cond.211
  br label %if.end.217

if.end.217:                                       ; preds = %do.end.216, %do.end.190
  br label %if.end.218

if.end.218:                                       ; preds = %if.end.217, %do.end.168
  %219 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %219) #1
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end.218, %if.end.152, %if.end.95
  %220 = bitcast i32* %last to i8*
  call void @llvm.lifetime.end(i64 4, i8* %220) #1
  %221 = bitcast i32* %mask to i8*
  call void @llvm.lifetime.end(i64 4, i8* %221) #1
  br label %if.end.219

if.end.219:                                       ; preds = %sw.epilog, %if.end.35
  %222 = bitcast i32* %last_bit to i8*
  call void @llvm.lifetime.end(i64 4, i8* %222) #1
  %223 = bitcast i32** %ptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %223) #1
  %224 = bitcast i32* %line_count to i8*
  call void @llvm.lifetime.end(i64 4, i8* %224) #1
  %225 = bitcast i32* %right_mask to i8*
  call void @llvm.lifetime.end(i64 4, i8* %225) #1
  %226 = bitcast i32* %bit to i8*
  call void @llvm.lifetime.end(i64 4, i8* %226) #1
  ret void
}

; Function Attrs: nounwind uwtable
define void @bits_replicate_horizontally(i8* %data, i32 %width, i32 %height, i32 %raster, i32 %replicated_width, i32 %replicated_raster) #0 {
entry:
  %data.addr = alloca i8*, align 8
  %width.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  %raster.addr = alloca i32, align 4
  %replicated_width.addr = alloca i32, align 4
  %replicated_raster.addr = alloca i32, align 4
  %orig_row = alloca i8*, align 8
  %tile_row = alloca i8*, align 8
  %y = alloca i32, align 4
  %src_bytes = alloca i32, align 4
  %dest_bytes = alloca i32, align 4
  %move = alloca i32, align 4
  %from = alloca i8*, align 8
  %to = alloca i8*, align 8
  %bit_count = alloca i32, align 4
  %left_mask = alloca i32, align 4
  %sx = alloca i32, align 4
  %bits = alloca i32, align 4
  %dx = alloca i32, align 4
  %dp = alloca i8*, align 8
  %dbit = alloca i32, align 4
  store i8* %data, i8** %data.addr, align 8, !tbaa !1
  store i32 %width, i32* %width.addr, align 4, !tbaa !5
  store i32 %height, i32* %height.addr, align 4, !tbaa !5
  store i32 %raster, i32* %raster.addr, align 4, !tbaa !5
  store i32 %replicated_width, i32* %replicated_width.addr, align 4, !tbaa !5
  store i32 %replicated_raster, i32* %replicated_raster.addr, align 4, !tbaa !5
  %0 = bitcast i8** %orig_row to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %2 = load i32, i32* %height.addr, align 4, !tbaa !5
  %sub = sub i32 %2, 1
  %3 = load i32, i32* %raster.addr, align 4, !tbaa !5
  %mul = mul i32 %sub, %3
  %idx.ext = zext i32 %mul to i64
  %add.ptr = getelementptr inbounds i8, i8* %1, i64 %idx.ext
  store i8* %add.ptr, i8** %orig_row, align 8, !tbaa !1
  %4 = bitcast i8** %tile_row to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %6 = load i32, i32* %height.addr, align 4, !tbaa !5
  %sub1 = sub i32 %6, 1
  %7 = load i32, i32* %replicated_raster.addr, align 4, !tbaa !5
  %mul2 = mul i32 %sub1, %7
  %idx.ext3 = zext i32 %mul2 to i64
  %add.ptr4 = getelementptr inbounds i8, i8* %5, i64 %idx.ext3
  store i8* %add.ptr4, i8** %tile_row, align 8, !tbaa !1
  %8 = bitcast i32* %y to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  %9 = load i32, i32* %width.addr, align 4, !tbaa !5
  %and = and i32 %9, 7
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %10 = bitcast i32* %src_bytes to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #1
  %11 = load i32, i32* %width.addr, align 4, !tbaa !5
  %shr = lshr i32 %11, 3
  store i32 %shr, i32* %src_bytes, align 4, !tbaa !5
  %12 = bitcast i32* %dest_bytes to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #1
  %13 = load i32, i32* %replicated_width.addr, align 4, !tbaa !5
  %shr5 = lshr i32 %13, 3
  store i32 %shr5, i32* %dest_bytes, align 4, !tbaa !5
  %14 = load i32, i32* %height.addr, align 4, !tbaa !5
  store i32 %14, i32* %y, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %15 = load i32, i32* %y, align 4, !tbaa !5
  %dec = add i32 %15, -1
  store i32 %dec, i32* %y, align 4, !tbaa !5
  %cmp = icmp ugt i32 %15, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %16 = bitcast i32* %move to i8*
  call void @llvm.lifetime.start(i64 4, i8* %16) #1
  %17 = load i32, i32* %src_bytes, align 4, !tbaa !5
  store i32 %17, i32* %move, align 4, !tbaa !5
  %18 = bitcast i8** %from to i8*
  call void @llvm.lifetime.start(i64 8, i8* %18) #1
  %19 = load i8*, i8** %orig_row, align 8, !tbaa !1
  store i8* %19, i8** %from, align 8, !tbaa !1
  %20 = bitcast i8** %to to i8*
  call void @llvm.lifetime.start(i64 8, i8* %20) #1
  %21 = load i8*, i8** %tile_row, align 8, !tbaa !1
  %22 = load i32, i32* %dest_bytes, align 4, !tbaa !5
  %idx.ext6 = zext i32 %22 to i64
  %add.ptr7 = getelementptr inbounds i8, i8* %21, i64 %idx.ext6
  %23 = load i32, i32* %src_bytes, align 4, !tbaa !5
  %idx.ext8 = zext i32 %23 to i64
  %idx.neg = sub i64 0, %idx.ext8
  %add.ptr9 = getelementptr inbounds i8, i8* %add.ptr7, i64 %idx.neg
  store i8* %add.ptr9, i8** %to, align 8, !tbaa !1
  %24 = load i8*, i8** %to, align 8, !tbaa !1
  %25 = load i8*, i8** %from, align 8, !tbaa !1
  %26 = load i32, i32* %move, align 4, !tbaa !5
  %conv = zext i32 %26 to i64
  %call = call i8* @memmove(i8* %24, i8* %25, i64 %conv) #3
  br label %while.cond

while.cond:                                       ; preds = %while.body, %for.body
  %27 = load i8*, i8** %to, align 8, !tbaa !1
  %28 = load i8*, i8** %tile_row, align 8, !tbaa !1
  %sub.ptr.lhs.cast = ptrtoint i8* %27 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %28 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %29 = load i32, i32* %move, align 4, !tbaa !5
  %conv10 = zext i32 %29 to i64
  %cmp11 = icmp sge i64 %sub.ptr.sub, %conv10
  br i1 %cmp11, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %30 = load i8*, i8** %to, align 8, !tbaa !1
  store i8* %30, i8** %from, align 8, !tbaa !1
  %31 = load i32, i32* %move, align 4, !tbaa !5
  %32 = load i8*, i8** %to, align 8, !tbaa !1
  %idx.ext13 = zext i32 %31 to i64
  %idx.neg14 = sub i64 0, %idx.ext13
  %add.ptr15 = getelementptr inbounds i8, i8* %32, i64 %idx.neg14
  store i8* %add.ptr15, i8** %to, align 8, !tbaa !1
  %33 = load i8*, i8** %to, align 8, !tbaa !1
  %34 = load i8*, i8** %from, align 8, !tbaa !1
  %35 = load i32, i32* %move, align 4, !tbaa !5
  %conv16 = zext i32 %35 to i64
  %call17 = call i8* @memmove(i8* %33, i8* %34, i64 %conv16) #3
  %36 = load i32, i32* %move, align 4, !tbaa !5
  %shl = shl i32 %36, 1
  store i32 %shl, i32* %move, align 4, !tbaa !5
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %37 = load i8*, i8** %to, align 8, !tbaa !1
  %38 = load i8*, i8** %tile_row, align 8, !tbaa !1
  %cmp18 = icmp ne i8* %37, %38
  br i1 %cmp18, label %if.then.20, label %if.end

if.then.20:                                       ; preds = %while.end
  %39 = load i8*, i8** %tile_row, align 8, !tbaa !1
  %40 = load i8*, i8** %to, align 8, !tbaa !1
  %41 = load i8*, i8** %to, align 8, !tbaa !1
  %42 = load i8*, i8** %tile_row, align 8, !tbaa !1
  %sub.ptr.lhs.cast21 = ptrtoint i8* %41 to i64
  %sub.ptr.rhs.cast22 = ptrtoint i8* %42 to i64
  %sub.ptr.sub23 = sub i64 %sub.ptr.lhs.cast21, %sub.ptr.rhs.cast22
  %call24 = call i8* @memmove(i8* %39, i8* %40, i64 %sub.ptr.sub23) #3
  br label %if.end

if.end:                                           ; preds = %if.then.20, %while.end
  %43 = bitcast i8** %to to i8*
  call void @llvm.lifetime.end(i64 8, i8* %43) #1
  %44 = bitcast i8** %from to i8*
  call void @llvm.lifetime.end(i64 8, i8* %44) #1
  %45 = bitcast i32* %move to i8*
  call void @llvm.lifetime.end(i64 4, i8* %45) #1
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %46 = load i32, i32* %raster.addr, align 4, !tbaa !5
  %47 = load i8*, i8** %orig_row, align 8, !tbaa !1
  %idx.ext25 = zext i32 %46 to i64
  %idx.neg26 = sub i64 0, %idx.ext25
  %add.ptr27 = getelementptr inbounds i8, i8* %47, i64 %idx.neg26
  store i8* %add.ptr27, i8** %orig_row, align 8, !tbaa !1
  %48 = load i32, i32* %replicated_raster.addr, align 4, !tbaa !5
  %49 = load i8*, i8** %tile_row, align 8, !tbaa !1
  %idx.ext28 = zext i32 %48 to i64
  %idx.neg29 = sub i64 0, %idx.ext28
  %add.ptr30 = getelementptr inbounds i8, i8* %49, i64 %idx.neg29
  store i8* %add.ptr30, i8** %tile_row, align 8, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %50 = bitcast i32* %dest_bytes to i8*
  call void @llvm.lifetime.end(i64 4, i8* %50) #1
  %51 = bitcast i32* %src_bytes to i8*
  call void @llvm.lifetime.end(i64 4, i8* %51) #1
  br label %if.end.74

if.else:                                          ; preds = %entry
  %52 = bitcast i32* %bit_count to i8*
  call void @llvm.lifetime.start(i64 4, i8* %52) #1
  %53 = load i32, i32* %width.addr, align 4, !tbaa !5
  %54 = load i32, i32* %width.addr, align 4, !tbaa !5
  %sub31 = sub nsw i32 0, %54
  %and32 = and i32 %53, %sub31
  store i32 %and32, i32* %bit_count, align 4, !tbaa !5
  %55 = bitcast i32* %left_mask to i8*
  call void @llvm.lifetime.start(i64 4, i8* %55) #1
  %56 = load i32, i32* %bit_count, align 4, !tbaa !5
  %shr33 = ashr i32 65280, %56
  %and34 = and i32 %shr33, 255
  store i32 %and34, i32* %left_mask, align 4, !tbaa !5
  %57 = load i32, i32* %height.addr, align 4, !tbaa !5
  store i32 %57, i32* %y, align 4, !tbaa !5
  br label %for.cond.35

for.cond.35:                                      ; preds = %for.inc.66, %if.else
  %58 = load i32, i32* %y, align 4, !tbaa !5
  %dec36 = add i32 %58, -1
  store i32 %dec36, i32* %y, align 4, !tbaa !5
  %cmp37 = icmp ugt i32 %58, 0
  br i1 %cmp37, label %for.body.39, label %for.end.73

for.body.39:                                      ; preds = %for.cond.35
  %59 = bitcast i32* %sx to i8*
  call void @llvm.lifetime.start(i64 4, i8* %59) #1
  %60 = load i32, i32* %width.addr, align 4, !tbaa !5
  store i32 %60, i32* %sx, align 4, !tbaa !5
  br label %for.cond.40

for.cond.40:                                      ; preds = %for.end.64, %for.body.39
  %61 = load i32, i32* %sx, align 4, !tbaa !5
  %cmp41 = icmp ugt i32 %61, 0
  br i1 %cmp41, label %for.body.43, label %for.end.65

for.body.43:                                      ; preds = %for.cond.40
  %62 = bitcast i32* %bits to i8*
  call void @llvm.lifetime.start(i64 4, i8* %62) #1
  %63 = bitcast i32* %dx to i8*
  call void @llvm.lifetime.start(i64 4, i8* %63) #1
  %64 = load i32, i32* %bit_count, align 4, !tbaa !5
  %65 = load i32, i32* %sx, align 4, !tbaa !5
  %sub44 = sub i32 %65, %64
  store i32 %sub44, i32* %sx, align 4, !tbaa !5
  %66 = load i32, i32* %sx, align 4, !tbaa !5
  %shr45 = lshr i32 %66, 3
  %idxprom = zext i32 %shr45 to i64
  %67 = load i8*, i8** %orig_row, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %67, i64 %idxprom
  %68 = load i8, i8* %arrayidx, align 1, !tbaa !7
  %conv46 = zext i8 %68 to i32
  %69 = load i32, i32* %sx, align 4, !tbaa !5
  %and47 = and i32 %69, 7
  %shl48 = shl i32 %conv46, %and47
  %70 = load i32, i32* %left_mask, align 4, !tbaa !5
  %and49 = and i32 %shl48, %70
  store i32 %and49, i32* %bits, align 4, !tbaa !5
  %71 = load i32, i32* %sx, align 4, !tbaa !5
  %72 = load i32, i32* %replicated_width.addr, align 4, !tbaa !5
  %add = add i32 %71, %72
  store i32 %add, i32* %dx, align 4, !tbaa !5
  br label %for.cond.50

for.cond.50:                                      ; preds = %for.body.53, %for.body.43
  %73 = load i32, i32* %dx, align 4, !tbaa !5
  %74 = load i32, i32* %width.addr, align 4, !tbaa !5
  %cmp51 = icmp uge i32 %73, %74
  br i1 %cmp51, label %for.body.53, label %for.end.64

for.body.53:                                      ; preds = %for.cond.50
  %75 = bitcast i8** %dp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %75) #1
  %76 = bitcast i32* %dbit to i8*
  call void @llvm.lifetime.start(i64 4, i8* %76) #1
  %77 = load i32, i32* %width.addr, align 4, !tbaa !5
  %78 = load i32, i32* %dx, align 4, !tbaa !5
  %sub54 = sub i32 %78, %77
  store i32 %sub54, i32* %dx, align 4, !tbaa !5
  %79 = load i32, i32* %dx, align 4, !tbaa !5
  %and55 = and i32 %79, 7
  store i32 %and55, i32* %dbit, align 4, !tbaa !5
  %80 = load i8*, i8** %tile_row, align 8, !tbaa !1
  %81 = load i32, i32* %dx, align 4, !tbaa !5
  %shr56 = lshr i32 %81, 3
  %idx.ext57 = zext i32 %shr56 to i64
  %add.ptr58 = getelementptr inbounds i8, i8* %80, i64 %idx.ext57
  store i8* %add.ptr58, i8** %dp, align 8, !tbaa !1
  %82 = load i8*, i8** %dp, align 8, !tbaa !1
  %83 = load i8, i8* %82, align 1, !tbaa !7
  %conv59 = zext i8 %83 to i32
  %84 = load i32, i32* %left_mask, align 4, !tbaa !5
  %85 = load i32, i32* %dbit, align 4, !tbaa !5
  %shr60 = lshr i32 %84, %85
  %neg = xor i32 %shr60, -1
  %and61 = and i32 %conv59, %neg
  %86 = load i32, i32* %bits, align 4, !tbaa !5
  %87 = load i32, i32* %dbit, align 4, !tbaa !5
  %shr62 = lshr i32 %86, %87
  %or = or i32 %and61, %shr62
  %conv63 = trunc i32 %or to i8
  %88 = load i8*, i8** %dp, align 8, !tbaa !1
  store i8 %conv63, i8* %88, align 1, !tbaa !7
  %89 = bitcast i32* %dbit to i8*
  call void @llvm.lifetime.end(i64 4, i8* %89) #1
  %90 = bitcast i8** %dp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %90) #1
  br label %for.cond.50

for.end.64:                                       ; preds = %for.cond.50
  %91 = bitcast i32* %dx to i8*
  call void @llvm.lifetime.end(i64 4, i8* %91) #1
  %92 = bitcast i32* %bits to i8*
  call void @llvm.lifetime.end(i64 4, i8* %92) #1
  br label %for.cond.40

for.end.65:                                       ; preds = %for.cond.40
  %93 = bitcast i32* %sx to i8*
  call void @llvm.lifetime.end(i64 4, i8* %93) #1
  br label %for.inc.66

for.inc.66:                                       ; preds = %for.end.65
  %94 = load i32, i32* %raster.addr, align 4, !tbaa !5
  %95 = load i8*, i8** %orig_row, align 8, !tbaa !1
  %idx.ext67 = zext i32 %94 to i64
  %idx.neg68 = sub i64 0, %idx.ext67
  %add.ptr69 = getelementptr inbounds i8, i8* %95, i64 %idx.neg68
  store i8* %add.ptr69, i8** %orig_row, align 8, !tbaa !1
  %96 = load i32, i32* %replicated_raster.addr, align 4, !tbaa !5
  %97 = load i8*, i8** %tile_row, align 8, !tbaa !1
  %idx.ext70 = zext i32 %96 to i64
  %idx.neg71 = sub i64 0, %idx.ext70
  %add.ptr72 = getelementptr inbounds i8, i8* %97, i64 %idx.neg71
  store i8* %add.ptr72, i8** %tile_row, align 8, !tbaa !1
  br label %for.cond.35

for.end.73:                                       ; preds = %for.cond.35
  %98 = bitcast i32* %left_mask to i8*
  call void @llvm.lifetime.end(i64 4, i8* %98) #1
  %99 = bitcast i32* %bit_count to i8*
  call void @llvm.lifetime.end(i64 4, i8* %99) #1
  br label %if.end.74

if.end.74:                                        ; preds = %for.end.73, %for.end
  %100 = bitcast i32* %y to i8*
  call void @llvm.lifetime.end(i64 4, i8* %100) #1
  %101 = bitcast i8** %tile_row to i8*
  call void @llvm.lifetime.end(i64 8, i8* %101) #1
  %102 = bitcast i8** %orig_row to i8*
  call void @llvm.lifetime.end(i64 8, i8* %102) #1
  ret void
}

; Function Attrs: nounwind
declare i8* @memmove(i8*, i8*, i64) #2

; Function Attrs: nounwind uwtable
define void @bits_replicate_vertically(i8* %data, i32 %height, i32 %raster, i32 %replicated_height) #0 {
entry:
  %data.addr = alloca i8*, align 8
  %height.addr = alloca i32, align 4
  %raster.addr = alloca i32, align 4
  %replicated_height.addr = alloca i32, align 4
  %dest = alloca i8*, align 8
  %h = alloca i32, align 4
  %size = alloca i32, align 4
  store i8* %data, i8** %data.addr, align 8, !tbaa !1
  store i32 %height, i32* %height.addr, align 4, !tbaa !5
  store i32 %raster, i32* %raster.addr, align 4, !tbaa !5
  store i32 %replicated_height, i32* %replicated_height.addr, align 4, !tbaa !5
  %0 = bitcast i8** %dest to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i8*, i8** %data.addr, align 8, !tbaa !1
  store i8* %1, i8** %dest, align 8, !tbaa !1
  %2 = bitcast i32* %h to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = load i32, i32* %replicated_height.addr, align 4, !tbaa !5
  store i32 %3, i32* %h, align 4, !tbaa !5
  %4 = bitcast i32* %size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = load i32, i32* %raster.addr, align 4, !tbaa !5
  %6 = load i32, i32* %height.addr, align 4, !tbaa !5
  %mul = mul i32 %5, %6
  store i32 %mul, i32* %size, align 4, !tbaa !5
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %7 = load i32, i32* %h, align 4, !tbaa !5
  %8 = load i32, i32* %height.addr, align 4, !tbaa !5
  %cmp = icmp ugt i32 %7, %8
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %9 = load i8*, i8** %dest, align 8, !tbaa !1
  %10 = load i32, i32* %size, align 4, !tbaa !5
  %idx.ext = zext i32 %10 to i64
  %add.ptr = getelementptr inbounds i8, i8* %9, i64 %idx.ext
  %11 = load i8*, i8** %dest, align 8, !tbaa !1
  %12 = load i32, i32* %size, align 4, !tbaa !5
  %conv = zext i32 %12 to i64
  %call = call i8* @memcpy(i8* %add.ptr, i8* %11, i64 %conv) #3
  %13 = load i32, i32* %size, align 4, !tbaa !5
  %14 = load i8*, i8** %dest, align 8, !tbaa !1
  %idx.ext1 = zext i32 %13 to i64
  %add.ptr2 = getelementptr inbounds i8, i8* %14, i64 %idx.ext1
  store i8* %add.ptr2, i8** %dest, align 8, !tbaa !1
  %15 = load i32, i32* %height.addr, align 4, !tbaa !5
  %16 = load i32, i32* %h, align 4, !tbaa !5
  %sub = sub i32 %16, %15
  store i32 %sub, i32* %h, align 4, !tbaa !5
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %17 = bitcast i32* %size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %17) #1
  %18 = bitcast i32* %h to i8*
  call void @llvm.lifetime.end(i64 4, i8* %18) #1
  %19 = bitcast i8** %dest to i8*
  call void @llvm.lifetime.end(i64 8, i8* %19) #1
  ret void
}

; Function Attrs: nounwind
declare i8* @memcpy(i8*, i8*, i64) #2

; Function Attrs: nounwind uwtable
define void @bits_bounding_box(i8* %data, i32 %height, i32 %raster, %struct.gs_int_rect_s* %pbox) #0 {
entry:
  %data.addr = alloca i8*, align 8
  %height.addr = alloca i32, align 4
  %raster.addr = alloca i32, align 4
  %pbox.addr = alloca %struct.gs_int_rect_s*, align 8
  %lp = alloca i64*, align 8
  %cleanup.dest.slot = alloca i32
  %n = alloca i32, align 4
  %raster_longs = alloca i32, align 4
  %left = alloca i32, align 4
  %right = alloca i32, align 4
  %llong = alloca i64, align 8
  %rlong = alloca i64, align 8
  %q32 = alloca i8*, align 8
  %h = alloca i32, align 4
  %n33 = alloca i32, align 4
  store i8* %data, i8** %data.addr, align 8, !tbaa !1
  store i32 %height, i32* %height.addr, align 4, !tbaa !5
  store i32 %raster, i32* %raster.addr, align 4, !tbaa !5
  store %struct.gs_int_rect_s* %pbox, %struct.gs_int_rect_s** %pbox.addr, align 8, !tbaa !1
  %0 = bitcast i64** %lp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %2 = load i32, i32* %raster.addr, align 4, !tbaa !5
  %3 = load i32, i32* %height.addr, align 4, !tbaa !5
  %mul = mul i32 %2, %3
  %idx.ext = zext i32 %mul to i64
  %add.ptr = getelementptr inbounds i8, i8* %1, i64 %idx.ext
  %4 = bitcast i8* %add.ptr to i64*
  store i64* %4, i64** %lp, align 8, !tbaa !1
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %5 = load i64*, i64** %lp, align 8, !tbaa !1
  %6 = bitcast i64* %5 to i8*
  %7 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %cmp = icmp ugt i8* %6, %7
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %8 = load i64*, i64** %lp, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i64, i64* %8, i64 -1
  %9 = load i64, i64* %arrayidx, align 8, !tbaa !8
  %tobool = icmp ne i64 %9, 0
  %lnot = xor i1 %tobool, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %10 = phi i1 [ false, %while.cond ], [ %lnot, %land.rhs ]
  br i1 %10, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %11 = load i64*, i64** %lp, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i64, i64* %11, i32 -1
  store i64* %incdec.ptr, i64** %lp, align 8, !tbaa !1
  br label %while.cond

while.end:                                        ; preds = %land.end
  %12 = load i64*, i64** %lp, align 8, !tbaa !1
  %13 = bitcast i64* %12 to i8*
  %14 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %cmp1 = icmp eq i8* %13, %14
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %while.end
  %15 = load %struct.gs_int_rect_s*, %struct.gs_int_rect_s** %pbox.addr, align 8, !tbaa !1
  %q = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %15, i32 0, i32 1
  %y = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q, i32 0, i32 1
  store i32 0, i32* %y, align 4, !tbaa !10
  %16 = load %struct.gs_int_rect_s*, %struct.gs_int_rect_s** %pbox.addr, align 8, !tbaa !1
  %p = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %16, i32 0, i32 0
  %y2 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p, i32 0, i32 1
  store i32 0, i32* %y2, align 4, !tbaa !13
  %17 = load %struct.gs_int_rect_s*, %struct.gs_int_rect_s** %pbox.addr, align 8, !tbaa !1
  %q3 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %17, i32 0, i32 1
  %x = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q3, i32 0, i32 0
  store i32 0, i32* %x, align 4, !tbaa !14
  %18 = load %struct.gs_int_rect_s*, %struct.gs_int_rect_s** %pbox.addr, align 8, !tbaa !1
  %p4 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %18, i32 0, i32 0
  %x5 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p4, i32 0, i32 0
  store i32 0, i32* %x5, align 4, !tbaa !15
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %while.end
  %19 = load i64*, i64** %lp, align 8, !tbaa !1
  %20 = bitcast i64* %19 to i8*
  %21 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %sub.ptr.lhs.cast = ptrtoint i8* %20 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %21 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %22 = load i32, i32* %raster.addr, align 4, !tbaa !5
  %conv = zext i32 %22 to i64
  %add = add nsw i64 %sub.ptr.sub, %conv
  %sub = sub nsw i64 %add, 1
  %23 = load i32, i32* %raster.addr, align 4, !tbaa !5
  %conv6 = zext i32 %23 to i64
  %div = sdiv i64 %sub, %conv6
  %conv7 = trunc i64 %div to i32
  store i32 %conv7, i32* %height.addr, align 4, !tbaa !5
  %24 = load %struct.gs_int_rect_s*, %struct.gs_int_rect_s** %pbox.addr, align 8, !tbaa !1
  %q8 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %24, i32 0, i32 1
  %y9 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q8, i32 0, i32 1
  store i32 %conv7, i32* %y9, align 4, !tbaa !10
  %25 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %26 = bitcast i8* %25 to i64*
  store i64* %26, i64** %lp, align 8, !tbaa !1
  br label %while.cond.10

while.cond.10:                                    ; preds = %while.body.13, %if.end
  %27 = load i64*, i64** %lp, align 8, !tbaa !1
  %28 = load i64, i64* %27, align 8, !tbaa !8
  %tobool11 = icmp ne i64 %28, 0
  %lnot12 = xor i1 %tobool11, true
  br i1 %lnot12, label %while.body.13, label %while.end.15

while.body.13:                                    ; preds = %while.cond.10
  %29 = load i64*, i64** %lp, align 8, !tbaa !1
  %incdec.ptr14 = getelementptr inbounds i64, i64* %29, i32 1
  store i64* %incdec.ptr14, i64** %lp, align 8, !tbaa !1
  br label %while.cond.10

while.end.15:                                     ; preds = %while.cond.10
  %30 = bitcast i32* %n to i8*
  call void @llvm.lifetime.start(i64 4, i8* %30) #1
  %31 = load i64*, i64** %lp, align 8, !tbaa !1
  %32 = bitcast i64* %31 to i8*
  %33 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %sub.ptr.lhs.cast16 = ptrtoint i8* %32 to i64
  %sub.ptr.rhs.cast17 = ptrtoint i8* %33 to i64
  %sub.ptr.sub18 = sub i64 %sub.ptr.lhs.cast16, %sub.ptr.rhs.cast17
  %34 = load i32, i32* %raster.addr, align 4, !tbaa !5
  %conv19 = zext i32 %34 to i64
  %div20 = sdiv i64 %sub.ptr.sub18, %conv19
  %conv21 = trunc i64 %div20 to i32
  store i32 %conv21, i32* %n, align 4, !tbaa !5
  %35 = load i32, i32* %n, align 4, !tbaa !5
  %36 = load %struct.gs_int_rect_s*, %struct.gs_int_rect_s** %pbox.addr, align 8, !tbaa !1
  %p22 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %36, i32 0, i32 0
  %y23 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p22, i32 0, i32 1
  store i32 %35, i32* %y23, align 4, !tbaa !13
  %37 = load i32, i32* %n, align 4, !tbaa !5
  %tobool24 = icmp ne i32 %37, 0
  br i1 %tobool24, label %if.then.25, label %if.end.30

if.then.25:                                       ; preds = %while.end.15
  %38 = load i32, i32* %n, align 4, !tbaa !5
  %39 = load i32, i32* %height.addr, align 4, !tbaa !5
  %sub26 = sub i32 %39, %38
  store i32 %sub26, i32* %height.addr, align 4, !tbaa !5
  %40 = load i32, i32* %n, align 4, !tbaa !5
  %41 = load i32, i32* %raster.addr, align 4, !tbaa !5
  %mul27 = mul i32 %40, %41
  %42 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %idx.ext28 = zext i32 %mul27 to i64
  %add.ptr29 = getelementptr inbounds i8, i8* %42, i64 %idx.ext28
  store i8* %add.ptr29, i8** %data.addr, align 8, !tbaa !1
  br label %if.end.30

if.end.30:                                        ; preds = %if.then.25, %while.end.15
  %43 = bitcast i32* %n to i8*
  call void @llvm.lifetime.end(i64 4, i8* %43) #1
  %44 = bitcast i32* %raster_longs to i8*
  call void @llvm.lifetime.start(i64 4, i8* %44) #1
  %45 = load i32, i32* %raster.addr, align 4, !tbaa !5
  %shr = lshr i32 %45, 3
  store i32 %shr, i32* %raster_longs, align 4, !tbaa !5
  %46 = bitcast i32* %left to i8*
  call void @llvm.lifetime.start(i64 4, i8* %46) #1
  %47 = load i32, i32* %raster_longs, align 4, !tbaa !5
  %sub31 = sub i32 %47, 1
  store i32 %sub31, i32* %left, align 4, !tbaa !5
  %48 = bitcast i32* %right to i8*
  call void @llvm.lifetime.start(i64 4, i8* %48) #1
  store i32 0, i32* %right, align 4, !tbaa !5
  %49 = bitcast i64* %llong to i8*
  call void @llvm.lifetime.start(i64 8, i8* %49) #1
  store i64 0, i64* %llong, align 8, !tbaa !8
  %50 = bitcast i64* %rlong to i8*
  call void @llvm.lifetime.start(i64 8, i8* %50) #1
  store i64 0, i64* %rlong, align 8, !tbaa !8
  %51 = bitcast i8** %q32 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %51) #1
  %52 = bitcast i32* %h to i8*
  call void @llvm.lifetime.start(i64 4, i8* %52) #1
  %53 = bitcast i32* %n33 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %53) #1
  %54 = load i8*, i8** %data.addr, align 8, !tbaa !1
  store i8* %54, i8** %q32, align 8, !tbaa !1
  %55 = load i32, i32* %height.addr, align 4, !tbaa !5
  store i32 %55, i32* %h, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc.71, %if.end.30
  %56 = load i32, i32* %h, align 4, !tbaa !5
  %dec = add i32 %56, -1
  store i32 %dec, i32* %h, align 4, !tbaa !5
  %cmp34 = icmp ugt i32 %56, 0
  br i1 %cmp34, label %for.body, label %for.end.74

for.body:                                         ; preds = %for.cond
  %57 = load i8*, i8** %q32, align 8, !tbaa !1
  %58 = bitcast i8* %57 to i64*
  store i64* %58, i64** %lp, align 8, !tbaa !1
  store i32 0, i32* %n33, align 4, !tbaa !5
  br label %for.cond.36

for.cond.36:                                      ; preds = %for.inc, %for.body
  %59 = load i32, i32* %n33, align 4, !tbaa !5
  %60 = load i32, i32* %left, align 4, !tbaa !5
  %cmp37 = icmp ult i32 %59, %60
  br i1 %cmp37, label %land.rhs.39, label %land.end.42

land.rhs.39:                                      ; preds = %for.cond.36
  %61 = load i64*, i64** %lp, align 8, !tbaa !1
  %62 = load i64, i64* %61, align 8, !tbaa !8
  %tobool40 = icmp ne i64 %62, 0
  %lnot41 = xor i1 %tobool40, true
  br label %land.end.42

land.end.42:                                      ; preds = %land.rhs.39, %for.cond.36
  %63 = phi i1 [ false, %for.cond.36 ], [ %lnot41, %land.rhs.39 ]
  br i1 %63, label %for.body.43, label %for.end

for.body.43:                                      ; preds = %land.end.42
  br label %for.inc

for.inc:                                          ; preds = %for.body.43
  %64 = load i64*, i64** %lp, align 8, !tbaa !1
  %incdec.ptr44 = getelementptr inbounds i64, i64* %64, i32 1
  store i64* %incdec.ptr44, i64** %lp, align 8, !tbaa !1
  %65 = load i32, i32* %n33, align 4, !tbaa !5
  %inc = add i32 %65, 1
  store i32 %inc, i32* %n33, align 4, !tbaa !5
  br label %for.cond.36

for.end:                                          ; preds = %land.end.42
  %66 = load i32, i32* %n33, align 4, !tbaa !5
  %67 = load i32, i32* %left, align 4, !tbaa !5
  %cmp45 = icmp ult i32 %66, %67
  br i1 %cmp45, label %if.then.47, label %if.else

if.then.47:                                       ; preds = %for.end
  %68 = load i32, i32* %n33, align 4, !tbaa !5
  store i32 %68, i32* %left, align 4, !tbaa !5
  %69 = load i64*, i64** %lp, align 8, !tbaa !1
  %70 = load i64, i64* %69, align 8, !tbaa !8
  store i64 %70, i64* %llong, align 8, !tbaa !8
  br label %if.end.48

if.else:                                          ; preds = %for.end
  %71 = load i64*, i64** %lp, align 8, !tbaa !1
  %72 = load i64, i64* %71, align 8, !tbaa !8
  %73 = load i64, i64* %llong, align 8, !tbaa !8
  %or = or i64 %73, %72
  store i64 %or, i64* %llong, align 8, !tbaa !8
  br label %if.end.48

if.end.48:                                        ; preds = %if.else, %if.then.47
  %74 = load i8*, i8** %q32, align 8, !tbaa !1
  %75 = load i32, i32* %raster.addr, align 4, !tbaa !5
  %idx.ext49 = zext i32 %75 to i64
  %add.ptr50 = getelementptr inbounds i8, i8* %74, i64 %idx.ext49
  %add.ptr51 = getelementptr inbounds i8, i8* %add.ptr50, i64 -8
  %76 = bitcast i8* %add.ptr51 to i64*
  store i64* %76, i64** %lp, align 8, !tbaa !1
  %77 = load i32, i32* %raster_longs, align 4, !tbaa !5
  %sub52 = sub i32 %77, 1
  store i32 %sub52, i32* %n33, align 4, !tbaa !5
  br label %for.cond.53

for.cond.53:                                      ; preds = %for.inc.61, %if.end.48
  %78 = load i32, i32* %n33, align 4, !tbaa !5
  %79 = load i32, i32* %right, align 4, !tbaa !5
  %cmp54 = icmp ugt i32 %78, %79
  br i1 %cmp54, label %land.rhs.56, label %land.end.59

land.rhs.56:                                      ; preds = %for.cond.53
  %80 = load i64*, i64** %lp, align 8, !tbaa !1
  %81 = load i64, i64* %80, align 8, !tbaa !8
  %tobool57 = icmp ne i64 %81, 0
  %lnot58 = xor i1 %tobool57, true
  br label %land.end.59

land.end.59:                                      ; preds = %land.rhs.56, %for.cond.53
  %82 = phi i1 [ false, %for.cond.53 ], [ %lnot58, %land.rhs.56 ]
  br i1 %82, label %for.body.60, label %for.end.64

for.body.60:                                      ; preds = %land.end.59
  br label %for.inc.61

for.inc.61:                                       ; preds = %for.body.60
  %83 = load i64*, i64** %lp, align 8, !tbaa !1
  %incdec.ptr62 = getelementptr inbounds i64, i64* %83, i32 -1
  store i64* %incdec.ptr62, i64** %lp, align 8, !tbaa !1
  %84 = load i32, i32* %n33, align 4, !tbaa !5
  %dec63 = add i32 %84, -1
  store i32 %dec63, i32* %n33, align 4, !tbaa !5
  br label %for.cond.53

for.end.64:                                       ; preds = %land.end.59
  %85 = load i32, i32* %n33, align 4, !tbaa !5
  %86 = load i32, i32* %right, align 4, !tbaa !5
  %cmp65 = icmp ugt i32 %85, %86
  br i1 %cmp65, label %if.then.67, label %if.else.68

if.then.67:                                       ; preds = %for.end.64
  %87 = load i32, i32* %n33, align 4, !tbaa !5
  store i32 %87, i32* %right, align 4, !tbaa !5
  %88 = load i64*, i64** %lp, align 8, !tbaa !1
  %89 = load i64, i64* %88, align 8, !tbaa !8
  store i64 %89, i64* %rlong, align 8, !tbaa !8
  br label %if.end.70

if.else.68:                                       ; preds = %for.end.64
  %90 = load i64*, i64** %lp, align 8, !tbaa !1
  %91 = load i64, i64* %90, align 8, !tbaa !8
  %92 = load i64, i64* %rlong, align 8, !tbaa !8
  %or69 = or i64 %92, %91
  store i64 %or69, i64* %rlong, align 8, !tbaa !8
  br label %if.end.70

if.end.70:                                        ; preds = %if.else.68, %if.then.67
  br label %for.inc.71

for.inc.71:                                       ; preds = %if.end.70
  %93 = load i32, i32* %raster.addr, align 4, !tbaa !5
  %94 = load i8*, i8** %q32, align 8, !tbaa !1
  %idx.ext72 = zext i32 %93 to i64
  %add.ptr73 = getelementptr inbounds i8, i8* %94, i64 %idx.ext72
  store i8* %add.ptr73, i8** %q32, align 8, !tbaa !1
  br label %for.cond

for.end.74:                                       ; preds = %for.cond
  %95 = load i32, i32* %left, align 4, !tbaa !5
  %shl = shl i32 %95, 6
  store i32 %shl, i32* %left, align 4, !tbaa !5
  %96 = load i64, i64* %llong, align 8, !tbaa !8
  %and = and i64 %96, 4294967295
  %tobool75 = icmp ne i64 %and, 0
  br i1 %tobool75, label %if.then.76, label %if.else.78

if.then.76:                                       ; preds = %for.end.74
  %97 = load i64, i64* %llong, align 8, !tbaa !8
  %shl77 = shl i64 %97, 32
  store i64 %shl77, i64* %llong, align 8, !tbaa !8
  br label %if.end.80

if.else.78:                                       ; preds = %for.end.74
  %98 = load i32, i32* %left, align 4, !tbaa !5
  %add79 = add i32 %98, 32
  store i32 %add79, i32* %left, align 4, !tbaa !5
  br label %if.end.80

if.end.80:                                        ; preds = %if.else.78, %if.then.76
  %99 = load i64, i64* %llong, align 8, !tbaa !8
  %and81 = and i64 %99, 281474976710655
  %tobool82 = icmp ne i64 %and81, 0
  br i1 %tobool82, label %if.then.83, label %if.else.85

if.then.83:                                       ; preds = %if.end.80
  %100 = load i64, i64* %llong, align 8, !tbaa !8
  %shl84 = shl i64 %100, 16
  store i64 %shl84, i64* %llong, align 8, !tbaa !8
  br label %if.end.87

if.else.85:                                       ; preds = %if.end.80
  %101 = load i32, i32* %left, align 4, !tbaa !5
  %add86 = add i32 %101, 16
  store i32 %add86, i32* %left, align 4, !tbaa !5
  br label %if.end.87

if.end.87:                                        ; preds = %if.else.85, %if.then.83
  %102 = load i64, i64* %llong, align 8, !tbaa !8
  %and88 = and i64 %102, 72057594037927935
  %tobool89 = icmp ne i64 %and88, 0
  br i1 %tobool89, label %if.then.90, label %if.else.92

if.then.90:                                       ; preds = %if.end.87
  %103 = load i64, i64* %llong, align 8, !tbaa !8
  %shl91 = shl i64 %103, 8
  store i64 %shl91, i64* %llong, align 8, !tbaa !8
  br label %if.end.94

if.else.92:                                       ; preds = %if.end.87
  %104 = load i32, i32* %left, align 4, !tbaa !5
  %add93 = add i32 %104, 8
  store i32 %add93, i32* %left, align 4, !tbaa !5
  br label %if.end.94

if.end.94:                                        ; preds = %if.else.92, %if.then.90
  %105 = load i64, i64* %llong, align 8, !tbaa !8
  %shr95 = lshr i64 %105, 56
  store i64 %shr95, i64* %llong, align 8, !tbaa !8
  %106 = load i64, i64* %llong, align 8, !tbaa !8
  %and96 = and i64 %106, 240
  %tobool97 = icmp ne i64 %and96, 0
  br i1 %tobool97, label %if.then.98, label %if.else.105

if.then.98:                                       ; preds = %if.end.94
  %107 = load i64, i64* %llong, align 8, !tbaa !8
  %conv99 = trunc i64 %107 to i8
  %conv100 = zext i8 %conv99 to i32
  %shr101 = ashr i32 %conv100, 4
  %idxprom = sext i32 %shr101 to i64
  %arrayidx102 = getelementptr inbounds [16 x i8], [16 x i8]* @bits_bounding_box.first_1, i32 0, i64 %idxprom
  %108 = load i8, i8* %arrayidx102, align 1, !tbaa !7
  %conv103 = zext i8 %108 to i32
  %109 = load i32, i32* %left, align 4, !tbaa !5
  %add104 = add i32 %109, %conv103
  store i32 %add104, i32* %left, align 4, !tbaa !5
  br label %if.end.112

if.else.105:                                      ; preds = %if.end.94
  %110 = load i64, i64* %llong, align 8, !tbaa !8
  %conv106 = trunc i64 %110 to i8
  %idxprom107 = zext i8 %conv106 to i64
  %arrayidx108 = getelementptr inbounds [16 x i8], [16 x i8]* @bits_bounding_box.first_1, i32 0, i64 %idxprom107
  %111 = load i8, i8* %arrayidx108, align 1, !tbaa !7
  %conv109 = zext i8 %111 to i32
  %add110 = add nsw i32 %conv109, 4
  %112 = load i32, i32* %left, align 4, !tbaa !5
  %add111 = add i32 %112, %add110
  store i32 %add111, i32* %left, align 4, !tbaa !5
  br label %if.end.112

if.end.112:                                       ; preds = %if.else.105, %if.then.98
  %113 = load i32, i32* %right, align 4, !tbaa !5
  %shl113 = shl i32 %113, 6
  store i32 %shl113, i32* %right, align 4, !tbaa !5
  %114 = load i64, i64* %rlong, align 8, !tbaa !8
  %and114 = and i64 %114, -4294967296
  %tobool115 = icmp ne i64 %and114, 0
  br i1 %tobool115, label %if.else.118, label %if.then.116

if.then.116:                                      ; preds = %if.end.112
  %115 = load i64, i64* %rlong, align 8, !tbaa !8
  %shl117 = shl i64 %115, 32
  store i64 %shl117, i64* %rlong, align 8, !tbaa !8
  br label %if.end.120

if.else.118:                                      ; preds = %if.end.112
  %116 = load i32, i32* %right, align 4, !tbaa !5
  %add119 = add i32 %116, 32
  store i32 %add119, i32* %right, align 4, !tbaa !5
  br label %if.end.120

if.end.120:                                       ; preds = %if.else.118, %if.then.116
  %117 = load i64, i64* %rlong, align 8, !tbaa !8
  %and121 = and i64 %117, -281474976710656
  %tobool122 = icmp ne i64 %and121, 0
  br i1 %tobool122, label %if.else.125, label %if.then.123

if.then.123:                                      ; preds = %if.end.120
  %118 = load i64, i64* %rlong, align 8, !tbaa !8
  %shl124 = shl i64 %118, 16
  store i64 %shl124, i64* %rlong, align 8, !tbaa !8
  br label %if.end.127

if.else.125:                                      ; preds = %if.end.120
  %119 = load i32, i32* %right, align 4, !tbaa !5
  %add126 = add i32 %119, 16
  store i32 %add126, i32* %right, align 4, !tbaa !5
  br label %if.end.127

if.end.127:                                       ; preds = %if.else.125, %if.then.123
  %120 = load i64, i64* %rlong, align 8, !tbaa !8
  %and128 = and i64 %120, -72057594037927936
  %tobool129 = icmp ne i64 %and128, 0
  br i1 %tobool129, label %if.else.132, label %if.then.130

if.then.130:                                      ; preds = %if.end.127
  %121 = load i64, i64* %rlong, align 8, !tbaa !8
  %shl131 = shl i64 %121, 8
  store i64 %shl131, i64* %rlong, align 8, !tbaa !8
  br label %if.end.134

if.else.132:                                      ; preds = %if.end.127
  %122 = load i32, i32* %right, align 4, !tbaa !5
  %add133 = add i32 %122, 8
  store i32 %add133, i32* %right, align 4, !tbaa !5
  br label %if.end.134

if.end.134:                                       ; preds = %if.else.132, %if.then.130
  %123 = load i64, i64* %rlong, align 8, !tbaa !8
  %shr135 = lshr i64 %123, 56
  store i64 %shr135, i64* %rlong, align 8, !tbaa !8
  %124 = load i64, i64* %rlong, align 8, !tbaa !8
  %and136 = and i64 %124, 15
  %tobool137 = icmp ne i64 %and136, 0
  br i1 %tobool137, label %if.else.146, label %if.then.138

if.then.138:                                      ; preds = %if.end.134
  %125 = load i64, i64* %rlong, align 8, !tbaa !8
  %conv139 = trunc i64 %125 to i8
  %conv140 = zext i8 %conv139 to i32
  %shr141 = ashr i32 %conv140, 4
  %idxprom142 = sext i32 %shr141 to i64
  %arrayidx143 = getelementptr inbounds [16 x i8], [16 x i8]* @bits_bounding_box.last_1, i32 0, i64 %idxprom142
  %126 = load i8, i8* %arrayidx143, align 1, !tbaa !7
  %conv144 = zext i8 %126 to i32
  %127 = load i32, i32* %right, align 4, !tbaa !5
  %add145 = add i32 %127, %conv144
  store i32 %add145, i32* %right, align 4, !tbaa !5
  br label %if.end.154

if.else.146:                                      ; preds = %if.end.134
  %128 = load i64, i64* %rlong, align 8, !tbaa !8
  %conv147 = trunc i64 %128 to i32
  %and148 = and i32 %conv147, 15
  %idxprom149 = zext i32 %and148 to i64
  %arrayidx150 = getelementptr inbounds [16 x i8], [16 x i8]* @bits_bounding_box.last_1, i32 0, i64 %idxprom149
  %129 = load i8, i8* %arrayidx150, align 1, !tbaa !7
  %conv151 = zext i8 %129 to i32
  %add152 = add nsw i32 %conv151, 4
  %130 = load i32, i32* %right, align 4, !tbaa !5
  %add153 = add i32 %130, %add152
  store i32 %add153, i32* %right, align 4, !tbaa !5
  br label %if.end.154

if.end.154:                                       ; preds = %if.else.146, %if.then.138
  %131 = load i32, i32* %left, align 4, !tbaa !5
  %132 = load %struct.gs_int_rect_s*, %struct.gs_int_rect_s** %pbox.addr, align 8, !tbaa !1
  %p155 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %132, i32 0, i32 0
  %x156 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p155, i32 0, i32 0
  store i32 %131, i32* %x156, align 4, !tbaa !15
  %133 = load i32, i32* %right, align 4, !tbaa !5
  %134 = load %struct.gs_int_rect_s*, %struct.gs_int_rect_s** %pbox.addr, align 8, !tbaa !1
  %q157 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %134, i32 0, i32 1
  %x158 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q157, i32 0, i32 0
  store i32 %133, i32* %x158, align 4, !tbaa !14
  %135 = bitcast i32* %n33 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %135) #1
  %136 = bitcast i32* %h to i8*
  call void @llvm.lifetime.end(i64 4, i8* %136) #1
  %137 = bitcast i8** %q32 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %137) #1
  %138 = bitcast i64* %rlong to i8*
  call void @llvm.lifetime.end(i64 8, i8* %138) #1
  %139 = bitcast i64* %llong to i8*
  call void @llvm.lifetime.end(i64 8, i8* %139) #1
  %140 = bitcast i32* %right to i8*
  call void @llvm.lifetime.end(i64 4, i8* %140) #1
  %141 = bitcast i32* %left to i8*
  call void @llvm.lifetime.end(i64 4, i8* %141) #1
  %142 = bitcast i32* %raster_longs to i8*
  call void @llvm.lifetime.end(i64 4, i8* %142) #1
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.154, %if.then
  %143 = bitcast i64** %lp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %143) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nounwind uwtable
define i32 @bits_extract_plane(%struct.bits_plane_s* %dest, %struct.bits_plane_s* %source, i32 %shift, i32 %width, i32 %height) #0 {
entry:
  %retval = alloca i32, align 4
  %dest.addr = alloca %struct.bits_plane_s*, align 8
  %source.addr = alloca %struct.bits_plane_s*, align 8
  %shift.addr = alloca i32, align 4
  %width.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  %source_depth = alloca i32, align 4
  %source_bit = alloca i32, align 4
  %source_row = alloca i8*, align 8
  %dest_depth = alloca i32, align 4
  %plane_mask = alloca i32, align 4
  %dest_bit = alloca i32, align 4
  %dest_row = alloca i8*, align 8
  %loop_case = alloca i32, align 4
  %y = alloca i32, align 4
  %x26 = alloca i32, align 4
  %src = alloca i8*, align 8
  %dst = alloca i8*, align 8
  %sword = alloca i32, align 4
  %test = alloca i32, align 4
  %store = alloca i32, align 4
  %src66 = alloca i8*, align 8
  %dst67 = alloca i8*, align 8
  %sptr = alloca i8*, align 8
  %sbit = alloca i32, align 4
  %dptr = alloca i8*, align 8
  %dbit = alloca i32, align 4
  %dbbyte = alloca i8, align 1
  %color = alloca i64, align 8
  %pixel = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.bits_plane_s* %dest, %struct.bits_plane_s** %dest.addr, align 8, !tbaa !1
  store %struct.bits_plane_s* %source, %struct.bits_plane_s** %source.addr, align 8, !tbaa !1
  store i32 %shift, i32* %shift.addr, align 4, !tbaa !5
  store i32 %width, i32* %width.addr, align 4, !tbaa !5
  store i32 %height, i32* %height.addr, align 4, !tbaa !5
  %0 = bitcast i32* %source_depth to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct.bits_plane_s*, %struct.bits_plane_s** %source.addr, align 8, !tbaa !1
  %depth = getelementptr inbounds %struct.bits_plane_s, %struct.bits_plane_s* %1, i32 0, i32 2
  %2 = load i32, i32* %depth, align 4, !tbaa !16
  store i32 %2, i32* %source_depth, align 4, !tbaa !5
  %3 = bitcast i32* %source_bit to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load %struct.bits_plane_s*, %struct.bits_plane_s** %source.addr, align 8, !tbaa !1
  %x = getelementptr inbounds %struct.bits_plane_s, %struct.bits_plane_s* %4, i32 0, i32 3
  %5 = load i32, i32* %x, align 4, !tbaa !18
  %6 = load i32, i32* %source_depth, align 4, !tbaa !5
  %mul = mul nsw i32 %5, %6
  store i32 %mul, i32* %source_bit, align 4, !tbaa !5
  %7 = bitcast i8** %source_row to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  %8 = load %struct.bits_plane_s*, %struct.bits_plane_s** %source.addr, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.bits_plane_s, %struct.bits_plane_s* %8, i32 0, i32 0
  %read = bitcast %union.bpd_* %data to i8**
  %9 = load i8*, i8** %read, align 8, !tbaa !1
  %10 = load i32, i32* %source_bit, align 4, !tbaa !5
  %shr = ashr i32 %10, 3
  %idx.ext = sext i32 %shr to i64
  %add.ptr = getelementptr inbounds i8, i8* %9, i64 %idx.ext
  store i8* %add.ptr, i8** %source_row, align 8, !tbaa !1
  %11 = bitcast i32* %dest_depth to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #1
  %12 = load %struct.bits_plane_s*, %struct.bits_plane_s** %dest.addr, align 8, !tbaa !1
  %depth1 = getelementptr inbounds %struct.bits_plane_s, %struct.bits_plane_s* %12, i32 0, i32 2
  %13 = load i32, i32* %depth1, align 4, !tbaa !16
  store i32 %13, i32* %dest_depth, align 4, !tbaa !5
  %14 = bitcast i32* %plane_mask to i8*
  call void @llvm.lifetime.start(i64 4, i8* %14) #1
  %15 = load i32, i32* %dest_depth, align 4, !tbaa !5
  %shl = shl i32 1, %15
  %sub = sub nsw i32 %shl, 1
  store i32 %sub, i32* %plane_mask, align 4, !tbaa !5
  %16 = bitcast i32* %dest_bit to i8*
  call void @llvm.lifetime.start(i64 4, i8* %16) #1
  %17 = load %struct.bits_plane_s*, %struct.bits_plane_s** %dest.addr, align 8, !tbaa !1
  %x2 = getelementptr inbounds %struct.bits_plane_s, %struct.bits_plane_s* %17, i32 0, i32 3
  %18 = load i32, i32* %x2, align 4, !tbaa !18
  %19 = load i32, i32* %dest_depth, align 4, !tbaa !5
  %mul3 = mul nsw i32 %18, %19
  store i32 %mul3, i32* %dest_bit, align 4, !tbaa !5
  %20 = bitcast i8** %dest_row to i8*
  call void @llvm.lifetime.start(i64 8, i8* %20) #1
  %21 = load %struct.bits_plane_s*, %struct.bits_plane_s** %dest.addr, align 8, !tbaa !1
  %data4 = getelementptr inbounds %struct.bits_plane_s, %struct.bits_plane_s* %21, i32 0, i32 0
  %write = bitcast %union.bpd_* %data4 to i8**
  %22 = load i8*, i8** %write, align 8, !tbaa !1
  %23 = load i32, i32* %dest_bit, align 4, !tbaa !5
  %shr5 = ashr i32 %23, 3
  %idx.ext6 = sext i32 %shr5 to i64
  %add.ptr7 = getelementptr inbounds i8, i8* %22, i64 %idx.ext6
  store i8* %add.ptr7, i8** %dest_row, align 8, !tbaa !1
  %24 = bitcast i32* %loop_case to i8*
  call void @llvm.lifetime.start(i64 4, i8* %24) #1
  store i32 0, i32* %loop_case, align 4, !tbaa !7
  %25 = bitcast i32* %y to i8*
  call void @llvm.lifetime.start(i64 4, i8* %25) #1
  %26 = load i32, i32* %source_bit, align 4, !tbaa !5
  %and = and i32 %26, 7
  store i32 %and, i32* %source_bit, align 4, !tbaa !5
  %27 = load i32, i32* %dest_bit, align 4, !tbaa !5
  %and8 = and i32 %27, 7
  store i32 %and8, i32* %dest_bit, align 4, !tbaa !5
  %28 = load i32, i32* %source_bit, align 4, !tbaa !5
  %29 = load i32, i32* %dest_bit, align 4, !tbaa !5
  %or = or i32 %28, %29
  %tobool = icmp ne i32 %or, 0
  br i1 %tobool, label %if.end.24, label %if.then

if.then:                                          ; preds = %entry
  %30 = load i32, i32* %source_depth, align 4, !tbaa !5
  switch i32 %30, label %sw.epilog [
    i32 4, label %sw.bb
    i32 32, label %sw.bb.14
  ]

sw.bb:                                            ; preds = %if.then
  %31 = load i32, i32* %dest_depth, align 4, !tbaa !5
  %cmp = icmp eq i32 %31, 1
  br i1 %cmp, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %sw.bb
  %32 = load %struct.bits_plane_s*, %struct.bits_plane_s** %source.addr, align 8, !tbaa !1
  %raster = getelementptr inbounds %struct.bits_plane_s, %struct.bits_plane_s* %32, i32 0, i32 1
  %33 = load i32, i32* %raster, align 4, !tbaa !19
  %and9 = and i32 %33, 3
  %tobool10 = icmp ne i32 %and9, 0
  br i1 %tobool10, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %land.lhs.true
  %34 = load %struct.bits_plane_s*, %struct.bits_plane_s** %source.addr, align 8, !tbaa !1
  %x11 = getelementptr inbounds %struct.bits_plane_s, %struct.bits_plane_s* %34, i32 0, i32 3
  %35 = load i32, i32* %x11, align 4, !tbaa !18
  %and12 = and i32 %35, 1
  %tobool13 = icmp ne i32 %and12, 0
  %lnot = xor i1 %tobool13, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %sw.bb
  %36 = phi i1 [ false, %land.lhs.true ], [ false, %sw.bb ], [ %lnot, %land.rhs ]
  %cond = select i1 %36, i32 1, i32 0
  store i32 %cond, i32* %loop_case, align 4, !tbaa !7
  br label %sw.epilog

sw.bb.14:                                         ; preds = %if.then
  %37 = load i32, i32* %dest_depth, align 4, !tbaa !5
  %cmp15 = icmp eq i32 %37, 8
  br i1 %cmp15, label %land.lhs.true.16, label %if.end

land.lhs.true.16:                                 ; preds = %sw.bb.14
  %38 = load i32, i32* %shift.addr, align 4, !tbaa !5
  %and17 = and i32 %38, 7
  %tobool18 = icmp ne i32 %and17, 0
  br i1 %tobool18, label %if.end, label %if.then.19

if.then.19:                                       ; preds = %land.lhs.true.16
  store i32 2, i32* %loop_case, align 4, !tbaa !7
  %39 = load i32, i32* %shift.addr, align 4, !tbaa !5
  %shr20 = ashr i32 %39, 3
  %sub21 = sub nsw i32 3, %shr20
  %40 = load i8*, i8** %source_row, align 8, !tbaa !1
  %idx.ext22 = sext i32 %sub21 to i64
  %add.ptr23 = getelementptr inbounds i8, i8* %40, i64 %idx.ext22
  store i8* %add.ptr23, i8** %source_row, align 8, !tbaa !1
  br label %if.end

if.end:                                           ; preds = %if.then.19, %land.lhs.true.16, %sw.bb.14
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then, %if.end, %land.end
  br label %if.end.24

if.end.24:                                        ; preds = %sw.epilog, %entry
  store i32 0, i32* %y, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc.355, %if.end.24
  %41 = load i32, i32* %y, align 4, !tbaa !5
  %42 = load i32, i32* %height.addr, align 4, !tbaa !5
  %cmp25 = icmp slt i32 %41, %42
  br i1 %cmp25, label %for.body, label %for.end.362

for.body:                                         ; preds = %for.cond
  %43 = bitcast i32* %x26 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %43) #1
  %44 = load i32, i32* %loop_case, align 4, !tbaa !7
  switch i32 %44, label %sw.default [
    i32 1, label %sw.bb.27
    i32 2, label %sw.bb.65
  ]

sw.bb.27:                                         ; preds = %for.body
  %45 = bitcast i8** %src to i8*
  call void @llvm.lifetime.start(i64 8, i8* %45) #1
  %46 = load i8*, i8** %source_row, align 8, !tbaa !1
  store i8* %46, i8** %src, align 8, !tbaa !1
  %47 = bitcast i8** %dst to i8*
  call void @llvm.lifetime.start(i64 8, i8* %47) #1
  %48 = load i8*, i8** %dest_row, align 8, !tbaa !1
  store i8* %48, i8** %dst, align 8, !tbaa !1
  %49 = load i32, i32* %width.addr, align 4, !tbaa !5
  store i32 %49, i32* %x26, align 4, !tbaa !5
  br label %for.cond.28

for.cond.28:                                      ; preds = %for.inc, %sw.bb.27
  %50 = load i32, i32* %x26, align 4, !tbaa !5
  %cmp29 = icmp sge i32 %50, 8
  br i1 %cmp29, label %for.body.30, label %for.end

for.body.30:                                      ; preds = %for.cond.28
  %51 = bitcast i32* %sword to i8*
  call void @llvm.lifetime.start(i64 4, i8* %51) #1
  %52 = load i8*, i8** %src, align 8, !tbaa !1
  %53 = bitcast i8* %52 to i32*
  %54 = load i32, i32* %53, align 4, !tbaa !5
  %55 = load i32, i32* %shift.addr, align 4, !tbaa !5
  %shr31 = lshr i32 %54, %55
  %and32 = and i32 %shr31, 286331153
  store i32 %and32, i32* %sword, align 4, !tbaa !5
  %56 = load i32, i32* %sword, align 4, !tbaa !5
  %shl33 = shl i32 %56, 3
  %57 = load i32, i32* %sword, align 4, !tbaa !5
  %shr34 = lshr i32 %57, 6
  %or35 = or i32 %shl33, %shr34
  %58 = load i32, i32* %sword, align 4, !tbaa !5
  %shr36 = lshr i32 %58, 15
  %or37 = or i32 %or35, %shr36
  %59 = load i32, i32* %sword, align 4, !tbaa !5
  %shr38 = lshr i32 %59, 24
  %or39 = or i32 %or37, %shr38
  %and40 = and i32 %or39, 255
  %idxprom = zext i32 %and40 to i64
  %arrayidx = getelementptr inbounds [256 x i8], [256 x i8]* @byte_acegbdfh_to_abcdefgh, i32 0, i64 %idxprom
  %60 = load i8, i8* %arrayidx, align 1, !tbaa !7
  %61 = load i8*, i8** %dst, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %61, i32 1
  store i8* %incdec.ptr, i8** %dst, align 8, !tbaa !1
  store i8 %60, i8* %61, align 1, !tbaa !7
  %62 = bitcast i32* %sword to i8*
  call void @llvm.lifetime.end(i64 4, i8* %62) #1
  br label %for.inc

for.inc:                                          ; preds = %for.body.30
  %63 = load i8*, i8** %src, align 8, !tbaa !1
  %add.ptr41 = getelementptr inbounds i8, i8* %63, i64 4
  store i8* %add.ptr41, i8** %src, align 8, !tbaa !1
  %64 = load i32, i32* %x26, align 4, !tbaa !5
  %sub42 = sub nsw i32 %64, 8
  store i32 %sub42, i32* %x26, align 4, !tbaa !5
  br label %for.cond.28

for.end:                                          ; preds = %for.cond.28
  %65 = load i32, i32* %x26, align 4, !tbaa !5
  %tobool43 = icmp ne i32 %65, 0
  br i1 %tobool43, label %if.then.44, label %if.end.64

if.then.44:                                       ; preds = %for.end
  %66 = bitcast i32* %test to i8*
  call void @llvm.lifetime.start(i64 4, i8* %66) #1
  %67 = load i32, i32* %shift.addr, align 4, !tbaa !5
  %shl45 = shl i32 16, %67
  store i32 %shl45, i32* %test, align 4, !tbaa !5
  %68 = bitcast i32* %store to i8*
  call void @llvm.lifetime.start(i64 4, i8* %68) #1
  store i32 128, i32* %store, align 4, !tbaa !5
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.then.44
  %69 = load i8*, i8** %src, align 8, !tbaa !1
  %70 = load i8, i8* %69, align 1, !tbaa !7
  %conv = zext i8 %70 to i32
  %71 = load i32, i32* %test, align 4, !tbaa !5
  %and46 = and i32 %conv, %71
  %tobool47 = icmp ne i32 %and46, 0
  br i1 %tobool47, label %cond.true, label %cond.false

cond.true:                                        ; preds = %do.body
  %72 = load i8*, i8** %dst, align 8, !tbaa !1
  %73 = load i8, i8* %72, align 1, !tbaa !7
  %conv48 = zext i8 %73 to i32
  %74 = load i32, i32* %store, align 4, !tbaa !5
  %or49 = or i32 %conv48, %74
  br label %cond.end

cond.false:                                       ; preds = %do.body
  %75 = load i8*, i8** %dst, align 8, !tbaa !1
  %76 = load i8, i8* %75, align 1, !tbaa !7
  %conv50 = zext i8 %76 to i32
  %77 = load i32, i32* %store, align 4, !tbaa !5
  %neg = xor i32 %77, -1
  %and51 = and i32 %conv50, %neg
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond52 = phi i32 [ %or49, %cond.true ], [ %and51, %cond.false ]
  %conv53 = trunc i32 %cond52 to i8
  %78 = load i8*, i8** %dst, align 8, !tbaa !1
  store i8 %conv53, i8* %78, align 1, !tbaa !7
  %79 = load i32, i32* %test, align 4, !tbaa !5
  %cmp54 = icmp uge i32 %79, 16
  br i1 %cmp54, label %if.then.56, label %if.else

if.then.56:                                       ; preds = %cond.end
  %80 = load i32, i32* %test, align 4, !tbaa !5
  %shr57 = lshr i32 %80, 4
  store i32 %shr57, i32* %test, align 4, !tbaa !5
  br label %if.end.60

if.else:                                          ; preds = %cond.end
  %81 = load i32, i32* %test, align 4, !tbaa !5
  %shl58 = shl i32 %81, 4
  store i32 %shl58, i32* %test, align 4, !tbaa !5
  %82 = load i8*, i8** %src, align 8, !tbaa !1
  %incdec.ptr59 = getelementptr inbounds i8, i8* %82, i32 1
  store i8* %incdec.ptr59, i8** %src, align 8, !tbaa !1
  br label %if.end.60

if.end.60:                                        ; preds = %if.else, %if.then.56
  %83 = load i32, i32* %store, align 4, !tbaa !5
  %shr61 = lshr i32 %83, 1
  store i32 %shr61, i32* %store, align 4, !tbaa !5
  br label %do.cond

do.cond:                                          ; preds = %if.end.60
  %84 = load i32, i32* %x26, align 4, !tbaa !5
  %dec = add nsw i32 %84, -1
  store i32 %dec, i32* %x26, align 4, !tbaa !5
  %cmp62 = icmp sgt i32 %dec, 0
  br i1 %cmp62, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %85 = bitcast i32* %store to i8*
  call void @llvm.lifetime.end(i64 4, i8* %85) #1
  %86 = bitcast i32* %test to i8*
  call void @llvm.lifetime.end(i64 4, i8* %86) #1
  br label %if.end.64

if.end.64:                                        ; preds = %do.end, %for.end
  %87 = bitcast i8** %dst to i8*
  call void @llvm.lifetime.end(i64 8, i8* %87) #1
  %88 = bitcast i8** %src to i8*
  call void @llvm.lifetime.end(i64 8, i8* %88) #1
  br label %sw.epilog.351

sw.bb.65:                                         ; preds = %for.body
  %89 = bitcast i8** %src66 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %89) #1
  %90 = load i8*, i8** %source_row, align 8, !tbaa !1
  store i8* %90, i8** %src66, align 8, !tbaa !1
  %91 = bitcast i8** %dst67 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %91) #1
  %92 = load i8*, i8** %dest_row, align 8, !tbaa !1
  store i8* %92, i8** %dst67, align 8, !tbaa !1
  %93 = load i32, i32* %width.addr, align 4, !tbaa !5
  store i32 %93, i32* %x26, align 4, !tbaa !5
  br label %for.cond.68

for.cond.68:                                      ; preds = %for.inc.73, %sw.bb.65
  %94 = load i32, i32* %x26, align 4, !tbaa !5
  %cmp69 = icmp sgt i32 %94, 0
  br i1 %cmp69, label %for.body.71, label %for.end.76

for.body.71:                                      ; preds = %for.cond.68
  %95 = load i8*, i8** %src66, align 8, !tbaa !1
  %96 = load i8, i8* %95, align 1, !tbaa !7
  %97 = load i8*, i8** %dst67, align 8, !tbaa !1
  %incdec.ptr72 = getelementptr inbounds i8, i8* %97, i32 1
  store i8* %incdec.ptr72, i8** %dst67, align 8, !tbaa !1
  store i8 %96, i8* %97, align 1, !tbaa !7
  br label %for.inc.73

for.inc.73:                                       ; preds = %for.body.71
  %98 = load i8*, i8** %src66, align 8, !tbaa !1
  %add.ptr74 = getelementptr inbounds i8, i8* %98, i64 4
  store i8* %add.ptr74, i8** %src66, align 8, !tbaa !1
  %99 = load i32, i32* %x26, align 4, !tbaa !5
  %dec75 = add nsw i32 %99, -1
  store i32 %dec75, i32* %x26, align 4, !tbaa !5
  br label %for.cond.68

for.end.76:                                       ; preds = %for.cond.68
  %100 = bitcast i8** %dst67 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %100) #1
  %101 = bitcast i8** %src66 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %101) #1
  br label %sw.epilog.351

sw.default:                                       ; preds = %for.body
  %102 = bitcast i8** %sptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %102) #1
  %103 = load i8*, i8** %source_row, align 8, !tbaa !1
  store i8* %103, i8** %sptr, align 8, !tbaa !1
  %104 = bitcast i32* %sbit to i8*
  call void @llvm.lifetime.start(i64 4, i8* %104) #1
  %105 = load i32, i32* %source_bit, align 4, !tbaa !5
  store i32 %105, i32* %sbit, align 4, !tbaa !5
  %106 = bitcast i8** %dptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %106) #1
  %107 = load i8*, i8** %dest_row, align 8, !tbaa !1
  store i8* %107, i8** %dptr, align 8, !tbaa !1
  %108 = bitcast i32* %dbit to i8*
  call void @llvm.lifetime.start(i64 4, i8* %108) #1
  %109 = load i32, i32* %dest_bit, align 4, !tbaa !5
  store i32 %109, i32* %dbit, align 4, !tbaa !5
  call void @llvm.lifetime.start(i64 1, i8* %dbbyte) #1
  %110 = load i32, i32* %dbit, align 4, !tbaa !5
  %tobool77 = icmp ne i32 %110, 0
  br i1 %tobool77, label %cond.true.78, label %cond.false.84

cond.true.78:                                     ; preds = %sw.default
  %111 = load i8*, i8** %dptr, align 8, !tbaa !1
  %112 = load i8, i8* %111, align 1, !tbaa !7
  %conv79 = zext i8 %112 to i32
  %113 = load i32, i32* %dbit, align 4, !tbaa !5
  %shr80 = ashr i32 65280, %113
  %and81 = and i32 %conv79, %shr80
  %conv82 = trunc i32 %and81 to i8
  %conv83 = zext i8 %conv82 to i32
  br label %cond.end.85

cond.false.84:                                    ; preds = %sw.default
  br label %cond.end.85

cond.end.85:                                      ; preds = %cond.false.84, %cond.true.78
  %cond86 = phi i32 [ %conv83, %cond.true.78 ], [ 0, %cond.false.84 ]
  %conv87 = trunc i32 %cond86 to i8
  store i8 %conv87, i8* %dbbyte, align 1, !tbaa !7
  %114 = load i32, i32* %dbit, align 4, !tbaa !5
  %tobool88 = icmp ne i32 %114, 0
  br i1 %tobool88, label %cond.true.89, label %cond.false.95

cond.true.89:                                     ; preds = %cond.end.85
  %115 = load i8*, i8** %dptr, align 8, !tbaa !1
  %116 = load i8, i8* %115, align 1, !tbaa !7
  %conv90 = zext i8 %116 to i32
  %117 = load i32, i32* %dbit, align 4, !tbaa !5
  %shr91 = ashr i32 65280, %117
  %and92 = and i32 %conv90, %shr91
  %conv93 = trunc i32 %and92 to i8
  %conv94 = zext i8 %conv93 to i32
  br label %cond.end.96

cond.false.95:                                    ; preds = %cond.end.85
  br label %cond.end.96

cond.end.96:                                      ; preds = %cond.false.95, %cond.true.89
  %cond97 = phi i32 [ %conv94, %cond.true.89 ], [ 0, %cond.false.95 ]
  %conv98 = trunc i32 %cond97 to i8
  store i8 %conv98, i8* %dbbyte, align 1, !tbaa !7
  %118 = load i32, i32* %width.addr, align 4, !tbaa !5
  store i32 %118, i32* %x26, align 4, !tbaa !5
  br label %for.cond.99

for.cond.99:                                      ; preds = %for.inc.331, %cond.end.96
  %119 = load i32, i32* %x26, align 4, !tbaa !5
  %cmp100 = icmp sgt i32 %119, 0
  br i1 %cmp100, label %for.body.102, label %for.end.333

for.body.102:                                     ; preds = %for.cond.99
  %120 = bitcast i64* %color to i8*
  call void @llvm.lifetime.start(i64 8, i8* %120) #1
  %121 = bitcast i32* %pixel to i8*
  call void @llvm.lifetime.start(i64 4, i8* %121) #1
  br label %do.body.103

do.body.103:                                      ; preds = %for.body.102
  %122 = load i32, i32* %source_depth, align 4, !tbaa !5
  %shr104 = ashr i32 %122, 2
  switch i32 %shr104, label %sw.default.273 [
    i32 0, label %sw.bb.105
    i32 1, label %sw.bb.113
    i32 2, label %sw.bb.119
    i32 3, label %sw.bb.121
    i32 4, label %sw.bb.140
    i32 6, label %sw.bb.147
    i32 8, label %sw.bb.158
    i32 10, label %sw.bb.173
    i32 12, label %sw.bb.192
    i32 14, label %sw.bb.215
    i32 16, label %sw.bb.242
  ]

sw.bb.105:                                        ; preds = %do.body.103
  %123 = load i8*, i8** %sptr, align 8, !tbaa !1
  %124 = load i8, i8* %123, align 1, !tbaa !7
  %conv106 = zext i8 %124 to i32
  %125 = load i32, i32* %sbit, align 4, !tbaa !5
  %sub107 = sub nsw i32 8, %125
  %126 = load i32, i32* %source_depth, align 4, !tbaa !5
  %sub108 = sub nsw i32 %sub107, %126
  %shr109 = ashr i32 %conv106, %sub108
  %127 = load i32, i32* %source_depth, align 4, !tbaa !5
  %or110 = or i32 %127, 1
  %and111 = and i32 %shr109, %or110
  %conv112 = sext i32 %and111 to i64
  store i64 %conv112, i64* %color, align 8, !tbaa !8
  br label %sw.epilog.274

sw.bb.113:                                        ; preds = %do.body.103
  %128 = load i8*, i8** %sptr, align 8, !tbaa !1
  %129 = load i8, i8* %128, align 1, !tbaa !7
  %conv114 = zext i8 %129 to i32
  %130 = load i32, i32* %sbit, align 4, !tbaa !5
  %sub115 = sub nsw i32 4, %130
  %shr116 = ashr i32 %conv114, %sub115
  %and117 = and i32 %shr116, 15
  %conv118 = sext i32 %and117 to i64
  store i64 %conv118, i64* %color, align 8, !tbaa !8
  br label %sw.epilog.274

sw.bb.119:                                        ; preds = %do.body.103
  %131 = load i8*, i8** %sptr, align 8, !tbaa !1
  %132 = load i8, i8* %131, align 1, !tbaa !7
  %conv120 = zext i8 %132 to i64
  store i64 %conv120, i64* %color, align 8, !tbaa !8
  br label %sw.epilog.274

sw.bb.121:                                        ; preds = %do.body.103
  %133 = load i32, i32* %sbit, align 4, !tbaa !5
  %tobool122 = icmp ne i32 %133, 0
  br i1 %tobool122, label %cond.true.123, label %cond.false.130

cond.true.123:                                    ; preds = %sw.bb.121
  %134 = load i8*, i8** %sptr, align 8, !tbaa !1
  %135 = load i8, i8* %134, align 1, !tbaa !7
  %conv124 = zext i8 %135 to i32
  %and125 = and i32 %conv124, 15
  %shl126 = shl i32 %and125, 8
  %136 = load i8*, i8** %sptr, align 8, !tbaa !1
  %arrayidx127 = getelementptr inbounds i8, i8* %136, i64 1
  %137 = load i8, i8* %arrayidx127, align 1, !tbaa !7
  %conv128 = zext i8 %137 to i32
  %or129 = or i32 %shl126, %conv128
  br label %cond.end.137

cond.false.130:                                   ; preds = %sw.bb.121
  %138 = load i8*, i8** %sptr, align 8, !tbaa !1
  %139 = load i8, i8* %138, align 1, !tbaa !7
  %conv131 = zext i8 %139 to i32
  %shl132 = shl i32 %conv131, 4
  %140 = load i8*, i8** %sptr, align 8, !tbaa !1
  %arrayidx133 = getelementptr inbounds i8, i8* %140, i64 1
  %141 = load i8, i8* %arrayidx133, align 1, !tbaa !7
  %conv134 = zext i8 %141 to i32
  %shr135 = ashr i32 %conv134, 4
  %or136 = or i32 %shl132, %shr135
  br label %cond.end.137

cond.end.137:                                     ; preds = %cond.false.130, %cond.true.123
  %cond138 = phi i32 [ %or129, %cond.true.123 ], [ %or136, %cond.false.130 ]
  %conv139 = sext i32 %cond138 to i64
  store i64 %conv139, i64* %color, align 8, !tbaa !8
  br label %sw.epilog.274

sw.bb.140:                                        ; preds = %do.body.103
  %142 = load i8*, i8** %sptr, align 8, !tbaa !1
  %143 = load i8, i8* %142, align 1, !tbaa !7
  %conv141 = zext i8 %143 to i32
  %shl142 = shl i32 %conv141, 8
  %144 = load i8*, i8** %sptr, align 8, !tbaa !1
  %arrayidx143 = getelementptr inbounds i8, i8* %144, i64 1
  %145 = load i8, i8* %arrayidx143, align 1, !tbaa !7
  %conv144 = zext i8 %145 to i32
  %or145 = or i32 %shl142, %conv144
  %conv146 = sext i32 %or145 to i64
  store i64 %conv146, i64* %color, align 8, !tbaa !8
  br label %sw.epilog.274

sw.bb.147:                                        ; preds = %do.body.103
  %146 = load i8*, i8** %sptr, align 8, !tbaa !1
  %147 = load i8, i8* %146, align 1, !tbaa !7
  %conv148 = zext i8 %147 to i32
  %shl149 = shl i32 %conv148, 16
  %148 = load i8*, i8** %sptr, align 8, !tbaa !1
  %arrayidx150 = getelementptr inbounds i8, i8* %148, i64 1
  %149 = load i8, i8* %arrayidx150, align 1, !tbaa !7
  %conv151 = zext i8 %149 to i32
  %shl152 = shl i32 %conv151, 8
  %or153 = or i32 %shl149, %shl152
  %150 = load i8*, i8** %sptr, align 8, !tbaa !1
  %arrayidx154 = getelementptr inbounds i8, i8* %150, i64 2
  %151 = load i8, i8* %arrayidx154, align 1, !tbaa !7
  %conv155 = zext i8 %151 to i32
  %or156 = or i32 %or153, %conv155
  %conv157 = sext i32 %or156 to i64
  store i64 %conv157, i64* %color, align 8, !tbaa !8
  br label %sw.epilog.274

sw.bb.158:                                        ; preds = %do.body.103
  %152 = load i8*, i8** %sptr, align 8, !tbaa !1
  %153 = load i8, i8* %152, align 1, !tbaa !7
  %conv159 = zext i8 %153 to i32
  %shl160 = shl i32 %conv159, 24
  %154 = load i8*, i8** %sptr, align 8, !tbaa !1
  %arrayidx161 = getelementptr inbounds i8, i8* %154, i64 1
  %155 = load i8, i8* %arrayidx161, align 1, !tbaa !7
  %conv162 = zext i8 %155 to i32
  %shl163 = shl i32 %conv162, 16
  %or164 = or i32 %shl160, %shl163
  %156 = load i8*, i8** %sptr, align 8, !tbaa !1
  %arrayidx165 = getelementptr inbounds i8, i8* %156, i64 2
  %157 = load i8, i8* %arrayidx165, align 1, !tbaa !7
  %conv166 = zext i8 %157 to i32
  %shl167 = shl i32 %conv166, 8
  %or168 = or i32 %or164, %shl167
  %158 = load i8*, i8** %sptr, align 8, !tbaa !1
  %arrayidx169 = getelementptr inbounds i8, i8* %158, i64 3
  %159 = load i8, i8* %arrayidx169, align 1, !tbaa !7
  %conv170 = zext i8 %159 to i32
  %or171 = or i32 %or168, %conv170
  %conv172 = sext i32 %or171 to i64
  store i64 %conv172, i64* %color, align 8, !tbaa !8
  br label %sw.epilog.274

sw.bb.173:                                        ; preds = %do.body.103
  %160 = load i8*, i8** %sptr, align 8, !tbaa !1
  %arrayidx174 = getelementptr inbounds i8, i8* %160, i64 0
  %161 = load i8, i8* %arrayidx174, align 1, !tbaa !7
  %conv175 = zext i8 %161 to i64
  %shl176 = shl i64 %conv175, 32
  %162 = load i8*, i8** %sptr, align 8, !tbaa !1
  %arrayidx177 = getelementptr inbounds i8, i8* %162, i64 1
  %163 = load i8, i8* %arrayidx177, align 1, !tbaa !7
  %conv178 = zext i8 %163 to i64
  %shl179 = shl i64 %conv178, 24
  %or180 = or i64 %shl176, %shl179
  %164 = load i8*, i8** %sptr, align 8, !tbaa !1
  %arrayidx181 = getelementptr inbounds i8, i8* %164, i64 2
  %165 = load i8, i8* %arrayidx181, align 1, !tbaa !7
  %conv182 = zext i8 %165 to i64
  %shl183 = shl i64 %conv182, 16
  %or184 = or i64 %or180, %shl183
  %166 = load i8*, i8** %sptr, align 8, !tbaa !1
  %arrayidx185 = getelementptr inbounds i8, i8* %166, i64 3
  %167 = load i8, i8* %arrayidx185, align 1, !tbaa !7
  %conv186 = zext i8 %167 to i64
  %shl187 = shl i64 %conv186, 8
  %or188 = or i64 %or184, %shl187
  %168 = load i8*, i8** %sptr, align 8, !tbaa !1
  %arrayidx189 = getelementptr inbounds i8, i8* %168, i64 4
  %169 = load i8, i8* %arrayidx189, align 1, !tbaa !7
  %conv190 = zext i8 %169 to i64
  %or191 = or i64 %or188, %conv190
  store i64 %or191, i64* %color, align 8, !tbaa !8
  br label %sw.epilog.274

sw.bb.192:                                        ; preds = %do.body.103
  %170 = load i8*, i8** %sptr, align 8, !tbaa !1
  %arrayidx193 = getelementptr inbounds i8, i8* %170, i64 0
  %171 = load i8, i8* %arrayidx193, align 1, !tbaa !7
  %conv194 = zext i8 %171 to i64
  %shl195 = shl i64 %conv194, 40
  %172 = load i8*, i8** %sptr, align 8, !tbaa !1
  %arrayidx196 = getelementptr inbounds i8, i8* %172, i64 1
  %173 = load i8, i8* %arrayidx196, align 1, !tbaa !7
  %conv197 = zext i8 %173 to i64
  %shl198 = shl i64 %conv197, 32
  %or199 = or i64 %shl195, %shl198
  %174 = load i8*, i8** %sptr, align 8, !tbaa !1
  %arrayidx200 = getelementptr inbounds i8, i8* %174, i64 2
  %175 = load i8, i8* %arrayidx200, align 1, !tbaa !7
  %conv201 = zext i8 %175 to i64
  %shl202 = shl i64 %conv201, 24
  %or203 = or i64 %or199, %shl202
  %176 = load i8*, i8** %sptr, align 8, !tbaa !1
  %arrayidx204 = getelementptr inbounds i8, i8* %176, i64 3
  %177 = load i8, i8* %arrayidx204, align 1, !tbaa !7
  %conv205 = zext i8 %177 to i64
  %shl206 = shl i64 %conv205, 16
  %or207 = or i64 %or203, %shl206
  %178 = load i8*, i8** %sptr, align 8, !tbaa !1
  %arrayidx208 = getelementptr inbounds i8, i8* %178, i64 4
  %179 = load i8, i8* %arrayidx208, align 1, !tbaa !7
  %conv209 = zext i8 %179 to i64
  %shl210 = shl i64 %conv209, 8
  %or211 = or i64 %or207, %shl210
  %180 = load i8*, i8** %sptr, align 8, !tbaa !1
  %arrayidx212 = getelementptr inbounds i8, i8* %180, i64 5
  %181 = load i8, i8* %arrayidx212, align 1, !tbaa !7
  %conv213 = zext i8 %181 to i64
  %or214 = or i64 %or211, %conv213
  store i64 %or214, i64* %color, align 8, !tbaa !8
  br label %sw.epilog.274

sw.bb.215:                                        ; preds = %do.body.103
  %182 = load i8*, i8** %sptr, align 8, !tbaa !1
  %arrayidx216 = getelementptr inbounds i8, i8* %182, i64 0
  %183 = load i8, i8* %arrayidx216, align 1, !tbaa !7
  %conv217 = zext i8 %183 to i64
  %shl218 = shl i64 %conv217, 48
  %184 = load i8*, i8** %sptr, align 8, !tbaa !1
  %arrayidx219 = getelementptr inbounds i8, i8* %184, i64 1
  %185 = load i8, i8* %arrayidx219, align 1, !tbaa !7
  %conv220 = zext i8 %185 to i64
  %shl221 = shl i64 %conv220, 40
  %or222 = or i64 %shl218, %shl221
  %186 = load i8*, i8** %sptr, align 8, !tbaa !1
  %arrayidx223 = getelementptr inbounds i8, i8* %186, i64 2
  %187 = load i8, i8* %arrayidx223, align 1, !tbaa !7
  %conv224 = zext i8 %187 to i64
  %shl225 = shl i64 %conv224, 32
  %or226 = or i64 %or222, %shl225
  %188 = load i8*, i8** %sptr, align 8, !tbaa !1
  %arrayidx227 = getelementptr inbounds i8, i8* %188, i64 3
  %189 = load i8, i8* %arrayidx227, align 1, !tbaa !7
  %conv228 = zext i8 %189 to i64
  %shl229 = shl i64 %conv228, 24
  %or230 = or i64 %or226, %shl229
  %190 = load i8*, i8** %sptr, align 8, !tbaa !1
  %arrayidx231 = getelementptr inbounds i8, i8* %190, i64 4
  %191 = load i8, i8* %arrayidx231, align 1, !tbaa !7
  %conv232 = zext i8 %191 to i64
  %shl233 = shl i64 %conv232, 16
  %or234 = or i64 %or230, %shl233
  %192 = load i8*, i8** %sptr, align 8, !tbaa !1
  %arrayidx235 = getelementptr inbounds i8, i8* %192, i64 5
  %193 = load i8, i8* %arrayidx235, align 1, !tbaa !7
  %conv236 = zext i8 %193 to i64
  %shl237 = shl i64 %conv236, 8
  %or238 = or i64 %or234, %shl237
  %194 = load i8*, i8** %sptr, align 8, !tbaa !1
  %arrayidx239 = getelementptr inbounds i8, i8* %194, i64 6
  %195 = load i8, i8* %arrayidx239, align 1, !tbaa !7
  %conv240 = zext i8 %195 to i64
  %or241 = or i64 %or238, %conv240
  store i64 %or241, i64* %color, align 8, !tbaa !8
  br label %sw.epilog.274

sw.bb.242:                                        ; preds = %do.body.103
  %196 = load i8*, i8** %sptr, align 8, !tbaa !1
  %arrayidx243 = getelementptr inbounds i8, i8* %196, i64 0
  %197 = load i8, i8* %arrayidx243, align 1, !tbaa !7
  %conv244 = zext i8 %197 to i64
  %shl245 = shl i64 %conv244, 56
  %198 = load i8*, i8** %sptr, align 8, !tbaa !1
  %arrayidx246 = getelementptr inbounds i8, i8* %198, i64 1
  %199 = load i8, i8* %arrayidx246, align 1, !tbaa !7
  %conv247 = zext i8 %199 to i64
  %shl248 = shl i64 %conv247, 48
  %or249 = or i64 %shl245, %shl248
  %200 = load i8*, i8** %sptr, align 8, !tbaa !1
  %arrayidx250 = getelementptr inbounds i8, i8* %200, i64 2
  %201 = load i8, i8* %arrayidx250, align 1, !tbaa !7
  %conv251 = zext i8 %201 to i64
  %shl252 = shl i64 %conv251, 40
  %or253 = or i64 %or249, %shl252
  %202 = load i8*, i8** %sptr, align 8, !tbaa !1
  %arrayidx254 = getelementptr inbounds i8, i8* %202, i64 3
  %203 = load i8, i8* %arrayidx254, align 1, !tbaa !7
  %conv255 = zext i8 %203 to i64
  %shl256 = shl i64 %conv255, 32
  %or257 = or i64 %or253, %shl256
  %204 = load i8*, i8** %sptr, align 8, !tbaa !1
  %arrayidx258 = getelementptr inbounds i8, i8* %204, i64 4
  %205 = load i8, i8* %arrayidx258, align 1, !tbaa !7
  %conv259 = zext i8 %205 to i64
  %shl260 = shl i64 %conv259, 24
  %or261 = or i64 %or257, %shl260
  %206 = load i8*, i8** %sptr, align 8, !tbaa !1
  %arrayidx262 = getelementptr inbounds i8, i8* %206, i64 5
  %207 = load i8, i8* %arrayidx262, align 1, !tbaa !7
  %conv263 = zext i8 %207 to i64
  %shl264 = shl i64 %conv263, 16
  %or265 = or i64 %or261, %shl264
  %208 = load i8*, i8** %sptr, align 8, !tbaa !1
  %arrayidx266 = getelementptr inbounds i8, i8* %208, i64 6
  %209 = load i8, i8* %arrayidx266, align 1, !tbaa !7
  %conv267 = zext i8 %209 to i64
  %shl268 = shl i64 %conv267, 8
  %or269 = or i64 %or265, %shl268
  %210 = load i8*, i8** %sptr, align 8, !tbaa !1
  %arrayidx270 = getelementptr inbounds i8, i8* %210, i64 7
  %211 = load i8, i8* %arrayidx270, align 1, !tbaa !7
  %conv271 = zext i8 %211 to i64
  %or272 = or i64 %or269, %conv271
  store i64 %or272, i64* %color, align 8, !tbaa !8
  br label %sw.epilog.274

sw.default.273:                                   ; preds = %do.body.103
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.epilog.274:                                    ; preds = %sw.bb.242, %sw.bb.215, %sw.bb.192, %sw.bb.173, %sw.bb.158, %sw.bb.147, %sw.bb.140, %cond.end.137, %sw.bb.119, %sw.bb.113, %sw.bb.105
  br label %do.cond.275

do.cond.275:                                      ; preds = %sw.epilog.274
  br label %do.end.276

do.end.276:                                       ; preds = %do.cond.275
  br label %do.body.277

do.body.277:                                      ; preds = %do.end.276
  %212 = load i32, i32* %source_depth, align 4, !tbaa !5
  %213 = load i32, i32* %sbit, align 4, !tbaa !5
  %add = add nsw i32 %213, %212
  store i32 %add, i32* %sbit, align 4, !tbaa !5
  %214 = load i32, i32* %sbit, align 4, !tbaa !5
  %shr278 = ashr i32 %214, 3
  %215 = load i8*, i8** %sptr, align 8, !tbaa !1
  %idx.ext279 = sext i32 %shr278 to i64
  %add.ptr280 = getelementptr inbounds i8, i8* %215, i64 %idx.ext279
  store i8* %add.ptr280, i8** %sptr, align 8, !tbaa !1
  %216 = load i32, i32* %sbit, align 4, !tbaa !5
  %and281 = and i32 %216, 7
  store i32 %and281, i32* %sbit, align 4, !tbaa !5
  br label %do.cond.282

do.cond.282:                                      ; preds = %do.body.277
  br label %do.end.283

do.end.283:                                       ; preds = %do.cond.282
  %217 = load i64, i64* %color, align 8, !tbaa !8
  %218 = load i32, i32* %shift.addr, align 4, !tbaa !5
  %sh_prom = zext i32 %218 to i64
  %shr284 = lshr i64 %217, %sh_prom
  %219 = load i32, i32* %plane_mask, align 4, !tbaa !5
  %conv285 = zext i32 %219 to i64
  %and286 = and i64 %shr284, %conv285
  %conv287 = trunc i64 %and286 to i32
  store i32 %conv287, i32* %pixel, align 4, !tbaa !5
  br label %do.body.288

do.body.288:                                      ; preds = %do.end.283
  %220 = load i32, i32* %dest_depth, align 4, !tbaa !5
  %shr289 = ashr i32 %220, 2
  switch i32 %shr289, label %sw.default.326 [
    i32 0, label %sw.bb.290
    i32 1, label %sw.bb.310
    i32 2, label %sw.bb.323
  ]

sw.bb.290:                                        ; preds = %do.body.288
  %221 = load i32, i32* %dest_depth, align 4, !tbaa !5
  %222 = load i32, i32* %dbit, align 4, !tbaa !5
  %add291 = add nsw i32 %222, %221
  store i32 %add291, i32* %dbit, align 4, !tbaa !5
  %cmp292 = icmp eq i32 %add291, 8
  br i1 %cmp292, label %if.then.294, label %if.else.301

if.then.294:                                      ; preds = %sw.bb.290
  %223 = load i8, i8* %dbbyte, align 1, !tbaa !7
  %conv295 = zext i8 %223 to i32
  %224 = load i32, i32* %pixel, align 4, !tbaa !5
  %conv296 = trunc i32 %224 to i8
  %conv297 = zext i8 %conv296 to i32
  %or298 = or i32 %conv295, %conv297
  %conv299 = trunc i32 %or298 to i8
  %225 = load i8*, i8** %dptr, align 8, !tbaa !1
  %incdec.ptr300 = getelementptr inbounds i8, i8* %225, i32 1
  store i8* %incdec.ptr300, i8** %dptr, align 8, !tbaa !1
  store i8 %conv299, i8* %225, align 1, !tbaa !7
  store i8 0, i8* %dbbyte, align 1, !tbaa !7
  store i32 0, i32* %dbit, align 4, !tbaa !5
  br label %if.end.309

if.else.301:                                      ; preds = %sw.bb.290
  %226 = load i32, i32* %pixel, align 4, !tbaa !5
  %227 = load i32, i32* %dbit, align 4, !tbaa !5
  %sub302 = sub nsw i32 8, %227
  %shl303 = shl i32 %226, %sub302
  %conv304 = trunc i32 %shl303 to i8
  %conv305 = zext i8 %conv304 to i32
  %228 = load i8, i8* %dbbyte, align 1, !tbaa !7
  %conv306 = zext i8 %228 to i32
  %or307 = or i32 %conv306, %conv305
  %conv308 = trunc i32 %or307 to i8
  store i8 %conv308, i8* %dbbyte, align 1, !tbaa !7
  br label %if.end.309

if.end.309:                                       ; preds = %if.else.301, %if.then.294
  br label %sw.epilog.327

sw.bb.310:                                        ; preds = %do.body.288
  %229 = load i32, i32* %dbit, align 4, !tbaa !5
  %xor = xor i32 %229, 4
  store i32 %xor, i32* %dbit, align 4, !tbaa !5
  %tobool311 = icmp ne i32 %xor, 0
  br i1 %tobool311, label %if.then.312, label %if.else.315

if.then.312:                                      ; preds = %sw.bb.310
  %230 = load i32, i32* %pixel, align 4, !tbaa !5
  %shl313 = shl i32 %230, 4
  %conv314 = trunc i32 %shl313 to i8
  store i8 %conv314, i8* %dbbyte, align 1, !tbaa !7
  br label %if.end.322

if.else.315:                                      ; preds = %sw.bb.310
  %231 = load i8, i8* %dbbyte, align 1, !tbaa !7
  %conv316 = zext i8 %231 to i32
  %232 = load i32, i32* %pixel, align 4, !tbaa !5
  %conv317 = trunc i32 %232 to i8
  %conv318 = zext i8 %conv317 to i32
  %or319 = or i32 %conv316, %conv318
  %conv320 = trunc i32 %or319 to i8
  %233 = load i8*, i8** %dptr, align 8, !tbaa !1
  %incdec.ptr321 = getelementptr inbounds i8, i8* %233, i32 1
  store i8* %incdec.ptr321, i8** %dptr, align 8, !tbaa !1
  store i8 %conv320, i8* %233, align 1, !tbaa !7
  br label %if.end.322

if.end.322:                                       ; preds = %if.else.315, %if.then.312
  br label %sw.epilog.327

sw.bb.323:                                        ; preds = %do.body.288
  %234 = load i32, i32* %pixel, align 4, !tbaa !5
  %conv324 = trunc i32 %234 to i8
  %235 = load i8*, i8** %dptr, align 8, !tbaa !1
  %incdec.ptr325 = getelementptr inbounds i8, i8* %235, i32 1
  store i8* %incdec.ptr325, i8** %dptr, align 8, !tbaa !1
  store i8 %conv324, i8* %235, align 1, !tbaa !7
  br label %sw.epilog.327

sw.default.326:                                   ; preds = %do.body.288
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.epilog.327:                                    ; preds = %sw.bb.323, %if.end.322, %if.end.309
  br label %do.cond.328

do.cond.328:                                      ; preds = %sw.epilog.327
  br label %do.end.329

do.end.329:                                       ; preds = %do.cond.328
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %do.end.329, %sw.default.326, %sw.default.273
  %236 = bitcast i32* %pixel to i8*
  call void @llvm.lifetime.end(i64 4, i8* %236) #1
  %237 = bitcast i64* %color to i8*
  call void @llvm.lifetime.end(i64 8, i8* %237) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.344 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc.331

for.inc.331:                                      ; preds = %cleanup.cont
  %238 = load i32, i32* %x26, align 4, !tbaa !5
  %dec332 = add nsw i32 %238, -1
  store i32 %dec332, i32* %x26, align 4, !tbaa !5
  br label %for.cond.99

for.end.333:                                      ; preds = %for.cond.99
  %239 = load i32, i32* %dbit, align 4, !tbaa !5
  %cmp334 = icmp ne i32 %239, 0
  br i1 %cmp334, label %if.then.336, label %if.end.343

if.then.336:                                      ; preds = %for.end.333
  %240 = load i8, i8* %dbbyte, align 1, !tbaa !7
  %conv337 = zext i8 %240 to i32
  %241 = load i8*, i8** %dptr, align 8, !tbaa !1
  %242 = load i8, i8* %241, align 1, !tbaa !7
  %conv338 = zext i8 %242 to i32
  %243 = load i32, i32* %dbit, align 4, !tbaa !5
  %shr339 = ashr i32 255, %243
  %and340 = and i32 %conv338, %shr339
  %or341 = or i32 %conv337, %and340
  %conv342 = trunc i32 %or341 to i8
  %244 = load i8*, i8** %dptr, align 8, !tbaa !1
  store i8 %conv342, i8* %244, align 1, !tbaa !7
  br label %if.end.343

if.end.343:                                       ; preds = %if.then.336, %for.end.333
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.344

cleanup.344:                                      ; preds = %if.end.343, %cleanup
  call void @llvm.lifetime.end(i64 1, i8* %dbbyte) #1
  %245 = bitcast i32* %dbit to i8*
  call void @llvm.lifetime.end(i64 4, i8* %245) #1
  %246 = bitcast i8** %dptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %246) #1
  %247 = bitcast i32* %sbit to i8*
  call void @llvm.lifetime.end(i64 4, i8* %247) #1
  %248 = bitcast i8** %sptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %248) #1
  %cleanup.dest.349 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.349, label %cleanup.352 [
    i32 0, label %cleanup.cont.350
  ]

cleanup.cont.350:                                 ; preds = %cleanup.344
  br label %sw.epilog.351

sw.epilog.351:                                    ; preds = %cleanup.cont.350, %for.end.76, %if.end.64
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.352

cleanup.352:                                      ; preds = %sw.epilog.351, %cleanup.344
  %249 = bitcast i32* %x26 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %249) #1
  %cleanup.dest.353 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.353, label %cleanup.363 [
    i32 0, label %cleanup.cont.354
  ]

cleanup.cont.354:                                 ; preds = %cleanup.352
  br label %for.inc.355

for.inc.355:                                      ; preds = %cleanup.cont.354
  %250 = load i32, i32* %y, align 4, !tbaa !5
  %inc = add nsw i32 %250, 1
  store i32 %inc, i32* %y, align 4, !tbaa !5
  %251 = load %struct.bits_plane_s*, %struct.bits_plane_s** %source.addr, align 8, !tbaa !1
  %raster356 = getelementptr inbounds %struct.bits_plane_s, %struct.bits_plane_s* %251, i32 0, i32 1
  %252 = load i32, i32* %raster356, align 4, !tbaa !19
  %253 = load i8*, i8** %source_row, align 8, !tbaa !1
  %idx.ext357 = sext i32 %252 to i64
  %add.ptr358 = getelementptr inbounds i8, i8* %253, i64 %idx.ext357
  store i8* %add.ptr358, i8** %source_row, align 8, !tbaa !1
  %254 = load %struct.bits_plane_s*, %struct.bits_plane_s** %dest.addr, align 8, !tbaa !1
  %raster359 = getelementptr inbounds %struct.bits_plane_s, %struct.bits_plane_s* %254, i32 0, i32 1
  %255 = load i32, i32* %raster359, align 4, !tbaa !19
  %256 = load i8*, i8** %dest_row, align 8, !tbaa !1
  %idx.ext360 = sext i32 %255 to i64
  %add.ptr361 = getelementptr inbounds i8, i8* %256, i64 %idx.ext360
  store i8* %add.ptr361, i8** %dest_row, align 8, !tbaa !1
  br label %for.cond

for.end.362:                                      ; preds = %for.cond
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.363

cleanup.363:                                      ; preds = %for.end.362, %cleanup.352
  %257 = bitcast i32* %y to i8*
  call void @llvm.lifetime.end(i64 4, i8* %257) #1
  %258 = bitcast i32* %loop_case to i8*
  call void @llvm.lifetime.end(i64 4, i8* %258) #1
  %259 = bitcast i8** %dest_row to i8*
  call void @llvm.lifetime.end(i64 8, i8* %259) #1
  %260 = bitcast i32* %dest_bit to i8*
  call void @llvm.lifetime.end(i64 4, i8* %260) #1
  %261 = bitcast i32* %plane_mask to i8*
  call void @llvm.lifetime.end(i64 4, i8* %261) #1
  %262 = bitcast i32* %dest_depth to i8*
  call void @llvm.lifetime.end(i64 4, i8* %262) #1
  %263 = bitcast i8** %source_row to i8*
  call void @llvm.lifetime.end(i64 8, i8* %263) #1
  %264 = bitcast i32* %source_bit to i8*
  call void @llvm.lifetime.end(i64 4, i8* %264) #1
  %265 = bitcast i32* %source_depth to i8*
  call void @llvm.lifetime.end(i64 4, i8* %265) #1
  %266 = load i32, i32* %retval
  ret i32 %266
}

; Function Attrs: nounwind uwtable
define i32 @bits_expand_plane(%struct.bits_plane_s* %dest, %struct.bits_plane_s* %source, i32 %shift, i32 %width, i32 %height) #0 {
entry:
  %retval = alloca i32, align 4
  %dest.addr = alloca %struct.bits_plane_s*, align 8
  %source.addr = alloca %struct.bits_plane_s*, align 8
  %shift.addr = alloca i32, align 4
  %width.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  %source_depth = alloca i32, align 4
  %source_bit = alloca i32, align 4
  %source_row = alloca i8*, align 8
  %dest_depth = alloca i32, align 4
  %dest_bit = alloca i32, align 4
  %dest_row = alloca i8*, align 8
  %loop_case = alloca i32, align 4
  %y = alloca i32, align 4
  %word_shift = alloca i32, align 4
  %x24 = alloca i32, align 4
  %src = alloca i8*, align 8
  %dst = alloca i32*, align 8
  %x42 = alloca i32, align 4
  %sptr = alloca i8*, align 8
  %sbit = alloca i32, align 4
  %dptr = alloca i8*, align 8
  %dbit = alloca i32, align 4
  %dbbyte = alloca i8, align 1
  %color = alloca i32, align 4
  %pixel = alloca i64, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.bits_plane_s* %dest, %struct.bits_plane_s** %dest.addr, align 8, !tbaa !1
  store %struct.bits_plane_s* %source, %struct.bits_plane_s** %source.addr, align 8, !tbaa !1
  store i32 %shift, i32* %shift.addr, align 4, !tbaa !5
  store i32 %width, i32* %width.addr, align 4, !tbaa !5
  store i32 %height, i32* %height.addr, align 4, !tbaa !5
  %0 = bitcast i32* %source_depth to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct.bits_plane_s*, %struct.bits_plane_s** %source.addr, align 8, !tbaa !1
  %depth = getelementptr inbounds %struct.bits_plane_s, %struct.bits_plane_s* %1, i32 0, i32 2
  %2 = load i32, i32* %depth, align 4, !tbaa !16
  store i32 %2, i32* %source_depth, align 4, !tbaa !5
  %3 = bitcast i32* %source_bit to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load %struct.bits_plane_s*, %struct.bits_plane_s** %source.addr, align 8, !tbaa !1
  %x = getelementptr inbounds %struct.bits_plane_s, %struct.bits_plane_s* %4, i32 0, i32 3
  %5 = load i32, i32* %x, align 4, !tbaa !18
  %6 = load i32, i32* %source_depth, align 4, !tbaa !5
  %mul = mul nsw i32 %5, %6
  store i32 %mul, i32* %source_bit, align 4, !tbaa !5
  %7 = bitcast i8** %source_row to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  %8 = load %struct.bits_plane_s*, %struct.bits_plane_s** %source.addr, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.bits_plane_s, %struct.bits_plane_s* %8, i32 0, i32 0
  %read = bitcast %union.bpd_* %data to i8**
  %9 = load i8*, i8** %read, align 8, !tbaa !1
  %10 = load i32, i32* %source_bit, align 4, !tbaa !5
  %shr = ashr i32 %10, 3
  %idx.ext = sext i32 %shr to i64
  %add.ptr = getelementptr inbounds i8, i8* %9, i64 %idx.ext
  store i8* %add.ptr, i8** %source_row, align 8, !tbaa !1
  %11 = bitcast i32* %dest_depth to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #1
  %12 = load %struct.bits_plane_s*, %struct.bits_plane_s** %dest.addr, align 8, !tbaa !1
  %depth1 = getelementptr inbounds %struct.bits_plane_s, %struct.bits_plane_s* %12, i32 0, i32 2
  %13 = load i32, i32* %depth1, align 4, !tbaa !16
  store i32 %13, i32* %dest_depth, align 4, !tbaa !5
  %14 = bitcast i32* %dest_bit to i8*
  call void @llvm.lifetime.start(i64 4, i8* %14) #1
  %15 = load %struct.bits_plane_s*, %struct.bits_plane_s** %dest.addr, align 8, !tbaa !1
  %x2 = getelementptr inbounds %struct.bits_plane_s, %struct.bits_plane_s* %15, i32 0, i32 3
  %16 = load i32, i32* %x2, align 4, !tbaa !18
  %17 = load i32, i32* %dest_depth, align 4, !tbaa !5
  %mul3 = mul nsw i32 %16, %17
  store i32 %mul3, i32* %dest_bit, align 4, !tbaa !5
  %18 = bitcast i8** %dest_row to i8*
  call void @llvm.lifetime.start(i64 8, i8* %18) #1
  %19 = load %struct.bits_plane_s*, %struct.bits_plane_s** %dest.addr, align 8, !tbaa !1
  %data4 = getelementptr inbounds %struct.bits_plane_s, %struct.bits_plane_s* %19, i32 0, i32 0
  %write = bitcast %union.bpd_* %data4 to i8**
  %20 = load i8*, i8** %write, align 8, !tbaa !1
  %21 = load i32, i32* %dest_bit, align 4, !tbaa !5
  %shr5 = ashr i32 %21, 3
  %idx.ext6 = sext i32 %shr5 to i64
  %add.ptr7 = getelementptr inbounds i8, i8* %20, i64 %idx.ext6
  store i8* %add.ptr7, i8** %dest_row, align 8, !tbaa !1
  %22 = bitcast i32* %loop_case to i8*
  call void @llvm.lifetime.start(i64 4, i8* %22) #1
  store i32 0, i32* %loop_case, align 4, !tbaa !7
  %23 = bitcast i32* %y to i8*
  call void @llvm.lifetime.start(i64 4, i8* %23) #1
  %24 = load i32, i32* %source_bit, align 4, !tbaa !5
  %and = and i32 %24, 7
  store i32 %and, i32* %source_bit, align 4, !tbaa !5
  %25 = load i32, i32* %source_bit, align 4, !tbaa !5
  %tobool = icmp ne i32 %25, 0
  br i1 %tobool, label %if.end.20, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %26 = load i32, i32* %dest_bit, align 4, !tbaa !5
  %and8 = and i32 %26, 31
  %tobool9 = icmp ne i32 %and8, 0
  br i1 %tobool9, label %if.end.20, label %lor.lhs.false.10

lor.lhs.false.10:                                 ; preds = %lor.lhs.false
  %27 = load %struct.bits_plane_s*, %struct.bits_plane_s** %dest.addr, align 8, !tbaa !1
  %raster = getelementptr inbounds %struct.bits_plane_s, %struct.bits_plane_s* %27, i32 0, i32 1
  %28 = load i32, i32* %raster, align 4, !tbaa !19
  %and11 = and i32 %28, 3
  %tobool12 = icmp ne i32 %and11, 0
  br i1 %tobool12, label %if.end.20, label %if.then

if.then:                                          ; preds = %lor.lhs.false.10
  %29 = load i32, i32* %dest_depth, align 4, !tbaa !5
  switch i32 %29, label %sw.epilog [
    i32 4, label %sw.bb
    i32 32, label %sw.bb.14
  ]

sw.bb:                                            ; preds = %if.then
  %30 = load i32, i32* %source_depth, align 4, !tbaa !5
  %cmp = icmp eq i32 %30, 1
  br i1 %cmp, label %if.then.13, label %if.end

if.then.13:                                       ; preds = %sw.bb
  store i32 1, i32* %loop_case, align 4, !tbaa !7
  br label %if.end

if.end:                                           ; preds = %if.then.13, %sw.bb
  br label %sw.epilog

sw.bb.14:                                         ; preds = %if.then
  %31 = load i32, i32* %source_depth, align 4, !tbaa !5
  %cmp15 = icmp eq i32 %31, 8
  br i1 %cmp15, label %land.lhs.true, label %if.end.19

land.lhs.true:                                    ; preds = %sw.bb.14
  %32 = load i32, i32* %shift.addr, align 4, !tbaa !5
  %and16 = and i32 %32, 7
  %tobool17 = icmp ne i32 %and16, 0
  br i1 %tobool17, label %if.end.19, label %if.then.18

if.then.18:                                       ; preds = %land.lhs.true
  store i32 2, i32* %loop_case, align 4, !tbaa !7
  br label %if.end.19

if.end.19:                                        ; preds = %if.then.18, %land.lhs.true, %sw.bb.14
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then, %if.end.19, %if.end
  br label %if.end.20

if.end.20:                                        ; preds = %sw.epilog, %lor.lhs.false.10, %lor.lhs.false, %entry
  %33 = load i32, i32* %dest_bit, align 4, !tbaa !5
  %and21 = and i32 %33, 7
  store i32 %and21, i32* %dest_bit, align 4, !tbaa !5
  %34 = load i32, i32* %loop_case, align 4, !tbaa !7
  switch i32 %34, label %sw.default [
    i32 2, label %sw.bb.22
    i32 1, label %sw.bb.37
  ]

sw.bb.22:                                         ; preds = %if.end.20
  %35 = bitcast i32* %word_shift to i8*
  call void @llvm.lifetime.start(i64 4, i8* %35) #1
  %36 = load i32, i32* %shift.addr, align 4, !tbaa !5
  %sub = sub nsw i32 24, %36
  store i32 %sub, i32* %word_shift, align 4, !tbaa !5
  store i32 0, i32* %y, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc.29, %sw.bb.22
  %37 = load i32, i32* %y, align 4, !tbaa !5
  %38 = load i32, i32* %height.addr, align 4, !tbaa !5
  %cmp23 = icmp slt i32 %37, %38
  br i1 %cmp23, label %for.body, label %for.end.36

for.body:                                         ; preds = %for.cond
  %39 = bitcast i32* %x24 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %39) #1
  %40 = bitcast i8** %src to i8*
  call void @llvm.lifetime.start(i64 8, i8* %40) #1
  %41 = load i8*, i8** %source_row, align 8, !tbaa !1
  store i8* %41, i8** %src, align 8, !tbaa !1
  %42 = bitcast i32** %dst to i8*
  call void @llvm.lifetime.start(i64 8, i8* %42) #1
  %43 = load i8*, i8** %dest_row, align 8, !tbaa !1
  %44 = bitcast i8* %43 to i32*
  store i32* %44, i32** %dst, align 8, !tbaa !1
  %45 = load i32, i32* %width.addr, align 4, !tbaa !5
  store i32 %45, i32* %x24, align 4, !tbaa !5
  br label %for.cond.25

for.cond.25:                                      ; preds = %for.inc, %for.body
  %46 = load i32, i32* %x24, align 4, !tbaa !5
  %cmp26 = icmp sgt i32 %46, 0
  br i1 %cmp26, label %for.body.27, label %for.end

for.body.27:                                      ; preds = %for.cond.25
  %47 = load i8*, i8** %src, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %47, i32 1
  store i8* %incdec.ptr, i8** %src, align 8, !tbaa !1
  %48 = load i8, i8* %47, align 1, !tbaa !7
  %conv = zext i8 %48 to i32
  %49 = load i32, i32* %word_shift, align 4, !tbaa !5
  %shl = shl i32 %conv, %49
  %50 = load i32*, i32** %dst, align 8, !tbaa !1
  %incdec.ptr28 = getelementptr inbounds i32, i32* %50, i32 1
  store i32* %incdec.ptr28, i32** %dst, align 8, !tbaa !1
  store i32 %shl, i32* %50, align 4, !tbaa !5
  br label %for.inc

for.inc:                                          ; preds = %for.body.27
  %51 = load i32, i32* %x24, align 4, !tbaa !5
  %dec = add nsw i32 %51, -1
  store i32 %dec, i32* %x24, align 4, !tbaa !5
  br label %for.cond.25

for.end:                                          ; preds = %for.cond.25
  %52 = bitcast i32** %dst to i8*
  call void @llvm.lifetime.end(i64 8, i8* %52) #1
  %53 = bitcast i8** %src to i8*
  call void @llvm.lifetime.end(i64 8, i8* %53) #1
  %54 = bitcast i32* %x24 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %54) #1
  br label %for.inc.29

for.inc.29:                                       ; preds = %for.end
  %55 = load i32, i32* %y, align 4, !tbaa !5
  %inc = add nsw i32 %55, 1
  store i32 %inc, i32* %y, align 4, !tbaa !5
  %56 = load %struct.bits_plane_s*, %struct.bits_plane_s** %source.addr, align 8, !tbaa !1
  %raster30 = getelementptr inbounds %struct.bits_plane_s, %struct.bits_plane_s* %56, i32 0, i32 1
  %57 = load i32, i32* %raster30, align 4, !tbaa !19
  %58 = load i8*, i8** %source_row, align 8, !tbaa !1
  %idx.ext31 = sext i32 %57 to i64
  %add.ptr32 = getelementptr inbounds i8, i8* %58, i64 %idx.ext31
  store i8* %add.ptr32, i8** %source_row, align 8, !tbaa !1
  %59 = load %struct.bits_plane_s*, %struct.bits_plane_s** %dest.addr, align 8, !tbaa !1
  %raster33 = getelementptr inbounds %struct.bits_plane_s, %struct.bits_plane_s* %59, i32 0, i32 1
  %60 = load i32, i32* %raster33, align 4, !tbaa !19
  %61 = load i8*, i8** %dest_row, align 8, !tbaa !1
  %idx.ext34 = sext i32 %60 to i64
  %add.ptr35 = getelementptr inbounds i8, i8* %61, i64 %idx.ext34
  store i8* %add.ptr35, i8** %dest_row, align 8, !tbaa !1
  br label %for.cond

for.end.36:                                       ; preds = %for.cond
  %62 = bitcast i32* %word_shift to i8*
  call void @llvm.lifetime.end(i64 4, i8* %62) #1
  br label %sw.epilog.209

sw.bb.37:                                         ; preds = %if.end.20
  br label %sw.default

sw.default:                                       ; preds = %if.end.20, %sw.bb.37
  store i32 0, i32* %y, align 4, !tbaa !5
  br label %for.cond.38

for.cond.38:                                      ; preds = %for.inc.200, %sw.default
  %63 = load i32, i32* %y, align 4, !tbaa !5
  %64 = load i32, i32* %height.addr, align 4, !tbaa !5
  %cmp39 = icmp slt i32 %63, %64
  br i1 %cmp39, label %for.body.41, label %for.end.208

for.body.41:                                      ; preds = %for.cond.38
  %65 = bitcast i32* %x42 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %65) #1
  %66 = bitcast i8** %sptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %66) #1
  %67 = load i8*, i8** %source_row, align 8, !tbaa !1
  store i8* %67, i8** %sptr, align 8, !tbaa !1
  %68 = bitcast i32* %sbit to i8*
  call void @llvm.lifetime.start(i64 4, i8* %68) #1
  %69 = load i32, i32* %source_bit, align 4, !tbaa !5
  store i32 %69, i32* %sbit, align 4, !tbaa !5
  %70 = bitcast i8** %dptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %70) #1
  %71 = load i8*, i8** %dest_row, align 8, !tbaa !1
  store i8* %71, i8** %dptr, align 8, !tbaa !1
  %72 = bitcast i32* %dbit to i8*
  call void @llvm.lifetime.start(i64 4, i8* %72) #1
  %73 = load i32, i32* %dest_bit, align 4, !tbaa !5
  store i32 %73, i32* %dbit, align 4, !tbaa !5
  call void @llvm.lifetime.start(i64 1, i8* %dbbyte) #1
  %74 = load i32, i32* %dbit, align 4, !tbaa !5
  %tobool43 = icmp ne i32 %74, 0
  br i1 %tobool43, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body.41
  %75 = load i8*, i8** %dptr, align 8, !tbaa !1
  %76 = load i8, i8* %75, align 1, !tbaa !7
  %conv44 = zext i8 %76 to i32
  %77 = load i32, i32* %dbit, align 4, !tbaa !5
  %shr45 = ashr i32 65280, %77
  %and46 = and i32 %conv44, %shr45
  %conv47 = trunc i32 %and46 to i8
  %conv48 = zext i8 %conv47 to i32
  br label %cond.end

cond.false:                                       ; preds = %for.body.41
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv48, %cond.true ], [ 0, %cond.false ]
  %conv49 = trunc i32 %cond to i8
  store i8 %conv49, i8* %dbbyte, align 1, !tbaa !7
  %78 = load i32, i32* %dbit, align 4, !tbaa !5
  %tobool50 = icmp ne i32 %78, 0
  br i1 %tobool50, label %cond.true.51, label %cond.false.57

cond.true.51:                                     ; preds = %cond.end
  %79 = load i8*, i8** %dptr, align 8, !tbaa !1
  %80 = load i8, i8* %79, align 1, !tbaa !7
  %conv52 = zext i8 %80 to i32
  %81 = load i32, i32* %dbit, align 4, !tbaa !5
  %shr53 = ashr i32 65280, %81
  %and54 = and i32 %conv52, %shr53
  %conv55 = trunc i32 %and54 to i8
  %conv56 = zext i8 %conv55 to i32
  br label %cond.end.58

cond.false.57:                                    ; preds = %cond.end
  br label %cond.end.58

cond.end.58:                                      ; preds = %cond.false.57, %cond.true.51
  %cond59 = phi i32 [ %conv56, %cond.true.51 ], [ 0, %cond.false.57 ]
  %conv60 = trunc i32 %cond59 to i8
  store i8 %conv60, i8* %dbbyte, align 1, !tbaa !7
  %82 = load i32, i32* %width.addr, align 4, !tbaa !5
  store i32 %82, i32* %x42, align 4, !tbaa !5
  br label %for.cond.61

for.cond.61:                                      ; preds = %for.inc.179, %cond.end.58
  %83 = load i32, i32* %x42, align 4, !tbaa !5
  %cmp62 = icmp sgt i32 %83, 0
  br i1 %cmp62, label %for.body.64, label %for.end.181

for.body.64:                                      ; preds = %for.cond.61
  %84 = bitcast i32* %color to i8*
  call void @llvm.lifetime.start(i64 4, i8* %84) #1
  %85 = bitcast i64* %pixel to i8*
  call void @llvm.lifetime.start(i64 8, i8* %85) #1
  br label %do.body

do.body:                                          ; preds = %for.body.64
  %86 = load i32, i32* %source_depth, align 4, !tbaa !5
  %shr65 = ashr i32 %86, 2
  switch i32 %shr65, label %sw.default.79 [
    i32 0, label %sw.bb.66
    i32 1, label %sw.bb.72
    i32 2, label %sw.bb.77
  ]

sw.bb.66:                                         ; preds = %do.body
  %87 = load i8*, i8** %sptr, align 8, !tbaa !1
  %88 = load i8, i8* %87, align 1, !tbaa !7
  %conv67 = zext i8 %88 to i32
  %89 = load i32, i32* %sbit, align 4, !tbaa !5
  %sub68 = sub nsw i32 8, %89
  %90 = load i32, i32* %source_depth, align 4, !tbaa !5
  %sub69 = sub nsw i32 %sub68, %90
  %shr70 = ashr i32 %conv67, %sub69
  %91 = load i32, i32* %source_depth, align 4, !tbaa !5
  %or = or i32 %91, 1
  %and71 = and i32 %shr70, %or
  store i32 %and71, i32* %color, align 4, !tbaa !5
  br label %sw.epilog.80

sw.bb.72:                                         ; preds = %do.body
  %92 = load i8*, i8** %sptr, align 8, !tbaa !1
  %93 = load i8, i8* %92, align 1, !tbaa !7
  %conv73 = zext i8 %93 to i32
  %94 = load i32, i32* %sbit, align 4, !tbaa !5
  %sub74 = sub nsw i32 4, %94
  %shr75 = ashr i32 %conv73, %sub74
  %and76 = and i32 %shr75, 15
  store i32 %and76, i32* %color, align 4, !tbaa !5
  br label %sw.epilog.80

sw.bb.77:                                         ; preds = %do.body
  %95 = load i8*, i8** %sptr, align 8, !tbaa !1
  %96 = load i8, i8* %95, align 1, !tbaa !7
  %conv78 = zext i8 %96 to i32
  store i32 %conv78, i32* %color, align 4, !tbaa !5
  br label %sw.epilog.80

sw.default.79:                                    ; preds = %do.body
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.epilog.80:                                     ; preds = %sw.bb.77, %sw.bb.72, %sw.bb.66
  br label %do.cond

do.cond:                                          ; preds = %sw.epilog.80
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %do.body.81

do.body.81:                                       ; preds = %do.end
  %97 = load i32, i32* %source_depth, align 4, !tbaa !5
  %98 = load i32, i32* %sbit, align 4, !tbaa !5
  %add = add nsw i32 %98, %97
  store i32 %add, i32* %sbit, align 4, !tbaa !5
  %99 = load i32, i32* %sbit, align 4, !tbaa !5
  %shr82 = ashr i32 %99, 3
  %100 = load i8*, i8** %sptr, align 8, !tbaa !1
  %idx.ext83 = sext i32 %shr82 to i64
  %add.ptr84 = getelementptr inbounds i8, i8* %100, i64 %idx.ext83
  store i8* %add.ptr84, i8** %sptr, align 8, !tbaa !1
  %101 = load i32, i32* %sbit, align 4, !tbaa !5
  %and85 = and i32 %101, 7
  store i32 %and85, i32* %sbit, align 4, !tbaa !5
  br label %do.cond.86

do.cond.86:                                       ; preds = %do.body.81
  br label %do.end.87

do.end.87:                                        ; preds = %do.cond.86
  %102 = load i32, i32* %color, align 4, !tbaa !5
  %103 = load i32, i32* %shift.addr, align 4, !tbaa !5
  %shl88 = shl i32 %102, %103
  %conv89 = zext i32 %shl88 to i64
  store i64 %conv89, i64* %pixel, align 8, !tbaa !8
  br label %do.body.90

do.body.90:                                       ; preds = %do.end.87
  %104 = load i32, i32* %dest_depth, align 4, !tbaa !5
  %shr91 = ashr i32 %104, 2
  switch i32 %shr91, label %sw.default.174 [
    i32 0, label %sw.bb.92
    i32 1, label %sw.bb.111
    i32 3, label %sw.bb.124
    i32 16, label %sw.bb.143
    i32 14, label %sw.bb.147
    i32 12, label %sw.bb.151
    i32 10, label %sw.bb.155
    i32 8, label %sw.bb.159
    i32 6, label %sw.bb.163
    i32 4, label %sw.bb.167
    i32 2, label %sw.bb.171
  ]

sw.bb.92:                                         ; preds = %do.body.90
  %105 = load i32, i32* %dest_depth, align 4, !tbaa !5
  %106 = load i32, i32* %dbit, align 4, !tbaa !5
  %add93 = add nsw i32 %106, %105
  store i32 %add93, i32* %dbit, align 4, !tbaa !5
  %cmp94 = icmp eq i32 %add93, 8
  br i1 %cmp94, label %if.then.96, label %if.else

if.then.96:                                       ; preds = %sw.bb.92
  %107 = load i8, i8* %dbbyte, align 1, !tbaa !7
  %conv97 = zext i8 %107 to i32
  %108 = load i64, i64* %pixel, align 8, !tbaa !8
  %conv98 = trunc i64 %108 to i8
  %conv99 = zext i8 %conv98 to i32
  %or100 = or i32 %conv97, %conv99
  %conv101 = trunc i32 %or100 to i8
  %109 = load i8*, i8** %dptr, align 8, !tbaa !1
  %incdec.ptr102 = getelementptr inbounds i8, i8* %109, i32 1
  store i8* %incdec.ptr102, i8** %dptr, align 8, !tbaa !1
  store i8 %conv101, i8* %109, align 1, !tbaa !7
  store i8 0, i8* %dbbyte, align 1, !tbaa !7
  store i32 0, i32* %dbit, align 4, !tbaa !5
  br label %if.end.110

if.else:                                          ; preds = %sw.bb.92
  %110 = load i64, i64* %pixel, align 8, !tbaa !8
  %111 = load i32, i32* %dbit, align 4, !tbaa !5
  %sub103 = sub nsw i32 8, %111
  %sh_prom = zext i32 %sub103 to i64
  %shl104 = shl i64 %110, %sh_prom
  %conv105 = trunc i64 %shl104 to i8
  %conv106 = zext i8 %conv105 to i32
  %112 = load i8, i8* %dbbyte, align 1, !tbaa !7
  %conv107 = zext i8 %112 to i32
  %or108 = or i32 %conv107, %conv106
  %conv109 = trunc i32 %or108 to i8
  store i8 %conv109, i8* %dbbyte, align 1, !tbaa !7
  br label %if.end.110

if.end.110:                                       ; preds = %if.else, %if.then.96
  br label %sw.epilog.175

sw.bb.111:                                        ; preds = %do.body.90
  %113 = load i32, i32* %dbit, align 4, !tbaa !5
  %xor = xor i32 %113, 4
  store i32 %xor, i32* %dbit, align 4, !tbaa !5
  %tobool112 = icmp ne i32 %xor, 0
  br i1 %tobool112, label %if.then.113, label %if.else.116

if.then.113:                                      ; preds = %sw.bb.111
  %114 = load i64, i64* %pixel, align 8, !tbaa !8
  %shl114 = shl i64 %114, 4
  %conv115 = trunc i64 %shl114 to i8
  store i8 %conv115, i8* %dbbyte, align 1, !tbaa !7
  br label %if.end.123

if.else.116:                                      ; preds = %sw.bb.111
  %115 = load i8, i8* %dbbyte, align 1, !tbaa !7
  %conv117 = zext i8 %115 to i32
  %116 = load i64, i64* %pixel, align 8, !tbaa !8
  %conv118 = trunc i64 %116 to i8
  %conv119 = zext i8 %conv118 to i32
  %or120 = or i32 %conv117, %conv119
  %conv121 = trunc i32 %or120 to i8
  %117 = load i8*, i8** %dptr, align 8, !tbaa !1
  %incdec.ptr122 = getelementptr inbounds i8, i8* %117, i32 1
  store i8* %incdec.ptr122, i8** %dptr, align 8, !tbaa !1
  store i8 %conv121, i8* %117, align 1, !tbaa !7
  br label %if.end.123

if.end.123:                                       ; preds = %if.else.116, %if.then.113
  br label %sw.epilog.175

sw.bb.124:                                        ; preds = %do.body.90
  %118 = load i32, i32* %dbit, align 4, !tbaa !5
  %xor125 = xor i32 %118, 4
  store i32 %xor125, i32* %dbit, align 4, !tbaa !5
  %tobool126 = icmp ne i32 %xor125, 0
  br i1 %tobool126, label %if.then.127, label %if.else.133

if.then.127:                                      ; preds = %sw.bb.124
  %119 = load i64, i64* %pixel, align 8, !tbaa !8
  %shr128 = lshr i64 %119, 4
  %conv129 = trunc i64 %shr128 to i8
  %120 = load i8*, i8** %dptr, align 8, !tbaa !1
  %incdec.ptr130 = getelementptr inbounds i8, i8* %120, i32 1
  store i8* %incdec.ptr130, i8** %dptr, align 8, !tbaa !1
  store i8 %conv129, i8* %120, align 1, !tbaa !7
  %121 = load i64, i64* %pixel, align 8, !tbaa !8
  %shl131 = shl i64 %121, 4
  %conv132 = trunc i64 %shl131 to i8
  store i8 %conv132, i8* %dbbyte, align 1, !tbaa !7
  br label %if.end.142

if.else.133:                                      ; preds = %sw.bb.124
  %122 = load i8, i8* %dbbyte, align 1, !tbaa !7
  %conv134 = zext i8 %122 to i32
  %123 = load i64, i64* %pixel, align 8, !tbaa !8
  %shr135 = lshr i64 %123, 8
  %conv136 = trunc i64 %shr135 to i8
  %conv137 = zext i8 %conv136 to i32
  %or138 = or i32 %conv134, %conv137
  %conv139 = trunc i32 %or138 to i8
  %124 = load i8*, i8** %dptr, align 8, !tbaa !1
  store i8 %conv139, i8* %124, align 1, !tbaa !7
  %125 = load i64, i64* %pixel, align 8, !tbaa !8
  %conv140 = trunc i64 %125 to i8
  %126 = load i8*, i8** %dptr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %126, i64 1
  store i8 %conv140, i8* %arrayidx, align 1, !tbaa !7
  %127 = load i8*, i8** %dptr, align 8, !tbaa !1
  %add.ptr141 = getelementptr inbounds i8, i8* %127, i64 2
  store i8* %add.ptr141, i8** %dptr, align 8, !tbaa !1
  br label %if.end.142

if.end.142:                                       ; preds = %if.else.133, %if.then.127
  br label %sw.epilog.175

sw.bb.143:                                        ; preds = %do.body.90
  %128 = load i64, i64* %pixel, align 8, !tbaa !8
  %shr144 = lshr i64 %128, 56
  %conv145 = trunc i64 %shr144 to i8
  %129 = load i8*, i8** %dptr, align 8, !tbaa !1
  %incdec.ptr146 = getelementptr inbounds i8, i8* %129, i32 1
  store i8* %incdec.ptr146, i8** %dptr, align 8, !tbaa !1
  store i8 %conv145, i8* %129, align 1, !tbaa !7
  br label %sw.bb.147

sw.bb.147:                                        ; preds = %do.body.90, %sw.bb.143
  %130 = load i64, i64* %pixel, align 8, !tbaa !8
  %shr148 = lshr i64 %130, 48
  %conv149 = trunc i64 %shr148 to i8
  %131 = load i8*, i8** %dptr, align 8, !tbaa !1
  %incdec.ptr150 = getelementptr inbounds i8, i8* %131, i32 1
  store i8* %incdec.ptr150, i8** %dptr, align 8, !tbaa !1
  store i8 %conv149, i8* %131, align 1, !tbaa !7
  br label %sw.bb.151

sw.bb.151:                                        ; preds = %do.body.90, %sw.bb.147
  %132 = load i64, i64* %pixel, align 8, !tbaa !8
  %shr152 = lshr i64 %132, 40
  %conv153 = trunc i64 %shr152 to i8
  %133 = load i8*, i8** %dptr, align 8, !tbaa !1
  %incdec.ptr154 = getelementptr inbounds i8, i8* %133, i32 1
  store i8* %incdec.ptr154, i8** %dptr, align 8, !tbaa !1
  store i8 %conv153, i8* %133, align 1, !tbaa !7
  br label %sw.bb.155

sw.bb.155:                                        ; preds = %do.body.90, %sw.bb.151
  %134 = load i64, i64* %pixel, align 8, !tbaa !8
  %shr156 = lshr i64 %134, 32
  %conv157 = trunc i64 %shr156 to i8
  %135 = load i8*, i8** %dptr, align 8, !tbaa !1
  %incdec.ptr158 = getelementptr inbounds i8, i8* %135, i32 1
  store i8* %incdec.ptr158, i8** %dptr, align 8, !tbaa !1
  store i8 %conv157, i8* %135, align 1, !tbaa !7
  br label %sw.bb.159

sw.bb.159:                                        ; preds = %do.body.90, %sw.bb.155
  %136 = load i64, i64* %pixel, align 8, !tbaa !8
  %shr160 = lshr i64 %136, 24
  %conv161 = trunc i64 %shr160 to i8
  %137 = load i8*, i8** %dptr, align 8, !tbaa !1
  %incdec.ptr162 = getelementptr inbounds i8, i8* %137, i32 1
  store i8* %incdec.ptr162, i8** %dptr, align 8, !tbaa !1
  store i8 %conv161, i8* %137, align 1, !tbaa !7
  br label %sw.bb.163

sw.bb.163:                                        ; preds = %do.body.90, %sw.bb.159
  %138 = load i64, i64* %pixel, align 8, !tbaa !8
  %shr164 = lshr i64 %138, 16
  %conv165 = trunc i64 %shr164 to i8
  %139 = load i8*, i8** %dptr, align 8, !tbaa !1
  %incdec.ptr166 = getelementptr inbounds i8, i8* %139, i32 1
  store i8* %incdec.ptr166, i8** %dptr, align 8, !tbaa !1
  store i8 %conv165, i8* %139, align 1, !tbaa !7
  br label %sw.bb.167

sw.bb.167:                                        ; preds = %do.body.90, %sw.bb.163
  %140 = load i64, i64* %pixel, align 8, !tbaa !8
  %shr168 = lshr i64 %140, 8
  %conv169 = trunc i64 %shr168 to i8
  %141 = load i8*, i8** %dptr, align 8, !tbaa !1
  %incdec.ptr170 = getelementptr inbounds i8, i8* %141, i32 1
  store i8* %incdec.ptr170, i8** %dptr, align 8, !tbaa !1
  store i8 %conv169, i8* %141, align 1, !tbaa !7
  br label %sw.bb.171

sw.bb.171:                                        ; preds = %do.body.90, %sw.bb.167
  %142 = load i64, i64* %pixel, align 8, !tbaa !8
  %conv172 = trunc i64 %142 to i8
  %143 = load i8*, i8** %dptr, align 8, !tbaa !1
  %incdec.ptr173 = getelementptr inbounds i8, i8* %143, i32 1
  store i8* %incdec.ptr173, i8** %dptr, align 8, !tbaa !1
  store i8 %conv172, i8* %143, align 1, !tbaa !7
  br label %sw.epilog.175

sw.default.174:                                   ; preds = %do.body.90
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.epilog.175:                                    ; preds = %sw.bb.171, %if.end.142, %if.end.123, %if.end.110
  br label %do.cond.176

do.cond.176:                                      ; preds = %sw.epilog.175
  br label %do.end.177

do.end.177:                                       ; preds = %do.cond.176
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %do.end.177, %sw.default.174, %sw.default.79
  %144 = bitcast i64* %pixel to i8*
  call void @llvm.lifetime.end(i64 8, i8* %144) #1
  %145 = bitcast i32* %color to i8*
  call void @llvm.lifetime.end(i64 4, i8* %145) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.192 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc.179

for.inc.179:                                      ; preds = %cleanup.cont
  %146 = load i32, i32* %x42, align 4, !tbaa !5
  %dec180 = add nsw i32 %146, -1
  store i32 %dec180, i32* %x42, align 4, !tbaa !5
  br label %for.cond.61

for.end.181:                                      ; preds = %for.cond.61
  %147 = load i32, i32* %dbit, align 4, !tbaa !5
  %cmp182 = icmp ne i32 %147, 0
  br i1 %cmp182, label %if.then.184, label %if.end.191

if.then.184:                                      ; preds = %for.end.181
  %148 = load i8, i8* %dbbyte, align 1, !tbaa !7
  %conv185 = zext i8 %148 to i32
  %149 = load i8*, i8** %dptr, align 8, !tbaa !1
  %150 = load i8, i8* %149, align 1, !tbaa !7
  %conv186 = zext i8 %150 to i32
  %151 = load i32, i32* %dbit, align 4, !tbaa !5
  %shr187 = ashr i32 255, %151
  %and188 = and i32 %conv186, %shr187
  %or189 = or i32 %conv185, %and188
  %conv190 = trunc i32 %or189 to i8
  %152 = load i8*, i8** %dptr, align 8, !tbaa !1
  store i8 %conv190, i8* %152, align 1, !tbaa !7
  br label %if.end.191

if.end.191:                                       ; preds = %if.then.184, %for.end.181
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.192

cleanup.192:                                      ; preds = %if.end.191, %cleanup
  call void @llvm.lifetime.end(i64 1, i8* %dbbyte) #1
  %153 = bitcast i32* %dbit to i8*
  call void @llvm.lifetime.end(i64 4, i8* %153) #1
  %154 = bitcast i8** %dptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %154) #1
  %155 = bitcast i32* %sbit to i8*
  call void @llvm.lifetime.end(i64 4, i8* %155) #1
  %156 = bitcast i8** %sptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %156) #1
  %157 = bitcast i32* %x42 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %157) #1
  %cleanup.dest.198 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.198, label %cleanup.210 [
    i32 0, label %cleanup.cont.199
  ]

cleanup.cont.199:                                 ; preds = %cleanup.192
  br label %for.inc.200

for.inc.200:                                      ; preds = %cleanup.cont.199
  %158 = load i32, i32* %y, align 4, !tbaa !5
  %inc201 = add nsw i32 %158, 1
  store i32 %inc201, i32* %y, align 4, !tbaa !5
  %159 = load %struct.bits_plane_s*, %struct.bits_plane_s** %source.addr, align 8, !tbaa !1
  %raster202 = getelementptr inbounds %struct.bits_plane_s, %struct.bits_plane_s* %159, i32 0, i32 1
  %160 = load i32, i32* %raster202, align 4, !tbaa !19
  %161 = load i8*, i8** %source_row, align 8, !tbaa !1
  %idx.ext203 = sext i32 %160 to i64
  %add.ptr204 = getelementptr inbounds i8, i8* %161, i64 %idx.ext203
  store i8* %add.ptr204, i8** %source_row, align 8, !tbaa !1
  %162 = load %struct.bits_plane_s*, %struct.bits_plane_s** %dest.addr, align 8, !tbaa !1
  %raster205 = getelementptr inbounds %struct.bits_plane_s, %struct.bits_plane_s* %162, i32 0, i32 1
  %163 = load i32, i32* %raster205, align 4, !tbaa !19
  %164 = load i8*, i8** %dest_row, align 8, !tbaa !1
  %idx.ext206 = sext i32 %163 to i64
  %add.ptr207 = getelementptr inbounds i8, i8* %164, i64 %idx.ext206
  store i8* %add.ptr207, i8** %dest_row, align 8, !tbaa !1
  br label %for.cond.38

for.end.208:                                      ; preds = %for.cond.38
  br label %sw.epilog.209

sw.epilog.209:                                    ; preds = %for.end.208, %for.end.36
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.210

cleanup.210:                                      ; preds = %sw.epilog.209, %cleanup.192
  %165 = bitcast i32* %y to i8*
  call void @llvm.lifetime.end(i64 4, i8* %165) #1
  %166 = bitcast i32* %loop_case to i8*
  call void @llvm.lifetime.end(i64 4, i8* %166) #1
  %167 = bitcast i8** %dest_row to i8*
  call void @llvm.lifetime.end(i64 8, i8* %167) #1
  %168 = bitcast i32* %dest_bit to i8*
  call void @llvm.lifetime.end(i64 4, i8* %168) #1
  %169 = bitcast i32* %dest_depth to i8*
  call void @llvm.lifetime.end(i64 4, i8* %169) #1
  %170 = bitcast i8** %source_row to i8*
  call void @llvm.lifetime.end(i64 8, i8* %170) #1
  %171 = bitcast i32* %source_bit to i8*
  call void @llvm.lifetime.end(i64 4, i8* %171) #1
  %172 = bitcast i32* %source_depth to i8*
  call void @llvm.lifetime.end(i64 4, i8* %172) #1
  %173 = load i32, i32* %retval
  ret i32 %173
}

; Function Attrs: nounwind uwtable
define void @bytes_fill_rectangle(i8* %dest, i32 %raster, i8 zeroext %value, i32 %width_bytes, i32 %height) #0 {
entry:
  %dest.addr = alloca i8*, align 8
  %raster.addr = alloca i32, align 4
  %value.addr = alloca i8, align 1
  %width_bytes.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  store i8* %dest, i8** %dest.addr, align 8, !tbaa !1
  store i32 %raster, i32* %raster.addr, align 4, !tbaa !5
  store i8 %value, i8* %value.addr, align 1, !tbaa !7
  store i32 %width_bytes, i32* %width_bytes.addr, align 4, !tbaa !5
  store i32 %height, i32* %height.addr, align 4, !tbaa !5
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i32, i32* %height.addr, align 4, !tbaa !5
  %dec = add nsw i32 %0, -1
  store i32 %dec, i32* %height.addr, align 4, !tbaa !5
  %cmp = icmp sgt i32 %0, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load i8*, i8** %dest.addr, align 8, !tbaa !1
  %2 = load i8, i8* %value.addr, align 1, !tbaa !7
  %conv = zext i8 %2 to i32
  %3 = load i32, i32* %width_bytes.addr, align 4, !tbaa !5
  %conv1 = sext i32 %3 to i64
  %call = call i8* @memset(i8* %1, i32 %conv, i64 %conv1) #3
  %4 = load i32, i32* %raster.addr, align 4, !tbaa !5
  %5 = load i8*, i8** %dest.addr, align 8, !tbaa !1
  %idx.ext = zext i32 %4 to i64
  %add.ptr = getelementptr inbounds i8, i8* %5, i64 %idx.ext
  store i8* %add.ptr, i8** %dest.addr, align 8, !tbaa !1
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @bytes_copy_rectangle(i8* %dest, i32 %dest_raster, i8* %src, i32 %src_raster, i32 %width_bytes, i32 %height) #0 {
entry:
  %dest.addr = alloca i8*, align 8
  %dest_raster.addr = alloca i32, align 4
  %src.addr = alloca i8*, align 8
  %src_raster.addr = alloca i32, align 4
  %width_bytes.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  store i8* %dest, i8** %dest.addr, align 8, !tbaa !1
  store i32 %dest_raster, i32* %dest_raster.addr, align 4, !tbaa !5
  store i8* %src, i8** %src.addr, align 8, !tbaa !1
  store i32 %src_raster, i32* %src_raster.addr, align 4, !tbaa !5
  store i32 %width_bytes, i32* %width_bytes.addr, align 4, !tbaa !5
  store i32 %height, i32* %height.addr, align 4, !tbaa !5
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i32, i32* %height.addr, align 4, !tbaa !5
  %dec = add nsw i32 %0, -1
  store i32 %dec, i32* %height.addr, align 4, !tbaa !5
  %cmp = icmp sgt i32 %0, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load i8*, i8** %dest.addr, align 8, !tbaa !1
  %2 = load i8*, i8** %src.addr, align 8, !tbaa !1
  %3 = load i32, i32* %width_bytes.addr, align 4, !tbaa !5
  %conv = sext i32 %3 to i64
  %call = call i8* @memcpy(i8* %1, i8* %2, i64 %conv) #3
  %4 = load i32, i32* %src_raster.addr, align 4, !tbaa !5
  %5 = load i8*, i8** %src.addr, align 8, !tbaa !1
  %idx.ext = zext i32 %4 to i64
  %add.ptr = getelementptr inbounds i8, i8* %5, i64 %idx.ext
  store i8* %add.ptr, i8** %src.addr, align 8, !tbaa !1
  %6 = load i32, i32* %dest_raster.addr, align 4, !tbaa !5
  %7 = load i8*, i8** %dest.addr, align 8, !tbaa !1
  %idx.ext1 = zext i32 %6 to i64
  %add.ptr2 = getelementptr inbounds i8, i8* %7, i64 %idx.ext1
  store i8* %add.ptr2, i8** %dest.addr, align 8, !tbaa !1
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @bytes_rectangle_is_const(i8* %src, i32 %src_raster, i32 %width_bytes, i32 %height) #0 {
entry:
  %retval = alloca i32, align 4
  %src.addr = alloca i8*, align 8
  %src_raster.addr = alloca i32, align 4
  %width_bytes.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %c = alloca i8, align 1
  %cleanup.dest.slot = alloca i32
  %s = alloca i8*, align 8
  store i8* %src, i8** %src.addr, align 8, !tbaa !1
  store i32 %src_raster, i32* %src_raster.addr, align 4, !tbaa !5
  store i32 %width_bytes, i32* %width_bytes.addr, align 4, !tbaa !5
  store i32 %height, i32* %height.addr, align 4, !tbaa !5
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  call void @llvm.lifetime.start(i64 1, i8* %c) #1
  %1 = load i32, i32* %width_bytes.addr, align 4, !tbaa !5
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load i32, i32* %height.addr, align 4, !tbaa !5
  %cmp1 = icmp eq i32 %2, 0
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.11

if.end:                                           ; preds = %lor.lhs.false
  %3 = load i8*, i8** %src.addr, align 8, !tbaa !1
  %4 = load i8, i8* %3, align 1, !tbaa !7
  store i8 %4, i8* %c, align 1, !tbaa !7
  br label %while.cond

while.cond:                                       ; preds = %cleanup.cont, %if.end
  %5 = load i32, i32* %height.addr, align 4, !tbaa !5
  %dec = add nsw i32 %5, -1
  store i32 %dec, i32* %height.addr, align 4, !tbaa !5
  %cmp2 = icmp sgt i32 %5, 0
  br i1 %cmp2, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %6 = bitcast i8** %s to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = load i8*, i8** %src.addr, align 8, !tbaa !1
  store i8* %7, i8** %s, align 8, !tbaa !1
  %8 = load i32, i32* %src_raster.addr, align 4, !tbaa !5
  %9 = load i8*, i8** %src.addr, align 8, !tbaa !1
  %idx.ext = zext i32 %8 to i64
  %add.ptr = getelementptr inbounds i8, i8* %9, i64 %idx.ext
  store i8* %add.ptr, i8** %src.addr, align 8, !tbaa !1
  %10 = load i32, i32* %width_bytes.addr, align 4, !tbaa !5
  store i32 %10, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.body
  %11 = load i32, i32* %i, align 4, !tbaa !5
  %cmp3 = icmp sgt i32 %11, 0
  br i1 %cmp3, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %12 = load i8*, i8** %s, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %12, i32 1
  store i8* %incdec.ptr, i8** %s, align 8, !tbaa !1
  %13 = load i8, i8* %12, align 1, !tbaa !7
  %conv = zext i8 %13 to i32
  %14 = load i8, i8* %c, align 1, !tbaa !7
  %conv4 = sext i8 %14 to i32
  %cmp5 = icmp ne i32 %conv, %conv4
  br i1 %cmp5, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %for.body
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.8:                                         ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.8
  %15 = load i32, i32* %i, align 4, !tbaa !5
  %dec9 = add nsw i32 %15, -1
  store i32 %dec9, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then.7
  %16 = bitcast i8** %s to i8*
  call void @llvm.lifetime.end(i64 8, i8* %16) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.11 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %17 = load i8, i8* %c, align 1, !tbaa !7
  %conv10 = sext i8 %17 to i32
  store i32 %conv10, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.11

cleanup.11:                                       ; preds = %while.end, %cleanup, %if.then
  call void @llvm.lifetime.end(i64 1, i8* %c) #1
  %18 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %18) #1
  %19 = load i32, i32* %retval
  ret i32 %19
}

; Function Attrs: nounwind uwtable
define void @bytes_copy_rectangle_zero_padding(i8* %dest, i32 %dest_raster, i8* %src, i32 %src_raster, i32 %width_bytes, i32 %height) #0 {
entry:
  %dest.addr = alloca i8*, align 8
  %dest_raster.addr = alloca i32, align 4
  %src.addr = alloca i8*, align 8
  %src_raster.addr = alloca i32, align 4
  %width_bytes.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  %padlen = alloca i32, align 4
  store i8* %dest, i8** %dest.addr, align 8, !tbaa !1
  store i32 %dest_raster, i32* %dest_raster.addr, align 4, !tbaa !5
  store i8* %src, i8** %src.addr, align 8, !tbaa !1
  store i32 %src_raster, i32* %src_raster.addr, align 4, !tbaa !5
  store i32 %width_bytes, i32* %width_bytes.addr, align 4, !tbaa !5
  store i32 %height, i32* %height.addr, align 4, !tbaa !5
  %0 = bitcast i32* %padlen to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load i32, i32* %dest_raster.addr, align 4, !tbaa !5
  store i32 %1, i32* %padlen, align 4, !tbaa !5
  %2 = load i32, i32* %padlen, align 4, !tbaa !5
  %cmp = icmp slt i32 %2, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %padlen, align 4, !tbaa !5
  %sub = sub nsw i32 0, %3
  store i32 %sub, i32* %padlen, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load i32, i32* %width_bytes.addr, align 4, !tbaa !5
  %5 = load i32, i32* %padlen, align 4, !tbaa !5
  %sub1 = sub nsw i32 %5, %4
  store i32 %sub1, i32* %padlen, align 4, !tbaa !5
  %6 = load i32, i32* %padlen, align 4, !tbaa !5
  %cmp2 = icmp eq i32 %6, 0
  br i1 %cmp2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %if.end
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then.3
  %7 = load i32, i32* %height.addr, align 4, !tbaa !5
  %dec = add nsw i32 %7, -1
  store i32 %dec, i32* %height.addr, align 4, !tbaa !5
  %cmp4 = icmp sgt i32 %7, 0
  br i1 %cmp4, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %8 = load i8*, i8** %dest.addr, align 8, !tbaa !1
  %9 = load i8*, i8** %src.addr, align 8, !tbaa !1
  %10 = load i32, i32* %width_bytes.addr, align 4, !tbaa !5
  %conv = sext i32 %10 to i64
  %call = call i8* @memcpy(i8* %8, i8* %9, i64 %conv) #3
  %11 = load i32, i32* %src_raster.addr, align 4, !tbaa !5
  %12 = load i8*, i8** %src.addr, align 8, !tbaa !1
  %idx.ext = zext i32 %11 to i64
  %add.ptr = getelementptr inbounds i8, i8* %12, i64 %idx.ext
  store i8* %add.ptr, i8** %src.addr, align 8, !tbaa !1
  %13 = load i32, i32* %dest_raster.addr, align 4, !tbaa !5
  %14 = load i8*, i8** %dest.addr, align 8, !tbaa !1
  %idx.ext5 = zext i32 %13 to i64
  %add.ptr6 = getelementptr inbounds i8, i8* %14, i64 %idx.ext5
  store i8* %add.ptr6, i8** %dest.addr, align 8, !tbaa !1
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %if.end.23

if.else:                                          ; preds = %if.end
  br label %while.cond.7

while.cond.7:                                     ; preds = %while.body.11, %if.else
  %15 = load i32, i32* %height.addr, align 4, !tbaa !5
  %dec8 = add nsw i32 %15, -1
  store i32 %dec8, i32* %height.addr, align 4, !tbaa !5
  %cmp9 = icmp sgt i32 %15, 0
  br i1 %cmp9, label %while.body.11, label %while.end.22

while.body.11:                                    ; preds = %while.cond.7
  %16 = load i8*, i8** %dest.addr, align 8, !tbaa !1
  %17 = load i8*, i8** %src.addr, align 8, !tbaa !1
  %18 = load i32, i32* %width_bytes.addr, align 4, !tbaa !5
  %conv12 = sext i32 %18 to i64
  %call13 = call i8* @memcpy(i8* %16, i8* %17, i64 %conv12) #3
  %19 = load i8*, i8** %dest.addr, align 8, !tbaa !1
  %20 = load i32, i32* %width_bytes.addr, align 4, !tbaa !5
  %idx.ext14 = sext i32 %20 to i64
  %add.ptr15 = getelementptr inbounds i8, i8* %19, i64 %idx.ext14
  %21 = load i32, i32* %padlen, align 4, !tbaa !5
  %conv16 = sext i32 %21 to i64
  %call17 = call i8* @memset(i8* %add.ptr15, i32 0, i64 %conv16) #3
  %22 = load i32, i32* %src_raster.addr, align 4, !tbaa !5
  %23 = load i8*, i8** %src.addr, align 8, !tbaa !1
  %idx.ext18 = zext i32 %22 to i64
  %add.ptr19 = getelementptr inbounds i8, i8* %23, i64 %idx.ext18
  store i8* %add.ptr19, i8** %src.addr, align 8, !tbaa !1
  %24 = load i32, i32* %dest_raster.addr, align 4, !tbaa !5
  %25 = load i8*, i8** %dest.addr, align 8, !tbaa !1
  %idx.ext20 = zext i32 %24 to i64
  %add.ptr21 = getelementptr inbounds i8, i8* %25, i64 %idx.ext20
  store i8* %add.ptr21, i8** %dest.addr, align 8, !tbaa !1
  br label %while.cond.7

while.end.22:                                     ; preds = %while.cond.7
  br label %if.end.23

if.end.23:                                        ; preds = %while.end.22, %while.end
  %26 = bitcast i32* %padlen to i8*
  call void @llvm.lifetime.end(i64 4, i8* %26) #1
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nobuiltin nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"any pointer", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !3, i64 0}
!7 = !{!3, !3, i64 0}
!8 = !{!9, !9, i64 0}
!9 = !{!"long", !3, i64 0}
!10 = !{!11, !6, i64 12}
!11 = !{!"gs_int_rect_s", !12, i64 0, !12, i64 8}
!12 = !{!"gs_int_point_s", !6, i64 0, !6, i64 4}
!13 = !{!11, !6, i64 4}
!14 = !{!11, !6, i64 8}
!15 = !{!11, !6, i64 0}
!16 = !{!17, !6, i64 12}
!17 = !{!"bits_plane_s", !3, i64 0, !6, i64 8, !6, i64 12, !6, i64 16}
!18 = !{!17, !6, i64 16}
!19 = !{!17, !6, i64 8}
