; ModuleID = 'crazy.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@holding = common global [2 x [16 x i32]] zeroinitializer, align 16
@hold_hash = common global i32 0, align 4
@white_hand_eval = common global i32 0, align 4
@black_hand_eval = common global i32 0, align 4
@num_holding = common global [2 x i32] zeroinitializer, align 4
@zobrist = external global [14 x [144 x i32]], align 16
@Variant = external global i32, align 4
@userealholdings = common global i32 0, align 4
@realholdings = common global [255 x i8] zeroinitializer, align 16
@comp_color = external global i32, align 4
@SwitchColor.t = private unnamed_addr constant [13 x i32] [i32 0, i32 2, i32 1, i32 4, i32 3, i32 0, i32 0, i32 8, i32 7, i32 10, i32 9, i32 12, i32 11], align 16
@SwitchPromoted.t = private unnamed_addr constant [13 x i32] [i32 0, i32 2, i32 1, i32 2, i32 1, i32 0, i32 0, i32 2, i32 1, i32 2, i32 1, i32 2, i32 1], align 16
@hand_value = external global [0 x i32], align 4
@material = external global [14 x i32], align 16
@Material = external global i32, align 4
@.str = private unnamed_addr constant [36 x i8] c"WP: %d WR: %d WB: %d WN: %d WQ: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"BP: %d BR: %d BB: %d BN: %d BQ: %d\0A\00", align 1
@drop_piece = common global i32 0, align 4

; Function Attrs: nounwind uwtable
define void @ProcessHoldings(i8* %str) #0 {
entry:
  %str.addr = alloca i8*, align 8
  %c = alloca i32, align 4
  %i = alloca i32, align 4
  store i8* %str, i8** %str.addr, align 8
  store i32 0, i32* %i, align 4
  call void @llvm.memset.p0i8.i64(i8* bitcast ([2 x [16 x i32]]* @holding to i8*), i8 0, i64 128, i32 16, i1 false)
  store i32 -1056969216, i32* @hold_hash, align 4
  store i32 0, i32* @white_hand_eval, align 4
  store i32 0, i32* @black_hand_eval, align 4
  call void @reset_ecache()
  store i32 0, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @num_holding, i32 0, i64 0), align 4
  store i32 0, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @num_holding, i32 0, i64 1), align 4
  store i32 0, i32* %c, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %c, align 4
  %cmp = icmp sle i32 %0, 1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %while.cond

while.cond:                                       ; preds = %if.end, %for.body
  %1 = load i32, i32* %i, align 4
  %inc = add nsw i32 %1, 1
  store i32 %inc, i32* %i, align 4
  %idxprom = sext i32 %1 to i64
  %2 = load i8*, i8** %str.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 %idxprom
  %3 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %3 to i32
  %cmp1 = icmp ne i32 %conv, 91
  br i1 %cmp1, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %4 = load i32, i32* %i, align 4
  %idxprom3 = sext i32 %4 to i64
  %5 = load i8*, i8** %str.addr, align 8
  %arrayidx4 = getelementptr inbounds i8, i8* %5, i64 %idxprom3
  %6 = load i8, i8* %arrayidx4, align 1
  %conv5 = sext i8 %6 to i32
  %cmp6 = icmp eq i32 %conv5, 0
  br i1 %cmp6, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  br label %if.end.250

if.end:                                           ; preds = %while.body
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %while.cond.8

while.cond.8:                                     ; preds = %sw.epilog, %while.end
  %7 = load i32, i32* %i, align 4
  %idxprom9 = sext i32 %7 to i64
  %8 = load i8*, i8** %str.addr, align 8
  %arrayidx10 = getelementptr inbounds i8, i8* %8, i64 %idxprom9
  %9 = load i8, i8* %arrayidx10, align 1
  %conv11 = sext i8 %9 to i32
  %cmp12 = icmp ne i32 %conv11, 93
  br i1 %cmp12, label %while.body.14, label %while.end.151

while.body.14:                                    ; preds = %while.cond.8
  %10 = load i32, i32* %i, align 4
  %inc15 = add nsw i32 %10, 1
  store i32 %inc15, i32* %i, align 4
  %idxprom16 = sext i32 %10 to i64
  %11 = load i8*, i8** %str.addr, align 8
  %arrayidx17 = getelementptr inbounds i8, i8* %11, i64 %idxprom16
  %12 = load i8, i8* %arrayidx17, align 1
  %conv18 = sext i8 %12 to i32
  switch i32 %conv18, label %sw.default [
    i32 112, label %sw.bb
    i32 80, label %sw.bb
    i32 113, label %sw.bb.43
    i32 81, label %sw.bb.43
    i32 114, label %sw.bb.70
    i32 82, label %sw.bb.70
    i32 98, label %sw.bb.97
    i32 66, label %sw.bb.97
    i32 110, label %sw.bb.124
    i32 78, label %sw.bb.124
  ]

sw.bb:                                            ; preds = %while.body.14, %while.body.14
  %13 = load i32, i32* %c, align 4
  %cmp19 = icmp eq i32 %13, 0
  %cond = select i1 %cmp19, i32 1, i32 2
  %idxprom21 = sext i32 %cond to i64
  %14 = load i32, i32* %c, align 4
  %idxprom22 = sext i32 %14 to i64
  %arrayidx23 = getelementptr inbounds [2 x [16 x i32]], [2 x [16 x i32]]* @holding, i32 0, i64 %idxprom22
  %arrayidx24 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx23, i32 0, i64 %idxprom21
  %15 = load i32, i32* %arrayidx24, align 4
  %inc25 = add nsw i32 %15, 1
  store i32 %inc25, i32* %arrayidx24, align 4
  %16 = load i32, i32* %c, align 4
  %idxprom26 = sext i32 %16 to i64
  %arrayidx27 = getelementptr inbounds [2 x i32], [2 x i32]* @num_holding, i32 0, i64 %idxprom26
  %17 = load i32, i32* %arrayidx27, align 4
  %inc28 = add nsw i32 %17, 1
  store i32 %inc28, i32* %arrayidx27, align 4
  %18 = load i32, i32* %c, align 4
  %cmp29 = icmp eq i32 %18, 0
  %cond31 = select i1 %cmp29, i32 1, i32 2
  %idxprom32 = sext i32 %cond31 to i64
  %19 = load i32, i32* %c, align 4
  %idxprom33 = sext i32 %19 to i64
  %arrayidx34 = getelementptr inbounds [2 x [16 x i32]], [2 x [16 x i32]]* @holding, i32 0, i64 %idxprom33
  %arrayidx35 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx34, i32 0, i64 %idxprom32
  %20 = load i32, i32* %arrayidx35, align 4
  %idxprom36 = sext i32 %20 to i64
  %21 = load i32, i32* %c, align 4
  %cmp37 = icmp eq i32 %21, 0
  %cond39 = select i1 %cmp37, i32 1, i32 2
  %idxprom40 = sext i32 %cond39 to i64
  %arrayidx41 = getelementptr inbounds [14 x [144 x i32]], [14 x [144 x i32]]* @zobrist, i32 0, i64 %idxprom40
  %arrayidx42 = getelementptr inbounds [144 x i32], [144 x i32]* %arrayidx41, i32 0, i64 %idxprom36
  %22 = load i32, i32* %arrayidx42, align 4
  %23 = load i32, i32* @hold_hash, align 4
  %xor = xor i32 %23, %22
  store i32 %xor, i32* @hold_hash, align 4
  br label %sw.epilog

sw.bb.43:                                         ; preds = %while.body.14, %while.body.14
  %24 = load i32, i32* %c, align 4
  %cmp44 = icmp eq i32 %24, 0
  %cond46 = select i1 %cmp44, i32 9, i32 10
  %idxprom47 = sext i32 %cond46 to i64
  %25 = load i32, i32* %c, align 4
  %idxprom48 = sext i32 %25 to i64
  %arrayidx49 = getelementptr inbounds [2 x [16 x i32]], [2 x [16 x i32]]* @holding, i32 0, i64 %idxprom48
  %arrayidx50 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx49, i32 0, i64 %idxprom47
  %26 = load i32, i32* %arrayidx50, align 4
  %inc51 = add nsw i32 %26, 1
  store i32 %inc51, i32* %arrayidx50, align 4
  %27 = load i32, i32* %c, align 4
  %idxprom52 = sext i32 %27 to i64
  %arrayidx53 = getelementptr inbounds [2 x i32], [2 x i32]* @num_holding, i32 0, i64 %idxprom52
  %28 = load i32, i32* %arrayidx53, align 4
  %inc54 = add nsw i32 %28, 1
  store i32 %inc54, i32* %arrayidx53, align 4
  %29 = load i32, i32* %c, align 4
  %cmp55 = icmp eq i32 %29, 0
  %cond57 = select i1 %cmp55, i32 9, i32 10
  %idxprom58 = sext i32 %cond57 to i64
  %30 = load i32, i32* %c, align 4
  %idxprom59 = sext i32 %30 to i64
  %arrayidx60 = getelementptr inbounds [2 x [16 x i32]], [2 x [16 x i32]]* @holding, i32 0, i64 %idxprom59
  %arrayidx61 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx60, i32 0, i64 %idxprom58
  %31 = load i32, i32* %arrayidx61, align 4
  %idxprom62 = sext i32 %31 to i64
  %32 = load i32, i32* %c, align 4
  %cmp63 = icmp eq i32 %32, 0
  %cond65 = select i1 %cmp63, i32 9, i32 10
  %idxprom66 = sext i32 %cond65 to i64
  %arrayidx67 = getelementptr inbounds [14 x [144 x i32]], [14 x [144 x i32]]* @zobrist, i32 0, i64 %idxprom66
  %arrayidx68 = getelementptr inbounds [144 x i32], [144 x i32]* %arrayidx67, i32 0, i64 %idxprom62
  %33 = load i32, i32* %arrayidx68, align 4
  %34 = load i32, i32* @hold_hash, align 4
  %xor69 = xor i32 %34, %33
  store i32 %xor69, i32* @hold_hash, align 4
  br label %sw.epilog

sw.bb.70:                                         ; preds = %while.body.14, %while.body.14
  %35 = load i32, i32* %c, align 4
  %cmp71 = icmp eq i32 %35, 0
  %cond73 = select i1 %cmp71, i32 7, i32 8
  %idxprom74 = sext i32 %cond73 to i64
  %36 = load i32, i32* %c, align 4
  %idxprom75 = sext i32 %36 to i64
  %arrayidx76 = getelementptr inbounds [2 x [16 x i32]], [2 x [16 x i32]]* @holding, i32 0, i64 %idxprom75
  %arrayidx77 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx76, i32 0, i64 %idxprom74
  %37 = load i32, i32* %arrayidx77, align 4
  %inc78 = add nsw i32 %37, 1
  store i32 %inc78, i32* %arrayidx77, align 4
  %38 = load i32, i32* %c, align 4
  %idxprom79 = sext i32 %38 to i64
  %arrayidx80 = getelementptr inbounds [2 x i32], [2 x i32]* @num_holding, i32 0, i64 %idxprom79
  %39 = load i32, i32* %arrayidx80, align 4
  %inc81 = add nsw i32 %39, 1
  store i32 %inc81, i32* %arrayidx80, align 4
  %40 = load i32, i32* %c, align 4
  %cmp82 = icmp eq i32 %40, 0
  %cond84 = select i1 %cmp82, i32 7, i32 8
  %idxprom85 = sext i32 %cond84 to i64
  %41 = load i32, i32* %c, align 4
  %idxprom86 = sext i32 %41 to i64
  %arrayidx87 = getelementptr inbounds [2 x [16 x i32]], [2 x [16 x i32]]* @holding, i32 0, i64 %idxprom86
  %arrayidx88 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx87, i32 0, i64 %idxprom85
  %42 = load i32, i32* %arrayidx88, align 4
  %idxprom89 = sext i32 %42 to i64
  %43 = load i32, i32* %c, align 4
  %cmp90 = icmp eq i32 %43, 0
  %cond92 = select i1 %cmp90, i32 7, i32 8
  %idxprom93 = sext i32 %cond92 to i64
  %arrayidx94 = getelementptr inbounds [14 x [144 x i32]], [14 x [144 x i32]]* @zobrist, i32 0, i64 %idxprom93
  %arrayidx95 = getelementptr inbounds [144 x i32], [144 x i32]* %arrayidx94, i32 0, i64 %idxprom89
  %44 = load i32, i32* %arrayidx95, align 4
  %45 = load i32, i32* @hold_hash, align 4
  %xor96 = xor i32 %45, %44
  store i32 %xor96, i32* @hold_hash, align 4
  br label %sw.epilog

sw.bb.97:                                         ; preds = %while.body.14, %while.body.14
  %46 = load i32, i32* %c, align 4
  %cmp98 = icmp eq i32 %46, 0
  %cond100 = select i1 %cmp98, i32 11, i32 12
  %idxprom101 = sext i32 %cond100 to i64
  %47 = load i32, i32* %c, align 4
  %idxprom102 = sext i32 %47 to i64
  %arrayidx103 = getelementptr inbounds [2 x [16 x i32]], [2 x [16 x i32]]* @holding, i32 0, i64 %idxprom102
  %arrayidx104 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx103, i32 0, i64 %idxprom101
  %48 = load i32, i32* %arrayidx104, align 4
  %inc105 = add nsw i32 %48, 1
  store i32 %inc105, i32* %arrayidx104, align 4
  %49 = load i32, i32* %c, align 4
  %idxprom106 = sext i32 %49 to i64
  %arrayidx107 = getelementptr inbounds [2 x i32], [2 x i32]* @num_holding, i32 0, i64 %idxprom106
  %50 = load i32, i32* %arrayidx107, align 4
  %inc108 = add nsw i32 %50, 1
  store i32 %inc108, i32* %arrayidx107, align 4
  %51 = load i32, i32* %c, align 4
  %cmp109 = icmp eq i32 %51, 0
  %cond111 = select i1 %cmp109, i32 11, i32 12
  %idxprom112 = sext i32 %cond111 to i64
  %52 = load i32, i32* %c, align 4
  %idxprom113 = sext i32 %52 to i64
  %arrayidx114 = getelementptr inbounds [2 x [16 x i32]], [2 x [16 x i32]]* @holding, i32 0, i64 %idxprom113
  %arrayidx115 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx114, i32 0, i64 %idxprom112
  %53 = load i32, i32* %arrayidx115, align 4
  %idxprom116 = sext i32 %53 to i64
  %54 = load i32, i32* %c, align 4
  %cmp117 = icmp eq i32 %54, 0
  %cond119 = select i1 %cmp117, i32 11, i32 12
  %idxprom120 = sext i32 %cond119 to i64
  %arrayidx121 = getelementptr inbounds [14 x [144 x i32]], [14 x [144 x i32]]* @zobrist, i32 0, i64 %idxprom120
  %arrayidx122 = getelementptr inbounds [144 x i32], [144 x i32]* %arrayidx121, i32 0, i64 %idxprom116
  %55 = load i32, i32* %arrayidx122, align 4
  %56 = load i32, i32* @hold_hash, align 4
  %xor123 = xor i32 %56, %55
  store i32 %xor123, i32* @hold_hash, align 4
  br label %sw.epilog

sw.bb.124:                                        ; preds = %while.body.14, %while.body.14
  %57 = load i32, i32* %c, align 4
  %cmp125 = icmp eq i32 %57, 0
  %cond127 = select i1 %cmp125, i32 3, i32 4
  %idxprom128 = sext i32 %cond127 to i64
  %58 = load i32, i32* %c, align 4
  %idxprom129 = sext i32 %58 to i64
  %arrayidx130 = getelementptr inbounds [2 x [16 x i32]], [2 x [16 x i32]]* @holding, i32 0, i64 %idxprom129
  %arrayidx131 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx130, i32 0, i64 %idxprom128
  %59 = load i32, i32* %arrayidx131, align 4
  %inc132 = add nsw i32 %59, 1
  store i32 %inc132, i32* %arrayidx131, align 4
  %60 = load i32, i32* %c, align 4
  %idxprom133 = sext i32 %60 to i64
  %arrayidx134 = getelementptr inbounds [2 x i32], [2 x i32]* @num_holding, i32 0, i64 %idxprom133
  %61 = load i32, i32* %arrayidx134, align 4
  %inc135 = add nsw i32 %61, 1
  store i32 %inc135, i32* %arrayidx134, align 4
  %62 = load i32, i32* %c, align 4
  %cmp136 = icmp eq i32 %62, 0
  %cond138 = select i1 %cmp136, i32 3, i32 4
  %idxprom139 = sext i32 %cond138 to i64
  %63 = load i32, i32* %c, align 4
  %idxprom140 = sext i32 %63 to i64
  %arrayidx141 = getelementptr inbounds [2 x [16 x i32]], [2 x [16 x i32]]* @holding, i32 0, i64 %idxprom140
  %arrayidx142 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx141, i32 0, i64 %idxprom139
  %64 = load i32, i32* %arrayidx142, align 4
  %idxprom143 = sext i32 %64 to i64
  %65 = load i32, i32* %c, align 4
  %cmp144 = icmp eq i32 %65, 0
  %cond146 = select i1 %cmp144, i32 3, i32 4
  %idxprom147 = sext i32 %cond146 to i64
  %arrayidx148 = getelementptr inbounds [14 x [144 x i32]], [14 x [144 x i32]]* @zobrist, i32 0, i64 %idxprom147
  %arrayidx149 = getelementptr inbounds [144 x i32], [144 x i32]* %arrayidx148, i32 0, i64 %idxprom143
  %66 = load i32, i32* %arrayidx149, align 4
  %67 = load i32, i32* @hold_hash, align 4
  %xor150 = xor i32 %67, %66
  store i32 %xor150, i32* @hold_hash, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %while.body.14
  br label %if.end.250

sw.epilog:                                        ; preds = %sw.bb.124, %sw.bb.97, %sw.bb.70, %sw.bb.43, %sw.bb
  br label %while.cond.8

while.end.151:                                    ; preds = %while.cond.8
  br label %for.inc

for.inc:                                          ; preds = %while.end.151
  %68 = load i32, i32* %c, align 4
  %inc152 = add nsw i32 %68, 1
  store i32 %inc152, i32* %c, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %69 = load i32, i32* @Variant, align 4
  %cmp153 = icmp eq i32 %69, 1
  br i1 %cmp153, label %land.lhs.true, label %if.end.250

land.lhs.true:                                    ; preds = %for.end
  %70 = load i32, i32* @userealholdings, align 4
  %tobool = icmp ne i32 %70, 0
  br i1 %tobool, label %if.end.250, label %if.then.155

if.then.155:                                      ; preds = %land.lhs.true
  %71 = load i8*, i8** %str.addr, align 8
  %call = call i8* @strncpy(i8* getelementptr inbounds ([255 x i8], [255 x i8]* @realholdings, i32 0, i32 0), i8* %71, i64 200) #1
  %72 = load i32, i32* @comp_color, align 4
  %cmp156 = icmp eq i32 %72, 1
  br i1 %cmp156, label %if.then.158, label %if.else

if.then.158:                                      ; preds = %if.then.155
  %73 = load i32, i32* getelementptr inbounds ([2 x [16 x i32]], [2 x [16 x i32]]* @holding, i32 0, i64 1, i64 2), align 4
  %cmp159 = icmp eq i32 %73, 0
  br i1 %cmp159, label %if.then.161, label %if.end.167

if.then.161:                                      ; preds = %if.then.158
  %74 = load i32, i32* getelementptr inbounds ([2 x [16 x i32]], [2 x [16 x i32]]* @holding, i32 0, i64 1, i64 2), align 4
  %inc162 = add nsw i32 %74, 1
  store i32 %inc162, i32* getelementptr inbounds ([2 x [16 x i32]], [2 x [16 x i32]]* @holding, i32 0, i64 1, i64 2), align 4
  %75 = load i32, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @num_holding, i32 0, i64 1), align 4
  %inc163 = add nsw i32 %75, 1
  store i32 %inc163, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @num_holding, i32 0, i64 1), align 4
  %76 = load i32, i32* getelementptr inbounds ([2 x [16 x i32]], [2 x [16 x i32]]* @holding, i32 0, i64 1, i64 2), align 4
  %idxprom164 = sext i32 %76 to i64
  %arrayidx165 = getelementptr inbounds [144 x i32], [144 x i32]* getelementptr inbounds ([14 x [144 x i32]], [14 x [144 x i32]]* @zobrist, i32 0, i64 2), i32 0, i64 %idxprom164
  %77 = load i32, i32* %arrayidx165, align 4
  %78 = load i32, i32* @hold_hash, align 4
  %xor166 = xor i32 %78, %77
  store i32 %xor166, i32* @hold_hash, align 4
  br label %if.end.167

if.end.167:                                       ; preds = %if.then.161, %if.then.158
  %79 = load i32, i32* getelementptr inbounds ([2 x [16 x i32]], [2 x [16 x i32]]* @holding, i32 0, i64 1, i64 12), align 4
  %cmp168 = icmp eq i32 %79, 0
  br i1 %cmp168, label %if.then.170, label %if.end.176

if.then.170:                                      ; preds = %if.end.167
  %80 = load i32, i32* getelementptr inbounds ([2 x [16 x i32]], [2 x [16 x i32]]* @holding, i32 0, i64 1, i64 12), align 4
  %inc171 = add nsw i32 %80, 1
  store i32 %inc171, i32* getelementptr inbounds ([2 x [16 x i32]], [2 x [16 x i32]]* @holding, i32 0, i64 1, i64 12), align 4
  %81 = load i32, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @num_holding, i32 0, i64 1), align 4
  %inc172 = add nsw i32 %81, 1
  store i32 %inc172, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @num_holding, i32 0, i64 1), align 4
  %82 = load i32, i32* getelementptr inbounds ([2 x [16 x i32]], [2 x [16 x i32]]* @holding, i32 0, i64 1, i64 12), align 4
  %idxprom173 = sext i32 %82 to i64
  %arrayidx174 = getelementptr inbounds [144 x i32], [144 x i32]* getelementptr inbounds ([14 x [144 x i32]], [14 x [144 x i32]]* @zobrist, i32 0, i64 2), i32 0, i64 %idxprom173
  %83 = load i32, i32* %arrayidx174, align 4
  %84 = load i32, i32* @hold_hash, align 4
  %xor175 = xor i32 %84, %83
  store i32 %xor175, i32* @hold_hash, align 4
  br label %if.end.176

if.end.176:                                       ; preds = %if.then.170, %if.end.167
  %85 = load i32, i32* getelementptr inbounds ([2 x [16 x i32]], [2 x [16 x i32]]* @holding, i32 0, i64 1, i64 4), align 4
  %cmp177 = icmp eq i32 %85, 0
  br i1 %cmp177, label %if.then.179, label %if.end.185

if.then.179:                                      ; preds = %if.end.176
  %86 = load i32, i32* getelementptr inbounds ([2 x [16 x i32]], [2 x [16 x i32]]* @holding, i32 0, i64 1, i64 4), align 4
  %inc180 = add nsw i32 %86, 1
  store i32 %inc180, i32* getelementptr inbounds ([2 x [16 x i32]], [2 x [16 x i32]]* @holding, i32 0, i64 1, i64 4), align 4
  %87 = load i32, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @num_holding, i32 0, i64 1), align 4
  %inc181 = add nsw i32 %87, 1
  store i32 %inc181, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @num_holding, i32 0, i64 1), align 4
  %88 = load i32, i32* getelementptr inbounds ([2 x [16 x i32]], [2 x [16 x i32]]* @holding, i32 0, i64 1, i64 4), align 4
  %idxprom182 = sext i32 %88 to i64
  %arrayidx183 = getelementptr inbounds [144 x i32], [144 x i32]* getelementptr inbounds ([14 x [144 x i32]], [14 x [144 x i32]]* @zobrist, i32 0, i64 4), i32 0, i64 %idxprom182
  %89 = load i32, i32* %arrayidx183, align 4
  %90 = load i32, i32* @hold_hash, align 4
  %xor184 = xor i32 %90, %89
  store i32 %xor184, i32* @hold_hash, align 4
  br label %if.end.185

if.end.185:                                       ; preds = %if.then.179, %if.end.176
  %91 = load i32, i32* getelementptr inbounds ([2 x [16 x i32]], [2 x [16 x i32]]* @holding, i32 0, i64 1, i64 8), align 4
  %cmp186 = icmp eq i32 %91, 0
  br i1 %cmp186, label %if.then.188, label %if.end.194

if.then.188:                                      ; preds = %if.end.185
  %92 = load i32, i32* getelementptr inbounds ([2 x [16 x i32]], [2 x [16 x i32]]* @holding, i32 0, i64 1, i64 8), align 4
  %inc189 = add nsw i32 %92, 1
  store i32 %inc189, i32* getelementptr inbounds ([2 x [16 x i32]], [2 x [16 x i32]]* @holding, i32 0, i64 1, i64 8), align 4
  %93 = load i32, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @num_holding, i32 0, i64 1), align 4
  %inc190 = add nsw i32 %93, 1
  store i32 %inc190, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @num_holding, i32 0, i64 1), align 4
  %94 = load i32, i32* getelementptr inbounds ([2 x [16 x i32]], [2 x [16 x i32]]* @holding, i32 0, i64 1, i64 8), align 4
  %idxprom191 = sext i32 %94 to i64
  %arrayidx192 = getelementptr inbounds [144 x i32], [144 x i32]* getelementptr inbounds ([14 x [144 x i32]], [14 x [144 x i32]]* @zobrist, i32 0, i64 4), i32 0, i64 %idxprom191
  %95 = load i32, i32* %arrayidx192, align 4
  %96 = load i32, i32* @hold_hash, align 4
  %xor193 = xor i32 %96, %95
  store i32 %xor193, i32* @hold_hash, align 4
  br label %if.end.194

if.end.194:                                       ; preds = %if.then.188, %if.end.185
  %97 = load i32, i32* getelementptr inbounds ([2 x [16 x i32]], [2 x [16 x i32]]* @holding, i32 0, i64 1, i64 10), align 4
  %cmp195 = icmp eq i32 %97, 0
  br i1 %cmp195, label %if.then.197, label %if.end.203

if.then.197:                                      ; preds = %if.end.194
  %98 = load i32, i32* getelementptr inbounds ([2 x [16 x i32]], [2 x [16 x i32]]* @holding, i32 0, i64 1, i64 10), align 4
  %inc198 = add nsw i32 %98, 1
  store i32 %inc198, i32* getelementptr inbounds ([2 x [16 x i32]], [2 x [16 x i32]]* @holding, i32 0, i64 1, i64 10), align 4
  %99 = load i32, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @num_holding, i32 0, i64 1), align 4
  %inc199 = add nsw i32 %99, 1
  store i32 %inc199, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @num_holding, i32 0, i64 1), align 4
  %100 = load i32, i32* getelementptr inbounds ([2 x [16 x i32]], [2 x [16 x i32]]* @holding, i32 0, i64 1, i64 10), align 4
  %idxprom200 = sext i32 %100 to i64
  %arrayidx201 = getelementptr inbounds [144 x i32], [144 x i32]* getelementptr inbounds ([14 x [144 x i32]], [14 x [144 x i32]]* @zobrist, i32 0, i64 4), i32 0, i64 %idxprom200
  %101 = load i32, i32* %arrayidx201, align 4
  %102 = load i32, i32* @hold_hash, align 4
  %xor202 = xor i32 %102, %101
  store i32 %xor202, i32* @hold_hash, align 4
  br label %if.end.203

if.end.203:                                       ; preds = %if.then.197, %if.end.194
  br label %if.end.249

if.else:                                          ; preds = %if.then.155
  %103 = load i32, i32* getelementptr inbounds ([2 x [16 x i32]], [2 x [16 x i32]]* @holding, i32 0, i64 0, i64 9), align 4
  %cmp204 = icmp eq i32 %103, 0
  br i1 %cmp204, label %if.then.206, label %if.end.212

if.then.206:                                      ; preds = %if.else
  %104 = load i32, i32* getelementptr inbounds ([2 x [16 x i32]], [2 x [16 x i32]]* @holding, i32 0, i64 0, i64 9), align 4
  %inc207 = add nsw i32 %104, 1
  store i32 %inc207, i32* getelementptr inbounds ([2 x [16 x i32]], [2 x [16 x i32]]* @holding, i32 0, i64 0, i64 9), align 4
  %105 = load i32, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @num_holding, i32 0, i64 0), align 4
  %inc208 = add nsw i32 %105, 1
  store i32 %inc208, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @num_holding, i32 0, i64 0), align 4
  %106 = load i32, i32* getelementptr inbounds ([2 x [16 x i32]], [2 x [16 x i32]]* @holding, i32 0, i64 0, i64 9), align 4
  %idxprom209 = sext i32 %106 to i64
  %arrayidx210 = getelementptr inbounds [144 x i32], [144 x i32]* getelementptr inbounds ([14 x [144 x i32]], [14 x [144 x i32]]* @zobrist, i32 0, i64 9), i32 0, i64 %idxprom209
  %107 = load i32, i32* %arrayidx210, align 4
  %108 = load i32, i32* @hold_hash, align 4
  %xor211 = xor i32 %108, %107
  store i32 %xor211, i32* @hold_hash, align 4
  br label %if.end.212

if.end.212:                                       ; preds = %if.then.206, %if.else
  %109 = load i32, i32* getelementptr inbounds ([2 x [16 x i32]], [2 x [16 x i32]]* @holding, i32 0, i64 0, i64 7), align 4
  %cmp213 = icmp eq i32 %109, 0
  br i1 %cmp213, label %if.then.215, label %if.end.221

if.then.215:                                      ; preds = %if.end.212
  %110 = load i32, i32* getelementptr inbounds ([2 x [16 x i32]], [2 x [16 x i32]]* @holding, i32 0, i64 0, i64 7), align 4
  %inc216 = add nsw i32 %110, 1
  store i32 %inc216, i32* getelementptr inbounds ([2 x [16 x i32]], [2 x [16 x i32]]* @holding, i32 0, i64 0, i64 7), align 4
  %111 = load i32, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @num_holding, i32 0, i64 0), align 4
  %inc217 = add nsw i32 %111, 1
  store i32 %inc217, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @num_holding, i32 0, i64 0), align 4
  %112 = load i32, i32* getelementptr inbounds ([2 x [16 x i32]], [2 x [16 x i32]]* @holding, i32 0, i64 0, i64 7), align 4
  %idxprom218 = sext i32 %112 to i64
  %arrayidx219 = getelementptr inbounds [144 x i32], [144 x i32]* getelementptr inbounds ([14 x [144 x i32]], [14 x [144 x i32]]* @zobrist, i32 0, i64 9), i32 0, i64 %idxprom218
  %113 = load i32, i32* %arrayidx219, align 4
  %114 = load i32, i32* @hold_hash, align 4
  %xor220 = xor i32 %114, %113
  store i32 %xor220, i32* @hold_hash, align 4
  br label %if.end.221

if.end.221:                                       ; preds = %if.then.215, %if.end.212
  %115 = load i32, i32* getelementptr inbounds ([2 x [16 x i32]], [2 x [16 x i32]]* @holding, i32 0, i64 0, i64 11), align 4
  %cmp222 = icmp eq i32 %115, 0
  br i1 %cmp222, label %if.then.224, label %if.end.230

if.then.224:                                      ; preds = %if.end.221
  %116 = load i32, i32* getelementptr inbounds ([2 x [16 x i32]], [2 x [16 x i32]]* @holding, i32 0, i64 0, i64 11), align 4
  %inc225 = add nsw i32 %116, 1
  store i32 %inc225, i32* getelementptr inbounds ([2 x [16 x i32]], [2 x [16 x i32]]* @holding, i32 0, i64 0, i64 11), align 4
  %117 = load i32, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @num_holding, i32 0, i64 0), align 4
  %inc226 = add nsw i32 %117, 1
  store i32 %inc226, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @num_holding, i32 0, i64 0), align 4
  %118 = load i32, i32* getelementptr inbounds ([2 x [16 x i32]], [2 x [16 x i32]]* @holding, i32 0, i64 0, i64 11), align 4
  %idxprom227 = sext i32 %118 to i64
  %arrayidx228 = getelementptr inbounds [144 x i32], [144 x i32]* getelementptr inbounds ([14 x [144 x i32]], [14 x [144 x i32]]* @zobrist, i32 0, i64 9), i32 0, i64 %idxprom227
  %119 = load i32, i32* %arrayidx228, align 4
  %120 = load i32, i32* @hold_hash, align 4
  %xor229 = xor i32 %120, %119
  store i32 %xor229, i32* @hold_hash, align 4
  br label %if.end.230

if.end.230:                                       ; preds = %if.then.224, %if.end.221
  %121 = load i32, i32* getelementptr inbounds ([2 x [16 x i32]], [2 x [16 x i32]]* @holding, i32 0, i64 0, i64 3), align 4
  %cmp231 = icmp eq i32 %121, 0
  br i1 %cmp231, label %if.then.233, label %if.end.239

if.then.233:                                      ; preds = %if.end.230
  %122 = load i32, i32* getelementptr inbounds ([2 x [16 x i32]], [2 x [16 x i32]]* @holding, i32 0, i64 0, i64 3), align 4
  %inc234 = add nsw i32 %122, 1
  store i32 %inc234, i32* getelementptr inbounds ([2 x [16 x i32]], [2 x [16 x i32]]* @holding, i32 0, i64 0, i64 3), align 4
  %123 = load i32, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @num_holding, i32 0, i64 0), align 4
  %inc235 = add nsw i32 %123, 1
  store i32 %inc235, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @num_holding, i32 0, i64 0), align 4
  %124 = load i32, i32* getelementptr inbounds ([2 x [16 x i32]], [2 x [16 x i32]]* @holding, i32 0, i64 0, i64 3), align 4
  %idxprom236 = sext i32 %124 to i64
  %arrayidx237 = getelementptr inbounds [144 x i32], [144 x i32]* getelementptr inbounds ([14 x [144 x i32]], [14 x [144 x i32]]* @zobrist, i32 0, i64 9), i32 0, i64 %idxprom236
  %125 = load i32, i32* %arrayidx237, align 4
  %126 = load i32, i32* @hold_hash, align 4
  %xor238 = xor i32 %126, %125
  store i32 %xor238, i32* @hold_hash, align 4
  br label %if.end.239

if.end.239:                                       ; preds = %if.then.233, %if.end.230
  %127 = load i32, i32* getelementptr inbounds ([2 x [16 x i32]], [2 x [16 x i32]]* @holding, i32 0, i64 0, i64 1), align 4
  %cmp240 = icmp eq i32 %127, 0
  br i1 %cmp240, label %if.then.242, label %if.end.248

if.then.242:                                      ; preds = %if.end.239
  %128 = load i32, i32* getelementptr inbounds ([2 x [16 x i32]], [2 x [16 x i32]]* @holding, i32 0, i64 0, i64 1), align 4
  %inc243 = add nsw i32 %128, 1
  store i32 %inc243, i32* getelementptr inbounds ([2 x [16 x i32]], [2 x [16 x i32]]* @holding, i32 0, i64 0, i64 1), align 4
  %129 = load i32, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @num_holding, i32 0, i64 0), align 4
  %inc244 = add nsw i32 %129, 1
  store i32 %inc244, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @num_holding, i32 0, i64 0), align 4
  %130 = load i32, i32* getelementptr inbounds ([2 x [16 x i32]], [2 x [16 x i32]]* @holding, i32 0, i64 0, i64 1), align 4
  %idxprom245 = sext i32 %130 to i64
  %arrayidx246 = getelementptr inbounds [144 x i32], [144 x i32]* getelementptr inbounds ([14 x [144 x i32]], [14 x [144 x i32]]* @zobrist, i32 0, i64 9), i32 0, i64 %idxprom245
  %131 = load i32, i32* %arrayidx246, align 4
  %132 = load i32, i32* @hold_hash, align 4
  %xor247 = xor i32 %132, %131
  store i32 %xor247, i32* @hold_hash, align 4
  br label %if.end.248

if.end.248:                                       ; preds = %if.then.242, %if.end.239
  br label %if.end.249

if.end.249:                                       ; preds = %if.end.248, %if.end.203
  br label %if.end.250

if.end.250:                                       ; preds = %if.then, %sw.default, %if.end.249, %land.lhs.true, %for.end
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #1

declare void @reset_ecache() #2

; Function Attrs: nounwind
declare i8* @strncpy(i8*, i8*, i64) #3

; Function Attrs: nounwind uwtable
define i32 @text_to_piece(i8 signext %txt, i32 %who) #0 {
entry:
  %retval = alloca i32, align 4
  %txt.addr = alloca i8, align 1
  %who.addr = alloca i32, align 4
  store i8 %txt, i8* %txt.addr, align 1
  store i32 %who, i32* %who.addr, align 4
  %0 = load i8, i8* %txt.addr, align 1
  %conv = sext i8 %0 to i32
  switch i32 %conv, label %sw.epilog [
    i32 112, label %sw.bb
    i32 80, label %sw.bb
    i32 98, label %sw.bb.2
    i32 66, label %sw.bb.2
    i32 110, label %sw.bb.6
    i32 78, label %sw.bb.6
    i32 114, label %sw.bb.10
    i32 82, label %sw.bb.10
    i32 113, label %sw.bb.14
    i32 81, label %sw.bb.14
  ]

sw.bb:                                            ; preds = %entry, %entry
  %1 = load i32, i32* %who.addr, align 4
  %cmp = icmp eq i32 %1, 0
  %cond = select i1 %cmp, i32 1, i32 2
  store i32 %cond, i32* %retval
  br label %return

sw.bb.2:                                          ; preds = %entry, %entry
  %2 = load i32, i32* %who.addr, align 4
  %cmp3 = icmp eq i32 %2, 0
  %cond5 = select i1 %cmp3, i32 11, i32 12
  store i32 %cond5, i32* %retval
  br label %return

sw.bb.6:                                          ; preds = %entry, %entry
  %3 = load i32, i32* %who.addr, align 4
  %cmp7 = icmp eq i32 %3, 0
  %cond9 = select i1 %cmp7, i32 3, i32 4
  store i32 %cond9, i32* %retval
  br label %return

sw.bb.10:                                         ; preds = %entry, %entry
  %4 = load i32, i32* %who.addr, align 4
  %cmp11 = icmp eq i32 %4, 0
  %cond13 = select i1 %cmp11, i32 7, i32 8
  store i32 %cond13, i32* %retval
  br label %return

sw.bb.14:                                         ; preds = %entry, %entry
  %5 = load i32, i32* %who.addr, align 4
  %cmp15 = icmp eq i32 %5, 0
  %cond17 = select i1 %cmp15, i32 9, i32 10
  store i32 %cond17, i32* %retval
  br label %return

sw.epilog:                                        ; preds = %entry
  store i32 13, i32* %retval
  br label %return

return:                                           ; preds = %sw.epilog, %sw.bb.14, %sw.bb.10, %sw.bb.6, %sw.bb.2, %sw.bb
  %6 = load i32, i32* %retval
  ret i32 %6
}

; Function Attrs: nounwind uwtable
define i32 @SwitchColor(i32 %piece) #0 {
entry:
  %piece.addr = alloca i32, align 4
  %t = alloca [13 x i32], align 16
  store i32 %piece, i32* %piece.addr, align 4
  %0 = bitcast [13 x i32]* %t to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* bitcast ([13 x i32]* @SwitchColor.t to i8*), i64 52, i32 16, i1 false)
  %1 = load i32, i32* %piece.addr, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [13 x i32], [13 x i32]* %t, i32 0, i64 %idxprom
  %2 = load i32, i32* %arrayidx, align 4
  ret i32 %2
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

; Function Attrs: nounwind uwtable
define i32 @SwitchPromoted(i32 %piece) #0 {
entry:
  %piece.addr = alloca i32, align 4
  %t = alloca [13 x i32], align 16
  store i32 %piece, i32* %piece.addr, align 4
  %0 = bitcast [13 x i32]* %t to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* bitcast ([13 x i32]* @SwitchPromoted.t to i8*), i64 52, i32 16, i1 false)
  %1 = load i32, i32* %piece.addr, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [13 x i32], [13 x i32]* %t, i32 0, i64 %idxprom
  %2 = load i32, i32* %arrayidx, align 4
  ret i32 %2
}

; Function Attrs: nounwind uwtable
define void @addHolding(i32 %what, i32 %who) #0 {
entry:
  %what.addr = alloca i32, align 4
  %who.addr = alloca i32, align 4
  store i32 %what, i32* %what.addr, align 4
  store i32 %who, i32* %who.addr, align 4
  %0 = load i32, i32* @Variant, align 4
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %what.addr, align 4
  %idxprom = sext i32 %1 to i64
  %2 = load i32, i32* %who.addr, align 4
  %idxprom1 = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [2 x [16 x i32]], [2 x [16 x i32]]* @holding, i32 0, i64 %idxprom1
  %arrayidx2 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx, i32 0, i64 %idxprom
  %3 = load i32, i32* %arrayidx2, align 4
  %inc = add nsw i32 %3, 1
  store i32 %inc, i32* %arrayidx2, align 4
  %4 = load i32, i32* %who.addr, align 4
  %idxprom3 = sext i32 %4 to i64
  %arrayidx4 = getelementptr inbounds [2 x i32], [2 x i32]* @num_holding, i32 0, i64 %idxprom3
  %5 = load i32, i32* %arrayidx4, align 4
  %inc5 = add nsw i32 %5, 1
  store i32 %inc5, i32* %arrayidx4, align 4
  %6 = load i32, i32* %what.addr, align 4
  %idxprom6 = sext i32 %6 to i64
  %7 = load i32, i32* %who.addr, align 4
  %idxprom7 = sext i32 %7 to i64
  %arrayidx8 = getelementptr inbounds [2 x [16 x i32]], [2 x [16 x i32]]* @holding, i32 0, i64 %idxprom7
  %arrayidx9 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx8, i32 0, i64 %idxprom6
  %8 = load i32, i32* %arrayidx9, align 4
  %idxprom10 = sext i32 %8 to i64
  %9 = load i32, i32* %what.addr, align 4
  %idxprom11 = sext i32 %9 to i64
  %arrayidx12 = getelementptr inbounds [14 x [144 x i32]], [14 x [144 x i32]]* @zobrist, i32 0, i64 %idxprom11
  %arrayidx13 = getelementptr inbounds [144 x i32], [144 x i32]* %arrayidx12, i32 0, i64 %idxprom10
  %10 = load i32, i32* %arrayidx13, align 4
  %11 = load i32, i32* @hold_hash, align 4
  %xor = xor i32 %11, %10
  store i32 %xor, i32* @hold_hash, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %12 = load i32, i32* %who.addr, align 4
  %cmp14 = icmp eq i32 %12, 0
  br i1 %cmp14, label %if.then.15, label %if.else

if.then.15:                                       ; preds = %if.end
  %13 = load i32, i32* %what.addr, align 4
  %idxprom16 = sext i32 %13 to i64
  %arrayidx17 = getelementptr inbounds [0 x i32], [0 x i32]* @hand_value, i32 0, i64 %idxprom16
  %14 = load i32, i32* %arrayidx17, align 4
  %15 = load i32, i32* @white_hand_eval, align 4
  %add = add nsw i32 %15, %14
  store i32 %add, i32* @white_hand_eval, align 4
  br label %if.end.21

if.else:                                          ; preds = %if.end
  %16 = load i32, i32* %what.addr, align 4
  %idxprom18 = sext i32 %16 to i64
  %arrayidx19 = getelementptr inbounds [0 x i32], [0 x i32]* @hand_value, i32 0, i64 %idxprom18
  %17 = load i32, i32* %arrayidx19, align 4
  %18 = load i32, i32* @black_hand_eval, align 4
  %add20 = add nsw i32 %18, %17
  store i32 %add20, i32* @black_hand_eval, align 4
  br label %if.end.21

if.end.21:                                        ; preds = %if.else, %if.then.15
  %19 = load i32, i32* %what.addr, align 4
  %idxprom22 = sext i32 %19 to i64
  %arrayidx23 = getelementptr inbounds [14 x i32], [14 x i32]* @material, i32 0, i64 %idxprom22
  %20 = load i32, i32* %arrayidx23, align 4
  %21 = load i32, i32* @Material, align 4
  %add24 = add nsw i32 %21, %20
  store i32 %add24, i32* @Material, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define void @removeHolding(i32 %what, i32 %who) #0 {
entry:
  %what.addr = alloca i32, align 4
  %who.addr = alloca i32, align 4
  store i32 %what, i32* %what.addr, align 4
  store i32 %who, i32* %who.addr, align 4
  %0 = load i32, i32* @Variant, align 4
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %what.addr, align 4
  %idxprom = sext i32 %1 to i64
  %2 = load i32, i32* %who.addr, align 4
  %idxprom1 = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [2 x [16 x i32]], [2 x [16 x i32]]* @holding, i32 0, i64 %idxprom1
  %arrayidx2 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx, i32 0, i64 %idxprom
  %3 = load i32, i32* %arrayidx2, align 4
  %idxprom3 = sext i32 %3 to i64
  %4 = load i32, i32* %what.addr, align 4
  %idxprom4 = sext i32 %4 to i64
  %arrayidx5 = getelementptr inbounds [14 x [144 x i32]], [14 x [144 x i32]]* @zobrist, i32 0, i64 %idxprom4
  %arrayidx6 = getelementptr inbounds [144 x i32], [144 x i32]* %arrayidx5, i32 0, i64 %idxprom3
  %5 = load i32, i32* %arrayidx6, align 4
  %6 = load i32, i32* @hold_hash, align 4
  %xor = xor i32 %6, %5
  store i32 %xor, i32* @hold_hash, align 4
  %7 = load i32, i32* %what.addr, align 4
  %idxprom7 = sext i32 %7 to i64
  %8 = load i32, i32* %who.addr, align 4
  %idxprom8 = sext i32 %8 to i64
  %arrayidx9 = getelementptr inbounds [2 x [16 x i32]], [2 x [16 x i32]]* @holding, i32 0, i64 %idxprom8
  %arrayidx10 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx9, i32 0, i64 %idxprom7
  %9 = load i32, i32* %arrayidx10, align 4
  %dec = add nsw i32 %9, -1
  store i32 %dec, i32* %arrayidx10, align 4
  %10 = load i32, i32* %who.addr, align 4
  %idxprom11 = sext i32 %10 to i64
  %arrayidx12 = getelementptr inbounds [2 x i32], [2 x i32]* @num_holding, i32 0, i64 %idxprom11
  %11 = load i32, i32* %arrayidx12, align 4
  %dec13 = add nsw i32 %11, -1
  store i32 %dec13, i32* %arrayidx12, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %12 = load i32, i32* %who.addr, align 4
  %cmp14 = icmp eq i32 %12, 0
  br i1 %cmp14, label %if.then.15, label %if.else

if.then.15:                                       ; preds = %if.end
  %13 = load i32, i32* %what.addr, align 4
  %idxprom16 = sext i32 %13 to i64
  %arrayidx17 = getelementptr inbounds [0 x i32], [0 x i32]* @hand_value, i32 0, i64 %idxprom16
  %14 = load i32, i32* %arrayidx17, align 4
  %15 = load i32, i32* @white_hand_eval, align 4
  %sub = sub nsw i32 %15, %14
  store i32 %sub, i32* @white_hand_eval, align 4
  br label %if.end.21

if.else:                                          ; preds = %if.end
  %16 = load i32, i32* %what.addr, align 4
  %idxprom18 = sext i32 %16 to i64
  %arrayidx19 = getelementptr inbounds [0 x i32], [0 x i32]* @hand_value, i32 0, i64 %idxprom18
  %17 = load i32, i32* %arrayidx19, align 4
  %18 = load i32, i32* @black_hand_eval, align 4
  %sub20 = sub nsw i32 %18, %17
  store i32 %sub20, i32* @black_hand_eval, align 4
  br label %if.end.21

if.end.21:                                        ; preds = %if.else, %if.then.15
  %19 = load i32, i32* %what.addr, align 4
  %idxprom22 = sext i32 %19 to i64
  %arrayidx23 = getelementptr inbounds [14 x i32], [14 x i32]* @material, i32 0, i64 %idxprom22
  %20 = load i32, i32* %arrayidx23, align 4
  %21 = load i32, i32* @Material, align 4
  %sub24 = sub nsw i32 %21, %20
  store i32 %sub24, i32* @Material, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define void @DropaddHolding(i32 %what, i32 %who) #0 {
entry:
  %what.addr = alloca i32, align 4
  %who.addr = alloca i32, align 4
  store i32 %what, i32* %what.addr, align 4
  store i32 %who, i32* %who.addr, align 4
  %0 = load i32, i32* %what.addr, align 4
  %idxprom = sext i32 %0 to i64
  %1 = load i32, i32* %who.addr, align 4
  %idxprom1 = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [2 x [16 x i32]], [2 x [16 x i32]]* @holding, i32 0, i64 %idxprom1
  %arrayidx2 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx, i32 0, i64 %idxprom
  %2 = load i32, i32* %arrayidx2, align 4
  %inc = add nsw i32 %2, 1
  store i32 %inc, i32* %arrayidx2, align 4
  %3 = load i32, i32* %who.addr, align 4
  %idxprom3 = sext i32 %3 to i64
  %arrayidx4 = getelementptr inbounds [2 x i32], [2 x i32]* @num_holding, i32 0, i64 %idxprom3
  %4 = load i32, i32* %arrayidx4, align 4
  %inc5 = add nsw i32 %4, 1
  store i32 %inc5, i32* %arrayidx4, align 4
  %5 = load i32, i32* %what.addr, align 4
  %idxprom6 = sext i32 %5 to i64
  %6 = load i32, i32* %who.addr, align 4
  %idxprom7 = sext i32 %6 to i64
  %arrayidx8 = getelementptr inbounds [2 x [16 x i32]], [2 x [16 x i32]]* @holding, i32 0, i64 %idxprom7
  %arrayidx9 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx8, i32 0, i64 %idxprom6
  %7 = load i32, i32* %arrayidx9, align 4
  %idxprom10 = sext i32 %7 to i64
  %8 = load i32, i32* %what.addr, align 4
  %idxprom11 = sext i32 %8 to i64
  %arrayidx12 = getelementptr inbounds [14 x [144 x i32]], [14 x [144 x i32]]* @zobrist, i32 0, i64 %idxprom11
  %arrayidx13 = getelementptr inbounds [144 x i32], [144 x i32]* %arrayidx12, i32 0, i64 %idxprom10
  %9 = load i32, i32* %arrayidx13, align 4
  %10 = load i32, i32* @hold_hash, align 4
  %xor = xor i32 %10, %9
  store i32 %xor, i32* @hold_hash, align 4
  %11 = load i32, i32* %who.addr, align 4
  %cmp = icmp eq i32 %11, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %12 = load i32, i32* %what.addr, align 4
  %idxprom14 = sext i32 %12 to i64
  %arrayidx15 = getelementptr inbounds [0 x i32], [0 x i32]* @hand_value, i32 0, i64 %idxprom14
  %13 = load i32, i32* %arrayidx15, align 4
  %14 = load i32, i32* @white_hand_eval, align 4
  %add = add nsw i32 %14, %13
  store i32 %add, i32* @white_hand_eval, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  %15 = load i32, i32* %what.addr, align 4
  %idxprom16 = sext i32 %15 to i64
  %arrayidx17 = getelementptr inbounds [0 x i32], [0 x i32]* @hand_value, i32 0, i64 %idxprom16
  %16 = load i32, i32* %arrayidx17, align 4
  %17 = load i32, i32* @black_hand_eval, align 4
  %add18 = add nsw i32 %17, %16
  store i32 %add18, i32* @black_hand_eval, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %18 = load i32, i32* %what.addr, align 4
  %idxprom19 = sext i32 %18 to i64
  %arrayidx20 = getelementptr inbounds [14 x i32], [14 x i32]* @material, i32 0, i64 %idxprom19
  %19 = load i32, i32* %arrayidx20, align 4
  %20 = load i32, i32* @Material, align 4
  %add21 = add nsw i32 %20, %19
  store i32 %add21, i32* @Material, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define void @DropremoveHolding(i32 %what, i32 %who) #0 {
entry:
  %what.addr = alloca i32, align 4
  %who.addr = alloca i32, align 4
  store i32 %what, i32* %what.addr, align 4
  store i32 %who, i32* %who.addr, align 4
  %0 = load i32, i32* %what.addr, align 4
  %idxprom = sext i32 %0 to i64
  %1 = load i32, i32* %who.addr, align 4
  %idxprom1 = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [2 x [16 x i32]], [2 x [16 x i32]]* @holding, i32 0, i64 %idxprom1
  %arrayidx2 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx, i32 0, i64 %idxprom
  %2 = load i32, i32* %arrayidx2, align 4
  %idxprom3 = sext i32 %2 to i64
  %3 = load i32, i32* %what.addr, align 4
  %idxprom4 = sext i32 %3 to i64
  %arrayidx5 = getelementptr inbounds [14 x [144 x i32]], [14 x [144 x i32]]* @zobrist, i32 0, i64 %idxprom4
  %arrayidx6 = getelementptr inbounds [144 x i32], [144 x i32]* %arrayidx5, i32 0, i64 %idxprom3
  %4 = load i32, i32* %arrayidx6, align 4
  %5 = load i32, i32* @hold_hash, align 4
  %xor = xor i32 %5, %4
  store i32 %xor, i32* @hold_hash, align 4
  %6 = load i32, i32* %what.addr, align 4
  %idxprom7 = sext i32 %6 to i64
  %7 = load i32, i32* %who.addr, align 4
  %idxprom8 = sext i32 %7 to i64
  %arrayidx9 = getelementptr inbounds [2 x [16 x i32]], [2 x [16 x i32]]* @holding, i32 0, i64 %idxprom8
  %arrayidx10 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx9, i32 0, i64 %idxprom7
  %8 = load i32, i32* %arrayidx10, align 4
  %dec = add nsw i32 %8, -1
  store i32 %dec, i32* %arrayidx10, align 4
  %9 = load i32, i32* %who.addr, align 4
  %idxprom11 = sext i32 %9 to i64
  %arrayidx12 = getelementptr inbounds [2 x i32], [2 x i32]* @num_holding, i32 0, i64 %idxprom11
  %10 = load i32, i32* %arrayidx12, align 4
  %dec13 = add nsw i32 %10, -1
  store i32 %dec13, i32* %arrayidx12, align 4
  %11 = load i32, i32* %who.addr, align 4
  %cmp = icmp eq i32 %11, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %12 = load i32, i32* %what.addr, align 4
  %idxprom14 = sext i32 %12 to i64
  %arrayidx15 = getelementptr inbounds [0 x i32], [0 x i32]* @hand_value, i32 0, i64 %idxprom14
  %13 = load i32, i32* %arrayidx15, align 4
  %14 = load i32, i32* @white_hand_eval, align 4
  %sub = sub nsw i32 %14, %13
  store i32 %sub, i32* @white_hand_eval, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  %15 = load i32, i32* %what.addr, align 4
  %idxprom16 = sext i32 %15 to i64
  %arrayidx17 = getelementptr inbounds [0 x i32], [0 x i32]* @hand_value, i32 0, i64 %idxprom16
  %16 = load i32, i32* %arrayidx17, align 4
  %17 = load i32, i32* @black_hand_eval, align 4
  %sub18 = sub nsw i32 %17, %16
  store i32 %sub18, i32* @black_hand_eval, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %18 = load i32, i32* %what.addr, align 4
  %idxprom19 = sext i32 %18 to i64
  %arrayidx20 = getelementptr inbounds [14 x i32], [14 x i32]* @material, i32 0, i64 %idxprom19
  %19 = load i32, i32* %arrayidx20, align 4
  %20 = load i32, i32* @Material, align 4
  %sub21 = sub nsw i32 %20, %19
  store i32 %sub21, i32* @Material, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define void @printHolding() #0 {
entry:
  %0 = load i32, i32* getelementptr inbounds ([2 x [16 x i32]], [2 x [16 x i32]]* @holding, i32 0, i64 0, i64 1), align 4
  %1 = load i32, i32* getelementptr inbounds ([2 x [16 x i32]], [2 x [16 x i32]]* @holding, i32 0, i64 0, i64 7), align 4
  %2 = load i32, i32* getelementptr inbounds ([2 x [16 x i32]], [2 x [16 x i32]]* @holding, i32 0, i64 0, i64 11), align 4
  %3 = load i32, i32* getelementptr inbounds ([2 x [16 x i32]], [2 x [16 x i32]]* @holding, i32 0, i64 0, i64 3), align 4
  %4 = load i32, i32* getelementptr inbounds ([2 x [16 x i32]], [2 x [16 x i32]]* @holding, i32 0, i64 0, i64 9), align 4
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i32 0, i32 0), i32 %0, i32 %1, i32 %2, i32 %3, i32 %4)
  %5 = load i32, i32* getelementptr inbounds ([2 x [16 x i32]], [2 x [16 x i32]]* @holding, i32 0, i64 1, i64 2), align 4
  %6 = load i32, i32* getelementptr inbounds ([2 x [16 x i32]], [2 x [16 x i32]]* @holding, i32 0, i64 1, i64 8), align 4
  %7 = load i32, i32* getelementptr inbounds ([2 x [16 x i32]], [2 x [16 x i32]]* @holding, i32 0, i64 1, i64 12), align 4
  %8 = load i32, i32* getelementptr inbounds ([2 x [16 x i32]], [2 x [16 x i32]]* @holding, i32 0, i64 1, i64 4), align 4
  %9 = load i32, i32* getelementptr inbounds ([2 x [16 x i32]], [2 x [16 x i32]]* @holding, i32 0, i64 1, i64 10), align 4
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i32 0, i32 0), i32 %5, i32 %6, i32 %7, i32 %8, i32 %9)
  ret void
}

declare i32 @printf(i8*, ...) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
