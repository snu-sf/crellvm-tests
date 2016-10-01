; ModuleID = './MultiSource.Applications.obsequi/13.position_values.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@g_first_move = external global [2 x [32 x [32 x i32]]], align 16
@g_board_size = external global [2 x i32], align 4

; Function Attrs: nounwind uwtable
define void @set_position_values() #0 {
entry:
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %count = alloca i32, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.14, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 2
  br i1 %cmp, label %for.body, label %for.end.16

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc.11, %for.body
  %1 = load i32, i32* %j, align 4
  %cmp2 = icmp slt i32 %1, 32
  br i1 %cmp2, label %for.body.3, label %for.end.13

for.body.3:                                       ; preds = %for.cond.1
  store i32 0, i32* %k, align 4
  br label %for.cond.4

for.cond.4:                                       ; preds = %for.inc, %for.body.3
  %2 = load i32, i32* %k, align 4
  %cmp5 = icmp slt i32 %2, 32
  br i1 %cmp5, label %for.body.6, label %for.end

for.body.6:                                       ; preds = %for.cond.4
  %3 = load i32, i32* %k, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load i32, i32* %j, align 4
  %idxprom7 = sext i32 %4 to i64
  %5 = load i32, i32* %i, align 4
  %idxprom8 = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds [2 x [32 x [32 x i32]]], [2 x [32 x [32 x i32]]]* @g_first_move, i32 0, i64 %idxprom8
  %arrayidx9 = getelementptr inbounds [32 x [32 x i32]], [32 x [32 x i32]]* %arrayidx, i32 0, i64 %idxprom7
  %arrayidx10 = getelementptr inbounds [32 x i32], [32 x i32]* %arrayidx9, i32 0, i64 %idxprom
  store i32 0, i32* %arrayidx10, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body.6
  %6 = load i32, i32* %k, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond.4

for.end:                                          ; preds = %for.cond.4
  br label %for.inc.11

for.inc.11:                                       ; preds = %for.end
  %7 = load i32, i32* %j, align 4
  %inc12 = add nsw i32 %7, 1
  store i32 %inc12, i32* %j, align 4
  br label %for.cond.1

for.end.13:                                       ; preds = %for.cond.1
  br label %for.inc.14

for.inc.14:                                       ; preds = %for.end.13
  %8 = load i32, i32* %i, align 4
  %inc15 = add nsw i32 %8, 1
  store i32 %inc15, i32* %i, align 4
  br label %for.cond

for.end.16:                                       ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond.17

for.cond.17:                                      ; preds = %for.inc.38, %for.end.16
  %9 = load i32, i32* %i, align 4
  %cmp18 = icmp slt i32 %9, 2
  br i1 %cmp18, label %for.body.19, label %for.end.40

for.body.19:                                      ; preds = %for.cond.17
  store i32 127, i32* %count, align 4
  store i32 2, i32* %j, align 4
  br label %for.cond.20

for.cond.20:                                      ; preds = %for.inc.35, %for.body.19
  %10 = load i32, i32* %j, align 4
  %11 = load i32, i32* %i, align 4
  %idxprom21 = sext i32 %11 to i64
  %arrayidx22 = getelementptr inbounds [2 x i32], [2 x i32]* @g_board_size, i32 0, i64 %idxprom21
  %12 = load i32, i32* %arrayidx22, align 4
  %add = add nsw i32 %12, 3
  %div = sdiv i32 %add, 2
  %cmp23 = icmp slt i32 %10, %div
  br i1 %cmp23, label %for.body.24, label %for.end.37

for.body.24:                                      ; preds = %for.cond.20
  store i32 1, i32* %k, align 4
  br label %for.cond.25

for.cond.25:                                      ; preds = %for.inc.32, %for.body.24
  %13 = load i32, i32* %k, align 4
  %14 = load i32, i32* %i, align 4
  %xor = xor i32 %14, 1
  %idxprom26 = sext i32 %xor to i64
  %arrayidx27 = getelementptr inbounds [2 x i32], [2 x i32]* @g_board_size, i32 0, i64 %idxprom26
  %15 = load i32, i32* %arrayidx27, align 4
  %div28 = sdiv i32 %15, 2
  %add29 = add nsw i32 %div28, 1
  %cmp30 = icmp slt i32 %13, %add29
  br i1 %cmp30, label %for.body.31, label %for.end.34

for.body.31:                                      ; preds = %for.cond.25
  %16 = load i32, i32* %i, align 4
  %17 = load i32, i32* %j, align 4
  %18 = load i32, i32* %k, align 4
  %19 = load i32, i32* %count, align 4
  %dec = add nsw i32 %19, -1
  store i32 %dec, i32* %count, align 4
  call void @set_position_value(i32 %16, i32 %17, i32 %18, i32 %dec)
  br label %for.inc.32

for.inc.32:                                       ; preds = %for.body.31
  %20 = load i32, i32* %k, align 4
  %add33 = add nsw i32 %20, 2
  store i32 %add33, i32* %k, align 4
  br label %for.cond.25

for.end.34:                                       ; preds = %for.cond.25
  br label %for.inc.35

for.inc.35:                                       ; preds = %for.end.34
  %21 = load i32, i32* %j, align 4
  %add36 = add nsw i32 %21, 2
  store i32 %add36, i32* %j, align 4
  br label %for.cond.20

for.end.37:                                       ; preds = %for.cond.20
  br label %for.inc.38

for.inc.38:                                       ; preds = %for.end.37
  %22 = load i32, i32* %i, align 4
  %inc39 = add nsw i32 %22, 1
  store i32 %inc39, i32* %i, align 4
  br label %for.cond.17

for.end.40:                                       ; preds = %for.cond.17
  store i32 0, i32* %i, align 4
  br label %for.cond.41

for.cond.41:                                      ; preds = %for.inc.73, %for.end.40
  %23 = load i32, i32* %i, align 4
  %cmp42 = icmp slt i32 %23, 2
  br i1 %cmp42, label %for.body.43, label %for.end.75

for.body.43:                                      ; preds = %for.cond.41
  store i32 90, i32* %count, align 4
  store i32 2, i32* %j, align 4
  br label %for.cond.44

for.cond.44:                                      ; preds = %for.inc.70, %for.body.43
  %24 = load i32, i32* %j, align 4
  %25 = load i32, i32* %i, align 4
  %idxprom45 = sext i32 %25 to i64
  %arrayidx46 = getelementptr inbounds [2 x i32], [2 x i32]* @g_board_size, i32 0, i64 %idxprom45
  %26 = load i32, i32* %arrayidx46, align 4
  %add47 = add nsw i32 %26, 3
  %div48 = sdiv i32 %add47, 2
  %cmp49 = icmp slt i32 %24, %div48
  br i1 %cmp49, label %for.body.50, label %for.end.72

for.body.50:                                      ; preds = %for.cond.44
  store i32 1, i32* %k, align 4
  br label %for.cond.51

for.cond.51:                                      ; preds = %for.inc.67, %for.body.50
  %27 = load i32, i32* %k, align 4
  %28 = load i32, i32* %i, align 4
  %xor52 = xor i32 %28, 1
  %idxprom53 = sext i32 %xor52 to i64
  %arrayidx54 = getelementptr inbounds [2 x i32], [2 x i32]* @g_board_size, i32 0, i64 %idxprom53
  %29 = load i32, i32* %arrayidx54, align 4
  %div55 = sdiv i32 %29, 2
  %add56 = add nsw i32 %div55, 1
  %cmp57 = icmp slt i32 %27, %add56
  br i1 %cmp57, label %for.body.58, label %for.end.69

for.body.58:                                      ; preds = %for.cond.51
  %30 = load i32, i32* %k, align 4
  %idxprom59 = sext i32 %30 to i64
  %31 = load i32, i32* %j, align 4
  %idxprom60 = sext i32 %31 to i64
  %32 = load i32, i32* %i, align 4
  %idxprom61 = sext i32 %32 to i64
  %arrayidx62 = getelementptr inbounds [2 x [32 x [32 x i32]]], [2 x [32 x [32 x i32]]]* @g_first_move, i32 0, i64 %idxprom61
  %arrayidx63 = getelementptr inbounds [32 x [32 x i32]], [32 x [32 x i32]]* %arrayidx62, i32 0, i64 %idxprom60
  %arrayidx64 = getelementptr inbounds [32 x i32], [32 x i32]* %arrayidx63, i32 0, i64 %idxprom59
  %33 = load i32, i32* %arrayidx64, align 4
  %cmp65 = icmp eq i32 %33, 0
  br i1 %cmp65, label %if.then, label %if.end

if.then:                                          ; preds = %for.body.58
  %34 = load i32, i32* %i, align 4
  %35 = load i32, i32* %j, align 4
  %36 = load i32, i32* %k, align 4
  %37 = load i32, i32* %count, align 4
  %dec66 = add nsw i32 %37, -1
  store i32 %dec66, i32* %count, align 4
  call void @set_position_value(i32 %34, i32 %35, i32 %36, i32 %dec66)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.58
  br label %for.inc.67

for.inc.67:                                       ; preds = %if.end
  %38 = load i32, i32* %k, align 4
  %inc68 = add nsw i32 %38, 1
  store i32 %inc68, i32* %k, align 4
  br label %for.cond.51

for.end.69:                                       ; preds = %for.cond.51
  br label %for.inc.70

for.inc.70:                                       ; preds = %for.end.69
  %39 = load i32, i32* %j, align 4
  %add71 = add nsw i32 %39, 2
  store i32 %add71, i32* %j, align 4
  br label %for.cond.44

for.end.72:                                       ; preds = %for.cond.44
  br label %for.inc.73

for.inc.73:                                       ; preds = %for.end.72
  %40 = load i32, i32* %i, align 4
  %inc74 = add nsw i32 %40, 1
  store i32 %inc74, i32* %i, align 4
  br label %for.cond.41

for.end.75:                                       ; preds = %for.cond.41
  store i32 0, i32* %i, align 4
  br label %for.cond.76

for.cond.76:                                      ; preds = %for.inc.110, %for.end.75
  %41 = load i32, i32* %i, align 4
  %cmp77 = icmp slt i32 %41, 2
  br i1 %cmp77, label %for.body.78, label %for.end.112

for.body.78:                                      ; preds = %for.cond.76
  store i32 70, i32* %count, align 4
  store i32 3, i32* %j, align 4
  br label %for.cond.79

for.cond.79:                                      ; preds = %for.inc.107, %for.body.78
  %42 = load i32, i32* %j, align 4
  %43 = load i32, i32* %i, align 4
  %idxprom80 = sext i32 %43 to i64
  %arrayidx81 = getelementptr inbounds [2 x i32], [2 x i32]* @g_board_size, i32 0, i64 %idxprom80
  %44 = load i32, i32* %arrayidx81, align 4
  %add82 = add nsw i32 %44, 3
  %div83 = sdiv i32 %add82, 2
  %cmp84 = icmp slt i32 %42, %div83
  br i1 %cmp84, label %for.body.85, label %for.end.109

for.body.85:                                      ; preds = %for.cond.79
  store i32 1, i32* %k, align 4
  br label %for.cond.86

for.cond.86:                                      ; preds = %for.inc.104, %for.body.85
  %45 = load i32, i32* %k, align 4
  %46 = load i32, i32* %i, align 4
  %xor87 = xor i32 %46, 1
  %idxprom88 = sext i32 %xor87 to i64
  %arrayidx89 = getelementptr inbounds [2 x i32], [2 x i32]* @g_board_size, i32 0, i64 %idxprom88
  %47 = load i32, i32* %arrayidx89, align 4
  %div90 = sdiv i32 %47, 2
  %add91 = add nsw i32 %div90, 1
  %cmp92 = icmp slt i32 %45, %add91
  br i1 %cmp92, label %for.body.93, label %for.end.106

for.body.93:                                      ; preds = %for.cond.86
  %48 = load i32, i32* %k, align 4
  %idxprom94 = sext i32 %48 to i64
  %49 = load i32, i32* %j, align 4
  %idxprom95 = sext i32 %49 to i64
  %50 = load i32, i32* %i, align 4
  %idxprom96 = sext i32 %50 to i64
  %arrayidx97 = getelementptr inbounds [2 x [32 x [32 x i32]]], [2 x [32 x [32 x i32]]]* @g_first_move, i32 0, i64 %idxprom96
  %arrayidx98 = getelementptr inbounds [32 x [32 x i32]], [32 x [32 x i32]]* %arrayidx97, i32 0, i64 %idxprom95
  %arrayidx99 = getelementptr inbounds [32 x i32], [32 x i32]* %arrayidx98, i32 0, i64 %idxprom94
  %51 = load i32, i32* %arrayidx99, align 4
  %cmp100 = icmp eq i32 %51, 0
  br i1 %cmp100, label %if.then.101, label %if.end.103

if.then.101:                                      ; preds = %for.body.93
  %52 = load i32, i32* %i, align 4
  %53 = load i32, i32* %j, align 4
  %54 = load i32, i32* %k, align 4
  %55 = load i32, i32* %count, align 4
  %dec102 = add nsw i32 %55, -1
  store i32 %dec102, i32* %count, align 4
  call void @set_position_value(i32 %52, i32 %53, i32 %54, i32 %dec102)
  br label %if.end.103

if.end.103:                                       ; preds = %if.then.101, %for.body.93
  br label %for.inc.104

for.inc.104:                                      ; preds = %if.end.103
  %56 = load i32, i32* %k, align 4
  %add105 = add nsw i32 %56, 2
  store i32 %add105, i32* %k, align 4
  br label %for.cond.86

for.end.106:                                      ; preds = %for.cond.86
  br label %for.inc.107

for.inc.107:                                      ; preds = %for.end.106
  %57 = load i32, i32* %j, align 4
  %inc108 = add nsw i32 %57, 1
  store i32 %inc108, i32* %j, align 4
  br label %for.cond.79

for.end.109:                                      ; preds = %for.cond.79
  br label %for.inc.110

for.inc.110:                                      ; preds = %for.end.109
  %58 = load i32, i32* %i, align 4
  %inc111 = add nsw i32 %58, 1
  store i32 %inc111, i32* %i, align 4
  br label %for.cond.76

for.end.112:                                      ; preds = %for.cond.76
  store i32 0, i32* %i, align 4
  br label %for.cond.113

for.cond.113:                                     ; preds = %for.inc.147, %for.end.112
  %59 = load i32, i32* %i, align 4
  %cmp114 = icmp slt i32 %59, 2
  br i1 %cmp114, label %for.body.115, label %for.end.149

for.body.115:                                     ; preds = %for.cond.113
  store i32 50, i32* %count, align 4
  store i32 3, i32* %j, align 4
  br label %for.cond.116

for.cond.116:                                     ; preds = %for.inc.144, %for.body.115
  %60 = load i32, i32* %j, align 4
  %61 = load i32, i32* %i, align 4
  %idxprom117 = sext i32 %61 to i64
  %arrayidx118 = getelementptr inbounds [2 x i32], [2 x i32]* @g_board_size, i32 0, i64 %idxprom117
  %62 = load i32, i32* %arrayidx118, align 4
  %add119 = add nsw i32 %62, 3
  %div120 = sdiv i32 %add119, 2
  %cmp121 = icmp slt i32 %60, %div120
  br i1 %cmp121, label %for.body.122, label %for.end.146

for.body.122:                                     ; preds = %for.cond.116
  store i32 1, i32* %k, align 4
  br label %for.cond.123

for.cond.123:                                     ; preds = %for.inc.141, %for.body.122
  %63 = load i32, i32* %k, align 4
  %64 = load i32, i32* %i, align 4
  %xor124 = xor i32 %64, 1
  %idxprom125 = sext i32 %xor124 to i64
  %arrayidx126 = getelementptr inbounds [2 x i32], [2 x i32]* @g_board_size, i32 0, i64 %idxprom125
  %65 = load i32, i32* %arrayidx126, align 4
  %div127 = sdiv i32 %65, 2
  %add128 = add nsw i32 %div127, 1
  %cmp129 = icmp slt i32 %63, %add128
  br i1 %cmp129, label %for.body.130, label %for.end.143

for.body.130:                                     ; preds = %for.cond.123
  %66 = load i32, i32* %k, align 4
  %idxprom131 = sext i32 %66 to i64
  %67 = load i32, i32* %j, align 4
  %idxprom132 = sext i32 %67 to i64
  %68 = load i32, i32* %i, align 4
  %idxprom133 = sext i32 %68 to i64
  %arrayidx134 = getelementptr inbounds [2 x [32 x [32 x i32]]], [2 x [32 x [32 x i32]]]* @g_first_move, i32 0, i64 %idxprom133
  %arrayidx135 = getelementptr inbounds [32 x [32 x i32]], [32 x [32 x i32]]* %arrayidx134, i32 0, i64 %idxprom132
  %arrayidx136 = getelementptr inbounds [32 x i32], [32 x i32]* %arrayidx135, i32 0, i64 %idxprom131
  %69 = load i32, i32* %arrayidx136, align 4
  %cmp137 = icmp eq i32 %69, 0
  br i1 %cmp137, label %if.then.138, label %if.end.140

if.then.138:                                      ; preds = %for.body.130
  %70 = load i32, i32* %i, align 4
  %71 = load i32, i32* %j, align 4
  %72 = load i32, i32* %k, align 4
  %73 = load i32, i32* %count, align 4
  %dec139 = add nsw i32 %73, -1
  store i32 %dec139, i32* %count, align 4
  call void @set_position_value(i32 %70, i32 %71, i32 %72, i32 %dec139)
  br label %if.end.140

if.end.140:                                       ; preds = %if.then.138, %for.body.130
  br label %for.inc.141

for.inc.141:                                      ; preds = %if.end.140
  %74 = load i32, i32* %k, align 4
  %inc142 = add nsw i32 %74, 1
  store i32 %inc142, i32* %k, align 4
  br label %for.cond.123

for.end.143:                                      ; preds = %for.cond.123
  br label %for.inc.144

for.inc.144:                                      ; preds = %for.end.143
  %75 = load i32, i32* %j, align 4
  %inc145 = add nsw i32 %75, 1
  store i32 %inc145, i32* %j, align 4
  br label %for.cond.116

for.end.146:                                      ; preds = %for.cond.116
  br label %for.inc.147

for.inc.147:                                      ; preds = %for.end.146
  %76 = load i32, i32* %i, align 4
  %inc148 = add nsw i32 %76, 1
  store i32 %inc148, i32* %i, align 4
  br label %for.cond.113

for.end.149:                                      ; preds = %for.cond.113
  store i32 0, i32* %i, align 4
  br label %for.cond.150

for.cond.150:                                     ; preds = %for.inc.184, %for.end.149
  %77 = load i32, i32* %i, align 4
  %cmp151 = icmp slt i32 %77, 2
  br i1 %cmp151, label %for.body.152, label %for.end.186

for.body.152:                                     ; preds = %for.cond.150
  store i32 30, i32* %count, align 4
  store i32 1, i32* %j, align 4
  br label %for.cond.153

for.cond.153:                                     ; preds = %for.inc.181, %for.body.152
  %78 = load i32, i32* %j, align 4
  %79 = load i32, i32* %i, align 4
  %idxprom154 = sext i32 %79 to i64
  %arrayidx155 = getelementptr inbounds [2 x i32], [2 x i32]* @g_board_size, i32 0, i64 %idxprom154
  %80 = load i32, i32* %arrayidx155, align 4
  %add156 = add nsw i32 %80, 3
  %div157 = sdiv i32 %add156, 2
  %cmp158 = icmp slt i32 %78, %div157
  br i1 %cmp158, label %for.body.159, label %for.end.183

for.body.159:                                     ; preds = %for.cond.153
  store i32 1, i32* %k, align 4
  br label %for.cond.160

for.cond.160:                                     ; preds = %for.inc.178, %for.body.159
  %81 = load i32, i32* %k, align 4
  %82 = load i32, i32* %i, align 4
  %xor161 = xor i32 %82, 1
  %idxprom162 = sext i32 %xor161 to i64
  %arrayidx163 = getelementptr inbounds [2 x i32], [2 x i32]* @g_board_size, i32 0, i64 %idxprom162
  %83 = load i32, i32* %arrayidx163, align 4
  %div164 = sdiv i32 %83, 2
  %add165 = add nsw i32 %div164, 1
  %cmp166 = icmp slt i32 %81, %add165
  br i1 %cmp166, label %for.body.167, label %for.end.180

for.body.167:                                     ; preds = %for.cond.160
  %84 = load i32, i32* %k, align 4
  %idxprom168 = sext i32 %84 to i64
  %85 = load i32, i32* %j, align 4
  %idxprom169 = sext i32 %85 to i64
  %86 = load i32, i32* %i, align 4
  %idxprom170 = sext i32 %86 to i64
  %arrayidx171 = getelementptr inbounds [2 x [32 x [32 x i32]]], [2 x [32 x [32 x i32]]]* @g_first_move, i32 0, i64 %idxprom170
  %arrayidx172 = getelementptr inbounds [32 x [32 x i32]], [32 x [32 x i32]]* %arrayidx171, i32 0, i64 %idxprom169
  %arrayidx173 = getelementptr inbounds [32 x i32], [32 x i32]* %arrayidx172, i32 0, i64 %idxprom168
  %87 = load i32, i32* %arrayidx173, align 4
  %cmp174 = icmp eq i32 %87, 0
  br i1 %cmp174, label %if.then.175, label %if.end.177

if.then.175:                                      ; preds = %for.body.167
  %88 = load i32, i32* %i, align 4
  %89 = load i32, i32* %j, align 4
  %90 = load i32, i32* %k, align 4
  %91 = load i32, i32* %count, align 4
  %dec176 = add nsw i32 %91, -1
  store i32 %dec176, i32* %count, align 4
  call void @set_position_value(i32 %88, i32 %89, i32 %90, i32 %dec176)
  br label %if.end.177

if.end.177:                                       ; preds = %if.then.175, %for.body.167
  br label %for.inc.178

for.inc.178:                                      ; preds = %if.end.177
  %92 = load i32, i32* %k, align 4
  %inc179 = add nsw i32 %92, 1
  store i32 %inc179, i32* %k, align 4
  br label %for.cond.160

for.end.180:                                      ; preds = %for.cond.160
  br label %for.inc.181

for.inc.181:                                      ; preds = %for.end.180
  %93 = load i32, i32* %j, align 4
  %inc182 = add nsw i32 %93, 1
  store i32 %inc182, i32* %j, align 4
  br label %for.cond.153

for.end.183:                                      ; preds = %for.cond.153
  br label %for.inc.184

for.inc.184:                                      ; preds = %for.end.183
  %94 = load i32, i32* %i, align 4
  %inc185 = add nsw i32 %94, 1
  store i32 %inc185, i32* %i, align 4
  br label %for.cond.150

for.end.186:                                      ; preds = %for.cond.150
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @set_position_value(i32 %player, i32 %row, i32 %col, i32 %value) #0 {
entry:
  %player.addr = alloca i32, align 4
  %row.addr = alloca i32, align 4
  %col.addr = alloca i32, align 4
  %value.addr = alloca i32, align 4
  %num_rows = alloca i32, align 4
  %num_cols = alloca i32, align 4
  store i32 %player, i32* %player.addr, align 4
  store i32 %row, i32* %row.addr, align 4
  store i32 %col, i32* %col.addr, align 4
  store i32 %value, i32* %value.addr, align 4
  %0 = load i32, i32* %player.addr, align 4
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [2 x i32], [2 x i32]* @g_board_size, i32 0, i64 %idxprom
  %1 = load i32, i32* %arrayidx, align 4
  %add = add nsw i32 %1, 1
  store i32 %add, i32* %num_rows, align 4
  %2 = load i32, i32* %player.addr, align 4
  %xor = xor i32 %2, 1
  %idxprom1 = sext i32 %xor to i64
  %arrayidx2 = getelementptr inbounds [2 x i32], [2 x i32]* @g_board_size, i32 0, i64 %idxprom1
  %3 = load i32, i32* %arrayidx2, align 4
  store i32 %3, i32* %num_cols, align 4
  %4 = load i32, i32* %value.addr, align 4
  %5 = load i32, i32* %col.addr, align 4
  %idxprom3 = sext i32 %5 to i64
  %6 = load i32, i32* %row.addr, align 4
  %idxprom4 = sext i32 %6 to i64
  %7 = load i32, i32* %player.addr, align 4
  %idxprom5 = sext i32 %7 to i64
  %arrayidx6 = getelementptr inbounds [2 x [32 x [32 x i32]]], [2 x [32 x [32 x i32]]]* @g_first_move, i32 0, i64 %idxprom5
  %arrayidx7 = getelementptr inbounds [32 x [32 x i32]], [32 x [32 x i32]]* %arrayidx6, i32 0, i64 %idxprom4
  %arrayidx8 = getelementptr inbounds [32 x i32], [32 x i32]* %arrayidx7, i32 0, i64 %idxprom3
  store i32 %4, i32* %arrayidx8, align 4
  %8 = load i32, i32* %value.addr, align 4
  %9 = load i32, i32* %col.addr, align 4
  %idxprom9 = sext i32 %9 to i64
  %10 = load i32, i32* %num_rows, align 4
  %11 = load i32, i32* %row.addr, align 4
  %sub = sub nsw i32 %10, %11
  %idxprom10 = sext i32 %sub to i64
  %12 = load i32, i32* %player.addr, align 4
  %idxprom11 = sext i32 %12 to i64
  %arrayidx12 = getelementptr inbounds [2 x [32 x [32 x i32]]], [2 x [32 x [32 x i32]]]* @g_first_move, i32 0, i64 %idxprom11
  %arrayidx13 = getelementptr inbounds [32 x [32 x i32]], [32 x [32 x i32]]* %arrayidx12, i32 0, i64 %idxprom10
  %arrayidx14 = getelementptr inbounds [32 x i32], [32 x i32]* %arrayidx13, i32 0, i64 %idxprom9
  store i32 %8, i32* %arrayidx14, align 4
  %13 = load i32, i32* %value.addr, align 4
  %14 = load i32, i32* %num_cols, align 4
  %15 = load i32, i32* %col.addr, align 4
  %sub15 = sub nsw i32 %14, %15
  %idxprom16 = sext i32 %sub15 to i64
  %16 = load i32, i32* %num_rows, align 4
  %17 = load i32, i32* %row.addr, align 4
  %sub17 = sub nsw i32 %16, %17
  %idxprom18 = sext i32 %sub17 to i64
  %18 = load i32, i32* %player.addr, align 4
  %idxprom19 = sext i32 %18 to i64
  %arrayidx20 = getelementptr inbounds [2 x [32 x [32 x i32]]], [2 x [32 x [32 x i32]]]* @g_first_move, i32 0, i64 %idxprom19
  %arrayidx21 = getelementptr inbounds [32 x [32 x i32]], [32 x [32 x i32]]* %arrayidx20, i32 0, i64 %idxprom18
  %arrayidx22 = getelementptr inbounds [32 x i32], [32 x i32]* %arrayidx21, i32 0, i64 %idxprom16
  store i32 %13, i32* %arrayidx22, align 4
  %19 = load i32, i32* %value.addr, align 4
  %20 = load i32, i32* %num_cols, align 4
  %21 = load i32, i32* %col.addr, align 4
  %sub23 = sub nsw i32 %20, %21
  %idxprom24 = sext i32 %sub23 to i64
  %22 = load i32, i32* %row.addr, align 4
  %idxprom25 = sext i32 %22 to i64
  %23 = load i32, i32* %player.addr, align 4
  %idxprom26 = sext i32 %23 to i64
  %arrayidx27 = getelementptr inbounds [2 x [32 x [32 x i32]]], [2 x [32 x [32 x i32]]]* @g_first_move, i32 0, i64 %idxprom26
  %arrayidx28 = getelementptr inbounds [32 x [32 x i32]], [32 x [32 x i32]]* %arrayidx27, i32 0, i64 %idxprom25
  %arrayidx29 = getelementptr inbounds [32 x i32], [32 x i32]* %arrayidx28, i32 0, i64 %idxprom24
  store i32 %19, i32* %arrayidx29, align 4
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
