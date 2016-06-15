; ModuleID = 'attacks.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@calc_attackers.rook_o = internal constant [4 x i32] [i32 12, i32 -12, i32 1, i32 -1], align 16
@calc_attackers.bishop_o = internal constant [4 x i32] [i32 11, i32 -11, i32 13, i32 -13], align 16
@calc_attackers.knight_o = internal constant [8 x i32] [i32 10, i32 -10, i32 14, i32 -14, i32 23, i32 -23, i32 25, i32 -25], align 16
@board = external global [144 x i32], align 16
@is_attacked.rook_o = internal constant [4 x i32] [i32 12, i32 -12, i32 1, i32 -1], align 16
@is_attacked.bishop_o = internal constant [4 x i32] [i32 11, i32 -11, i32 13, i32 -13], align 16
@is_attacked.knight_o = internal constant [8 x i32] [i32 10, i32 -10, i32 14, i32 -14, i32 23, i32 -23, i32 25, i32 -25], align 16
@nk_attacked.rook_o = internal constant [4 x i32] [i32 12, i32 -12, i32 1, i32 -1], align 16
@nk_attacked.bishop_o = internal constant [4 x i32] [i32 11, i32 -11, i32 13, i32 -13], align 16
@nk_attacked.knight_o = internal constant [8 x i32] [i32 10, i32 -10, i32 14, i32 -14, i32 23, i32 -23, i32 25, i32 -25], align 16

; Function Attrs: nounwind uwtable
define i32 @calc_attackers(i32 %square, i32 %color) #0 {
entry:
  %retval = alloca i32, align 4
  %square.addr = alloca i32, align 4
  %color.addr = alloca i32, align 4
  %a_sq = alloca i32, align 4
  %i = alloca i32, align 4
  %attackers = alloca i32, align 4
  store i32 %square, i32* %square.addr, align 4
  store i32 %color, i32* %color.addr, align 4
  store i32 0, i32* %attackers, align 4
  %0 = load i32, i32* %square.addr, align 4
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom
  %1 = load i32, i32* %arrayidx, align 4
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i32, i32* %color.addr, align 4
  %rem = srem i32 %2, 2
  %tobool = icmp ne i32 %rem, 0
  br i1 %tobool, label %if.then.1, label %if.else.97

if.then.1:                                        ; preds = %if.end
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.1
  %3 = load i32, i32* %i, align 4
  %cmp2 = icmp slt i32 %3, 4
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %square.addr, align 4
  %5 = load i32, i32* %i, align 4
  %idxprom3 = sext i32 %5 to i64
  %arrayidx4 = getelementptr inbounds [4 x i32], [4 x i32]* @calc_attackers.rook_o, i32 0, i64 %idxprom3
  %6 = load i32, i32* %arrayidx4, align 4
  %add = add nsw i32 %4, %6
  store i32 %add, i32* %a_sq, align 4
  %7 = load i32, i32* %a_sq, align 4
  %idxprom5 = sext i32 %7 to i64
  %arrayidx6 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom5
  %8 = load i32, i32* %arrayidx6, align 4
  %cmp7 = icmp eq i32 %8, 5
  br i1 %cmp7, label %if.then.8, label %if.else

if.then.8:                                        ; preds = %for.body
  %9 = load i32, i32* %attackers, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %attackers, align 4
  br label %for.end

if.else:                                          ; preds = %for.body
  br label %while.cond

while.cond:                                       ; preds = %if.end.26, %if.else
  %10 = load i32, i32* %a_sq, align 4
  %idxprom9 = sext i32 %10 to i64
  %arrayidx10 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom9
  %11 = load i32, i32* %arrayidx10, align 4
  %cmp11 = icmp ne i32 %11, 0
  br i1 %cmp11, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %12 = load i32, i32* %a_sq, align 4
  %idxprom12 = sext i32 %12 to i64
  %arrayidx13 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom12
  %13 = load i32, i32* %arrayidx13, align 4
  %cmp14 = icmp eq i32 %13, 7
  br i1 %cmp14, label %if.then.18, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.body
  %14 = load i32, i32* %a_sq, align 4
  %idxprom15 = sext i32 %14 to i64
  %arrayidx16 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom15
  %15 = load i32, i32* %arrayidx16, align 4
  %cmp17 = icmp eq i32 %15, 9
  br i1 %cmp17, label %if.then.18, label %if.else.20

if.then.18:                                       ; preds = %lor.lhs.false, %while.body
  %16 = load i32, i32* %attackers, align 4
  %inc19 = add nsw i32 %16, 1
  store i32 %inc19, i32* %attackers, align 4
  br label %while.end

if.else.20:                                       ; preds = %lor.lhs.false
  %17 = load i32, i32* %a_sq, align 4
  %idxprom21 = sext i32 %17 to i64
  %arrayidx22 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom21
  %18 = load i32, i32* %arrayidx22, align 4
  %cmp23 = icmp ne i32 %18, 13
  br i1 %cmp23, label %if.then.24, label %if.end.25

if.then.24:                                       ; preds = %if.else.20
  br label %while.end

if.end.25:                                        ; preds = %if.else.20
  br label %if.end.26

if.end.26:                                        ; preds = %if.end.25
  %19 = load i32, i32* %i, align 4
  %idxprom27 = sext i32 %19 to i64
  %arrayidx28 = getelementptr inbounds [4 x i32], [4 x i32]* @calc_attackers.rook_o, i32 0, i64 %idxprom27
  %20 = load i32, i32* %arrayidx28, align 4
  %21 = load i32, i32* %a_sq, align 4
  %add29 = add nsw i32 %21, %20
  store i32 %add29, i32* %a_sq, align 4
  br label %while.cond

while.end:                                        ; preds = %if.then.24, %if.then.18, %while.cond
  br label %if.end.30

if.end.30:                                        ; preds = %while.end
  br label %for.inc

for.inc:                                          ; preds = %if.end.30
  %22 = load i32, i32* %i, align 4
  %inc31 = add nsw i32 %22, 1
  store i32 %inc31, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then.8, %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond.32

for.cond.32:                                      ; preds = %for.inc.79, %for.end
  %23 = load i32, i32* %i, align 4
  %cmp33 = icmp slt i32 %23, 4
  br i1 %cmp33, label %for.body.34, label %for.end.81

for.body.34:                                      ; preds = %for.cond.32
  %24 = load i32, i32* %square.addr, align 4
  %25 = load i32, i32* %i, align 4
  %idxprom35 = sext i32 %25 to i64
  %arrayidx36 = getelementptr inbounds [4 x i32], [4 x i32]* @calc_attackers.bishop_o, i32 0, i64 %idxprom35
  %26 = load i32, i32* %arrayidx36, align 4
  %add37 = add nsw i32 %24, %26
  store i32 %add37, i32* %a_sq, align 4
  %27 = load i32, i32* %a_sq, align 4
  %idxprom38 = sext i32 %27 to i64
  %arrayidx39 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom38
  %28 = load i32, i32* %arrayidx39, align 4
  %cmp40 = icmp eq i32 %28, 1
  br i1 %cmp40, label %land.lhs.true, label %if.else.45

land.lhs.true:                                    ; preds = %for.body.34
  %29 = load i32, i32* %i, align 4
  %rem41 = srem i32 %29, 2
  %tobool42 = icmp ne i32 %rem41, 0
  br i1 %tobool42, label %if.then.43, label %if.else.45

if.then.43:                                       ; preds = %land.lhs.true
  %30 = load i32, i32* %attackers, align 4
  %inc44 = add nsw i32 %30, 1
  store i32 %inc44, i32* %attackers, align 4
  br label %for.end.81

if.else.45:                                       ; preds = %land.lhs.true, %for.body.34
  %31 = load i32, i32* %a_sq, align 4
  %idxprom46 = sext i32 %31 to i64
  %arrayidx47 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom46
  %32 = load i32, i32* %arrayidx47, align 4
  %cmp48 = icmp eq i32 %32, 5
  br i1 %cmp48, label %if.then.49, label %if.else.51

if.then.49:                                       ; preds = %if.else.45
  %33 = load i32, i32* %attackers, align 4
  %inc50 = add nsw i32 %33, 1
  store i32 %inc50, i32* %attackers, align 4
  br label %for.end.81

if.else.51:                                       ; preds = %if.else.45
  br label %while.cond.52

while.cond.52:                                    ; preds = %if.end.72, %if.else.51
  %34 = load i32, i32* %a_sq, align 4
  %idxprom53 = sext i32 %34 to i64
  %arrayidx54 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom53
  %35 = load i32, i32* %arrayidx54, align 4
  %cmp55 = icmp ne i32 %35, 0
  br i1 %cmp55, label %while.body.56, label %while.end.76

while.body.56:                                    ; preds = %while.cond.52
  %36 = load i32, i32* %a_sq, align 4
  %idxprom57 = sext i32 %36 to i64
  %arrayidx58 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom57
  %37 = load i32, i32* %arrayidx58, align 4
  %cmp59 = icmp eq i32 %37, 11
  br i1 %cmp59, label %if.then.64, label %lor.lhs.false.60

lor.lhs.false.60:                                 ; preds = %while.body.56
  %38 = load i32, i32* %a_sq, align 4
  %idxprom61 = sext i32 %38 to i64
  %arrayidx62 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom61
  %39 = load i32, i32* %arrayidx62, align 4
  %cmp63 = icmp eq i32 %39, 9
  br i1 %cmp63, label %if.then.64, label %if.else.66

if.then.64:                                       ; preds = %lor.lhs.false.60, %while.body.56
  %40 = load i32, i32* %attackers, align 4
  %inc65 = add nsw i32 %40, 1
  store i32 %inc65, i32* %attackers, align 4
  br label %while.end.76

if.else.66:                                       ; preds = %lor.lhs.false.60
  %41 = load i32, i32* %a_sq, align 4
  %idxprom67 = sext i32 %41 to i64
  %arrayidx68 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom67
  %42 = load i32, i32* %arrayidx68, align 4
  %cmp69 = icmp ne i32 %42, 13
  br i1 %cmp69, label %if.then.70, label %if.end.71

if.then.70:                                       ; preds = %if.else.66
  br label %while.end.76

if.end.71:                                        ; preds = %if.else.66
  br label %if.end.72

if.end.72:                                        ; preds = %if.end.71
  %43 = load i32, i32* %i, align 4
  %idxprom73 = sext i32 %43 to i64
  %arrayidx74 = getelementptr inbounds [4 x i32], [4 x i32]* @calc_attackers.bishop_o, i32 0, i64 %idxprom73
  %44 = load i32, i32* %arrayidx74, align 4
  %45 = load i32, i32* %a_sq, align 4
  %add75 = add nsw i32 %45, %44
  store i32 %add75, i32* %a_sq, align 4
  br label %while.cond.52

while.end.76:                                     ; preds = %if.then.70, %if.then.64, %while.cond.52
  br label %if.end.77

if.end.77:                                        ; preds = %while.end.76
  br label %if.end.78

if.end.78:                                        ; preds = %if.end.77
  br label %for.inc.79

for.inc.79:                                       ; preds = %if.end.78
  %46 = load i32, i32* %i, align 4
  %inc80 = add nsw i32 %46, 1
  store i32 %inc80, i32* %i, align 4
  br label %for.cond.32

for.end.81:                                       ; preds = %if.then.49, %if.then.43, %for.cond.32
  store i32 0, i32* %i, align 4
  br label %for.cond.82

for.cond.82:                                      ; preds = %for.inc.94, %for.end.81
  %47 = load i32, i32* %i, align 4
  %cmp83 = icmp slt i32 %47, 8
  br i1 %cmp83, label %for.body.84, label %for.end.96

for.body.84:                                      ; preds = %for.cond.82
  %48 = load i32, i32* %square.addr, align 4
  %49 = load i32, i32* %i, align 4
  %idxprom85 = sext i32 %49 to i64
  %arrayidx86 = getelementptr inbounds [8 x i32], [8 x i32]* @calc_attackers.knight_o, i32 0, i64 %idxprom85
  %50 = load i32, i32* %arrayidx86, align 4
  %add87 = add nsw i32 %48, %50
  store i32 %add87, i32* %a_sq, align 4
  %51 = load i32, i32* %a_sq, align 4
  %idxprom88 = sext i32 %51 to i64
  %arrayidx89 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom88
  %52 = load i32, i32* %arrayidx89, align 4
  %cmp90 = icmp eq i32 %52, 3
  br i1 %cmp90, label %if.then.91, label %if.end.93

if.then.91:                                       ; preds = %for.body.84
  %53 = load i32, i32* %attackers, align 4
  %inc92 = add nsw i32 %53, 1
  store i32 %inc92, i32* %attackers, align 4
  br label %if.end.93

if.end.93:                                        ; preds = %if.then.91, %for.body.84
  br label %for.inc.94

for.inc.94:                                       ; preds = %if.end.93
  %54 = load i32, i32* %i, align 4
  %inc95 = add nsw i32 %54, 1
  store i32 %inc95, i32* %i, align 4
  br label %for.cond.82

for.end.96:                                       ; preds = %for.cond.82
  br label %if.end.204

if.else.97:                                       ; preds = %if.end
  store i32 0, i32* %i, align 4
  br label %for.cond.98

for.cond.98:                                      ; preds = %for.inc.135, %if.else.97
  %55 = load i32, i32* %i, align 4
  %cmp99 = icmp slt i32 %55, 4
  br i1 %cmp99, label %for.body.100, label %for.end.137

for.body.100:                                     ; preds = %for.cond.98
  %56 = load i32, i32* %square.addr, align 4
  %57 = load i32, i32* %i, align 4
  %idxprom101 = sext i32 %57 to i64
  %arrayidx102 = getelementptr inbounds [4 x i32], [4 x i32]* @calc_attackers.rook_o, i32 0, i64 %idxprom101
  %58 = load i32, i32* %arrayidx102, align 4
  %add103 = add nsw i32 %56, %58
  store i32 %add103, i32* %a_sq, align 4
  %59 = load i32, i32* %a_sq, align 4
  %idxprom104 = sext i32 %59 to i64
  %arrayidx105 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom104
  %60 = load i32, i32* %arrayidx105, align 4
  %cmp106 = icmp eq i32 %60, 6
  br i1 %cmp106, label %if.then.107, label %if.else.109

if.then.107:                                      ; preds = %for.body.100
  %61 = load i32, i32* %attackers, align 4
  %inc108 = add nsw i32 %61, 1
  store i32 %inc108, i32* %attackers, align 4
  br label %for.end.137

if.else.109:                                      ; preds = %for.body.100
  br label %while.cond.110

while.cond.110:                                   ; preds = %if.end.129, %if.else.109
  %62 = load i32, i32* %a_sq, align 4
  %idxprom111 = sext i32 %62 to i64
  %arrayidx112 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom111
  %63 = load i32, i32* %arrayidx112, align 4
  %cmp113 = icmp ne i32 %63, 0
  br i1 %cmp113, label %while.body.114, label %while.end.133

while.body.114:                                   ; preds = %while.cond.110
  %64 = load i32, i32* %a_sq, align 4
  %idxprom115 = sext i32 %64 to i64
  %arrayidx116 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom115
  %65 = load i32, i32* %arrayidx116, align 4
  %cmp117 = icmp eq i32 %65, 8
  br i1 %cmp117, label %if.then.122, label %lor.lhs.false.118

lor.lhs.false.118:                                ; preds = %while.body.114
  %66 = load i32, i32* %a_sq, align 4
  %idxprom119 = sext i32 %66 to i64
  %arrayidx120 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom119
  %67 = load i32, i32* %arrayidx120, align 4
  %cmp121 = icmp eq i32 %67, 10
  br i1 %cmp121, label %if.then.122, label %if.end.124

if.then.122:                                      ; preds = %lor.lhs.false.118, %while.body.114
  %68 = load i32, i32* %attackers, align 4
  %inc123 = add nsw i32 %68, 1
  store i32 %inc123, i32* %attackers, align 4
  br label %while.end.133

if.end.124:                                       ; preds = %lor.lhs.false.118
  %69 = load i32, i32* %a_sq, align 4
  %idxprom125 = sext i32 %69 to i64
  %arrayidx126 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom125
  %70 = load i32, i32* %arrayidx126, align 4
  %cmp127 = icmp ne i32 %70, 13
  br i1 %cmp127, label %if.then.128, label %if.end.129

if.then.128:                                      ; preds = %if.end.124
  br label %while.end.133

if.end.129:                                       ; preds = %if.end.124
  %71 = load i32, i32* %i, align 4
  %idxprom130 = sext i32 %71 to i64
  %arrayidx131 = getelementptr inbounds [4 x i32], [4 x i32]* @calc_attackers.rook_o, i32 0, i64 %idxprom130
  %72 = load i32, i32* %arrayidx131, align 4
  %73 = load i32, i32* %a_sq, align 4
  %add132 = add nsw i32 %73, %72
  store i32 %add132, i32* %a_sq, align 4
  br label %while.cond.110

while.end.133:                                    ; preds = %if.then.128, %if.then.122, %while.cond.110
  br label %if.end.134

if.end.134:                                       ; preds = %while.end.133
  br label %for.inc.135

for.inc.135:                                      ; preds = %if.end.134
  %74 = load i32, i32* %i, align 4
  %inc136 = add nsw i32 %74, 1
  store i32 %inc136, i32* %i, align 4
  br label %for.cond.98

for.end.137:                                      ; preds = %if.then.107, %for.cond.98
  store i32 0, i32* %i, align 4
  br label %for.cond.138

for.cond.138:                                     ; preds = %for.inc.186, %for.end.137
  %75 = load i32, i32* %i, align 4
  %cmp139 = icmp slt i32 %75, 4
  br i1 %cmp139, label %for.body.140, label %for.end.188

for.body.140:                                     ; preds = %for.cond.138
  %76 = load i32, i32* %square.addr, align 4
  %77 = load i32, i32* %i, align 4
  %idxprom141 = sext i32 %77 to i64
  %arrayidx142 = getelementptr inbounds [4 x i32], [4 x i32]* @calc_attackers.bishop_o, i32 0, i64 %idxprom141
  %78 = load i32, i32* %arrayidx142, align 4
  %add143 = add nsw i32 %76, %78
  store i32 %add143, i32* %a_sq, align 4
  %79 = load i32, i32* %a_sq, align 4
  %idxprom144 = sext i32 %79 to i64
  %arrayidx145 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom144
  %80 = load i32, i32* %arrayidx145, align 4
  %cmp146 = icmp eq i32 %80, 2
  br i1 %cmp146, label %land.lhs.true.147, label %if.else.152

land.lhs.true.147:                                ; preds = %for.body.140
  %81 = load i32, i32* %i, align 4
  %rem148 = srem i32 %81, 2
  %tobool149 = icmp ne i32 %rem148, 0
  br i1 %tobool149, label %if.else.152, label %if.then.150

if.then.150:                                      ; preds = %land.lhs.true.147
  %82 = load i32, i32* %attackers, align 4
  %inc151 = add nsw i32 %82, 1
  store i32 %inc151, i32* %attackers, align 4
  br label %for.end.188

if.else.152:                                      ; preds = %land.lhs.true.147, %for.body.140
  %83 = load i32, i32* %a_sq, align 4
  %idxprom153 = sext i32 %83 to i64
  %arrayidx154 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom153
  %84 = load i32, i32* %arrayidx154, align 4
  %cmp155 = icmp eq i32 %84, 6
  br i1 %cmp155, label %if.then.156, label %if.else.158

if.then.156:                                      ; preds = %if.else.152
  %85 = load i32, i32* %attackers, align 4
  %inc157 = add nsw i32 %85, 1
  store i32 %inc157, i32* %attackers, align 4
  br label %for.end.188

if.else.158:                                      ; preds = %if.else.152
  br label %while.cond.159

while.cond.159:                                   ; preds = %if.end.179, %if.else.158
  %86 = load i32, i32* %a_sq, align 4
  %idxprom160 = sext i32 %86 to i64
  %arrayidx161 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom160
  %87 = load i32, i32* %arrayidx161, align 4
  %cmp162 = icmp ne i32 %87, 0
  br i1 %cmp162, label %while.body.163, label %while.end.183

while.body.163:                                   ; preds = %while.cond.159
  %88 = load i32, i32* %a_sq, align 4
  %idxprom164 = sext i32 %88 to i64
  %arrayidx165 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom164
  %89 = load i32, i32* %arrayidx165, align 4
  %cmp166 = icmp eq i32 %89, 12
  br i1 %cmp166, label %if.then.171, label %lor.lhs.false.167

lor.lhs.false.167:                                ; preds = %while.body.163
  %90 = load i32, i32* %a_sq, align 4
  %idxprom168 = sext i32 %90 to i64
  %arrayidx169 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom168
  %91 = load i32, i32* %arrayidx169, align 4
  %cmp170 = icmp eq i32 %91, 10
  br i1 %cmp170, label %if.then.171, label %if.else.173

if.then.171:                                      ; preds = %lor.lhs.false.167, %while.body.163
  %92 = load i32, i32* %attackers, align 4
  %inc172 = add nsw i32 %92, 1
  store i32 %inc172, i32* %attackers, align 4
  br label %while.end.183

if.else.173:                                      ; preds = %lor.lhs.false.167
  %93 = load i32, i32* %a_sq, align 4
  %idxprom174 = sext i32 %93 to i64
  %arrayidx175 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom174
  %94 = load i32, i32* %arrayidx175, align 4
  %cmp176 = icmp ne i32 %94, 13
  br i1 %cmp176, label %if.then.177, label %if.end.178

if.then.177:                                      ; preds = %if.else.173
  br label %while.end.183

if.end.178:                                       ; preds = %if.else.173
  br label %if.end.179

if.end.179:                                       ; preds = %if.end.178
  %95 = load i32, i32* %i, align 4
  %idxprom180 = sext i32 %95 to i64
  %arrayidx181 = getelementptr inbounds [4 x i32], [4 x i32]* @calc_attackers.bishop_o, i32 0, i64 %idxprom180
  %96 = load i32, i32* %arrayidx181, align 4
  %97 = load i32, i32* %a_sq, align 4
  %add182 = add nsw i32 %97, %96
  store i32 %add182, i32* %a_sq, align 4
  br label %while.cond.159

while.end.183:                                    ; preds = %if.then.177, %if.then.171, %while.cond.159
  br label %if.end.184

if.end.184:                                       ; preds = %while.end.183
  br label %if.end.185

if.end.185:                                       ; preds = %if.end.184
  br label %for.inc.186

for.inc.186:                                      ; preds = %if.end.185
  %98 = load i32, i32* %i, align 4
  %inc187 = add nsw i32 %98, 1
  store i32 %inc187, i32* %i, align 4
  br label %for.cond.138

for.end.188:                                      ; preds = %if.then.156, %if.then.150, %for.cond.138
  store i32 0, i32* %i, align 4
  br label %for.cond.189

for.cond.189:                                     ; preds = %for.inc.201, %for.end.188
  %99 = load i32, i32* %i, align 4
  %cmp190 = icmp slt i32 %99, 8
  br i1 %cmp190, label %for.body.191, label %for.end.203

for.body.191:                                     ; preds = %for.cond.189
  %100 = load i32, i32* %square.addr, align 4
  %101 = load i32, i32* %i, align 4
  %idxprom192 = sext i32 %101 to i64
  %arrayidx193 = getelementptr inbounds [8 x i32], [8 x i32]* @calc_attackers.knight_o, i32 0, i64 %idxprom192
  %102 = load i32, i32* %arrayidx193, align 4
  %add194 = add nsw i32 %100, %102
  store i32 %add194, i32* %a_sq, align 4
  %103 = load i32, i32* %a_sq, align 4
  %idxprom195 = sext i32 %103 to i64
  %arrayidx196 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom195
  %104 = load i32, i32* %arrayidx196, align 4
  %cmp197 = icmp eq i32 %104, 4
  br i1 %cmp197, label %if.then.198, label %if.end.200

if.then.198:                                      ; preds = %for.body.191
  %105 = load i32, i32* %attackers, align 4
  %inc199 = add nsw i32 %105, 1
  store i32 %inc199, i32* %attackers, align 4
  br label %if.end.200

if.end.200:                                       ; preds = %if.then.198, %for.body.191
  br label %for.inc.201

for.inc.201:                                      ; preds = %if.end.200
  %106 = load i32, i32* %i, align 4
  %inc202 = add nsw i32 %106, 1
  store i32 %inc202, i32* %i, align 4
  br label %for.cond.189

for.end.203:                                      ; preds = %for.cond.189
  br label %if.end.204

if.end.204:                                       ; preds = %for.end.203, %for.end.96
  %107 = load i32, i32* %attackers, align 4
  store i32 %107, i32* %retval
  br label %return

return:                                           ; preds = %if.end.204, %if.then
  %108 = load i32, i32* %retval
  ret i32 %108
}

; Function Attrs: nounwind uwtable
define i32 @is_attacked(i32 %square, i32 %color) #0 {
entry:
  %retval = alloca i32, align 4
  %square.addr = alloca i32, align 4
  %color.addr = alloca i32, align 4
  %ndir = alloca i32, align 4
  %a_sq = alloca i32, align 4
  %basq = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 %square, i32* %square.addr, align 4
  store i32 %color, i32* %color.addr, align 4
  %0 = load i32, i32* %color.addr, align 4
  %and = and i32 %0, 1
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %1 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %1, 4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [4 x i32], [4 x i32]* @is_attacked.bishop_o, i32 0, i64 %idxprom
  %3 = load i32, i32* %arrayidx, align 4
  store i32 %3, i32* %ndir, align 4
  %4 = load i32, i32* %square.addr, align 4
  %5 = load i32, i32* %ndir, align 4
  %add = add nsw i32 %4, %5
  store i32 %add, i32* %a_sq, align 4
  %6 = load i32, i32* %a_sq, align 4
  %idxprom1 = sext i32 %6 to i64
  %arrayidx2 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom1
  %7 = load i32, i32* %arrayidx2, align 4
  store i32 %7, i32* %basq, align 4
  %8 = load i32, i32* %basq, align 4
  %cmp3 = icmp eq i32 %8, 1
  br i1 %cmp3, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body
  %9 = load i32, i32* %i, align 4
  %and4 = and i32 %9, 1
  %tobool5 = icmp ne i32 %and4, 0
  br i1 %tobool5, label %if.then.6, label %if.end

if.then.6:                                        ; preds = %land.lhs.true
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true, %for.body
  %10 = load i32, i32* %basq, align 4
  %cmp7 = icmp eq i32 %10, 5
  br i1 %cmp7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %if.end
  store i32 1, i32* %retval
  br label %return

if.end.9:                                         ; preds = %if.end
  br label %while.cond

while.cond:                                       ; preds = %if.end.17, %if.end.9
  %11 = load i32, i32* %basq, align 4
  %cmp10 = icmp ne i32 %11, 0
  br i1 %cmp10, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %12 = load i32, i32* %basq, align 4
  %cmp11 = icmp eq i32 %12, 11
  br i1 %cmp11, label %if.then.13, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.body
  %13 = load i32, i32* %basq, align 4
  %cmp12 = icmp eq i32 %13, 9
  br i1 %cmp12, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %lor.lhs.false, %while.body
  store i32 1, i32* %retval
  br label %return

if.end.14:                                        ; preds = %lor.lhs.false
  %14 = load i32, i32* %basq, align 4
  %cmp15 = icmp ne i32 %14, 13
  br i1 %cmp15, label %if.then.16, label %if.end.17

if.then.16:                                       ; preds = %if.end.14
  br label %while.end

if.end.17:                                        ; preds = %if.end.14
  %15 = load i32, i32* %ndir, align 4
  %16 = load i32, i32* %a_sq, align 4
  %add18 = add nsw i32 %16, %15
  store i32 %add18, i32* %a_sq, align 4
  %17 = load i32, i32* %a_sq, align 4
  %idxprom19 = sext i32 %17 to i64
  %arrayidx20 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom19
  %18 = load i32, i32* %arrayidx20, align 4
  store i32 %18, i32* %basq, align 4
  br label %while.cond

while.end:                                        ; preds = %if.then.16, %while.cond
  br label %for.inc

for.inc:                                          ; preds = %while.end
  %19 = load i32, i32* %i, align 4
  %inc = add nsw i32 %19, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond.21

for.cond.21:                                      ; preds = %for.inc.32, %for.end
  %20 = load i32, i32* %i, align 4
  %cmp22 = icmp slt i32 %20, 8
  br i1 %cmp22, label %for.body.23, label %for.end.34

for.body.23:                                      ; preds = %for.cond.21
  %21 = load i32, i32* %square.addr, align 4
  %22 = load i32, i32* %i, align 4
  %idxprom24 = sext i32 %22 to i64
  %arrayidx25 = getelementptr inbounds [8 x i32], [8 x i32]* @is_attacked.knight_o, i32 0, i64 %idxprom24
  %23 = load i32, i32* %arrayidx25, align 4
  %add26 = add nsw i32 %21, %23
  %idxprom27 = sext i32 %add26 to i64
  %arrayidx28 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom27
  %24 = load i32, i32* %arrayidx28, align 4
  %cmp29 = icmp eq i32 %24, 3
  br i1 %cmp29, label %if.then.30, label %if.end.31

if.then.30:                                       ; preds = %for.body.23
  store i32 1, i32* %retval
  br label %return

if.end.31:                                        ; preds = %for.body.23
  br label %for.inc.32

for.inc.32:                                       ; preds = %if.end.31
  %25 = load i32, i32* %i, align 4
  %inc33 = add nsw i32 %25, 1
  store i32 %inc33, i32* %i, align 4
  br label %for.cond.21

for.end.34:                                       ; preds = %for.cond.21
  store i32 0, i32* %i, align 4
  br label %for.cond.35

for.cond.35:                                      ; preds = %for.inc.61, %for.end.34
  %26 = load i32, i32* %i, align 4
  %cmp36 = icmp slt i32 %26, 4
  br i1 %cmp36, label %for.body.37, label %for.end.63

for.body.37:                                      ; preds = %for.cond.35
  %27 = load i32, i32* %i, align 4
  %idxprom38 = sext i32 %27 to i64
  %arrayidx39 = getelementptr inbounds [4 x i32], [4 x i32]* @is_attacked.rook_o, i32 0, i64 %idxprom38
  %28 = load i32, i32* %arrayidx39, align 4
  store i32 %28, i32* %ndir, align 4
  %29 = load i32, i32* %square.addr, align 4
  %30 = load i32, i32* %ndir, align 4
  %add40 = add nsw i32 %29, %30
  store i32 %add40, i32* %a_sq, align 4
  %31 = load i32, i32* %a_sq, align 4
  %idxprom41 = sext i32 %31 to i64
  %arrayidx42 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom41
  %32 = load i32, i32* %arrayidx42, align 4
  store i32 %32, i32* %basq, align 4
  %33 = load i32, i32* %basq, align 4
  %cmp43 = icmp eq i32 %33, 5
  br i1 %cmp43, label %if.then.44, label %if.end.45

if.then.44:                                       ; preds = %for.body.37
  store i32 1, i32* %retval
  br label %return

if.end.45:                                        ; preds = %for.body.37
  br label %while.cond.46

while.cond.46:                                    ; preds = %if.end.56, %if.end.45
  %34 = load i32, i32* %basq, align 4
  %cmp47 = icmp ne i32 %34, 0
  br i1 %cmp47, label %while.body.48, label %while.end.60

while.body.48:                                    ; preds = %while.cond.46
  %35 = load i32, i32* %basq, align 4
  %cmp49 = icmp eq i32 %35, 7
  br i1 %cmp49, label %if.then.52, label %lor.lhs.false.50

lor.lhs.false.50:                                 ; preds = %while.body.48
  %36 = load i32, i32* %basq, align 4
  %cmp51 = icmp eq i32 %36, 9
  br i1 %cmp51, label %if.then.52, label %if.end.53

if.then.52:                                       ; preds = %lor.lhs.false.50, %while.body.48
  store i32 1, i32* %retval
  br label %return

if.end.53:                                        ; preds = %lor.lhs.false.50
  %37 = load i32, i32* %basq, align 4
  %cmp54 = icmp ne i32 %37, 13
  br i1 %cmp54, label %if.then.55, label %if.end.56

if.then.55:                                       ; preds = %if.end.53
  br label %while.end.60

if.end.56:                                        ; preds = %if.end.53
  %38 = load i32, i32* %ndir, align 4
  %39 = load i32, i32* %a_sq, align 4
  %add57 = add nsw i32 %39, %38
  store i32 %add57, i32* %a_sq, align 4
  %40 = load i32, i32* %a_sq, align 4
  %idxprom58 = sext i32 %40 to i64
  %arrayidx59 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom58
  %41 = load i32, i32* %arrayidx59, align 4
  store i32 %41, i32* %basq, align 4
  br label %while.cond.46

while.end.60:                                     ; preds = %if.then.55, %while.cond.46
  br label %for.inc.61

for.inc.61:                                       ; preds = %while.end.60
  %42 = load i32, i32* %i, align 4
  %inc62 = add nsw i32 %42, 1
  store i32 %inc62, i32* %i, align 4
  br label %for.cond.35

for.end.63:                                       ; preds = %for.cond.35
  store i32 0, i32* %retval
  br label %return

if.else:                                          ; preds = %entry
  store i32 0, i32* %i, align 4
  br label %for.cond.64

for.cond.64:                                      ; preds = %for.inc.96, %if.else
  %43 = load i32, i32* %i, align 4
  %cmp65 = icmp slt i32 %43, 4
  br i1 %cmp65, label %for.body.66, label %for.end.98

for.body.66:                                      ; preds = %for.cond.64
  %44 = load i32, i32* %i, align 4
  %idxprom67 = sext i32 %44 to i64
  %arrayidx68 = getelementptr inbounds [4 x i32], [4 x i32]* @is_attacked.bishop_o, i32 0, i64 %idxprom67
  %45 = load i32, i32* %arrayidx68, align 4
  store i32 %45, i32* %ndir, align 4
  %46 = load i32, i32* %square.addr, align 4
  %47 = load i32, i32* %ndir, align 4
  %add69 = add nsw i32 %46, %47
  store i32 %add69, i32* %a_sq, align 4
  %48 = load i32, i32* %a_sq, align 4
  %idxprom70 = sext i32 %48 to i64
  %arrayidx71 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom70
  %49 = load i32, i32* %arrayidx71, align 4
  store i32 %49, i32* %basq, align 4
  %50 = load i32, i32* %basq, align 4
  %cmp72 = icmp eq i32 %50, 2
  br i1 %cmp72, label %land.lhs.true.73, label %if.end.77

land.lhs.true.73:                                 ; preds = %for.body.66
  %51 = load i32, i32* %i, align 4
  %and74 = and i32 %51, 1
  %tobool75 = icmp ne i32 %and74, 0
  br i1 %tobool75, label %if.end.77, label %if.then.76

if.then.76:                                       ; preds = %land.lhs.true.73
  store i32 1, i32* %retval
  br label %return

if.end.77:                                        ; preds = %land.lhs.true.73, %for.body.66
  %52 = load i32, i32* %basq, align 4
  %cmp78 = icmp eq i32 %52, 6
  br i1 %cmp78, label %if.then.79, label %if.end.80

if.then.79:                                       ; preds = %if.end.77
  store i32 1, i32* %retval
  br label %return

if.end.80:                                        ; preds = %if.end.77
  br label %while.cond.81

while.cond.81:                                    ; preds = %if.end.91, %if.end.80
  %53 = load i32, i32* %basq, align 4
  %cmp82 = icmp ne i32 %53, 0
  br i1 %cmp82, label %while.body.83, label %while.end.95

while.body.83:                                    ; preds = %while.cond.81
  %54 = load i32, i32* %basq, align 4
  %cmp84 = icmp eq i32 %54, 12
  br i1 %cmp84, label %if.then.87, label %lor.lhs.false.85

lor.lhs.false.85:                                 ; preds = %while.body.83
  %55 = load i32, i32* %basq, align 4
  %cmp86 = icmp eq i32 %55, 10
  br i1 %cmp86, label %if.then.87, label %if.end.88

if.then.87:                                       ; preds = %lor.lhs.false.85, %while.body.83
  store i32 1, i32* %retval
  br label %return

if.end.88:                                        ; preds = %lor.lhs.false.85
  %56 = load i32, i32* %basq, align 4
  %cmp89 = icmp ne i32 %56, 13
  br i1 %cmp89, label %if.then.90, label %if.end.91

if.then.90:                                       ; preds = %if.end.88
  br label %while.end.95

if.end.91:                                        ; preds = %if.end.88
  %57 = load i32, i32* %ndir, align 4
  %58 = load i32, i32* %a_sq, align 4
  %add92 = add nsw i32 %58, %57
  store i32 %add92, i32* %a_sq, align 4
  %59 = load i32, i32* %a_sq, align 4
  %idxprom93 = sext i32 %59 to i64
  %arrayidx94 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom93
  %60 = load i32, i32* %arrayidx94, align 4
  store i32 %60, i32* %basq, align 4
  br label %while.cond.81

while.end.95:                                     ; preds = %if.then.90, %while.cond.81
  br label %for.inc.96

for.inc.96:                                       ; preds = %while.end.95
  %61 = load i32, i32* %i, align 4
  %inc97 = add nsw i32 %61, 1
  store i32 %inc97, i32* %i, align 4
  br label %for.cond.64

for.end.98:                                       ; preds = %for.cond.64
  store i32 0, i32* %i, align 4
  br label %for.cond.99

for.cond.99:                                      ; preds = %for.inc.110, %for.end.98
  %62 = load i32, i32* %i, align 4
  %cmp100 = icmp slt i32 %62, 8
  br i1 %cmp100, label %for.body.101, label %for.end.112

for.body.101:                                     ; preds = %for.cond.99
  %63 = load i32, i32* %square.addr, align 4
  %64 = load i32, i32* %i, align 4
  %idxprom102 = sext i32 %64 to i64
  %arrayidx103 = getelementptr inbounds [8 x i32], [8 x i32]* @is_attacked.knight_o, i32 0, i64 %idxprom102
  %65 = load i32, i32* %arrayidx103, align 4
  %add104 = add nsw i32 %63, %65
  %idxprom105 = sext i32 %add104 to i64
  %arrayidx106 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom105
  %66 = load i32, i32* %arrayidx106, align 4
  %cmp107 = icmp eq i32 %66, 4
  br i1 %cmp107, label %if.then.108, label %if.end.109

if.then.108:                                      ; preds = %for.body.101
  store i32 1, i32* %retval
  br label %return

if.end.109:                                       ; preds = %for.body.101
  br label %for.inc.110

for.inc.110:                                      ; preds = %if.end.109
  %67 = load i32, i32* %i, align 4
  %inc111 = add nsw i32 %67, 1
  store i32 %inc111, i32* %i, align 4
  br label %for.cond.99

for.end.112:                                      ; preds = %for.cond.99
  store i32 0, i32* %i, align 4
  br label %for.cond.113

for.cond.113:                                     ; preds = %for.inc.141, %for.end.112
  %68 = load i32, i32* %i, align 4
  %cmp114 = icmp slt i32 %68, 4
  br i1 %cmp114, label %for.body.115, label %for.end.143

for.body.115:                                     ; preds = %for.cond.113
  %69 = load i32, i32* %i, align 4
  %idxprom116 = sext i32 %69 to i64
  %arrayidx117 = getelementptr inbounds [4 x i32], [4 x i32]* @is_attacked.rook_o, i32 0, i64 %idxprom116
  %70 = load i32, i32* %arrayidx117, align 4
  store i32 %70, i32* %ndir, align 4
  %71 = load i32, i32* %square.addr, align 4
  %72 = load i32, i32* %i, align 4
  %idxprom118 = sext i32 %72 to i64
  %arrayidx119 = getelementptr inbounds [4 x i32], [4 x i32]* @is_attacked.rook_o, i32 0, i64 %idxprom118
  %73 = load i32, i32* %arrayidx119, align 4
  %add120 = add nsw i32 %71, %73
  store i32 %add120, i32* %a_sq, align 4
  %74 = load i32, i32* %a_sq, align 4
  %idxprom121 = sext i32 %74 to i64
  %arrayidx122 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom121
  %75 = load i32, i32* %arrayidx122, align 4
  store i32 %75, i32* %basq, align 4
  %76 = load i32, i32* %basq, align 4
  %cmp123 = icmp eq i32 %76, 6
  br i1 %cmp123, label %if.then.124, label %if.end.125

if.then.124:                                      ; preds = %for.body.115
  store i32 1, i32* %retval
  br label %return

if.end.125:                                       ; preds = %for.body.115
  br label %while.cond.126

while.cond.126:                                   ; preds = %if.end.136, %if.end.125
  %77 = load i32, i32* %basq, align 4
  %cmp127 = icmp ne i32 %77, 0
  br i1 %cmp127, label %while.body.128, label %while.end.140

while.body.128:                                   ; preds = %while.cond.126
  %78 = load i32, i32* %basq, align 4
  %cmp129 = icmp eq i32 %78, 8
  br i1 %cmp129, label %if.then.132, label %lor.lhs.false.130

lor.lhs.false.130:                                ; preds = %while.body.128
  %79 = load i32, i32* %basq, align 4
  %cmp131 = icmp eq i32 %79, 10
  br i1 %cmp131, label %if.then.132, label %if.end.133

if.then.132:                                      ; preds = %lor.lhs.false.130, %while.body.128
  store i32 1, i32* %retval
  br label %return

if.end.133:                                       ; preds = %lor.lhs.false.130
  %80 = load i32, i32* %basq, align 4
  %cmp134 = icmp ne i32 %80, 13
  br i1 %cmp134, label %if.then.135, label %if.end.136

if.then.135:                                      ; preds = %if.end.133
  br label %while.end.140

if.end.136:                                       ; preds = %if.end.133
  %81 = load i32, i32* %ndir, align 4
  %82 = load i32, i32* %a_sq, align 4
  %add137 = add nsw i32 %82, %81
  store i32 %add137, i32* %a_sq, align 4
  %83 = load i32, i32* %a_sq, align 4
  %idxprom138 = sext i32 %83 to i64
  %arrayidx139 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom138
  %84 = load i32, i32* %arrayidx139, align 4
  store i32 %84, i32* %basq, align 4
  br label %while.cond.126

while.end.140:                                    ; preds = %if.then.135, %while.cond.126
  br label %for.inc.141

for.inc.141:                                      ; preds = %while.end.140
  %85 = load i32, i32* %i, align 4
  %inc142 = add nsw i32 %85, 1
  store i32 %inc142, i32* %i, align 4
  br label %for.cond.113

for.end.143:                                      ; preds = %for.cond.113
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %for.end.143, %if.then.132, %if.then.124, %if.then.108, %if.then.87, %if.then.79, %if.then.76, %for.end.63, %if.then.52, %if.then.44, %if.then.30, %if.then.13, %if.then.8, %if.then.6
  %86 = load i32, i32* %retval
  ret i32 %86
}

; Function Attrs: nounwind uwtable
define i32 @nk_attacked(i32 %square, i32 %color) #0 {
entry:
  %retval = alloca i32, align 4
  %square.addr = alloca i32, align 4
  %color.addr = alloca i32, align 4
  %ndir = alloca i32, align 4
  %a_sq = alloca i32, align 4
  %basq = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 %square, i32* %square.addr, align 4
  store i32 %color, i32* %color.addr, align 4
  %0 = load i32, i32* %color.addr, align 4
  %and = and i32 %0, 1
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %1 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %1, 4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [4 x i32], [4 x i32]* @nk_attacked.bishop_o, i32 0, i64 %idxprom
  %3 = load i32, i32* %arrayidx, align 4
  store i32 %3, i32* %ndir, align 4
  %4 = load i32, i32* %square.addr, align 4
  %5 = load i32, i32* %ndir, align 4
  %add = add nsw i32 %4, %5
  store i32 %add, i32* %a_sq, align 4
  %6 = load i32, i32* %a_sq, align 4
  %idxprom1 = sext i32 %6 to i64
  %arrayidx2 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom1
  %7 = load i32, i32* %arrayidx2, align 4
  store i32 %7, i32* %basq, align 4
  %8 = load i32, i32* %basq, align 4
  %cmp3 = icmp eq i32 %8, 1
  br i1 %cmp3, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body
  %9 = load i32, i32* %i, align 4
  %and4 = and i32 %9, 1
  %tobool5 = icmp ne i32 %and4, 0
  br i1 %tobool5, label %if.then.6, label %if.end

if.then.6:                                        ; preds = %land.lhs.true
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true, %for.body
  br label %while.cond

while.cond:                                       ; preds = %if.end.14, %if.end
  %10 = load i32, i32* %basq, align 4
  %cmp7 = icmp ne i32 %10, 0
  br i1 %cmp7, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %11 = load i32, i32* %basq, align 4
  %cmp8 = icmp eq i32 %11, 11
  br i1 %cmp8, label %if.then.10, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.body
  %12 = load i32, i32* %basq, align 4
  %cmp9 = icmp eq i32 %12, 9
  br i1 %cmp9, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %lor.lhs.false, %while.body
  store i32 1, i32* %retval
  br label %return

if.end.11:                                        ; preds = %lor.lhs.false
  %13 = load i32, i32* %basq, align 4
  %cmp12 = icmp ne i32 %13, 13
  br i1 %cmp12, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %if.end.11
  br label %while.end

if.end.14:                                        ; preds = %if.end.11
  %14 = load i32, i32* %ndir, align 4
  %15 = load i32, i32* %a_sq, align 4
  %add15 = add nsw i32 %15, %14
  store i32 %add15, i32* %a_sq, align 4
  %16 = load i32, i32* %a_sq, align 4
  %idxprom16 = sext i32 %16 to i64
  %arrayidx17 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom16
  %17 = load i32, i32* %arrayidx17, align 4
  store i32 %17, i32* %basq, align 4
  br label %while.cond

while.end:                                        ; preds = %if.then.13, %while.cond
  br label %for.inc

for.inc:                                          ; preds = %while.end
  %18 = load i32, i32* %i, align 4
  %inc = add nsw i32 %18, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond.18

for.cond.18:                                      ; preds = %for.inc.29, %for.end
  %19 = load i32, i32* %i, align 4
  %cmp19 = icmp slt i32 %19, 8
  br i1 %cmp19, label %for.body.20, label %for.end.31

for.body.20:                                      ; preds = %for.cond.18
  %20 = load i32, i32* %square.addr, align 4
  %21 = load i32, i32* %i, align 4
  %idxprom21 = sext i32 %21 to i64
  %arrayidx22 = getelementptr inbounds [8 x i32], [8 x i32]* @nk_attacked.knight_o, i32 0, i64 %idxprom21
  %22 = load i32, i32* %arrayidx22, align 4
  %add23 = add nsw i32 %20, %22
  %idxprom24 = sext i32 %add23 to i64
  %arrayidx25 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom24
  %23 = load i32, i32* %arrayidx25, align 4
  %cmp26 = icmp eq i32 %23, 3
  br i1 %cmp26, label %if.then.27, label %if.end.28

if.then.27:                                       ; preds = %for.body.20
  store i32 1, i32* %retval
  br label %return

if.end.28:                                        ; preds = %for.body.20
  br label %for.inc.29

for.inc.29:                                       ; preds = %if.end.28
  %24 = load i32, i32* %i, align 4
  %inc30 = add nsw i32 %24, 1
  store i32 %inc30, i32* %i, align 4
  br label %for.cond.18

for.end.31:                                       ; preds = %for.cond.18
  store i32 0, i32* %i, align 4
  br label %for.cond.32

for.cond.32:                                      ; preds = %for.inc.55, %for.end.31
  %25 = load i32, i32* %i, align 4
  %cmp33 = icmp slt i32 %25, 4
  br i1 %cmp33, label %for.body.34, label %for.end.57

for.body.34:                                      ; preds = %for.cond.32
  %26 = load i32, i32* %i, align 4
  %idxprom35 = sext i32 %26 to i64
  %arrayidx36 = getelementptr inbounds [4 x i32], [4 x i32]* @nk_attacked.rook_o, i32 0, i64 %idxprom35
  %27 = load i32, i32* %arrayidx36, align 4
  store i32 %27, i32* %ndir, align 4
  %28 = load i32, i32* %square.addr, align 4
  %29 = load i32, i32* %ndir, align 4
  %add37 = add nsw i32 %28, %29
  store i32 %add37, i32* %a_sq, align 4
  %30 = load i32, i32* %a_sq, align 4
  %idxprom38 = sext i32 %30 to i64
  %arrayidx39 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom38
  %31 = load i32, i32* %arrayidx39, align 4
  store i32 %31, i32* %basq, align 4
  br label %while.cond.40

while.cond.40:                                    ; preds = %if.end.50, %for.body.34
  %32 = load i32, i32* %basq, align 4
  %cmp41 = icmp ne i32 %32, 0
  br i1 %cmp41, label %while.body.42, label %while.end.54

while.body.42:                                    ; preds = %while.cond.40
  %33 = load i32, i32* %basq, align 4
  %cmp43 = icmp eq i32 %33, 7
  br i1 %cmp43, label %if.then.46, label %lor.lhs.false.44

lor.lhs.false.44:                                 ; preds = %while.body.42
  %34 = load i32, i32* %basq, align 4
  %cmp45 = icmp eq i32 %34, 9
  br i1 %cmp45, label %if.then.46, label %if.end.47

if.then.46:                                       ; preds = %lor.lhs.false.44, %while.body.42
  store i32 1, i32* %retval
  br label %return

if.end.47:                                        ; preds = %lor.lhs.false.44
  %35 = load i32, i32* %basq, align 4
  %cmp48 = icmp ne i32 %35, 13
  br i1 %cmp48, label %if.then.49, label %if.end.50

if.then.49:                                       ; preds = %if.end.47
  br label %while.end.54

if.end.50:                                        ; preds = %if.end.47
  %36 = load i32, i32* %ndir, align 4
  %37 = load i32, i32* %a_sq, align 4
  %add51 = add nsw i32 %37, %36
  store i32 %add51, i32* %a_sq, align 4
  %38 = load i32, i32* %a_sq, align 4
  %idxprom52 = sext i32 %38 to i64
  %arrayidx53 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom52
  %39 = load i32, i32* %arrayidx53, align 4
  store i32 %39, i32* %basq, align 4
  br label %while.cond.40

while.end.54:                                     ; preds = %if.then.49, %while.cond.40
  br label %for.inc.55

for.inc.55:                                       ; preds = %while.end.54
  %40 = load i32, i32* %i, align 4
  %inc56 = add nsw i32 %40, 1
  store i32 %inc56, i32* %i, align 4
  br label %for.cond.32

for.end.57:                                       ; preds = %for.cond.32
  store i32 0, i32* %retval
  br label %return

if.else:                                          ; preds = %entry
  store i32 0, i32* %i, align 4
  br label %for.cond.58

for.cond.58:                                      ; preds = %for.inc.87, %if.else
  %41 = load i32, i32* %i, align 4
  %cmp59 = icmp slt i32 %41, 4
  br i1 %cmp59, label %for.body.60, label %for.end.89

for.body.60:                                      ; preds = %for.cond.58
  %42 = load i32, i32* %i, align 4
  %idxprom61 = sext i32 %42 to i64
  %arrayidx62 = getelementptr inbounds [4 x i32], [4 x i32]* @nk_attacked.bishop_o, i32 0, i64 %idxprom61
  %43 = load i32, i32* %arrayidx62, align 4
  store i32 %43, i32* %ndir, align 4
  %44 = load i32, i32* %square.addr, align 4
  %45 = load i32, i32* %ndir, align 4
  %add63 = add nsw i32 %44, %45
  store i32 %add63, i32* %a_sq, align 4
  %46 = load i32, i32* %a_sq, align 4
  %idxprom64 = sext i32 %46 to i64
  %arrayidx65 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom64
  %47 = load i32, i32* %arrayidx65, align 4
  store i32 %47, i32* %basq, align 4
  %48 = load i32, i32* %basq, align 4
  %cmp66 = icmp eq i32 %48, 2
  br i1 %cmp66, label %land.lhs.true.67, label %if.end.71

land.lhs.true.67:                                 ; preds = %for.body.60
  %49 = load i32, i32* %i, align 4
  %and68 = and i32 %49, 1
  %tobool69 = icmp ne i32 %and68, 0
  br i1 %tobool69, label %if.end.71, label %if.then.70

if.then.70:                                       ; preds = %land.lhs.true.67
  store i32 1, i32* %retval
  br label %return

if.end.71:                                        ; preds = %land.lhs.true.67, %for.body.60
  br label %while.cond.72

while.cond.72:                                    ; preds = %if.end.82, %if.end.71
  %50 = load i32, i32* %basq, align 4
  %cmp73 = icmp ne i32 %50, 0
  br i1 %cmp73, label %while.body.74, label %while.end.86

while.body.74:                                    ; preds = %while.cond.72
  %51 = load i32, i32* %basq, align 4
  %cmp75 = icmp eq i32 %51, 12
  br i1 %cmp75, label %if.then.78, label %lor.lhs.false.76

lor.lhs.false.76:                                 ; preds = %while.body.74
  %52 = load i32, i32* %basq, align 4
  %cmp77 = icmp eq i32 %52, 10
  br i1 %cmp77, label %if.then.78, label %if.end.79

if.then.78:                                       ; preds = %lor.lhs.false.76, %while.body.74
  store i32 1, i32* %retval
  br label %return

if.end.79:                                        ; preds = %lor.lhs.false.76
  %53 = load i32, i32* %basq, align 4
  %cmp80 = icmp ne i32 %53, 13
  br i1 %cmp80, label %if.then.81, label %if.end.82

if.then.81:                                       ; preds = %if.end.79
  br label %while.end.86

if.end.82:                                        ; preds = %if.end.79
  %54 = load i32, i32* %ndir, align 4
  %55 = load i32, i32* %a_sq, align 4
  %add83 = add nsw i32 %55, %54
  store i32 %add83, i32* %a_sq, align 4
  %56 = load i32, i32* %a_sq, align 4
  %idxprom84 = sext i32 %56 to i64
  %arrayidx85 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom84
  %57 = load i32, i32* %arrayidx85, align 4
  store i32 %57, i32* %basq, align 4
  br label %while.cond.72

while.end.86:                                     ; preds = %if.then.81, %while.cond.72
  br label %for.inc.87

for.inc.87:                                       ; preds = %while.end.86
  %58 = load i32, i32* %i, align 4
  %inc88 = add nsw i32 %58, 1
  store i32 %inc88, i32* %i, align 4
  br label %for.cond.58

for.end.89:                                       ; preds = %for.cond.58
  store i32 0, i32* %i, align 4
  br label %for.cond.90

for.cond.90:                                      ; preds = %for.inc.101, %for.end.89
  %59 = load i32, i32* %i, align 4
  %cmp91 = icmp slt i32 %59, 8
  br i1 %cmp91, label %for.body.92, label %for.end.103

for.body.92:                                      ; preds = %for.cond.90
  %60 = load i32, i32* %square.addr, align 4
  %61 = load i32, i32* %i, align 4
  %idxprom93 = sext i32 %61 to i64
  %arrayidx94 = getelementptr inbounds [8 x i32], [8 x i32]* @nk_attacked.knight_o, i32 0, i64 %idxprom93
  %62 = load i32, i32* %arrayidx94, align 4
  %add95 = add nsw i32 %60, %62
  %idxprom96 = sext i32 %add95 to i64
  %arrayidx97 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom96
  %63 = load i32, i32* %arrayidx97, align 4
  %cmp98 = icmp eq i32 %63, 4
  br i1 %cmp98, label %if.then.99, label %if.end.100

if.then.99:                                       ; preds = %for.body.92
  store i32 1, i32* %retval
  br label %return

if.end.100:                                       ; preds = %for.body.92
  br label %for.inc.101

for.inc.101:                                      ; preds = %if.end.100
  %64 = load i32, i32* %i, align 4
  %inc102 = add nsw i32 %64, 1
  store i32 %inc102, i32* %i, align 4
  br label %for.cond.90

for.end.103:                                      ; preds = %for.cond.90
  store i32 0, i32* %i, align 4
  br label %for.cond.104

for.cond.104:                                     ; preds = %for.inc.129, %for.end.103
  %65 = load i32, i32* %i, align 4
  %cmp105 = icmp slt i32 %65, 4
  br i1 %cmp105, label %for.body.106, label %for.end.131

for.body.106:                                     ; preds = %for.cond.104
  %66 = load i32, i32* %i, align 4
  %idxprom107 = sext i32 %66 to i64
  %arrayidx108 = getelementptr inbounds [4 x i32], [4 x i32]* @nk_attacked.rook_o, i32 0, i64 %idxprom107
  %67 = load i32, i32* %arrayidx108, align 4
  store i32 %67, i32* %ndir, align 4
  %68 = load i32, i32* %square.addr, align 4
  %69 = load i32, i32* %i, align 4
  %idxprom109 = sext i32 %69 to i64
  %arrayidx110 = getelementptr inbounds [4 x i32], [4 x i32]* @nk_attacked.rook_o, i32 0, i64 %idxprom109
  %70 = load i32, i32* %arrayidx110, align 4
  %add111 = add nsw i32 %68, %70
  store i32 %add111, i32* %a_sq, align 4
  %71 = load i32, i32* %a_sq, align 4
  %idxprom112 = sext i32 %71 to i64
  %arrayidx113 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom112
  %72 = load i32, i32* %arrayidx113, align 4
  store i32 %72, i32* %basq, align 4
  br label %while.cond.114

while.cond.114:                                   ; preds = %if.end.124, %for.body.106
  %73 = load i32, i32* %basq, align 4
  %cmp115 = icmp ne i32 %73, 0
  br i1 %cmp115, label %while.body.116, label %while.end.128

while.body.116:                                   ; preds = %while.cond.114
  %74 = load i32, i32* %basq, align 4
  %cmp117 = icmp eq i32 %74, 8
  br i1 %cmp117, label %if.then.120, label %lor.lhs.false.118

lor.lhs.false.118:                                ; preds = %while.body.116
  %75 = load i32, i32* %basq, align 4
  %cmp119 = icmp eq i32 %75, 10
  br i1 %cmp119, label %if.then.120, label %if.end.121

if.then.120:                                      ; preds = %lor.lhs.false.118, %while.body.116
  store i32 1, i32* %retval
  br label %return

if.end.121:                                       ; preds = %lor.lhs.false.118
  %76 = load i32, i32* %basq, align 4
  %cmp122 = icmp ne i32 %76, 13
  br i1 %cmp122, label %if.then.123, label %if.end.124

if.then.123:                                      ; preds = %if.end.121
  br label %while.end.128

if.end.124:                                       ; preds = %if.end.121
  %77 = load i32, i32* %ndir, align 4
  %78 = load i32, i32* %a_sq, align 4
  %add125 = add nsw i32 %78, %77
  store i32 %add125, i32* %a_sq, align 4
  %79 = load i32, i32* %a_sq, align 4
  %idxprom126 = sext i32 %79 to i64
  %arrayidx127 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom126
  %80 = load i32, i32* %arrayidx127, align 4
  store i32 %80, i32* %basq, align 4
  br label %while.cond.114

while.end.128:                                    ; preds = %if.then.123, %while.cond.114
  br label %for.inc.129

for.inc.129:                                      ; preds = %while.end.128
  %81 = load i32, i32* %i, align 4
  %inc130 = add nsw i32 %81, 1
  store i32 %inc130, i32* %i, align 4
  br label %for.cond.104

for.end.131:                                      ; preds = %for.cond.104
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %for.end.131, %if.then.120, %if.then.99, %if.then.78, %if.then.70, %for.end.57, %if.then.46, %if.then.27, %if.then.10, %if.then.6
  %82 = load i32, i32* %retval
  ret i32 %82
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
