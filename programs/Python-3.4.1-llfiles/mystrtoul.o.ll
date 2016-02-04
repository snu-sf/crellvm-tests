; ModuleID = 'mystrtoul.o.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@_Py_ctype_table = external constant [256 x i32], align 16
@_PyLong_DigitValue = external global [256 x i8], align 16
@digitlimit = internal unnamed_addr constant [37 x i32] [i32 0, i32 0, i32 64, i32 40, i32 32, i32 27, i32 24, i32 22, i32 21, i32 20, i32 19, i32 18, i32 17, i32 17, i32 16, i32 16, i32 16, i32 15, i32 15, i32 15, i32 14, i32 14, i32 14, i32 14, i32 13, i32 13, i32 13, i32 13, i32 13, i32 13, i32 13, i32 12, i32 12, i32 12, i32 12, i32 12, i32 12], align 16
@smallmax = internal unnamed_addr constant [37 x i64] [i64 0, i64 0, i64 9223372036854775807, i64 6148914691236517205, i64 4611686018427387903, i64 3689348814741910323, i64 3074457345618258602, i64 2635249153387078802, i64 2305843009213693951, i64 2049638230412172401, i64 1844674407370955161, i64 1676976733973595601, i64 1537228672809129301, i64 1418980313362273201, i64 1317624576693539401, i64 1229782938247303441, i64 1152921504606846975, i64 1085102592571150095, i64 1024819115206086200, i64 970881267037344821, i64 922337203685477580, i64 878416384462359600, i64 838488366986797800, i64 802032351030850070, i64 768614336404564650, i64 737869762948382064, i64 709490156681136600, i64 683212743470724133, i64 658812288346769700, i64 636094623231363848, i64 614891469123651720, i64 595056260442243600, i64 576460752303423487, i64 558992244657865200, i64 542551296285575047, i64 527049830677415760, i64 512409557603043100], align 16

; Function Attrs: nounwind uwtable
define i64 @PyOS_strtoul(i8* %str, i8** %ptr, i32 %base) #0 {
entry:
  tail call void @llvm.dbg.value(metadata i8* %str, i64 0, metadata !18, metadata !48), !dbg !49
  tail call void @llvm.dbg.value(metadata i8** %ptr, i64 0, metadata !19, metadata !48), !dbg !50
  tail call void @llvm.dbg.value(metadata i32 %base, i64 0, metadata !20, metadata !48), !dbg !51
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !21, metadata !48), !dbg !52
  %0 = load i8, i8* %str, align 1, !dbg !53, !tbaa !54
  %tobool.394 = icmp eq i8 %0, 0, !dbg !53
  br i1 %tobool.394, label %while.end, label %land.rhs.preheader, !dbg !57

land.rhs.preheader:                               ; preds = %entry
  br label %land.rhs, !dbg !58

land.rhs:                                         ; preds = %land.rhs.preheader, %while.body
  %1 = phi i8 [ %3, %while.body ], [ %0, %land.rhs.preheader ]
  %str.addr.0395 = phi i8* [ %incdec.ptr, %while.body ], [ %str, %land.rhs.preheader ]
  %idxprom = zext i8 %1 to i64, !dbg !58
  %arrayidx = getelementptr [256 x i32], [256 x i32]* @_Py_ctype_table, i64 0, i64 %idxprom, !dbg !58
  %2 = load i32, i32* %arrayidx, align 4, !dbg !58, !tbaa !60
  %and6 = and i32 %2, 8, !dbg !58
  %tobool7 = icmp eq i32 %and6, 0, !dbg !57
  br i1 %tobool7, label %while.end.loopexit, label %while.body, !dbg !62

while.body:                                       ; preds = %land.rhs
  %incdec.ptr = getelementptr i8, i8* %str.addr.0395, i64 1, !dbg !64
  tail call void @llvm.dbg.value(metadata i8* %incdec.ptr, i64 0, metadata !18, metadata !48), !dbg !49
  %3 = load i8, i8* %incdec.ptr, align 1, !dbg !53, !tbaa !54
  %tobool = icmp eq i8 %3, 0, !dbg !53
  br i1 %tobool, label %while.end.loopexit, label %land.rhs, !dbg !57

while.end.loopexit:                               ; preds = %land.rhs, %while.body
  %.ph = phi i8 [ 0, %while.body ], [ %1, %land.rhs ]
  %str.addr.0.lcssa.ph = phi i8* [ %incdec.ptr, %while.body ], [ %str.addr.0395, %land.rhs ]
  br label %while.end, !dbg !65

while.end:                                        ; preds = %while.end.loopexit, %entry
  %4 = phi i8 [ 0, %entry ], [ %.ph, %while.end.loopexit ], !dbg !66
  %str.addr.0.lcssa = phi i8* [ %str, %entry ], [ %str.addr.0.lcssa.ph, %while.end.loopexit ]
  switch i32 %base, label %sw.epilog [
    i32 0, label %sw.bb
    i32 16, label %sw.bb.109
    i32 8, label %sw.bb.140
    i32 2, label %sw.bb.171
  ], !dbg !65

sw.bb:                                            ; preds = %while.end
  %cmp = icmp eq i8 %4, 48, !dbg !69
  br i1 %cmp, label %if.then, label %while.cond.212.preheader, !dbg !70

if.then:                                          ; preds = %sw.bb
  %incdec.ptr10 = getelementptr i8, i8* %str.addr.0.lcssa, i64 1, !dbg !71
  tail call void @llvm.dbg.value(metadata i8* %incdec.ptr10, i64 0, metadata !18, metadata !48), !dbg !49
  %5 = load i8, i8* %incdec.ptr10, align 1, !dbg !73, !tbaa !54
  switch i8 %5, label %while.cond.87.preheader [
    i8 120, label %if.then.17
    i8 88, label %if.then.17
    i8 111, label %if.then.39
    i8 79, label %if.then.39
    i8 98, label %if.then.63
    i8 66, label %if.then.63
    i8 48, label %while.cond.80.while.cond.80_crit_edge.lr.ph
  ], !dbg !75

while.cond.80.while.cond.80_crit_edge.lr.ph:      ; preds = %if.then
  %incdec.ptr85.430 = getelementptr i8, i8* %str.addr.0.lcssa, i64 2, !dbg !76
  br label %while.cond.80.while.cond.80_crit_edge, !dbg !80

if.then.17:                                       ; preds = %if.then, %if.then
  %arrayidx18 = getelementptr i8, i8* %str.addr.0.lcssa, i64 2, !dbg !81
  %6 = load i8, i8* %arrayidx18, align 1, !dbg !81, !tbaa !54
  %idxprom22 = zext i8 %6 to i64, !dbg !84
  %arrayidx23 = getelementptr [256 x i8], [256 x i8]* @_PyLong_DigitValue, i64 0, i64 %idxprom22, !dbg !84
  %7 = load i8, i8* %arrayidx23, align 1, !dbg !84, !tbaa !54
  %cmp25 = icmp ugt i8 %7, 15, !dbg !85
  br i1 %cmp25, label %if.then.27, label %while.cond.212.preheader, !dbg !86

if.then.27:                                       ; preds = %if.then.17
  %tobool28 = icmp eq i8** %ptr, null, !dbg !87
  br i1 %tobool28, label %cleanup.276, label %if.then.29, !dbg !90

if.then.29:                                       ; preds = %if.then.27
  store i8* %incdec.ptr10, i8** %ptr, align 8, !dbg !91, !tbaa !92
  br label %cleanup.276, !dbg !94

if.then.39:                                       ; preds = %if.then, %if.then
  %arrayidx40 = getelementptr i8, i8* %str.addr.0.lcssa, i64 2, !dbg !95
  %8 = load i8, i8* %arrayidx40, align 1, !dbg !95, !tbaa !54
  %idxprom44 = zext i8 %8 to i64, !dbg !98
  %arrayidx45 = getelementptr [256 x i8], [256 x i8]* @_PyLong_DigitValue, i64 0, i64 %idxprom44, !dbg !98
  %9 = load i8, i8* %arrayidx45, align 1, !dbg !98, !tbaa !54
  %cmp47 = icmp ugt i8 %9, 7, !dbg !99
  br i1 %cmp47, label %if.then.49, label %while.cond.212.preheader, !dbg !100

if.then.49:                                       ; preds = %if.then.39
  %tobool50 = icmp eq i8** %ptr, null, !dbg !101
  br i1 %tobool50, label %cleanup.276, label %if.then.51, !dbg !104

if.then.51:                                       ; preds = %if.then.49
  store i8* %incdec.ptr10, i8** %ptr, align 8, !dbg !105, !tbaa !92
  br label %cleanup.276, !dbg !106

if.then.63:                                       ; preds = %if.then, %if.then
  %arrayidx64 = getelementptr i8, i8* %str.addr.0.lcssa, i64 2, !dbg !107
  %10 = load i8, i8* %arrayidx64, align 1, !dbg !107, !tbaa !54
  %idxprom68 = zext i8 %10 to i64, !dbg !110
  %arrayidx69 = getelementptr [256 x i8], [256 x i8]* @_PyLong_DigitValue, i64 0, i64 %idxprom68, !dbg !110
  %11 = load i8, i8* %arrayidx69, align 1, !dbg !110, !tbaa !54
  %cmp71 = icmp ugt i8 %11, 1, !dbg !111
  br i1 %cmp71, label %if.then.73, label %while.cond.212.preheader, !dbg !112

if.then.73:                                       ; preds = %if.then.63
  %tobool74 = icmp eq i8** %ptr, null, !dbg !113
  br i1 %tobool74, label %cleanup.276, label %if.then.75, !dbg !116

if.then.75:                                       ; preds = %if.then.73
  store i8* %incdec.ptr10, i8** %ptr, align 8, !dbg !117, !tbaa !92
  br label %cleanup.276, !dbg !118

while.cond.87.preheader.loopexit:                 ; preds = %while.cond.80.while.cond.80_crit_edge
  %.pre.lcssa = phi i8 [ %.pre, %while.cond.80.while.cond.80_crit_edge ]
  %incdec.ptr85431.lcssa = phi i8* [ %incdec.ptr85431, %while.cond.80.while.cond.80_crit_edge ]
  br label %while.cond.87.preheader, !dbg !119

while.cond.87.preheader:                          ; preds = %while.cond.87.preheader.loopexit, %if.then
  %str.addr.1.lcssa = phi i8* [ %incdec.ptr10, %if.then ], [ %incdec.ptr85431.lcssa, %while.cond.87.preheader.loopexit ]
  %.lcssa410 = phi i8 [ %5, %if.then ], [ %.pre.lcssa, %while.cond.87.preheader.loopexit ]
  %idxprom94.422 = zext i8 %.lcssa410 to i64, !dbg !119
  %arrayidx95.423 = getelementptr [256 x i32], [256 x i32]* @_Py_ctype_table, i64 0, i64 %idxprom94.422, !dbg !119
  %12 = load i32, i32* %arrayidx95.423, align 4, !dbg !119, !tbaa !60
  %and96.424 = and i32 %12, 8, !dbg !119
  %tobool97.425 = icmp eq i32 %and96.424, 0, !dbg !122
  br i1 %tobool97.425, label %while.end.100, label %while.cond.87.while.cond.87_crit_edge.preheader, !dbg !122

while.cond.87.while.cond.87_crit_edge.preheader:  ; preds = %while.cond.87.preheader
  br label %while.cond.87.while.cond.87_crit_edge, !dbg !123

while.cond.80.while.cond.80_crit_edge:            ; preds = %while.cond.80.while.cond.80_crit_edge.lr.ph, %while.cond.80.while.cond.80_crit_edge
  %incdec.ptr85431 = phi i8* [ %incdec.ptr85.430, %while.cond.80.while.cond.80_crit_edge.lr.ph ], [ %incdec.ptr85, %while.cond.80.while.cond.80_crit_edge ]
  %.pre = load i8, i8* %incdec.ptr85431, align 1, !dbg !124, !tbaa !54
  %cmp82 = icmp eq i8 %.pre, 48, !dbg !125
  %incdec.ptr85 = getelementptr i8, i8* %incdec.ptr85431, i64 1, !dbg !76
  tail call void @llvm.dbg.value(metadata i8* %incdec.ptr85, i64 0, metadata !18, metadata !48), !dbg !49
  br i1 %cmp82, label %while.cond.80.while.cond.80_crit_edge, label %while.cond.87.preheader.loopexit, !dbg !80

while.cond.87.while.cond.87_crit_edge:            ; preds = %while.cond.87.while.cond.87_crit_edge.preheader, %while.cond.87.while.cond.87_crit_edge
  %str.addr.1.lcssa.pn = phi i8* [ %incdec.ptr99427, %while.cond.87.while.cond.87_crit_edge ], [ %str.addr.1.lcssa, %while.cond.87.while.cond.87_crit_edge.preheader ]
  %incdec.ptr99427 = getelementptr i8, i8* %str.addr.1.lcssa.pn, i64 1, !dbg !123
  %.pre400 = load i8, i8* %incdec.ptr99427, align 1, !dbg !119, !tbaa !54
  %idxprom94 = zext i8 %.pre400 to i64, !dbg !119
  %arrayidx95 = getelementptr [256 x i32], [256 x i32]* @_Py_ctype_table, i64 0, i64 %idxprom94, !dbg !119
  %13 = load i32, i32* %arrayidx95, align 4, !dbg !119, !tbaa !60
  %and96 = and i32 %13, 8, !dbg !119
  %tobool97 = icmp eq i32 %and96, 0, !dbg !122
  br i1 %tobool97, label %while.end.100.loopexit, label %while.cond.87.while.cond.87_crit_edge, !dbg !122

while.end.100.loopexit:                           ; preds = %while.cond.87.while.cond.87_crit_edge
  %incdec.ptr99427.lcssa = phi i8* [ %incdec.ptr99427, %while.cond.87.while.cond.87_crit_edge ]
  br label %while.end.100, !dbg !126

while.end.100:                                    ; preds = %while.end.100.loopexit, %while.cond.87.preheader
  %str.addr.2.lcssa = phi i8* [ %str.addr.1.lcssa, %while.cond.87.preheader ], [ %incdec.ptr99427.lcssa, %while.end.100.loopexit ]
  %tobool101 = icmp eq i8** %ptr, null, !dbg !126
  br i1 %tobool101, label %cleanup.276, label %if.then.102, !dbg !128

if.then.102:                                      ; preds = %while.end.100
  store i8* %str.addr.2.lcssa, i8** %ptr, align 8, !dbg !129, !tbaa !92
  br label %cleanup.276, !dbg !130

sw.bb.109:                                        ; preds = %while.end
  %cmp111 = icmp eq i8 %4, 48, !dbg !131
  br i1 %cmp111, label %if.then.113, label %while.cond.212.preheader, !dbg !133

if.then.113:                                      ; preds = %sw.bb.109
  %incdec.ptr114 = getelementptr i8, i8* %str.addr.0.lcssa, i64 1, !dbg !134
  tail call void @llvm.dbg.value(metadata i8* %incdec.ptr114, i64 0, metadata !18, metadata !48), !dbg !49
  %14 = load i8, i8* %incdec.ptr114, align 1, !dbg !136, !tbaa !54
  switch i8 %14, label %while.cond.212.preheader [
    i8 120, label %if.then.122
    i8 88, label %if.then.122
  ], !dbg !138

if.then.122:                                      ; preds = %if.then.113, %if.then.113
  %arrayidx123 = getelementptr i8, i8* %str.addr.0.lcssa, i64 2, !dbg !139
  %15 = load i8, i8* %arrayidx123, align 1, !dbg !139, !tbaa !54
  %idxprom127 = zext i8 %15 to i64, !dbg !142
  %arrayidx128 = getelementptr [256 x i8], [256 x i8]* @_PyLong_DigitValue, i64 0, i64 %idxprom127, !dbg !142
  %16 = load i8, i8* %arrayidx128, align 1, !dbg !142, !tbaa !54
  %cmp130 = icmp ugt i8 %16, 15, !dbg !143
  br i1 %cmp130, label %if.then.132, label %while.cond.212.preheader, !dbg !144

if.then.132:                                      ; preds = %if.then.122
  %tobool133 = icmp eq i8** %ptr, null, !dbg !145
  br i1 %tobool133, label %cleanup.276, label %if.then.134, !dbg !148

if.then.134:                                      ; preds = %if.then.132
  store i8* %incdec.ptr114, i8** %ptr, align 8, !dbg !149, !tbaa !92
  br label %cleanup.276, !dbg !150

sw.bb.140:                                        ; preds = %while.end
  %cmp142 = icmp eq i8 %4, 48, !dbg !151
  br i1 %cmp142, label %if.then.144, label %while.cond.212.preheader, !dbg !153

if.then.144:                                      ; preds = %sw.bb.140
  %incdec.ptr145 = getelementptr i8, i8* %str.addr.0.lcssa, i64 1, !dbg !154
  tail call void @llvm.dbg.value(metadata i8* %incdec.ptr145, i64 0, metadata !18, metadata !48), !dbg !49
  %17 = load i8, i8* %incdec.ptr145, align 1, !dbg !156, !tbaa !54
  switch i8 %17, label %while.cond.212.preheader [
    i8 111, label %if.then.153
    i8 79, label %if.then.153
  ], !dbg !158

if.then.153:                                      ; preds = %if.then.144, %if.then.144
  %arrayidx154 = getelementptr i8, i8* %str.addr.0.lcssa, i64 2, !dbg !159
  %18 = load i8, i8* %arrayidx154, align 1, !dbg !159, !tbaa !54
  %idxprom158 = zext i8 %18 to i64, !dbg !162
  %arrayidx159 = getelementptr [256 x i8], [256 x i8]* @_PyLong_DigitValue, i64 0, i64 %idxprom158, !dbg !162
  %19 = load i8, i8* %arrayidx159, align 1, !dbg !162, !tbaa !54
  %cmp161 = icmp ugt i8 %19, 7, !dbg !163
  br i1 %cmp161, label %if.then.163, label %while.cond.212.preheader, !dbg !164

if.then.163:                                      ; preds = %if.then.153
  %tobool164 = icmp eq i8** %ptr, null, !dbg !165
  br i1 %tobool164, label %cleanup.276, label %if.then.165, !dbg !168

if.then.165:                                      ; preds = %if.then.163
  store i8* %incdec.ptr145, i8** %ptr, align 8, !dbg !169, !tbaa !92
  br label %cleanup.276, !dbg !170

sw.bb.171:                                        ; preds = %while.end
  %cmp173 = icmp eq i8 %4, 48, !dbg !171
  br i1 %cmp173, label %if.then.175, label %while.cond.212.preheader, !dbg !173

if.then.175:                                      ; preds = %sw.bb.171
  %incdec.ptr176 = getelementptr i8, i8* %str.addr.0.lcssa, i64 1, !dbg !174
  tail call void @llvm.dbg.value(metadata i8* %incdec.ptr176, i64 0, metadata !18, metadata !48), !dbg !49
  %20 = load i8, i8* %incdec.ptr176, align 1, !dbg !176, !tbaa !54
  switch i8 %20, label %while.cond.212.preheader [
    i8 98, label %if.then.184
    i8 66, label %if.then.184
  ], !dbg !178

if.then.184:                                      ; preds = %if.then.175, %if.then.175
  %arrayidx185 = getelementptr i8, i8* %str.addr.0.lcssa, i64 2, !dbg !179
  %21 = load i8, i8* %arrayidx185, align 1, !dbg !179, !tbaa !54
  %idxprom189 = zext i8 %21 to i64, !dbg !182
  %arrayidx190 = getelementptr [256 x i8], [256 x i8]* @_PyLong_DigitValue, i64 0, i64 %idxprom189, !dbg !182
  %22 = load i8, i8* %arrayidx190, align 1, !dbg !182, !tbaa !54
  %cmp192 = icmp ugt i8 %22, 1, !dbg !183
  br i1 %cmp192, label %if.then.194, label %while.cond.212.preheader, !dbg !184

while.cond.212.preheader:                         ; preds = %sw.epilog, %sw.bb.171, %sw.bb.140, %sw.bb.109, %sw.bb, %if.then.113, %if.then.144, %if.then.175, %if.then.17, %if.then.39, %if.then.63, %if.then.122, %if.then.153, %if.then.184
  %23 = phi i8 [ %4, %sw.bb.171 ], [ %4, %sw.bb.140 ], [ %4, %sw.bb.109 ], [ %4, %sw.bb ], [ %14, %if.then.113 ], [ %17, %if.then.144 ], [ %20, %if.then.175 ], [ %6, %if.then.17 ], [ %8, %if.then.39 ], [ %10, %if.then.63 ], [ %15, %if.then.122 ], [ %18, %if.then.153 ], [ %21, %if.then.184 ], [ %4, %sw.epilog ]
  %base.addr.0383.ph = phi i32 [ 2, %sw.bb.171 ], [ 8, %sw.bb.140 ], [ 16, %sw.bb.109 ], [ 10, %sw.bb ], [ 16, %if.then.113 ], [ 8, %if.then.144 ], [ 2, %if.then.175 ], [ 16, %if.then.17 ], [ 8, %if.then.39 ], [ 2, %if.then.63 ], [ 16, %if.then.122 ], [ 8, %if.then.153 ], [ 2, %if.then.184 ], [ %base, %sw.epilog ]
  %str.addr.4.ph = phi i8* [ %str.addr.0.lcssa, %sw.bb.171 ], [ %str.addr.0.lcssa, %sw.bb.140 ], [ %str.addr.0.lcssa, %sw.bb.109 ], [ %str.addr.0.lcssa, %sw.bb ], [ %incdec.ptr114, %if.then.113 ], [ %incdec.ptr145, %if.then.144 ], [ %incdec.ptr176, %if.then.175 ], [ %arrayidx18, %if.then.17 ], [ %arrayidx40, %if.then.39 ], [ %arrayidx64, %if.then.63 ], [ %arrayidx123, %if.then.122 ], [ %arrayidx154, %if.then.153 ], [ %arrayidx185, %if.then.184 ], [ %str.addr.0.lcssa, %sw.epilog ]
  %cmp214.417 = icmp eq i8 %23, 48, !dbg !185
  br i1 %cmp214.417, label %while.cond.212.while.cond.212_crit_edge.preheader, label %while.end.218, !dbg !186

while.cond.212.while.cond.212_crit_edge.preheader: ; preds = %while.cond.212.preheader
  br label %while.cond.212.while.cond.212_crit_edge, !dbg !187

if.then.194:                                      ; preds = %if.then.184
  %tobool195 = icmp eq i8** %ptr, null, !dbg !188
  br i1 %tobool195, label %cleanup.276, label %if.then.196, !dbg !191

if.then.196:                                      ; preds = %if.then.194
  store i8* %incdec.ptr176, i8** %ptr, align 8, !dbg !192, !tbaa !92
  br label %cleanup.276, !dbg !193

sw.epilog:                                        ; preds = %while.end
  %base.addr.0.off = add i32 %base, -2, !dbg !194
  %24 = icmp ugt i32 %base.addr.0.off, 34, !dbg !194
  br i1 %24, label %if.then.207, label %while.cond.212.preheader, !dbg !194

if.then.207:                                      ; preds = %sw.epilog
  %tobool208 = icmp eq i8** %ptr, null, !dbg !196
  br i1 %tobool208, label %cleanup.276, label %if.then.209, !dbg !199

if.then.209:                                      ; preds = %if.then.207
  store i8* %str.addr.0.lcssa, i8** %ptr, align 8, !dbg !200, !tbaa !92
  br label %cleanup.276, !dbg !201

while.cond.212.while.cond.212_crit_edge:          ; preds = %while.cond.212.while.cond.212_crit_edge.preheader, %while.cond.212.while.cond.212_crit_edge
  %str.addr.4.ph.pn = phi i8* [ %incdec.ptr217419, %while.cond.212.while.cond.212_crit_edge ], [ %str.addr.4.ph, %while.cond.212.while.cond.212_crit_edge.preheader ]
  %incdec.ptr217419 = getelementptr i8, i8* %str.addr.4.ph.pn, i64 1, !dbg !187
  %.pre401 = load i8, i8* %incdec.ptr217419, align 1, !dbg !202, !tbaa !54
  %cmp214 = icmp eq i8 %.pre401, 48, !dbg !185
  br i1 %cmp214, label %while.cond.212.while.cond.212_crit_edge, label %while.end.218.loopexit, !dbg !186

while.end.218.loopexit:                           ; preds = %while.cond.212.while.cond.212_crit_edge
  %.pre401.lcssa = phi i8 [ %.pre401, %while.cond.212.while.cond.212_crit_edge ]
  %incdec.ptr217419.lcssa = phi i8* [ %incdec.ptr217419, %while.cond.212.while.cond.212_crit_edge ]
  br label %while.end.218, !dbg !203

while.end.218:                                    ; preds = %while.end.218.loopexit, %while.cond.212.preheader
  %str.addr.4.lcssa = phi i8* [ %str.addr.4.ph, %while.cond.212.preheader ], [ %incdec.ptr217419.lcssa, %while.end.218.loopexit ]
  %.lcssa409 = phi i8 [ %23, %while.cond.212.preheader ], [ %.pre401.lcssa, %while.end.218.loopexit ]
  %idxprom219 = sext i32 %base.addr.0383.ph to i64, !dbg !203
  tail call void @llvm.dbg.value(metadata i32 %26, i64 0, metadata !23, metadata !48), !dbg !204
  %idxprom225.386 = zext i8 %.lcssa409 to i64, !dbg !205
  %arrayidx226.387 = getelementptr [256 x i8], [256 x i8]* @_PyLong_DigitValue, i64 0, i64 %idxprom225.386, !dbg !205
  %25 = load i8, i8* %arrayidx226.387, align 1, !dbg !205, !tbaa !54
  %conv227.388 = zext i8 %25 to i32, !dbg !205
  tail call void @llvm.dbg.value(metadata i32 %conv227.388, i64 0, metadata !22, metadata !48), !dbg !206
  %cmp228.389 = icmp slt i32 %conv227.388, %base.addr.0383.ph, !dbg !207
  br i1 %cmp228.389, label %while.body.230.lr.ph, label %while.end.257, !dbg !208

while.body.230.lr.ph:                             ; preds = %while.end.218
  %arrayidx220 = getelementptr [37 x i32], [37 x i32]* @digitlimit, i64 0, i64 %idxprom219, !dbg !203
  %26 = load i32, i32* %arrayidx220, align 4, !dbg !203, !tbaa !60
  %arrayidx242 = getelementptr [37 x i64], [37 x i64]* @smallmax, i64 0, i64 %idxprom219, !dbg !209
  br label %while.body.230, !dbg !208

while.body.230:                                   ; preds = %while.body.230.lr.ph, %if.end.255
  %27 = phi i8 [ %.lcssa409, %while.body.230.lr.ph ], [ %30, %if.end.255 ]
  %28 = phi i8 [ %25, %while.body.230.lr.ph ], [ %31, %if.end.255 ]
  %ovlimit.0392 = phi i32 [ %26, %while.body.230.lr.ph ], [ %dec, %if.end.255 ]
  %str.addr.5391 = phi i8* [ %str.addr.4.lcssa, %while.body.230.lr.ph ], [ %incdec.ptr256, %if.end.255 ]
  %result.0390 = phi i64 [ 0, %while.body.230.lr.ph ], [ %result.2, %if.end.255 ]
  %cmp231 = icmp sgt i32 %ovlimit.0392, 0, !dbg !211
  br i1 %cmp231, label %if.then.233, label %if.else.236, !dbg !212

if.then.233:                                      ; preds = %while.body.230
  %mul = mul i64 %result.0390, %idxprom219, !dbg !213
  %conv235 = zext i8 %28 to i64, !dbg !214
  %add = add i64 %conv235, %mul, !dbg !215
  tail call void @llvm.dbg.value(metadata i64 %add, i64 0, metadata !21, metadata !48), !dbg !52
  br label %if.end.255, !dbg !216

if.else.236:                                      ; preds = %while.body.230
  %cmp237 = icmp slt i32 %ovlimit.0392, 0, !dbg !217
  br i1 %cmp237, label %overflowed, label %if.end.240, !dbg !219

if.end.240:                                       ; preds = %if.else.236
  %29 = load i64, i64* %arrayidx242, align 8, !dbg !209, !tbaa !220
  %cmp243 = icmp ugt i64 %result.0390, %29, !dbg !222
  br i1 %cmp243, label %overflowed, label %cleanup, !dbg !223

cleanup:                                          ; preds = %if.end.240
  %mul248 = mul i64 %result.0390, %idxprom219, !dbg !224
  tail call void @llvm.dbg.value(metadata i64 %mul248, i64 0, metadata !21, metadata !48), !dbg !52
  %conv249 = zext i8 %28 to i64, !dbg !225
  %add250 = add i64 %conv249, %mul248, !dbg !226
  tail call void @llvm.dbg.value(metadata i64 %add250, i64 0, metadata !24, metadata !48), !dbg !227
  %cmp251 = icmp ult i64 %add250, %mul248, !dbg !228
  br i1 %cmp251, label %overflowed, label %if.end.255

if.end.255:                                       ; preds = %cleanup, %if.then.233
  %result.2 = phi i64 [ %add, %if.then.233 ], [ %add250, %cleanup ]
  %incdec.ptr256 = getelementptr i8, i8* %str.addr.5391, i64 1, !dbg !230
  tail call void @llvm.dbg.value(metadata i8* %incdec.ptr256, i64 0, metadata !18, metadata !48), !dbg !49
  %dec = add i32 %ovlimit.0392, -1, !dbg !231
  tail call void @llvm.dbg.value(metadata i32 %dec, i64 0, metadata !23, metadata !48), !dbg !204
  %30 = load i8, i8* %incdec.ptr256, align 1, !dbg !232, !tbaa !54
  %idxprom225 = zext i8 %30 to i64, !dbg !205
  %arrayidx226 = getelementptr [256 x i8], [256 x i8]* @_PyLong_DigitValue, i64 0, i64 %idxprom225, !dbg !205
  %31 = load i8, i8* %arrayidx226, align 1, !dbg !205, !tbaa !54
  %conv227 = zext i8 %31 to i32, !dbg !205
  tail call void @llvm.dbg.value(metadata i32 %conv227, i64 0, metadata !22, metadata !48), !dbg !206
  %cmp228 = icmp slt i32 %conv227, %base.addr.0383.ph, !dbg !207
  br i1 %cmp228, label %while.body.230, label %while.end.257.loopexit, !dbg !208

while.end.257.loopexit:                           ; preds = %if.end.255
  %incdec.ptr256.lcssa = phi i8* [ %incdec.ptr256, %if.end.255 ]
  %result.2.lcssa = phi i64 [ %result.2, %if.end.255 ]
  br label %while.end.257, !dbg !235

while.end.257:                                    ; preds = %while.end.257.loopexit, %while.end.218
  %str.addr.5.lcssa = phi i8* [ %str.addr.4.lcssa, %while.end.218 ], [ %incdec.ptr256.lcssa, %while.end.257.loopexit ]
  %result.0.lcssa = phi i64 [ 0, %while.end.218 ], [ %result.2.lcssa, %while.end.257.loopexit ]
  %tobool258 = icmp eq i8** %ptr, null, !dbg !235
  br i1 %tobool258, label %cleanup.276, label %if.then.259, !dbg !237

if.then.259:                                      ; preds = %while.end.257
  store i8* %str.addr.5.lcssa, i8** %ptr, align 8, !dbg !238, !tbaa !92
  br label %cleanup.276, !dbg !239

overflowed:                                       ; preds = %cleanup, %if.end.240, %if.else.236
  %str.addr.5391.lcssa = phi i8* [ %str.addr.5391, %cleanup ], [ %str.addr.5391, %if.end.240 ], [ %str.addr.5391, %if.else.236 ]
  %.lcssa = phi i8 [ %27, %cleanup ], [ %27, %if.end.240 ], [ %27, %if.else.236 ]
  %tobool261 = icmp eq i8** %ptr, null, !dbg !240
  br i1 %tobool261, label %if.end.275, label %while.cond.263.preheader, !dbg !242

while.cond.263.preheader:                         ; preds = %overflowed
  %idxprom267.411 = zext i8 %.lcssa to i64, !dbg !243
  %arrayidx268.412 = getelementptr [256 x i8], [256 x i8]* @_PyLong_DigitValue, i64 0, i64 %idxprom267.411, !dbg !243
  %32 = load i8, i8* %arrayidx268.412, align 1, !dbg !243, !tbaa !54
  %conv269.413 = zext i8 %32 to i32, !dbg !243
  %cmp270.414 = icmp slt i32 %conv269.413, %base.addr.0383.ph, !dbg !245
  br i1 %cmp270.414, label %while.cond.263.while.cond.263_crit_edge.preheader, label %while.end.274, !dbg !246

while.cond.263.while.cond.263_crit_edge.preheader: ; preds = %while.cond.263.preheader
  br label %while.cond.263.while.cond.263_crit_edge, !dbg !247

while.cond.263.while.cond.263_crit_edge:          ; preds = %while.cond.263.while.cond.263_crit_edge.preheader, %while.cond.263.while.cond.263_crit_edge
  %str.addr.5391.pn = phi i8* [ %incdec.ptr273416, %while.cond.263.while.cond.263_crit_edge ], [ %str.addr.5391.lcssa, %while.cond.263.while.cond.263_crit_edge.preheader ]
  %incdec.ptr273416 = getelementptr i8, i8* %str.addr.5391.pn, i64 1, !dbg !247
  %.pre402 = load i8, i8* %incdec.ptr273416, align 1, !dbg !248, !tbaa !54
  %idxprom267 = zext i8 %.pre402 to i64, !dbg !243
  %arrayidx268 = getelementptr [256 x i8], [256 x i8]* @_PyLong_DigitValue, i64 0, i64 %idxprom267, !dbg !243
  %33 = load i8, i8* %arrayidx268, align 1, !dbg !243, !tbaa !54
  %conv269 = zext i8 %33 to i32, !dbg !243
  %cmp270 = icmp slt i32 %conv269, %base.addr.0383.ph, !dbg !245
  br i1 %cmp270, label %while.cond.263.while.cond.263_crit_edge, label %while.end.274.loopexit, !dbg !246

while.end.274.loopexit:                           ; preds = %while.cond.263.while.cond.263_crit_edge
  %incdec.ptr273416.lcssa = phi i8* [ %incdec.ptr273416, %while.cond.263.while.cond.263_crit_edge ]
  br label %while.end.274, !dbg !251

while.end.274:                                    ; preds = %while.end.274.loopexit, %while.cond.263.preheader
  %str.addr.6.lcssa = phi i8* [ %str.addr.5391.lcssa, %while.cond.263.preheader ], [ %incdec.ptr273416.lcssa, %while.end.274.loopexit ]
  store i8* %str.addr.6.lcssa, i8** %ptr, align 8, !dbg !251, !tbaa !92
  br label %if.end.275, !dbg !252

if.end.275:                                       ; preds = %overflowed, %while.end.274
  %call = tail call i32* @__errno_location() #2, !dbg !253
  store i32 34, i32* %call, align 4, !dbg !254, !tbaa !60
  br label %cleanup.276, !dbg !255

cleanup.276:                                      ; preds = %if.then.259, %while.end.257, %if.then.209, %if.then.207, %if.then.196, %if.then.194, %if.then.165, %if.then.163, %if.then.134, %if.then.132, %if.then.102, %while.end.100, %if.then.75, %if.then.73, %if.then.51, %if.then.49, %if.then.29, %if.then.27, %if.end.275
  %retval.0 = phi i64 [ -1, %if.end.275 ], [ 0, %if.then.27 ], [ 0, %if.then.29 ], [ 0, %if.then.49 ], [ 0, %if.then.51 ], [ 0, %if.then.73 ], [ 0, %if.then.75 ], [ 0, %while.end.100 ], [ 0, %if.then.102 ], [ 0, %if.then.132 ], [ 0, %if.then.134 ], [ 0, %if.then.163 ], [ 0, %if.then.165 ], [ 0, %if.then.194 ], [ 0, %if.then.196 ], [ 0, %if.then.207 ], [ 0, %if.then.209 ], [ %result.0.lcssa, %while.end.257 ], [ %result.0.lcssa, %if.then.259 ]
  ret i64 %retval.0, !dbg !256
}

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #1

; Function Attrs: nounwind uwtable
define i64 @PyOS_strtol(i8* %str, i8** %ptr, i32 %base) #0 {
entry:
  tail call void @llvm.dbg.value(metadata i8* %str, i64 0, metadata !32, metadata !48), !dbg !257
  tail call void @llvm.dbg.value(metadata i8** %ptr, i64 0, metadata !33, metadata !48), !dbg !258
  tail call void @llvm.dbg.value(metadata i32 %base, i64 0, metadata !34, metadata !48), !dbg !259
  %0 = load i8, i8* %str, align 1, !dbg !260, !tbaa !54
  %tobool.46 = icmp eq i8 %0, 0, !dbg !260
  br i1 %tobool.46, label %if.end, label %land.rhs.preheader, !dbg !261

land.rhs.preheader:                               ; preds = %entry
  br label %land.rhs, !dbg !262

land.rhs:                                         ; preds = %land.rhs.preheader, %while.body
  %.pr = phi i8 [ %2, %while.body ], [ %0, %land.rhs.preheader ], !dbg !264
  %str.addr.047 = phi i8* [ %incdec.ptr, %while.body ], [ %str, %land.rhs.preheader ]
  %idxprom = zext i8 %.pr to i64, !dbg !262
  %arrayidx = getelementptr [256 x i32], [256 x i32]* @_Py_ctype_table, i64 0, i64 %idxprom, !dbg !262
  %1 = load i32, i32* %arrayidx, align 4, !dbg !262, !tbaa !60
  %and6 = and i32 %1, 8, !dbg !262
  %tobool7 = icmp eq i32 %and6, 0, !dbg !261
  br i1 %tobool7, label %while.end, label %while.body, !dbg !265

while.body:                                       ; preds = %land.rhs
  %incdec.ptr = getelementptr i8, i8* %str.addr.047, i64 1, !dbg !267
  tail call void @llvm.dbg.value(metadata i8* %incdec.ptr, i64 0, metadata !32, metadata !48), !dbg !257
  %2 = load i8, i8* %incdec.ptr, align 1, !dbg !260, !tbaa !54
  %tobool = icmp eq i8 %2, 0, !dbg !260
  br i1 %tobool, label %if.end.loopexit, label %land.rhs, !dbg !261

while.end:                                        ; preds = %land.rhs
  %str.addr.047.lcssa = phi i8* [ %str.addr.047, %land.rhs ]
  %.pr.lcssa = phi i8 [ %.pr, %land.rhs ]
  tail call void @llvm.dbg.value(metadata i8 %.pr, i64 0, metadata !37, metadata !48), !dbg !268
  switch i8 %.pr.lcssa, label %if.end [
    i8 43, label %if.then
    i8 45, label %if.then
  ], !dbg !269

if.then:                                          ; preds = %while.end, %while.end
  %incdec.ptr13 = getelementptr i8, i8* %str.addr.047.lcssa, i64 1, !dbg !271
  tail call void @llvm.dbg.value(metadata i8* %incdec.ptr13, i64 0, metadata !32, metadata !48), !dbg !257
  br label %if.end, !dbg !272

if.end.loopexit:                                  ; preds = %while.body
  %incdec.ptr.lcssa = phi i8* [ %incdec.ptr, %while.body ]
  br label %if.end, !dbg !273

if.end:                                           ; preds = %if.end.loopexit, %entry, %while.end, %if.then
  %3 = phi i8 [ %.pr.lcssa, %if.then ], [ %.pr.lcssa, %while.end ], [ 0, %entry ], [ 0, %if.end.loopexit ]
  %str.addr.1 = phi i8* [ %incdec.ptr13, %if.then ], [ %str.addr.047.lcssa, %while.end ], [ %str, %entry ], [ %incdec.ptr.lcssa, %if.end.loopexit ]
  %call = tail call i64 @PyOS_strtoul(i8* %str.addr.1, i8** %ptr, i32 %base), !dbg !273
  tail call void @llvm.dbg.value(metadata i64 %call, i64 0, metadata !36, metadata !48), !dbg !274
  %cmp14 = icmp sgt i64 %call, -1, !dbg !275
  %cmp18 = icmp eq i8 %3, 45, !dbg !277
  br i1 %cmp14, label %if.then.16, label %if.else, !dbg !280

if.then.16:                                       ; preds = %if.end
  tail call void @llvm.dbg.value(metadata i64 %call, i64 0, metadata !35, metadata !48), !dbg !281
  %sub = sub i64 0, %call, !dbg !282
  tail call void @llvm.dbg.value(metadata i64 %sub, i64 0, metadata !35, metadata !48), !dbg !281
  %sub.call = select i1 %cmp18, i64 %sub, i64 %call, !dbg !283
  ret i64 %sub.call, !dbg !283

if.else:                                          ; preds = %if.end
  %cmp25 = icmp eq i64 %call, -9223372036854775808, !dbg !284
  %or.cond = and i1 %cmp18, %cmp25, !dbg !286
  br i1 %or.cond, label %if.end.31, label %if.else.28, !dbg !286

if.else.28:                                       ; preds = %if.else
  %call29 = tail call i32* @__errno_location() #2, !dbg !287
  store i32 34, i32* %call29, align 4, !dbg !289, !tbaa !60
  tail call void @llvm.dbg.value(metadata i64 9223372036854775807, i64 0, metadata !35, metadata !48), !dbg !281
  br label %if.end.31

if.end.31:                                        ; preds = %if.else, %if.else.28
  %result.0 = phi i64 [ 9223372036854775807, %if.else.28 ], [ -9223372036854775808, %if.else ]
  ret i64 %result.0, !dbg !290
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!45, !46}
!llvm.ident = !{!47}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.7.0 (tags/RELEASE_370/final)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !3, subprograms: !9, globals: !38)
!1 = !DIFile(filename: "Python/mystrtoul.c", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!2 = !{}
!3 = !{!4, !5, !7, !8}
!4 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64, align: 64)
!6 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!7 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!8 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!9 = !{!10, !28}
!10 = !DISubprogram(name: "PyOS_strtoul", scope: !1, file: !1, line: 95, type: !11, isLocal: false, isDefinition: true, scopeLine: 96, flags: DIFlagPrototyped, isOptimized: true, function: i64 (i8*, i8**, i32)* @PyOS_strtoul, variables: !17)
!11 = !DISubroutineType(types: !12)
!12 = !{!7, !13, !15, !16}
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64, align: 64)
!14 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6)
!15 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64, align: 64)
!16 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!17 = !{!18, !19, !20, !21, !22, !23, !24}
!18 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "str", arg: 1, scope: !10, file: !1, line: 95, type: !13)
!19 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ptr", arg: 2, scope: !10, file: !1, line: 95, type: !15)
!20 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "base", arg: 3, scope: !10, file: !1, line: 95, type: !16)
!21 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "result", scope: !10, file: !1, line: 97, type: !7)
!22 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "c", scope: !10, file: !1, line: 98, type: !16)
!23 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ovlimit", scope: !10, file: !1, line: 99, type: !16)
!24 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "temp_result", scope: !25, file: !1, line: 216, type: !7)
!25 = distinct !DILexicalBlock(scope: !26, file: !1, line: 215, column: 14)
!26 = distinct !DILexicalBlock(scope: !27, file: !1, line: 213, column: 13)
!27 = distinct !DILexicalBlock(scope: !10, file: !1, line: 212, column: 64)
!28 = !DISubprogram(name: "PyOS_strtol", scope: !1, file: !1, line: 263, type: !29, isLocal: false, isDefinition: true, scopeLine: 264, flags: DIFlagPrototyped, isOptimized: true, function: i64 (i8*, i8**, i32)* @PyOS_strtol, variables: !31)
!29 = !DISubroutineType(types: !30)
!30 = !{!8, !13, !15, !16}
!31 = !{!32, !33, !34, !35, !36, !37}
!32 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "str", arg: 1, scope: !28, file: !1, line: 263, type: !13)
!33 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ptr", arg: 2, scope: !28, file: !1, line: 263, type: !15)
!34 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "base", arg: 3, scope: !28, file: !1, line: 263, type: !16)
!35 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "result", scope: !28, file: !1, line: 265, type: !8)
!36 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "uresult", scope: !28, file: !1, line: 266, type: !7)
!37 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "sign", scope: !28, file: !1, line: 267, type: !6)
!38 = !{!39, !43}
!39 = !DIGlobalVariable(name: "digitlimit", scope: !0, file: !1, line: 72, type: !40, isLocal: true, isDefinition: true, variable: [37 x i32]* @digitlimit)
!40 = !DICompositeType(tag: DW_TAG_array_type, baseType: !16, size: 1184, align: 32, elements: !41)
!41 = !{!42}
!42 = !DISubrange(count: 37)
!43 = !DIGlobalVariable(name: "smallmax", scope: !0, file: !1, line: 20, type: !44, isLocal: true, isDefinition: true, variable: [37 x i64]* @smallmax)
!44 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 2368, align: 64, elements: !41)
!45 = !{i32 2, !"Dwarf Version", i32 4}
!46 = !{i32 2, !"Debug Info Version", i32 3}
!47 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!48 = !DIExpression()
!49 = !DILocation(line: 95, column: 26, scope: !10)
!50 = !DILocation(line: 95, column: 38, scope: !10)
!51 = !DILocation(line: 95, column: 47, scope: !10)
!52 = !DILocation(line: 97, column: 19, scope: !10)
!53 = !DILocation(line: 102, column: 12, scope: !10)
!54 = !{!55, !55, i64 0}
!55 = !{!"omnipotent char", !56, i64 0}
!56 = !{!"Simple C/C++ TBAA"}
!57 = !DILocation(line: 102, column: 17, scope: !10)
!58 = !DILocation(line: 102, column: 20, scope: !59)
!59 = !DILexicalBlockFile(scope: !10, file: !1, discriminator: 2)
!60 = !{!61, !61, i64 0}
!61 = !{!"int", !55, i64 0}
!62 = !DILocation(line: 102, column: 5, scope: !63)
!63 = !DILexicalBlockFile(scope: !10, file: !1, discriminator: 3)
!64 = !DILocation(line: 103, column: 9, scope: !10)
!65 = !DILocation(line: 106, column: 5, scope: !10)
!66 = !DILocation(line: 108, column: 13, scope: !67)
!67 = distinct !DILexicalBlock(scope: !68, file: !1, line: 108, column: 13)
!68 = distinct !DILexicalBlock(scope: !10, file: !1, line: 106, column: 19)
!69 = !DILocation(line: 108, column: 18, scope: !67)
!70 = !DILocation(line: 108, column: 13, scope: !68)
!71 = !DILocation(line: 109, column: 13, scope: !72)
!72 = distinct !DILexicalBlock(scope: !67, file: !1, line: 108, column: 26)
!73 = !DILocation(line: 110, column: 17, scope: !74)
!74 = distinct !DILexicalBlock(scope: !72, file: !1, line: 110, column: 17)
!75 = !DILocation(line: 110, column: 29, scope: !74)
!76 = !DILocation(line: 140, column: 21, scope: !77)
!77 = distinct !DILexicalBlock(scope: !78, file: !1, line: 137, column: 20)
!78 = distinct !DILexicalBlock(scope: !79, file: !1, line: 128, column: 24)
!79 = distinct !DILexicalBlock(scope: !74, file: !1, line: 119, column: 24)
!80 = !DILocation(line: 139, column: 17, scope: !77)
!81 = !DILocation(line: 112, column: 40, scope: !82)
!82 = distinct !DILexicalBlock(scope: !83, file: !1, line: 112, column: 21)
!83 = distinct !DILexicalBlock(scope: !74, file: !1, line: 110, column: 45)
!84 = !DILocation(line: 112, column: 21, scope: !82)
!85 = !DILocation(line: 112, column: 61, scope: !82)
!86 = !DILocation(line: 112, column: 21, scope: !83)
!87 = !DILocation(line: 113, column: 25, scope: !88)
!88 = distinct !DILexicalBlock(scope: !89, file: !1, line: 113, column: 25)
!89 = distinct !DILexicalBlock(scope: !82, file: !1, line: 112, column: 68)
!90 = !DILocation(line: 113, column: 25, scope: !89)
!91 = !DILocation(line: 114, column: 30, scope: !88)
!92 = !{!93, !93, i64 0}
!93 = !{!"any pointer", !55, i64 0}
!94 = !DILocation(line: 114, column: 25, scope: !88)
!95 = !DILocation(line: 121, column: 40, scope: !96)
!96 = distinct !DILexicalBlock(scope: !97, file: !1, line: 121, column: 21)
!97 = distinct !DILexicalBlock(scope: !79, file: !1, line: 119, column: 52)
!98 = !DILocation(line: 121, column: 21, scope: !96)
!99 = !DILocation(line: 121, column: 61, scope: !96)
!100 = !DILocation(line: 121, column: 21, scope: !97)
!101 = !DILocation(line: 122, column: 25, scope: !102)
!102 = distinct !DILexicalBlock(scope: !103, file: !1, line: 122, column: 25)
!103 = distinct !DILexicalBlock(scope: !96, file: !1, line: 121, column: 67)
!104 = !DILocation(line: 122, column: 25, scope: !103)
!105 = !DILocation(line: 123, column: 30, scope: !102)
!106 = !DILocation(line: 123, column: 25, scope: !102)
!107 = !DILocation(line: 130, column: 40, scope: !108)
!108 = distinct !DILexicalBlock(scope: !109, file: !1, line: 130, column: 21)
!109 = distinct !DILexicalBlock(scope: !78, file: !1, line: 128, column: 52)
!110 = !DILocation(line: 130, column: 21, scope: !108)
!111 = !DILocation(line: 130, column: 61, scope: !108)
!112 = !DILocation(line: 130, column: 21, scope: !109)
!113 = !DILocation(line: 131, column: 25, scope: !114)
!114 = distinct !DILexicalBlock(scope: !115, file: !1, line: 131, column: 25)
!115 = distinct !DILexicalBlock(scope: !108, file: !1, line: 130, column: 67)
!116 = !DILocation(line: 131, column: 25, scope: !115)
!117 = !DILocation(line: 132, column: 30, scope: !114)
!118 = !DILocation(line: 132, column: 25, scope: !114)
!119 = !DILocation(line: 141, column: 24, scope: !120)
!120 = !DILexicalBlockFile(scope: !121, file: !1, discriminator: 2)
!121 = !DILexicalBlockFile(scope: !77, file: !1, discriminator: 1)
!122 = !DILocation(line: 141, column: 17, scope: !77)
!123 = !DILocation(line: 142, column: 21, scope: !77)
!124 = !DILocation(line: 139, column: 24, scope: !77)
!125 = !DILocation(line: 139, column: 29, scope: !77)
!126 = !DILocation(line: 143, column: 21, scope: !127)
!127 = distinct !DILexicalBlock(scope: !77, file: !1, line: 143, column: 21)
!128 = !DILocation(line: 143, column: 21, scope: !77)
!129 = !DILocation(line: 144, column: 26, scope: !127)
!130 = !DILocation(line: 144, column: 21, scope: !127)
!131 = !DILocation(line: 154, column: 18, scope: !132)
!132 = distinct !DILexicalBlock(scope: !68, file: !1, line: 154, column: 13)
!133 = !DILocation(line: 154, column: 13, scope: !68)
!134 = !DILocation(line: 155, column: 13, scope: !135)
!135 = distinct !DILexicalBlock(scope: !132, file: !1, line: 154, column: 26)
!136 = !DILocation(line: 156, column: 17, scope: !137)
!137 = distinct !DILexicalBlock(scope: !135, file: !1, line: 156, column: 17)
!138 = !DILocation(line: 156, column: 29, scope: !137)
!139 = !DILocation(line: 158, column: 40, scope: !140)
!140 = distinct !DILexicalBlock(scope: !141, file: !1, line: 158, column: 21)
!141 = distinct !DILexicalBlock(scope: !137, file: !1, line: 156, column: 45)
!142 = !DILocation(line: 158, column: 21, scope: !140)
!143 = !DILocation(line: 158, column: 61, scope: !140)
!144 = !DILocation(line: 158, column: 21, scope: !141)
!145 = !DILocation(line: 159, column: 25, scope: !146)
!146 = distinct !DILexicalBlock(scope: !147, file: !1, line: 159, column: 25)
!147 = distinct !DILexicalBlock(scope: !140, file: !1, line: 158, column: 68)
!148 = !DILocation(line: 159, column: 25, scope: !147)
!149 = !DILocation(line: 160, column: 30, scope: !146)
!150 = !DILocation(line: 160, column: 25, scope: !146)
!151 = !DILocation(line: 168, column: 18, scope: !152)
!152 = distinct !DILexicalBlock(scope: !68, file: !1, line: 168, column: 13)
!153 = !DILocation(line: 168, column: 13, scope: !68)
!154 = !DILocation(line: 169, column: 13, scope: !155)
!155 = distinct !DILexicalBlock(scope: !152, file: !1, line: 168, column: 26)
!156 = !DILocation(line: 170, column: 17, scope: !157)
!157 = distinct !DILexicalBlock(scope: !155, file: !1, line: 170, column: 17)
!158 = !DILocation(line: 170, column: 29, scope: !157)
!159 = !DILocation(line: 172, column: 40, scope: !160)
!160 = distinct !DILexicalBlock(scope: !161, file: !1, line: 172, column: 21)
!161 = distinct !DILexicalBlock(scope: !157, file: !1, line: 170, column: 45)
!162 = !DILocation(line: 172, column: 21, scope: !160)
!163 = !DILocation(line: 172, column: 61, scope: !160)
!164 = !DILocation(line: 172, column: 21, scope: !161)
!165 = !DILocation(line: 173, column: 25, scope: !166)
!166 = distinct !DILexicalBlock(scope: !167, file: !1, line: 173, column: 25)
!167 = distinct !DILexicalBlock(scope: !160, file: !1, line: 172, column: 67)
!168 = !DILocation(line: 173, column: 25, scope: !167)
!169 = !DILocation(line: 174, column: 30, scope: !166)
!170 = !DILocation(line: 174, column: 25, scope: !166)
!171 = !DILocation(line: 182, column: 17, scope: !172)
!172 = distinct !DILexicalBlock(scope: !68, file: !1, line: 182, column: 12)
!173 = !DILocation(line: 182, column: 12, scope: !68)
!174 = !DILocation(line: 183, column: 13, scope: !175)
!175 = distinct !DILexicalBlock(scope: !172, file: !1, line: 182, column: 25)
!176 = !DILocation(line: 184, column: 17, scope: !177)
!177 = distinct !DILexicalBlock(scope: !175, file: !1, line: 184, column: 17)
!178 = !DILocation(line: 184, column: 29, scope: !177)
!179 = !DILocation(line: 186, column: 40, scope: !180)
!180 = distinct !DILexicalBlock(scope: !181, file: !1, line: 186, column: 21)
!181 = distinct !DILexicalBlock(scope: !177, file: !1, line: 184, column: 45)
!182 = !DILocation(line: 186, column: 21, scope: !180)
!183 = !DILocation(line: 186, column: 61, scope: !180)
!184 = !DILocation(line: 186, column: 21, scope: !181)
!185 = !DILocation(line: 205, column: 17, scope: !10)
!186 = !DILocation(line: 205, column: 5, scope: !10)
!187 = !DILocation(line: 206, column: 9, scope: !10)
!188 = !DILocation(line: 187, column: 25, scope: !189)
!189 = distinct !DILexicalBlock(scope: !190, file: !1, line: 187, column: 25)
!190 = distinct !DILexicalBlock(scope: !180, file: !1, line: 186, column: 67)
!191 = !DILocation(line: 187, column: 25, scope: !190)
!192 = !DILocation(line: 188, column: 30, scope: !189)
!193 = !DILocation(line: 188, column: 25, scope: !189)
!194 = !DILocation(line: 198, column: 18, scope: !195)
!195 = distinct !DILexicalBlock(scope: !10, file: !1, line: 198, column: 9)
!196 = !DILocation(line: 199, column: 13, scope: !197)
!197 = distinct !DILexicalBlock(scope: !198, file: !1, line: 199, column: 13)
!198 = distinct !DILexicalBlock(scope: !195, file: !1, line: 198, column: 32)
!199 = !DILocation(line: 199, column: 13, scope: !198)
!200 = !DILocation(line: 200, column: 18, scope: !197)
!201 = !DILocation(line: 200, column: 13, scope: !197)
!202 = !DILocation(line: 205, column: 12, scope: !10)
!203 = !DILocation(line: 209, column: 15, scope: !10)
!204 = !DILocation(line: 99, column: 9, scope: !10)
!205 = !DILocation(line: 212, column: 17, scope: !10)
!206 = !DILocation(line: 98, column: 9, scope: !10)
!207 = !DILocation(line: 212, column: 56, scope: !10)
!208 = !DILocation(line: 212, column: 5, scope: !10)
!209 = !DILocation(line: 223, column: 26, scope: !210)
!210 = distinct !DILexicalBlock(scope: !25, file: !1, line: 223, column: 17)
!211 = !DILocation(line: 213, column: 21, scope: !26)
!212 = !DILocation(line: 213, column: 13, scope: !27)
!213 = !DILocation(line: 214, column: 29, scope: !26)
!214 = !DILocation(line: 214, column: 38, scope: !26)
!215 = !DILocation(line: 214, column: 36, scope: !26)
!216 = !DILocation(line: 214, column: 13, scope: !26)
!217 = !DILocation(line: 218, column: 25, scope: !218)
!218 = distinct !DILexicalBlock(scope: !25, file: !1, line: 218, column: 17)
!219 = !DILocation(line: 218, column: 17, scope: !25)
!220 = !{!221, !221, i64 0}
!221 = !{!"long", !55, i64 0}
!222 = !DILocation(line: 223, column: 24, scope: !210)
!223 = !DILocation(line: 223, column: 17, scope: !25)
!224 = !DILocation(line: 226, column: 20, scope: !25)
!225 = !DILocation(line: 229, column: 36, scope: !25)
!226 = !DILocation(line: 229, column: 34, scope: !25)
!227 = !DILocation(line: 216, column: 27, scope: !25)
!228 = !DILocation(line: 230, column: 29, scope: !229)
!229 = distinct !DILexicalBlock(scope: !25, file: !1, line: 230, column: 17)
!230 = !DILocation(line: 236, column: 9, scope: !27)
!231 = !DILocation(line: 237, column: 9, scope: !27)
!232 = !DILocation(line: 212, column: 36, scope: !233)
!233 = !DILexicalBlockFile(scope: !234, file: !1, discriminator: 2)
!234 = !DILexicalBlockFile(scope: !10, file: !1, discriminator: 1)
!235 = !DILocation(line: 241, column: 9, scope: !236)
!236 = distinct !DILexicalBlock(scope: !10, file: !1, line: 241, column: 9)
!237 = !DILocation(line: 241, column: 9, scope: !10)
!238 = !DILocation(line: 242, column: 14, scope: !236)
!239 = !DILocation(line: 242, column: 9, scope: !236)
!240 = !DILocation(line: 247, column: 9, scope: !241)
!241 = distinct !DILexicalBlock(scope: !10, file: !1, line: 247, column: 9)
!242 = !DILocation(line: 247, column: 9, scope: !10)
!243 = !DILocation(line: 249, column: 16, scope: !244)
!244 = distinct !DILexicalBlock(scope: !241, file: !1, line: 247, column: 14)
!245 = !DILocation(line: 249, column: 54, scope: !244)
!246 = !DILocation(line: 249, column: 9, scope: !244)
!247 = !DILocation(line: 250, column: 13, scope: !244)
!248 = !DILocation(line: 249, column: 35, scope: !249)
!249 = !DILexicalBlockFile(scope: !250, file: !1, discriminator: 2)
!250 = !DILexicalBlockFile(scope: !244, file: !1, discriminator: 1)
!251 = !DILocation(line: 251, column: 14, scope: !244)
!252 = !DILocation(line: 252, column: 5, scope: !244)
!253 = !DILocation(line: 253, column: 5, scope: !10)
!254 = !DILocation(line: 253, column: 11, scope: !10)
!255 = !DILocation(line: 254, column: 5, scope: !10)
!256 = !DILocation(line: 255, column: 1, scope: !10)
!257 = !DILocation(line: 263, column: 25, scope: !28)
!258 = !DILocation(line: 263, column: 37, scope: !28)
!259 = !DILocation(line: 263, column: 46, scope: !28)
!260 = !DILocation(line: 269, column: 12, scope: !28)
!261 = !DILocation(line: 269, column: 17, scope: !28)
!262 = !DILocation(line: 269, column: 20, scope: !263)
!263 = !DILexicalBlockFile(scope: !28, file: !1, discriminator: 2)
!264 = !DILocation(line: 272, column: 12, scope: !28)
!265 = !DILocation(line: 269, column: 5, scope: !266)
!266 = !DILexicalBlockFile(scope: !28, file: !1, discriminator: 3)
!267 = !DILocation(line: 270, column: 12, scope: !28)
!268 = !DILocation(line: 267, column: 10, scope: !28)
!269 = !DILocation(line: 273, column: 21, scope: !270)
!270 = distinct !DILexicalBlock(scope: !28, file: !1, line: 273, column: 9)
!271 = !DILocation(line: 274, column: 12, scope: !270)
!272 = !DILocation(line: 274, column: 9, scope: !270)
!273 = !DILocation(line: 276, column: 15, scope: !28)
!274 = !DILocation(line: 266, column: 19, scope: !28)
!275 = !DILocation(line: 278, column: 17, scope: !276)
!276 = distinct !DILexicalBlock(scope: !28, file: !1, line: 278, column: 9)
!277 = !DILocation(line: 280, column: 18, scope: !278)
!278 = distinct !DILexicalBlock(scope: !279, file: !1, line: 280, column: 13)
!279 = distinct !DILexicalBlock(scope: !276, file: !1, line: 278, column: 45)
!280 = !DILocation(line: 278, column: 9, scope: !28)
!281 = !DILocation(line: 265, column: 10, scope: !28)
!282 = !DILocation(line: 281, column: 22, scope: !278)
!283 = !DILocation(line: 280, column: 13, scope: !279)
!284 = !DILocation(line: 283, column: 37, scope: !285)
!285 = distinct !DILexicalBlock(scope: !276, file: !1, line: 283, column: 14)
!286 = !DILocation(line: 283, column: 26, scope: !285)
!287 = !DILocation(line: 287, column: 9, scope: !288)
!288 = distinct !DILexicalBlock(scope: !285, file: !1, line: 286, column: 10)
!289 = !DILocation(line: 287, column: 15, scope: !288)
!290 = !DILocation(line: 290, column: 5, scope: !28)
