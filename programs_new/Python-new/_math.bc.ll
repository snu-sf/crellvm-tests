; ModuleID = 'programs_new/Python-new/_math.bc.ll'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define double @_Py_acosh(double %x) #0 {
entry:
  %retval = alloca double, align 8
  %x.addr = alloca double, align 8
  %t = alloca double, align 8
  %t45 = alloca double, align 8
  store double %x, double* %x.addr, align 8, !tbaa !51
  call void @llvm.dbg.declare(metadata double* %x.addr, metadata !10, metadata !55), !dbg !56
  br i1 false, label %cond.true, label %cond.false, !dbg !57

cond.true:                                        ; preds = %entry
  %0 = load double, double* %x.addr, align 8, !dbg !58, !tbaa !51
  %conv = fptrunc double %0 to float, !dbg !58
  %call = call i32 @__isnanf(float %conv) #1, !dbg !61
  %tobool = icmp ne i32 %call, 0, !dbg !61
  br i1 %tobool, label %if.then, label %if.end, !dbg !62

cond.false:                                       ; preds = %entry
  br i1 true, label %cond.true.1, label %cond.false.4, !dbg !63

cond.true.1:                                      ; preds = %cond.false
  %1 = load double, double* %x.addr, align 8, !dbg !65, !tbaa !51
  %call2 = call i32 @__isnan(double %1) #1, !dbg !67
  %tobool3 = icmp ne i32 %call2, 0, !dbg !67
  br i1 %tobool3, label %if.then, label %if.end, !dbg !68

cond.false.4:                                     ; preds = %cond.false
  %2 = load double, double* %x.addr, align 8, !dbg !69, !tbaa !51
  %conv5 = fpext double %2 to x86_fp80, !dbg !69
  %call6 = call i32 @__isnanl(x86_fp80 %conv5) #1, !dbg !71
  %tobool7 = icmp ne i32 %call6, 0, !dbg !71
  br i1 %tobool7, label %if.then, label %if.end, !dbg !57

if.then:                                          ; preds = %cond.false.4, %cond.true.1, %cond.true
  %3 = load double, double* %x.addr, align 8, !dbg !72, !tbaa !51
  %4 = load double, double* %x.addr, align 8, !dbg !74, !tbaa !51
  %add = fadd double %3, %4, !dbg !75
  store double %add, double* %retval, !dbg !76
  br label %return, !dbg !76

if.end:                                           ; preds = %cond.false.4, %cond.true.1, %cond.true
  %5 = load double, double* %x.addr, align 8, !dbg !77, !tbaa !51
  %cmp = fcmp olt double %5, 1.000000e+00, !dbg !78
  br i1 %cmp, label %if.then.9, label %if.else, !dbg !79

if.then.9:                                        ; preds = %if.end
  %call10 = call i32* @__errno_location() #1, !dbg !80
  store i32 33, i32* %call10, align 4, !dbg !82, !tbaa !83
  store double 0x7FF8000000000000, double* %retval, !dbg !85
  br label %return, !dbg !85

if.else:                                          ; preds = %if.end
  %6 = load double, double* %x.addr, align 8, !dbg !86, !tbaa !51
  %cmp11 = fcmp oge double %6, 0x41B0000000000000, !dbg !87
  br i1 %cmp11, label %if.then.13, label %if.else.31, !dbg !88

if.then.13:                                       ; preds = %if.else
  br i1 false, label %cond.true.14, label %cond.false.18, !dbg !89

cond.true.14:                                     ; preds = %if.then.13
  %7 = load double, double* %x.addr, align 8, !dbg !91, !tbaa !51
  %conv15 = fptrunc double %7 to float, !dbg !91
  %call16 = call i32 @__isinff(float %conv15) #1, !dbg !94
  %tobool17 = icmp ne i32 %call16, 0, !dbg !94
  br i1 %tobool17, label %if.then.26, label %if.else.28, !dbg !95

cond.false.18:                                    ; preds = %if.then.13
  br i1 true, label %cond.true.19, label %cond.false.22, !dbg !96

cond.true.19:                                     ; preds = %cond.false.18
  %8 = load double, double* %x.addr, align 8, !dbg !98, !tbaa !51
  %call20 = call i32 @__isinf(double %8) #1, !dbg !100
  %tobool21 = icmp ne i32 %call20, 0, !dbg !100
  br i1 %tobool21, label %if.then.26, label %if.else.28, !dbg !101

cond.false.22:                                    ; preds = %cond.false.18
  %9 = load double, double* %x.addr, align 8, !dbg !102, !tbaa !51
  %conv23 = fpext double %9 to x86_fp80, !dbg !102
  %call24 = call i32 @__isinfl(x86_fp80 %conv23) #1, !dbg !104
  %tobool25 = icmp ne i32 %call24, 0, !dbg !104
  br i1 %tobool25, label %if.then.26, label %if.else.28, !dbg !89

if.then.26:                                       ; preds = %cond.false.22, %cond.true.19, %cond.true.14
  %10 = load double, double* %x.addr, align 8, !dbg !105, !tbaa !51
  %11 = load double, double* %x.addr, align 8, !dbg !107, !tbaa !51
  %add27 = fadd double %10, %11, !dbg !108
  store double %add27, double* %retval, !dbg !109
  br label %return, !dbg !109

if.else.28:                                       ; preds = %cond.false.22, %cond.true.19, %cond.true.14
  %12 = load double, double* %x.addr, align 8, !dbg !110, !tbaa !51
  %call29 = call double @log(double %12) #4, !dbg !112
  %add30 = fadd double %call29, 0x3FE62E42FEFA39EF, !dbg !113
  store double %add30, double* %retval, !dbg !114
  br label %return, !dbg !114

if.else.31:                                       ; preds = %if.else
  %13 = load double, double* %x.addr, align 8, !dbg !115, !tbaa !51
  %cmp32 = fcmp oeq double %13, 1.000000e+00, !dbg !116
  br i1 %cmp32, label %if.then.34, label %if.else.35, !dbg !117

if.then.34:                                       ; preds = %if.else.31
  store double 0.000000e+00, double* %retval, !dbg !118
  br label %return, !dbg !118

if.else.35:                                       ; preds = %if.else.31
  %14 = load double, double* %x.addr, align 8, !dbg !120, !tbaa !51
  %cmp36 = fcmp ogt double %14, 2.000000e+00, !dbg !121
  br i1 %cmp36, label %if.then.38, label %if.else.44, !dbg !122

if.then.38:                                       ; preds = %if.else.35
  %15 = bitcast double* %t to i8*, !dbg !123
  call void @llvm.lifetime.start(i64 8, i8* %15) #4, !dbg !123
  call void @llvm.dbg.declare(metadata double* %t, metadata !11, metadata !55), !dbg !124
  %16 = load double, double* %x.addr, align 8, !dbg !125, !tbaa !51
  %17 = load double, double* %x.addr, align 8, !dbg !126, !tbaa !51
  %mul = fmul double %16, %17, !dbg !127
  store double %mul, double* %t, align 8, !dbg !124, !tbaa !51
  %18 = load double, double* %x.addr, align 8, !dbg !128, !tbaa !51
  %mul39 = fmul double 2.000000e+00, %18, !dbg !129
  %19 = load double, double* %x.addr, align 8, !dbg !130, !tbaa !51
  %20 = load double, double* %t, align 8, !dbg !131, !tbaa !51
  %sub = fsub double %20, 1.000000e+00, !dbg !132
  %call40 = call double @sqrt(double %sub) #4, !dbg !133
  %add41 = fadd double %19, %call40, !dbg !134
  %div = fdiv double 1.000000e+00, %add41, !dbg !135
  %sub42 = fsub double %mul39, %div, !dbg !136
  %call43 = call double @log(double %sub42) #4, !dbg !137
  store double %call43, double* %retval, !dbg !138
  %21 = bitcast double* %t to i8*, !dbg !139
  call void @llvm.lifetime.end(i64 8, i8* %21) #4, !dbg !139
  br label %return

if.else.44:                                       ; preds = %if.else.35
  %22 = bitcast double* %t45 to i8*, !dbg !140
  call void @llvm.lifetime.start(i64 8, i8* %22) #4, !dbg !140
  call void @llvm.dbg.declare(metadata double* %t45, metadata !17, metadata !55), !dbg !141
  %23 = load double, double* %x.addr, align 8, !dbg !142, !tbaa !51
  %sub46 = fsub double %23, 1.000000e+00, !dbg !143
  store double %sub46, double* %t45, align 8, !dbg !141, !tbaa !51
  %24 = load double, double* %t45, align 8, !dbg !144, !tbaa !51
  %25 = load double, double* %t45, align 8, !dbg !145, !tbaa !51
  %mul47 = fmul double 2.000000e+00, %25, !dbg !146
  %26 = load double, double* %t45, align 8, !dbg !147, !tbaa !51
  %27 = load double, double* %t45, align 8, !dbg !148, !tbaa !51
  %mul48 = fmul double %26, %27, !dbg !149
  %add49 = fadd double %mul47, %mul48, !dbg !150
  %call50 = call double @sqrt(double %add49) #4, !dbg !151
  %add51 = fadd double %24, %call50, !dbg !152
  %call52 = call double @_Py_log1p(double %add51), !dbg !153
  store double %call52, double* %retval, !dbg !154
  %28 = bitcast double* %t45 to i8*, !dbg !155
  call void @llvm.lifetime.end(i64 8, i8* %28) #4, !dbg !155
  br label %return

return:                                           ; preds = %if.else.44, %if.then.38, %if.then.34, %if.else.28, %if.then.26, %if.then.9, %if.then
  %29 = load double, double* %retval, !dbg !156
  ret double %29, !dbg !156
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind readnone
declare i32 @__isnanf(float) #2

; Function Attrs: nounwind readnone
declare i32 @__isnan(double) #2

; Function Attrs: nounwind readnone
declare i32 @__isnanl(x86_fp80) #2

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #2

; Function Attrs: nounwind readnone
declare i32 @__isinff(float) #2

; Function Attrs: nounwind readnone
declare i32 @__isinf(double) #2

; Function Attrs: nounwind readnone
declare i32 @__isinfl(x86_fp80) #2

; Function Attrs: nounwind
declare double @log(double) #3

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #4

; Function Attrs: nounwind
declare double @sqrt(double) #3

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #4

; Function Attrs: nounwind uwtable
define double @_Py_log1p(double %x) #0 {
entry:
  %retval = alloca double, align 8
  %x.addr = alloca double, align 8
  store double %x, double* %x.addr, align 8, !tbaa !51
  call void @llvm.dbg.declare(metadata double* %x.addr, metadata !41, metadata !55), !dbg !157
  %0 = load double, double* %x.addr, align 8, !dbg !158, !tbaa !51
  %cmp = fcmp oeq double %0, 0.000000e+00, !dbg !160
  br i1 %cmp, label %if.then, label %if.else, !dbg !161

if.then:                                          ; preds = %entry
  %1 = load double, double* %x.addr, align 8, !dbg !162, !tbaa !51
  store double %1, double* %retval, !dbg !164
  br label %return, !dbg !164

if.else:                                          ; preds = %entry
  %2 = load double, double* %x.addr, align 8, !dbg !165, !tbaa !51
  %call = call double @log1p(double %2) #4, !dbg !167
  store double %call, double* %retval, !dbg !168
  br label %return, !dbg !168

return:                                           ; preds = %if.else, %if.then
  %3 = load double, double* %retval, !dbg !169
  ret double %3, !dbg !169
}

; Function Attrs: nounwind uwtable
define double @_Py_asinh(double %x) #0 {
entry:
  %retval = alloca double, align 8
  %x.addr = alloca double, align 8
  %w = alloca double, align 8
  %absx = alloca double, align 8
  %cleanup.dest.slot = alloca i32
  %t = alloca double, align 8
  store double %x, double* %x.addr, align 8, !tbaa !51
  call void @llvm.dbg.declare(metadata double* %x.addr, metadata !21, metadata !55), !dbg !170
  %0 = bitcast double* %w to i8*, !dbg !171
  call void @llvm.lifetime.start(i64 8, i8* %0) #4, !dbg !171
  call void @llvm.dbg.declare(metadata double* %w, metadata !22, metadata !55), !dbg !172
  %1 = bitcast double* %absx to i8*, !dbg !173
  call void @llvm.lifetime.start(i64 8, i8* %1) #4, !dbg !173
  call void @llvm.dbg.declare(metadata double* %absx, metadata !23, metadata !55), !dbg !174
  %2 = load double, double* %x.addr, align 8, !dbg !175, !tbaa !51
  %call = call double @fabs(double %2) #1, !dbg !176
  store double %call, double* %absx, align 8, !dbg !174, !tbaa !51
  br i1 false, label %cond.true, label %cond.false, !dbg !177

cond.true:                                        ; preds = %entry
  %3 = load double, double* %x.addr, align 8, !dbg !179, !tbaa !51
  %conv = fptrunc double %3 to float, !dbg !179
  %call1 = call i32 @__isnanf(float %conv) #1, !dbg !181
  %tobool = icmp ne i32 %call1, 0, !dbg !181
  br i1 %tobool, label %if.then, label %lor.lhs.false, !dbg !182

cond.false:                                       ; preds = %entry
  br i1 true, label %cond.true.2, label %cond.false.5, !dbg !183

cond.true.2:                                      ; preds = %cond.false
  %4 = load double, double* %x.addr, align 8, !dbg !185, !tbaa !51
  %call3 = call i32 @__isnan(double %4) #1, !dbg !187
  %tobool4 = icmp ne i32 %call3, 0, !dbg !187
  br i1 %tobool4, label %if.then, label %lor.lhs.false, !dbg !188

cond.false.5:                                     ; preds = %cond.false
  %5 = load double, double* %x.addr, align 8, !dbg !189, !tbaa !51
  %conv6 = fpext double %5 to x86_fp80, !dbg !189
  %call7 = call i32 @__isnanl(x86_fp80 %conv6) #1, !dbg !191
  %tobool8 = icmp ne i32 %call7, 0, !dbg !191
  br i1 %tobool8, label %if.then, label %lor.lhs.false, !dbg !177

lor.lhs.false:                                    ; preds = %cond.false.5, %cond.true.2, %cond.true
  br i1 false, label %cond.true.9, label %cond.false.13, !dbg !192

cond.true.9:                                      ; preds = %lor.lhs.false
  %6 = load double, double* %x.addr, align 8, !dbg !196, !tbaa !51
  %conv10 = fptrunc double %6 to float, !dbg !196
  %call11 = call i32 @__isinff(float %conv10) #1, !dbg !198
  %tobool12 = icmp ne i32 %call11, 0, !dbg !198
  br i1 %tobool12, label %if.then, label %if.end, !dbg !199

cond.false.13:                                    ; preds = %lor.lhs.false
  br i1 true, label %cond.true.14, label %cond.false.17, !dbg !200

cond.true.14:                                     ; preds = %cond.false.13
  %7 = load double, double* %x.addr, align 8, !dbg !202, !tbaa !51
  %call15 = call i32 @__isinf(double %7) #1, !dbg !204
  %tobool16 = icmp ne i32 %call15, 0, !dbg !204
  br i1 %tobool16, label %if.then, label %if.end, !dbg !205

cond.false.17:                                    ; preds = %cond.false.13
  %8 = load double, double* %x.addr, align 8, !dbg !206, !tbaa !51
  %conv18 = fpext double %8 to x86_fp80, !dbg !206
  %call19 = call i32 @__isinfl(x86_fp80 %conv18) #1, !dbg !208
  %tobool20 = icmp ne i32 %call19, 0, !dbg !208
  br i1 %tobool20, label %if.then, label %if.end, !dbg !209

if.then:                                          ; preds = %cond.false.17, %cond.true.14, %cond.true.9, %cond.false.5, %cond.true.2, %cond.true
  %9 = load double, double* %x.addr, align 8, !dbg !210, !tbaa !51
  %10 = load double, double* %x.addr, align 8, !dbg !212, !tbaa !51
  %add = fadd double %9, %10, !dbg !213
  store double %add, double* %retval, !dbg !214
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !214

if.end:                                           ; preds = %cond.false.17, %cond.true.14, %cond.true.9
  %11 = load double, double* %absx, align 8, !dbg !215, !tbaa !51
  %cmp = fcmp olt double %11, 0x3E30000000000000, !dbg !217
  br i1 %cmp, label %if.then.22, label %if.end.23, !dbg !218

if.then.22:                                       ; preds = %if.end
  %12 = load double, double* %x.addr, align 8, !dbg !219, !tbaa !51
  store double %12, double* %retval, !dbg !221
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !221

if.end.23:                                        ; preds = %if.end
  %13 = load double, double* %absx, align 8, !dbg !222, !tbaa !51
  %cmp24 = fcmp ogt double %13, 0x41B0000000000000, !dbg !223
  br i1 %cmp24, label %if.then.26, label %if.else, !dbg !224

if.then.26:                                       ; preds = %if.end.23
  %14 = load double, double* %absx, align 8, !dbg !225, !tbaa !51
  %call27 = call double @log(double %14) #4, !dbg !227
  %add28 = fadd double %call27, 0x3FE62E42FEFA39EF, !dbg !228
  store double %add28, double* %w, align 8, !dbg !229, !tbaa !51
  br label %if.end.47, !dbg !230

if.else:                                          ; preds = %if.end.23
  %15 = load double, double* %absx, align 8, !dbg !231, !tbaa !51
  %cmp29 = fcmp ogt double %15, 2.000000e+00, !dbg !232
  br i1 %cmp29, label %if.then.31, label %if.else.38, !dbg !233

if.then.31:                                       ; preds = %if.else
  %16 = load double, double* %absx, align 8, !dbg !234, !tbaa !51
  %mul = fmul double 2.000000e+00, %16, !dbg !236
  %17 = load double, double* %x.addr, align 8, !dbg !237, !tbaa !51
  %18 = load double, double* %x.addr, align 8, !dbg !238, !tbaa !51
  %mul32 = fmul double %17, %18, !dbg !239
  %add33 = fadd double %mul32, 1.000000e+00, !dbg !240
  %call34 = call double @sqrt(double %add33) #4, !dbg !241
  %19 = load double, double* %absx, align 8, !dbg !242, !tbaa !51
  %add35 = fadd double %call34, %19, !dbg !243
  %div = fdiv double 1.000000e+00, %add35, !dbg !244
  %add36 = fadd double %mul, %div, !dbg !245
  %call37 = call double @log(double %add36) #4, !dbg !246
  store double %call37, double* %w, align 8, !dbg !247, !tbaa !51
  br label %if.end.46, !dbg !248

if.else.38:                                       ; preds = %if.else
  %20 = bitcast double* %t to i8*, !dbg !249
  call void @llvm.lifetime.start(i64 8, i8* %20) #4, !dbg !249
  call void @llvm.dbg.declare(metadata double* %t, metadata !24, metadata !55), !dbg !250
  %21 = load double, double* %x.addr, align 8, !dbg !251, !tbaa !51
  %22 = load double, double* %x.addr, align 8, !dbg !252, !tbaa !51
  %mul39 = fmul double %21, %22, !dbg !253
  store double %mul39, double* %t, align 8, !dbg !250, !tbaa !51
  %23 = load double, double* %absx, align 8, !dbg !254, !tbaa !51
  %24 = load double, double* %t, align 8, !dbg !255, !tbaa !51
  %25 = load double, double* %t, align 8, !dbg !256, !tbaa !51
  %add40 = fadd double 1.000000e+00, %25, !dbg !257
  %call41 = call double @sqrt(double %add40) #4, !dbg !258
  %add42 = fadd double 1.000000e+00, %call41, !dbg !259
  %div43 = fdiv double %24, %add42, !dbg !260
  %add44 = fadd double %23, %div43, !dbg !261
  %call45 = call double @_Py_log1p(double %add44), !dbg !262
  store double %call45, double* %w, align 8, !dbg !263, !tbaa !51
  %26 = bitcast double* %t to i8*, !dbg !264
  call void @llvm.lifetime.end(i64 8, i8* %26) #4, !dbg !264
  br label %if.end.46

if.end.46:                                        ; preds = %if.else.38, %if.then.31
  br label %if.end.47

if.end.47:                                        ; preds = %if.end.46, %if.then.26
  %27 = load double, double* %w, align 8, !dbg !265, !tbaa !51
  %28 = load double, double* %x.addr, align 8, !dbg !266, !tbaa !51
  %call48 = call double @copysign(double %27, double %28) #1, !dbg !267
  store double %call48, double* %retval, !dbg !268
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !268

cleanup:                                          ; preds = %if.end.47, %if.then.22, %if.then
  %29 = bitcast double* %absx to i8*, !dbg !269
  call void @llvm.lifetime.end(i64 8, i8* %29) #4, !dbg !269
  %30 = bitcast double* %w to i8*, !dbg !269
  call void @llvm.lifetime.end(i64 8, i8* %30) #4, !dbg !269
  %31 = load double, double* %retval, !dbg !269
  ret double %31, !dbg !269
}

; Function Attrs: nounwind readnone
declare double @fabs(double) #2

; Function Attrs: nounwind readnone
declare double @copysign(double, double) #2

; Function Attrs: nounwind uwtable
define double @_Py_atanh(double %x) #0 {
entry:
  %retval = alloca double, align 8
  %x.addr = alloca double, align 8
  %absx = alloca double, align 8
  %t = alloca double, align 8
  %cleanup.dest.slot = alloca i32
  store double %x, double* %x.addr, align 8, !tbaa !51
  call void @llvm.dbg.declare(metadata double* %x.addr, metadata !30, metadata !55), !dbg !270
  %0 = bitcast double* %absx to i8*, !dbg !271
  call void @llvm.lifetime.start(i64 8, i8* %0) #4, !dbg !271
  call void @llvm.dbg.declare(metadata double* %absx, metadata !31, metadata !55), !dbg !272
  %1 = bitcast double* %t to i8*, !dbg !273
  call void @llvm.lifetime.start(i64 8, i8* %1) #4, !dbg !273
  call void @llvm.dbg.declare(metadata double* %t, metadata !32, metadata !55), !dbg !274
  br i1 false, label %cond.true, label %cond.false, !dbg !275

cond.true:                                        ; preds = %entry
  %2 = load double, double* %x.addr, align 8, !dbg !276, !tbaa !51
  %conv = fptrunc double %2 to float, !dbg !276
  %call = call i32 @__isnanf(float %conv) #1, !dbg !279
  %tobool = icmp ne i32 %call, 0, !dbg !279
  br i1 %tobool, label %if.then, label %if.end, !dbg !280

cond.false:                                       ; preds = %entry
  br i1 true, label %cond.true.1, label %cond.false.4, !dbg !281

cond.true.1:                                      ; preds = %cond.false
  %3 = load double, double* %x.addr, align 8, !dbg !283, !tbaa !51
  %call2 = call i32 @__isnan(double %3) #1, !dbg !285
  %tobool3 = icmp ne i32 %call2, 0, !dbg !285
  br i1 %tobool3, label %if.then, label %if.end, !dbg !286

cond.false.4:                                     ; preds = %cond.false
  %4 = load double, double* %x.addr, align 8, !dbg !287, !tbaa !51
  %conv5 = fpext double %4 to x86_fp80, !dbg !287
  %call6 = call i32 @__isnanl(x86_fp80 %conv5) #1, !dbg !289
  %tobool7 = icmp ne i32 %call6, 0, !dbg !289
  br i1 %tobool7, label %if.then, label %if.end, !dbg !275

if.then:                                          ; preds = %cond.false.4, %cond.true.1, %cond.true
  %5 = load double, double* %x.addr, align 8, !dbg !290, !tbaa !51
  %6 = load double, double* %x.addr, align 8, !dbg !292, !tbaa !51
  %add = fadd double %5, %6, !dbg !293
  store double %add, double* %retval, !dbg !294
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !294

if.end:                                           ; preds = %cond.false.4, %cond.true.1, %cond.true
  %7 = load double, double* %x.addr, align 8, !dbg !295, !tbaa !51
  %call8 = call double @fabs(double %7) #1, !dbg !296
  store double %call8, double* %absx, align 8, !dbg !297, !tbaa !51
  %8 = load double, double* %absx, align 8, !dbg !298, !tbaa !51
  %cmp = fcmp oge double %8, 1.000000e+00, !dbg !300
  br i1 %cmp, label %if.then.10, label %if.end.12, !dbg !301

if.then.10:                                       ; preds = %if.end
  %call11 = call i32* @__errno_location() #1, !dbg !302
  store i32 33, i32* %call11, align 4, !dbg !304, !tbaa !83
  store double 0x7FF8000000000000, double* %retval, !dbg !305
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !305

if.end.12:                                        ; preds = %if.end
  %9 = load double, double* %absx, align 8, !dbg !306, !tbaa !51
  %cmp13 = fcmp olt double %9, 0x3E30000000000000, !dbg !308
  br i1 %cmp13, label %if.then.15, label %if.end.16, !dbg !309

if.then.15:                                       ; preds = %if.end.12
  %10 = load double, double* %x.addr, align 8, !dbg !310, !tbaa !51
  store double %10, double* %retval, !dbg !312
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !312

if.end.16:                                        ; preds = %if.end.12
  %11 = load double, double* %absx, align 8, !dbg !313, !tbaa !51
  %cmp17 = fcmp olt double %11, 5.000000e-01, !dbg !315
  br i1 %cmp17, label %if.then.19, label %if.else, !dbg !316

if.then.19:                                       ; preds = %if.end.16
  %12 = load double, double* %absx, align 8, !dbg !317, !tbaa !51
  %13 = load double, double* %absx, align 8, !dbg !319, !tbaa !51
  %add20 = fadd double %12, %13, !dbg !320
  store double %add20, double* %t, align 8, !dbg !321, !tbaa !51
  %14 = load double, double* %t, align 8, !dbg !322, !tbaa !51
  %15 = load double, double* %t, align 8, !dbg !323, !tbaa !51
  %16 = load double, double* %absx, align 8, !dbg !324, !tbaa !51
  %mul = fmul double %15, %16, !dbg !325
  %17 = load double, double* %absx, align 8, !dbg !326, !tbaa !51
  %sub = fsub double 1.000000e+00, %17, !dbg !327
  %div = fdiv double %mul, %sub, !dbg !328
  %add21 = fadd double %14, %div, !dbg !329
  %call22 = call double @_Py_log1p(double %add21), !dbg !330
  %mul23 = fmul double 5.000000e-01, %call22, !dbg !331
  store double %mul23, double* %t, align 8, !dbg !332, !tbaa !51
  br label %if.end.29, !dbg !333

if.else:                                          ; preds = %if.end.16
  %18 = load double, double* %absx, align 8, !dbg !334, !tbaa !51
  %19 = load double, double* %absx, align 8, !dbg !336, !tbaa !51
  %add24 = fadd double %18, %19, !dbg !337
  %20 = load double, double* %absx, align 8, !dbg !338, !tbaa !51
  %sub25 = fsub double 1.000000e+00, %20, !dbg !339
  %div26 = fdiv double %add24, %sub25, !dbg !340
  %call27 = call double @_Py_log1p(double %div26), !dbg !341
  %mul28 = fmul double 5.000000e-01, %call27, !dbg !342
  store double %mul28, double* %t, align 8, !dbg !343, !tbaa !51
  br label %if.end.29

if.end.29:                                        ; preds = %if.else, %if.then.19
  %21 = load double, double* %t, align 8, !dbg !344, !tbaa !51
  %22 = load double, double* %x.addr, align 8, !dbg !345, !tbaa !51
  %call30 = call double @copysign(double %21, double %22) #1, !dbg !346
  store double %call30, double* %retval, !dbg !347
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !347

cleanup:                                          ; preds = %if.end.29, %if.then.15, %if.then.10, %if.then
  %23 = bitcast double* %t to i8*, !dbg !348
  call void @llvm.lifetime.end(i64 8, i8* %23) #4, !dbg !348
  %24 = bitcast double* %absx to i8*, !dbg !348
  call void @llvm.lifetime.end(i64 8, i8* %24) #4, !dbg !348
  %25 = load double, double* %retval, !dbg !348
  ret double %25, !dbg !348
}

; Function Attrs: nounwind uwtable
define double @_Py_expm1(double %x) #0 {
entry:
  %retval = alloca double, align 8
  %x.addr = alloca double, align 8
  %u = alloca double, align 8
  %cleanup.dest.slot = alloca i32
  store double %x, double* %x.addr, align 8, !tbaa !51
  call void @llvm.dbg.declare(metadata double* %x.addr, metadata !35, metadata !55), !dbg !349
  %0 = load double, double* %x.addr, align 8, !dbg !350, !tbaa !51
  %call = call double @fabs(double %0) #1, !dbg !351
  %cmp = fcmp olt double %call, 7.000000e-01, !dbg !352
  br i1 %cmp, label %if.then, label %if.else.5, !dbg !353

if.then:                                          ; preds = %entry
  %1 = bitcast double* %u to i8*, !dbg !354
  call void @llvm.lifetime.start(i64 8, i8* %1) #4, !dbg !354
  call void @llvm.dbg.declare(metadata double* %u, metadata !36, metadata !55), !dbg !355
  %2 = load double, double* %x.addr, align 8, !dbg !356, !tbaa !51
  %call1 = call double @exp(double %2) #4, !dbg !357
  store double %call1, double* %u, align 8, !dbg !358, !tbaa !51
  %3 = load double, double* %u, align 8, !dbg !359, !tbaa !51
  %cmp2 = fcmp oeq double %3, 1.000000e+00, !dbg !361
  br i1 %cmp2, label %if.then.3, label %if.else, !dbg !362

if.then.3:                                        ; preds = %if.then
  %4 = load double, double* %x.addr, align 8, !dbg !363, !tbaa !51
  store double %4, double* %retval, !dbg !364
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !364

if.else:                                          ; preds = %if.then
  %5 = load double, double* %u, align 8, !dbg !365, !tbaa !51
  %sub = fsub double %5, 1.000000e+00, !dbg !366
  %6 = load double, double* %x.addr, align 8, !dbg !367, !tbaa !51
  %mul = fmul double %sub, %6, !dbg !368
  %7 = load double, double* %u, align 8, !dbg !369, !tbaa !51
  %call4 = call double @log(double %7) #4, !dbg !370
  %div = fdiv double %mul, %call4, !dbg !371
  store double %div, double* %retval, !dbg !372
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !372

cleanup:                                          ; preds = %if.else, %if.then.3
  %8 = bitcast double* %u to i8*, !dbg !373
  call void @llvm.lifetime.end(i64 8, i8* %8) #4, !dbg !373
  br label %return

if.else.5:                                        ; preds = %entry
  %9 = load double, double* %x.addr, align 8, !dbg !374, !tbaa !51
  %call6 = call double @exp(double %9) #4, !dbg !375
  %sub7 = fsub double %call6, 1.000000e+00, !dbg !376
  store double %sub7, double* %retval, !dbg !377
  br label %return, !dbg !377

return:                                           ; preds = %if.else.5, %cleanup
  %10 = load double, double* %retval, !dbg !378
  ret double %10, !dbg !378
}

; Function Attrs: nounwind
declare double @exp(double) #3

; Function Attrs: nounwind
declare double @log1p(double) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!47, !48, !49}
!llvm.ident = !{!50}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.7.1 (https://github.com/llvm-mirror/clang.git 0dbefa1b83eb90f7a06b5df5df254ce32be3db4b) (git@github.com:kim-yoonseung/llvm.git e8e68907a8135028089af4d924da468e2b7257fa)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, subprograms: !3, globals: !42)
!1 = !DIFile(filename: "_math.c", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!2 = !{}
!3 = !{!4, !19, !28, !33, !39}
!4 = !DISubprogram(name: "_Py_acosh", scope: !5, file: !5, line: 44, type: !6, isLocal: false, isDefinition: true, scopeLine: 45, flags: DIFlagPrototyped, isOptimized: true, function: double (double)* @_Py_acosh, variables: !9)
!5 = !DIFile(filename: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1/Modules/_math.c", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!6 = !DISubroutineType(types: !7)
!7 = !{!8, !8}
!8 = !DIBasicType(name: "double", size: 64, align: 64, encoding: DW_ATE_float)
!9 = !{!10, !11, !17}
!10 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "x", arg: 1, scope: !4, file: !5, line: 44, type: !8)
!11 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "t", scope: !12, file: !5, line: 69, type: !8)
!12 = distinct !DILexicalBlock(scope: !13, file: !5, line: 68, column: 22)
!13 = distinct !DILexicalBlock(scope: !14, file: !5, line: 68, column: 14)
!14 = distinct !DILexicalBlock(scope: !15, file: !5, line: 65, column: 14)
!15 = distinct !DILexicalBlock(scope: !16, file: !5, line: 57, column: 14)
!16 = distinct !DILexicalBlock(scope: !4, file: !5, line: 49, column: 9)
!17 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "t", scope: !18, file: !5, line: 73, type: !8)
!18 = distinct !DILexicalBlock(scope: !13, file: !5, line: 72, column: 10)
!19 = !DISubprogram(name: "_Py_asinh", scope: !5, file: !5, line: 91, type: !6, isLocal: false, isDefinition: true, scopeLine: 92, flags: DIFlagPrototyped, isOptimized: true, function: double (double)* @_Py_asinh, variables: !20)
!20 = !{!21, !22, !23, !24}
!21 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "x", arg: 1, scope: !19, file: !5, line: 91, type: !8)
!22 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "w", scope: !19, file: !5, line: 93, type: !8)
!23 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "absx", scope: !19, file: !5, line: 94, type: !8)
!24 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "t", scope: !25, file: !5, line: 109, type: !8)
!25 = distinct !DILexicalBlock(scope: !26, file: !5, line: 108, column: 10)
!26 = distinct !DILexicalBlock(scope: !27, file: !5, line: 105, column: 14)
!27 = distinct !DILexicalBlock(scope: !19, file: !5, line: 102, column: 9)
!28 = !DISubprogram(name: "_Py_atanh", scope: !5, file: !5, line: 134, type: !6, isLocal: false, isDefinition: true, scopeLine: 135, flags: DIFlagPrototyped, isOptimized: true, function: double (double)* @_Py_atanh, variables: !29)
!29 = !{!30, !31, !32}
!30 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "x", arg: 1, scope: !28, file: !5, line: 134, type: !8)
!31 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "absx", scope: !28, file: !5, line: 136, type: !8)
!32 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "t", scope: !28, file: !5, line: 137, type: !8)
!33 = !DISubprogram(name: "_Py_expm1", scope: !5, file: !5, line: 169, type: !6, isLocal: false, isDefinition: true, scopeLine: 170, flags: DIFlagPrototyped, isOptimized: true, function: double (double)* @_Py_expm1, variables: !34)
!34 = !{!35, !36}
!35 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "x", arg: 1, scope: !33, file: !5, line: 169, type: !8)
!36 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "u", scope: !37, file: !5, line: 179, type: !8)
!37 = distinct !DILexicalBlock(scope: !38, file: !5, line: 178, column: 24)
!38 = distinct !DILexicalBlock(scope: !33, file: !5, line: 178, column: 9)
!39 = !DISubprogram(name: "_Py_log1p", scope: !5, file: !5, line: 197, type: !6, isLocal: false, isDefinition: true, scopeLine: 198, flags: DIFlagPrototyped, isOptimized: true, function: double (double)* @_Py_log1p, variables: !40)
!40 = !{!41}
!41 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "x", arg: 1, scope: !39, file: !5, line: 197, type: !8)
!42 = !{!43, !45, !46}
!43 = !DIGlobalVariable(name: "two_pow_p28", scope: !0, file: !5, line: 24, type: !44, isLocal: true, isDefinition: true, variable: double 0x41B0000000000000)
!44 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !8)
!45 = !DIGlobalVariable(name: "ln2", scope: !0, file: !5, line: 22, type: !44, isLocal: true, isDefinition: true, variable: double 0x3FE62E42FEFA39EF)
!46 = !DIGlobalVariable(name: "two_pow_m28", scope: !0, file: !5, line: 23, type: !44, isLocal: true, isDefinition: true, variable: double 0x3E30000000000000)
!47 = !{i32 2, !"Dwarf Version", i32 4}
!48 = !{i32 2, !"Debug Info Version", i32 3}
!49 = !{i32 1, !"PIC Level", i32 2}
!50 = !{!"clang version 3.7.1 (https://github.com/llvm-mirror/clang.git 0dbefa1b83eb90f7a06b5df5df254ce32be3db4b) (git@github.com:kim-yoonseung/llvm.git e8e68907a8135028089af4d924da468e2b7257fa)"}
!51 = !{!52, !52, i64 0}
!52 = !{!"double", !53, i64 0}
!53 = !{!"omnipotent char", !54, i64 0}
!54 = !{!"Simple C/C++ TBAA"}
!55 = !DIExpression()
!56 = !DILocation(line: 44, column: 18, scope: !4)
!57 = !DILocation(line: 46, column: 9, scope: !4)
!58 = !DILocation(line: 46, column: 51, scope: !59)
!59 = !DILexicalBlockFile(scope: !60, file: !5, discriminator: 1)
!60 = distinct !DILexicalBlock(scope: !4, file: !5, line: 46, column: 9)
!61 = !DILocation(line: 46, column: 41, scope: !60)
!62 = !DILocation(line: 46, column: 10, scope: !60)
!63 = !DILocation(line: 46, column: 9, scope: !64)
!64 = !DILexicalBlockFile(scope: !4, file: !5, discriminator: 2)
!65 = !DILocation(line: 46, column: 97, scope: !66)
!66 = !DILexicalBlockFile(scope: !60, file: !5, discriminator: 3)
!67 = !DILocation(line: 46, column: 88, scope: !60)
!68 = !DILocation(line: 46, column: 56, scope: !60)
!69 = !DILocation(line: 46, column: 112, scope: !70)
!70 = !DILexicalBlockFile(scope: !60, file: !5, discriminator: 4)
!71 = !DILocation(line: 46, column: 102, scope: !60)
!72 = !DILocation(line: 47, column: 16, scope: !73)
!73 = distinct !DILexicalBlock(scope: !60, file: !5, line: 46, column: 117)
!74 = !DILocation(line: 47, column: 18, scope: !73)
!75 = !DILocation(line: 47, column: 17, scope: !73)
!76 = !DILocation(line: 47, column: 9, scope: !73)
!77 = !DILocation(line: 49, column: 9, scope: !16)
!78 = !DILocation(line: 49, column: 11, scope: !16)
!79 = !DILocation(line: 49, column: 9, scope: !4)
!80 = !DILocation(line: 50, column: 11, scope: !81)
!81 = distinct !DILexicalBlock(scope: !16, file: !5, line: 49, column: 17)
!82 = !DILocation(line: 50, column: 32, scope: !81)
!83 = !{!84, !84, i64 0}
!84 = !{!"int", !53, i64 0}
!85 = !DILocation(line: 52, column: 9, scope: !81)
!86 = !DILocation(line: 57, column: 14, scope: !15)
!87 = !DILocation(line: 57, column: 16, scope: !15)
!88 = !DILocation(line: 57, column: 14, scope: !16)
!89 = !DILocation(line: 58, column: 13, scope: !90)
!90 = distinct !DILexicalBlock(scope: !15, file: !5, line: 57, column: 32)
!91 = !DILocation(line: 58, column: 55, scope: !92)
!92 = !DILexicalBlockFile(scope: !93, file: !5, discriminator: 1)
!93 = distinct !DILexicalBlock(scope: !90, file: !5, line: 58, column: 13)
!94 = !DILocation(line: 58, column: 45, scope: !93)
!95 = !DILocation(line: 58, column: 14, scope: !93)
!96 = !DILocation(line: 58, column: 13, scope: !97)
!97 = !DILexicalBlockFile(scope: !90, file: !5, discriminator: 2)
!98 = !DILocation(line: 58, column: 101, scope: !99)
!99 = !DILexicalBlockFile(scope: !93, file: !5, discriminator: 3)
!100 = !DILocation(line: 58, column: 92, scope: !93)
!101 = !DILocation(line: 58, column: 60, scope: !93)
!102 = !DILocation(line: 58, column: 116, scope: !103)
!103 = !DILexicalBlockFile(scope: !93, file: !5, discriminator: 4)
!104 = !DILocation(line: 58, column: 106, scope: !93)
!105 = !DILocation(line: 59, column: 20, scope: !106)
!106 = distinct !DILexicalBlock(scope: !93, file: !5, line: 58, column: 121)
!107 = !DILocation(line: 59, column: 22, scope: !106)
!108 = !DILocation(line: 59, column: 21, scope: !106)
!109 = !DILocation(line: 59, column: 13, scope: !106)
!110 = !DILocation(line: 62, column: 24, scope: !111)
!111 = distinct !DILexicalBlock(scope: !93, file: !5, line: 61, column: 14)
!112 = !DILocation(line: 62, column: 20, scope: !111)
!113 = !DILocation(line: 62, column: 26, scope: !111)
!114 = !DILocation(line: 62, column: 13, scope: !111)
!115 = !DILocation(line: 65, column: 14, scope: !14)
!116 = !DILocation(line: 65, column: 16, scope: !14)
!117 = !DILocation(line: 65, column: 14, scope: !15)
!118 = !DILocation(line: 66, column: 9, scope: !119)
!119 = distinct !DILexicalBlock(scope: !14, file: !5, line: 65, column: 23)
!120 = !DILocation(line: 68, column: 14, scope: !13)
!121 = !DILocation(line: 68, column: 16, scope: !13)
!122 = !DILocation(line: 68, column: 14, scope: !14)
!123 = !DILocation(line: 69, column: 9, scope: !12)
!124 = !DILocation(line: 69, column: 16, scope: !12)
!125 = !DILocation(line: 69, column: 20, scope: !12)
!126 = !DILocation(line: 69, column: 22, scope: !12)
!127 = !DILocation(line: 69, column: 21, scope: !12)
!128 = !DILocation(line: 70, column: 24, scope: !12)
!129 = !DILocation(line: 70, column: 23, scope: !12)
!130 = !DILocation(line: 70, column: 35, scope: !12)
!131 = !DILocation(line: 70, column: 44, scope: !12)
!132 = !DILocation(line: 70, column: 46, scope: !12)
!133 = !DILocation(line: 70, column: 39, scope: !12)
!134 = !DILocation(line: 70, column: 37, scope: !12)
!135 = !DILocation(line: 70, column: 32, scope: !12)
!136 = !DILocation(line: 70, column: 26, scope: !12)
!137 = !DILocation(line: 70, column: 16, scope: !12)
!138 = !DILocation(line: 70, column: 9, scope: !12)
!139 = !DILocation(line: 71, column: 5, scope: !13)
!140 = !DILocation(line: 73, column: 9, scope: !18)
!141 = !DILocation(line: 73, column: 16, scope: !18)
!142 = !DILocation(line: 73, column: 20, scope: !18)
!143 = !DILocation(line: 73, column: 22, scope: !18)
!144 = !DILocation(line: 74, column: 26, scope: !18)
!145 = !DILocation(line: 74, column: 39, scope: !18)
!146 = !DILocation(line: 74, column: 38, scope: !18)
!147 = !DILocation(line: 74, column: 43, scope: !18)
!148 = !DILocation(line: 74, column: 45, scope: !18)
!149 = !DILocation(line: 74, column: 44, scope: !18)
!150 = !DILocation(line: 74, column: 41, scope: !18)
!151 = !DILocation(line: 74, column: 30, scope: !18)
!152 = !DILocation(line: 74, column: 28, scope: !18)
!153 = !DILocation(line: 74, column: 16, scope: !18)
!154 = !DILocation(line: 74, column: 9, scope: !18)
!155 = !DILocation(line: 75, column: 5, scope: !13)
!156 = !DILocation(line: 76, column: 1, scope: !4)
!157 = !DILocation(line: 197, column: 18, scope: !39)
!158 = !DILocation(line: 205, column: 9, scope: !159)
!159 = distinct !DILexicalBlock(scope: !39, file: !5, line: 205, column: 9)
!160 = !DILocation(line: 205, column: 11, scope: !159)
!161 = !DILocation(line: 205, column: 9, scope: !39)
!162 = !DILocation(line: 206, column: 16, scope: !163)
!163 = distinct !DILexicalBlock(scope: !159, file: !5, line: 205, column: 19)
!164 = !DILocation(line: 206, column: 9, scope: !163)
!165 = !DILocation(line: 209, column: 22, scope: !166)
!166 = distinct !DILexicalBlock(scope: !159, file: !5, line: 208, column: 10)
!167 = !DILocation(line: 209, column: 16, scope: !166)
!168 = !DILocation(line: 209, column: 9, scope: !166)
!169 = !DILocation(line: 211, column: 1, scope: !39)
!170 = !DILocation(line: 91, column: 18, scope: !19)
!171 = !DILocation(line: 93, column: 5, scope: !19)
!172 = !DILocation(line: 93, column: 12, scope: !19)
!173 = !DILocation(line: 94, column: 5, scope: !19)
!174 = !DILocation(line: 94, column: 12, scope: !19)
!175 = !DILocation(line: 94, column: 24, scope: !19)
!176 = !DILocation(line: 94, column: 19, scope: !19)
!177 = !DILocation(line: 96, column: 116, scope: !178)
!178 = distinct !DILexicalBlock(scope: !19, file: !5, line: 96, column: 9)
!179 = !DILocation(line: 96, column: 51, scope: !180)
!180 = !DILexicalBlockFile(scope: !178, file: !5, discriminator: 1)
!181 = !DILocation(line: 96, column: 41, scope: !178)
!182 = !DILocation(line: 96, column: 10, scope: !178)
!183 = !DILocation(line: 96, column: 116, scope: !184)
!184 = !DILexicalBlockFile(scope: !178, file: !5, discriminator: 2)
!185 = !DILocation(line: 96, column: 97, scope: !186)
!186 = !DILexicalBlockFile(scope: !178, file: !5, discriminator: 4)
!187 = !DILocation(line: 96, column: 88, scope: !178)
!188 = !DILocation(line: 96, column: 56, scope: !178)
!189 = !DILocation(line: 96, column: 112, scope: !190)
!190 = !DILexicalBlockFile(scope: !178, file: !5, discriminator: 5)
!191 = !DILocation(line: 96, column: 102, scope: !178)
!192 = !DILocation(line: 96, column: 9, scope: !193)
!193 = !DILexicalBlockFile(scope: !194, file: !5, discriminator: 7)
!194 = !DILexicalBlockFile(scope: !195, file: !5, discriminator: 6)
!195 = !DILexicalBlockFile(scope: !19, file: !5, discriminator: 3)
!196 = !DILocation(line: 96, column: 161, scope: !197)
!197 = !DILexicalBlockFile(scope: !178, file: !5, discriminator: 8)
!198 = !DILocation(line: 96, column: 151, scope: !178)
!199 = !DILocation(line: 96, column: 120, scope: !178)
!200 = !DILocation(line: 96, column: 9, scope: !201)
!201 = !DILexicalBlockFile(scope: !19, file: !5, discriminator: 9)
!202 = !DILocation(line: 96, column: 207, scope: !203)
!203 = !DILexicalBlockFile(scope: !178, file: !5, discriminator: 10)
!204 = !DILocation(line: 96, column: 198, scope: !178)
!205 = !DILocation(line: 96, column: 166, scope: !178)
!206 = !DILocation(line: 96, column: 222, scope: !207)
!207 = !DILexicalBlockFile(scope: !178, file: !5, discriminator: 11)
!208 = !DILocation(line: 96, column: 212, scope: !178)
!209 = !DILocation(line: 96, column: 9, scope: !19)
!210 = !DILocation(line: 97, column: 16, scope: !211)
!211 = distinct !DILexicalBlock(scope: !178, file: !5, line: 96, column: 227)
!212 = !DILocation(line: 97, column: 18, scope: !211)
!213 = !DILocation(line: 97, column: 17, scope: !211)
!214 = !DILocation(line: 97, column: 9, scope: !211)
!215 = !DILocation(line: 99, column: 9, scope: !216)
!216 = distinct !DILexicalBlock(scope: !19, file: !5, line: 99, column: 9)
!217 = !DILocation(line: 99, column: 14, scope: !216)
!218 = !DILocation(line: 99, column: 9, scope: !19)
!219 = !DILocation(line: 100, column: 16, scope: !220)
!220 = distinct !DILexicalBlock(scope: !216, file: !5, line: 99, column: 29)
!221 = !DILocation(line: 100, column: 9, scope: !220)
!222 = !DILocation(line: 102, column: 9, scope: !27)
!223 = !DILocation(line: 102, column: 14, scope: !27)
!224 = !DILocation(line: 102, column: 9, scope: !19)
!225 = !DILocation(line: 103, column: 17, scope: !226)
!226 = distinct !DILexicalBlock(scope: !27, file: !5, line: 102, column: 29)
!227 = !DILocation(line: 103, column: 13, scope: !226)
!228 = !DILocation(line: 103, column: 22, scope: !226)
!229 = !DILocation(line: 103, column: 11, scope: !226)
!230 = !DILocation(line: 104, column: 5, scope: !226)
!231 = !DILocation(line: 105, column: 14, scope: !26)
!232 = !DILocation(line: 105, column: 19, scope: !26)
!233 = !DILocation(line: 105, column: 14, scope: !27)
!234 = !DILocation(line: 106, column: 21, scope: !235)
!235 = distinct !DILexicalBlock(scope: !26, file: !5, line: 105, column: 26)
!236 = !DILocation(line: 106, column: 20, scope: !235)
!237 = !DILocation(line: 106, column: 40, scope: !235)
!238 = !DILocation(line: 106, column: 42, scope: !235)
!239 = !DILocation(line: 106, column: 41, scope: !235)
!240 = !DILocation(line: 106, column: 44, scope: !235)
!241 = !DILocation(line: 106, column: 35, scope: !235)
!242 = !DILocation(line: 106, column: 53, scope: !235)
!243 = !DILocation(line: 106, column: 51, scope: !235)
!244 = !DILocation(line: 106, column: 32, scope: !235)
!245 = !DILocation(line: 106, column: 26, scope: !235)
!246 = !DILocation(line: 106, column: 13, scope: !235)
!247 = !DILocation(line: 106, column: 11, scope: !235)
!248 = !DILocation(line: 107, column: 5, scope: !235)
!249 = !DILocation(line: 109, column: 9, scope: !25)
!250 = !DILocation(line: 109, column: 16, scope: !25)
!251 = !DILocation(line: 109, column: 20, scope: !25)
!252 = !DILocation(line: 109, column: 22, scope: !25)
!253 = !DILocation(line: 109, column: 21, scope: !25)
!254 = !DILocation(line: 110, column: 23, scope: !25)
!255 = !DILocation(line: 110, column: 30, scope: !25)
!256 = !DILocation(line: 110, column: 52, scope: !25)
!257 = !DILocation(line: 110, column: 50, scope: !25)
!258 = !DILocation(line: 110, column: 41, scope: !25)
!259 = !DILocation(line: 110, column: 39, scope: !25)
!260 = !DILocation(line: 110, column: 32, scope: !25)
!261 = !DILocation(line: 110, column: 28, scope: !25)
!262 = !DILocation(line: 110, column: 13, scope: !25)
!263 = !DILocation(line: 110, column: 11, scope: !25)
!264 = !DILocation(line: 111, column: 5, scope: !26)
!265 = !DILocation(line: 112, column: 21, scope: !19)
!266 = !DILocation(line: 112, column: 24, scope: !19)
!267 = !DILocation(line: 112, column: 12, scope: !19)
!268 = !DILocation(line: 112, column: 5, scope: !19)
!269 = !DILocation(line: 114, column: 1, scope: !19)
!270 = !DILocation(line: 134, column: 18, scope: !28)
!271 = !DILocation(line: 136, column: 5, scope: !28)
!272 = !DILocation(line: 136, column: 12, scope: !28)
!273 = !DILocation(line: 137, column: 5, scope: !28)
!274 = !DILocation(line: 137, column: 12, scope: !28)
!275 = !DILocation(line: 139, column: 9, scope: !28)
!276 = !DILocation(line: 139, column: 51, scope: !277)
!277 = !DILexicalBlockFile(scope: !278, file: !5, discriminator: 1)
!278 = distinct !DILexicalBlock(scope: !28, file: !5, line: 139, column: 9)
!279 = !DILocation(line: 139, column: 41, scope: !278)
!280 = !DILocation(line: 139, column: 10, scope: !278)
!281 = !DILocation(line: 139, column: 9, scope: !282)
!282 = !DILexicalBlockFile(scope: !28, file: !5, discriminator: 2)
!283 = !DILocation(line: 139, column: 97, scope: !284)
!284 = !DILexicalBlockFile(scope: !278, file: !5, discriminator: 3)
!285 = !DILocation(line: 139, column: 88, scope: !278)
!286 = !DILocation(line: 139, column: 56, scope: !278)
!287 = !DILocation(line: 139, column: 112, scope: !288)
!288 = !DILexicalBlockFile(scope: !278, file: !5, discriminator: 4)
!289 = !DILocation(line: 139, column: 102, scope: !278)
!290 = !DILocation(line: 140, column: 16, scope: !291)
!291 = distinct !DILexicalBlock(scope: !278, file: !5, line: 139, column: 117)
!292 = !DILocation(line: 140, column: 18, scope: !291)
!293 = !DILocation(line: 140, column: 17, scope: !291)
!294 = !DILocation(line: 140, column: 9, scope: !291)
!295 = !DILocation(line: 142, column: 17, scope: !28)
!296 = !DILocation(line: 142, column: 12, scope: !28)
!297 = !DILocation(line: 142, column: 10, scope: !28)
!298 = !DILocation(line: 143, column: 9, scope: !299)
!299 = distinct !DILexicalBlock(scope: !28, file: !5, line: 143, column: 9)
!300 = !DILocation(line: 143, column: 14, scope: !299)
!301 = !DILocation(line: 143, column: 9, scope: !28)
!302 = !DILocation(line: 144, column: 11, scope: !303)
!303 = distinct !DILexicalBlock(scope: !299, file: !5, line: 143, column: 21)
!304 = !DILocation(line: 144, column: 32, scope: !303)
!305 = !DILocation(line: 146, column: 9, scope: !303)
!306 = !DILocation(line: 151, column: 9, scope: !307)
!307 = distinct !DILexicalBlock(scope: !28, file: !5, line: 151, column: 9)
!308 = !DILocation(line: 151, column: 14, scope: !307)
!309 = !DILocation(line: 151, column: 9, scope: !28)
!310 = !DILocation(line: 152, column: 16, scope: !311)
!311 = distinct !DILexicalBlock(scope: !307, file: !5, line: 151, column: 29)
!312 = !DILocation(line: 152, column: 9, scope: !311)
!313 = !DILocation(line: 154, column: 9, scope: !314)
!314 = distinct !DILexicalBlock(scope: !28, file: !5, line: 154, column: 9)
!315 = !DILocation(line: 154, column: 14, scope: !314)
!316 = !DILocation(line: 154, column: 9, scope: !28)
!317 = !DILocation(line: 155, column: 13, scope: !318)
!318 = distinct !DILexicalBlock(scope: !314, file: !5, line: 154, column: 21)
!319 = !DILocation(line: 155, column: 18, scope: !318)
!320 = !DILocation(line: 155, column: 17, scope: !318)
!321 = !DILocation(line: 155, column: 11, scope: !318)
!322 = !DILocation(line: 156, column: 29, scope: !318)
!323 = !DILocation(line: 156, column: 33, scope: !318)
!324 = !DILocation(line: 156, column: 35, scope: !318)
!325 = !DILocation(line: 156, column: 34, scope: !318)
!326 = !DILocation(line: 156, column: 49, scope: !318)
!327 = !DILocation(line: 156, column: 47, scope: !318)
!328 = !DILocation(line: 156, column: 40, scope: !318)
!329 = !DILocation(line: 156, column: 31, scope: !318)
!330 = !DILocation(line: 156, column: 19, scope: !318)
!331 = !DILocation(line: 156, column: 17, scope: !318)
!332 = !DILocation(line: 156, column: 11, scope: !318)
!333 = !DILocation(line: 157, column: 5, scope: !318)
!334 = !DILocation(line: 159, column: 30, scope: !335)
!335 = distinct !DILexicalBlock(scope: !314, file: !5, line: 158, column: 10)
!336 = !DILocation(line: 159, column: 37, scope: !335)
!337 = !DILocation(line: 159, column: 35, scope: !335)
!338 = !DILocation(line: 159, column: 52, scope: !335)
!339 = !DILocation(line: 159, column: 50, scope: !335)
!340 = !DILocation(line: 159, column: 43, scope: !335)
!341 = !DILocation(line: 159, column: 19, scope: !335)
!342 = !DILocation(line: 159, column: 17, scope: !335)
!343 = !DILocation(line: 159, column: 11, scope: !335)
!344 = !DILocation(line: 161, column: 21, scope: !28)
!345 = !DILocation(line: 161, column: 24, scope: !28)
!346 = !DILocation(line: 161, column: 12, scope: !28)
!347 = !DILocation(line: 161, column: 5, scope: !28)
!348 = !DILocation(line: 162, column: 1, scope: !28)
!349 = !DILocation(line: 169, column: 18, scope: !33)
!350 = !DILocation(line: 178, column: 14, scope: !38)
!351 = !DILocation(line: 178, column: 9, scope: !38)
!352 = !DILocation(line: 178, column: 17, scope: !38)
!353 = !DILocation(line: 178, column: 9, scope: !33)
!354 = !DILocation(line: 179, column: 9, scope: !37)
!355 = !DILocation(line: 179, column: 16, scope: !37)
!356 = !DILocation(line: 180, column: 17, scope: !37)
!357 = !DILocation(line: 180, column: 13, scope: !37)
!358 = !DILocation(line: 180, column: 11, scope: !37)
!359 = !DILocation(line: 181, column: 13, scope: !360)
!360 = distinct !DILexicalBlock(scope: !37, file: !5, line: 181, column: 13)
!361 = !DILocation(line: 181, column: 15, scope: !360)
!362 = !DILocation(line: 181, column: 13, scope: !37)
!363 = !DILocation(line: 182, column: 20, scope: !360)
!364 = !DILocation(line: 182, column: 13, scope: !360)
!365 = !DILocation(line: 184, column: 21, scope: !360)
!366 = !DILocation(line: 184, column: 23, scope: !360)
!367 = !DILocation(line: 184, column: 32, scope: !360)
!368 = !DILocation(line: 184, column: 30, scope: !360)
!369 = !DILocation(line: 184, column: 40, scope: !360)
!370 = !DILocation(line: 184, column: 36, scope: !360)
!371 = !DILocation(line: 184, column: 34, scope: !360)
!372 = !DILocation(line: 184, column: 13, scope: !360)
!373 = !DILocation(line: 185, column: 5, scope: !38)
!374 = !DILocation(line: 187, column: 20, scope: !38)
!375 = !DILocation(line: 187, column: 16, scope: !38)
!376 = !DILocation(line: 187, column: 23, scope: !38)
!377 = !DILocation(line: 187, column: 9, scope: !38)
!378 = !DILocation(line: 188, column: 1, scope: !33)
