; ModuleID = './iscannum.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ref_s = type { %struct.tas_s, %union.v }
%struct.tas_s = type { i16, i16, i32 }
%union.v = type { i64 }

@scan_number.powers_10 = internal constant [7 x float] [float 1.000000e+00, float 1.000000e+01, float 1.000000e+02, float 1.000000e+03, float 1.000000e+04, float 1.000000e+05, float 1.000000e+06], align 16
@scan_number.neg_powers_10 = internal constant [7 x double] [double 1.000000e+00, double 1.000000e-01, double 1.000000e-02, double 1.000000e-03, double 1.000000e-04, double 1.000000e-05, double 1.000000e-06], align 16
@scan_char_array = external constant [260 x i8], align 16

; Function Attrs: nounwind uwtable
define i32 @scan_number(i8* %str, i8* %end, i32 %sign, %struct.ref_s* %pref, i8** %psp, i32 %scanner_options) #0 {
entry:
  %retval = alloca i32, align 4
  %str.addr = alloca i8*, align 8
  %end.addr = alloca i8*, align 8
  %sign.addr = alloca i32, align 4
  %pref.addr = alloca %struct.ref_s*, align 8
  %psp.addr = alloca i8**, align 8
  %scanner_options.addr = alloca i32, align 4
  %sp = alloca i8*, align 8
  %ival = alloca i64, align 8
  %dval = alloca double, align 8
  %exp10 = alloca i32, align 4
  %code = alloca i32, align 4
  %c = alloca i32, align 4
  %d = alloca i32, align 4
  %max_scan = alloca i64, align 8
  %max_ps_int_scan = alloca i64, align 8
  %min_ps_int_scan = alloca i64, align 8
  %decoder = alloca i8*, align 8
  %cleanup.dest.slot = alloca i32
  %radix = alloca i32, align 4
  %uval = alloca i64, align 8
  %imax = alloca i64, align 8
  %shift = alloca i32, align 4
  %irem = alloca i64, align 8
  %int1 = alloca i32, align 4
  %esign = alloca i32, align 4
  %iexp = alloca i32, align 4
  store i8* %str, i8** %str.addr, align 8, !tbaa !1
  store i8* %end, i8** %end.addr, align 8, !tbaa !1
  store i32 %sign, i32* %sign.addr, align 4, !tbaa !5
  store %struct.ref_s* %pref, %struct.ref_s** %pref.addr, align 8, !tbaa !1
  store i8** %psp, i8*** %psp.addr, align 8, !tbaa !1
  store i32 %scanner_options, i32* %scanner_options.addr, align 4, !tbaa !5
  %0 = bitcast i8** %sp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i8*, i8** %str.addr, align 8, !tbaa !1
  store i8* %1, i8** %sp, align 8, !tbaa !1
  %2 = bitcast i64* %ival to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = bitcast double* %dval to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = bitcast i32* %exp10 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  store i32 0, i32* %code, align 4, !tbaa !5
  %6 = bitcast i32* %c to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = bitcast i32* %d to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  %8 = bitcast i64* %max_scan to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #1
  %9 = bitcast i64* %max_ps_int_scan to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #1
  %10 = bitcast i64* %min_ps_int_scan to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #1
  %11 = bitcast i8** %decoder to i8*
  call void @llvm.lifetime.start(i64 8, i8* %11) #1
  store i8* getelementptr inbounds ([260 x i8], [260 x i8]* @scan_char_array, i32 0, i64 4), i8** %decoder, align 8, !tbaa !1
  %12 = load i8*, i8** %sp, align 8, !tbaa !1
  %13 = load i8*, i8** %end.addr, align 8, !tbaa !1
  %cmp = icmp uge i8* %12, %13
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 -18, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.556

if.else:                                          ; preds = %entry
  %14 = load i8*, i8** %sp, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %14, i32 1
  store i8* %incdec.ptr, i8** %sp, align 8, !tbaa !1
  %15 = load i8, i8* %14, align 1, !tbaa !7
  %conv = zext i8 %15 to i32
  store i32 %conv, i32* %c, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.else
  %16 = load i32, i32* %c, align 4, !tbaa !5
  %idxprom = sext i32 %16 to i64
  %17 = load i8*, i8** %decoder, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %17, i64 %idxprom
  %18 = load i8, i8* %arrayidx, align 1, !tbaa !7
  %conv1 = zext i8 %18 to i32
  store i32 %conv1, i32* %d, align 4, !tbaa !5
  %cmp2 = icmp slt i32 %conv1, 10
  br i1 %cmp2, label %if.end.23, label %if.then.4

if.then.4:                                        ; preds = %if.end
  %19 = load i32, i32* %c, align 4, !tbaa !5
  %cmp5 = icmp ne i32 %19, 46
  br i1 %cmp5, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.then.4
  store i32 -18, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.556

if.end.8:                                         ; preds = %if.then.4
  %20 = load i8*, i8** %sp, align 8, !tbaa !1
  %21 = load i8*, i8** %end.addr, align 8, !tbaa !1
  %cmp9 = icmp uge i8* %20, %21
  br i1 %cmp9, label %if.then.11, label %if.else.12

if.then.11:                                       ; preds = %if.end.8
  store i32 -18, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.556

if.else.12:                                       ; preds = %if.end.8
  %22 = load i8*, i8** %sp, align 8, !tbaa !1
  %incdec.ptr13 = getelementptr inbounds i8, i8* %22, i32 1
  store i8* %incdec.ptr13, i8** %sp, align 8, !tbaa !1
  %23 = load i8, i8* %22, align 1, !tbaa !7
  %conv14 = zext i8 %23 to i32
  store i32 %conv14, i32* %c, align 4, !tbaa !5
  br label %if.end.15

if.end.15:                                        ; preds = %if.else.12
  %24 = load i32, i32* %c, align 4, !tbaa !5
  %idxprom16 = sext i32 %24 to i64
  %25 = load i8*, i8** %decoder, align 8, !tbaa !1
  %arrayidx17 = getelementptr inbounds i8, i8* %25, i64 %idxprom16
  %26 = load i8, i8* %arrayidx17, align 1, !tbaa !7
  %conv18 = zext i8 %26 to i32
  store i32 %conv18, i32* %d, align 4, !tbaa !5
  %cmp19 = icmp slt i32 %conv18, 10
  br i1 %cmp19, label %if.end.22, label %if.then.21

if.then.21:                                       ; preds = %if.end.15
  store i32 -18, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.556

if.end.22:                                        ; preds = %if.end.15
  store i64 0, i64* %ival, align 8, !tbaa !8
  br label %i2r

if.end.23:                                        ; preds = %if.end
  %27 = load i32, i32* %d, align 4, !tbaa !5
  %conv24 = sext i32 %27 to i64
  store i64 %conv24, i64* %ival, align 8, !tbaa !8
  %28 = load i8*, i8** %end.addr, align 8, !tbaa !1
  %29 = load i8*, i8** %sp, align 8, !tbaa !1
  %sub.ptr.lhs.cast = ptrtoint i8* %28 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %29 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %cmp25 = icmp sge i64 %sub.ptr.sub, 3
  br i1 %cmp25, label %if.then.27, label %if.end.63

if.then.27:                                       ; preds = %if.end.23
  %30 = load i8*, i8** %sp, align 8, !tbaa !1
  %31 = load i8, i8* %30, align 1, !tbaa !7
  %conv28 = zext i8 %31 to i32
  store i32 %conv28, i32* %c, align 4, !tbaa !5
  %idxprom29 = sext i32 %conv28 to i64
  %32 = load i8*, i8** %decoder, align 8, !tbaa !1
  %arrayidx30 = getelementptr inbounds i8, i8* %32, i64 %idxprom29
  %33 = load i8, i8* %arrayidx30, align 1, !tbaa !7
  %conv31 = zext i8 %33 to i32
  store i32 %conv31, i32* %d, align 4, !tbaa !5
  %cmp32 = icmp slt i32 %conv31, 10
  br i1 %cmp32, label %if.end.36, label %if.then.34

if.then.34:                                       ; preds = %if.then.27
  %34 = load i8*, i8** %sp, align 8, !tbaa !1
  %incdec.ptr35 = getelementptr inbounds i8, i8* %34, i32 1
  store i8* %incdec.ptr35, i8** %sp, align 8, !tbaa !1
  br label %ind

if.end.36:                                        ; preds = %if.then.27
  %35 = load i64, i64* %ival, align 8, !tbaa !8
  %mul = mul nsw i64 %35, 10
  %36 = load i32, i32* %d, align 4, !tbaa !5
  %conv37 = sext i32 %36 to i64
  %add = add nsw i64 %mul, %conv37
  store i64 %add, i64* %ival, align 8, !tbaa !8
  %37 = load i8*, i8** %sp, align 8, !tbaa !1
  %arrayidx38 = getelementptr inbounds i8, i8* %37, i64 1
  %38 = load i8, i8* %arrayidx38, align 1, !tbaa !7
  %conv39 = zext i8 %38 to i32
  store i32 %conv39, i32* %c, align 4, !tbaa !5
  %idxprom40 = sext i32 %conv39 to i64
  %39 = load i8*, i8** %decoder, align 8, !tbaa !1
  %arrayidx41 = getelementptr inbounds i8, i8* %39, i64 %idxprom40
  %40 = load i8, i8* %arrayidx41, align 1, !tbaa !7
  %conv42 = zext i8 %40 to i32
  store i32 %conv42, i32* %d, align 4, !tbaa !5
  %cmp43 = icmp slt i32 %conv42, 10
  br i1 %cmp43, label %if.end.46, label %if.then.45

if.then.45:                                       ; preds = %if.end.36
  %41 = load i8*, i8** %sp, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds i8, i8* %41, i64 2
  store i8* %add.ptr, i8** %sp, align 8, !tbaa !1
  br label %ind

if.end.46:                                        ; preds = %if.end.36
  %42 = load i64, i64* %ival, align 8, !tbaa !8
  %mul47 = mul nsw i64 %42, 10
  %43 = load i32, i32* %d, align 4, !tbaa !5
  %conv48 = sext i32 %43 to i64
  %add49 = add nsw i64 %mul47, %conv48
  store i64 %add49, i64* %ival, align 8, !tbaa !8
  %44 = load i8*, i8** %sp, align 8, !tbaa !1
  %add.ptr50 = getelementptr inbounds i8, i8* %44, i64 3
  store i8* %add.ptr50, i8** %sp, align 8, !tbaa !1
  %45 = load i8*, i8** %sp, align 8, !tbaa !1
  %arrayidx51 = getelementptr inbounds i8, i8* %45, i64 -1
  %46 = load i8, i8* %arrayidx51, align 1, !tbaa !7
  %conv52 = zext i8 %46 to i32
  store i32 %conv52, i32* %c, align 4, !tbaa !5
  %idxprom53 = sext i32 %conv52 to i64
  %47 = load i8*, i8** %decoder, align 8, !tbaa !1
  %arrayidx54 = getelementptr inbounds i8, i8* %47, i64 %idxprom53
  %48 = load i8, i8* %arrayidx54, align 1, !tbaa !7
  %conv55 = zext i8 %48 to i32
  store i32 %conv55, i32* %d, align 4, !tbaa !5
  %cmp56 = icmp slt i32 %conv55, 10
  br i1 %cmp56, label %if.end.59, label %if.then.58

if.then.58:                                       ; preds = %if.end.46
  br label %ind

if.end.59:                                        ; preds = %if.end.46
  %49 = load i64, i64* %ival, align 8, !tbaa !8
  %mul60 = mul nsw i64 %49, 10
  %50 = load i32, i32* %d, align 4, !tbaa !5
  %conv61 = sext i32 %50 to i64
  %add62 = add nsw i64 %mul60, %conv61
  store i64 %add62, i64* %ival, align 8, !tbaa !8
  br label %if.end.63

if.end.63:                                        ; preds = %if.end.59, %if.end.23
  %51 = load i32, i32* %scanner_options.addr, align 4, !tbaa !5
  %and = and i32 %51, 128
  %tobool = icmp ne i32 %and, 0
  %cond = select i1 %tobool, i64 2147483647, i64 9223372036854775807
  store i64 %cond, i64* %max_ps_int_scan, align 8, !tbaa !8
  %52 = load i32, i32* %scanner_options.addr, align 4, !tbaa !5
  %and64 = and i32 %52, 128
  %tobool65 = icmp ne i32 %and64, 0
  %cond66 = select i1 %tobool65, i64 -2147483648, i64 -9223372036854775808
  store i64 %cond66, i64* %min_ps_int_scan, align 8, !tbaa !8
  %53 = load i32, i32* %scanner_options.addr, align 4, !tbaa !5
  %and67 = and i32 %53, 64
  %tobool68 = icmp ne i32 %and67, 0
  br i1 %tobool68, label %land.lhs.true, label %cond.false

land.lhs.true:                                    ; preds = %if.end.63
  %54 = load i32, i32* %sign.addr, align 4, !tbaa !5
  %cmp69 = icmp sge i32 %54, 0
  br i1 %cmp69, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true, %if.end.63
  %55 = load i64, i64* %max_ps_int_scan, align 8, !tbaa !8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond71 = phi i64 [ -1, %cond.true ], [ %55, %cond.false ]
  store i64 %cond71, i64* %max_scan, align 8, !tbaa !8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end
  %56 = load i8*, i8** %sp, align 8, !tbaa !1
  %57 = load i8*, i8** %end.addr, align 8, !tbaa !1
  %cmp72 = icmp uge i8* %56, %57
  br i1 %cmp72, label %if.then.74, label %if.else.75

if.then.74:                                       ; preds = %for.cond
  br label %iret

if.else.75:                                       ; preds = %for.cond
  %58 = load i8*, i8** %sp, align 8, !tbaa !1
  %incdec.ptr76 = getelementptr inbounds i8, i8* %58, i32 1
  store i8* %incdec.ptr76, i8** %sp, align 8, !tbaa !1
  %59 = load i8, i8* %58, align 1, !tbaa !7
  %conv77 = zext i8 %59 to i32
  store i32 %conv77, i32* %c, align 4, !tbaa !5
  br label %if.end.78

if.end.78:                                        ; preds = %if.else.75
  %60 = load i32, i32* %c, align 4, !tbaa !5
  %idxprom79 = sext i32 %60 to i64
  %61 = load i8*, i8** %decoder, align 8, !tbaa !1
  %arrayidx80 = getelementptr inbounds i8, i8* %61, i64 %idxprom79
  %62 = load i8, i8* %arrayidx80, align 1, !tbaa !7
  %conv81 = zext i8 %62 to i32
  store i32 %conv81, i32* %d, align 4, !tbaa !5
  %cmp82 = icmp slt i32 %conv81, 10
  br i1 %cmp82, label %if.end.85, label %if.then.84

if.then.84:                                       ; preds = %if.end.78
  br label %for.end

if.end.85:                                        ; preds = %if.end.78
  %63 = load i64, i64* %ival, align 8, !tbaa !8
  %64 = load i64, i64* %max_scan, align 8, !tbaa !8
  %div = udiv i64 %64, 10
  %cmp86 = icmp uge i64 %63, %div
  br i1 %cmp86, label %land.lhs.true.88, label %if.end.147

land.lhs.true.88:                                 ; preds = %if.end.85
  %65 = load i64, i64* %ival, align 8, !tbaa !8
  %66 = load i64, i64* %max_scan, align 8, !tbaa !8
  %div89 = udiv i64 %66, 10
  %cmp90 = icmp ugt i64 %65, %div89
  br i1 %cmp90, label %if.then.95, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.88
  %67 = load i32, i32* %d, align 4, !tbaa !5
  %conv92 = sext i32 %67 to i64
  %68 = load i64, i64* %max_scan, align 8, !tbaa !8
  %rem = urem i64 %68, 10
  %cmp93 = icmp sgt i64 %conv92, %rem
  br i1 %cmp93, label %if.then.95, label %if.end.147

if.then.95:                                       ; preds = %lor.lhs.false, %land.lhs.true.88
  %69 = load i64, i64* %ival, align 8, !tbaa !8
  %70 = load i64, i64* %max_ps_int_scan, align 8, !tbaa !8
  %div96 = sdiv i64 %70, 10
  %cmp97 = icmp eq i64 %69, %div96
  br i1 %cmp97, label %land.lhs.true.99, label %if.else.144

land.lhs.true.99:                                 ; preds = %if.then.95
  %71 = load i32, i32* %d, align 4, !tbaa !5
  %conv100 = sext i32 %71 to i64
  %72 = load i64, i64* %max_ps_int_scan, align 8, !tbaa !8
  %rem101 = srem i64 %72, 10
  %add102 = add nsw i64 %rem101, 1
  %cmp103 = icmp eq i64 %conv100, %add102
  br i1 %cmp103, label %land.lhs.true.105, label %if.else.144

land.lhs.true.105:                                ; preds = %land.lhs.true.99
  %73 = load i32, i32* %sign.addr, align 4, !tbaa !5
  %cmp106 = icmp slt i32 %73, 0
  br i1 %cmp106, label %if.then.108, label %if.else.144

if.then.108:                                      ; preds = %land.lhs.true.105
  %74 = load i8*, i8** %sp, align 8, !tbaa !1
  %75 = load i8*, i8** %end.addr, align 8, !tbaa !1
  %cmp109 = icmp uge i8* %74, %75
  br i1 %cmp109, label %if.then.111, label %if.else.112

if.then.111:                                      ; preds = %if.then.108
  store i32 -1, i32* %c, align 4, !tbaa !5
  br label %if.end.115

if.else.112:                                      ; preds = %if.then.108
  %76 = load i8*, i8** %sp, align 8, !tbaa !1
  %incdec.ptr113 = getelementptr inbounds i8, i8* %76, i32 1
  store i8* %incdec.ptr113, i8** %sp, align 8, !tbaa !1
  %77 = load i8, i8* %76, align 1, !tbaa !7
  %conv114 = zext i8 %77 to i32
  store i32 %conv114, i32* %c, align 4, !tbaa !5
  br label %if.end.115

if.end.115:                                       ; preds = %if.else.112, %if.then.111
  %78 = load i64, i64* %min_ps_int_scan, align 8, !tbaa !8
  %conv116 = sitofp i64 %78 to double
  %sub = fsub double -0.000000e+00, %conv116
  store double %sub, double* %dval, align 8, !tbaa !10
  %79 = load i32, i32* %c, align 4, !tbaa !5
  %cmp117 = icmp eq i32 %79, 101
  br i1 %cmp117, label %if.then.122, label %lor.lhs.false.119

lor.lhs.false.119:                                ; preds = %if.end.115
  %80 = load i32, i32* %c, align 4, !tbaa !5
  %cmp120 = icmp eq i32 %80, 69
  br i1 %cmp120, label %if.then.122, label %if.else.123

if.then.122:                                      ; preds = %lor.lhs.false.119, %if.end.115
  store i32 0, i32* %exp10, align 4, !tbaa !5
  br label %fs

if.else.123:                                      ; preds = %lor.lhs.false.119
  %81 = load i32, i32* %c, align 4, !tbaa !5
  %cmp124 = icmp eq i32 %81, 46
  br i1 %cmp124, label %if.then.126, label %if.else.134

if.then.126:                                      ; preds = %if.else.123
  %82 = load i8*, i8** %sp, align 8, !tbaa !1
  %83 = load i8*, i8** %end.addr, align 8, !tbaa !1
  %cmp127 = icmp uge i8* %82, %83
  br i1 %cmp127, label %if.then.129, label %if.else.130

if.then.129:                                      ; preds = %if.then.126
  store i32 -1, i32* %c, align 4, !tbaa !5
  br label %if.end.133

if.else.130:                                      ; preds = %if.then.126
  %84 = load i8*, i8** %sp, align 8, !tbaa !1
  %incdec.ptr131 = getelementptr inbounds i8, i8* %84, i32 1
  store i8* %incdec.ptr131, i8** %sp, align 8, !tbaa !1
  %85 = load i8, i8* %84, align 1, !tbaa !7
  %conv132 = zext i8 %85 to i32
  store i32 %conv132, i32* %c, align 4, !tbaa !5
  br label %if.end.133

if.end.133:                                       ; preds = %if.else.130, %if.then.129
  store i32 0, i32* %exp10, align 4, !tbaa !5
  br label %fd

if.else.134:                                      ; preds = %if.else.123
  %86 = load i32, i32* %c, align 4, !tbaa !5
  %idxprom135 = sext i32 %86 to i64
  %87 = load i8*, i8** %decoder, align 8, !tbaa !1
  %arrayidx136 = getelementptr inbounds i8, i8* %87, i64 %idxprom135
  %88 = load i8, i8* %arrayidx136, align 1, !tbaa !7
  %conv137 = zext i8 %88 to i32
  store i32 %conv137, i32* %d, align 4, !tbaa !5
  %cmp138 = icmp slt i32 %conv137, 10
  br i1 %cmp138, label %if.end.141, label %if.then.140

if.then.140:                                      ; preds = %if.else.134
  %89 = load i64, i64* %min_ps_int_scan, align 8, !tbaa !8
  store i64 %89, i64* %ival, align 8, !tbaa !8
  br label %for.end

if.end.141:                                       ; preds = %if.else.134
  br label %if.end.142

if.end.142:                                       ; preds = %if.end.141
  br label %if.end.143

if.end.143:                                       ; preds = %if.end.142
  br label %if.end.146

if.else.144:                                      ; preds = %land.lhs.true.105, %land.lhs.true.99, %if.then.95
  %90 = load i64, i64* %ival, align 8, !tbaa !8
  %conv145 = sitofp i64 %90 to double
  store double %conv145, double* %dval, align 8, !tbaa !10
  br label %if.end.146

if.end.146:                                       ; preds = %if.else.144, %if.end.143
  br label %l2d

if.end.147:                                       ; preds = %lor.lhs.false, %if.end.85
  br label %for.inc

for.inc:                                          ; preds = %if.end.147
  %91 = load i64, i64* %ival, align 8, !tbaa !8
  %mul148 = mul nsw i64 %91, 10
  %92 = load i32, i32* %d, align 4, !tbaa !5
  %conv149 = sext i32 %92 to i64
  %add150 = add nsw i64 %mul148, %conv149
  store i64 %add150, i64* %ival, align 8, !tbaa !8
  br label %for.cond

for.end:                                          ; preds = %if.then.140, %if.then.84
  br label %ind

ind:                                              ; preds = %for.end, %if.then.58, %if.then.45, %if.then.34
  %93 = load i32, i32* %c, align 4, !tbaa !5
  switch i32 %93, label %sw.default [
    i32 46, label %sw.bb
    i32 -1, label %sw.epilog.266
    i32 101, label %sw.bb.158
    i32 69, label %sw.bb.158
    i32 35, label %sw.bb.165
  ]

sw.bb:                                            ; preds = %ind
  %94 = load i8*, i8** %sp, align 8, !tbaa !1
  %95 = load i8*, i8** %end.addr, align 8, !tbaa !1
  %cmp151 = icmp uge i8* %94, %95
  br i1 %cmp151, label %if.then.153, label %if.else.154

if.then.153:                                      ; preds = %sw.bb
  store i32 -1, i32* %c, align 4, !tbaa !5
  br label %if.end.157

if.else.154:                                      ; preds = %sw.bb
  %96 = load i8*, i8** %sp, align 8, !tbaa !1
  %incdec.ptr155 = getelementptr inbounds i8, i8* %96, i32 1
  store i8* %incdec.ptr155, i8** %sp, align 8, !tbaa !1
  %97 = load i8, i8* %96, align 1, !tbaa !7
  %conv156 = zext i8 %97 to i32
  store i32 %conv156, i32* %c, align 4, !tbaa !5
  br label %if.end.157

if.end.157:                                       ; preds = %if.else.154, %if.then.153
  br label %i2r

sw.default:                                       ; preds = %ind
  %98 = load i8*, i8** %sp, align 8, !tbaa !1
  %99 = load i8**, i8*** %psp.addr, align 8, !tbaa !1
  store i8* %98, i8** %99, align 8, !tbaa !1
  store i32 1, i32* %code, align 4, !tbaa !5
  br label %sw.epilog.266

sw.bb.158:                                        ; preds = %ind, %ind
  %100 = load i32, i32* %sign.addr, align 4, !tbaa !5
  %cmp159 = icmp slt i32 %100, 0
  br i1 %cmp159, label %if.then.161, label %if.end.163

if.then.161:                                      ; preds = %sw.bb.158
  %101 = load i64, i64* %ival, align 8, !tbaa !8
  %sub162 = sub nsw i64 0, %101
  store i64 %sub162, i64* %ival, align 8, !tbaa !8
  br label %if.end.163

if.end.163:                                       ; preds = %if.then.161, %sw.bb.158
  %102 = load i64, i64* %ival, align 8, !tbaa !8
  %conv164 = sitofp i64 %102 to double
  store double %conv164, double* %dval, align 8, !tbaa !10
  store i32 0, i32* %exp10, align 4, !tbaa !5
  br label %fe

sw.bb.165:                                        ; preds = %ind
  %103 = bitcast i32* %radix to i8*
  call void @llvm.lifetime.start(i64 4, i8* %103) #1
  %104 = load i64, i64* %ival, align 8, !tbaa !8
  %conv166 = trunc i64 %104 to i32
  store i32 %conv166, i32* %radix, align 4, !tbaa !5
  %105 = bitcast i64* %uval to i8*
  call void @llvm.lifetime.start(i64 8, i8* %105) #1
  store i64 0, i64* %uval, align 8, !tbaa !8
  %106 = bitcast i64* %imax to i8*
  call void @llvm.lifetime.start(i64 8, i8* %106) #1
  %107 = load i32, i32* %sign.addr, align 4, !tbaa !5
  %tobool167 = icmp ne i32 %107, 0
  br i1 %tobool167, label %if.then.174, label %lor.lhs.false.168

lor.lhs.false.168:                                ; preds = %sw.bb.165
  %108 = load i32, i32* %radix, align 4, !tbaa !5
  %cmp169 = icmp slt i32 %108, 2
  br i1 %cmp169, label %if.then.174, label %lor.lhs.false.171

lor.lhs.false.171:                                ; preds = %lor.lhs.false.168
  %109 = load i32, i32* %radix, align 4, !tbaa !5
  %cmp172 = icmp sgt i32 %109, 36
  br i1 %cmp172, label %if.then.174, label %if.end.175

if.then.174:                                      ; preds = %lor.lhs.false.171, %lor.lhs.false.168, %sw.bb.165
  store i32 -18, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.263

if.end.175:                                       ; preds = %lor.lhs.false.171
  %110 = load i32, i32* %radix, align 4, !tbaa !5
  %111 = load i32, i32* %radix, align 4, !tbaa !5
  %sub176 = sub nsw i32 %111, 1
  %and177 = and i32 %110, %sub176
  %tobool178 = icmp ne i32 %and177, 0
  br i1 %tobool178, label %if.else.209, label %if.then.179

if.then.179:                                      ; preds = %if.end.175
  %112 = bitcast i32* %shift to i8*
  call void @llvm.lifetime.start(i64 4, i8* %112) #1
  %113 = load i32, i32* %radix, align 4, !tbaa !5
  switch i32 %113, label %sw.default.185 [
    i32 2, label %sw.bb.180
    i32 4, label %sw.bb.181
    i32 8, label %sw.bb.182
    i32 16, label %sw.bb.183
    i32 32, label %sw.bb.184
  ]

sw.bb.180:                                        ; preds = %if.then.179
  store i32 1, i32* %shift, align 4, !tbaa !5
  store i64 9223372036854775807, i64* %imax, align 8, !tbaa !8
  br label %sw.epilog

sw.bb.181:                                        ; preds = %if.then.179
  store i32 2, i32* %shift, align 4, !tbaa !5
  store i64 4611686018427387903, i64* %imax, align 8, !tbaa !8
  br label %sw.epilog

sw.bb.182:                                        ; preds = %if.then.179
  store i32 3, i32* %shift, align 4, !tbaa !5
  store i64 2305843009213693951, i64* %imax, align 8, !tbaa !8
  br label %sw.epilog

sw.bb.183:                                        ; preds = %if.then.179
  store i32 4, i32* %shift, align 4, !tbaa !5
  store i64 1152921504606846975, i64* %imax, align 8, !tbaa !8
  br label %sw.epilog

sw.bb.184:                                        ; preds = %if.then.179
  store i32 5, i32* %shift, align 4, !tbaa !5
  store i64 576460752303423487, i64* %imax, align 8, !tbaa !8
  br label %sw.epilog

sw.default.185:                                   ; preds = %if.then.179
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb.184, %sw.bb.183, %sw.bb.182, %sw.bb.181, %sw.bb.180
  br label %for.cond.186

for.cond.186:                                     ; preds = %for.inc.205, %sw.epilog
  %114 = load i8*, i8** %sp, align 8, !tbaa !1
  %115 = load i8*, i8** %end.addr, align 8, !tbaa !1
  %cmp187 = icmp uge i8* %114, %115
  br i1 %cmp187, label %if.then.189, label %if.else.190

if.then.189:                                      ; preds = %for.cond.186
  br label %for.end.208

if.else.190:                                      ; preds = %for.cond.186
  %116 = load i8*, i8** %sp, align 8, !tbaa !1
  %incdec.ptr191 = getelementptr inbounds i8, i8* %116, i32 1
  store i8* %incdec.ptr191, i8** %sp, align 8, !tbaa !1
  %117 = load i8, i8* %116, align 1, !tbaa !7
  %conv192 = zext i8 %117 to i32
  store i32 %conv192, i32* %c, align 4, !tbaa !5
  br label %if.end.193

if.end.193:                                       ; preds = %if.else.190
  %118 = load i32, i32* %c, align 4, !tbaa !5
  %idxprom194 = sext i32 %118 to i64
  %119 = load i8*, i8** %decoder, align 8, !tbaa !1
  %arrayidx195 = getelementptr inbounds i8, i8* %119, i64 %idxprom194
  %120 = load i8, i8* %arrayidx195, align 1, !tbaa !7
  %conv196 = zext i8 %120 to i32
  store i32 %conv196, i32* %d, align 4, !tbaa !5
  %121 = load i32, i32* %d, align 4, !tbaa !5
  %122 = load i32, i32* %radix, align 4, !tbaa !5
  %cmp197 = icmp sge i32 %121, %122
  br i1 %cmp197, label %if.then.199, label %if.end.200

if.then.199:                                      ; preds = %if.end.193
  %123 = load i8*, i8** %sp, align 8, !tbaa !1
  %124 = load i8**, i8*** %psp.addr, align 8, !tbaa !1
  store i8* %123, i8** %124, align 8, !tbaa !1
  store i32 1, i32* %code, align 4, !tbaa !5
  br label %for.end.208

if.end.200:                                       ; preds = %if.end.193
  %125 = load i64, i64* %uval, align 8, !tbaa !8
  %126 = load i64, i64* %imax, align 8, !tbaa !8
  %cmp201 = icmp sgt i64 %125, %126
  br i1 %cmp201, label %if.then.203, label %if.end.204

if.then.203:                                      ; preds = %if.end.200
  store i32 -13, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.204:                                       ; preds = %if.end.200
  br label %for.inc.205

for.inc.205:                                      ; preds = %if.end.204
  %127 = load i64, i64* %uval, align 8, !tbaa !8
  %128 = load i32, i32* %shift, align 4, !tbaa !5
  %sh_prom = zext i32 %128 to i64
  %shl = shl i64 %127, %sh_prom
  %129 = load i32, i32* %d, align 4, !tbaa !5
  %conv206 = sext i32 %129 to i64
  %add207 = add nsw i64 %shl, %conv206
  store i64 %add207, i64* %uval, align 8, !tbaa !8
  br label %for.cond.186

for.end.208:                                      ; preds = %if.then.199, %if.then.189
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end.208, %if.then.203, %sw.default.185
  %130 = bitcast i32* %shift to i8*
  call void @llvm.lifetime.end(i64 4, i8* %130) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.263 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.249

if.else.209:                                      ; preds = %if.end.175
  %131 = bitcast i64* %irem to i8*
  call void @llvm.lifetime.start(i64 8, i8* %131) #1
  %132 = load i32, i32* %radix, align 4, !tbaa !5
  %conv210 = sext i32 %132 to i64
  %rem211 = urem i64 -1, %conv210
  store i64 %rem211, i64* %irem, align 8, !tbaa !8
  %133 = load i32, i32* %radix, align 4, !tbaa !5
  %conv212 = sext i32 %133 to i64
  %div213 = udiv i64 -1, %conv212
  store i64 %div213, i64* %imax, align 8, !tbaa !8
  br label %for.cond.214

for.cond.214:                                     ; preds = %for.inc.240, %if.else.209
  %134 = load i8*, i8** %sp, align 8, !tbaa !1
  %135 = load i8*, i8** %end.addr, align 8, !tbaa !1
  %cmp215 = icmp uge i8* %134, %135
  br i1 %cmp215, label %if.then.217, label %if.else.218

if.then.217:                                      ; preds = %for.cond.214
  br label %for.end.245

if.else.218:                                      ; preds = %for.cond.214
  %136 = load i8*, i8** %sp, align 8, !tbaa !1
  %incdec.ptr219 = getelementptr inbounds i8, i8* %136, i32 1
  store i8* %incdec.ptr219, i8** %sp, align 8, !tbaa !1
  %137 = load i8, i8* %136, align 1, !tbaa !7
  %conv220 = zext i8 %137 to i32
  store i32 %conv220, i32* %c, align 4, !tbaa !5
  br label %if.end.221

if.end.221:                                       ; preds = %if.else.218
  %138 = load i32, i32* %c, align 4, !tbaa !5
  %idxprom222 = sext i32 %138 to i64
  %139 = load i8*, i8** %decoder, align 8, !tbaa !1
  %arrayidx223 = getelementptr inbounds i8, i8* %139, i64 %idxprom222
  %140 = load i8, i8* %arrayidx223, align 1, !tbaa !7
  %conv224 = zext i8 %140 to i32
  store i32 %conv224, i32* %d, align 4, !tbaa !5
  %141 = load i32, i32* %d, align 4, !tbaa !5
  %142 = load i32, i32* %radix, align 4, !tbaa !5
  %cmp225 = icmp sge i32 %141, %142
  br i1 %cmp225, label %if.then.227, label %if.end.228

if.then.227:                                      ; preds = %if.end.221
  %143 = load i8*, i8** %sp, align 8, !tbaa !1
  %144 = load i8**, i8*** %psp.addr, align 8, !tbaa !1
  store i8* %143, i8** %144, align 8, !tbaa !1
  store i32 1, i32* %code, align 4, !tbaa !5
  br label %for.end.245

if.end.228:                                       ; preds = %if.end.221
  %145 = load i64, i64* %uval, align 8, !tbaa !8
  %146 = load i64, i64* %imax, align 8, !tbaa !8
  %cmp229 = icmp sge i64 %145, %146
  br i1 %cmp229, label %land.lhs.true.231, label %if.end.239

land.lhs.true.231:                                ; preds = %if.end.228
  %147 = load i64, i64* %uval, align 8, !tbaa !8
  %148 = load i64, i64* %imax, align 8, !tbaa !8
  %cmp232 = icmp sgt i64 %147, %148
  br i1 %cmp232, label %if.then.238, label %lor.lhs.false.234

lor.lhs.false.234:                                ; preds = %land.lhs.true.231
  %149 = load i32, i32* %d, align 4, !tbaa !5
  %conv235 = sext i32 %149 to i64
  %150 = load i64, i64* %irem, align 8, !tbaa !8
  %cmp236 = icmp sgt i64 %conv235, %150
  br i1 %cmp236, label %if.then.238, label %if.end.239

if.then.238:                                      ; preds = %lor.lhs.false.234, %land.lhs.true.231
  store i32 -13, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.246

if.end.239:                                       ; preds = %lor.lhs.false.234, %if.end.228
  br label %for.inc.240

for.inc.240:                                      ; preds = %if.end.239
  %151 = load i64, i64* %uval, align 8, !tbaa !8
  %152 = load i32, i32* %radix, align 4, !tbaa !5
  %conv241 = sext i32 %152 to i64
  %mul242 = mul nsw i64 %151, %conv241
  %153 = load i32, i32* %d, align 4, !tbaa !5
  %conv243 = sext i32 %153 to i64
  %add244 = add nsw i64 %mul242, %conv243
  store i64 %add244, i64* %uval, align 8, !tbaa !8
  br label %for.cond.214

for.end.245:                                      ; preds = %if.then.227, %if.then.217
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.246

cleanup.246:                                      ; preds = %for.end.245, %if.then.238
  %154 = bitcast i64* %irem to i8*
  call void @llvm.lifetime.end(i64 8, i8* %154) #1
  %cleanup.dest.247 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.247, label %cleanup.263 [
    i32 0, label %cleanup.cont.248
  ]

cleanup.cont.248:                                 ; preds = %cleanup.246
  br label %if.end.249

if.end.249:                                       ; preds = %cleanup.cont.248, %cleanup.cont
  %155 = load i32, i32* %scanner_options.addr, align 4, !tbaa !5
  %and250 = and i32 %155, 128
  %tobool251 = icmp ne i32 %and250, 0
  br i1 %tobool251, label %if.then.252, label %if.else.257

if.then.252:                                      ; preds = %if.end.249
  %156 = bitcast i32* %int1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %156) #1
  store i32 0, i32* %int1, align 4, !tbaa !5
  %157 = load i64, i64* %uval, align 8, !tbaa !8
  %and253 = and i64 %157, 4294967295
  %158 = load i32, i32* %int1, align 4, !tbaa !5
  %conv254 = zext i32 %158 to i64
  %or = or i64 %conv254, %and253
  %conv255 = trunc i64 %or to i32
  store i32 %conv255, i32* %int1, align 4, !tbaa !5
  %159 = load i32, i32* %int1, align 4, !tbaa !5
  %conv256 = sext i32 %159 to i64
  %160 = load %struct.ref_s*, %struct.ref_s** %pref.addr, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %160, i32 0, i32 1
  %intval = bitcast %union.v* %value to i64*
  store i64 %conv256, i64* %intval, align 8, !tbaa !8
  %161 = load %struct.ref_s*, %struct.ref_s** %pref.addr, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %161, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  store i16 2816, i16* %type_attrs, align 2, !tbaa !12
  %162 = bitcast i32* %int1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %162) #1
  br label %if.end.262

if.else.257:                                      ; preds = %if.end.249
  %163 = load i64, i64* %uval, align 8, !tbaa !8
  %164 = load %struct.ref_s*, %struct.ref_s** %pref.addr, align 8, !tbaa !1
  %value258 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %164, i32 0, i32 1
  %intval259 = bitcast %union.v* %value258 to i64*
  store i64 %163, i64* %intval259, align 8, !tbaa !8
  %165 = load %struct.ref_s*, %struct.ref_s** %pref.addr, align 8, !tbaa !1
  %tas260 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %165, i32 0, i32 0
  %type_attrs261 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas260, i32 0, i32 0
  store i16 2816, i16* %type_attrs261, align 2, !tbaa !12
  br label %if.end.262

if.end.262:                                       ; preds = %if.else.257, %if.then.252
  %166 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %166, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.263

cleanup.263:                                      ; preds = %if.end.262, %cleanup.246, %cleanup, %if.then.174
  %167 = bitcast i64* %imax to i8*
  call void @llvm.lifetime.end(i64 8, i8* %167) #1
  %168 = bitcast i64* %uval to i8*
  call void @llvm.lifetime.end(i64 8, i8* %168) #1
  %169 = bitcast i32* %radix to i8*
  call void @llvm.lifetime.end(i64 4, i8* %169) #1
  br label %cleanup.556

sw.epilog.266:                                    ; preds = %ind, %sw.default
  br label %iret

iret:                                             ; preds = %sw.epilog.266, %if.then.74
  %170 = load i32, i32* %scanner_options.addr, align 4, !tbaa !5
  %and267 = and i32 %170, 128
  %tobool268 = icmp ne i32 %and267, 0
  br i1 %tobool268, label %if.then.269, label %if.else.284

if.then.269:                                      ; preds = %iret
  %171 = load i32, i32* %sign.addr, align 4, !tbaa !5
  %cmp270 = icmp slt i32 %171, 0
  br i1 %cmp270, label %cond.true.272, label %cond.false.275

cond.true.272:                                    ; preds = %if.then.269
  %172 = load i64, i64* %ival, align 8, !tbaa !8
  %sub273 = sub nsw i64 0, %172
  %conv274 = trunc i64 %sub273 to i32
  br label %cond.end.277

cond.false.275:                                   ; preds = %if.then.269
  %173 = load i64, i64* %ival, align 8, !tbaa !8
  %conv276 = trunc i64 %173 to i32
  br label %cond.end.277

cond.end.277:                                     ; preds = %cond.false.275, %cond.true.272
  %cond278 = phi i32 [ %conv274, %cond.true.272 ], [ %conv276, %cond.false.275 ]
  %conv279 = sext i32 %cond278 to i64
  %174 = load %struct.ref_s*, %struct.ref_s** %pref.addr, align 8, !tbaa !1
  %value280 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %174, i32 0, i32 1
  %intval281 = bitcast %union.v* %value280 to i64*
  store i64 %conv279, i64* %intval281, align 8, !tbaa !8
  %175 = load %struct.ref_s*, %struct.ref_s** %pref.addr, align 8, !tbaa !1
  %tas282 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %175, i32 0, i32 0
  %type_attrs283 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas282, i32 0, i32 0
  store i16 2816, i16* %type_attrs283, align 2, !tbaa !12
  br label %if.end.296

if.else.284:                                      ; preds = %iret
  %176 = load i32, i32* %sign.addr, align 4, !tbaa !5
  %cmp285 = icmp slt i32 %176, 0
  br i1 %cmp285, label %cond.true.287, label %cond.false.289

cond.true.287:                                    ; preds = %if.else.284
  %177 = load i64, i64* %ival, align 8, !tbaa !8
  %sub288 = sub nsw i64 0, %177
  br label %cond.end.290

cond.false.289:                                   ; preds = %if.else.284
  %178 = load i64, i64* %ival, align 8, !tbaa !8
  br label %cond.end.290

cond.end.290:                                     ; preds = %cond.false.289, %cond.true.287
  %cond291 = phi i64 [ %sub288, %cond.true.287 ], [ %178, %cond.false.289 ]
  %179 = load %struct.ref_s*, %struct.ref_s** %pref.addr, align 8, !tbaa !1
  %value292 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %179, i32 0, i32 1
  %intval293 = bitcast %union.v* %value292 to i64*
  store i64 %cond291, i64* %intval293, align 8, !tbaa !8
  %180 = load %struct.ref_s*, %struct.ref_s** %pref.addr, align 8, !tbaa !1
  %tas294 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %180, i32 0, i32 0
  %type_attrs295 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas294, i32 0, i32 0
  store i16 2816, i16* %type_attrs295, align 2, !tbaa !12
  br label %if.end.296

if.end.296:                                       ; preds = %cond.end.290, %cond.end.277
  %181 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %181, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.556

l2d:                                              ; preds = %if.end.146
  store i32 0, i32* %exp10, align 4, !tbaa !5
  br label %for.cond.297

for.cond.297:                                     ; preds = %if.end.314, %l2d
  %182 = load double, double* %dval, align 8, !tbaa !10
  %mul298 = fmul double %182, 1.000000e+01
  %183 = load i32, i32* %d, align 4, !tbaa !5
  %conv299 = sitofp i32 %183 to double
  %add300 = fadd double %mul298, %conv299
  store double %add300, double* %dval, align 8, !tbaa !10
  %184 = load i8*, i8** %sp, align 8, !tbaa !1
  %185 = load i8*, i8** %end.addr, align 8, !tbaa !1
  %cmp301 = icmp uge i8* %184, %185
  br i1 %cmp301, label %if.then.303, label %if.else.304

if.then.303:                                      ; preds = %for.cond.297
  store i32 -1, i32* %c, align 4, !tbaa !5
  br label %if.end.307

if.else.304:                                      ; preds = %for.cond.297
  %186 = load i8*, i8** %sp, align 8, !tbaa !1
  %incdec.ptr305 = getelementptr inbounds i8, i8* %186, i32 1
  store i8* %incdec.ptr305, i8** %sp, align 8, !tbaa !1
  %187 = load i8, i8* %186, align 1, !tbaa !7
  %conv306 = zext i8 %187 to i32
  store i32 %conv306, i32* %c, align 4, !tbaa !5
  br label %if.end.307

if.end.307:                                       ; preds = %if.else.304, %if.then.303
  %188 = load i32, i32* %c, align 4, !tbaa !5
  %idxprom308 = sext i32 %188 to i64
  %189 = load i8*, i8** %decoder, align 8, !tbaa !1
  %arrayidx309 = getelementptr inbounds i8, i8* %189, i64 %idxprom308
  %190 = load i8, i8* %arrayidx309, align 1, !tbaa !7
  %conv310 = zext i8 %190 to i32
  store i32 %conv310, i32* %d, align 4, !tbaa !5
  %cmp311 = icmp slt i32 %conv310, 10
  br i1 %cmp311, label %if.end.314, label %if.then.313

if.then.313:                                      ; preds = %if.end.307
  br label %for.end.315

if.end.314:                                       ; preds = %if.end.307
  br label %for.cond.297

for.end.315:                                      ; preds = %if.then.313
  %191 = load i32, i32* %c, align 4, !tbaa !5
  switch i32 %191, label %sw.default.324 [
    i32 46, label %sw.bb.316
    i32 -1, label %sw.bb.325
    i32 101, label %sw.bb.331
    i32 69, label %sw.bb.331
    i32 35, label %sw.bb.332
  ]

sw.bb.316:                                        ; preds = %for.end.315
  %192 = load i8*, i8** %sp, align 8, !tbaa !1
  %193 = load i8*, i8** %end.addr, align 8, !tbaa !1
  %cmp317 = icmp uge i8* %192, %193
  br i1 %cmp317, label %if.then.319, label %if.else.320

if.then.319:                                      ; preds = %sw.bb.316
  store i32 -1, i32* %c, align 4, !tbaa !5
  br label %if.end.323

if.else.320:                                      ; preds = %sw.bb.316
  %194 = load i8*, i8** %sp, align 8, !tbaa !1
  %incdec.ptr321 = getelementptr inbounds i8, i8* %194, i32 1
  store i8* %incdec.ptr321, i8** %sp, align 8, !tbaa !1
  %195 = load i8, i8* %194, align 1, !tbaa !7
  %conv322 = zext i8 %195 to i32
  store i32 %conv322, i32* %c, align 4, !tbaa !5
  br label %if.end.323

if.end.323:                                       ; preds = %if.else.320, %if.then.319
  store i32 0, i32* %exp10, align 4, !tbaa !5
  br label %fd

sw.default.324:                                   ; preds = %for.end.315
  %196 = load i8*, i8** %sp, align 8, !tbaa !1
  %197 = load i8**, i8*** %psp.addr, align 8, !tbaa !1
  store i8* %196, i8** %197, align 8, !tbaa !1
  store i32 1, i32* %code, align 4, !tbaa !5
  br label %sw.bb.325

sw.bb.325:                                        ; preds = %for.end.315, %sw.default.324
  %198 = load i32, i32* %sign.addr, align 4, !tbaa !5
  %cmp326 = icmp slt i32 %198, 0
  br i1 %cmp326, label %if.then.328, label %if.end.330

if.then.328:                                      ; preds = %sw.bb.325
  %199 = load double, double* %dval, align 8, !tbaa !10
  %sub329 = fsub double -0.000000e+00, %199
  store double %sub329, double* %dval, align 8, !tbaa !10
  br label %if.end.330

if.end.330:                                       ; preds = %if.then.328, %sw.bb.325
  br label %rret

sw.bb.331:                                        ; preds = %for.end.315, %for.end.315
  store i32 0, i32* %exp10, align 4, !tbaa !5
  br label %fs

sw.bb.332:                                        ; preds = %for.end.315
  store i32 -18, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.556

i2r:                                              ; preds = %if.end.157, %if.end.22
  store i32 0, i32* %exp10, align 4, !tbaa !5
  br label %while.cond

while.cond:                                       ; preds = %if.end.382, %i2r
  %200 = load i32, i32* %c, align 4, !tbaa !5
  %idxprom333 = sext i32 %200 to i64
  %201 = load i8*, i8** %decoder, align 8, !tbaa !1
  %arrayidx334 = getelementptr inbounds i8, i8* %201, i64 %idxprom333
  %202 = load i8, i8* %arrayidx334, align 1, !tbaa !7
  %conv335 = zext i8 %202 to i32
  store i32 %conv335, i32* %d, align 4, !tbaa !5
  %cmp336 = icmp slt i32 %conv335, 10
  br i1 %cmp336, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %while.cond
  %203 = load i32, i32* %c, align 4, !tbaa !5
  %cmp338 = icmp eq i32 %203, 45
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %while.cond
  %204 = phi i1 [ true, %while.cond ], [ %cmp338, %lor.rhs ]
  br i1 %204, label %while.body, label %while.end

while.body:                                       ; preds = %lor.end
  %205 = load i32, i32* %c, align 4, !tbaa !5
  %cmp340 = icmp eq i32 %205, 45
  br i1 %cmp340, label %if.then.342, label %if.end.360

if.then.342:                                      ; preds = %while.body
  %206 = load i32, i32* %scanner_options.addr, align 4, !tbaa !5
  %and343 = and i32 32, %206
  %cmp344 = icmp eq i32 %and343, 0
  br i1 %cmp344, label %if.then.346, label %if.end.347

if.then.346:                                      ; preds = %if.then.342
  br label %while.end

if.end.347:                                       ; preds = %if.then.342
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.end.347
  %207 = load i8*, i8** %sp, align 8, !tbaa !1
  %208 = load i8*, i8** %end.addr, align 8, !tbaa !1
  %cmp348 = icmp uge i8* %207, %208
  br i1 %cmp348, label %if.then.350, label %if.else.351

if.then.350:                                      ; preds = %do.body
  store i32 -1, i32* %c, align 4, !tbaa !5
  br label %if.end.354

if.else.351:                                      ; preds = %do.body
  %209 = load i8*, i8** %sp, align 8, !tbaa !1
  %incdec.ptr352 = getelementptr inbounds i8, i8* %209, i32 1
  store i8* %incdec.ptr352, i8** %sp, align 8, !tbaa !1
  %210 = load i8, i8* %209, align 1, !tbaa !7
  %conv353 = zext i8 %210 to i32
  store i32 %conv353, i32* %c, align 4, !tbaa !5
  br label %if.end.354

if.end.354:                                       ; preds = %if.else.351, %if.then.350
  br label %do.cond

do.cond:                                          ; preds = %if.end.354
  %211 = load i32, i32* %c, align 4, !tbaa !5
  %idxprom355 = sext i32 %211 to i64
  %212 = load i8*, i8** %decoder, align 8, !tbaa !1
  %arrayidx356 = getelementptr inbounds i8, i8* %212, i64 %idxprom355
  %213 = load i8, i8* %arrayidx356, align 1, !tbaa !7
  %conv357 = zext i8 %213 to i32
  store i32 %conv357, i32* %d, align 4, !tbaa !5
  %cmp358 = icmp slt i32 %conv357, 10
  br i1 %cmp358, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  br label %while.end

if.end.360:                                       ; preds = %while.body
  %214 = load i64, i64* %ival, align 8, !tbaa !8
  %cmp361 = icmp sge i64 %214, 214748364
  br i1 %cmp361, label %land.lhs.true.363, label %if.end.372

land.lhs.true.363:                                ; preds = %if.end.360
  %215 = load i64, i64* %ival, align 8, !tbaa !8
  %cmp364 = icmp sgt i64 %215, 214748364
  br i1 %cmp364, label %if.then.370, label %lor.lhs.false.366

lor.lhs.false.366:                                ; preds = %land.lhs.true.363
  %216 = load i32, i32* %d, align 4, !tbaa !5
  %conv367 = sext i32 %216 to i64
  %cmp368 = icmp sgt i64 %conv367, 7
  br i1 %cmp368, label %if.then.370, label %if.end.372

if.then.370:                                      ; preds = %lor.lhs.false.366, %land.lhs.true.363
  %217 = load i64, i64* %ival, align 8, !tbaa !8
  %conv371 = sitofp i64 %217 to double
  store double %conv371, double* %dval, align 8, !tbaa !10
  br label %fd

if.end.372:                                       ; preds = %lor.lhs.false.366, %if.end.360
  %218 = load i64, i64* %ival, align 8, !tbaa !8
  %mul373 = mul nsw i64 %218, 10
  %219 = load i32, i32* %d, align 4, !tbaa !5
  %conv374 = sext i32 %219 to i64
  %add375 = add nsw i64 %mul373, %conv374
  store i64 %add375, i64* %ival, align 8, !tbaa !8
  %220 = load i32, i32* %exp10, align 4, !tbaa !5
  %dec = add nsw i32 %220, -1
  store i32 %dec, i32* %exp10, align 4, !tbaa !5
  %221 = load i8*, i8** %sp, align 8, !tbaa !1
  %222 = load i8*, i8** %end.addr, align 8, !tbaa !1
  %cmp376 = icmp uge i8* %221, %222
  br i1 %cmp376, label %if.then.378, label %if.else.379

if.then.378:                                      ; preds = %if.end.372
  store i32 -1, i32* %c, align 4, !tbaa !5
  br label %if.end.382

if.else.379:                                      ; preds = %if.end.372
  %223 = load i8*, i8** %sp, align 8, !tbaa !1
  %incdec.ptr380 = getelementptr inbounds i8, i8* %223, i32 1
  store i8* %incdec.ptr380, i8** %sp, align 8, !tbaa !1
  %224 = load i8, i8* %223, align 1, !tbaa !7
  %conv381 = zext i8 %224 to i32
  store i32 %conv381, i32* %c, align 4, !tbaa !5
  br label %if.end.382

if.end.382:                                       ; preds = %if.else.379, %if.then.378
  br label %while.cond

while.end:                                        ; preds = %do.end, %if.then.346, %lor.end
  %225 = load i32, i32* %sign.addr, align 4, !tbaa !5
  %cmp383 = icmp slt i32 %225, 0
  br i1 %cmp383, label %if.then.385, label %if.end.387

if.then.385:                                      ; preds = %while.end
  %226 = load i64, i64* %ival, align 8, !tbaa !8
  %sub386 = sub nsw i64 0, %226
  store i64 %sub386, i64* %ival, align 8, !tbaa !8
  br label %if.end.387

if.end.387:                                       ; preds = %if.then.385, %while.end
  %227 = load i32, i32* %c, align 4, !tbaa !5
  %cmp388 = icmp eq i32 %227, 101
  br i1 %cmp388, label %if.end.410, label %lor.lhs.false.390

lor.lhs.false.390:                                ; preds = %if.end.387
  %228 = load i32, i32* %c, align 4, !tbaa !5
  %cmp391 = icmp eq i32 %228, 69
  br i1 %cmp391, label %if.end.410, label %lor.lhs.false.393

lor.lhs.false.393:                                ; preds = %lor.lhs.false.390
  %229 = load i32, i32* %exp10, align 4, !tbaa !5
  %cmp394 = icmp slt i32 %229, -6
  br i1 %cmp394, label %if.end.410, label %if.then.396

if.then.396:                                      ; preds = %lor.lhs.false.393
  %230 = load i32, i32* %c, align 4, !tbaa !5
  %cmp397 = icmp ne i32 %230, -1
  br i1 %cmp397, label %if.then.399, label %if.end.400

if.then.399:                                      ; preds = %if.then.396
  %231 = load i8*, i8** %sp, align 8, !tbaa !1
  %232 = load i8**, i8*** %psp.addr, align 8, !tbaa !1
  store i8* %231, i8** %232, align 8, !tbaa !1
  store i32 1, i32* %code, align 4, !tbaa !5
  br label %if.end.400

if.end.400:                                       ; preds = %if.then.399, %if.then.396
  %233 = load i64, i64* %ival, align 8, !tbaa !8
  %conv401 = sitofp i64 %233 to double
  %234 = load i32, i32* %exp10, align 4, !tbaa !5
  %sub402 = sub nsw i32 0, %234
  %idxprom403 = sext i32 %sub402 to i64
  %arrayidx404 = getelementptr inbounds [7 x double], [7 x double]* @scan_number.neg_powers_10, i32 0, i64 %idxprom403
  %235 = load double, double* %arrayidx404, align 8, !tbaa !10
  %mul405 = fmul double %conv401, %235
  %conv406 = fptrunc double %mul405 to float
  %236 = load %struct.ref_s*, %struct.ref_s** %pref.addr, align 8, !tbaa !1
  %value407 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %236, i32 0, i32 1
  %realval = bitcast %union.v* %value407 to float*
  store float %conv406, float* %realval, align 4, !tbaa !16
  %237 = load %struct.ref_s*, %struct.ref_s** %pref.addr, align 8, !tbaa !1
  %tas408 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %237, i32 0, i32 0
  %type_attrs409 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas408, i32 0, i32 0
  store i16 4096, i16* %type_attrs409, align 2, !tbaa !12
  %238 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %238, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.556

if.end.410:                                       ; preds = %lor.lhs.false.393, %lor.lhs.false.390, %if.end.387
  %239 = load i64, i64* %ival, align 8, !tbaa !8
  %conv411 = sitofp i64 %239 to double
  store double %conv411, double* %dval, align 8, !tbaa !10
  br label %fe

fd:                                               ; preds = %if.then.370, %if.end.323, %if.end.133
  br label %while.cond.412

while.cond.412:                                   ; preds = %if.end.429, %fd
  %240 = load i32, i32* %c, align 4, !tbaa !5
  %idxprom413 = sext i32 %240 to i64
  %241 = load i8*, i8** %decoder, align 8, !tbaa !1
  %arrayidx414 = getelementptr inbounds i8, i8* %241, i64 %idxprom413
  %242 = load i8, i8* %arrayidx414, align 1, !tbaa !7
  %conv415 = zext i8 %242 to i32
  store i32 %conv415, i32* %d, align 4, !tbaa !5
  %cmp416 = icmp slt i32 %conv415, 10
  br i1 %cmp416, label %while.body.418, label %while.end.430

while.body.418:                                   ; preds = %while.cond.412
  %243 = load double, double* %dval, align 8, !tbaa !10
  %mul419 = fmul double %243, 1.000000e+01
  %244 = load i32, i32* %d, align 4, !tbaa !5
  %conv420 = sitofp i32 %244 to double
  %add421 = fadd double %mul419, %conv420
  store double %add421, double* %dval, align 8, !tbaa !10
  %245 = load i32, i32* %exp10, align 4, !tbaa !5
  %dec422 = add nsw i32 %245, -1
  store i32 %dec422, i32* %exp10, align 4, !tbaa !5
  %246 = load i8*, i8** %sp, align 8, !tbaa !1
  %247 = load i8*, i8** %end.addr, align 8, !tbaa !1
  %cmp423 = icmp uge i8* %246, %247
  br i1 %cmp423, label %if.then.425, label %if.else.426

if.then.425:                                      ; preds = %while.body.418
  store i32 -1, i32* %c, align 4, !tbaa !5
  br label %if.end.429

if.else.426:                                      ; preds = %while.body.418
  %248 = load i8*, i8** %sp, align 8, !tbaa !1
  %incdec.ptr427 = getelementptr inbounds i8, i8* %248, i32 1
  store i8* %incdec.ptr427, i8** %sp, align 8, !tbaa !1
  %249 = load i8, i8* %248, align 1, !tbaa !7
  %conv428 = zext i8 %249 to i32
  store i32 %conv428, i32* %c, align 4, !tbaa !5
  br label %if.end.429

if.end.429:                                       ; preds = %if.else.426, %if.then.425
  br label %while.cond.412

while.end.430:                                    ; preds = %while.cond.412
  br label %fs

fs:                                               ; preds = %while.end.430, %sw.bb.331, %if.then.122
  %250 = load i32, i32* %sign.addr, align 4, !tbaa !5
  %cmp431 = icmp slt i32 %250, 0
  br i1 %cmp431, label %if.then.433, label %if.end.435

if.then.433:                                      ; preds = %fs
  %251 = load double, double* %dval, align 8, !tbaa !10
  %sub434 = fsub double -0.000000e+00, %251
  store double %sub434, double* %dval, align 8, !tbaa !10
  br label %if.end.435

if.end.435:                                       ; preds = %if.then.433, %fs
  br label %fe

fe:                                               ; preds = %if.end.435, %if.end.410, %if.end.163
  %252 = load i32, i32* %c, align 4, !tbaa !5
  switch i32 %252, label %sw.default.493 [
    i32 101, label %sw.bb.436
    i32 69, label %sw.bb.436
    i32 -1, label %sw.bb.494
  ]

sw.bb.436:                                        ; preds = %fe, %fe
  %253 = bitcast i32* %esign to i8*
  call void @llvm.lifetime.start(i64 4, i8* %253) #1
  store i32 0, i32* %esign, align 4, !tbaa !5
  %254 = bitcast i32* %iexp to i8*
  call void @llvm.lifetime.start(i64 4, i8* %254) #1
  %255 = load i8*, i8** %sp, align 8, !tbaa !1
  %256 = load i8*, i8** %end.addr, align 8, !tbaa !1
  %cmp437 = icmp uge i8* %255, %256
  br i1 %cmp437, label %if.then.439, label %if.else.440

if.then.439:                                      ; preds = %sw.bb.436
  store i32 -18, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.490

if.else.440:                                      ; preds = %sw.bb.436
  %257 = load i8*, i8** %sp, align 8, !tbaa !1
  %incdec.ptr441 = getelementptr inbounds i8, i8* %257, i32 1
  store i8* %incdec.ptr441, i8** %sp, align 8, !tbaa !1
  %258 = load i8, i8* %257, align 1, !tbaa !7
  %conv442 = zext i8 %258 to i32
  store i32 %conv442, i32* %c, align 4, !tbaa !5
  br label %if.end.443

if.end.443:                                       ; preds = %if.else.440
  %259 = load i32, i32* %c, align 4, !tbaa !5
  switch i32 %259, label %sw.epilog.453 [
    i32 45, label %sw.bb.444
    i32 43, label %sw.bb.445
  ]

sw.bb.444:                                        ; preds = %if.end.443
  store i32 1, i32* %esign, align 4, !tbaa !5
  br label %sw.bb.445

sw.bb.445:                                        ; preds = %if.end.443, %sw.bb.444
  %260 = load i8*, i8** %sp, align 8, !tbaa !1
  %261 = load i8*, i8** %end.addr, align 8, !tbaa !1
  %cmp446 = icmp uge i8* %260, %261
  br i1 %cmp446, label %if.then.448, label %if.else.449

if.then.448:                                      ; preds = %sw.bb.445
  store i32 -18, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.490

if.else.449:                                      ; preds = %sw.bb.445
  %262 = load i8*, i8** %sp, align 8, !tbaa !1
  %incdec.ptr450 = getelementptr inbounds i8, i8* %262, i32 1
  store i8* %incdec.ptr450, i8** %sp, align 8, !tbaa !1
  %263 = load i8, i8* %262, align 1, !tbaa !7
  %conv451 = zext i8 %263 to i32
  store i32 %conv451, i32* %c, align 4, !tbaa !5
  br label %if.end.452

if.end.452:                                       ; preds = %if.else.449
  br label %sw.epilog.453

sw.epilog.453:                                    ; preds = %if.end.452, %if.end.443
  %264 = load i32, i32* %c, align 4, !tbaa !5
  %idxprom454 = sext i32 %264 to i64
  %265 = load i8*, i8** %decoder, align 8, !tbaa !1
  %arrayidx455 = getelementptr inbounds i8, i8* %265, i64 %idxprom454
  %266 = load i8, i8* %arrayidx455, align 1, !tbaa !7
  %conv456 = zext i8 %266 to i32
  store i32 %conv456, i32* %d, align 4, !tbaa !5
  %cmp457 = icmp slt i32 %conv456, 10
  br i1 %cmp457, label %if.end.460, label %if.then.459

if.then.459:                                      ; preds = %sw.epilog.453
  store i32 -18, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.490

if.end.460:                                       ; preds = %sw.epilog.453
  %267 = load i32, i32* %d, align 4, !tbaa !5
  store i32 %267, i32* %iexp, align 4, !tbaa !5
  br label %for.cond.461

for.cond.461:                                     ; preds = %for.inc.480, %if.end.460
  %268 = load i8*, i8** %sp, align 8, !tbaa !1
  %269 = load i8*, i8** %end.addr, align 8, !tbaa !1
  %cmp462 = icmp uge i8* %268, %269
  br i1 %cmp462, label %if.then.464, label %if.else.465

if.then.464:                                      ; preds = %for.cond.461
  br label %for.end.483

if.else.465:                                      ; preds = %for.cond.461
  %270 = load i8*, i8** %sp, align 8, !tbaa !1
  %incdec.ptr466 = getelementptr inbounds i8, i8* %270, i32 1
  store i8* %incdec.ptr466, i8** %sp, align 8, !tbaa !1
  %271 = load i8, i8* %270, align 1, !tbaa !7
  %conv467 = zext i8 %271 to i32
  store i32 %conv467, i32* %c, align 4, !tbaa !5
  br label %if.end.468

if.end.468:                                       ; preds = %if.else.465
  %272 = load i32, i32* %c, align 4, !tbaa !5
  %idxprom469 = sext i32 %272 to i64
  %273 = load i8*, i8** %decoder, align 8, !tbaa !1
  %arrayidx470 = getelementptr inbounds i8, i8* %273, i64 %idxprom469
  %274 = load i8, i8* %arrayidx470, align 1, !tbaa !7
  %conv471 = zext i8 %274 to i32
  store i32 %conv471, i32* %d, align 4, !tbaa !5
  %cmp472 = icmp slt i32 %conv471, 10
  br i1 %cmp472, label %if.end.475, label %if.then.474

if.then.474:                                      ; preds = %if.end.468
  %275 = load i8*, i8** %sp, align 8, !tbaa !1
  %276 = load i8**, i8*** %psp.addr, align 8, !tbaa !1
  store i8* %275, i8** %276, align 8, !tbaa !1
  store i32 1, i32* %code, align 4, !tbaa !5
  br label %for.end.483

if.end.475:                                       ; preds = %if.end.468
  %277 = load i32, i32* %iexp, align 4, !tbaa !5
  %cmp476 = icmp sgt i32 %277, 99
  br i1 %cmp476, label %if.then.478, label %if.end.479

if.then.478:                                      ; preds = %if.end.475
  store i32 -13, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.490

if.end.479:                                       ; preds = %if.end.475
  br label %for.inc.480

for.inc.480:                                      ; preds = %if.end.479
  %278 = load i32, i32* %iexp, align 4, !tbaa !5
  %mul481 = mul nsw i32 %278, 10
  %279 = load i32, i32* %d, align 4, !tbaa !5
  %add482 = add nsw i32 %mul481, %279
  store i32 %add482, i32* %iexp, align 4, !tbaa !5
  br label %for.cond.461

for.end.483:                                      ; preds = %if.then.474, %if.then.464
  %280 = load i32, i32* %esign, align 4, !tbaa !5
  %tobool484 = icmp ne i32 %280, 0
  br i1 %tobool484, label %if.then.485, label %if.else.487

if.then.485:                                      ; preds = %for.end.483
  %281 = load i32, i32* %iexp, align 4, !tbaa !5
  %282 = load i32, i32* %exp10, align 4, !tbaa !5
  %sub486 = sub nsw i32 %282, %281
  store i32 %sub486, i32* %exp10, align 4, !tbaa !5
  br label %if.end.489

if.else.487:                                      ; preds = %for.end.483
  %283 = load i32, i32* %iexp, align 4, !tbaa !5
  %284 = load i32, i32* %exp10, align 4, !tbaa !5
  %add488 = add nsw i32 %284, %283
  store i32 %add488, i32* %exp10, align 4, !tbaa !5
  br label %if.end.489

if.end.489:                                       ; preds = %if.else.487, %if.then.485
  store i32 30, i32* %cleanup.dest.slot
  br label %cleanup.490

cleanup.490:                                      ; preds = %if.end.489, %if.then.478, %if.then.459, %if.then.448, %if.then.439
  %285 = bitcast i32* %iexp to i8*
  call void @llvm.lifetime.end(i64 4, i8* %285) #1
  %286 = bitcast i32* %esign to i8*
  call void @llvm.lifetime.end(i64 4, i8* %286) #1
  %cleanup.dest.492 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.492, label %cleanup.556 [
    i32 30, label %sw.epilog.495
  ]

sw.default.493:                                   ; preds = %fe
  %287 = load i8*, i8** %sp, align 8, !tbaa !1
  %288 = load i8**, i8*** %psp.addr, align 8, !tbaa !1
  store i8* %287, i8** %288, align 8, !tbaa !1
  store i32 1, i32* %code, align 4, !tbaa !5
  br label %sw.bb.494

sw.bb.494:                                        ; preds = %fe, %sw.default.493
  br label %sw.epilog.495

sw.epilog.495:                                    ; preds = %sw.bb.494, %cleanup.490
  %289 = load i32, i32* %exp10, align 4, !tbaa !5
  %cmp496 = icmp sgt i32 %289, 0
  br i1 %cmp496, label %if.then.498, label %if.else.515

if.then.498:                                      ; preds = %sw.epilog.495
  br label %while.cond.499

while.cond.499:                                   ; preds = %while.body.502, %if.then.498
  %290 = load i32, i32* %exp10, align 4, !tbaa !5
  %cmp500 = icmp sgt i32 %290, 6
  br i1 %cmp500, label %while.body.502, label %while.end.506

while.body.502:                                   ; preds = %while.cond.499
  %291 = load float, float* getelementptr inbounds ([7 x float], [7 x float]* @scan_number.powers_10, i32 0, i64 6), align 4, !tbaa !16
  %conv503 = fpext float %291 to double
  %292 = load double, double* %dval, align 8, !tbaa !10
  %mul504 = fmul double %292, %conv503
  store double %mul504, double* %dval, align 8, !tbaa !10
  %293 = load i32, i32* %exp10, align 4, !tbaa !5
  %sub505 = sub nsw i32 %293, 6
  store i32 %sub505, i32* %exp10, align 4, !tbaa !5
  br label %while.cond.499

while.end.506:                                    ; preds = %while.cond.499
  %294 = load i32, i32* %exp10, align 4, !tbaa !5
  %cmp507 = icmp sgt i32 %294, 0
  br i1 %cmp507, label %if.then.509, label %if.end.514

if.then.509:                                      ; preds = %while.end.506
  %295 = load i32, i32* %exp10, align 4, !tbaa !5
  %idxprom510 = sext i32 %295 to i64
  %arrayidx511 = getelementptr inbounds [7 x float], [7 x float]* @scan_number.powers_10, i32 0, i64 %idxprom510
  %296 = load float, float* %arrayidx511, align 4, !tbaa !16
  %conv512 = fpext float %296 to double
  %297 = load double, double* %dval, align 8, !tbaa !10
  %mul513 = fmul double %297, %conv512
  store double %mul513, double* %dval, align 8, !tbaa !10
  br label %if.end.514

if.end.514:                                       ; preds = %if.then.509, %while.end.506
  br label %if.end.537

if.else.515:                                      ; preds = %sw.epilog.495
  %298 = load i32, i32* %exp10, align 4, !tbaa !5
  %cmp516 = icmp slt i32 %298, 0
  br i1 %cmp516, label %if.then.518, label %if.end.536

if.then.518:                                      ; preds = %if.else.515
  br label %while.cond.519

while.cond.519:                                   ; preds = %while.body.522, %if.then.518
  %299 = load i32, i32* %exp10, align 4, !tbaa !5
  %cmp520 = icmp slt i32 %299, -6
  br i1 %cmp520, label %while.body.522, label %while.end.526

while.body.522:                                   ; preds = %while.cond.519
  %300 = load float, float* getelementptr inbounds ([7 x float], [7 x float]* @scan_number.powers_10, i32 0, i64 6), align 4, !tbaa !16
  %conv523 = fpext float %300 to double
  %301 = load double, double* %dval, align 8, !tbaa !10
  %div524 = fdiv double %301, %conv523
  store double %div524, double* %dval, align 8, !tbaa !10
  %302 = load i32, i32* %exp10, align 4, !tbaa !5
  %add525 = add nsw i32 %302, 6
  store i32 %add525, i32* %exp10, align 4, !tbaa !5
  br label %while.cond.519

while.end.526:                                    ; preds = %while.cond.519
  %303 = load i32, i32* %exp10, align 4, !tbaa !5
  %cmp527 = icmp slt i32 %303, 0
  br i1 %cmp527, label %if.then.529, label %if.end.535

if.then.529:                                      ; preds = %while.end.526
  %304 = load i32, i32* %exp10, align 4, !tbaa !5
  %sub530 = sub nsw i32 0, %304
  %idxprom531 = sext i32 %sub530 to i64
  %arrayidx532 = getelementptr inbounds [7 x float], [7 x float]* @scan_number.powers_10, i32 0, i64 %idxprom531
  %305 = load float, float* %arrayidx532, align 4, !tbaa !16
  %conv533 = fpext float %305 to double
  %306 = load double, double* %dval, align 8, !tbaa !10
  %div534 = fdiv double %306, %conv533
  store double %div534, double* %dval, align 8, !tbaa !10
  br label %if.end.535

if.end.535:                                       ; preds = %if.then.529, %while.end.526
  br label %if.end.536

if.end.536:                                       ; preds = %if.end.535, %if.else.515
  br label %if.end.537

if.end.537:                                       ; preds = %if.end.536, %if.end.514
  %307 = load double, double* %dval, align 8, !tbaa !10
  %cmp538 = fcmp oge double %307, 0.000000e+00
  br i1 %cmp538, label %if.then.540, label %if.else.545

if.then.540:                                      ; preds = %if.end.537
  %308 = load double, double* %dval, align 8, !tbaa !10
  %cmp541 = fcmp ogt double %308, 0x47EFFFFFE0000000
  br i1 %cmp541, label %if.then.543, label %if.end.544

if.then.543:                                      ; preds = %if.then.540
  store i32 -13, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.556

if.end.544:                                       ; preds = %if.then.540
  br label %if.end.550

if.else.545:                                      ; preds = %if.end.537
  %309 = load double, double* %dval, align 8, !tbaa !10
  %cmp546 = fcmp olt double %309, 0xC7EFFFFFE0000000
  br i1 %cmp546, label %if.then.548, label %if.end.549

if.then.548:                                      ; preds = %if.else.545
  store i32 -13, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.556

if.end.549:                                       ; preds = %if.else.545
  br label %if.end.550

if.end.550:                                       ; preds = %if.end.549, %if.end.544
  br label %rret

rret:                                             ; preds = %if.end.550, %if.end.330
  %310 = load double, double* %dval, align 8, !tbaa !10
  %conv551 = fptrunc double %310 to float
  %311 = load %struct.ref_s*, %struct.ref_s** %pref.addr, align 8, !tbaa !1
  %value552 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %311, i32 0, i32 1
  %realval553 = bitcast %union.v* %value552 to float*
  store float %conv551, float* %realval553, align 4, !tbaa !16
  %312 = load %struct.ref_s*, %struct.ref_s** %pref.addr, align 8, !tbaa !1
  %tas554 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %312, i32 0, i32 0
  %type_attrs555 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas554, i32 0, i32 0
  store i16 4096, i16* %type_attrs555, align 2, !tbaa !12
  %313 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %313, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.556

cleanup.556:                                      ; preds = %rret, %if.then.548, %if.then.543, %cleanup.490, %if.end.400, %sw.bb.332, %if.end.296, %cleanup.263, %if.then.21, %if.then.11, %if.then.7, %if.then
  %314 = bitcast i8** %decoder to i8*
  call void @llvm.lifetime.end(i64 8, i8* %314) #1
  %315 = bitcast i64* %min_ps_int_scan to i8*
  call void @llvm.lifetime.end(i64 8, i8* %315) #1
  %316 = bitcast i64* %max_ps_int_scan to i8*
  call void @llvm.lifetime.end(i64 8, i8* %316) #1
  %317 = bitcast i64* %max_scan to i8*
  call void @llvm.lifetime.end(i64 8, i8* %317) #1
  %318 = bitcast i32* %d to i8*
  call void @llvm.lifetime.end(i64 4, i8* %318) #1
  %319 = bitcast i32* %c to i8*
  call void @llvm.lifetime.end(i64 4, i8* %319) #1
  %320 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %320) #1
  %321 = bitcast i32* %exp10 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %321) #1
  %322 = bitcast double* %dval to i8*
  call void @llvm.lifetime.end(i64 8, i8* %322) #1
  %323 = bitcast i64* %ival to i8*
  call void @llvm.lifetime.end(i64 8, i8* %323) #1
  %324 = bitcast i8** %sp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %324) #1
  %325 = load i32, i32* %retval
  ret i32 %325
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }

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
!10 = !{!11, !11, i64 0}
!11 = !{!"double", !3, i64 0}
!12 = !{!13, !15, i64 0}
!13 = !{!"ref_s", !14, i64 0, !3, i64 8}
!14 = !{!"tas_s", !15, i64 0, !15, i64 2, !6, i64 4}
!15 = !{!"short", !3, i64 0}
!16 = !{!17, !17, i64 0}
!17 = !{!"float", !3, i64 0}
