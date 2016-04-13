; ModuleID = 'irs-onlybc/mystrtoul.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@_Py_ctype_table = external constant [256 x i32], align 16
@_PyLong_DigitValue = external global [256 x i8], align 16
@digitlimit = internal global [37 x i32] [i32 0, i32 0, i32 64, i32 40, i32 32, i32 27, i32 24, i32 22, i32 21, i32 20, i32 19, i32 18, i32 17, i32 17, i32 16, i32 16, i32 16, i32 15, i32 15, i32 15, i32 14, i32 14, i32 14, i32 14, i32 13, i32 13, i32 13, i32 13, i32 13, i32 13, i32 13, i32 12, i32 12, i32 12, i32 12, i32 12, i32 12], align 16
@smallmax = internal global [37 x i64] [i64 0, i64 0, i64 9223372036854775807, i64 6148914691236517205, i64 4611686018427387903, i64 3689348814741910323, i64 3074457345618258602, i64 2635249153387078802, i64 2305843009213693951, i64 2049638230412172401, i64 1844674407370955161, i64 1676976733973595601, i64 1537228672809129301, i64 1418980313362273201, i64 1317624576693539401, i64 1229782938247303441, i64 1152921504606846975, i64 1085102592571150095, i64 1024819115206086200, i64 970881267037344821, i64 922337203685477580, i64 878416384462359600, i64 838488366986797800, i64 802032351030850070, i64 768614336404564650, i64 737869762948382064, i64 709490156681136600, i64 683212743470724133, i64 658812288346769700, i64 636094623231363848, i64 614891469123651720, i64 595056260442243600, i64 576460752303423487, i64 558992244657865200, i64 542551296285575047, i64 527049830677415760, i64 512409557603043100], align 16

; Function Attrs: nounwind uwtable
define i64 @PyOS_strtoul(i8* %str, i8** %ptr, i32 %base) #0 {
entry:
  %retval = alloca i64, align 8
  %str.addr = alloca i8*, align 8
  %ptr.addr = alloca i8**, align 8
  %base.addr = alloca i32, align 4
  %result = alloca i64, align 8
  %c = alloca i32, align 4
  %ovlimit = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %temp_result = alloca i64, align 8
  store i8* %str, i8** %str.addr, align 8, !tbaa !49
  call void @llvm.dbg.declare(metadata i8** %str.addr, metadata !19, metadata !53), !dbg !54
  store i8** %ptr, i8*** %ptr.addr, align 8, !tbaa !49
  call void @llvm.dbg.declare(metadata i8*** %ptr.addr, metadata !20, metadata !53), !dbg !55
  store i32 %base, i32* %base.addr, align 4, !tbaa !56
  call void @llvm.dbg.declare(metadata i32* %base.addr, metadata !21, metadata !53), !dbg !58
  %0 = bitcast i64* %result to i8*, !dbg !59
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !59
  call void @llvm.dbg.declare(metadata i64* %result, metadata !22, metadata !53), !dbg !60
  store i64 0, i64* %result, align 8, !dbg !60, !tbaa !61
  %1 = bitcast i32* %c to i8*, !dbg !63
  call void @llvm.lifetime.start(i64 4, i8* %1) #2, !dbg !63
  call void @llvm.dbg.declare(metadata i32* %c, metadata !23, metadata !53), !dbg !64
  %2 = bitcast i32* %ovlimit to i8*, !dbg !65
  call void @llvm.lifetime.start(i64 4, i8* %2) #2, !dbg !65
  call void @llvm.dbg.declare(metadata i32* %ovlimit, metadata !24, metadata !53), !dbg !66
  br label %while.cond, !dbg !67

while.cond:                                       ; preds = %while.body, %entry
  %3 = load i8*, i8** %str.addr, align 8, !dbg !68, !tbaa !49
  %4 = load i8, i8* %3, align 1, !dbg !71, !tbaa !72
  %conv = sext i8 %4 to i32, !dbg !71
  %tobool = icmp ne i32 %conv, 0, !dbg !71
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !73

land.rhs:                                         ; preds = %while.cond
  %5 = load i8*, i8** %str.addr, align 8, !dbg !74, !tbaa !49
  %6 = load i8, i8* %5, align 1, !dbg !76, !tbaa !72
  %conv1 = sext i8 %6 to i32, !dbg !77
  %and = and i32 %conv1, 255, !dbg !78
  %conv2 = trunc i32 %and to i8, !dbg !79
  %conv3 = zext i8 %conv2 to i32, !dbg !80
  %and4 = and i32 %conv3, 255, !dbg !81
  %conv5 = trunc i32 %and4 to i8, !dbg !82
  %idxprom = zext i8 %conv5 to i64, !dbg !83
  %arrayidx = getelementptr [256 x i32], [256 x i32]* @_Py_ctype_table, i32 0, i64 %idxprom, !dbg !83
  %7 = load i32, i32* %arrayidx, align 4, !dbg !83, !tbaa !56
  %and6 = and i32 %7, 8, !dbg !84
  %tobool7 = icmp ne i32 %and6, 0, !dbg !73
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %8 = phi i1 [ false, %while.cond ], [ %tobool7, %land.rhs ]
  br i1 %8, label %while.body, label %while.end, !dbg !85

while.body:                                       ; preds = %land.end
  %9 = load i8*, i8** %str.addr, align 8, !dbg !87, !tbaa !49
  %incdec.ptr = getelementptr i8, i8* %9, i32 1, !dbg !87
  store i8* %incdec.ptr, i8** %str.addr, align 8, !dbg !87, !tbaa !49
  br label %while.cond, !dbg !67

while.end:                                        ; preds = %land.end
  %10 = load i32, i32* %base.addr, align 4, !dbg !88, !tbaa !56
  switch i32 %10, label %sw.epilog [
    i32 0, label %sw.bb
    i32 16, label %sw.bb.109
    i32 8, label %sw.bb.140
    i32 2, label %sw.bb.171
  ], !dbg !89

sw.bb:                                            ; preds = %while.end
  %11 = load i8*, i8** %str.addr, align 8, !dbg !90, !tbaa !49
  %12 = load i8, i8* %11, align 1, !dbg !93, !tbaa !72
  %conv8 = sext i8 %12 to i32, !dbg !93
  %cmp = icmp eq i32 %conv8, 48, !dbg !94
  br i1 %cmp, label %if.then, label %if.else.107, !dbg !95

if.then:                                          ; preds = %sw.bb
  %13 = load i8*, i8** %str.addr, align 8, !dbg !96, !tbaa !49
  %incdec.ptr10 = getelementptr i8, i8* %13, i32 1, !dbg !96
  store i8* %incdec.ptr10, i8** %str.addr, align 8, !dbg !96, !tbaa !49
  %14 = load i8*, i8** %str.addr, align 8, !dbg !98, !tbaa !49
  %15 = load i8, i8* %14, align 1, !dbg !100, !tbaa !72
  %conv11 = sext i8 %15 to i32, !dbg !100
  %cmp12 = icmp eq i32 %conv11, 120, !dbg !101
  br i1 %cmp12, label %if.then.17, label %lor.lhs.false, !dbg !102

lor.lhs.false:                                    ; preds = %if.then
  %16 = load i8*, i8** %str.addr, align 8, !dbg !103, !tbaa !49
  %17 = load i8, i8* %16, align 1, !dbg !105, !tbaa !72
  %conv14 = sext i8 %17 to i32, !dbg !105
  %cmp15 = icmp eq i32 %conv14, 88, !dbg !106
  br i1 %cmp15, label %if.then.17, label %if.else, !dbg !107

if.then.17:                                       ; preds = %lor.lhs.false, %if.then
  %18 = load i8*, i8** %str.addr, align 8, !dbg !108, !tbaa !49
  %arrayidx18 = getelementptr i8, i8* %18, i64 1, !dbg !108
  %19 = load i8, i8* %arrayidx18, align 1, !dbg !108, !tbaa !72
  %conv19 = sext i8 %19 to i32, !dbg !111
  %and20 = and i32 %conv19, 255, !dbg !112
  %conv21 = trunc i32 %and20 to i8, !dbg !113
  %idxprom22 = zext i8 %conv21 to i64, !dbg !114
  %arrayidx23 = getelementptr [256 x i8], [256 x i8]* @_PyLong_DigitValue, i32 0, i64 %idxprom22, !dbg !114
  %20 = load i8, i8* %arrayidx23, align 1, !dbg !114, !tbaa !72
  %conv24 = zext i8 %20 to i32, !dbg !114
  %cmp25 = icmp sge i32 %conv24, 16, !dbg !115
  br i1 %cmp25, label %if.then.27, label %if.end.30, !dbg !116

if.then.27:                                       ; preds = %if.then.17
  %21 = load i8**, i8*** %ptr.addr, align 8, !dbg !117, !tbaa !49
  %tobool28 = icmp ne i8** %21, null, !dbg !117
  br i1 %tobool28, label %if.then.29, label %if.end, !dbg !120

if.then.29:                                       ; preds = %if.then.27
  %22 = load i8*, i8** %str.addr, align 8, !dbg !121, !tbaa !49
  %23 = load i8**, i8*** %ptr.addr, align 8, !dbg !122, !tbaa !49
  store i8* %22, i8** %23, align 8, !dbg !123, !tbaa !49
  br label %if.end, !dbg !124

if.end:                                           ; preds = %if.then.29, %if.then.27
  store i64 0, i64* %retval, !dbg !125
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.276, !dbg !125

if.end.30:                                        ; preds = %if.then.17
  %24 = load i8*, i8** %str.addr, align 8, !dbg !126, !tbaa !49
  %incdec.ptr31 = getelementptr i8, i8* %24, i32 1, !dbg !126
  store i8* %incdec.ptr31, i8** %str.addr, align 8, !dbg !126, !tbaa !49
  store i32 16, i32* %base.addr, align 4, !dbg !127, !tbaa !56
  br label %if.end.106, !dbg !128

if.else:                                          ; preds = %lor.lhs.false
  %25 = load i8*, i8** %str.addr, align 8, !dbg !129, !tbaa !49
  %26 = load i8, i8* %25, align 1, !dbg !131, !tbaa !72
  %conv32 = sext i8 %26 to i32, !dbg !131
  %cmp33 = icmp eq i32 %conv32, 111, !dbg !132
  br i1 %cmp33, label %if.then.39, label %lor.lhs.false.35, !dbg !133

lor.lhs.false.35:                                 ; preds = %if.else
  %27 = load i8*, i8** %str.addr, align 8, !dbg !134, !tbaa !49
  %28 = load i8, i8* %27, align 1, !dbg !136, !tbaa !72
  %conv36 = sext i8 %28 to i32, !dbg !136
  %cmp37 = icmp eq i32 %conv36, 79, !dbg !137
  br i1 %cmp37, label %if.then.39, label %if.else.55, !dbg !138

if.then.39:                                       ; preds = %lor.lhs.false.35, %if.else
  %29 = load i8*, i8** %str.addr, align 8, !dbg !139, !tbaa !49
  %arrayidx40 = getelementptr i8, i8* %29, i64 1, !dbg !139
  %30 = load i8, i8* %arrayidx40, align 1, !dbg !139, !tbaa !72
  %conv41 = sext i8 %30 to i32, !dbg !142
  %and42 = and i32 %conv41, 255, !dbg !143
  %conv43 = trunc i32 %and42 to i8, !dbg !144
  %idxprom44 = zext i8 %conv43 to i64, !dbg !145
  %arrayidx45 = getelementptr [256 x i8], [256 x i8]* @_PyLong_DigitValue, i32 0, i64 %idxprom44, !dbg !145
  %31 = load i8, i8* %arrayidx45, align 1, !dbg !145, !tbaa !72
  %conv46 = zext i8 %31 to i32, !dbg !145
  %cmp47 = icmp sge i32 %conv46, 8, !dbg !146
  br i1 %cmp47, label %if.then.49, label %if.end.53, !dbg !147

if.then.49:                                       ; preds = %if.then.39
  %32 = load i8**, i8*** %ptr.addr, align 8, !dbg !148, !tbaa !49
  %tobool50 = icmp ne i8** %32, null, !dbg !148
  br i1 %tobool50, label %if.then.51, label %if.end.52, !dbg !151

if.then.51:                                       ; preds = %if.then.49
  %33 = load i8*, i8** %str.addr, align 8, !dbg !152, !tbaa !49
  %34 = load i8**, i8*** %ptr.addr, align 8, !dbg !153, !tbaa !49
  store i8* %33, i8** %34, align 8, !dbg !154, !tbaa !49
  br label %if.end.52, !dbg !155

if.end.52:                                        ; preds = %if.then.51, %if.then.49
  store i64 0, i64* %retval, !dbg !156
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.276, !dbg !156

if.end.53:                                        ; preds = %if.then.39
  %35 = load i8*, i8** %str.addr, align 8, !dbg !157, !tbaa !49
  %incdec.ptr54 = getelementptr i8, i8* %35, i32 1, !dbg !157
  store i8* %incdec.ptr54, i8** %str.addr, align 8, !dbg !157, !tbaa !49
  store i32 8, i32* %base.addr, align 4, !dbg !158, !tbaa !56
  br label %if.end.105, !dbg !159

if.else.55:                                       ; preds = %lor.lhs.false.35
  %36 = load i8*, i8** %str.addr, align 8, !dbg !160, !tbaa !49
  %37 = load i8, i8* %36, align 1, !dbg !162, !tbaa !72
  %conv56 = sext i8 %37 to i32, !dbg !162
  %cmp57 = icmp eq i32 %conv56, 98, !dbg !163
  br i1 %cmp57, label %if.then.63, label %lor.lhs.false.59, !dbg !164

lor.lhs.false.59:                                 ; preds = %if.else.55
  %38 = load i8*, i8** %str.addr, align 8, !dbg !165, !tbaa !49
  %39 = load i8, i8* %38, align 1, !dbg !167, !tbaa !72
  %conv60 = sext i8 %39 to i32, !dbg !167
  %cmp61 = icmp eq i32 %conv60, 66, !dbg !168
  br i1 %cmp61, label %if.then.63, label %if.else.79, !dbg !169

if.then.63:                                       ; preds = %lor.lhs.false.59, %if.else.55
  %40 = load i8*, i8** %str.addr, align 8, !dbg !170, !tbaa !49
  %arrayidx64 = getelementptr i8, i8* %40, i64 1, !dbg !170
  %41 = load i8, i8* %arrayidx64, align 1, !dbg !170, !tbaa !72
  %conv65 = sext i8 %41 to i32, !dbg !173
  %and66 = and i32 %conv65, 255, !dbg !174
  %conv67 = trunc i32 %and66 to i8, !dbg !175
  %idxprom68 = zext i8 %conv67 to i64, !dbg !176
  %arrayidx69 = getelementptr [256 x i8], [256 x i8]* @_PyLong_DigitValue, i32 0, i64 %idxprom68, !dbg !176
  %42 = load i8, i8* %arrayidx69, align 1, !dbg !176, !tbaa !72
  %conv70 = zext i8 %42 to i32, !dbg !176
  %cmp71 = icmp sge i32 %conv70, 2, !dbg !177
  br i1 %cmp71, label %if.then.73, label %if.end.77, !dbg !178

if.then.73:                                       ; preds = %if.then.63
  %43 = load i8**, i8*** %ptr.addr, align 8, !dbg !179, !tbaa !49
  %tobool74 = icmp ne i8** %43, null, !dbg !179
  br i1 %tobool74, label %if.then.75, label %if.end.76, !dbg !182

if.then.75:                                       ; preds = %if.then.73
  %44 = load i8*, i8** %str.addr, align 8, !dbg !183, !tbaa !49
  %45 = load i8**, i8*** %ptr.addr, align 8, !dbg !184, !tbaa !49
  store i8* %44, i8** %45, align 8, !dbg !185, !tbaa !49
  br label %if.end.76, !dbg !186

if.end.76:                                        ; preds = %if.then.75, %if.then.73
  store i64 0, i64* %retval, !dbg !187
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.276, !dbg !187

if.end.77:                                        ; preds = %if.then.63
  %46 = load i8*, i8** %str.addr, align 8, !dbg !188, !tbaa !49
  %incdec.ptr78 = getelementptr i8, i8* %46, i32 1, !dbg !188
  store i8* %incdec.ptr78, i8** %str.addr, align 8, !dbg !188, !tbaa !49
  store i32 2, i32* %base.addr, align 4, !dbg !189, !tbaa !56
  br label %if.end.104, !dbg !190

if.else.79:                                       ; preds = %lor.lhs.false.59
  br label %while.cond.80, !dbg !191

while.cond.80:                                    ; preds = %while.body.84, %if.else.79
  %47 = load i8*, i8** %str.addr, align 8, !dbg !193, !tbaa !49
  %48 = load i8, i8* %47, align 1, !dbg !196, !tbaa !72
  %conv81 = sext i8 %48 to i32, !dbg !196
  %cmp82 = icmp eq i32 %conv81, 48, !dbg !197
  br i1 %cmp82, label %while.body.84, label %while.end.86, !dbg !191

while.body.84:                                    ; preds = %while.cond.80
  %49 = load i8*, i8** %str.addr, align 8, !dbg !198, !tbaa !49
  %incdec.ptr85 = getelementptr i8, i8* %49, i32 1, !dbg !198
  store i8* %incdec.ptr85, i8** %str.addr, align 8, !dbg !198, !tbaa !49
  br label %while.cond.80, !dbg !191

while.end.86:                                     ; preds = %while.cond.80
  br label %while.cond.87, !dbg !199

while.cond.87:                                    ; preds = %while.body.98, %while.end.86
  %50 = load i8*, i8** %str.addr, align 8, !dbg !200, !tbaa !49
  %51 = load i8, i8* %50, align 1, !dbg !201, !tbaa !72
  %conv88 = sext i8 %51 to i32, !dbg !202
  %and89 = and i32 %conv88, 255, !dbg !203
  %conv90 = trunc i32 %and89 to i8, !dbg !204
  %conv91 = zext i8 %conv90 to i32, !dbg !205
  %and92 = and i32 %conv91, 255, !dbg !206
  %conv93 = trunc i32 %and92 to i8, !dbg !207
  %idxprom94 = zext i8 %conv93 to i64, !dbg !208
  %arrayidx95 = getelementptr [256 x i32], [256 x i32]* @_Py_ctype_table, i32 0, i64 %idxprom94, !dbg !208
  %52 = load i32, i32* %arrayidx95, align 4, !dbg !208, !tbaa !56
  %and96 = and i32 %52, 8, !dbg !209
  %tobool97 = icmp ne i32 %and96, 0, !dbg !199
  br i1 %tobool97, label %while.body.98, label %while.end.100, !dbg !199

while.body.98:                                    ; preds = %while.cond.87
  %53 = load i8*, i8** %str.addr, align 8, !dbg !210, !tbaa !49
  %incdec.ptr99 = getelementptr i8, i8* %53, i32 1, !dbg !210
  store i8* %incdec.ptr99, i8** %str.addr, align 8, !dbg !210, !tbaa !49
  br label %while.cond.87, !dbg !199

while.end.100:                                    ; preds = %while.cond.87
  %54 = load i8**, i8*** %ptr.addr, align 8, !dbg !211, !tbaa !49
  %tobool101 = icmp ne i8** %54, null, !dbg !211
  br i1 %tobool101, label %if.then.102, label %if.end.103, !dbg !213

if.then.102:                                      ; preds = %while.end.100
  %55 = load i8*, i8** %str.addr, align 8, !dbg !214, !tbaa !49
  %56 = load i8**, i8*** %ptr.addr, align 8, !dbg !215, !tbaa !49
  store i8* %55, i8** %56, align 8, !dbg !216, !tbaa !49
  br label %if.end.103, !dbg !217

if.end.103:                                       ; preds = %if.then.102, %while.end.100
  store i64 0, i64* %retval, !dbg !218
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.276, !dbg !218

if.end.104:                                       ; preds = %if.end.77
  br label %if.end.105

if.end.105:                                       ; preds = %if.end.104, %if.end.53
  br label %if.end.106

if.end.106:                                       ; preds = %if.end.105, %if.end.30
  br label %if.end.108, !dbg !219

if.else.107:                                      ; preds = %sw.bb
  store i32 10, i32* %base.addr, align 4, !dbg !220, !tbaa !56
  br label %if.end.108

if.end.108:                                       ; preds = %if.else.107, %if.end.106
  br label %sw.epilog, !dbg !221

sw.bb.109:                                        ; preds = %while.end
  %57 = load i8*, i8** %str.addr, align 8, !dbg !222, !tbaa !49
  %58 = load i8, i8* %57, align 1, !dbg !224, !tbaa !72
  %conv110 = sext i8 %58 to i32, !dbg !224
  %cmp111 = icmp eq i32 %conv110, 48, !dbg !225
  br i1 %cmp111, label %if.then.113, label %if.end.139, !dbg !226

if.then.113:                                      ; preds = %sw.bb.109
  %59 = load i8*, i8** %str.addr, align 8, !dbg !227, !tbaa !49
  %incdec.ptr114 = getelementptr i8, i8* %59, i32 1, !dbg !227
  store i8* %incdec.ptr114, i8** %str.addr, align 8, !dbg !227, !tbaa !49
  %60 = load i8*, i8** %str.addr, align 8, !dbg !229, !tbaa !49
  %61 = load i8, i8* %60, align 1, !dbg !231, !tbaa !72
  %conv115 = sext i8 %61 to i32, !dbg !231
  %cmp116 = icmp eq i32 %conv115, 120, !dbg !232
  br i1 %cmp116, label %if.then.122, label %lor.lhs.false.118, !dbg !233

lor.lhs.false.118:                                ; preds = %if.then.113
  %62 = load i8*, i8** %str.addr, align 8, !dbg !234, !tbaa !49
  %63 = load i8, i8* %62, align 1, !dbg !236, !tbaa !72
  %conv119 = sext i8 %63 to i32, !dbg !236
  %cmp120 = icmp eq i32 %conv119, 88, !dbg !237
  br i1 %cmp120, label %if.then.122, label %if.end.138, !dbg !238

if.then.122:                                      ; preds = %lor.lhs.false.118, %if.then.113
  %64 = load i8*, i8** %str.addr, align 8, !dbg !239, !tbaa !49
  %arrayidx123 = getelementptr i8, i8* %64, i64 1, !dbg !239
  %65 = load i8, i8* %arrayidx123, align 1, !dbg !239, !tbaa !72
  %conv124 = sext i8 %65 to i32, !dbg !242
  %and125 = and i32 %conv124, 255, !dbg !243
  %conv126 = trunc i32 %and125 to i8, !dbg !244
  %idxprom127 = zext i8 %conv126 to i64, !dbg !245
  %arrayidx128 = getelementptr [256 x i8], [256 x i8]* @_PyLong_DigitValue, i32 0, i64 %idxprom127, !dbg !245
  %66 = load i8, i8* %arrayidx128, align 1, !dbg !245, !tbaa !72
  %conv129 = zext i8 %66 to i32, !dbg !245
  %cmp130 = icmp sge i32 %conv129, 16, !dbg !246
  br i1 %cmp130, label %if.then.132, label %if.end.136, !dbg !247

if.then.132:                                      ; preds = %if.then.122
  %67 = load i8**, i8*** %ptr.addr, align 8, !dbg !248, !tbaa !49
  %tobool133 = icmp ne i8** %67, null, !dbg !248
  br i1 %tobool133, label %if.then.134, label %if.end.135, !dbg !251

if.then.134:                                      ; preds = %if.then.132
  %68 = load i8*, i8** %str.addr, align 8, !dbg !252, !tbaa !49
  %69 = load i8**, i8*** %ptr.addr, align 8, !dbg !253, !tbaa !49
  store i8* %68, i8** %69, align 8, !dbg !254, !tbaa !49
  br label %if.end.135, !dbg !255

if.end.135:                                       ; preds = %if.then.134, %if.then.132
  store i64 0, i64* %retval, !dbg !256
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.276, !dbg !256

if.end.136:                                       ; preds = %if.then.122
  %70 = load i8*, i8** %str.addr, align 8, !dbg !257, !tbaa !49
  %incdec.ptr137 = getelementptr i8, i8* %70, i32 1, !dbg !257
  store i8* %incdec.ptr137, i8** %str.addr, align 8, !dbg !257, !tbaa !49
  br label %if.end.138, !dbg !258

if.end.138:                                       ; preds = %if.end.136, %lor.lhs.false.118
  br label %if.end.139, !dbg !259

if.end.139:                                       ; preds = %if.end.138, %sw.bb.109
  br label %sw.epilog, !dbg !260

sw.bb.140:                                        ; preds = %while.end
  %71 = load i8*, i8** %str.addr, align 8, !dbg !261, !tbaa !49
  %72 = load i8, i8* %71, align 1, !dbg !263, !tbaa !72
  %conv141 = sext i8 %72 to i32, !dbg !263
  %cmp142 = icmp eq i32 %conv141, 48, !dbg !264
  br i1 %cmp142, label %if.then.144, label %if.end.170, !dbg !265

if.then.144:                                      ; preds = %sw.bb.140
  %73 = load i8*, i8** %str.addr, align 8, !dbg !266, !tbaa !49
  %incdec.ptr145 = getelementptr i8, i8* %73, i32 1, !dbg !266
  store i8* %incdec.ptr145, i8** %str.addr, align 8, !dbg !266, !tbaa !49
  %74 = load i8*, i8** %str.addr, align 8, !dbg !268, !tbaa !49
  %75 = load i8, i8* %74, align 1, !dbg !270, !tbaa !72
  %conv146 = sext i8 %75 to i32, !dbg !270
  %cmp147 = icmp eq i32 %conv146, 111, !dbg !271
  br i1 %cmp147, label %if.then.153, label %lor.lhs.false.149, !dbg !272

lor.lhs.false.149:                                ; preds = %if.then.144
  %76 = load i8*, i8** %str.addr, align 8, !dbg !273, !tbaa !49
  %77 = load i8, i8* %76, align 1, !dbg !275, !tbaa !72
  %conv150 = sext i8 %77 to i32, !dbg !275
  %cmp151 = icmp eq i32 %conv150, 79, !dbg !276
  br i1 %cmp151, label %if.then.153, label %if.end.169, !dbg !277

if.then.153:                                      ; preds = %lor.lhs.false.149, %if.then.144
  %78 = load i8*, i8** %str.addr, align 8, !dbg !278, !tbaa !49
  %arrayidx154 = getelementptr i8, i8* %78, i64 1, !dbg !278
  %79 = load i8, i8* %arrayidx154, align 1, !dbg !278, !tbaa !72
  %conv155 = sext i8 %79 to i32, !dbg !281
  %and156 = and i32 %conv155, 255, !dbg !282
  %conv157 = trunc i32 %and156 to i8, !dbg !283
  %idxprom158 = zext i8 %conv157 to i64, !dbg !284
  %arrayidx159 = getelementptr [256 x i8], [256 x i8]* @_PyLong_DigitValue, i32 0, i64 %idxprom158, !dbg !284
  %80 = load i8, i8* %arrayidx159, align 1, !dbg !284, !tbaa !72
  %conv160 = zext i8 %80 to i32, !dbg !284
  %cmp161 = icmp sge i32 %conv160, 8, !dbg !285
  br i1 %cmp161, label %if.then.163, label %if.end.167, !dbg !286

if.then.163:                                      ; preds = %if.then.153
  %81 = load i8**, i8*** %ptr.addr, align 8, !dbg !287, !tbaa !49
  %tobool164 = icmp ne i8** %81, null, !dbg !287
  br i1 %tobool164, label %if.then.165, label %if.end.166, !dbg !290

if.then.165:                                      ; preds = %if.then.163
  %82 = load i8*, i8** %str.addr, align 8, !dbg !291, !tbaa !49
  %83 = load i8**, i8*** %ptr.addr, align 8, !dbg !292, !tbaa !49
  store i8* %82, i8** %83, align 8, !dbg !293, !tbaa !49
  br label %if.end.166, !dbg !294

if.end.166:                                       ; preds = %if.then.165, %if.then.163
  store i64 0, i64* %retval, !dbg !295
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.276, !dbg !295

if.end.167:                                       ; preds = %if.then.153
  %84 = load i8*, i8** %str.addr, align 8, !dbg !296, !tbaa !49
  %incdec.ptr168 = getelementptr i8, i8* %84, i32 1, !dbg !296
  store i8* %incdec.ptr168, i8** %str.addr, align 8, !dbg !296, !tbaa !49
  br label %if.end.169, !dbg !297

if.end.169:                                       ; preds = %if.end.167, %lor.lhs.false.149
  br label %if.end.170, !dbg !298

if.end.170:                                       ; preds = %if.end.169, %sw.bb.140
  br label %sw.epilog, !dbg !299

sw.bb.171:                                        ; preds = %while.end
  %85 = load i8*, i8** %str.addr, align 8, !dbg !300, !tbaa !49
  %86 = load i8, i8* %85, align 1, !dbg !302, !tbaa !72
  %conv172 = sext i8 %86 to i32, !dbg !302
  %cmp173 = icmp eq i32 %conv172, 48, !dbg !303
  br i1 %cmp173, label %if.then.175, label %if.end.201, !dbg !304

if.then.175:                                      ; preds = %sw.bb.171
  %87 = load i8*, i8** %str.addr, align 8, !dbg !305, !tbaa !49
  %incdec.ptr176 = getelementptr i8, i8* %87, i32 1, !dbg !305
  store i8* %incdec.ptr176, i8** %str.addr, align 8, !dbg !305, !tbaa !49
  %88 = load i8*, i8** %str.addr, align 8, !dbg !307, !tbaa !49
  %89 = load i8, i8* %88, align 1, !dbg !309, !tbaa !72
  %conv177 = sext i8 %89 to i32, !dbg !309
  %cmp178 = icmp eq i32 %conv177, 98, !dbg !310
  br i1 %cmp178, label %if.then.184, label %lor.lhs.false.180, !dbg !311

lor.lhs.false.180:                                ; preds = %if.then.175
  %90 = load i8*, i8** %str.addr, align 8, !dbg !312, !tbaa !49
  %91 = load i8, i8* %90, align 1, !dbg !314, !tbaa !72
  %conv181 = sext i8 %91 to i32, !dbg !314
  %cmp182 = icmp eq i32 %conv181, 66, !dbg !315
  br i1 %cmp182, label %if.then.184, label %if.end.200, !dbg !316

if.then.184:                                      ; preds = %lor.lhs.false.180, %if.then.175
  %92 = load i8*, i8** %str.addr, align 8, !dbg !317, !tbaa !49
  %arrayidx185 = getelementptr i8, i8* %92, i64 1, !dbg !317
  %93 = load i8, i8* %arrayidx185, align 1, !dbg !317, !tbaa !72
  %conv186 = sext i8 %93 to i32, !dbg !320
  %and187 = and i32 %conv186, 255, !dbg !321
  %conv188 = trunc i32 %and187 to i8, !dbg !322
  %idxprom189 = zext i8 %conv188 to i64, !dbg !323
  %arrayidx190 = getelementptr [256 x i8], [256 x i8]* @_PyLong_DigitValue, i32 0, i64 %idxprom189, !dbg !323
  %94 = load i8, i8* %arrayidx190, align 1, !dbg !323, !tbaa !72
  %conv191 = zext i8 %94 to i32, !dbg !323
  %cmp192 = icmp sge i32 %conv191, 2, !dbg !324
  br i1 %cmp192, label %if.then.194, label %if.end.198, !dbg !325

if.then.194:                                      ; preds = %if.then.184
  %95 = load i8**, i8*** %ptr.addr, align 8, !dbg !326, !tbaa !49
  %tobool195 = icmp ne i8** %95, null, !dbg !326
  br i1 %tobool195, label %if.then.196, label %if.end.197, !dbg !329

if.then.196:                                      ; preds = %if.then.194
  %96 = load i8*, i8** %str.addr, align 8, !dbg !330, !tbaa !49
  %97 = load i8**, i8*** %ptr.addr, align 8, !dbg !331, !tbaa !49
  store i8* %96, i8** %97, align 8, !dbg !332, !tbaa !49
  br label %if.end.197, !dbg !333

if.end.197:                                       ; preds = %if.then.196, %if.then.194
  store i64 0, i64* %retval, !dbg !334
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.276, !dbg !334

if.end.198:                                       ; preds = %if.then.184
  %98 = load i8*, i8** %str.addr, align 8, !dbg !335, !tbaa !49
  %incdec.ptr199 = getelementptr i8, i8* %98, i32 1, !dbg !335
  store i8* %incdec.ptr199, i8** %str.addr, align 8, !dbg !335, !tbaa !49
  br label %if.end.200, !dbg !336

if.end.200:                                       ; preds = %if.end.198, %lor.lhs.false.180
  br label %if.end.201, !dbg !337

if.end.201:                                       ; preds = %if.end.200, %sw.bb.171
  br label %sw.epilog, !dbg !338

sw.epilog:                                        ; preds = %while.end, %if.end.201, %if.end.170, %if.end.139, %if.end.108
  %99 = load i32, i32* %base.addr, align 4, !dbg !339, !tbaa !56
  %cmp202 = icmp slt i32 %99, 2, !dbg !341
  br i1 %cmp202, label %if.then.207, label %lor.lhs.false.204, !dbg !342

lor.lhs.false.204:                                ; preds = %sw.epilog
  %100 = load i32, i32* %base.addr, align 4, !dbg !343, !tbaa !56
  %cmp205 = icmp sgt i32 %100, 36, !dbg !345
  br i1 %cmp205, label %if.then.207, label %if.end.211, !dbg !346

if.then.207:                                      ; preds = %lor.lhs.false.204, %sw.epilog
  %101 = load i8**, i8*** %ptr.addr, align 8, !dbg !347, !tbaa !49
  %tobool208 = icmp ne i8** %101, null, !dbg !347
  br i1 %tobool208, label %if.then.209, label %if.end.210, !dbg !350

if.then.209:                                      ; preds = %if.then.207
  %102 = load i8*, i8** %str.addr, align 8, !dbg !351, !tbaa !49
  %103 = load i8**, i8*** %ptr.addr, align 8, !dbg !352, !tbaa !49
  store i8* %102, i8** %103, align 8, !dbg !353, !tbaa !49
  br label %if.end.210, !dbg !354

if.end.210:                                       ; preds = %if.then.209, %if.then.207
  store i64 0, i64* %retval, !dbg !355
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.276, !dbg !355

if.end.211:                                       ; preds = %lor.lhs.false.204
  br label %while.cond.212, !dbg !356

while.cond.212:                                   ; preds = %while.body.216, %if.end.211
  %104 = load i8*, i8** %str.addr, align 8, !dbg !357, !tbaa !49
  %105 = load i8, i8* %104, align 1, !dbg !359, !tbaa !72
  %conv213 = sext i8 %105 to i32, !dbg !359
  %cmp214 = icmp eq i32 %conv213, 48, !dbg !360
  br i1 %cmp214, label %while.body.216, label %while.end.218, !dbg !356

while.body.216:                                   ; preds = %while.cond.212
  %106 = load i8*, i8** %str.addr, align 8, !dbg !361, !tbaa !49
  %incdec.ptr217 = getelementptr i8, i8* %106, i32 1, !dbg !361
  store i8* %incdec.ptr217, i8** %str.addr, align 8, !dbg !361, !tbaa !49
  br label %while.cond.212, !dbg !356

while.end.218:                                    ; preds = %while.cond.212
  %107 = load i32, i32* %base.addr, align 4, !dbg !362, !tbaa !56
  %idxprom219 = sext i32 %107 to i64, !dbg !363
  %arrayidx220 = getelementptr [37 x i32], [37 x i32]* @digitlimit, i32 0, i64 %idxprom219, !dbg !363
  %108 = load i32, i32* %arrayidx220, align 4, !dbg !363, !tbaa !56
  store i32 %108, i32* %ovlimit, align 4, !dbg !364, !tbaa !56
  br label %while.cond.221, !dbg !365

while.cond.221:                                   ; preds = %if.end.255, %while.end.218
  %109 = load i8*, i8** %str.addr, align 8, !dbg !366, !tbaa !49
  %110 = load i8, i8* %109, align 1, !dbg !367, !tbaa !72
  %conv222 = sext i8 %110 to i32, !dbg !368
  %and223 = and i32 %conv222, 255, !dbg !369
  %conv224 = trunc i32 %and223 to i8, !dbg !370
  %idxprom225 = zext i8 %conv224 to i64, !dbg !371
  %arrayidx226 = getelementptr [256 x i8], [256 x i8]* @_PyLong_DigitValue, i32 0, i64 %idxprom225, !dbg !371
  %111 = load i8, i8* %arrayidx226, align 1, !dbg !371, !tbaa !72
  %conv227 = zext i8 %111 to i32, !dbg !371
  store i32 %conv227, i32* %c, align 4, !dbg !372, !tbaa !56
  %112 = load i32, i32* %base.addr, align 4, !dbg !373, !tbaa !56
  %cmp228 = icmp slt i32 %conv227, %112, !dbg !374
  br i1 %cmp228, label %while.body.230, label %while.end.257, !dbg !365

while.body.230:                                   ; preds = %while.cond.221
  %113 = load i32, i32* %ovlimit, align 4, !dbg !375, !tbaa !56
  %cmp231 = icmp sgt i32 %113, 0, !dbg !376
  br i1 %cmp231, label %if.then.233, label %if.else.236, !dbg !377

if.then.233:                                      ; preds = %while.body.230
  %114 = load i64, i64* %result, align 8, !dbg !378, !tbaa !61
  %115 = load i32, i32* %base.addr, align 4, !dbg !379, !tbaa !56
  %conv234 = sext i32 %115 to i64, !dbg !379
  %mul = mul i64 %114, %conv234, !dbg !380
  %116 = load i32, i32* %c, align 4, !dbg !381, !tbaa !56
  %conv235 = sext i32 %116 to i64, !dbg !381
  %add = add i64 %mul, %conv235, !dbg !382
  store i64 %add, i64* %result, align 8, !dbg !383, !tbaa !61
  br label %if.end.255, !dbg !384

if.else.236:                                      ; preds = %while.body.230
  %117 = bitcast i64* %temp_result to i8*, !dbg !385
  call void @llvm.lifetime.start(i64 8, i8* %117) #2, !dbg !385
  call void @llvm.dbg.declare(metadata i64* %temp_result, metadata !25, metadata !53), !dbg !386
  %118 = load i32, i32* %ovlimit, align 4, !dbg !387, !tbaa !56
  %cmp237 = icmp slt i32 %118, 0, !dbg !389
  br i1 %cmp237, label %if.then.239, label %if.end.240, !dbg !390

if.then.239:                                      ; preds = %if.else.236
  store i32 13, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !391

if.end.240:                                       ; preds = %if.else.236
  %119 = load i64, i64* %result, align 8, !dbg !392, !tbaa !61
  %120 = load i32, i32* %base.addr, align 4, !dbg !394, !tbaa !56
  %idxprom241 = sext i32 %120 to i64, !dbg !395
  %arrayidx242 = getelementptr [37 x i64], [37 x i64]* @smallmax, i32 0, i64 %idxprom241, !dbg !395
  %121 = load i64, i64* %arrayidx242, align 8, !dbg !395, !tbaa !61
  %cmp243 = icmp ugt i64 %119, %121, !dbg !396
  br i1 %cmp243, label %if.then.245, label %if.end.246, !dbg !397

if.then.245:                                      ; preds = %if.end.240
  store i32 13, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !398

if.end.246:                                       ; preds = %if.end.240
  %122 = load i32, i32* %base.addr, align 4, !dbg !399, !tbaa !56
  %conv247 = sext i32 %122 to i64, !dbg !399
  %123 = load i64, i64* %result, align 8, !dbg !400, !tbaa !61
  %mul248 = mul i64 %123, %conv247, !dbg !400
  store i64 %mul248, i64* %result, align 8, !dbg !400, !tbaa !61
  %124 = load i64, i64* %result, align 8, !dbg !401, !tbaa !61
  %125 = load i32, i32* %c, align 4, !dbg !402, !tbaa !56
  %conv249 = sext i32 %125 to i64, !dbg !402
  %add250 = add i64 %124, %conv249, !dbg !403
  store i64 %add250, i64* %temp_result, align 8, !dbg !404, !tbaa !61
  %126 = load i64, i64* %temp_result, align 8, !dbg !405, !tbaa !61
  %127 = load i64, i64* %result, align 8, !dbg !407, !tbaa !61
  %cmp251 = icmp ult i64 %126, %127, !dbg !408
  br i1 %cmp251, label %if.then.253, label %if.end.254, !dbg !409

if.then.253:                                      ; preds = %if.end.246
  store i32 13, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !410

if.end.254:                                       ; preds = %if.end.246
  %128 = load i64, i64* %temp_result, align 8, !dbg !411, !tbaa !61
  store i64 %128, i64* %result, align 8, !dbg !412, !tbaa !61
  store i32 0, i32* %cleanup.dest.slot, !dbg !413
  br label %cleanup, !dbg !413

cleanup:                                          ; preds = %if.then.253, %if.then.245, %if.then.239, %if.end.254
  %129 = bitcast i64* %temp_result to i8*, !dbg !414
  call void @llvm.lifetime.end(i64 8, i8* %129) #2, !dbg !414
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.276 [
    i32 0, label %cleanup.cont
    i32 13, label %overflowed
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.255

if.end.255:                                       ; preds = %cleanup.cont, %if.then.233
  %130 = load i8*, i8** %str.addr, align 8, !dbg !416, !tbaa !49
  %incdec.ptr256 = getelementptr i8, i8* %130, i32 1, !dbg !416
  store i8* %incdec.ptr256, i8** %str.addr, align 8, !dbg !416, !tbaa !49
  %131 = load i32, i32* %ovlimit, align 4, !dbg !417, !tbaa !56
  %dec = add i32 %131, -1, !dbg !417
  store i32 %dec, i32* %ovlimit, align 4, !dbg !417, !tbaa !56
  br label %while.cond.221, !dbg !365

while.end.257:                                    ; preds = %while.cond.221
  %132 = load i8**, i8*** %ptr.addr, align 8, !dbg !418, !tbaa !49
  %tobool258 = icmp ne i8** %132, null, !dbg !418
  br i1 %tobool258, label %if.then.259, label %if.end.260, !dbg !420

if.then.259:                                      ; preds = %while.end.257
  %133 = load i8*, i8** %str.addr, align 8, !dbg !421, !tbaa !49
  %134 = load i8**, i8*** %ptr.addr, align 8, !dbg !422, !tbaa !49
  store i8* %133, i8** %134, align 8, !dbg !423, !tbaa !49
  br label %if.end.260, !dbg !424

if.end.260:                                       ; preds = %if.then.259, %while.end.257
  %135 = load i64, i64* %result, align 8, !dbg !425, !tbaa !61
  store i64 %135, i64* %retval, !dbg !426
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.276, !dbg !426

overflowed:                                       ; preds = %cleanup
  %136 = load i8**, i8*** %ptr.addr, align 8, !dbg !427, !tbaa !49
  %tobool261 = icmp ne i8** %136, null, !dbg !427
  br i1 %tobool261, label %if.then.262, label %if.end.275, !dbg !429

if.then.262:                                      ; preds = %overflowed
  br label %while.cond.263, !dbg !430

while.cond.263:                                   ; preds = %while.body.272, %if.then.262
  %137 = load i8*, i8** %str.addr, align 8, !dbg !432, !tbaa !49
  %138 = load i8, i8* %137, align 1, !dbg !435, !tbaa !72
  %conv264 = sext i8 %138 to i32, !dbg !436
  %and265 = and i32 %conv264, 255, !dbg !437
  %conv266 = trunc i32 %and265 to i8, !dbg !438
  %idxprom267 = zext i8 %conv266 to i64, !dbg !439
  %arrayidx268 = getelementptr [256 x i8], [256 x i8]* @_PyLong_DigitValue, i32 0, i64 %idxprom267, !dbg !439
  %139 = load i8, i8* %arrayidx268, align 1, !dbg !439, !tbaa !72
  %conv269 = zext i8 %139 to i32, !dbg !439
  %140 = load i32, i32* %base.addr, align 4, !dbg !440, !tbaa !56
  %cmp270 = icmp slt i32 %conv269, %140, !dbg !441
  br i1 %cmp270, label %while.body.272, label %while.end.274, !dbg !430

while.body.272:                                   ; preds = %while.cond.263
  %141 = load i8*, i8** %str.addr, align 8, !dbg !442, !tbaa !49
  %incdec.ptr273 = getelementptr i8, i8* %141, i32 1, !dbg !442
  store i8* %incdec.ptr273, i8** %str.addr, align 8, !dbg !442, !tbaa !49
  br label %while.cond.263, !dbg !430

while.end.274:                                    ; preds = %while.cond.263
  %142 = load i8*, i8** %str.addr, align 8, !dbg !443, !tbaa !49
  %143 = load i8**, i8*** %ptr.addr, align 8, !dbg !444, !tbaa !49
  store i8* %142, i8** %143, align 8, !dbg !445, !tbaa !49
  br label %if.end.275, !dbg !446

if.end.275:                                       ; preds = %while.end.274, %overflowed
  %call = call i32* @__errno_location() #1, !dbg !447
  store i32 34, i32* %call, align 4, !dbg !448, !tbaa !56
  store i64 -1, i64* %retval, !dbg !449
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.276, !dbg !449

cleanup.276:                                      ; preds = %if.end.275, %if.end.260, %cleanup, %if.end.210, %if.end.197, %if.end.166, %if.end.135, %if.end.103, %if.end.76, %if.end.52, %if.end
  %144 = bitcast i32* %ovlimit to i8*, !dbg !450
  call void @llvm.lifetime.end(i64 4, i8* %144) #2, !dbg !450
  %145 = bitcast i32* %c to i8*, !dbg !450
  call void @llvm.lifetime.end(i64 4, i8* %145) #2, !dbg !450
  %146 = bitcast i64* %result to i8*, !dbg !450
  call void @llvm.lifetime.end(i64 8, i8* %146) #2, !dbg !450
  %147 = load i64, i64* %retval, !dbg !450
  ret i64 %147, !dbg !450
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #2

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #3

; Function Attrs: nounwind uwtable
define i64 @PyOS_strtol(i8* %str, i8** %ptr, i32 %base) #0 {
entry:
  %str.addr = alloca i8*, align 8
  %ptr.addr = alloca i8**, align 8
  %base.addr = alloca i32, align 4
  %result = alloca i64, align 8
  %uresult = alloca i64, align 8
  %sign = alloca i8, align 1
  store i8* %str, i8** %str.addr, align 8, !tbaa !49
  call void @llvm.dbg.declare(metadata i8** %str.addr, metadata !33, metadata !53), !dbg !451
  store i8** %ptr, i8*** %ptr.addr, align 8, !tbaa !49
  call void @llvm.dbg.declare(metadata i8*** %ptr.addr, metadata !34, metadata !53), !dbg !452
  store i32 %base, i32* %base.addr, align 4, !tbaa !56
  call void @llvm.dbg.declare(metadata i32* %base.addr, metadata !35, metadata !53), !dbg !453
  %0 = bitcast i64* %result to i8*, !dbg !454
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !454
  call void @llvm.dbg.declare(metadata i64* %result, metadata !36, metadata !53), !dbg !455
  %1 = bitcast i64* %uresult to i8*, !dbg !456
  call void @llvm.lifetime.start(i64 8, i8* %1) #2, !dbg !456
  call void @llvm.dbg.declare(metadata i64* %uresult, metadata !37, metadata !53), !dbg !457
  call void @llvm.lifetime.start(i64 1, i8* %sign) #2, !dbg !458
  call void @llvm.dbg.declare(metadata i8* %sign, metadata !38, metadata !53), !dbg !459
  br label %while.cond, !dbg !460

while.cond:                                       ; preds = %while.body, %entry
  %2 = load i8*, i8** %str.addr, align 8, !dbg !461, !tbaa !49
  %3 = load i8, i8* %2, align 1, !dbg !464, !tbaa !72
  %conv = sext i8 %3 to i32, !dbg !464
  %tobool = icmp ne i32 %conv, 0, !dbg !464
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !465

land.rhs:                                         ; preds = %while.cond
  %4 = load i8*, i8** %str.addr, align 8, !dbg !466, !tbaa !49
  %5 = load i8, i8* %4, align 1, !dbg !468, !tbaa !72
  %conv1 = sext i8 %5 to i32, !dbg !469
  %and = and i32 %conv1, 255, !dbg !470
  %conv2 = trunc i32 %and to i8, !dbg !471
  %conv3 = zext i8 %conv2 to i32, !dbg !472
  %and4 = and i32 %conv3, 255, !dbg !473
  %conv5 = trunc i32 %and4 to i8, !dbg !474
  %idxprom = zext i8 %conv5 to i64, !dbg !475
  %arrayidx = getelementptr [256 x i32], [256 x i32]* @_Py_ctype_table, i32 0, i64 %idxprom, !dbg !475
  %6 = load i32, i32* %arrayidx, align 4, !dbg !475, !tbaa !56
  %and6 = and i32 %6, 8, !dbg !476
  %tobool7 = icmp ne i32 %and6, 0, !dbg !465
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %7 = phi i1 [ false, %while.cond ], [ %tobool7, %land.rhs ]
  br i1 %7, label %while.body, label %while.end, !dbg !477

while.body:                                       ; preds = %land.end
  %8 = load i8*, i8** %str.addr, align 8, !dbg !479, !tbaa !49
  %incdec.ptr = getelementptr i8, i8* %8, i32 1, !dbg !479
  store i8* %incdec.ptr, i8** %str.addr, align 8, !dbg !479, !tbaa !49
  br label %while.cond, !dbg !460

while.end:                                        ; preds = %land.end
  %9 = load i8*, i8** %str.addr, align 8, !dbg !480, !tbaa !49
  %10 = load i8, i8* %9, align 1, !dbg !481, !tbaa !72
  store i8 %10, i8* %sign, align 1, !dbg !482, !tbaa !72
  %11 = load i8, i8* %sign, align 1, !dbg !483, !tbaa !72
  %conv8 = sext i8 %11 to i32, !dbg !483
  %cmp = icmp eq i32 %conv8, 43, !dbg !485
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !486

lor.lhs.false:                                    ; preds = %while.end
  %12 = load i8, i8* %sign, align 1, !dbg !487, !tbaa !72
  %conv10 = sext i8 %12 to i32, !dbg !487
  %cmp11 = icmp eq i32 %conv10, 45, !dbg !489
  br i1 %cmp11, label %if.then, label %if.end, !dbg !490

if.then:                                          ; preds = %lor.lhs.false, %while.end
  %13 = load i8*, i8** %str.addr, align 8, !dbg !491, !tbaa !49
  %incdec.ptr13 = getelementptr i8, i8* %13, i32 1, !dbg !491
  store i8* %incdec.ptr13, i8** %str.addr, align 8, !dbg !491, !tbaa !49
  br label %if.end, !dbg !492

if.end:                                           ; preds = %if.then, %lor.lhs.false
  %14 = load i8*, i8** %str.addr, align 8, !dbg !493, !tbaa !49
  %15 = load i8**, i8*** %ptr.addr, align 8, !dbg !494, !tbaa !49
  %16 = load i32, i32* %base.addr, align 4, !dbg !495, !tbaa !56
  %call = call i64 @PyOS_strtoul(i8* %14, i8** %15, i32 %16), !dbg !496
  store i64 %call, i64* %uresult, align 8, !dbg !497, !tbaa !61
  %17 = load i64, i64* %uresult, align 8, !dbg !498, !tbaa !61
  %cmp14 = icmp ule i64 %17, 9223372036854775807, !dbg !500
  br i1 %cmp14, label %if.then.16, label %if.else, !dbg !501

if.then.16:                                       ; preds = %if.end
  %18 = load i64, i64* %uresult, align 8, !dbg !502, !tbaa !61
  store i64 %18, i64* %result, align 8, !dbg !504, !tbaa !61
  %19 = load i8, i8* %sign, align 1, !dbg !505, !tbaa !72
  %conv17 = sext i8 %19 to i32, !dbg !505
  %cmp18 = icmp eq i32 %conv17, 45, !dbg !507
  br i1 %cmp18, label %if.then.20, label %if.end.21, !dbg !508

if.then.20:                                       ; preds = %if.then.16
  %20 = load i64, i64* %result, align 8, !dbg !509, !tbaa !61
  %sub = sub i64 0, %20, !dbg !510
  store i64 %sub, i64* %result, align 8, !dbg !511, !tbaa !61
  br label %if.end.21, !dbg !512

if.end.21:                                        ; preds = %if.then.20, %if.then.16
  br label %if.end.31, !dbg !513

if.else:                                          ; preds = %if.end
  %21 = load i8, i8* %sign, align 1, !dbg !514, !tbaa !72
  %conv22 = sext i8 %21 to i32, !dbg !514
  %cmp23 = icmp eq i32 %conv22, 45, !dbg !516
  br i1 %cmp23, label %land.lhs.true, label %if.else.28, !dbg !517

land.lhs.true:                                    ; preds = %if.else
  %22 = load i64, i64* %uresult, align 8, !dbg !518, !tbaa !61
  %cmp25 = icmp eq i64 %22, -9223372036854775808, !dbg !520
  br i1 %cmp25, label %if.then.27, label %if.else.28, !dbg !521

if.then.27:                                       ; preds = %land.lhs.true
  store i64 -9223372036854775808, i64* %result, align 8, !dbg !522, !tbaa !61
  br label %if.end.30, !dbg !524

if.else.28:                                       ; preds = %land.lhs.true, %if.else
  %call29 = call i32* @__errno_location() #1, !dbg !525
  store i32 34, i32* %call29, align 4, !dbg !527, !tbaa !56
  store i64 9223372036854775807, i64* %result, align 8, !dbg !528, !tbaa !61
  br label %if.end.30

if.end.30:                                        ; preds = %if.else.28, %if.then.27
  br label %if.end.31

if.end.31:                                        ; preds = %if.end.30, %if.end.21
  %23 = load i64, i64* %result, align 8, !dbg !529, !tbaa !61
  call void @llvm.lifetime.end(i64 1, i8* %sign) #2, !dbg !530
  %24 = bitcast i64* %uresult to i8*, !dbg !530
  call void @llvm.lifetime.end(i64 8, i8* %24) #2, !dbg !530
  %25 = bitcast i64* %result to i8*, !dbg !530
  call void @llvm.lifetime.end(i64 8, i8* %25) #2, !dbg !530
  ret i64 %23, !dbg !531
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind }
attributes #3 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!46, !47}
!llvm.ident = !{!48}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.7.1 (https://github.com/llvm-mirror/clang.git 0dbefa1b83eb90f7a06b5df5df254ce32be3db4b) (git@github.com:kim-yoonseung/llvm.git e8e68907a8135028089af4d924da468e2b7257fa)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !3, subprograms: !9, globals: !39)
!1 = !DIFile(filename: "mystrtoul.c", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!2 = !{}
!3 = !{!4, !5, !7, !8}
!4 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64, align: 64)
!6 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!7 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!8 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!9 = !{!10, !29}
!10 = !DISubprogram(name: "PyOS_strtoul", scope: !11, file: !11, line: 95, type: !12, isLocal: false, isDefinition: true, scopeLine: 96, flags: DIFlagPrototyped, isOptimized: true, function: i64 (i8*, i8**, i32)* @PyOS_strtoul, variables: !18)
!11 = !DIFile(filename: "Python/mystrtoul.c", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!12 = !DISubroutineType(types: !13)
!13 = !{!7, !14, !16, !17}
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64, align: 64)
!15 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6)
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64, align: 64)
!17 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!18 = !{!19, !20, !21, !22, !23, !24, !25}
!19 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "str", arg: 1, scope: !10, file: !11, line: 95, type: !14)
!20 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ptr", arg: 2, scope: !10, file: !11, line: 95, type: !16)
!21 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "base", arg: 3, scope: !10, file: !11, line: 95, type: !17)
!22 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "result", scope: !10, file: !11, line: 97, type: !7)
!23 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "c", scope: !10, file: !11, line: 98, type: !17)
!24 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ovlimit", scope: !10, file: !11, line: 99, type: !17)
!25 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "temp_result", scope: !26, file: !11, line: 216, type: !7)
!26 = distinct !DILexicalBlock(scope: !27, file: !11, line: 215, column: 14)
!27 = distinct !DILexicalBlock(scope: !28, file: !11, line: 213, column: 13)
!28 = distinct !DILexicalBlock(scope: !10, file: !11, line: 212, column: 79)
!29 = !DISubprogram(name: "PyOS_strtol", scope: !11, file: !11, line: 263, type: !30, isLocal: false, isDefinition: true, scopeLine: 264, flags: DIFlagPrototyped, isOptimized: true, function: i64 (i8*, i8**, i32)* @PyOS_strtol, variables: !32)
!30 = !DISubroutineType(types: !31)
!31 = !{!8, !14, !16, !17}
!32 = !{!33, !34, !35, !36, !37, !38}
!33 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "str", arg: 1, scope: !29, file: !11, line: 263, type: !14)
!34 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ptr", arg: 2, scope: !29, file: !11, line: 263, type: !16)
!35 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "base", arg: 3, scope: !29, file: !11, line: 263, type: !17)
!36 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "result", scope: !29, file: !11, line: 265, type: !8)
!37 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "uresult", scope: !29, file: !11, line: 266, type: !7)
!38 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "sign", scope: !29, file: !11, line: 267, type: !6)
!39 = !{!40, !44}
!40 = !DIGlobalVariable(name: "digitlimit", scope: !0, file: !11, line: 72, type: !41, isLocal: true, isDefinition: true, variable: [37 x i32]* @digitlimit)
!41 = !DICompositeType(tag: DW_TAG_array_type, baseType: !17, size: 1184, align: 32, elements: !42)
!42 = !{!43}
!43 = !DISubrange(count: 37)
!44 = !DIGlobalVariable(name: "smallmax", scope: !0, file: !11, line: 20, type: !45, isLocal: true, isDefinition: true, variable: [37 x i64]* @smallmax)
!45 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 2368, align: 64, elements: !42)
!46 = !{i32 2, !"Dwarf Version", i32 4}
!47 = !{i32 2, !"Debug Info Version", i32 3}
!48 = !{!"clang version 3.7.1 (https://github.com/llvm-mirror/clang.git 0dbefa1b83eb90f7a06b5df5df254ce32be3db4b) (git@github.com:kim-yoonseung/llvm.git e8e68907a8135028089af4d924da468e2b7257fa)"}
!49 = !{!50, !50, i64 0}
!50 = !{!"any pointer", !51, i64 0}
!51 = !{!"omnipotent char", !52, i64 0}
!52 = !{!"Simple C/C++ TBAA"}
!53 = !DIExpression()
!54 = !DILocation(line: 95, column: 26, scope: !10)
!55 = !DILocation(line: 95, column: 38, scope: !10)
!56 = !{!57, !57, i64 0}
!57 = !{!"int", !51, i64 0}
!58 = !DILocation(line: 95, column: 47, scope: !10)
!59 = !DILocation(line: 97, column: 5, scope: !10)
!60 = !DILocation(line: 97, column: 19, scope: !10)
!61 = !{!62, !62, i64 0}
!62 = !{!"long", !51, i64 0}
!63 = !DILocation(line: 98, column: 5, scope: !10)
!64 = !DILocation(line: 98, column: 9, scope: !10)
!65 = !DILocation(line: 99, column: 5, scope: !10)
!66 = !DILocation(line: 99, column: 9, scope: !10)
!67 = !DILocation(line: 102, column: 5, scope: !10)
!68 = !DILocation(line: 102, column: 13, scope: !69)
!69 = !DILexicalBlockFile(scope: !70, file: !11, discriminator: 4)
!70 = !DILexicalBlockFile(scope: !10, file: !11, discriminator: 1)
!71 = !DILocation(line: 102, column: 12, scope: !10)
!72 = !{!51, !51, i64 0}
!73 = !DILocation(line: 102, column: 17, scope: !10)
!74 = !DILocation(line: 102, column: 74, scope: !75)
!75 = !DILexicalBlockFile(scope: !10, file: !11, discriminator: 2)
!76 = !DILocation(line: 102, column: 73, scope: !10)
!77 = !DILocation(line: 102, column: 72, scope: !10)
!78 = !DILocation(line: 102, column: 79, scope: !10)
!79 = !DILocation(line: 102, column: 56, scope: !10)
!80 = !DILocation(line: 102, column: 54, scope: !10)
!81 = !DILocation(line: 102, column: 89, scope: !10)
!82 = !DILocation(line: 102, column: 38, scope: !10)
!83 = !DILocation(line: 102, column: 21, scope: !10)
!84 = !DILocation(line: 102, column: 99, scope: !10)
!85 = !DILocation(line: 102, column: 5, scope: !86)
!86 = !DILexicalBlockFile(scope: !10, file: !11, discriminator: 3)
!87 = !DILocation(line: 103, column: 9, scope: !10)
!88 = !DILocation(line: 106, column: 13, scope: !10)
!89 = !DILocation(line: 106, column: 5, scope: !10)
!90 = !DILocation(line: 108, column: 14, scope: !91)
!91 = distinct !DILexicalBlock(scope: !92, file: !11, line: 108, column: 13)
!92 = distinct !DILexicalBlock(scope: !10, file: !11, line: 106, column: 19)
!93 = !DILocation(line: 108, column: 13, scope: !91)
!94 = !DILocation(line: 108, column: 18, scope: !91)
!95 = !DILocation(line: 108, column: 13, scope: !92)
!96 = !DILocation(line: 109, column: 13, scope: !97)
!97 = distinct !DILexicalBlock(scope: !91, file: !11, line: 108, column: 26)
!98 = !DILocation(line: 110, column: 18, scope: !99)
!99 = distinct !DILexicalBlock(scope: !97, file: !11, line: 110, column: 17)
!100 = !DILocation(line: 110, column: 17, scope: !99)
!101 = !DILocation(line: 110, column: 22, scope: !99)
!102 = !DILocation(line: 110, column: 29, scope: !99)
!103 = !DILocation(line: 110, column: 33, scope: !104)
!104 = !DILexicalBlockFile(scope: !99, file: !11, discriminator: 1)
!105 = !DILocation(line: 110, column: 32, scope: !99)
!106 = !DILocation(line: 110, column: 37, scope: !99)
!107 = !DILocation(line: 110, column: 17, scope: !97)
!108 = !DILocation(line: 112, column: 58, scope: !109)
!109 = distinct !DILexicalBlock(scope: !110, file: !11, line: 112, column: 21)
!110 = distinct !DILexicalBlock(scope: !99, file: !11, line: 110, column: 45)
!111 = !DILocation(line: 112, column: 57, scope: !109)
!112 = !DILocation(line: 112, column: 66, scope: !109)
!113 = !DILocation(line: 112, column: 41, scope: !109)
!114 = !DILocation(line: 112, column: 21, scope: !109)
!115 = !DILocation(line: 112, column: 76, scope: !109)
!116 = !DILocation(line: 112, column: 21, scope: !110)
!117 = !DILocation(line: 113, column: 25, scope: !118)
!118 = distinct !DILexicalBlock(scope: !119, file: !11, line: 113, column: 25)
!119 = distinct !DILexicalBlock(scope: !109, file: !11, line: 112, column: 83)
!120 = !DILocation(line: 113, column: 25, scope: !119)
!121 = !DILocation(line: 114, column: 40, scope: !118)
!122 = !DILocation(line: 114, column: 26, scope: !118)
!123 = !DILocation(line: 114, column: 30, scope: !118)
!124 = !DILocation(line: 114, column: 25, scope: !118)
!125 = !DILocation(line: 115, column: 21, scope: !119)
!126 = !DILocation(line: 117, column: 17, scope: !110)
!127 = !DILocation(line: 118, column: 22, scope: !110)
!128 = !DILocation(line: 119, column: 13, scope: !110)
!129 = !DILocation(line: 119, column: 25, scope: !130)
!130 = distinct !DILexicalBlock(scope: !99, file: !11, line: 119, column: 24)
!131 = !DILocation(line: 119, column: 24, scope: !130)
!132 = !DILocation(line: 119, column: 29, scope: !130)
!133 = !DILocation(line: 119, column: 36, scope: !130)
!134 = !DILocation(line: 119, column: 40, scope: !135)
!135 = !DILexicalBlockFile(scope: !130, file: !11, discriminator: 1)
!136 = !DILocation(line: 119, column: 39, scope: !130)
!137 = !DILocation(line: 119, column: 44, scope: !130)
!138 = !DILocation(line: 119, column: 24, scope: !99)
!139 = !DILocation(line: 121, column: 58, scope: !140)
!140 = distinct !DILexicalBlock(scope: !141, file: !11, line: 121, column: 21)
!141 = distinct !DILexicalBlock(scope: !130, file: !11, line: 119, column: 52)
!142 = !DILocation(line: 121, column: 57, scope: !140)
!143 = !DILocation(line: 121, column: 66, scope: !140)
!144 = !DILocation(line: 121, column: 41, scope: !140)
!145 = !DILocation(line: 121, column: 21, scope: !140)
!146 = !DILocation(line: 121, column: 76, scope: !140)
!147 = !DILocation(line: 121, column: 21, scope: !141)
!148 = !DILocation(line: 122, column: 25, scope: !149)
!149 = distinct !DILexicalBlock(scope: !150, file: !11, line: 122, column: 25)
!150 = distinct !DILexicalBlock(scope: !140, file: !11, line: 121, column: 82)
!151 = !DILocation(line: 122, column: 25, scope: !150)
!152 = !DILocation(line: 123, column: 40, scope: !149)
!153 = !DILocation(line: 123, column: 26, scope: !149)
!154 = !DILocation(line: 123, column: 30, scope: !149)
!155 = !DILocation(line: 123, column: 25, scope: !149)
!156 = !DILocation(line: 124, column: 21, scope: !150)
!157 = !DILocation(line: 126, column: 17, scope: !141)
!158 = !DILocation(line: 127, column: 22, scope: !141)
!159 = !DILocation(line: 128, column: 13, scope: !141)
!160 = !DILocation(line: 128, column: 25, scope: !161)
!161 = distinct !DILexicalBlock(scope: !130, file: !11, line: 128, column: 24)
!162 = !DILocation(line: 128, column: 24, scope: !161)
!163 = !DILocation(line: 128, column: 29, scope: !161)
!164 = !DILocation(line: 128, column: 36, scope: !161)
!165 = !DILocation(line: 128, column: 40, scope: !166)
!166 = !DILexicalBlockFile(scope: !161, file: !11, discriminator: 1)
!167 = !DILocation(line: 128, column: 39, scope: !161)
!168 = !DILocation(line: 128, column: 44, scope: !161)
!169 = !DILocation(line: 128, column: 24, scope: !130)
!170 = !DILocation(line: 130, column: 58, scope: !171)
!171 = distinct !DILexicalBlock(scope: !172, file: !11, line: 130, column: 21)
!172 = distinct !DILexicalBlock(scope: !161, file: !11, line: 128, column: 52)
!173 = !DILocation(line: 130, column: 57, scope: !171)
!174 = !DILocation(line: 130, column: 66, scope: !171)
!175 = !DILocation(line: 130, column: 41, scope: !171)
!176 = !DILocation(line: 130, column: 21, scope: !171)
!177 = !DILocation(line: 130, column: 76, scope: !171)
!178 = !DILocation(line: 130, column: 21, scope: !172)
!179 = !DILocation(line: 131, column: 25, scope: !180)
!180 = distinct !DILexicalBlock(scope: !181, file: !11, line: 131, column: 25)
!181 = distinct !DILexicalBlock(scope: !171, file: !11, line: 130, column: 82)
!182 = !DILocation(line: 131, column: 25, scope: !181)
!183 = !DILocation(line: 132, column: 40, scope: !180)
!184 = !DILocation(line: 132, column: 26, scope: !180)
!185 = !DILocation(line: 132, column: 30, scope: !180)
!186 = !DILocation(line: 132, column: 25, scope: !180)
!187 = !DILocation(line: 133, column: 21, scope: !181)
!188 = !DILocation(line: 135, column: 17, scope: !172)
!189 = !DILocation(line: 136, column: 22, scope: !172)
!190 = !DILocation(line: 137, column: 13, scope: !172)
!191 = !DILocation(line: 139, column: 17, scope: !192)
!192 = distinct !DILexicalBlock(scope: !161, file: !11, line: 137, column: 20)
!193 = !DILocation(line: 139, column: 25, scope: !194)
!194 = !DILexicalBlockFile(scope: !195, file: !11, discriminator: 2)
!195 = !DILexicalBlockFile(scope: !192, file: !11, discriminator: 1)
!196 = !DILocation(line: 139, column: 24, scope: !192)
!197 = !DILocation(line: 139, column: 29, scope: !192)
!198 = !DILocation(line: 140, column: 21, scope: !192)
!199 = !DILocation(line: 141, column: 17, scope: !192)
!200 = !DILocation(line: 141, column: 78, scope: !194)
!201 = !DILocation(line: 141, column: 77, scope: !192)
!202 = !DILocation(line: 141, column: 76, scope: !192)
!203 = !DILocation(line: 141, column: 83, scope: !192)
!204 = !DILocation(line: 141, column: 60, scope: !192)
!205 = !DILocation(line: 141, column: 58, scope: !192)
!206 = !DILocation(line: 141, column: 93, scope: !192)
!207 = !DILocation(line: 141, column: 42, scope: !192)
!208 = !DILocation(line: 141, column: 25, scope: !192)
!209 = !DILocation(line: 141, column: 103, scope: !192)
!210 = !DILocation(line: 142, column: 21, scope: !192)
!211 = !DILocation(line: 143, column: 21, scope: !212)
!212 = distinct !DILexicalBlock(scope: !192, file: !11, line: 143, column: 21)
!213 = !DILocation(line: 143, column: 21, scope: !192)
!214 = !DILocation(line: 144, column: 36, scope: !212)
!215 = !DILocation(line: 144, column: 22, scope: !212)
!216 = !DILocation(line: 144, column: 26, scope: !212)
!217 = !DILocation(line: 144, column: 21, scope: !212)
!218 = !DILocation(line: 145, column: 17, scope: !192)
!219 = !DILocation(line: 147, column: 9, scope: !97)
!220 = !DILocation(line: 149, column: 18, scope: !91)
!221 = !DILocation(line: 150, column: 9, scope: !92)
!222 = !DILocation(line: 154, column: 14, scope: !223)
!223 = distinct !DILexicalBlock(scope: !92, file: !11, line: 154, column: 13)
!224 = !DILocation(line: 154, column: 13, scope: !223)
!225 = !DILocation(line: 154, column: 18, scope: !223)
!226 = !DILocation(line: 154, column: 13, scope: !92)
!227 = !DILocation(line: 155, column: 13, scope: !228)
!228 = distinct !DILexicalBlock(scope: !223, file: !11, line: 154, column: 26)
!229 = !DILocation(line: 156, column: 18, scope: !230)
!230 = distinct !DILexicalBlock(scope: !228, file: !11, line: 156, column: 17)
!231 = !DILocation(line: 156, column: 17, scope: !230)
!232 = !DILocation(line: 156, column: 22, scope: !230)
!233 = !DILocation(line: 156, column: 29, scope: !230)
!234 = !DILocation(line: 156, column: 33, scope: !235)
!235 = !DILexicalBlockFile(scope: !230, file: !11, discriminator: 1)
!236 = !DILocation(line: 156, column: 32, scope: !230)
!237 = !DILocation(line: 156, column: 37, scope: !230)
!238 = !DILocation(line: 156, column: 17, scope: !228)
!239 = !DILocation(line: 158, column: 58, scope: !240)
!240 = distinct !DILexicalBlock(scope: !241, file: !11, line: 158, column: 21)
!241 = distinct !DILexicalBlock(scope: !230, file: !11, line: 156, column: 45)
!242 = !DILocation(line: 158, column: 57, scope: !240)
!243 = !DILocation(line: 158, column: 66, scope: !240)
!244 = !DILocation(line: 158, column: 41, scope: !240)
!245 = !DILocation(line: 158, column: 21, scope: !240)
!246 = !DILocation(line: 158, column: 76, scope: !240)
!247 = !DILocation(line: 158, column: 21, scope: !241)
!248 = !DILocation(line: 159, column: 25, scope: !249)
!249 = distinct !DILexicalBlock(scope: !250, file: !11, line: 159, column: 25)
!250 = distinct !DILexicalBlock(scope: !240, file: !11, line: 158, column: 83)
!251 = !DILocation(line: 159, column: 25, scope: !250)
!252 = !DILocation(line: 160, column: 40, scope: !249)
!253 = !DILocation(line: 160, column: 26, scope: !249)
!254 = !DILocation(line: 160, column: 30, scope: !249)
!255 = !DILocation(line: 160, column: 25, scope: !249)
!256 = !DILocation(line: 161, column: 21, scope: !250)
!257 = !DILocation(line: 163, column: 17, scope: !241)
!258 = !DILocation(line: 164, column: 13, scope: !241)
!259 = !DILocation(line: 165, column: 9, scope: !228)
!260 = !DILocation(line: 166, column: 9, scope: !92)
!261 = !DILocation(line: 168, column: 14, scope: !262)
!262 = distinct !DILexicalBlock(scope: !92, file: !11, line: 168, column: 13)
!263 = !DILocation(line: 168, column: 13, scope: !262)
!264 = !DILocation(line: 168, column: 18, scope: !262)
!265 = !DILocation(line: 168, column: 13, scope: !92)
!266 = !DILocation(line: 169, column: 13, scope: !267)
!267 = distinct !DILexicalBlock(scope: !262, file: !11, line: 168, column: 26)
!268 = !DILocation(line: 170, column: 18, scope: !269)
!269 = distinct !DILexicalBlock(scope: !267, file: !11, line: 170, column: 17)
!270 = !DILocation(line: 170, column: 17, scope: !269)
!271 = !DILocation(line: 170, column: 22, scope: !269)
!272 = !DILocation(line: 170, column: 29, scope: !269)
!273 = !DILocation(line: 170, column: 33, scope: !274)
!274 = !DILexicalBlockFile(scope: !269, file: !11, discriminator: 1)
!275 = !DILocation(line: 170, column: 32, scope: !269)
!276 = !DILocation(line: 170, column: 37, scope: !269)
!277 = !DILocation(line: 170, column: 17, scope: !267)
!278 = !DILocation(line: 172, column: 58, scope: !279)
!279 = distinct !DILexicalBlock(scope: !280, file: !11, line: 172, column: 21)
!280 = distinct !DILexicalBlock(scope: !269, file: !11, line: 170, column: 45)
!281 = !DILocation(line: 172, column: 57, scope: !279)
!282 = !DILocation(line: 172, column: 66, scope: !279)
!283 = !DILocation(line: 172, column: 41, scope: !279)
!284 = !DILocation(line: 172, column: 21, scope: !279)
!285 = !DILocation(line: 172, column: 76, scope: !279)
!286 = !DILocation(line: 172, column: 21, scope: !280)
!287 = !DILocation(line: 173, column: 25, scope: !288)
!288 = distinct !DILexicalBlock(scope: !289, file: !11, line: 173, column: 25)
!289 = distinct !DILexicalBlock(scope: !279, file: !11, line: 172, column: 82)
!290 = !DILocation(line: 173, column: 25, scope: !289)
!291 = !DILocation(line: 174, column: 40, scope: !288)
!292 = !DILocation(line: 174, column: 26, scope: !288)
!293 = !DILocation(line: 174, column: 30, scope: !288)
!294 = !DILocation(line: 174, column: 25, scope: !288)
!295 = !DILocation(line: 175, column: 21, scope: !289)
!296 = !DILocation(line: 177, column: 17, scope: !280)
!297 = !DILocation(line: 178, column: 13, scope: !280)
!298 = !DILocation(line: 179, column: 9, scope: !267)
!299 = !DILocation(line: 180, column: 9, scope: !92)
!300 = !DILocation(line: 182, column: 13, scope: !301)
!301 = distinct !DILexicalBlock(scope: !92, file: !11, line: 182, column: 12)
!302 = !DILocation(line: 182, column: 12, scope: !301)
!303 = !DILocation(line: 182, column: 17, scope: !301)
!304 = !DILocation(line: 182, column: 12, scope: !92)
!305 = !DILocation(line: 183, column: 13, scope: !306)
!306 = distinct !DILexicalBlock(scope: !301, file: !11, line: 182, column: 25)
!307 = !DILocation(line: 184, column: 18, scope: !308)
!308 = distinct !DILexicalBlock(scope: !306, file: !11, line: 184, column: 17)
!309 = !DILocation(line: 184, column: 17, scope: !308)
!310 = !DILocation(line: 184, column: 22, scope: !308)
!311 = !DILocation(line: 184, column: 29, scope: !308)
!312 = !DILocation(line: 184, column: 33, scope: !313)
!313 = !DILexicalBlockFile(scope: !308, file: !11, discriminator: 1)
!314 = !DILocation(line: 184, column: 32, scope: !308)
!315 = !DILocation(line: 184, column: 37, scope: !308)
!316 = !DILocation(line: 184, column: 17, scope: !306)
!317 = !DILocation(line: 186, column: 58, scope: !318)
!318 = distinct !DILexicalBlock(scope: !319, file: !11, line: 186, column: 21)
!319 = distinct !DILexicalBlock(scope: !308, file: !11, line: 184, column: 45)
!320 = !DILocation(line: 186, column: 57, scope: !318)
!321 = !DILocation(line: 186, column: 66, scope: !318)
!322 = !DILocation(line: 186, column: 41, scope: !318)
!323 = !DILocation(line: 186, column: 21, scope: !318)
!324 = !DILocation(line: 186, column: 76, scope: !318)
!325 = !DILocation(line: 186, column: 21, scope: !319)
!326 = !DILocation(line: 187, column: 25, scope: !327)
!327 = distinct !DILexicalBlock(scope: !328, file: !11, line: 187, column: 25)
!328 = distinct !DILexicalBlock(scope: !318, file: !11, line: 186, column: 82)
!329 = !DILocation(line: 187, column: 25, scope: !328)
!330 = !DILocation(line: 188, column: 40, scope: !327)
!331 = !DILocation(line: 188, column: 26, scope: !327)
!332 = !DILocation(line: 188, column: 30, scope: !327)
!333 = !DILocation(line: 188, column: 25, scope: !327)
!334 = !DILocation(line: 189, column: 21, scope: !328)
!335 = !DILocation(line: 191, column: 17, scope: !319)
!336 = !DILocation(line: 192, column: 13, scope: !319)
!337 = !DILocation(line: 193, column: 9, scope: !306)
!338 = !DILocation(line: 194, column: 9, scope: !92)
!339 = !DILocation(line: 198, column: 9, scope: !340)
!340 = distinct !DILexicalBlock(scope: !10, file: !11, line: 198, column: 9)
!341 = !DILocation(line: 198, column: 14, scope: !340)
!342 = !DILocation(line: 198, column: 18, scope: !340)
!343 = !DILocation(line: 198, column: 21, scope: !344)
!344 = !DILexicalBlockFile(scope: !340, file: !11, discriminator: 1)
!345 = !DILocation(line: 198, column: 26, scope: !340)
!346 = !DILocation(line: 198, column: 9, scope: !10)
!347 = !DILocation(line: 199, column: 13, scope: !348)
!348 = distinct !DILexicalBlock(scope: !349, file: !11, line: 199, column: 13)
!349 = distinct !DILexicalBlock(scope: !340, file: !11, line: 198, column: 32)
!350 = !DILocation(line: 199, column: 13, scope: !349)
!351 = !DILocation(line: 200, column: 28, scope: !348)
!352 = !DILocation(line: 200, column: 14, scope: !348)
!353 = !DILocation(line: 200, column: 18, scope: !348)
!354 = !DILocation(line: 200, column: 13, scope: !348)
!355 = !DILocation(line: 201, column: 9, scope: !349)
!356 = !DILocation(line: 205, column: 5, scope: !10)
!357 = !DILocation(line: 205, column: 13, scope: !358)
!358 = !DILexicalBlockFile(scope: !70, file: !11, discriminator: 2)
!359 = !DILocation(line: 205, column: 12, scope: !10)
!360 = !DILocation(line: 205, column: 17, scope: !10)
!361 = !DILocation(line: 206, column: 9, scope: !10)
!362 = !DILocation(line: 209, column: 26, scope: !10)
!363 = !DILocation(line: 209, column: 15, scope: !10)
!364 = !DILocation(line: 209, column: 13, scope: !10)
!365 = !DILocation(line: 212, column: 5, scope: !10)
!366 = !DILocation(line: 212, column: 55, scope: !358)
!367 = !DILocation(line: 212, column: 54, scope: !10)
!368 = !DILocation(line: 212, column: 53, scope: !10)
!369 = !DILocation(line: 212, column: 60, scope: !10)
!370 = !DILocation(line: 212, column: 37, scope: !10)
!371 = !DILocation(line: 212, column: 17, scope: !10)
!372 = !DILocation(line: 212, column: 15, scope: !10)
!373 = !DILocation(line: 212, column: 73, scope: !10)
!374 = !DILocation(line: 212, column: 71, scope: !10)
!375 = !DILocation(line: 213, column: 13, scope: !27)
!376 = !DILocation(line: 213, column: 21, scope: !27)
!377 = !DILocation(line: 213, column: 13, scope: !28)
!378 = !DILocation(line: 214, column: 22, scope: !27)
!379 = !DILocation(line: 214, column: 31, scope: !27)
!380 = !DILocation(line: 214, column: 29, scope: !27)
!381 = !DILocation(line: 214, column: 38, scope: !27)
!382 = !DILocation(line: 214, column: 36, scope: !27)
!383 = !DILocation(line: 214, column: 20, scope: !27)
!384 = !DILocation(line: 214, column: 13, scope: !27)
!385 = !DILocation(line: 216, column: 13, scope: !26)
!386 = !DILocation(line: 216, column: 27, scope: !26)
!387 = !DILocation(line: 218, column: 17, scope: !388)
!388 = distinct !DILexicalBlock(scope: !26, file: !11, line: 218, column: 17)
!389 = !DILocation(line: 218, column: 25, scope: !388)
!390 = !DILocation(line: 218, column: 17, scope: !26)
!391 = !DILocation(line: 219, column: 17, scope: !388)
!392 = !DILocation(line: 223, column: 17, scope: !393)
!393 = distinct !DILexicalBlock(scope: !26, file: !11, line: 223, column: 17)
!394 = !DILocation(line: 223, column: 35, scope: !393)
!395 = !DILocation(line: 223, column: 26, scope: !393)
!396 = !DILocation(line: 223, column: 24, scope: !393)
!397 = !DILocation(line: 223, column: 17, scope: !26)
!398 = !DILocation(line: 224, column: 17, scope: !393)
!399 = !DILocation(line: 226, column: 23, scope: !26)
!400 = !DILocation(line: 226, column: 20, scope: !26)
!401 = !DILocation(line: 229, column: 27, scope: !26)
!402 = !DILocation(line: 229, column: 36, scope: !26)
!403 = !DILocation(line: 229, column: 34, scope: !26)
!404 = !DILocation(line: 229, column: 25, scope: !26)
!405 = !DILocation(line: 230, column: 17, scope: !406)
!406 = distinct !DILexicalBlock(scope: !26, file: !11, line: 230, column: 17)
!407 = !DILocation(line: 230, column: 31, scope: !406)
!408 = !DILocation(line: 230, column: 29, scope: !406)
!409 = !DILocation(line: 230, column: 17, scope: !26)
!410 = !DILocation(line: 231, column: 17, scope: !406)
!411 = !DILocation(line: 233, column: 22, scope: !26)
!412 = !DILocation(line: 233, column: 20, scope: !26)
!413 = !DILocation(line: 234, column: 9, scope: !27)
!414 = !DILocation(line: 234, column: 9, scope: !415)
!415 = !DILexicalBlockFile(scope: !27, file: !11, discriminator: 1)
!416 = !DILocation(line: 236, column: 9, scope: !28)
!417 = !DILocation(line: 237, column: 9, scope: !28)
!418 = !DILocation(line: 241, column: 9, scope: !419)
!419 = distinct !DILexicalBlock(scope: !10, file: !11, line: 241, column: 9)
!420 = !DILocation(line: 241, column: 9, scope: !10)
!421 = !DILocation(line: 242, column: 24, scope: !419)
!422 = !DILocation(line: 242, column: 10, scope: !419)
!423 = !DILocation(line: 242, column: 14, scope: !419)
!424 = !DILocation(line: 242, column: 9, scope: !419)
!425 = !DILocation(line: 244, column: 12, scope: !10)
!426 = !DILocation(line: 244, column: 5, scope: !10)
!427 = !DILocation(line: 247, column: 9, scope: !428)
!428 = distinct !DILexicalBlock(scope: !10, file: !11, line: 247, column: 9)
!429 = !DILocation(line: 247, column: 9, scope: !10)
!430 = !DILocation(line: 249, column: 9, scope: !431)
!431 = distinct !DILexicalBlock(scope: !428, file: !11, line: 247, column: 14)
!432 = !DILocation(line: 249, column: 54, scope: !433)
!433 = !DILexicalBlockFile(scope: !434, file: !11, discriminator: 2)
!434 = !DILexicalBlockFile(scope: !431, file: !11, discriminator: 1)
!435 = !DILocation(line: 249, column: 53, scope: !431)
!436 = !DILocation(line: 249, column: 52, scope: !431)
!437 = !DILocation(line: 249, column: 59, scope: !431)
!438 = !DILocation(line: 249, column: 36, scope: !431)
!439 = !DILocation(line: 249, column: 16, scope: !431)
!440 = !DILocation(line: 249, column: 71, scope: !431)
!441 = !DILocation(line: 249, column: 69, scope: !431)
!442 = !DILocation(line: 250, column: 13, scope: !431)
!443 = !DILocation(line: 251, column: 24, scope: !431)
!444 = !DILocation(line: 251, column: 10, scope: !431)
!445 = !DILocation(line: 251, column: 14, scope: !431)
!446 = !DILocation(line: 252, column: 5, scope: !431)
!447 = !DILocation(line: 253, column: 7, scope: !10)
!448 = !DILocation(line: 253, column: 28, scope: !10)
!449 = !DILocation(line: 254, column: 5, scope: !10)
!450 = !DILocation(line: 255, column: 1, scope: !10)
!451 = !DILocation(line: 263, column: 25, scope: !29)
!452 = !DILocation(line: 263, column: 37, scope: !29)
!453 = !DILocation(line: 263, column: 46, scope: !29)
!454 = !DILocation(line: 265, column: 5, scope: !29)
!455 = !DILocation(line: 265, column: 10, scope: !29)
!456 = !DILocation(line: 266, column: 5, scope: !29)
!457 = !DILocation(line: 266, column: 19, scope: !29)
!458 = !DILocation(line: 267, column: 5, scope: !29)
!459 = !DILocation(line: 267, column: 10, scope: !29)
!460 = !DILocation(line: 269, column: 5, scope: !29)
!461 = !DILocation(line: 269, column: 13, scope: !462)
!462 = !DILexicalBlockFile(scope: !463, file: !11, discriminator: 4)
!463 = !DILexicalBlockFile(scope: !29, file: !11, discriminator: 1)
!464 = !DILocation(line: 269, column: 12, scope: !29)
!465 = !DILocation(line: 269, column: 17, scope: !29)
!466 = !DILocation(line: 269, column: 74, scope: !467)
!467 = !DILexicalBlockFile(scope: !29, file: !11, discriminator: 2)
!468 = !DILocation(line: 269, column: 73, scope: !29)
!469 = !DILocation(line: 269, column: 72, scope: !29)
!470 = !DILocation(line: 269, column: 79, scope: !29)
!471 = !DILocation(line: 269, column: 56, scope: !29)
!472 = !DILocation(line: 269, column: 54, scope: !29)
!473 = !DILocation(line: 269, column: 89, scope: !29)
!474 = !DILocation(line: 269, column: 38, scope: !29)
!475 = !DILocation(line: 269, column: 21, scope: !29)
!476 = !DILocation(line: 269, column: 99, scope: !29)
!477 = !DILocation(line: 269, column: 5, scope: !478)
!478 = !DILexicalBlockFile(scope: !29, file: !11, discriminator: 3)
!479 = !DILocation(line: 270, column: 12, scope: !29)
!480 = !DILocation(line: 272, column: 13, scope: !29)
!481 = !DILocation(line: 272, column: 12, scope: !29)
!482 = !DILocation(line: 272, column: 10, scope: !29)
!483 = !DILocation(line: 273, column: 9, scope: !484)
!484 = distinct !DILexicalBlock(scope: !29, file: !11, line: 273, column: 9)
!485 = !DILocation(line: 273, column: 14, scope: !484)
!486 = !DILocation(line: 273, column: 21, scope: !484)
!487 = !DILocation(line: 273, column: 24, scope: !488)
!488 = !DILexicalBlockFile(scope: !484, file: !11, discriminator: 1)
!489 = !DILocation(line: 273, column: 29, scope: !484)
!490 = !DILocation(line: 273, column: 9, scope: !29)
!491 = !DILocation(line: 274, column: 12, scope: !484)
!492 = !DILocation(line: 274, column: 9, scope: !484)
!493 = !DILocation(line: 276, column: 28, scope: !29)
!494 = !DILocation(line: 276, column: 33, scope: !29)
!495 = !DILocation(line: 276, column: 38, scope: !29)
!496 = !DILocation(line: 276, column: 15, scope: !29)
!497 = !DILocation(line: 276, column: 13, scope: !29)
!498 = !DILocation(line: 278, column: 9, scope: !499)
!499 = distinct !DILexicalBlock(scope: !29, file: !11, line: 278, column: 9)
!500 = !DILocation(line: 278, column: 17, scope: !499)
!501 = !DILocation(line: 278, column: 9, scope: !29)
!502 = !DILocation(line: 279, column: 24, scope: !503)
!503 = distinct !DILexicalBlock(scope: !499, file: !11, line: 278, column: 57)
!504 = !DILocation(line: 279, column: 16, scope: !503)
!505 = !DILocation(line: 280, column: 13, scope: !506)
!506 = distinct !DILexicalBlock(scope: !503, file: !11, line: 280, column: 13)
!507 = !DILocation(line: 280, column: 18, scope: !506)
!508 = !DILocation(line: 280, column: 13, scope: !503)
!509 = !DILocation(line: 281, column: 23, scope: !506)
!510 = !DILocation(line: 281, column: 22, scope: !506)
!511 = !DILocation(line: 281, column: 20, scope: !506)
!512 = !DILocation(line: 281, column: 13, scope: !506)
!513 = !DILocation(line: 282, column: 5, scope: !503)
!514 = !DILocation(line: 283, column: 14, scope: !515)
!515 = distinct !DILexicalBlock(scope: !499, file: !11, line: 283, column: 14)
!516 = !DILocation(line: 283, column: 19, scope: !515)
!517 = !DILocation(line: 283, column: 26, scope: !515)
!518 = !DILocation(line: 283, column: 29, scope: !519)
!519 = !DILexicalBlockFile(scope: !515, file: !11, discriminator: 1)
!520 = !DILocation(line: 283, column: 37, scope: !515)
!521 = !DILocation(line: 283, column: 14, scope: !499)
!522 = !DILocation(line: 284, column: 16, scope: !523)
!523 = distinct !DILexicalBlock(scope: !515, file: !11, line: 283, column: 88)
!524 = !DILocation(line: 285, column: 5, scope: !523)
!525 = !DILocation(line: 287, column: 11, scope: !526)
!526 = distinct !DILexicalBlock(scope: !515, file: !11, line: 286, column: 10)
!527 = !DILocation(line: 287, column: 32, scope: !526)
!528 = !DILocation(line: 288, column: 16, scope: !526)
!529 = !DILocation(line: 290, column: 12, scope: !29)
!530 = !DILocation(line: 291, column: 1, scope: !29)
!531 = !DILocation(line: 290, column: 5, scope: !29)
