; ModuleID = './mystrtoul.bc'
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
  %temp_result = alloca i64, align 8
  store i8* %str, i8** %str.addr, align 8
  store i8** %ptr, i8*** %ptr.addr, align 8
  store i32 %base, i32* %base.addr, align 4
  store i64 0, i64* %result, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i8*, i8** %str.addr, align 8
  %1 = load i8, i8* %0, align 1
  %conv = sext i8 %1 to i32
  %tobool = icmp ne i32 %conv, 0
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %2 = load i8*, i8** %str.addr, align 8
  %3 = load i8, i8* %2, align 1
  %conv1 = sext i8 %3 to i32
  %and = and i32 %conv1, 255
  %conv2 = trunc i32 %and to i8
  %conv3 = zext i8 %conv2 to i32
  %and4 = and i32 %conv3, 255
  %conv5 = trunc i32 %and4 to i8
  %idxprom = zext i8 %conv5 to i64
  %arrayidx = getelementptr [256 x i32], [256 x i32]* @_Py_ctype_table, i32 0, i64 %idxprom
  %4 = load i32, i32* %arrayidx, align 4
  %and6 = and i32 %4, 8
  %tobool7 = icmp ne i32 %and6, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %5 = phi i1 [ false, %while.cond ], [ %tobool7, %land.rhs ]
  br i1 %5, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %6 = load i8*, i8** %str.addr, align 8
  %incdec.ptr = getelementptr i8, i8* %6, i32 1
  store i8* %incdec.ptr, i8** %str.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %land.end
  %7 = load i32, i32* %base.addr, align 4
  switch i32 %7, label %sw.epilog [
    i32 0, label %sw.bb
    i32 16, label %sw.bb.109
    i32 8, label %sw.bb.140
    i32 2, label %sw.bb.171
  ]

sw.bb:                                            ; preds = %while.end
  %8 = load i8*, i8** %str.addr, align 8
  %9 = load i8, i8* %8, align 1
  %conv8 = sext i8 %9 to i32
  %cmp = icmp eq i32 %conv8, 48
  br i1 %cmp, label %if.then, label %if.else.107

if.then:                                          ; preds = %sw.bb
  %10 = load i8*, i8** %str.addr, align 8
  %incdec.ptr10 = getelementptr i8, i8* %10, i32 1
  store i8* %incdec.ptr10, i8** %str.addr, align 8
  %11 = load i8*, i8** %str.addr, align 8
  %12 = load i8, i8* %11, align 1
  %conv11 = sext i8 %12 to i32
  %cmp12 = icmp eq i32 %conv11, 120
  br i1 %cmp12, label %if.then.17, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then
  %13 = load i8*, i8** %str.addr, align 8
  %14 = load i8, i8* %13, align 1
  %conv14 = sext i8 %14 to i32
  %cmp15 = icmp eq i32 %conv14, 88
  br i1 %cmp15, label %if.then.17, label %if.else

if.then.17:                                       ; preds = %lor.lhs.false, %if.then
  %15 = load i8*, i8** %str.addr, align 8
  %arrayidx18 = getelementptr i8, i8* %15, i64 1
  %16 = load i8, i8* %arrayidx18, align 1
  %conv19 = sext i8 %16 to i32
  %and20 = and i32 %conv19, 255
  %conv21 = trunc i32 %and20 to i8
  %idxprom22 = zext i8 %conv21 to i64
  %arrayidx23 = getelementptr [256 x i8], [256 x i8]* @_PyLong_DigitValue, i32 0, i64 %idxprom22
  %17 = load i8, i8* %arrayidx23, align 1
  %conv24 = zext i8 %17 to i32
  %cmp25 = icmp sge i32 %conv24, 16
  br i1 %cmp25, label %if.then.27, label %if.end.30

if.then.27:                                       ; preds = %if.then.17
  %18 = load i8**, i8*** %ptr.addr, align 8
  %tobool28 = icmp ne i8** %18, null
  br i1 %tobool28, label %if.then.29, label %if.end

if.then.29:                                       ; preds = %if.then.27
  %19 = load i8*, i8** %str.addr, align 8
  %20 = load i8**, i8*** %ptr.addr, align 8
  store i8* %19, i8** %20, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.29, %if.then.27
  store i64 0, i64* %retval
  br label %return

if.end.30:                                        ; preds = %if.then.17
  %21 = load i8*, i8** %str.addr, align 8
  %incdec.ptr31 = getelementptr i8, i8* %21, i32 1
  store i8* %incdec.ptr31, i8** %str.addr, align 8
  store i32 16, i32* %base.addr, align 4
  br label %if.end.106

if.else:                                          ; preds = %lor.lhs.false
  %22 = load i8*, i8** %str.addr, align 8
  %23 = load i8, i8* %22, align 1
  %conv32 = sext i8 %23 to i32
  %cmp33 = icmp eq i32 %conv32, 111
  br i1 %cmp33, label %if.then.39, label %lor.lhs.false.35

lor.lhs.false.35:                                 ; preds = %if.else
  %24 = load i8*, i8** %str.addr, align 8
  %25 = load i8, i8* %24, align 1
  %conv36 = sext i8 %25 to i32
  %cmp37 = icmp eq i32 %conv36, 79
  br i1 %cmp37, label %if.then.39, label %if.else.55

if.then.39:                                       ; preds = %lor.lhs.false.35, %if.else
  %26 = load i8*, i8** %str.addr, align 8
  %arrayidx40 = getelementptr i8, i8* %26, i64 1
  %27 = load i8, i8* %arrayidx40, align 1
  %conv41 = sext i8 %27 to i32
  %and42 = and i32 %conv41, 255
  %conv43 = trunc i32 %and42 to i8
  %idxprom44 = zext i8 %conv43 to i64
  %arrayidx45 = getelementptr [256 x i8], [256 x i8]* @_PyLong_DigitValue, i32 0, i64 %idxprom44
  %28 = load i8, i8* %arrayidx45, align 1
  %conv46 = zext i8 %28 to i32
  %cmp47 = icmp sge i32 %conv46, 8
  br i1 %cmp47, label %if.then.49, label %if.end.53

if.then.49:                                       ; preds = %if.then.39
  %29 = load i8**, i8*** %ptr.addr, align 8
  %tobool50 = icmp ne i8** %29, null
  br i1 %tobool50, label %if.then.51, label %if.end.52

if.then.51:                                       ; preds = %if.then.49
  %30 = load i8*, i8** %str.addr, align 8
  %31 = load i8**, i8*** %ptr.addr, align 8
  store i8* %30, i8** %31, align 8
  br label %if.end.52

if.end.52:                                        ; preds = %if.then.51, %if.then.49
  store i64 0, i64* %retval
  br label %return

if.end.53:                                        ; preds = %if.then.39
  %32 = load i8*, i8** %str.addr, align 8
  %incdec.ptr54 = getelementptr i8, i8* %32, i32 1
  store i8* %incdec.ptr54, i8** %str.addr, align 8
  store i32 8, i32* %base.addr, align 4
  br label %if.end.105

if.else.55:                                       ; preds = %lor.lhs.false.35
  %33 = load i8*, i8** %str.addr, align 8
  %34 = load i8, i8* %33, align 1
  %conv56 = sext i8 %34 to i32
  %cmp57 = icmp eq i32 %conv56, 98
  br i1 %cmp57, label %if.then.63, label %lor.lhs.false.59

lor.lhs.false.59:                                 ; preds = %if.else.55
  %35 = load i8*, i8** %str.addr, align 8
  %36 = load i8, i8* %35, align 1
  %conv60 = sext i8 %36 to i32
  %cmp61 = icmp eq i32 %conv60, 66
  br i1 %cmp61, label %if.then.63, label %if.else.79

if.then.63:                                       ; preds = %lor.lhs.false.59, %if.else.55
  %37 = load i8*, i8** %str.addr, align 8
  %arrayidx64 = getelementptr i8, i8* %37, i64 1
  %38 = load i8, i8* %arrayidx64, align 1
  %conv65 = sext i8 %38 to i32
  %and66 = and i32 %conv65, 255
  %conv67 = trunc i32 %and66 to i8
  %idxprom68 = zext i8 %conv67 to i64
  %arrayidx69 = getelementptr [256 x i8], [256 x i8]* @_PyLong_DigitValue, i32 0, i64 %idxprom68
  %39 = load i8, i8* %arrayidx69, align 1
  %conv70 = zext i8 %39 to i32
  %cmp71 = icmp sge i32 %conv70, 2
  br i1 %cmp71, label %if.then.73, label %if.end.77

if.then.73:                                       ; preds = %if.then.63
  %40 = load i8**, i8*** %ptr.addr, align 8
  %tobool74 = icmp ne i8** %40, null
  br i1 %tobool74, label %if.then.75, label %if.end.76

if.then.75:                                       ; preds = %if.then.73
  %41 = load i8*, i8** %str.addr, align 8
  %42 = load i8**, i8*** %ptr.addr, align 8
  store i8* %41, i8** %42, align 8
  br label %if.end.76

if.end.76:                                        ; preds = %if.then.75, %if.then.73
  store i64 0, i64* %retval
  br label %return

if.end.77:                                        ; preds = %if.then.63
  %43 = load i8*, i8** %str.addr, align 8
  %incdec.ptr78 = getelementptr i8, i8* %43, i32 1
  store i8* %incdec.ptr78, i8** %str.addr, align 8
  store i32 2, i32* %base.addr, align 4
  br label %if.end.104

if.else.79:                                       ; preds = %lor.lhs.false.59
  br label %while.cond.80

while.cond.80:                                    ; preds = %while.body.84, %if.else.79
  %44 = load i8*, i8** %str.addr, align 8
  %45 = load i8, i8* %44, align 1
  %conv81 = sext i8 %45 to i32
  %cmp82 = icmp eq i32 %conv81, 48
  br i1 %cmp82, label %while.body.84, label %while.end.86

while.body.84:                                    ; preds = %while.cond.80
  %46 = load i8*, i8** %str.addr, align 8
  %incdec.ptr85 = getelementptr i8, i8* %46, i32 1
  store i8* %incdec.ptr85, i8** %str.addr, align 8
  br label %while.cond.80

while.end.86:                                     ; preds = %while.cond.80
  br label %while.cond.87

while.cond.87:                                    ; preds = %while.body.98, %while.end.86
  %47 = load i8*, i8** %str.addr, align 8
  %48 = load i8, i8* %47, align 1
  %conv88 = sext i8 %48 to i32
  %and89 = and i32 %conv88, 255
  %conv90 = trunc i32 %and89 to i8
  %conv91 = zext i8 %conv90 to i32
  %and92 = and i32 %conv91, 255
  %conv93 = trunc i32 %and92 to i8
  %idxprom94 = zext i8 %conv93 to i64
  %arrayidx95 = getelementptr [256 x i32], [256 x i32]* @_Py_ctype_table, i32 0, i64 %idxprom94
  %49 = load i32, i32* %arrayidx95, align 4
  %and96 = and i32 %49, 8
  %tobool97 = icmp ne i32 %and96, 0
  br i1 %tobool97, label %while.body.98, label %while.end.100

while.body.98:                                    ; preds = %while.cond.87
  %50 = load i8*, i8** %str.addr, align 8
  %incdec.ptr99 = getelementptr i8, i8* %50, i32 1
  store i8* %incdec.ptr99, i8** %str.addr, align 8
  br label %while.cond.87

while.end.100:                                    ; preds = %while.cond.87
  %51 = load i8**, i8*** %ptr.addr, align 8
  %tobool101 = icmp ne i8** %51, null
  br i1 %tobool101, label %if.then.102, label %if.end.103

if.then.102:                                      ; preds = %while.end.100
  %52 = load i8*, i8** %str.addr, align 8
  %53 = load i8**, i8*** %ptr.addr, align 8
  store i8* %52, i8** %53, align 8
  br label %if.end.103

if.end.103:                                       ; preds = %if.then.102, %while.end.100
  store i64 0, i64* %retval
  br label %return

if.end.104:                                       ; preds = %if.end.77
  br label %if.end.105

if.end.105:                                       ; preds = %if.end.104, %if.end.53
  br label %if.end.106

if.end.106:                                       ; preds = %if.end.105, %if.end.30
  br label %if.end.108

if.else.107:                                      ; preds = %sw.bb
  store i32 10, i32* %base.addr, align 4
  br label %if.end.108

if.end.108:                                       ; preds = %if.else.107, %if.end.106
  br label %sw.epilog

sw.bb.109:                                        ; preds = %while.end
  %54 = load i8*, i8** %str.addr, align 8
  %55 = load i8, i8* %54, align 1
  %conv110 = sext i8 %55 to i32
  %cmp111 = icmp eq i32 %conv110, 48
  br i1 %cmp111, label %if.then.113, label %if.end.139

if.then.113:                                      ; preds = %sw.bb.109
  %56 = load i8*, i8** %str.addr, align 8
  %incdec.ptr114 = getelementptr i8, i8* %56, i32 1
  store i8* %incdec.ptr114, i8** %str.addr, align 8
  %57 = load i8*, i8** %str.addr, align 8
  %58 = load i8, i8* %57, align 1
  %conv115 = sext i8 %58 to i32
  %cmp116 = icmp eq i32 %conv115, 120
  br i1 %cmp116, label %if.then.122, label %lor.lhs.false.118

lor.lhs.false.118:                                ; preds = %if.then.113
  %59 = load i8*, i8** %str.addr, align 8
  %60 = load i8, i8* %59, align 1
  %conv119 = sext i8 %60 to i32
  %cmp120 = icmp eq i32 %conv119, 88
  br i1 %cmp120, label %if.then.122, label %if.end.138

if.then.122:                                      ; preds = %lor.lhs.false.118, %if.then.113
  %61 = load i8*, i8** %str.addr, align 8
  %arrayidx123 = getelementptr i8, i8* %61, i64 1
  %62 = load i8, i8* %arrayidx123, align 1
  %conv124 = sext i8 %62 to i32
  %and125 = and i32 %conv124, 255
  %conv126 = trunc i32 %and125 to i8
  %idxprom127 = zext i8 %conv126 to i64
  %arrayidx128 = getelementptr [256 x i8], [256 x i8]* @_PyLong_DigitValue, i32 0, i64 %idxprom127
  %63 = load i8, i8* %arrayidx128, align 1
  %conv129 = zext i8 %63 to i32
  %cmp130 = icmp sge i32 %conv129, 16
  br i1 %cmp130, label %if.then.132, label %if.end.136

if.then.132:                                      ; preds = %if.then.122
  %64 = load i8**, i8*** %ptr.addr, align 8
  %tobool133 = icmp ne i8** %64, null
  br i1 %tobool133, label %if.then.134, label %if.end.135

if.then.134:                                      ; preds = %if.then.132
  %65 = load i8*, i8** %str.addr, align 8
  %66 = load i8**, i8*** %ptr.addr, align 8
  store i8* %65, i8** %66, align 8
  br label %if.end.135

if.end.135:                                       ; preds = %if.then.134, %if.then.132
  store i64 0, i64* %retval
  br label %return

if.end.136:                                       ; preds = %if.then.122
  %67 = load i8*, i8** %str.addr, align 8
  %incdec.ptr137 = getelementptr i8, i8* %67, i32 1
  store i8* %incdec.ptr137, i8** %str.addr, align 8
  br label %if.end.138

if.end.138:                                       ; preds = %if.end.136, %lor.lhs.false.118
  br label %if.end.139

if.end.139:                                       ; preds = %if.end.138, %sw.bb.109
  br label %sw.epilog

sw.bb.140:                                        ; preds = %while.end
  %68 = load i8*, i8** %str.addr, align 8
  %69 = load i8, i8* %68, align 1
  %conv141 = sext i8 %69 to i32
  %cmp142 = icmp eq i32 %conv141, 48
  br i1 %cmp142, label %if.then.144, label %if.end.170

if.then.144:                                      ; preds = %sw.bb.140
  %70 = load i8*, i8** %str.addr, align 8
  %incdec.ptr145 = getelementptr i8, i8* %70, i32 1
  store i8* %incdec.ptr145, i8** %str.addr, align 8
  %71 = load i8*, i8** %str.addr, align 8
  %72 = load i8, i8* %71, align 1
  %conv146 = sext i8 %72 to i32
  %cmp147 = icmp eq i32 %conv146, 111
  br i1 %cmp147, label %if.then.153, label %lor.lhs.false.149

lor.lhs.false.149:                                ; preds = %if.then.144
  %73 = load i8*, i8** %str.addr, align 8
  %74 = load i8, i8* %73, align 1
  %conv150 = sext i8 %74 to i32
  %cmp151 = icmp eq i32 %conv150, 79
  br i1 %cmp151, label %if.then.153, label %if.end.169

if.then.153:                                      ; preds = %lor.lhs.false.149, %if.then.144
  %75 = load i8*, i8** %str.addr, align 8
  %arrayidx154 = getelementptr i8, i8* %75, i64 1
  %76 = load i8, i8* %arrayidx154, align 1
  %conv155 = sext i8 %76 to i32
  %and156 = and i32 %conv155, 255
  %conv157 = trunc i32 %and156 to i8
  %idxprom158 = zext i8 %conv157 to i64
  %arrayidx159 = getelementptr [256 x i8], [256 x i8]* @_PyLong_DigitValue, i32 0, i64 %idxprom158
  %77 = load i8, i8* %arrayidx159, align 1
  %conv160 = zext i8 %77 to i32
  %cmp161 = icmp sge i32 %conv160, 8
  br i1 %cmp161, label %if.then.163, label %if.end.167

if.then.163:                                      ; preds = %if.then.153
  %78 = load i8**, i8*** %ptr.addr, align 8
  %tobool164 = icmp ne i8** %78, null
  br i1 %tobool164, label %if.then.165, label %if.end.166

if.then.165:                                      ; preds = %if.then.163
  %79 = load i8*, i8** %str.addr, align 8
  %80 = load i8**, i8*** %ptr.addr, align 8
  store i8* %79, i8** %80, align 8
  br label %if.end.166

if.end.166:                                       ; preds = %if.then.165, %if.then.163
  store i64 0, i64* %retval
  br label %return

if.end.167:                                       ; preds = %if.then.153
  %81 = load i8*, i8** %str.addr, align 8
  %incdec.ptr168 = getelementptr i8, i8* %81, i32 1
  store i8* %incdec.ptr168, i8** %str.addr, align 8
  br label %if.end.169

if.end.169:                                       ; preds = %if.end.167, %lor.lhs.false.149
  br label %if.end.170

if.end.170:                                       ; preds = %if.end.169, %sw.bb.140
  br label %sw.epilog

sw.bb.171:                                        ; preds = %while.end
  %82 = load i8*, i8** %str.addr, align 8
  %83 = load i8, i8* %82, align 1
  %conv172 = sext i8 %83 to i32
  %cmp173 = icmp eq i32 %conv172, 48
  br i1 %cmp173, label %if.then.175, label %if.end.201

if.then.175:                                      ; preds = %sw.bb.171
  %84 = load i8*, i8** %str.addr, align 8
  %incdec.ptr176 = getelementptr i8, i8* %84, i32 1
  store i8* %incdec.ptr176, i8** %str.addr, align 8
  %85 = load i8*, i8** %str.addr, align 8
  %86 = load i8, i8* %85, align 1
  %conv177 = sext i8 %86 to i32
  %cmp178 = icmp eq i32 %conv177, 98
  br i1 %cmp178, label %if.then.184, label %lor.lhs.false.180

lor.lhs.false.180:                                ; preds = %if.then.175
  %87 = load i8*, i8** %str.addr, align 8
  %88 = load i8, i8* %87, align 1
  %conv181 = sext i8 %88 to i32
  %cmp182 = icmp eq i32 %conv181, 66
  br i1 %cmp182, label %if.then.184, label %if.end.200

if.then.184:                                      ; preds = %lor.lhs.false.180, %if.then.175
  %89 = load i8*, i8** %str.addr, align 8
  %arrayidx185 = getelementptr i8, i8* %89, i64 1
  %90 = load i8, i8* %arrayidx185, align 1
  %conv186 = sext i8 %90 to i32
  %and187 = and i32 %conv186, 255
  %conv188 = trunc i32 %and187 to i8
  %idxprom189 = zext i8 %conv188 to i64
  %arrayidx190 = getelementptr [256 x i8], [256 x i8]* @_PyLong_DigitValue, i32 0, i64 %idxprom189
  %91 = load i8, i8* %arrayidx190, align 1
  %conv191 = zext i8 %91 to i32
  %cmp192 = icmp sge i32 %conv191, 2
  br i1 %cmp192, label %if.then.194, label %if.end.198

if.then.194:                                      ; preds = %if.then.184
  %92 = load i8**, i8*** %ptr.addr, align 8
  %tobool195 = icmp ne i8** %92, null
  br i1 %tobool195, label %if.then.196, label %if.end.197

if.then.196:                                      ; preds = %if.then.194
  %93 = load i8*, i8** %str.addr, align 8
  %94 = load i8**, i8*** %ptr.addr, align 8
  store i8* %93, i8** %94, align 8
  br label %if.end.197

if.end.197:                                       ; preds = %if.then.196, %if.then.194
  store i64 0, i64* %retval
  br label %return

if.end.198:                                       ; preds = %if.then.184
  %95 = load i8*, i8** %str.addr, align 8
  %incdec.ptr199 = getelementptr i8, i8* %95, i32 1
  store i8* %incdec.ptr199, i8** %str.addr, align 8
  br label %if.end.200

if.end.200:                                       ; preds = %if.end.198, %lor.lhs.false.180
  br label %if.end.201

if.end.201:                                       ; preds = %if.end.200, %sw.bb.171
  br label %sw.epilog

sw.epilog:                                        ; preds = %while.end, %if.end.201, %if.end.170, %if.end.139, %if.end.108
  %96 = load i32, i32* %base.addr, align 4
  %cmp202 = icmp slt i32 %96, 2
  br i1 %cmp202, label %if.then.207, label %lor.lhs.false.204

lor.lhs.false.204:                                ; preds = %sw.epilog
  %97 = load i32, i32* %base.addr, align 4
  %cmp205 = icmp sgt i32 %97, 36
  br i1 %cmp205, label %if.then.207, label %if.end.211

if.then.207:                                      ; preds = %lor.lhs.false.204, %sw.epilog
  %98 = load i8**, i8*** %ptr.addr, align 8
  %tobool208 = icmp ne i8** %98, null
  br i1 %tobool208, label %if.then.209, label %if.end.210

if.then.209:                                      ; preds = %if.then.207
  %99 = load i8*, i8** %str.addr, align 8
  %100 = load i8**, i8*** %ptr.addr, align 8
  store i8* %99, i8** %100, align 8
  br label %if.end.210

if.end.210:                                       ; preds = %if.then.209, %if.then.207
  store i64 0, i64* %retval
  br label %return

if.end.211:                                       ; preds = %lor.lhs.false.204
  br label %while.cond.212

while.cond.212:                                   ; preds = %while.body.216, %if.end.211
  %101 = load i8*, i8** %str.addr, align 8
  %102 = load i8, i8* %101, align 1
  %conv213 = sext i8 %102 to i32
  %cmp214 = icmp eq i32 %conv213, 48
  br i1 %cmp214, label %while.body.216, label %while.end.218

while.body.216:                                   ; preds = %while.cond.212
  %103 = load i8*, i8** %str.addr, align 8
  %incdec.ptr217 = getelementptr i8, i8* %103, i32 1
  store i8* %incdec.ptr217, i8** %str.addr, align 8
  br label %while.cond.212

while.end.218:                                    ; preds = %while.cond.212
  %104 = load i32, i32* %base.addr, align 4
  %idxprom219 = sext i32 %104 to i64
  %arrayidx220 = getelementptr [37 x i32], [37 x i32]* @digitlimit, i32 0, i64 %idxprom219
  %105 = load i32, i32* %arrayidx220, align 4
  store i32 %105, i32* %ovlimit, align 4
  br label %while.cond.221

while.cond.221:                                   ; preds = %if.end.255, %while.end.218
  %106 = load i8*, i8** %str.addr, align 8
  %107 = load i8, i8* %106, align 1
  %conv222 = sext i8 %107 to i32
  %and223 = and i32 %conv222, 255
  %conv224 = trunc i32 %and223 to i8
  %idxprom225 = zext i8 %conv224 to i64
  %arrayidx226 = getelementptr [256 x i8], [256 x i8]* @_PyLong_DigitValue, i32 0, i64 %idxprom225
  %108 = load i8, i8* %arrayidx226, align 1
  %conv227 = zext i8 %108 to i32
  store i32 %conv227, i32* %c, align 4
  %109 = load i32, i32* %base.addr, align 4
  %cmp228 = icmp slt i32 %conv227, %109
  br i1 %cmp228, label %while.body.230, label %while.end.257

while.body.230:                                   ; preds = %while.cond.221
  %110 = load i32, i32* %ovlimit, align 4
  %cmp231 = icmp sgt i32 %110, 0
  br i1 %cmp231, label %if.then.233, label %if.else.236

if.then.233:                                      ; preds = %while.body.230
  %111 = load i64, i64* %result, align 8
  %112 = load i32, i32* %base.addr, align 4
  %conv234 = sext i32 %112 to i64
  %mul = mul i64 %111, %conv234
  %113 = load i32, i32* %c, align 4
  %conv235 = sext i32 %113 to i64
  %add = add i64 %mul, %conv235
  store i64 %add, i64* %result, align 8
  br label %if.end.255

if.else.236:                                      ; preds = %while.body.230
  %114 = load i32, i32* %ovlimit, align 4
  %cmp237 = icmp slt i32 %114, 0
  br i1 %cmp237, label %if.then.239, label %if.end.240

if.then.239:                                      ; preds = %if.else.236
  br label %overflowed

if.end.240:                                       ; preds = %if.else.236
  %115 = load i64, i64* %result, align 8
  %116 = load i32, i32* %base.addr, align 4
  %idxprom241 = sext i32 %116 to i64
  %arrayidx242 = getelementptr [37 x i64], [37 x i64]* @smallmax, i32 0, i64 %idxprom241
  %117 = load i64, i64* %arrayidx242, align 8
  %cmp243 = icmp ugt i64 %115, %117
  br i1 %cmp243, label %if.then.245, label %if.end.246

if.then.245:                                      ; preds = %if.end.240
  br label %overflowed

if.end.246:                                       ; preds = %if.end.240
  %118 = load i32, i32* %base.addr, align 4
  %conv247 = sext i32 %118 to i64
  %119 = load i64, i64* %result, align 8
  %mul248 = mul i64 %119, %conv247
  store i64 %mul248, i64* %result, align 8
  %120 = load i64, i64* %result, align 8
  %121 = load i32, i32* %c, align 4
  %conv249 = sext i32 %121 to i64
  %add250 = add i64 %120, %conv249
  store i64 %add250, i64* %temp_result, align 8
  %122 = load i64, i64* %temp_result, align 8
  %123 = load i64, i64* %result, align 8
  %cmp251 = icmp ult i64 %122, %123
  br i1 %cmp251, label %if.then.253, label %if.end.254

if.then.253:                                      ; preds = %if.end.246
  br label %overflowed

if.end.254:                                       ; preds = %if.end.246
  %124 = load i64, i64* %temp_result, align 8
  store i64 %124, i64* %result, align 8
  br label %if.end.255

if.end.255:                                       ; preds = %if.end.254, %if.then.233
  %125 = load i8*, i8** %str.addr, align 8
  %incdec.ptr256 = getelementptr i8, i8* %125, i32 1
  store i8* %incdec.ptr256, i8** %str.addr, align 8
  %126 = load i32, i32* %ovlimit, align 4
  %dec = add i32 %126, -1
  store i32 %dec, i32* %ovlimit, align 4
  br label %while.cond.221

while.end.257:                                    ; preds = %while.cond.221
  %127 = load i8**, i8*** %ptr.addr, align 8
  %tobool258 = icmp ne i8** %127, null
  br i1 %tobool258, label %if.then.259, label %if.end.260

if.then.259:                                      ; preds = %while.end.257
  %128 = load i8*, i8** %str.addr, align 8
  %129 = load i8**, i8*** %ptr.addr, align 8
  store i8* %128, i8** %129, align 8
  br label %if.end.260

if.end.260:                                       ; preds = %if.then.259, %while.end.257
  %130 = load i64, i64* %result, align 8
  store i64 %130, i64* %retval
  br label %return

overflowed:                                       ; preds = %if.then.253, %if.then.245, %if.then.239
  %131 = load i8**, i8*** %ptr.addr, align 8
  %tobool261 = icmp ne i8** %131, null
  br i1 %tobool261, label %if.then.262, label %if.end.275

if.then.262:                                      ; preds = %overflowed
  br label %while.cond.263

while.cond.263:                                   ; preds = %while.body.272, %if.then.262
  %132 = load i8*, i8** %str.addr, align 8
  %133 = load i8, i8* %132, align 1
  %conv264 = sext i8 %133 to i32
  %and265 = and i32 %conv264, 255
  %conv266 = trunc i32 %and265 to i8
  %idxprom267 = zext i8 %conv266 to i64
  %arrayidx268 = getelementptr [256 x i8], [256 x i8]* @_PyLong_DigitValue, i32 0, i64 %idxprom267
  %134 = load i8, i8* %arrayidx268, align 1
  %conv269 = zext i8 %134 to i32
  %135 = load i32, i32* %base.addr, align 4
  %cmp270 = icmp slt i32 %conv269, %135
  br i1 %cmp270, label %while.body.272, label %while.end.274

while.body.272:                                   ; preds = %while.cond.263
  %136 = load i8*, i8** %str.addr, align 8
  %incdec.ptr273 = getelementptr i8, i8* %136, i32 1
  store i8* %incdec.ptr273, i8** %str.addr, align 8
  br label %while.cond.263

while.end.274:                                    ; preds = %while.cond.263
  %137 = load i8*, i8** %str.addr, align 8
  %138 = load i8**, i8*** %ptr.addr, align 8
  store i8* %137, i8** %138, align 8
  br label %if.end.275

if.end.275:                                       ; preds = %while.end.274, %overflowed
  %call = call i32* @__errno_location() #2
  store i32 34, i32* %call, align 4
  store i64 -1, i64* %retval
  br label %return

return:                                           ; preds = %if.end.275, %if.end.260, %if.end.210, %if.end.197, %if.end.166, %if.end.135, %if.end.103, %if.end.76, %if.end.52, %if.end
  %139 = load i64, i64* %retval
  ret i64 %139
}

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #1

; Function Attrs: nounwind uwtable
define i64 @PyOS_strtol(i8* %str, i8** %ptr, i32 %base) #0 {
entry:
  %str.addr = alloca i8*, align 8
  %ptr.addr = alloca i8**, align 8
  %base.addr = alloca i32, align 4
  %result = alloca i64, align 8
  %uresult = alloca i64, align 8
  %sign = alloca i8, align 1
  store i8* %str, i8** %str.addr, align 8
  store i8** %ptr, i8*** %ptr.addr, align 8
  store i32 %base, i32* %base.addr, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i8*, i8** %str.addr, align 8
  %1 = load i8, i8* %0, align 1
  %conv = sext i8 %1 to i32
  %tobool = icmp ne i32 %conv, 0
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %2 = load i8*, i8** %str.addr, align 8
  %3 = load i8, i8* %2, align 1
  %conv1 = sext i8 %3 to i32
  %and = and i32 %conv1, 255
  %conv2 = trunc i32 %and to i8
  %conv3 = zext i8 %conv2 to i32
  %and4 = and i32 %conv3, 255
  %conv5 = trunc i32 %and4 to i8
  %idxprom = zext i8 %conv5 to i64
  %arrayidx = getelementptr [256 x i32], [256 x i32]* @_Py_ctype_table, i32 0, i64 %idxprom
  %4 = load i32, i32* %arrayidx, align 4
  %and6 = and i32 %4, 8
  %tobool7 = icmp ne i32 %and6, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %5 = phi i1 [ false, %while.cond ], [ %tobool7, %land.rhs ]
  br i1 %5, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %6 = load i8*, i8** %str.addr, align 8
  %incdec.ptr = getelementptr i8, i8* %6, i32 1
  store i8* %incdec.ptr, i8** %str.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %land.end
  %7 = load i8*, i8** %str.addr, align 8
  %8 = load i8, i8* %7, align 1
  store i8 %8, i8* %sign, align 1
  %9 = load i8, i8* %sign, align 1
  %conv8 = sext i8 %9 to i32
  %cmp = icmp eq i32 %conv8, 43
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.end
  %10 = load i8, i8* %sign, align 1
  %conv10 = sext i8 %10 to i32
  %cmp11 = icmp eq i32 %conv10, 45
  br i1 %cmp11, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %while.end
  %11 = load i8*, i8** %str.addr, align 8
  %incdec.ptr13 = getelementptr i8, i8* %11, i32 1
  store i8* %incdec.ptr13, i8** %str.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false
  %12 = load i8*, i8** %str.addr, align 8
  %13 = load i8**, i8*** %ptr.addr, align 8
  %14 = load i32, i32* %base.addr, align 4
  %call = call i64 @PyOS_strtoul(i8* %12, i8** %13, i32 %14)
  store i64 %call, i64* %uresult, align 8
  %15 = load i64, i64* %uresult, align 8
  %cmp14 = icmp ule i64 %15, 9223372036854775807
  br i1 %cmp14, label %if.then.16, label %if.else

if.then.16:                                       ; preds = %if.end
  %16 = load i64, i64* %uresult, align 8
  store i64 %16, i64* %result, align 8
  %17 = load i8, i8* %sign, align 1
  %conv17 = sext i8 %17 to i32
  %cmp18 = icmp eq i32 %conv17, 45
  br i1 %cmp18, label %if.then.20, label %if.end.21

if.then.20:                                       ; preds = %if.then.16
  %18 = load i64, i64* %result, align 8
  %sub = sub i64 0, %18
  store i64 %sub, i64* %result, align 8
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.20, %if.then.16
  br label %if.end.31

if.else:                                          ; preds = %if.end
  %19 = load i8, i8* %sign, align 1
  %conv22 = sext i8 %19 to i32
  %cmp23 = icmp eq i32 %conv22, 45
  br i1 %cmp23, label %land.lhs.true, label %if.else.28

land.lhs.true:                                    ; preds = %if.else
  %20 = load i64, i64* %uresult, align 8
  %cmp25 = icmp eq i64 %20, -9223372036854775808
  br i1 %cmp25, label %if.then.27, label %if.else.28

if.then.27:                                       ; preds = %land.lhs.true
  store i64 -9223372036854775808, i64* %result, align 8
  br label %if.end.30

if.else.28:                                       ; preds = %land.lhs.true, %if.else
  %call29 = call i32* @__errno_location() #2
  store i32 34, i32* %call29, align 4
  store i64 9223372036854775807, i64* %result, align 8
  br label %if.end.30

if.end.30:                                        ; preds = %if.else.28, %if.then.27
  br label %if.end.31

if.end.31:                                        ; preds = %if.end.30, %if.end.21
  %21 = load i64, i64* %result, align 8
  ret i64 %21
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
