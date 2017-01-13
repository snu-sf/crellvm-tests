; ModuleID = './MultiSource.Applications.obsequi/3.hash.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Hash_Key = type { [4 x i32], i32 }
%struct.Hash_Entry = type { [4 x i32], i32, i8, [3 x i8] }
%struct.Move = type { i32, i32, i32 }

@g_norm_hashkey = external global %struct.Hash_Key, align 4
@g_trans_table = external global %struct.Hash_Entry*, align 8
@g_board_size = external global [2 x i32], align 4
@g_flipV_hashkey = external global %struct.Hash_Key, align 4
@g_flipH_hashkey = external global %struct.Hash_Key, align 4
@g_flipVH_hashkey = external global %struct.Hash_Key, align 4

; Function Attrs: nounwind uwtable
define void @hashstore(i32 %value, i32 %alpha, i32 %beta, i32 %nodes, i32 %depth, %struct.Move* byval align 8 %best, i32 %player) #0 {
entry:
  %value.addr = alloca i32, align 4
  %alpha.addr = alloca i32, align 4
  %beta.addr = alloca i32, align 4
  %nodes.addr = alloca i32, align 4
  %depth.addr = alloca i32, align 4
  %player.addr = alloca i32, align 4
  %index = alloca i32, align 4
  store i32 %value, i32* %value.addr, align 4
  store i32 %alpha, i32* %alpha.addr, align 4
  store i32 %beta, i32* %beta.addr, align 4
  store i32 %nodes, i32* %nodes.addr, align 4
  store i32 %depth, i32* %depth.addr, align 4
  store i32 %player, i32* %player.addr, align 4
  %0 = load i32, i32* getelementptr inbounds (%struct.Hash_Key, %struct.Hash_Key* @g_norm_hashkey, i32 0, i32 1), align 4
  store i32 %0, i32* %index, align 4
  %1 = load i32, i32* %index, align 4
  %idxprom = sext i32 %1 to i64
  %2 = load %struct.Hash_Entry*, %struct.Hash_Entry** @g_trans_table, align 8
  %arrayidx = getelementptr inbounds %struct.Hash_Entry, %struct.Hash_Entry* %2, i64 %idxprom
  %key = getelementptr inbounds %struct.Hash_Entry, %struct.Hash_Entry* %arrayidx, i32 0, i32 0
  %arrayidx1 = getelementptr inbounds [4 x i32], [4 x i32]* %key, i32 0, i64 0
  %3 = load i32, i32* %arrayidx1, align 4
  %4 = load i32, i32* getelementptr inbounds (%struct.Hash_Key, %struct.Hash_Key* @g_norm_hashkey, i32 0, i32 0, i64 0), align 4
  %cmp = icmp eq i32 %3, %4
  br i1 %cmp, label %land.lhs.true, label %lor.lhs.false

land.lhs.true:                                    ; preds = %entry
  %5 = load i32, i32* %index, align 4
  %idxprom2 = sext i32 %5 to i64
  %6 = load %struct.Hash_Entry*, %struct.Hash_Entry** @g_trans_table, align 8
  %arrayidx3 = getelementptr inbounds %struct.Hash_Entry, %struct.Hash_Entry* %6, i64 %idxprom2
  %key4 = getelementptr inbounds %struct.Hash_Entry, %struct.Hash_Entry* %arrayidx3, i32 0, i32 0
  %arrayidx5 = getelementptr inbounds [4 x i32], [4 x i32]* %key4, i32 0, i64 1
  %7 = load i32, i32* %arrayidx5, align 4
  %8 = load i32, i32* getelementptr inbounds (%struct.Hash_Key, %struct.Hash_Key* @g_norm_hashkey, i32 0, i32 0, i64 1), align 4
  %cmp6 = icmp eq i32 %7, %8
  br i1 %cmp6, label %land.lhs.true.7, label %lor.lhs.false

land.lhs.true.7:                                  ; preds = %land.lhs.true
  %9 = load i32, i32* %index, align 4
  %idxprom8 = sext i32 %9 to i64
  %10 = load %struct.Hash_Entry*, %struct.Hash_Entry** @g_trans_table, align 8
  %arrayidx9 = getelementptr inbounds %struct.Hash_Entry, %struct.Hash_Entry* %10, i64 %idxprom8
  %key10 = getelementptr inbounds %struct.Hash_Entry, %struct.Hash_Entry* %arrayidx9, i32 0, i32 0
  %arrayidx11 = getelementptr inbounds [4 x i32], [4 x i32]* %key10, i32 0, i64 2
  %11 = load i32, i32* %arrayidx11, align 4
  %12 = load i32, i32* getelementptr inbounds (%struct.Hash_Key, %struct.Hash_Key* @g_norm_hashkey, i32 0, i32 0, i64 2), align 4
  %cmp12 = icmp eq i32 %11, %12
  br i1 %cmp12, label %land.lhs.true.13, label %lor.lhs.false

land.lhs.true.13:                                 ; preds = %land.lhs.true.7
  %13 = load i32, i32* %index, align 4
  %idxprom14 = sext i32 %13 to i64
  %14 = load %struct.Hash_Entry*, %struct.Hash_Entry** @g_trans_table, align 8
  %arrayidx15 = getelementptr inbounds %struct.Hash_Entry, %struct.Hash_Entry* %14, i64 %idxprom14
  %key16 = getelementptr inbounds %struct.Hash_Entry, %struct.Hash_Entry* %arrayidx15, i32 0, i32 0
  %arrayidx17 = getelementptr inbounds [4 x i32], [4 x i32]* %key16, i32 0, i64 3
  %15 = load i32, i32* %arrayidx17, align 4
  %16 = load i32, i32* getelementptr inbounds (%struct.Hash_Key, %struct.Hash_Key* @g_norm_hashkey, i32 0, i32 0, i64 3), align 4
  %cmp18 = icmp eq i32 %15, %16
  br i1 %cmp18, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.13, %land.lhs.true.7, %land.lhs.true, %entry
  %17 = load i32, i32* %index, align 4
  %idxprom19 = sext i32 %17 to i64
  %18 = load %struct.Hash_Entry*, %struct.Hash_Entry** @g_trans_table, align 8
  %arrayidx20 = getelementptr inbounds %struct.Hash_Entry, %struct.Hash_Entry* %18, i64 %idxprom19
  %nodes21 = getelementptr inbounds %struct.Hash_Entry, %struct.Hash_Entry* %arrayidx20, i32 0, i32 1
  %19 = load i32, i32* %nodes21, align 4
  %20 = load i32, i32* %nodes.addr, align 4
  %cmp22 = icmp ule i32 %19, %20
  br i1 %cmp22, label %if.then, label %if.end.93

if.then:                                          ; preds = %lor.lhs.false, %land.lhs.true.13
  %21 = load i32, i32* getelementptr inbounds (%struct.Hash_Key, %struct.Hash_Key* @g_norm_hashkey, i32 0, i32 0, i64 0), align 4
  %22 = load i32, i32* %index, align 4
  %idxprom23 = sext i32 %22 to i64
  %23 = load %struct.Hash_Entry*, %struct.Hash_Entry** @g_trans_table, align 8
  %arrayidx24 = getelementptr inbounds %struct.Hash_Entry, %struct.Hash_Entry* %23, i64 %idxprom23
  %key25 = getelementptr inbounds %struct.Hash_Entry, %struct.Hash_Entry* %arrayidx24, i32 0, i32 0
  %arrayidx26 = getelementptr inbounds [4 x i32], [4 x i32]* %key25, i32 0, i64 0
  store i32 %21, i32* %arrayidx26, align 4
  %24 = load i32, i32* getelementptr inbounds (%struct.Hash_Key, %struct.Hash_Key* @g_norm_hashkey, i32 0, i32 0, i64 1), align 4
  %25 = load i32, i32* %index, align 4
  %idxprom27 = sext i32 %25 to i64
  %26 = load %struct.Hash_Entry*, %struct.Hash_Entry** @g_trans_table, align 8
  %arrayidx28 = getelementptr inbounds %struct.Hash_Entry, %struct.Hash_Entry* %26, i64 %idxprom27
  %key29 = getelementptr inbounds %struct.Hash_Entry, %struct.Hash_Entry* %arrayidx28, i32 0, i32 0
  %arrayidx30 = getelementptr inbounds [4 x i32], [4 x i32]* %key29, i32 0, i64 1
  store i32 %24, i32* %arrayidx30, align 4
  %27 = load i32, i32* getelementptr inbounds (%struct.Hash_Key, %struct.Hash_Key* @g_norm_hashkey, i32 0, i32 0, i64 2), align 4
  %28 = load i32, i32* %index, align 4
  %idxprom31 = sext i32 %28 to i64
  %29 = load %struct.Hash_Entry*, %struct.Hash_Entry** @g_trans_table, align 8
  %arrayidx32 = getelementptr inbounds %struct.Hash_Entry, %struct.Hash_Entry* %29, i64 %idxprom31
  %key33 = getelementptr inbounds %struct.Hash_Entry, %struct.Hash_Entry* %arrayidx32, i32 0, i32 0
  %arrayidx34 = getelementptr inbounds [4 x i32], [4 x i32]* %key33, i32 0, i64 2
  store i32 %27, i32* %arrayidx34, align 4
  %30 = load i32, i32* getelementptr inbounds (%struct.Hash_Key, %struct.Hash_Key* @g_norm_hashkey, i32 0, i32 0, i64 3), align 4
  %31 = load i32, i32* %index, align 4
  %idxprom35 = sext i32 %31 to i64
  %32 = load %struct.Hash_Entry*, %struct.Hash_Entry** @g_trans_table, align 8
  %arrayidx36 = getelementptr inbounds %struct.Hash_Entry, %struct.Hash_Entry* %32, i64 %idxprom35
  %key37 = getelementptr inbounds %struct.Hash_Entry, %struct.Hash_Entry* %arrayidx36, i32 0, i32 0
  %arrayidx38 = getelementptr inbounds [4 x i32], [4 x i32]* %key37, i32 0, i64 3
  store i32 %30, i32* %arrayidx38, align 4
  %33 = load i32, i32* %nodes.addr, align 4
  %34 = load i32, i32* %index, align 4
  %idxprom39 = sext i32 %34 to i64
  %35 = load %struct.Hash_Entry*, %struct.Hash_Entry** @g_trans_table, align 8
  %arrayidx40 = getelementptr inbounds %struct.Hash_Entry, %struct.Hash_Entry* %35, i64 %idxprom39
  %nodes41 = getelementptr inbounds %struct.Hash_Entry, %struct.Hash_Entry* %arrayidx40, i32 0, i32 1
  store i32 %33, i32* %nodes41, align 4
  %mask_index = getelementptr inbounds %struct.Move, %struct.Move* %best, i32 0, i32 1
  %36 = load i32, i32* %mask_index, align 4
  %sub = sub nsw i32 %36, 1
  %37 = load i32, i32* %player.addr, align 4
  %idxprom42 = sext i32 %37 to i64
  %arrayidx43 = getelementptr inbounds [2 x i32], [2 x i32]* @g_board_size, i32 0, i64 %idxprom42
  %38 = load i32, i32* %arrayidx43, align 4
  %mul = mul nsw i32 %sub, %38
  %array_index = getelementptr inbounds %struct.Move, %struct.Move* %best, i32 0, i32 0
  %39 = load i32, i32* %array_index, align 4
  %sub44 = sub nsw i32 %39, 1
  %add = add nsw i32 %mul, %sub44
  %conv = trunc i32 %add to i8
  %40 = load i32, i32* %index, align 4
  %idxprom45 = sext i32 %40 to i64
  %41 = load %struct.Hash_Entry*, %struct.Hash_Entry** @g_trans_table, align 8
  %arrayidx46 = getelementptr inbounds %struct.Hash_Entry, %struct.Hash_Entry* %41, i64 %idxprom45
  %best_move = getelementptr inbounds %struct.Hash_Entry, %struct.Hash_Entry* %arrayidx46, i32 0, i32 2
  store i8 %conv, i8* %best_move, align 1
  %42 = load i32, i32* %depth.addr, align 4
  %conv47 = trunc i32 %42 to i8
  %43 = load i32, i32* %index, align 4
  %idxprom48 = sext i32 %43 to i64
  %44 = load %struct.Hash_Entry*, %struct.Hash_Entry** @g_trans_table, align 8
  %arrayidx49 = getelementptr inbounds %struct.Hash_Entry, %struct.Hash_Entry* %44, i64 %idxprom48
  %depth50 = getelementptr inbounds %struct.Hash_Entry, %struct.Hash_Entry* %arrayidx49, i32 0, i32 3
  %45 = bitcast [3 x i8]* %depth50 to i24*
  %46 = zext i8 %conv47 to i24
  %bf.load = load i24, i24* %45, align 1
  %bf.value = and i24 %46, 127
  %bf.clear = and i24 %bf.load, -128
  %bf.set = or i24 %bf.clear, %bf.value
  store i24 %bf.set, i24* %45, align 1
  %bf.result.cast = trunc i24 %bf.value to i8
  %47 = load i32, i32* %player.addr, align 4
  %conv51 = trunc i32 %47 to i8
  %48 = load i32, i32* %index, align 4
  %idxprom52 = sext i32 %48 to i64
  %49 = load %struct.Hash_Entry*, %struct.Hash_Entry** @g_trans_table, align 8
  %arrayidx53 = getelementptr inbounds %struct.Hash_Entry, %struct.Hash_Entry* %49, i64 %idxprom52
  %whos_turn = getelementptr inbounds %struct.Hash_Entry, %struct.Hash_Entry* %arrayidx53, i32 0, i32 3
  %50 = bitcast [3 x i8]* %whos_turn to i24*
  %51 = zext i8 %conv51 to i24
  %bf.load54 = load i24, i24* %50, align 1
  %bf.value55 = and i24 %51, 1
  %bf.shl = shl i24 %bf.value55, 7
  %bf.clear56 = and i24 %bf.load54, -129
  %bf.set57 = or i24 %bf.clear56, %bf.shl
  store i24 %bf.set57, i24* %50, align 1
  %bf.result.cast58 = trunc i24 %bf.value55 to i8
  %52 = load i32, i32* %value.addr, align 4
  %conv59 = trunc i32 %52 to i16
  %53 = load i32, i32* %index, align 4
  %idxprom60 = sext i32 %53 to i64
  %54 = load %struct.Hash_Entry*, %struct.Hash_Entry** @g_trans_table, align 8
  %arrayidx61 = getelementptr inbounds %struct.Hash_Entry, %struct.Hash_Entry* %54, i64 %idxprom60
  %value62 = getelementptr inbounds %struct.Hash_Entry, %struct.Hash_Entry* %arrayidx61, i32 0, i32 3
  %55 = bitcast [3 x i8]* %value62 to i24*
  %56 = zext i16 %conv59 to i24
  %bf.load63 = load i24, i24* %55, align 1
  %bf.value64 = and i24 %56, 16383
  %bf.shl65 = shl i24 %bf.value64, 8
  %bf.clear66 = and i24 %bf.load63, -4194049
  %bf.set67 = or i24 %bf.clear66, %bf.shl65
  store i24 %bf.set67, i24* %55, align 1
  %bf.result.shl = shl i24 %bf.value64, 10
  %bf.result.ashr = ashr i24 %bf.result.shl, 10
  %bf.result.cast68 = trunc i24 %bf.result.ashr to i16
  %57 = load i32, i32* %value.addr, align 4
  %58 = load i32, i32* %beta.addr, align 4
  %cmp69 = icmp sge i32 %57, %58
  br i1 %cmp69, label %if.then.71, label %if.else

if.then.71:                                       ; preds = %if.then
  %59 = load i32, i32* %index, align 4
  %idxprom72 = sext i32 %59 to i64
  %60 = load %struct.Hash_Entry*, %struct.Hash_Entry** @g_trans_table, align 8
  %arrayidx73 = getelementptr inbounds %struct.Hash_Entry, %struct.Hash_Entry* %60, i64 %idxprom72
  %type = getelementptr inbounds %struct.Hash_Entry, %struct.Hash_Entry* %arrayidx73, i32 0, i32 3
  %61 = bitcast [3 x i8]* %type to i24*
  %bf.load74 = load i24, i24* %61, align 1
  %bf.clear75 = and i24 %bf.load74, 4194303
  store i24 %bf.clear75, i24* %61, align 1
  br label %if.end.92

if.else:                                          ; preds = %if.then
  %62 = load i32, i32* %value.addr, align 4
  %63 = load i32, i32* %alpha.addr, align 4
  %cmp76 = icmp sgt i32 %62, %63
  br i1 %cmp76, label %if.then.78, label %if.else.85

if.then.78:                                       ; preds = %if.else
  %64 = load i32, i32* %index, align 4
  %idxprom79 = sext i32 %64 to i64
  %65 = load %struct.Hash_Entry*, %struct.Hash_Entry** @g_trans_table, align 8
  %arrayidx80 = getelementptr inbounds %struct.Hash_Entry, %struct.Hash_Entry* %65, i64 %idxprom79
  %type81 = getelementptr inbounds %struct.Hash_Entry, %struct.Hash_Entry* %arrayidx80, i32 0, i32 3
  %66 = bitcast [3 x i8]* %type81 to i24*
  %bf.load82 = load i24, i24* %66, align 1
  %bf.clear83 = and i24 %bf.load82, 4194303
  %bf.set84 = or i24 %bf.clear83, 4194304
  store i24 %bf.set84, i24* %66, align 1
  br label %if.end

if.else.85:                                       ; preds = %if.else
  %67 = load i32, i32* %index, align 4
  %idxprom86 = sext i32 %67 to i64
  %68 = load %struct.Hash_Entry*, %struct.Hash_Entry** @g_trans_table, align 8
  %arrayidx87 = getelementptr inbounds %struct.Hash_Entry, %struct.Hash_Entry* %68, i64 %idxprom86
  %type88 = getelementptr inbounds %struct.Hash_Entry, %struct.Hash_Entry* %arrayidx87, i32 0, i32 3
  %69 = bitcast [3 x i8]* %type88 to i24*
  %bf.load89 = load i24, i24* %69, align 1
  %bf.clear90 = and i24 %bf.load89, 4194303
  %bf.set91 = or i24 %bf.clear90, -8388608
  store i24 %bf.set91, i24* %69, align 1
  br label %if.end

if.end:                                           ; preds = %if.else.85, %if.then.78
  br label %if.end.92

if.end.92:                                        ; preds = %if.end, %if.then.71
  br label %if.end.465

if.end.93:                                        ; preds = %lor.lhs.false
  %70 = load i32, i32* getelementptr inbounds (%struct.Hash_Key, %struct.Hash_Key* @g_flipV_hashkey, i32 0, i32 1), align 4
  store i32 %70, i32* %index, align 4
  %71 = load i32, i32* %index, align 4
  %idxprom94 = sext i32 %71 to i64
  %72 = load %struct.Hash_Entry*, %struct.Hash_Entry** @g_trans_table, align 8
  %arrayidx95 = getelementptr inbounds %struct.Hash_Entry, %struct.Hash_Entry* %72, i64 %idxprom94
  %key96 = getelementptr inbounds %struct.Hash_Entry, %struct.Hash_Entry* %arrayidx95, i32 0, i32 0
  %arrayidx97 = getelementptr inbounds [4 x i32], [4 x i32]* %key96, i32 0, i64 0
  %73 = load i32, i32* %arrayidx97, align 4
  %74 = load i32, i32* getelementptr inbounds (%struct.Hash_Key, %struct.Hash_Key* @g_flipV_hashkey, i32 0, i32 0, i64 0), align 4
  %cmp98 = icmp eq i32 %73, %74
  br i1 %cmp98, label %land.lhs.true.100, label %lor.lhs.false.121

land.lhs.true.100:                                ; preds = %if.end.93
  %75 = load i32, i32* %index, align 4
  %idxprom101 = sext i32 %75 to i64
  %76 = load %struct.Hash_Entry*, %struct.Hash_Entry** @g_trans_table, align 8
  %arrayidx102 = getelementptr inbounds %struct.Hash_Entry, %struct.Hash_Entry* %76, i64 %idxprom101
  %key103 = getelementptr inbounds %struct.Hash_Entry, %struct.Hash_Entry* %arrayidx102, i32 0, i32 0
  %arrayidx104 = getelementptr inbounds [4 x i32], [4 x i32]* %key103, i32 0, i64 1
  %77 = load i32, i32* %arrayidx104, align 4
  %78 = load i32, i32* getelementptr inbounds (%struct.Hash_Key, %struct.Hash_Key* @g_flipV_hashkey, i32 0, i32 0, i64 1), align 4
  %cmp105 = icmp eq i32 %77, %78
  br i1 %cmp105, label %land.lhs.true.107, label %lor.lhs.false.121

land.lhs.true.107:                                ; preds = %land.lhs.true.100
  %79 = load i32, i32* %index, align 4
  %idxprom108 = sext i32 %79 to i64
  %80 = load %struct.Hash_Entry*, %struct.Hash_Entry** @g_trans_table, align 8
  %arrayidx109 = getelementptr inbounds %struct.Hash_Entry, %struct.Hash_Entry* %80, i64 %idxprom108
  %key110 = getelementptr inbounds %struct.Hash_Entry, %struct.Hash_Entry* %arrayidx109, i32 0, i32 0
  %arrayidx111 = getelementptr inbounds [4 x i32], [4 x i32]* %key110, i32 0, i64 2
  %81 = load i32, i32* %arrayidx111, align 4
  %82 = load i32, i32* getelementptr inbounds (%struct.Hash_Key, %struct.Hash_Key* @g_flipV_hashkey, i32 0, i32 0, i64 2), align 4
  %cmp112 = icmp eq i32 %81, %82
  br i1 %cmp112, label %land.lhs.true.114, label %lor.lhs.false.121

land.lhs.true.114:                                ; preds = %land.lhs.true.107
  %83 = load i32, i32* %index, align 4
  %idxprom115 = sext i32 %83 to i64
  %84 = load %struct.Hash_Entry*, %struct.Hash_Entry** @g_trans_table, align 8
  %arrayidx116 = getelementptr inbounds %struct.Hash_Entry, %struct.Hash_Entry* %84, i64 %idxprom115
  %key117 = getelementptr inbounds %struct.Hash_Entry, %struct.Hash_Entry* %arrayidx116, i32 0, i32 0
  %arrayidx118 = getelementptr inbounds [4 x i32], [4 x i32]* %key117, i32 0, i64 3
  %85 = load i32, i32* %arrayidx118, align 4
  %86 = load i32, i32* getelementptr inbounds (%struct.Hash_Key, %struct.Hash_Key* @g_flipV_hashkey, i32 0, i32 0, i64 3), align 4
  %cmp119 = icmp eq i32 %85, %86
  br i1 %cmp119, label %if.then.127, label %lor.lhs.false.121

lor.lhs.false.121:                                ; preds = %land.lhs.true.114, %land.lhs.true.107, %land.lhs.true.100, %if.end.93
  %87 = load i32, i32* %index, align 4
  %idxprom122 = sext i32 %87 to i64
  %88 = load %struct.Hash_Entry*, %struct.Hash_Entry** @g_trans_table, align 8
  %arrayidx123 = getelementptr inbounds %struct.Hash_Entry, %struct.Hash_Entry* %88, i64 %idxprom122
  %nodes124 = getelementptr inbounds %struct.Hash_Entry, %struct.Hash_Entry* %arrayidx123, i32 0, i32 1
  %89 = load i32, i32* %nodes124, align 4
  %90 = load i32, i32* %nodes.addr, align 4
  %cmp125 = icmp ule i32 %89, %90
  br i1 %cmp125, label %if.then.127, label %if.end.217

if.then.127:                                      ; preds = %lor.lhs.false.121, %land.lhs.true.114
  %91 = load i32, i32* getelementptr inbounds (%struct.Hash_Key, %struct.Hash_Key* @g_flipV_hashkey, i32 0, i32 0, i64 0), align 4
  %92 = load i32, i32* %index, align 4
  %idxprom128 = sext i32 %92 to i64
  %93 = load %struct.Hash_Entry*, %struct.Hash_Entry** @g_trans_table, align 8
  %arrayidx129 = getelementptr inbounds %struct.Hash_Entry, %struct.Hash_Entry* %93, i64 %idxprom128
  %key130 = getelementptr inbounds %struct.Hash_Entry, %struct.Hash_Entry* %arrayidx129, i32 0, i32 0
  %arrayidx131 = getelementptr inbounds [4 x i32], [4 x i32]* %key130, i32 0, i64 0
  store i32 %91, i32* %arrayidx131, align 4
  %94 = load i32, i32* getelementptr inbounds (%struct.Hash_Key, %struct.Hash_Key* @g_flipV_hashkey, i32 0, i32 0, i64 1), align 4
  %95 = load i32, i32* %index, align 4
  %idxprom132 = sext i32 %95 to i64
  %96 = load %struct.Hash_Entry*, %struct.Hash_Entry** @g_trans_table, align 8
  %arrayidx133 = getelementptr inbounds %struct.Hash_Entry, %struct.Hash_Entry* %96, i64 %idxprom132
  %key134 = getelementptr inbounds %struct.Hash_Entry, %struct.Hash_Entry* %arrayidx133, i32 0, i32 0
  %arrayidx135 = getelementptr inbounds [4 x i32], [4 x i32]* %key134, i32 0, i64 1
  store i32 %94, i32* %arrayidx135, align 4
  %97 = load i32, i32* getelementptr inbounds (%struct.Hash_Key, %struct.Hash_Key* @g_flipV_hashkey, i32 0, i32 0, i64 2), align 4
  %98 = load i32, i32* %index, align 4
  %idxprom136 = sext i32 %98 to i64
  %99 = load %struct.Hash_Entry*, %struct.Hash_Entry** @g_trans_table, align 8
  %arrayidx137 = getelementptr inbounds %struct.Hash_Entry, %struct.Hash_Entry* %99, i64 %idxprom136
  %key138 = getelementptr inbounds %struct.Hash_Entry, %struct.Hash_Entry* %arrayidx137, i32 0, i32 0
  %arrayidx139 = getelementptr inbounds [4 x i32], [4 x i32]* %key138, i32 0, i64 2
  store i32 %97, i32* %arrayidx139, align 4
  %100 = load i32, i32* getelementptr inbounds (%struct.Hash_Key, %struct.Hash_Key* @g_flipV_hashkey, i32 0, i32 0, i64 3), align 4
  %101 = load i32, i32* %index, align 4
  %idxprom140 = sext i32 %101 to i64
  %102 = load %struct.Hash_Entry*, %struct.Hash_Entry** @g_trans_table, align 8
  %arrayidx141 = getelementptr inbounds %struct.Hash_Entry, %struct.Hash_Entry* %102, i64 %idxprom140
  %key142 = getelementptr inbounds %struct.Hash_Entry, %struct.Hash_Entry* %arrayidx141, i32 0, i32 0
  %arrayidx143 = getelementptr inbounds [4 x i32], [4 x i32]* %key142, i32 0, i64 3
  store i32 %100, i32* %arrayidx143, align 4
  %103 = load i32, i32* %nodes.addr, align 4
  %104 = load i32, i32* %index, align 4
  %idxprom144 = sext i32 %104 to i64
  %105 = load %struct.Hash_Entry*, %struct.Hash_Entry** @g_trans_table, align 8
  %arrayidx145 = getelementptr inbounds %struct.Hash_Entry, %struct.Hash_Entry* %105, i64 %idxprom144
  %nodes146 = getelementptr inbounds %struct.Hash_Entry, %struct.Hash_Entry* %arrayidx145, i32 0, i32 1
  store i32 %103, i32* %nodes146, align 4
  %mask_index147 = getelementptr inbounds %struct.Move, %struct.Move* %best, i32 0, i32 1
  %106 = load i32, i32* %mask_index147, align 4
  %sub148 = sub nsw i32 %106, 1
  %107 = load i32, i32* %player.addr, align 4
  %idxprom149 = sext i32 %107 to i64
  %arrayidx150 = getelementptr inbounds [2 x i32], [2 x i32]* @g_board_size, i32 0, i64 %idxprom149
  %108 = load i32, i32* %arrayidx150, align 4
  %mul151 = mul nsw i32 %sub148, %108
  %array_index152 = getelementptr inbounds %struct.Move, %struct.Move* %best, i32 0, i32 0
  %109 = load i32, i32* %array_index152, align 4
  %sub153 = sub nsw i32 %109, 1
  %add154 = add nsw i32 %mul151, %sub153
  %conv155 = trunc i32 %add154 to i8
  %110 = load i32, i32* %index, align 4
  %idxprom156 = sext i32 %110 to i64
  %111 = load %struct.Hash_Entry*, %struct.Hash_Entry** @g_trans_table, align 8
  %arrayidx157 = getelementptr inbounds %struct.Hash_Entry, %struct.Hash_Entry* %111, i64 %idxprom156
  %best_move158 = getelementptr inbounds %struct.Hash_Entry, %struct.Hash_Entry* %arrayidx157, i32 0, i32 2
  store i8 %conv155, i8* %best_move158, align 1
  %112 = load i32, i32* %depth.addr, align 4
  %conv159 = trunc i32 %112 to i8
  %113 = load i32, i32* %index, align 4
  %idxprom160 = sext i32 %113 to i64
  %114 = load %struct.Hash_Entry*, %struct.Hash_Entry** @g_trans_table, align 8
  %arrayidx161 = getelementptr inbounds %struct.Hash_Entry, %struct.Hash_Entry* %114, i64 %idxprom160
  %depth162 = getelementptr inbounds %struct.Hash_Entry, %struct.Hash_Entry* %arrayidx161, i32 0, i32 3
  %115 = bitcast [3 x i8]* %depth162 to i24*
  %116 = zext i8 %conv159 to i24
  %bf.load163 = load i24, i24* %115, align 1
  %bf.value164 = and i24 %116, 127
  %bf.clear165 = and i24 %bf.load163, -128
  %bf.set166 = or i24 %bf.clear165, %bf.value164
  store i24 %bf.set166, i24* %115, align 1
  %bf.result.cast167 = trunc i24 %bf.value164 to i8
  %117 = load i32, i32* %player.addr, align 4
  %conv168 = trunc i32 %117 to i8
  %118 = load i32, i32* %index, align 4
  %idxprom169 = sext i32 %118 to i64
  %119 = load %struct.Hash_Entry*, %struct.Hash_Entry** @g_trans_table, align 8
  %arrayidx170 = getelementptr inbounds %struct.Hash_Entry, %struct.Hash_Entry* %119, i64 %idxprom169
  %whos_turn171 = getelementptr inbounds %struct.Hash_Entry, %struct.Hash_Entry* %arrayidx170, i32 0, i32 3
  %120 = bitcast [3 x i8]* %whos_turn171 to i24*
  %121 = zext i8 %conv168 to i24
  %bf.load172 = load i24, i24* %120, align 1
  %bf.value173 = and i24 %121, 1
  %bf.shl174 = shl i24 %bf.value173, 7
  %bf.clear175 = and i24 %bf.load172, -129
  %bf.set176 = or i24 %bf.clear175, %bf.shl174
  store i24 %bf.set176, i24* %120, align 1
  %bf.result.cast177 = trunc i24 %bf.value173 to i8
  %122 = load i32, i32* %value.addr, align 4
  %conv178 = trunc i32 %122 to i16
  %123 = load i32, i32* %index, align 4
  %idxprom179 = sext i32 %123 to i64
  %124 = load %struct.Hash_Entry*, %struct.Hash_Entry** @g_trans_table, align 8
  %arrayidx180 = getelementptr inbounds %struct.Hash_Entry, %struct.Hash_Entry* %124, i64 %idxprom179
  %value181 = getelementptr inbounds %struct.Hash_Entry, %struct.Hash_Entry* %arrayidx180, i32 0, i32 3
  %125 = bitcast [3 x i8]* %value181 to i24*
  %126 = zext i16 %conv178 to i24
  %bf.load182 = load i24, i24* %125, align 1
  %bf.value183 = and i24 %126, 16383
  %bf.shl184 = shl i24 %bf.value183, 8
  %bf.clear185 = and i24 %bf.load182, -4194049
  %bf.set186 = or i24 %bf.clear185, %bf.shl184
  store i24 %bf.set186, i24* %125, align 1
  %bf.result.shl187 = shl i24 %bf.value183, 10
  %bf.result.ashr188 = ashr i24 %bf.result.shl187, 10
  %bf.result.cast189 = trunc i24 %bf.result.ashr188 to i16
  %127 = load i32, i32* %value.addr, align 4
  %128 = load i32, i32* %beta.addr, align 4
  %cmp190 = icmp sge i32 %127, %128
  br i1 %cmp190, label %if.then.192, label %if.else.198

if.then.192:                                      ; preds = %if.then.127
  %129 = load i32, i32* %index, align 4
  %idxprom193 = sext i32 %129 to i64
  %130 = load %struct.Hash_Entry*, %struct.Hash_Entry** @g_trans_table, align 8
  %arrayidx194 = getelementptr inbounds %struct.Hash_Entry, %struct.Hash_Entry* %130, i64 %idxprom193
  %type195 = getelementptr inbounds %struct.Hash_Entry, %struct.Hash_Entry* %arrayidx194, i32 0, i32 3
  %131 = bitcast [3 x i8]* %type195 to i24*
  %bf.load196 = load i24, i24* %131, align 1
  %bf.clear197 = and i24 %bf.load196, 4194303
  store i24 %bf.clear197, i24* %131, align 1
  br label %if.end.216

if.else.198:                                      ; preds = %if.then.127
  %132 = load i32, i32* %value.addr, align 4
  %133 = load i32, i32* %alpha.addr, align 4
  %cmp199 = icmp sgt i32 %132, %133
  br i1 %cmp199, label %if.then.201, label %if.else.208

if.then.201:                                      ; preds = %if.else.198
  %134 = load i32, i32* %index, align 4
  %idxprom202 = sext i32 %134 to i64
  %135 = load %struct.Hash_Entry*, %struct.Hash_Entry** @g_trans_table, align 8
  %arrayidx203 = getelementptr inbounds %struct.Hash_Entry, %struct.Hash_Entry* %135, i64 %idxprom202
  %type204 = getelementptr inbounds %struct.Hash_Entry, %struct.Hash_Entry* %arrayidx203, i32 0, i32 3
  %136 = bitcast [3 x i8]* %type204 to i24*
  %bf.load205 = load i24, i24* %136, align 1
  %bf.clear206 = and i24 %bf.load205, 4194303
  %bf.set207 = or i24 %bf.clear206, 4194304
  store i24 %bf.set207, i24* %136, align 1
  br label %if.end.215

if.else.208:                                      ; preds = %if.else.198
  %137 = load i32, i32* %index, align 4
  %idxprom209 = sext i32 %137 to i64
  %138 = load %struct.Hash_Entry*, %struct.Hash_Entry** @g_trans_table, align 8
  %arrayidx210 = getelementptr inbounds %struct.Hash_Entry, %struct.Hash_Entry* %138, i64 %idxprom209
  %type211 = getelementptr inbounds %struct.Hash_Entry, %struct.Hash_Entry* %arrayidx210, i32 0, i32 3
  %139 = bitcast [3 x i8]* %type211 to i24*
  %bf.load212 = load i24, i24* %139, align 1
  %bf.clear213 = and i24 %bf.load212, 4194303
  %bf.set214 = or i24 %bf.clear213, -8388608
  store i24 %bf.set214, i24* %139, align 1
  br label %if.end.215

if.end.215:                                       ; preds = %if.else.208, %if.then.201
  br label %if.end.216

if.end.216:                                       ; preds = %if.end.215, %if.then.192
  br label %if.end.465

if.end.217:                                       ; preds = %lor.lhs.false.121
  %140 = load i32, i32* getelementptr inbounds (%struct.Hash_Key, %struct.Hash_Key* @g_flipH_hashkey, i32 0, i32 1), align 4
  store i32 %140, i32* %index, align 4
  %141 = load i32, i32* %index, align 4
  %idxprom218 = sext i32 %141 to i64
  %142 = load %struct.Hash_Entry*, %struct.Hash_Entry** @g_trans_table, align 8
  %arrayidx219 = getelementptr inbounds %struct.Hash_Entry, %struct.Hash_Entry* %142, i64 %idxprom218
  %key220 = getelementptr inbounds %struct.Hash_Entry, %struct.Hash_Entry* %arrayidx219, i32 0, i32 0
  %arrayidx221 = getelementptr inbounds [4 x i32], [4 x i32]* %key220, i32 0, i64 0
  %143 = load i32, i32* %arrayidx221, align 4
  %144 = load i32, i32* getelementptr inbounds (%struct.Hash_Key, %struct.Hash_Key* @g_flipH_hashkey, i32 0, i32 0, i64 0), align 4
  %cmp222 = icmp eq i32 %143, %144
  br i1 %cmp222, label %land.lhs.true.224, label %lor.lhs.false.245

land.lhs.true.224:                                ; preds = %if.end.217
  %145 = load i32, i32* %index, align 4
  %idxprom225 = sext i32 %145 to i64
  %146 = load %struct.Hash_Entry*, %struct.Hash_Entry** @g_trans_table, align 8
  %arrayidx226 = getelementptr inbounds %struct.Hash_Entry, %struct.Hash_Entry* %146, i64 %idxprom225
  %key227 = getelementptr inbounds %struct.Hash_Entry, %struct.Hash_Entry* %arrayidx226, i32 0, i32 0
  %arrayidx228 = getelementptr inbounds [4 x i32], [4 x i32]* %key227, i32 0, i64 1
  %147 = load i32, i32* %arrayidx228, align 4
  %148 = load i32, i32* getelementptr inbounds (%struct.Hash_Key, %struct.Hash_Key* @g_flipH_hashkey, i32 0, i32 0, i64 1), align 4
  %cmp229 = icmp eq i32 %147, %148
  br i1 %cmp229, label %land.lhs.true.231, label %lor.lhs.false.245

land.lhs.true.231:                                ; preds = %land.lhs.true.224
  %149 = load i32, i32* %index, align 4
  %idxprom232 = sext i32 %149 to i64
  %150 = load %struct.Hash_Entry*, %struct.Hash_Entry** @g_trans_table, align 8
  %arrayidx233 = getelementptr inbounds %struct.Hash_Entry, %struct.Hash_Entry* %150, i64 %idxprom232
  %key234 = getelementptr inbounds %struct.Hash_Entry, %struct.Hash_Entry* %arrayidx233, i32 0, i32 0
  %arrayidx235 = getelementptr inbounds [4 x i32], [4 x i32]* %key234, i32 0, i64 2
  %151 = load i32, i32* %arrayidx235, align 4
  %152 = load i32, i32* getelementptr inbounds (%struct.Hash_Key, %struct.Hash_Key* @g_flipH_hashkey, i32 0, i32 0, i64 2), align 4
  %cmp236 = icmp eq i32 %151, %152
  br i1 %cmp236, label %land.lhs.true.238, label %lor.lhs.false.245

land.lhs.true.238:                                ; preds = %land.lhs.true.231
  %153 = load i32, i32* %index, align 4
  %idxprom239 = sext i32 %153 to i64
  %154 = load %struct.Hash_Entry*, %struct.Hash_Entry** @g_trans_table, align 8
  %arrayidx240 = getelementptr inbounds %struct.Hash_Entry, %struct.Hash_Entry* %154, i64 %idxprom239
  %key241 = getelementptr inbounds %struct.Hash_Entry, %struct.Hash_Entry* %arrayidx240, i32 0, i32 0
  %arrayidx242 = getelementptr inbounds [4 x i32], [4 x i32]* %key241, i32 0, i64 3
  %155 = load i32, i32* %arrayidx242, align 4
  %156 = load i32, i32* getelementptr inbounds (%struct.Hash_Key, %struct.Hash_Key* @g_flipH_hashkey, i32 0, i32 0, i64 3), align 4
  %cmp243 = icmp eq i32 %155, %156
  br i1 %cmp243, label %if.then.251, label %lor.lhs.false.245

lor.lhs.false.245:                                ; preds = %land.lhs.true.238, %land.lhs.true.231, %land.lhs.true.224, %if.end.217
  %157 = load i32, i32* %index, align 4
  %idxprom246 = sext i32 %157 to i64
  %158 = load %struct.Hash_Entry*, %struct.Hash_Entry** @g_trans_table, align 8
  %arrayidx247 = getelementptr inbounds %struct.Hash_Entry, %struct.Hash_Entry* %158, i64 %idxprom246
  %nodes248 = getelementptr inbounds %struct.Hash_Entry, %struct.Hash_Entry* %arrayidx247, i32 0, i32 1
  %159 = load i32, i32* %nodes248, align 4
  %160 = load i32, i32* %nodes.addr, align 4
  %cmp249 = icmp ule i32 %159, %160
  br i1 %cmp249, label %if.then.251, label %if.end.341

if.then.251:                                      ; preds = %lor.lhs.false.245, %land.lhs.true.238
  %161 = load i32, i32* getelementptr inbounds (%struct.Hash_Key, %struct.Hash_Key* @g_flipH_hashkey, i32 0, i32 0, i64 0), align 4
  %162 = load i32, i32* %index, align 4
  %idxprom252 = sext i32 %162 to i64
  %163 = load %struct.Hash_Entry*, %struct.Hash_Entry** @g_trans_table, align 8
  %arrayidx253 = getelementptr inbounds %struct.Hash_Entry, %struct.Hash_Entry* %163, i64 %idxprom252
  %key254 = getelementptr inbounds %struct.Hash_Entry, %struct.Hash_Entry* %arrayidx253, i32 0, i32 0
  %arrayidx255 = getelementptr inbounds [4 x i32], [4 x i32]* %key254, i32 0, i64 0
  store i32 %161, i32* %arrayidx255, align 4
  %164 = load i32, i32* getelementptr inbounds (%struct.Hash_Key, %struct.Hash_Key* @g_flipH_hashkey, i32 0, i32 0, i64 1), align 4
  %165 = load i32, i32* %index, align 4
  %idxprom256 = sext i32 %165 to i64
  %166 = load %struct.Hash_Entry*, %struct.Hash_Entry** @g_trans_table, align 8
  %arrayidx257 = getelementptr inbounds %struct.Hash_Entry, %struct.Hash_Entry* %166, i64 %idxprom256
  %key258 = getelementptr inbounds %struct.Hash_Entry, %struct.Hash_Entry* %arrayidx257, i32 0, i32 0
  %arrayidx259 = getelementptr inbounds [4 x i32], [4 x i32]* %key258, i32 0, i64 1
  store i32 %164, i32* %arrayidx259, align 4
  %167 = load i32, i32* getelementptr inbounds (%struct.Hash_Key, %struct.Hash_Key* @g_flipH_hashkey, i32 0, i32 0, i64 2), align 4
  %168 = load i32, i32* %index, align 4
  %idxprom260 = sext i32 %168 to i64
  %169 = load %struct.Hash_Entry*, %struct.Hash_Entry** @g_trans_table, align 8
  %arrayidx261 = getelementptr inbounds %struct.Hash_Entry, %struct.Hash_Entry* %169, i64 %idxprom260
  %key262 = getelementptr inbounds %struct.Hash_Entry, %struct.Hash_Entry* %arrayidx261, i32 0, i32 0
  %arrayidx263 = getelementptr inbounds [4 x i32], [4 x i32]* %key262, i32 0, i64 2
  store i32 %167, i32* %arrayidx263, align 4
  %170 = load i32, i32* getelementptr inbounds (%struct.Hash_Key, %struct.Hash_Key* @g_flipH_hashkey, i32 0, i32 0, i64 3), align 4
  %171 = load i32, i32* %index, align 4
  %idxprom264 = sext i32 %171 to i64
  %172 = load %struct.Hash_Entry*, %struct.Hash_Entry** @g_trans_table, align 8
  %arrayidx265 = getelementptr inbounds %struct.Hash_Entry, %struct.Hash_Entry* %172, i64 %idxprom264
  %key266 = getelementptr inbounds %struct.Hash_Entry, %struct.Hash_Entry* %arrayidx265, i32 0, i32 0
  %arrayidx267 = getelementptr inbounds [4 x i32], [4 x i32]* %key266, i32 0, i64 3
  store i32 %170, i32* %arrayidx267, align 4
  %173 = load i32, i32* %nodes.addr, align 4
  %174 = load i32, i32* %index, align 4
  %idxprom268 = sext i32 %174 to i64
  %175 = load %struct.Hash_Entry*, %struct.Hash_Entry** @g_trans_table, align 8
  %arrayidx269 = getelementptr inbounds %struct.Hash_Entry, %struct.Hash_Entry* %175, i64 %idxprom268
  %nodes270 = getelementptr inbounds %struct.Hash_Entry, %struct.Hash_Entry* %arrayidx269, i32 0, i32 1
  store i32 %173, i32* %nodes270, align 4
  %mask_index271 = getelementptr inbounds %struct.Move, %struct.Move* %best, i32 0, i32 1
  %176 = load i32, i32* %mask_index271, align 4
  %sub272 = sub nsw i32 %176, 1
  %177 = load i32, i32* %player.addr, align 4
  %idxprom273 = sext i32 %177 to i64
  %arrayidx274 = getelementptr inbounds [2 x i32], [2 x i32]* @g_board_size, i32 0, i64 %idxprom273
  %178 = load i32, i32* %arrayidx274, align 4
  %mul275 = mul nsw i32 %sub272, %178
  %array_index276 = getelementptr inbounds %struct.Move, %struct.Move* %best, i32 0, i32 0
  %179 = load i32, i32* %array_index276, align 4
  %sub277 = sub nsw i32 %179, 1
  %add278 = add nsw i32 %mul275, %sub277
  %conv279 = trunc i32 %add278 to i8
  %180 = load i32, i32* %index, align 4
  %idxprom280 = sext i32 %180 to i64
  %181 = load %struct.Hash_Entry*, %struct.Hash_Entry** @g_trans_table, align 8
  %arrayidx281 = getelementptr inbounds %struct.Hash_Entry, %struct.Hash_Entry* %181, i64 %idxprom280
  %best_move282 = getelementptr inbounds %struct.Hash_Entry, %struct.Hash_Entry* %arrayidx281, i32 0, i32 2
  store i8 %conv279, i8* %best_move282, align 1
  %182 = load i32, i32* %depth.addr, align 4
  %conv283 = trunc i32 %182 to i8
  %183 = load i32, i32* %index, align 4
  %idxprom284 = sext i32 %183 to i64
  %184 = load %struct.Hash_Entry*, %struct.Hash_Entry** @g_trans_table, align 8
  %arrayidx285 = getelementptr inbounds %struct.Hash_Entry, %struct.Hash_Entry* %184, i64 %idxprom284
  %depth286 = getelementptr inbounds %struct.Hash_Entry, %struct.Hash_Entry* %arrayidx285, i32 0, i32 3
  %185 = bitcast [3 x i8]* %depth286 to i24*
  %186 = zext i8 %conv283 to i24
  %bf.load287 = load i24, i24* %185, align 1
  %bf.value288 = and i24 %186, 127
  %bf.clear289 = and i24 %bf.load287, -128
  %bf.set290 = or i24 %bf.clear289, %bf.value288
  store i24 %bf.set290, i24* %185, align 1
  %bf.result.cast291 = trunc i24 %bf.value288 to i8
  %187 = load i32, i32* %player.addr, align 4
  %conv292 = trunc i32 %187 to i8
  %188 = load i32, i32* %index, align 4
  %idxprom293 = sext i32 %188 to i64
  %189 = load %struct.Hash_Entry*, %struct.Hash_Entry** @g_trans_table, align 8
  %arrayidx294 = getelementptr inbounds %struct.Hash_Entry, %struct.Hash_Entry* %189, i64 %idxprom293
  %whos_turn295 = getelementptr inbounds %struct.Hash_Entry, %struct.Hash_Entry* %arrayidx294, i32 0, i32 3
  %190 = bitcast [3 x i8]* %whos_turn295 to i24*
  %191 = zext i8 %conv292 to i24
  %bf.load296 = load i24, i24* %190, align 1
  %bf.value297 = and i24 %191, 1
  %bf.shl298 = shl i24 %bf.value297, 7
  %bf.clear299 = and i24 %bf.load296, -129
  %bf.set300 = or i24 %bf.clear299, %bf.shl298
  store i24 %bf.set300, i24* %190, align 1
  %bf.result.cast301 = trunc i24 %bf.value297 to i8
  %192 = load i32, i32* %value.addr, align 4
  %conv302 = trunc i32 %192 to i16
  %193 = load i32, i32* %index, align 4
  %idxprom303 = sext i32 %193 to i64
  %194 = load %struct.Hash_Entry*, %struct.Hash_Entry** @g_trans_table, align 8
  %arrayidx304 = getelementptr inbounds %struct.Hash_Entry, %struct.Hash_Entry* %194, i64 %idxprom303
  %value305 = getelementptr inbounds %struct.Hash_Entry, %struct.Hash_Entry* %arrayidx304, i32 0, i32 3
  %195 = bitcast [3 x i8]* %value305 to i24*
  %196 = zext i16 %conv302 to i24
  %bf.load306 = load i24, i24* %195, align 1
  %bf.value307 = and i24 %196, 16383
  %bf.shl308 = shl i24 %bf.value307, 8
  %bf.clear309 = and i24 %bf.load306, -4194049
  %bf.set310 = or i24 %bf.clear309, %bf.shl308
  store i24 %bf.set310, i24* %195, align 1
  %bf.result.shl311 = shl i24 %bf.value307, 10
  %bf.result.ashr312 = ashr i24 %bf.result.shl311, 10
  %bf.result.cast313 = trunc i24 %bf.result.ashr312 to i16
  %197 = load i32, i32* %value.addr, align 4
  %198 = load i32, i32* %beta.addr, align 4
  %cmp314 = icmp sge i32 %197, %198
  br i1 %cmp314, label %if.then.316, label %if.else.322

if.then.316:                                      ; preds = %if.then.251
  %199 = load i32, i32* %index, align 4
  %idxprom317 = sext i32 %199 to i64
  %200 = load %struct.Hash_Entry*, %struct.Hash_Entry** @g_trans_table, align 8
  %arrayidx318 = getelementptr inbounds %struct.Hash_Entry, %struct.Hash_Entry* %200, i64 %idxprom317
  %type319 = getelementptr inbounds %struct.Hash_Entry, %struct.Hash_Entry* %arrayidx318, i32 0, i32 3
  %201 = bitcast [3 x i8]* %type319 to i24*
  %bf.load320 = load i24, i24* %201, align 1
  %bf.clear321 = and i24 %bf.load320, 4194303
  store i24 %bf.clear321, i24* %201, align 1
  br label %if.end.340

if.else.322:                                      ; preds = %if.then.251
  %202 = load i32, i32* %value.addr, align 4
  %203 = load i32, i32* %alpha.addr, align 4
  %cmp323 = icmp sgt i32 %202, %203
  br i1 %cmp323, label %if.then.325, label %if.else.332

if.then.325:                                      ; preds = %if.else.322
  %204 = load i32, i32* %index, align 4
  %idxprom326 = sext i32 %204 to i64
  %205 = load %struct.Hash_Entry*, %struct.Hash_Entry** @g_trans_table, align 8
  %arrayidx327 = getelementptr inbounds %struct.Hash_Entry, %struct.Hash_Entry* %205, i64 %idxprom326
  %type328 = getelementptr inbounds %struct.Hash_Entry, %struct.Hash_Entry* %arrayidx327, i32 0, i32 3
  %206 = bitcast [3 x i8]* %type328 to i24*
  %bf.load329 = load i24, i24* %206, align 1
  %bf.clear330 = and i24 %bf.load329, 4194303
  %bf.set331 = or i24 %bf.clear330, 4194304
  store i24 %bf.set331, i24* %206, align 1
  br label %if.end.339

if.else.332:                                      ; preds = %if.else.322
  %207 = load i32, i32* %index, align 4
  %idxprom333 = sext i32 %207 to i64
  %208 = load %struct.Hash_Entry*, %struct.Hash_Entry** @g_trans_table, align 8
  %arrayidx334 = getelementptr inbounds %struct.Hash_Entry, %struct.Hash_Entry* %208, i64 %idxprom333
  %type335 = getelementptr inbounds %struct.Hash_Entry, %struct.Hash_Entry* %arrayidx334, i32 0, i32 3
  %209 = bitcast [3 x i8]* %type335 to i24*
  %bf.load336 = load i24, i24* %209, align 1
  %bf.clear337 = and i24 %bf.load336, 4194303
  %bf.set338 = or i24 %bf.clear337, -8388608
  store i24 %bf.set338, i24* %209, align 1
  br label %if.end.339

if.end.339:                                       ; preds = %if.else.332, %if.then.325
  br label %if.end.340

if.end.340:                                       ; preds = %if.end.339, %if.then.316
  br label %if.end.465

if.end.341:                                       ; preds = %lor.lhs.false.245
  %210 = load i32, i32* getelementptr inbounds (%struct.Hash_Key, %struct.Hash_Key* @g_flipVH_hashkey, i32 0, i32 1), align 4
  store i32 %210, i32* %index, align 4
  %211 = load i32, i32* %index, align 4
  %idxprom342 = sext i32 %211 to i64
  %212 = load %struct.Hash_Entry*, %struct.Hash_Entry** @g_trans_table, align 8
  %arrayidx343 = getelementptr inbounds %struct.Hash_Entry, %struct.Hash_Entry* %212, i64 %idxprom342
  %key344 = getelementptr inbounds %struct.Hash_Entry, %struct.Hash_Entry* %arrayidx343, i32 0, i32 0
  %arrayidx345 = getelementptr inbounds [4 x i32], [4 x i32]* %key344, i32 0, i64 0
  %213 = load i32, i32* %arrayidx345, align 4
  %214 = load i32, i32* getelementptr inbounds (%struct.Hash_Key, %struct.Hash_Key* @g_flipVH_hashkey, i32 0, i32 0, i64 0), align 4
  %cmp346 = icmp eq i32 %213, %214
  br i1 %cmp346, label %land.lhs.true.348, label %lor.lhs.false.369

land.lhs.true.348:                                ; preds = %if.end.341
  %215 = load i32, i32* %index, align 4
  %idxprom349 = sext i32 %215 to i64
  %216 = load %struct.Hash_Entry*, %struct.Hash_Entry** @g_trans_table, align 8
  %arrayidx350 = getelementptr inbounds %struct.Hash_Entry, %struct.Hash_Entry* %216, i64 %idxprom349
  %key351 = getelementptr inbounds %struct.Hash_Entry, %struct.Hash_Entry* %arrayidx350, i32 0, i32 0
  %arrayidx352 = getelementptr inbounds [4 x i32], [4 x i32]* %key351, i32 0, i64 1
  %217 = load i32, i32* %arrayidx352, align 4
  %218 = load i32, i32* getelementptr inbounds (%struct.Hash_Key, %struct.Hash_Key* @g_flipVH_hashkey, i32 0, i32 0, i64 1), align 4
  %cmp353 = icmp eq i32 %217, %218
  br i1 %cmp353, label %land.lhs.true.355, label %lor.lhs.false.369

land.lhs.true.355:                                ; preds = %land.lhs.true.348
  %219 = load i32, i32* %index, align 4
  %idxprom356 = sext i32 %219 to i64
  %220 = load %struct.Hash_Entry*, %struct.Hash_Entry** @g_trans_table, align 8
  %arrayidx357 = getelementptr inbounds %struct.Hash_Entry, %struct.Hash_Entry* %220, i64 %idxprom356
  %key358 = getelementptr inbounds %struct.Hash_Entry, %struct.Hash_Entry* %arrayidx357, i32 0, i32 0
  %arrayidx359 = getelementptr inbounds [4 x i32], [4 x i32]* %key358, i32 0, i64 2
  %221 = load i32, i32* %arrayidx359, align 4
  %222 = load i32, i32* getelementptr inbounds (%struct.Hash_Key, %struct.Hash_Key* @g_flipVH_hashkey, i32 0, i32 0, i64 2), align 4
  %cmp360 = icmp eq i32 %221, %222
  br i1 %cmp360, label %land.lhs.true.362, label %lor.lhs.false.369

land.lhs.true.362:                                ; preds = %land.lhs.true.355
  %223 = load i32, i32* %index, align 4
  %idxprom363 = sext i32 %223 to i64
  %224 = load %struct.Hash_Entry*, %struct.Hash_Entry** @g_trans_table, align 8
  %arrayidx364 = getelementptr inbounds %struct.Hash_Entry, %struct.Hash_Entry* %224, i64 %idxprom363
  %key365 = getelementptr inbounds %struct.Hash_Entry, %struct.Hash_Entry* %arrayidx364, i32 0, i32 0
  %arrayidx366 = getelementptr inbounds [4 x i32], [4 x i32]* %key365, i32 0, i64 3
  %225 = load i32, i32* %arrayidx366, align 4
  %226 = load i32, i32* getelementptr inbounds (%struct.Hash_Key, %struct.Hash_Key* @g_flipVH_hashkey, i32 0, i32 0, i64 3), align 4
  %cmp367 = icmp eq i32 %225, %226
  br i1 %cmp367, label %if.then.375, label %lor.lhs.false.369

lor.lhs.false.369:                                ; preds = %land.lhs.true.362, %land.lhs.true.355, %land.lhs.true.348, %if.end.341
  %227 = load i32, i32* %index, align 4
  %idxprom370 = sext i32 %227 to i64
  %228 = load %struct.Hash_Entry*, %struct.Hash_Entry** @g_trans_table, align 8
  %arrayidx371 = getelementptr inbounds %struct.Hash_Entry, %struct.Hash_Entry* %228, i64 %idxprom370
  %nodes372 = getelementptr inbounds %struct.Hash_Entry, %struct.Hash_Entry* %arrayidx371, i32 0, i32 1
  %229 = load i32, i32* %nodes372, align 4
  %230 = load i32, i32* %nodes.addr, align 4
  %cmp373 = icmp ule i32 %229, %230
  br i1 %cmp373, label %if.then.375, label %if.end.465

if.then.375:                                      ; preds = %lor.lhs.false.369, %land.lhs.true.362
  %231 = load i32, i32* getelementptr inbounds (%struct.Hash_Key, %struct.Hash_Key* @g_flipVH_hashkey, i32 0, i32 0, i64 0), align 4
  %232 = load i32, i32* %index, align 4
  %idxprom376 = sext i32 %232 to i64
  %233 = load %struct.Hash_Entry*, %struct.Hash_Entry** @g_trans_table, align 8
  %arrayidx377 = getelementptr inbounds %struct.Hash_Entry, %struct.Hash_Entry* %233, i64 %idxprom376
  %key378 = getelementptr inbounds %struct.Hash_Entry, %struct.Hash_Entry* %arrayidx377, i32 0, i32 0
  %arrayidx379 = getelementptr inbounds [4 x i32], [4 x i32]* %key378, i32 0, i64 0
  store i32 %231, i32* %arrayidx379, align 4
  %234 = load i32, i32* getelementptr inbounds (%struct.Hash_Key, %struct.Hash_Key* @g_flipVH_hashkey, i32 0, i32 0, i64 1), align 4
  %235 = load i32, i32* %index, align 4
  %idxprom380 = sext i32 %235 to i64
  %236 = load %struct.Hash_Entry*, %struct.Hash_Entry** @g_trans_table, align 8
  %arrayidx381 = getelementptr inbounds %struct.Hash_Entry, %struct.Hash_Entry* %236, i64 %idxprom380
  %key382 = getelementptr inbounds %struct.Hash_Entry, %struct.Hash_Entry* %arrayidx381, i32 0, i32 0
  %arrayidx383 = getelementptr inbounds [4 x i32], [4 x i32]* %key382, i32 0, i64 1
  store i32 %234, i32* %arrayidx383, align 4
  %237 = load i32, i32* getelementptr inbounds (%struct.Hash_Key, %struct.Hash_Key* @g_flipVH_hashkey, i32 0, i32 0, i64 2), align 4
  %238 = load i32, i32* %index, align 4
  %idxprom384 = sext i32 %238 to i64
  %239 = load %struct.Hash_Entry*, %struct.Hash_Entry** @g_trans_table, align 8
  %arrayidx385 = getelementptr inbounds %struct.Hash_Entry, %struct.Hash_Entry* %239, i64 %idxprom384
  %key386 = getelementptr inbounds %struct.Hash_Entry, %struct.Hash_Entry* %arrayidx385, i32 0, i32 0
  %arrayidx387 = getelementptr inbounds [4 x i32], [4 x i32]* %key386, i32 0, i64 2
  store i32 %237, i32* %arrayidx387, align 4
  %240 = load i32, i32* getelementptr inbounds (%struct.Hash_Key, %struct.Hash_Key* @g_flipVH_hashkey, i32 0, i32 0, i64 3), align 4
  %241 = load i32, i32* %index, align 4
  %idxprom388 = sext i32 %241 to i64
  %242 = load %struct.Hash_Entry*, %struct.Hash_Entry** @g_trans_table, align 8
  %arrayidx389 = getelementptr inbounds %struct.Hash_Entry, %struct.Hash_Entry* %242, i64 %idxprom388
  %key390 = getelementptr inbounds %struct.Hash_Entry, %struct.Hash_Entry* %arrayidx389, i32 0, i32 0
  %arrayidx391 = getelementptr inbounds [4 x i32], [4 x i32]* %key390, i32 0, i64 3
  store i32 %240, i32* %arrayidx391, align 4
  %243 = load i32, i32* %nodes.addr, align 4
  %244 = load i32, i32* %index, align 4
  %idxprom392 = sext i32 %244 to i64
  %245 = load %struct.Hash_Entry*, %struct.Hash_Entry** @g_trans_table, align 8
  %arrayidx393 = getelementptr inbounds %struct.Hash_Entry, %struct.Hash_Entry* %245, i64 %idxprom392
  %nodes394 = getelementptr inbounds %struct.Hash_Entry, %struct.Hash_Entry* %arrayidx393, i32 0, i32 1
  store i32 %243, i32* %nodes394, align 4
  %mask_index395 = getelementptr inbounds %struct.Move, %struct.Move* %best, i32 0, i32 1
  %246 = load i32, i32* %mask_index395, align 4
  %sub396 = sub nsw i32 %246, 1
  %247 = load i32, i32* %player.addr, align 4
  %idxprom397 = sext i32 %247 to i64
  %arrayidx398 = getelementptr inbounds [2 x i32], [2 x i32]* @g_board_size, i32 0, i64 %idxprom397
  %248 = load i32, i32* %arrayidx398, align 4
  %mul399 = mul nsw i32 %sub396, %248
  %array_index400 = getelementptr inbounds %struct.Move, %struct.Move* %best, i32 0, i32 0
  %249 = load i32, i32* %array_index400, align 4
  %sub401 = sub nsw i32 %249, 1
  %add402 = add nsw i32 %mul399, %sub401
  %conv403 = trunc i32 %add402 to i8
  %250 = load i32, i32* %index, align 4
  %idxprom404 = sext i32 %250 to i64
  %251 = load %struct.Hash_Entry*, %struct.Hash_Entry** @g_trans_table, align 8
  %arrayidx405 = getelementptr inbounds %struct.Hash_Entry, %struct.Hash_Entry* %251, i64 %idxprom404
  %best_move406 = getelementptr inbounds %struct.Hash_Entry, %struct.Hash_Entry* %arrayidx405, i32 0, i32 2
  store i8 %conv403, i8* %best_move406, align 1
  %252 = load i32, i32* %depth.addr, align 4
  %conv407 = trunc i32 %252 to i8
  %253 = load i32, i32* %index, align 4
  %idxprom408 = sext i32 %253 to i64
  %254 = load %struct.Hash_Entry*, %struct.Hash_Entry** @g_trans_table, align 8
  %arrayidx409 = getelementptr inbounds %struct.Hash_Entry, %struct.Hash_Entry* %254, i64 %idxprom408
  %depth410 = getelementptr inbounds %struct.Hash_Entry, %struct.Hash_Entry* %arrayidx409, i32 0, i32 3
  %255 = bitcast [3 x i8]* %depth410 to i24*
  %256 = zext i8 %conv407 to i24
  %bf.load411 = load i24, i24* %255, align 1
  %bf.value412 = and i24 %256, 127
  %bf.clear413 = and i24 %bf.load411, -128
  %bf.set414 = or i24 %bf.clear413, %bf.value412
  store i24 %bf.set414, i24* %255, align 1
  %bf.result.cast415 = trunc i24 %bf.value412 to i8
  %257 = load i32, i32* %player.addr, align 4
  %conv416 = trunc i32 %257 to i8
  %258 = load i32, i32* %index, align 4
  %idxprom417 = sext i32 %258 to i64
  %259 = load %struct.Hash_Entry*, %struct.Hash_Entry** @g_trans_table, align 8
  %arrayidx418 = getelementptr inbounds %struct.Hash_Entry, %struct.Hash_Entry* %259, i64 %idxprom417
  %whos_turn419 = getelementptr inbounds %struct.Hash_Entry, %struct.Hash_Entry* %arrayidx418, i32 0, i32 3
  %260 = bitcast [3 x i8]* %whos_turn419 to i24*
  %261 = zext i8 %conv416 to i24
  %bf.load420 = load i24, i24* %260, align 1
  %bf.value421 = and i24 %261, 1
  %bf.shl422 = shl i24 %bf.value421, 7
  %bf.clear423 = and i24 %bf.load420, -129
  %bf.set424 = or i24 %bf.clear423, %bf.shl422
  store i24 %bf.set424, i24* %260, align 1
  %bf.result.cast425 = trunc i24 %bf.value421 to i8
  %262 = load i32, i32* %value.addr, align 4
  %conv426 = trunc i32 %262 to i16
  %263 = load i32, i32* %index, align 4
  %idxprom427 = sext i32 %263 to i64
  %264 = load %struct.Hash_Entry*, %struct.Hash_Entry** @g_trans_table, align 8
  %arrayidx428 = getelementptr inbounds %struct.Hash_Entry, %struct.Hash_Entry* %264, i64 %idxprom427
  %value429 = getelementptr inbounds %struct.Hash_Entry, %struct.Hash_Entry* %arrayidx428, i32 0, i32 3
  %265 = bitcast [3 x i8]* %value429 to i24*
  %266 = zext i16 %conv426 to i24
  %bf.load430 = load i24, i24* %265, align 1
  %bf.value431 = and i24 %266, 16383
  %bf.shl432 = shl i24 %bf.value431, 8
  %bf.clear433 = and i24 %bf.load430, -4194049
  %bf.set434 = or i24 %bf.clear433, %bf.shl432
  store i24 %bf.set434, i24* %265, align 1
  %bf.result.shl435 = shl i24 %bf.value431, 10
  %bf.result.ashr436 = ashr i24 %bf.result.shl435, 10
  %bf.result.cast437 = trunc i24 %bf.result.ashr436 to i16
  %267 = load i32, i32* %value.addr, align 4
  %268 = load i32, i32* %beta.addr, align 4
  %cmp438 = icmp sge i32 %267, %268
  br i1 %cmp438, label %if.then.440, label %if.else.446

if.then.440:                                      ; preds = %if.then.375
  %269 = load i32, i32* %index, align 4
  %idxprom441 = sext i32 %269 to i64
  %270 = load %struct.Hash_Entry*, %struct.Hash_Entry** @g_trans_table, align 8
  %arrayidx442 = getelementptr inbounds %struct.Hash_Entry, %struct.Hash_Entry* %270, i64 %idxprom441
  %type443 = getelementptr inbounds %struct.Hash_Entry, %struct.Hash_Entry* %arrayidx442, i32 0, i32 3
  %271 = bitcast [3 x i8]* %type443 to i24*
  %bf.load444 = load i24, i24* %271, align 1
  %bf.clear445 = and i24 %bf.load444, 4194303
  store i24 %bf.clear445, i24* %271, align 1
  br label %if.end.464

if.else.446:                                      ; preds = %if.then.375
  %272 = load i32, i32* %value.addr, align 4
  %273 = load i32, i32* %alpha.addr, align 4
  %cmp447 = icmp sgt i32 %272, %273
  br i1 %cmp447, label %if.then.449, label %if.else.456

if.then.449:                                      ; preds = %if.else.446
  %274 = load i32, i32* %index, align 4
  %idxprom450 = sext i32 %274 to i64
  %275 = load %struct.Hash_Entry*, %struct.Hash_Entry** @g_trans_table, align 8
  %arrayidx451 = getelementptr inbounds %struct.Hash_Entry, %struct.Hash_Entry* %275, i64 %idxprom450
  %type452 = getelementptr inbounds %struct.Hash_Entry, %struct.Hash_Entry* %arrayidx451, i32 0, i32 3
  %276 = bitcast [3 x i8]* %type452 to i24*
  %bf.load453 = load i24, i24* %276, align 1
  %bf.clear454 = and i24 %bf.load453, 4194303
  %bf.set455 = or i24 %bf.clear454, 4194304
  store i24 %bf.set455, i24* %276, align 1
  br label %if.end.463

if.else.456:                                      ; preds = %if.else.446
  %277 = load i32, i32* %index, align 4
  %idxprom457 = sext i32 %277 to i64
  %278 = load %struct.Hash_Entry*, %struct.Hash_Entry** @g_trans_table, align 8
  %arrayidx458 = getelementptr inbounds %struct.Hash_Entry, %struct.Hash_Entry* %278, i64 %idxprom457
  %type459 = getelementptr inbounds %struct.Hash_Entry, %struct.Hash_Entry* %arrayidx458, i32 0, i32 3
  %279 = bitcast [3 x i8]* %type459 to i24*
  %bf.load460 = load i24, i24* %279, align 1
  %bf.clear461 = and i24 %bf.load460, 4194303
  %bf.set462 = or i24 %bf.clear461, -8388608
  store i24 %bf.set462, i24* %279, align 1
  br label %if.end.463

if.end.463:                                       ; preds = %if.else.456, %if.then.449
  br label %if.end.464

if.end.464:                                       ; preds = %if.end.463, %if.then.440
  br label %if.end.465

if.end.465:                                       ; preds = %if.end.92, %if.end.216, %if.end.340, %if.end.464, %lor.lhs.false.369
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @hashlookup(i32* %value, i32* %alpha, i32* %beta, i32 %depth_remaining, %struct.Move* %force_first, i32 %player) #0 {
entry:
  %retval = alloca i32, align 4
  %value.addr = alloca i32*, align 8
  %alpha.addr = alloca i32*, align 8
  %beta.addr = alloca i32*, align 8
  %depth_remaining.addr = alloca i32, align 4
  %force_first.addr = alloca %struct.Move*, align 8
  %player.addr = alloca i32, align 4
  %index = alloca i32, align 4
  store i32* %value, i32** %value.addr, align 8
  store i32* %alpha, i32** %alpha.addr, align 8
  store i32* %beta, i32** %beta.addr, align 8
  store i32 %depth_remaining, i32* %depth_remaining.addr, align 4
  store %struct.Move* %force_first, %struct.Move** %force_first.addr, align 8
  store i32 %player, i32* %player.addr, align 4
  %0 = load i32, i32* getelementptr inbounds (%struct.Hash_Key, %struct.Hash_Key* @g_norm_hashkey, i32 0, i32 1), align 4
  store i32 %0, i32* %index, align 4
  %1 = load i32, i32* %index, align 4
  %idxprom = sext i32 %1 to i64
  %2 = load %struct.Hash_Entry*, %struct.Hash_Entry** @g_trans_table, align 8
  %arrayidx = getelementptr inbounds %struct.Hash_Entry, %struct.Hash_Entry* %2, i64 %idxprom
  %key = getelementptr inbounds %struct.Hash_Entry, %struct.Hash_Entry* %arrayidx, i32 0, i32 0
  %arrayidx1 = getelementptr inbounds [4 x i32], [4 x i32]* %key, i32 0, i64 0
  %3 = load i32, i32* %arrayidx1, align 4
  %4 = load i32, i32* getelementptr inbounds (%struct.Hash_Key, %struct.Hash_Key* @g_norm_hashkey, i32 0, i32 0, i64 0), align 4
  %cmp = icmp eq i32 %3, %4
  br i1 %cmp, label %land.lhs.true, label %if.end.163

land.lhs.true:                                    ; preds = %entry
  %5 = load i32, i32* %index, align 4
  %idxprom2 = sext i32 %5 to i64
  %6 = load %struct.Hash_Entry*, %struct.Hash_Entry** @g_trans_table, align 8
  %arrayidx3 = getelementptr inbounds %struct.Hash_Entry, %struct.Hash_Entry* %6, i64 %idxprom2
  %key4 = getelementptr inbounds %struct.Hash_Entry, %struct.Hash_Entry* %arrayidx3, i32 0, i32 0
  %arrayidx5 = getelementptr inbounds [4 x i32], [4 x i32]* %key4, i32 0, i64 1
  %7 = load i32, i32* %arrayidx5, align 4
  %8 = load i32, i32* getelementptr inbounds (%struct.Hash_Key, %struct.Hash_Key* @g_norm_hashkey, i32 0, i32 0, i64 1), align 4
  %cmp6 = icmp eq i32 %7, %8
  br i1 %cmp6, label %land.lhs.true.7, label %if.end.163

land.lhs.true.7:                                  ; preds = %land.lhs.true
  %9 = load i32, i32* %index, align 4
  %idxprom8 = sext i32 %9 to i64
  %10 = load %struct.Hash_Entry*, %struct.Hash_Entry** @g_trans_table, align 8
  %arrayidx9 = getelementptr inbounds %struct.Hash_Entry, %struct.Hash_Entry* %10, i64 %idxprom8
  %key10 = getelementptr inbounds %struct.Hash_Entry, %struct.Hash_Entry* %arrayidx9, i32 0, i32 0
  %arrayidx11 = getelementptr inbounds [4 x i32], [4 x i32]* %key10, i32 0, i64 2
  %11 = load i32, i32* %arrayidx11, align 4
  %12 = load i32, i32* getelementptr inbounds (%struct.Hash_Key, %struct.Hash_Key* @g_norm_hashkey, i32 0, i32 0, i64 2), align 4
  %cmp12 = icmp eq i32 %11, %12
  br i1 %cmp12, label %land.lhs.true.13, label %if.end.163

land.lhs.true.13:                                 ; preds = %land.lhs.true.7
  %13 = load i32, i32* %index, align 4
  %idxprom14 = sext i32 %13 to i64
  %14 = load %struct.Hash_Entry*, %struct.Hash_Entry** @g_trans_table, align 8
  %arrayidx15 = getelementptr inbounds %struct.Hash_Entry, %struct.Hash_Entry* %14, i64 %idxprom14
  %key16 = getelementptr inbounds %struct.Hash_Entry, %struct.Hash_Entry* %arrayidx15, i32 0, i32 0
  %arrayidx17 = getelementptr inbounds [4 x i32], [4 x i32]* %key16, i32 0, i64 3
  %15 = load i32, i32* %arrayidx17, align 4
  %16 = load i32, i32* getelementptr inbounds (%struct.Hash_Key, %struct.Hash_Key* @g_norm_hashkey, i32 0, i32 0, i64 3), align 4
  %cmp18 = icmp eq i32 %15, %16
  br i1 %cmp18, label %land.lhs.true.19, label %if.end.163

land.lhs.true.19:                                 ; preds = %land.lhs.true.13
  %17 = load i32, i32* %index, align 4
  %idxprom20 = sext i32 %17 to i64
  %18 = load %struct.Hash_Entry*, %struct.Hash_Entry** @g_trans_table, align 8
  %arrayidx21 = getelementptr inbounds %struct.Hash_Entry, %struct.Hash_Entry* %18, i64 %idxprom20
  %whos_turn = getelementptr inbounds %struct.Hash_Entry, %struct.Hash_Entry* %arrayidx21, i32 0, i32 3
  %19 = bitcast [3 x i8]* %whos_turn to i24*
  %bf.load = load i24, i24* %19, align 1
  %bf.lshr = lshr i24 %bf.load, 7
  %bf.clear = and i24 %bf.lshr, 1
  %bf.cast = trunc i24 %bf.clear to i8
  %conv = zext i8 %bf.cast to i32
  %20 = load i32, i32* %player.addr, align 4
  %cmp22 = icmp eq i32 %conv, %20
  br i1 %cmp22, label %if.then, label %if.end.163

if.then:                                          ; preds = %land.lhs.true.19
  %21 = load i32, i32* %index, align 4
  %idxprom24 = sext i32 %21 to i64
  %22 = load %struct.Hash_Entry*, %struct.Hash_Entry** @g_trans_table, align 8
  %arrayidx25 = getelementptr inbounds %struct.Hash_Entry, %struct.Hash_Entry* %22, i64 %idxprom24
  %best_move = getelementptr inbounds %struct.Hash_Entry, %struct.Hash_Entry* %arrayidx25, i32 0, i32 2
  %23 = load i8, i8* %best_move, align 1
  %conv26 = zext i8 %23 to i32
  %24 = load i32, i32* %player.addr, align 4
  %idxprom27 = sext i32 %24 to i64
  %arrayidx28 = getelementptr inbounds [2 x i32], [2 x i32]* @g_board_size, i32 0, i64 %idxprom27
  %25 = load i32, i32* %arrayidx28, align 4
  %div = sdiv i32 %conv26, %25
  %add = add nsw i32 %div, 1
  %26 = load %struct.Move*, %struct.Move** %force_first.addr, align 8
  %mask_index = getelementptr inbounds %struct.Move, %struct.Move* %26, i32 0, i32 1
  store i32 %add, i32* %mask_index, align 4
  %27 = load i32, i32* %index, align 4
  %idxprom29 = sext i32 %27 to i64
  %28 = load %struct.Hash_Entry*, %struct.Hash_Entry** @g_trans_table, align 8
  %arrayidx30 = getelementptr inbounds %struct.Hash_Entry, %struct.Hash_Entry* %28, i64 %idxprom29
  %best_move31 = getelementptr inbounds %struct.Hash_Entry, %struct.Hash_Entry* %arrayidx30, i32 0, i32 2
  %29 = load i8, i8* %best_move31, align 1
  %conv32 = zext i8 %29 to i32
  %30 = load i32, i32* %player.addr, align 4
  %idxprom33 = sext i32 %30 to i64
  %arrayidx34 = getelementptr inbounds [2 x i32], [2 x i32]* @g_board_size, i32 0, i64 %idxprom33
  %31 = load i32, i32* %arrayidx34, align 4
  %rem = srem i32 %conv32, %31
  %add35 = add nsw i32 %rem, 1
  %32 = load %struct.Move*, %struct.Move** %force_first.addr, align 8
  %array_index = getelementptr inbounds %struct.Move, %struct.Move* %32, i32 0, i32 0
  store i32 %add35, i32* %array_index, align 4
  %33 = load i32, i32* %index, align 4
  %idxprom36 = sext i32 %33 to i64
  %34 = load %struct.Hash_Entry*, %struct.Hash_Entry** @g_trans_table, align 8
  %arrayidx37 = getelementptr inbounds %struct.Hash_Entry, %struct.Hash_Entry* %34, i64 %idxprom36
  %depth = getelementptr inbounds %struct.Hash_Entry, %struct.Hash_Entry* %arrayidx37, i32 0, i32 3
  %35 = bitcast [3 x i8]* %depth to i24*
  %bf.load38 = load i24, i24* %35, align 1
  %bf.clear39 = and i24 %bf.load38, 127
  %bf.cast40 = trunc i24 %bf.clear39 to i8
  %conv41 = zext i8 %bf.cast40 to i32
  %36 = load i32, i32* %depth_remaining.addr, align 4
  %cmp42 = icmp sge i32 %conv41, %36
  br i1 %cmp42, label %if.then.44, label %if.end.162

if.then.44:                                       ; preds = %if.then
  %37 = load i32, i32* %index, align 4
  %idxprom45 = sext i32 %37 to i64
  %38 = load %struct.Hash_Entry*, %struct.Hash_Entry** @g_trans_table, align 8
  %arrayidx46 = getelementptr inbounds %struct.Hash_Entry, %struct.Hash_Entry* %38, i64 %idxprom45
  %type = getelementptr inbounds %struct.Hash_Entry, %struct.Hash_Entry* %arrayidx46, i32 0, i32 3
  %39 = bitcast [3 x i8]* %type to i24*
  %bf.load47 = load i24, i24* %39, align 1
  %bf.lshr48 = lshr i24 %bf.load47, 22
  %bf.cast49 = trunc i24 %bf.lshr48 to i16
  %conv50 = zext i16 %bf.cast49 to i32
  %cmp51 = icmp eq i32 %conv50, 1
  br i1 %cmp51, label %if.then.53, label %if.end

if.then.53:                                       ; preds = %if.then.44
  %40 = load i32, i32* %index, align 4
  %idxprom54 = sext i32 %40 to i64
  %41 = load %struct.Hash_Entry*, %struct.Hash_Entry** @g_trans_table, align 8
  %arrayidx55 = getelementptr inbounds %struct.Hash_Entry, %struct.Hash_Entry* %41, i64 %idxprom54
  %value56 = getelementptr inbounds %struct.Hash_Entry, %struct.Hash_Entry* %arrayidx55, i32 0, i32 3
  %42 = bitcast [3 x i8]* %value56 to i24*
  %bf.load57 = load i24, i24* %42, align 1
  %bf.shl = shl i24 %bf.load57, 2
  %bf.ashr = ashr i24 %bf.shl, 10
  %bf.cast58 = trunc i24 %bf.ashr to i16
  %conv59 = sext i16 %bf.cast58 to i32
  %43 = load i32*, i32** %value.addr, align 8
  store i32 %conv59, i32* %43, align 4
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then.44
  %44 = load i32, i32* %index, align 4
  %idxprom60 = sext i32 %44 to i64
  %45 = load %struct.Hash_Entry*, %struct.Hash_Entry** @g_trans_table, align 8
  %arrayidx61 = getelementptr inbounds %struct.Hash_Entry, %struct.Hash_Entry* %45, i64 %idxprom60
  %type62 = getelementptr inbounds %struct.Hash_Entry, %struct.Hash_Entry* %arrayidx61, i32 0, i32 3
  %46 = bitcast [3 x i8]* %type62 to i24*
  %bf.load63 = load i24, i24* %46, align 1
  %bf.lshr64 = lshr i24 %bf.load63, 22
  %bf.cast65 = trunc i24 %bf.lshr64 to i16
  %conv66 = zext i16 %bf.cast65 to i32
  %cmp67 = icmp eq i32 %conv66, 0
  br i1 %cmp67, label %if.then.69, label %if.end.110

if.then.69:                                       ; preds = %if.end
  %47 = load i32, i32* %index, align 4
  %idxprom70 = sext i32 %47 to i64
  %48 = load %struct.Hash_Entry*, %struct.Hash_Entry** @g_trans_table, align 8
  %arrayidx71 = getelementptr inbounds %struct.Hash_Entry, %struct.Hash_Entry* %48, i64 %idxprom70
  %value72 = getelementptr inbounds %struct.Hash_Entry, %struct.Hash_Entry* %arrayidx71, i32 0, i32 3
  %49 = bitcast [3 x i8]* %value72 to i24*
  %bf.load73 = load i24, i24* %49, align 1
  %bf.shl74 = shl i24 %bf.load73, 2
  %bf.ashr75 = ashr i24 %bf.shl74, 10
  %bf.cast76 = trunc i24 %bf.ashr75 to i16
  %conv77 = sext i16 %bf.cast76 to i32
  %50 = load i32*, i32** %beta.addr, align 8
  %51 = load i32, i32* %50, align 4
  %cmp78 = icmp sge i32 %conv77, %51
  br i1 %cmp78, label %if.then.80, label %if.end.89

if.then.80:                                       ; preds = %if.then.69
  %52 = load i32, i32* %index, align 4
  %idxprom81 = sext i32 %52 to i64
  %53 = load %struct.Hash_Entry*, %struct.Hash_Entry** @g_trans_table, align 8
  %arrayidx82 = getelementptr inbounds %struct.Hash_Entry, %struct.Hash_Entry* %53, i64 %idxprom81
  %value83 = getelementptr inbounds %struct.Hash_Entry, %struct.Hash_Entry* %arrayidx82, i32 0, i32 3
  %54 = bitcast [3 x i8]* %value83 to i24*
  %bf.load84 = load i24, i24* %54, align 1
  %bf.shl85 = shl i24 %bf.load84, 2
  %bf.ashr86 = ashr i24 %bf.shl85, 10
  %bf.cast87 = trunc i24 %bf.ashr86 to i16
  %conv88 = sext i16 %bf.cast87 to i32
  %55 = load i32*, i32** %value.addr, align 8
  store i32 %conv88, i32* %55, align 4
  store i32 1, i32* %retval
  br label %return

if.end.89:                                        ; preds = %if.then.69
  %56 = load i32, i32* %index, align 4
  %idxprom90 = sext i32 %56 to i64
  %57 = load %struct.Hash_Entry*, %struct.Hash_Entry** @g_trans_table, align 8
  %arrayidx91 = getelementptr inbounds %struct.Hash_Entry, %struct.Hash_Entry* %57, i64 %idxprom90
  %value92 = getelementptr inbounds %struct.Hash_Entry, %struct.Hash_Entry* %arrayidx91, i32 0, i32 3
  %58 = bitcast [3 x i8]* %value92 to i24*
  %bf.load93 = load i24, i24* %58, align 1
  %bf.shl94 = shl i24 %bf.load93, 2
  %bf.ashr95 = ashr i24 %bf.shl94, 10
  %bf.cast96 = trunc i24 %bf.ashr95 to i16
  %conv97 = sext i16 %bf.cast96 to i32
  %59 = load i32*, i32** %alpha.addr, align 8
  %60 = load i32, i32* %59, align 4
  %cmp98 = icmp sgt i32 %conv97, %60
  br i1 %cmp98, label %if.then.100, label %if.end.109

if.then.100:                                      ; preds = %if.end.89
  %61 = load i32, i32* %index, align 4
  %idxprom101 = sext i32 %61 to i64
  %62 = load %struct.Hash_Entry*, %struct.Hash_Entry** @g_trans_table, align 8
  %arrayidx102 = getelementptr inbounds %struct.Hash_Entry, %struct.Hash_Entry* %62, i64 %idxprom101
  %value103 = getelementptr inbounds %struct.Hash_Entry, %struct.Hash_Entry* %arrayidx102, i32 0, i32 3
  %63 = bitcast [3 x i8]* %value103 to i24*
  %bf.load104 = load i24, i24* %63, align 1
  %bf.shl105 = shl i24 %bf.load104, 2
  %bf.ashr106 = ashr i24 %bf.shl105, 10
  %bf.cast107 = trunc i24 %bf.ashr106 to i16
  %conv108 = sext i16 %bf.cast107 to i32
  %64 = load i32*, i32** %alpha.addr, align 8
  store i32 %conv108, i32* %64, align 4
  br label %if.end.109

if.end.109:                                       ; preds = %if.then.100, %if.end.89
  store i32 0, i32* %retval
  br label %return

if.end.110:                                       ; preds = %if.end
  %65 = load i32, i32* %index, align 4
  %idxprom111 = sext i32 %65 to i64
  %66 = load %struct.Hash_Entry*, %struct.Hash_Entry** @g_trans_table, align 8
  %arrayidx112 = getelementptr inbounds %struct.Hash_Entry, %struct.Hash_Entry* %66, i64 %idxprom111
  %type113 = getelementptr inbounds %struct.Hash_Entry, %struct.Hash_Entry* %arrayidx112, i32 0, i32 3
  %67 = bitcast [3 x i8]* %type113 to i24*
  %bf.load114 = load i24, i24* %67, align 1
  %bf.lshr115 = lshr i24 %bf.load114, 22
  %bf.cast116 = trunc i24 %bf.lshr115 to i16
  %conv117 = zext i16 %bf.cast116 to i32
  %cmp118 = icmp eq i32 %conv117, 2
  br i1 %cmp118, label %if.then.120, label %if.end.161

if.then.120:                                      ; preds = %if.end.110
  %68 = load i32, i32* %index, align 4
  %idxprom121 = sext i32 %68 to i64
  %69 = load %struct.Hash_Entry*, %struct.Hash_Entry** @g_trans_table, align 8
  %arrayidx122 = getelementptr inbounds %struct.Hash_Entry, %struct.Hash_Entry* %69, i64 %idxprom121
  %value123 = getelementptr inbounds %struct.Hash_Entry, %struct.Hash_Entry* %arrayidx122, i32 0, i32 3
  %70 = bitcast [3 x i8]* %value123 to i24*
  %bf.load124 = load i24, i24* %70, align 1
  %bf.shl125 = shl i24 %bf.load124, 2
  %bf.ashr126 = ashr i24 %bf.shl125, 10
  %bf.cast127 = trunc i24 %bf.ashr126 to i16
  %conv128 = sext i16 %bf.cast127 to i32
  %71 = load i32*, i32** %alpha.addr, align 8
  %72 = load i32, i32* %71, align 4
  %cmp129 = icmp sle i32 %conv128, %72
  br i1 %cmp129, label %if.then.131, label %if.end.140

if.then.131:                                      ; preds = %if.then.120
  %73 = load i32, i32* %index, align 4
  %idxprom132 = sext i32 %73 to i64
  %74 = load %struct.Hash_Entry*, %struct.Hash_Entry** @g_trans_table, align 8
  %arrayidx133 = getelementptr inbounds %struct.Hash_Entry, %struct.Hash_Entry* %74, i64 %idxprom132
  %value134 = getelementptr inbounds %struct.Hash_Entry, %struct.Hash_Entry* %arrayidx133, i32 0, i32 3
  %75 = bitcast [3 x i8]* %value134 to i24*
  %bf.load135 = load i24, i24* %75, align 1
  %bf.shl136 = shl i24 %bf.load135, 2
  %bf.ashr137 = ashr i24 %bf.shl136, 10
  %bf.cast138 = trunc i24 %bf.ashr137 to i16
  %conv139 = sext i16 %bf.cast138 to i32
  %76 = load i32*, i32** %value.addr, align 8
  store i32 %conv139, i32* %76, align 4
  store i32 1, i32* %retval
  br label %return

if.end.140:                                       ; preds = %if.then.120
  %77 = load i32, i32* %index, align 4
  %idxprom141 = sext i32 %77 to i64
  %78 = load %struct.Hash_Entry*, %struct.Hash_Entry** @g_trans_table, align 8
  %arrayidx142 = getelementptr inbounds %struct.Hash_Entry, %struct.Hash_Entry* %78, i64 %idxprom141
  %value143 = getelementptr inbounds %struct.Hash_Entry, %struct.Hash_Entry* %arrayidx142, i32 0, i32 3
  %79 = bitcast [3 x i8]* %value143 to i24*
  %bf.load144 = load i24, i24* %79, align 1
  %bf.shl145 = shl i24 %bf.load144, 2
  %bf.ashr146 = ashr i24 %bf.shl145, 10
  %bf.cast147 = trunc i24 %bf.ashr146 to i16
  %conv148 = sext i16 %bf.cast147 to i32
  %80 = load i32*, i32** %beta.addr, align 8
  %81 = load i32, i32* %80, align 4
  %cmp149 = icmp slt i32 %conv148, %81
  br i1 %cmp149, label %if.then.151, label %if.end.160

if.then.151:                                      ; preds = %if.end.140
  %82 = load i32, i32* %index, align 4
  %idxprom152 = sext i32 %82 to i64
  %83 = load %struct.Hash_Entry*, %struct.Hash_Entry** @g_trans_table, align 8
  %arrayidx153 = getelementptr inbounds %struct.Hash_Entry, %struct.Hash_Entry* %83, i64 %idxprom152
  %value154 = getelementptr inbounds %struct.Hash_Entry, %struct.Hash_Entry* %arrayidx153, i32 0, i32 3
  %84 = bitcast [3 x i8]* %value154 to i24*
  %bf.load155 = load i24, i24* %84, align 1
  %bf.shl156 = shl i24 %bf.load155, 2
  %bf.ashr157 = ashr i24 %bf.shl156, 10
  %bf.cast158 = trunc i24 %bf.ashr157 to i16
  %conv159 = sext i16 %bf.cast158 to i32
  %85 = load i32*, i32** %beta.addr, align 8
  store i32 %conv159, i32* %85, align 4
  br label %if.end.160

if.end.160:                                       ; preds = %if.then.151, %if.end.140
  store i32 0, i32* %retval
  br label %return

if.end.161:                                       ; preds = %if.end.110
  br label %if.end.162

if.end.162:                                       ; preds = %if.end.161, %if.then
  br label %if.end.163

if.end.163:                                       ; preds = %if.end.162, %land.lhs.true.19, %land.lhs.true.13, %land.lhs.true.7, %land.lhs.true, %entry
  %86 = load i32, i32* getelementptr inbounds (%struct.Hash_Key, %struct.Hash_Key* @g_flipV_hashkey, i32 0, i32 1), align 4
  store i32 %86, i32* %index, align 4
  %87 = load i32, i32* %index, align 4
  %idxprom164 = sext i32 %87 to i64
  %88 = load %struct.Hash_Entry*, %struct.Hash_Entry** @g_trans_table, align 8
  %arrayidx165 = getelementptr inbounds %struct.Hash_Entry, %struct.Hash_Entry* %88, i64 %idxprom164
  %key166 = getelementptr inbounds %struct.Hash_Entry, %struct.Hash_Entry* %arrayidx165, i32 0, i32 0
  %arrayidx167 = getelementptr inbounds [4 x i32], [4 x i32]* %key166, i32 0, i64 0
  %89 = load i32, i32* %arrayidx167, align 4
  %90 = load i32, i32* getelementptr inbounds (%struct.Hash_Key, %struct.Hash_Key* @g_flipV_hashkey, i32 0, i32 0, i64 0), align 4
  %cmp168 = icmp eq i32 %89, %90
  br i1 %cmp168, label %land.lhs.true.170, label %if.end.353

land.lhs.true.170:                                ; preds = %if.end.163
  %91 = load i32, i32* %index, align 4
  %idxprom171 = sext i32 %91 to i64
  %92 = load %struct.Hash_Entry*, %struct.Hash_Entry** @g_trans_table, align 8
  %arrayidx172 = getelementptr inbounds %struct.Hash_Entry, %struct.Hash_Entry* %92, i64 %idxprom171
  %key173 = getelementptr inbounds %struct.Hash_Entry, %struct.Hash_Entry* %arrayidx172, i32 0, i32 0
  %arrayidx174 = getelementptr inbounds [4 x i32], [4 x i32]* %key173, i32 0, i64 1
  %93 = load i32, i32* %arrayidx174, align 4
  %94 = load i32, i32* getelementptr inbounds (%struct.Hash_Key, %struct.Hash_Key* @g_flipV_hashkey, i32 0, i32 0, i64 1), align 4
  %cmp175 = icmp eq i32 %93, %94
  br i1 %cmp175, label %land.lhs.true.177, label %if.end.353

land.lhs.true.177:                                ; preds = %land.lhs.true.170
  %95 = load i32, i32* %index, align 4
  %idxprom178 = sext i32 %95 to i64
  %96 = load %struct.Hash_Entry*, %struct.Hash_Entry** @g_trans_table, align 8
  %arrayidx179 = getelementptr inbounds %struct.Hash_Entry, %struct.Hash_Entry* %96, i64 %idxprom178
  %key180 = getelementptr inbounds %struct.Hash_Entry, %struct.Hash_Entry* %arrayidx179, i32 0, i32 0
  %arrayidx181 = getelementptr inbounds [4 x i32], [4 x i32]* %key180, i32 0, i64 2
  %97 = load i32, i32* %arrayidx181, align 4
  %98 = load i32, i32* getelementptr inbounds (%struct.Hash_Key, %struct.Hash_Key* @g_flipV_hashkey, i32 0, i32 0, i64 2), align 4
  %cmp182 = icmp eq i32 %97, %98
  br i1 %cmp182, label %land.lhs.true.184, label %if.end.353

land.lhs.true.184:                                ; preds = %land.lhs.true.177
  %99 = load i32, i32* %index, align 4
  %idxprom185 = sext i32 %99 to i64
  %100 = load %struct.Hash_Entry*, %struct.Hash_Entry** @g_trans_table, align 8
  %arrayidx186 = getelementptr inbounds %struct.Hash_Entry, %struct.Hash_Entry* %100, i64 %idxprom185
  %key187 = getelementptr inbounds %struct.Hash_Entry, %struct.Hash_Entry* %arrayidx186, i32 0, i32 0
  %arrayidx188 = getelementptr inbounds [4 x i32], [4 x i32]* %key187, i32 0, i64 3
  %101 = load i32, i32* %arrayidx188, align 4
  %102 = load i32, i32* getelementptr inbounds (%struct.Hash_Key, %struct.Hash_Key* @g_flipV_hashkey, i32 0, i32 0, i64 3), align 4
  %cmp189 = icmp eq i32 %101, %102
  br i1 %cmp189, label %land.lhs.true.191, label %if.end.353

land.lhs.true.191:                                ; preds = %land.lhs.true.184
  %103 = load i32, i32* %index, align 4
  %idxprom192 = sext i32 %103 to i64
  %104 = load %struct.Hash_Entry*, %struct.Hash_Entry** @g_trans_table, align 8
  %arrayidx193 = getelementptr inbounds %struct.Hash_Entry, %struct.Hash_Entry* %104, i64 %idxprom192
  %whos_turn194 = getelementptr inbounds %struct.Hash_Entry, %struct.Hash_Entry* %arrayidx193, i32 0, i32 3
  %105 = bitcast [3 x i8]* %whos_turn194 to i24*
  %bf.load195 = load i24, i24* %105, align 1
  %bf.lshr196 = lshr i24 %bf.load195, 7
  %bf.clear197 = and i24 %bf.lshr196, 1
  %bf.cast198 = trunc i24 %bf.clear197 to i8
  %conv199 = zext i8 %bf.cast198 to i32
  %106 = load i32, i32* %player.addr, align 4
  %cmp200 = icmp eq i32 %conv199, %106
  br i1 %cmp200, label %if.then.202, label %if.end.353

if.then.202:                                      ; preds = %land.lhs.true.191
  %107 = load i32, i32* %index, align 4
  %idxprom203 = sext i32 %107 to i64
  %108 = load %struct.Hash_Entry*, %struct.Hash_Entry** @g_trans_table, align 8
  %arrayidx204 = getelementptr inbounds %struct.Hash_Entry, %struct.Hash_Entry* %108, i64 %idxprom203
  %best_move205 = getelementptr inbounds %struct.Hash_Entry, %struct.Hash_Entry* %arrayidx204, i32 0, i32 2
  %109 = load i8, i8* %best_move205, align 1
  %conv206 = zext i8 %109 to i32
  %110 = load i32, i32* %player.addr, align 4
  %idxprom207 = sext i32 %110 to i64
  %arrayidx208 = getelementptr inbounds [2 x i32], [2 x i32]* @g_board_size, i32 0, i64 %idxprom207
  %111 = load i32, i32* %arrayidx208, align 4
  %div209 = sdiv i32 %conv206, %111
  %add210 = add nsw i32 %div209, 1
  %112 = load %struct.Move*, %struct.Move** %force_first.addr, align 8
  %mask_index211 = getelementptr inbounds %struct.Move, %struct.Move* %112, i32 0, i32 1
  store i32 %add210, i32* %mask_index211, align 4
  %113 = load i32, i32* %index, align 4
  %idxprom212 = sext i32 %113 to i64
  %114 = load %struct.Hash_Entry*, %struct.Hash_Entry** @g_trans_table, align 8
  %arrayidx213 = getelementptr inbounds %struct.Hash_Entry, %struct.Hash_Entry* %114, i64 %idxprom212
  %best_move214 = getelementptr inbounds %struct.Hash_Entry, %struct.Hash_Entry* %arrayidx213, i32 0, i32 2
  %115 = load i8, i8* %best_move214, align 1
  %conv215 = zext i8 %115 to i32
  %116 = load i32, i32* %player.addr, align 4
  %idxprom216 = sext i32 %116 to i64
  %arrayidx217 = getelementptr inbounds [2 x i32], [2 x i32]* @g_board_size, i32 0, i64 %idxprom216
  %117 = load i32, i32* %arrayidx217, align 4
  %rem218 = srem i32 %conv215, %117
  %add219 = add nsw i32 %rem218, 1
  %118 = load %struct.Move*, %struct.Move** %force_first.addr, align 8
  %array_index220 = getelementptr inbounds %struct.Move, %struct.Move* %118, i32 0, i32 0
  store i32 %add219, i32* %array_index220, align 4
  %119 = load i32, i32* %index, align 4
  %idxprom221 = sext i32 %119 to i64
  %120 = load %struct.Hash_Entry*, %struct.Hash_Entry** @g_trans_table, align 8
  %arrayidx222 = getelementptr inbounds %struct.Hash_Entry, %struct.Hash_Entry* %120, i64 %idxprom221
  %depth223 = getelementptr inbounds %struct.Hash_Entry, %struct.Hash_Entry* %arrayidx222, i32 0, i32 3
  %121 = bitcast [3 x i8]* %depth223 to i24*
  %bf.load224 = load i24, i24* %121, align 1
  %bf.clear225 = and i24 %bf.load224, 127
  %bf.cast226 = trunc i24 %bf.clear225 to i8
  %conv227 = zext i8 %bf.cast226 to i32
  %122 = load i32, i32* %depth_remaining.addr, align 4
  %cmp228 = icmp sge i32 %conv227, %122
  br i1 %cmp228, label %if.then.230, label %if.end.352

if.then.230:                                      ; preds = %if.then.202
  %123 = load i32, i32* %index, align 4
  %idxprom231 = sext i32 %123 to i64
  %124 = load %struct.Hash_Entry*, %struct.Hash_Entry** @g_trans_table, align 8
  %arrayidx232 = getelementptr inbounds %struct.Hash_Entry, %struct.Hash_Entry* %124, i64 %idxprom231
  %type233 = getelementptr inbounds %struct.Hash_Entry, %struct.Hash_Entry* %arrayidx232, i32 0, i32 3
  %125 = bitcast [3 x i8]* %type233 to i24*
  %bf.load234 = load i24, i24* %125, align 1
  %bf.lshr235 = lshr i24 %bf.load234, 22
  %bf.cast236 = trunc i24 %bf.lshr235 to i16
  %conv237 = zext i16 %bf.cast236 to i32
  %cmp238 = icmp eq i32 %conv237, 1
  br i1 %cmp238, label %if.then.240, label %if.end.249

if.then.240:                                      ; preds = %if.then.230
  %126 = load i32, i32* %index, align 4
  %idxprom241 = sext i32 %126 to i64
  %127 = load %struct.Hash_Entry*, %struct.Hash_Entry** @g_trans_table, align 8
  %arrayidx242 = getelementptr inbounds %struct.Hash_Entry, %struct.Hash_Entry* %127, i64 %idxprom241
  %value243 = getelementptr inbounds %struct.Hash_Entry, %struct.Hash_Entry* %arrayidx242, i32 0, i32 3
  %128 = bitcast [3 x i8]* %value243 to i24*
  %bf.load244 = load i24, i24* %128, align 1
  %bf.shl245 = shl i24 %bf.load244, 2
  %bf.ashr246 = ashr i24 %bf.shl245, 10
  %bf.cast247 = trunc i24 %bf.ashr246 to i16
  %conv248 = sext i16 %bf.cast247 to i32
  %129 = load i32*, i32** %value.addr, align 8
  store i32 %conv248, i32* %129, align 4
  store i32 1, i32* %retval
  br label %return

if.end.249:                                       ; preds = %if.then.230
  %130 = load i32, i32* %index, align 4
  %idxprom250 = sext i32 %130 to i64
  %131 = load %struct.Hash_Entry*, %struct.Hash_Entry** @g_trans_table, align 8
  %arrayidx251 = getelementptr inbounds %struct.Hash_Entry, %struct.Hash_Entry* %131, i64 %idxprom250
  %type252 = getelementptr inbounds %struct.Hash_Entry, %struct.Hash_Entry* %arrayidx251, i32 0, i32 3
  %132 = bitcast [3 x i8]* %type252 to i24*
  %bf.load253 = load i24, i24* %132, align 1
  %bf.lshr254 = lshr i24 %bf.load253, 22
  %bf.cast255 = trunc i24 %bf.lshr254 to i16
  %conv256 = zext i16 %bf.cast255 to i32
  %cmp257 = icmp eq i32 %conv256, 0
  br i1 %cmp257, label %if.then.259, label %if.end.300

if.then.259:                                      ; preds = %if.end.249
  %133 = load i32, i32* %index, align 4
  %idxprom260 = sext i32 %133 to i64
  %134 = load %struct.Hash_Entry*, %struct.Hash_Entry** @g_trans_table, align 8
  %arrayidx261 = getelementptr inbounds %struct.Hash_Entry, %struct.Hash_Entry* %134, i64 %idxprom260
  %value262 = getelementptr inbounds %struct.Hash_Entry, %struct.Hash_Entry* %arrayidx261, i32 0, i32 3
  %135 = bitcast [3 x i8]* %value262 to i24*
  %bf.load263 = load i24, i24* %135, align 1
  %bf.shl264 = shl i24 %bf.load263, 2
  %bf.ashr265 = ashr i24 %bf.shl264, 10
  %bf.cast266 = trunc i24 %bf.ashr265 to i16
  %conv267 = sext i16 %bf.cast266 to i32
  %136 = load i32*, i32** %beta.addr, align 8
  %137 = load i32, i32* %136, align 4
  %cmp268 = icmp sge i32 %conv267, %137
  br i1 %cmp268, label %if.then.270, label %if.end.279

if.then.270:                                      ; preds = %if.then.259
  %138 = load i32, i32* %index, align 4
  %idxprom271 = sext i32 %138 to i64
  %139 = load %struct.Hash_Entry*, %struct.Hash_Entry** @g_trans_table, align 8
  %arrayidx272 = getelementptr inbounds %struct.Hash_Entry, %struct.Hash_Entry* %139, i64 %idxprom271
  %value273 = getelementptr inbounds %struct.Hash_Entry, %struct.Hash_Entry* %arrayidx272, i32 0, i32 3
  %140 = bitcast [3 x i8]* %value273 to i24*
  %bf.load274 = load i24, i24* %140, align 1
  %bf.shl275 = shl i24 %bf.load274, 2
  %bf.ashr276 = ashr i24 %bf.shl275, 10
  %bf.cast277 = trunc i24 %bf.ashr276 to i16
  %conv278 = sext i16 %bf.cast277 to i32
  %141 = load i32*, i32** %value.addr, align 8
  store i32 %conv278, i32* %141, align 4
  store i32 1, i32* %retval
  br label %return

if.end.279:                                       ; preds = %if.then.259
  %142 = load i32, i32* %index, align 4
  %idxprom280 = sext i32 %142 to i64
  %143 = load %struct.Hash_Entry*, %struct.Hash_Entry** @g_trans_table, align 8
  %arrayidx281 = getelementptr inbounds %struct.Hash_Entry, %struct.Hash_Entry* %143, i64 %idxprom280
  %value282 = getelementptr inbounds %struct.Hash_Entry, %struct.Hash_Entry* %arrayidx281, i32 0, i32 3
  %144 = bitcast [3 x i8]* %value282 to i24*
  %bf.load283 = load i24, i24* %144, align 1
  %bf.shl284 = shl i24 %bf.load283, 2
  %bf.ashr285 = ashr i24 %bf.shl284, 10
  %bf.cast286 = trunc i24 %bf.ashr285 to i16
  %conv287 = sext i16 %bf.cast286 to i32
  %145 = load i32*, i32** %alpha.addr, align 8
  %146 = load i32, i32* %145, align 4
  %cmp288 = icmp sgt i32 %conv287, %146
  br i1 %cmp288, label %if.then.290, label %if.end.299

if.then.290:                                      ; preds = %if.end.279
  %147 = load i32, i32* %index, align 4
  %idxprom291 = sext i32 %147 to i64
  %148 = load %struct.Hash_Entry*, %struct.Hash_Entry** @g_trans_table, align 8
  %arrayidx292 = getelementptr inbounds %struct.Hash_Entry, %struct.Hash_Entry* %148, i64 %idxprom291
  %value293 = getelementptr inbounds %struct.Hash_Entry, %struct.Hash_Entry* %arrayidx292, i32 0, i32 3
  %149 = bitcast [3 x i8]* %value293 to i24*
  %bf.load294 = load i24, i24* %149, align 1
  %bf.shl295 = shl i24 %bf.load294, 2
  %bf.ashr296 = ashr i24 %bf.shl295, 10
  %bf.cast297 = trunc i24 %bf.ashr296 to i16
  %conv298 = sext i16 %bf.cast297 to i32
  %150 = load i32*, i32** %alpha.addr, align 8
  store i32 %conv298, i32* %150, align 4
  br label %if.end.299

if.end.299:                                       ; preds = %if.then.290, %if.end.279
  store i32 0, i32* %retval
  br label %return

if.end.300:                                       ; preds = %if.end.249
  %151 = load i32, i32* %index, align 4
  %idxprom301 = sext i32 %151 to i64
  %152 = load %struct.Hash_Entry*, %struct.Hash_Entry** @g_trans_table, align 8
  %arrayidx302 = getelementptr inbounds %struct.Hash_Entry, %struct.Hash_Entry* %152, i64 %idxprom301
  %type303 = getelementptr inbounds %struct.Hash_Entry, %struct.Hash_Entry* %arrayidx302, i32 0, i32 3
  %153 = bitcast [3 x i8]* %type303 to i24*
  %bf.load304 = load i24, i24* %153, align 1
  %bf.lshr305 = lshr i24 %bf.load304, 22
  %bf.cast306 = trunc i24 %bf.lshr305 to i16
  %conv307 = zext i16 %bf.cast306 to i32
  %cmp308 = icmp eq i32 %conv307, 2
  br i1 %cmp308, label %if.then.310, label %if.end.351

if.then.310:                                      ; preds = %if.end.300
  %154 = load i32, i32* %index, align 4
  %idxprom311 = sext i32 %154 to i64
  %155 = load %struct.Hash_Entry*, %struct.Hash_Entry** @g_trans_table, align 8
  %arrayidx312 = getelementptr inbounds %struct.Hash_Entry, %struct.Hash_Entry* %155, i64 %idxprom311
  %value313 = getelementptr inbounds %struct.Hash_Entry, %struct.Hash_Entry* %arrayidx312, i32 0, i32 3
  %156 = bitcast [3 x i8]* %value313 to i24*
  %bf.load314 = load i24, i24* %156, align 1
  %bf.shl315 = shl i24 %bf.load314, 2
  %bf.ashr316 = ashr i24 %bf.shl315, 10
  %bf.cast317 = trunc i24 %bf.ashr316 to i16
  %conv318 = sext i16 %bf.cast317 to i32
  %157 = load i32*, i32** %alpha.addr, align 8
  %158 = load i32, i32* %157, align 4
  %cmp319 = icmp sle i32 %conv318, %158
  br i1 %cmp319, label %if.then.321, label %if.end.330

if.then.321:                                      ; preds = %if.then.310
  %159 = load i32, i32* %index, align 4
  %idxprom322 = sext i32 %159 to i64
  %160 = load %struct.Hash_Entry*, %struct.Hash_Entry** @g_trans_table, align 8
  %arrayidx323 = getelementptr inbounds %struct.Hash_Entry, %struct.Hash_Entry* %160, i64 %idxprom322
  %value324 = getelementptr inbounds %struct.Hash_Entry, %struct.Hash_Entry* %arrayidx323, i32 0, i32 3
  %161 = bitcast [3 x i8]* %value324 to i24*
  %bf.load325 = load i24, i24* %161, align 1
  %bf.shl326 = shl i24 %bf.load325, 2
  %bf.ashr327 = ashr i24 %bf.shl326, 10
  %bf.cast328 = trunc i24 %bf.ashr327 to i16
  %conv329 = sext i16 %bf.cast328 to i32
  %162 = load i32*, i32** %value.addr, align 8
  store i32 %conv329, i32* %162, align 4
  store i32 1, i32* %retval
  br label %return

if.end.330:                                       ; preds = %if.then.310
  %163 = load i32, i32* %index, align 4
  %idxprom331 = sext i32 %163 to i64
  %164 = load %struct.Hash_Entry*, %struct.Hash_Entry** @g_trans_table, align 8
  %arrayidx332 = getelementptr inbounds %struct.Hash_Entry, %struct.Hash_Entry* %164, i64 %idxprom331
  %value333 = getelementptr inbounds %struct.Hash_Entry, %struct.Hash_Entry* %arrayidx332, i32 0, i32 3
  %165 = bitcast [3 x i8]* %value333 to i24*
  %bf.load334 = load i24, i24* %165, align 1
  %bf.shl335 = shl i24 %bf.load334, 2
  %bf.ashr336 = ashr i24 %bf.shl335, 10
  %bf.cast337 = trunc i24 %bf.ashr336 to i16
  %conv338 = sext i16 %bf.cast337 to i32
  %166 = load i32*, i32** %beta.addr, align 8
  %167 = load i32, i32* %166, align 4
  %cmp339 = icmp slt i32 %conv338, %167
  br i1 %cmp339, label %if.then.341, label %if.end.350

if.then.341:                                      ; preds = %if.end.330
  %168 = load i32, i32* %index, align 4
  %idxprom342 = sext i32 %168 to i64
  %169 = load %struct.Hash_Entry*, %struct.Hash_Entry** @g_trans_table, align 8
  %arrayidx343 = getelementptr inbounds %struct.Hash_Entry, %struct.Hash_Entry* %169, i64 %idxprom342
  %value344 = getelementptr inbounds %struct.Hash_Entry, %struct.Hash_Entry* %arrayidx343, i32 0, i32 3
  %170 = bitcast [3 x i8]* %value344 to i24*
  %bf.load345 = load i24, i24* %170, align 1
  %bf.shl346 = shl i24 %bf.load345, 2
  %bf.ashr347 = ashr i24 %bf.shl346, 10
  %bf.cast348 = trunc i24 %bf.ashr347 to i16
  %conv349 = sext i16 %bf.cast348 to i32
  %171 = load i32*, i32** %beta.addr, align 8
  store i32 %conv349, i32* %171, align 4
  br label %if.end.350

if.end.350:                                       ; preds = %if.then.341, %if.end.330
  store i32 0, i32* %retval
  br label %return

if.end.351:                                       ; preds = %if.end.300
  br label %if.end.352

if.end.352:                                       ; preds = %if.end.351, %if.then.202
  br label %if.end.353

if.end.353:                                       ; preds = %if.end.352, %land.lhs.true.191, %land.lhs.true.184, %land.lhs.true.177, %land.lhs.true.170, %if.end.163
  %172 = load i32, i32* getelementptr inbounds (%struct.Hash_Key, %struct.Hash_Key* @g_flipH_hashkey, i32 0, i32 1), align 4
  store i32 %172, i32* %index, align 4
  %173 = load i32, i32* %index, align 4
  %idxprom354 = sext i32 %173 to i64
  %174 = load %struct.Hash_Entry*, %struct.Hash_Entry** @g_trans_table, align 8
  %arrayidx355 = getelementptr inbounds %struct.Hash_Entry, %struct.Hash_Entry* %174, i64 %idxprom354
  %key356 = getelementptr inbounds %struct.Hash_Entry, %struct.Hash_Entry* %arrayidx355, i32 0, i32 0
  %arrayidx357 = getelementptr inbounds [4 x i32], [4 x i32]* %key356, i32 0, i64 0
  %175 = load i32, i32* %arrayidx357, align 4
  %176 = load i32, i32* getelementptr inbounds (%struct.Hash_Key, %struct.Hash_Key* @g_flipH_hashkey, i32 0, i32 0, i64 0), align 4
  %cmp358 = icmp eq i32 %175, %176
  br i1 %cmp358, label %land.lhs.true.360, label %if.end.543

land.lhs.true.360:                                ; preds = %if.end.353
  %177 = load i32, i32* %index, align 4
  %idxprom361 = sext i32 %177 to i64
  %178 = load %struct.Hash_Entry*, %struct.Hash_Entry** @g_trans_table, align 8
  %arrayidx362 = getelementptr inbounds %struct.Hash_Entry, %struct.Hash_Entry* %178, i64 %idxprom361
  %key363 = getelementptr inbounds %struct.Hash_Entry, %struct.Hash_Entry* %arrayidx362, i32 0, i32 0
  %arrayidx364 = getelementptr inbounds [4 x i32], [4 x i32]* %key363, i32 0, i64 1
  %179 = load i32, i32* %arrayidx364, align 4
  %180 = load i32, i32* getelementptr inbounds (%struct.Hash_Key, %struct.Hash_Key* @g_flipH_hashkey, i32 0, i32 0, i64 1), align 4
  %cmp365 = icmp eq i32 %179, %180
  br i1 %cmp365, label %land.lhs.true.367, label %if.end.543

land.lhs.true.367:                                ; preds = %land.lhs.true.360
  %181 = load i32, i32* %index, align 4
  %idxprom368 = sext i32 %181 to i64
  %182 = load %struct.Hash_Entry*, %struct.Hash_Entry** @g_trans_table, align 8
  %arrayidx369 = getelementptr inbounds %struct.Hash_Entry, %struct.Hash_Entry* %182, i64 %idxprom368
  %key370 = getelementptr inbounds %struct.Hash_Entry, %struct.Hash_Entry* %arrayidx369, i32 0, i32 0
  %arrayidx371 = getelementptr inbounds [4 x i32], [4 x i32]* %key370, i32 0, i64 2
  %183 = load i32, i32* %arrayidx371, align 4
  %184 = load i32, i32* getelementptr inbounds (%struct.Hash_Key, %struct.Hash_Key* @g_flipH_hashkey, i32 0, i32 0, i64 2), align 4
  %cmp372 = icmp eq i32 %183, %184
  br i1 %cmp372, label %land.lhs.true.374, label %if.end.543

land.lhs.true.374:                                ; preds = %land.lhs.true.367
  %185 = load i32, i32* %index, align 4
  %idxprom375 = sext i32 %185 to i64
  %186 = load %struct.Hash_Entry*, %struct.Hash_Entry** @g_trans_table, align 8
  %arrayidx376 = getelementptr inbounds %struct.Hash_Entry, %struct.Hash_Entry* %186, i64 %idxprom375
  %key377 = getelementptr inbounds %struct.Hash_Entry, %struct.Hash_Entry* %arrayidx376, i32 0, i32 0
  %arrayidx378 = getelementptr inbounds [4 x i32], [4 x i32]* %key377, i32 0, i64 3
  %187 = load i32, i32* %arrayidx378, align 4
  %188 = load i32, i32* getelementptr inbounds (%struct.Hash_Key, %struct.Hash_Key* @g_flipH_hashkey, i32 0, i32 0, i64 3), align 4
  %cmp379 = icmp eq i32 %187, %188
  br i1 %cmp379, label %land.lhs.true.381, label %if.end.543

land.lhs.true.381:                                ; preds = %land.lhs.true.374
  %189 = load i32, i32* %index, align 4
  %idxprom382 = sext i32 %189 to i64
  %190 = load %struct.Hash_Entry*, %struct.Hash_Entry** @g_trans_table, align 8
  %arrayidx383 = getelementptr inbounds %struct.Hash_Entry, %struct.Hash_Entry* %190, i64 %idxprom382
  %whos_turn384 = getelementptr inbounds %struct.Hash_Entry, %struct.Hash_Entry* %arrayidx383, i32 0, i32 3
  %191 = bitcast [3 x i8]* %whos_turn384 to i24*
  %bf.load385 = load i24, i24* %191, align 1
  %bf.lshr386 = lshr i24 %bf.load385, 7
  %bf.clear387 = and i24 %bf.lshr386, 1
  %bf.cast388 = trunc i24 %bf.clear387 to i8
  %conv389 = zext i8 %bf.cast388 to i32
  %192 = load i32, i32* %player.addr, align 4
  %cmp390 = icmp eq i32 %conv389, %192
  br i1 %cmp390, label %if.then.392, label %if.end.543

if.then.392:                                      ; preds = %land.lhs.true.381
  %193 = load i32, i32* %index, align 4
  %idxprom393 = sext i32 %193 to i64
  %194 = load %struct.Hash_Entry*, %struct.Hash_Entry** @g_trans_table, align 8
  %arrayidx394 = getelementptr inbounds %struct.Hash_Entry, %struct.Hash_Entry* %194, i64 %idxprom393
  %best_move395 = getelementptr inbounds %struct.Hash_Entry, %struct.Hash_Entry* %arrayidx394, i32 0, i32 2
  %195 = load i8, i8* %best_move395, align 1
  %conv396 = zext i8 %195 to i32
  %196 = load i32, i32* %player.addr, align 4
  %idxprom397 = sext i32 %196 to i64
  %arrayidx398 = getelementptr inbounds [2 x i32], [2 x i32]* @g_board_size, i32 0, i64 %idxprom397
  %197 = load i32, i32* %arrayidx398, align 4
  %div399 = sdiv i32 %conv396, %197
  %add400 = add nsw i32 %div399, 1
  %198 = load %struct.Move*, %struct.Move** %force_first.addr, align 8
  %mask_index401 = getelementptr inbounds %struct.Move, %struct.Move* %198, i32 0, i32 1
  store i32 %add400, i32* %mask_index401, align 4
  %199 = load i32, i32* %index, align 4
  %idxprom402 = sext i32 %199 to i64
  %200 = load %struct.Hash_Entry*, %struct.Hash_Entry** @g_trans_table, align 8
  %arrayidx403 = getelementptr inbounds %struct.Hash_Entry, %struct.Hash_Entry* %200, i64 %idxprom402
  %best_move404 = getelementptr inbounds %struct.Hash_Entry, %struct.Hash_Entry* %arrayidx403, i32 0, i32 2
  %201 = load i8, i8* %best_move404, align 1
  %conv405 = zext i8 %201 to i32
  %202 = load i32, i32* %player.addr, align 4
  %idxprom406 = sext i32 %202 to i64
  %arrayidx407 = getelementptr inbounds [2 x i32], [2 x i32]* @g_board_size, i32 0, i64 %idxprom406
  %203 = load i32, i32* %arrayidx407, align 4
  %rem408 = srem i32 %conv405, %203
  %add409 = add nsw i32 %rem408, 1
  %204 = load %struct.Move*, %struct.Move** %force_first.addr, align 8
  %array_index410 = getelementptr inbounds %struct.Move, %struct.Move* %204, i32 0, i32 0
  store i32 %add409, i32* %array_index410, align 4
  %205 = load i32, i32* %index, align 4
  %idxprom411 = sext i32 %205 to i64
  %206 = load %struct.Hash_Entry*, %struct.Hash_Entry** @g_trans_table, align 8
  %arrayidx412 = getelementptr inbounds %struct.Hash_Entry, %struct.Hash_Entry* %206, i64 %idxprom411
  %depth413 = getelementptr inbounds %struct.Hash_Entry, %struct.Hash_Entry* %arrayidx412, i32 0, i32 3
  %207 = bitcast [3 x i8]* %depth413 to i24*
  %bf.load414 = load i24, i24* %207, align 1
  %bf.clear415 = and i24 %bf.load414, 127
  %bf.cast416 = trunc i24 %bf.clear415 to i8
  %conv417 = zext i8 %bf.cast416 to i32
  %208 = load i32, i32* %depth_remaining.addr, align 4
  %cmp418 = icmp sge i32 %conv417, %208
  br i1 %cmp418, label %if.then.420, label %if.end.542

if.then.420:                                      ; preds = %if.then.392
  %209 = load i32, i32* %index, align 4
  %idxprom421 = sext i32 %209 to i64
  %210 = load %struct.Hash_Entry*, %struct.Hash_Entry** @g_trans_table, align 8
  %arrayidx422 = getelementptr inbounds %struct.Hash_Entry, %struct.Hash_Entry* %210, i64 %idxprom421
  %type423 = getelementptr inbounds %struct.Hash_Entry, %struct.Hash_Entry* %arrayidx422, i32 0, i32 3
  %211 = bitcast [3 x i8]* %type423 to i24*
  %bf.load424 = load i24, i24* %211, align 1
  %bf.lshr425 = lshr i24 %bf.load424, 22
  %bf.cast426 = trunc i24 %bf.lshr425 to i16
  %conv427 = zext i16 %bf.cast426 to i32
  %cmp428 = icmp eq i32 %conv427, 1
  br i1 %cmp428, label %if.then.430, label %if.end.439

if.then.430:                                      ; preds = %if.then.420
  %212 = load i32, i32* %index, align 4
  %idxprom431 = sext i32 %212 to i64
  %213 = load %struct.Hash_Entry*, %struct.Hash_Entry** @g_trans_table, align 8
  %arrayidx432 = getelementptr inbounds %struct.Hash_Entry, %struct.Hash_Entry* %213, i64 %idxprom431
  %value433 = getelementptr inbounds %struct.Hash_Entry, %struct.Hash_Entry* %arrayidx432, i32 0, i32 3
  %214 = bitcast [3 x i8]* %value433 to i24*
  %bf.load434 = load i24, i24* %214, align 1
  %bf.shl435 = shl i24 %bf.load434, 2
  %bf.ashr436 = ashr i24 %bf.shl435, 10
  %bf.cast437 = trunc i24 %bf.ashr436 to i16
  %conv438 = sext i16 %bf.cast437 to i32
  %215 = load i32*, i32** %value.addr, align 8
  store i32 %conv438, i32* %215, align 4
  store i32 1, i32* %retval
  br label %return

if.end.439:                                       ; preds = %if.then.420
  %216 = load i32, i32* %index, align 4
  %idxprom440 = sext i32 %216 to i64
  %217 = load %struct.Hash_Entry*, %struct.Hash_Entry** @g_trans_table, align 8
  %arrayidx441 = getelementptr inbounds %struct.Hash_Entry, %struct.Hash_Entry* %217, i64 %idxprom440
  %type442 = getelementptr inbounds %struct.Hash_Entry, %struct.Hash_Entry* %arrayidx441, i32 0, i32 3
  %218 = bitcast [3 x i8]* %type442 to i24*
  %bf.load443 = load i24, i24* %218, align 1
  %bf.lshr444 = lshr i24 %bf.load443, 22
  %bf.cast445 = trunc i24 %bf.lshr444 to i16
  %conv446 = zext i16 %bf.cast445 to i32
  %cmp447 = icmp eq i32 %conv446, 0
  br i1 %cmp447, label %if.then.449, label %if.end.490

if.then.449:                                      ; preds = %if.end.439
  %219 = load i32, i32* %index, align 4
  %idxprom450 = sext i32 %219 to i64
  %220 = load %struct.Hash_Entry*, %struct.Hash_Entry** @g_trans_table, align 8
  %arrayidx451 = getelementptr inbounds %struct.Hash_Entry, %struct.Hash_Entry* %220, i64 %idxprom450
  %value452 = getelementptr inbounds %struct.Hash_Entry, %struct.Hash_Entry* %arrayidx451, i32 0, i32 3
  %221 = bitcast [3 x i8]* %value452 to i24*
  %bf.load453 = load i24, i24* %221, align 1
  %bf.shl454 = shl i24 %bf.load453, 2
  %bf.ashr455 = ashr i24 %bf.shl454, 10
  %bf.cast456 = trunc i24 %bf.ashr455 to i16
  %conv457 = sext i16 %bf.cast456 to i32
  %222 = load i32*, i32** %beta.addr, align 8
  %223 = load i32, i32* %222, align 4
  %cmp458 = icmp sge i32 %conv457, %223
  br i1 %cmp458, label %if.then.460, label %if.end.469

if.then.460:                                      ; preds = %if.then.449
  %224 = load i32, i32* %index, align 4
  %idxprom461 = sext i32 %224 to i64
  %225 = load %struct.Hash_Entry*, %struct.Hash_Entry** @g_trans_table, align 8
  %arrayidx462 = getelementptr inbounds %struct.Hash_Entry, %struct.Hash_Entry* %225, i64 %idxprom461
  %value463 = getelementptr inbounds %struct.Hash_Entry, %struct.Hash_Entry* %arrayidx462, i32 0, i32 3
  %226 = bitcast [3 x i8]* %value463 to i24*
  %bf.load464 = load i24, i24* %226, align 1
  %bf.shl465 = shl i24 %bf.load464, 2
  %bf.ashr466 = ashr i24 %bf.shl465, 10
  %bf.cast467 = trunc i24 %bf.ashr466 to i16
  %conv468 = sext i16 %bf.cast467 to i32
  %227 = load i32*, i32** %value.addr, align 8
  store i32 %conv468, i32* %227, align 4
  store i32 1, i32* %retval
  br label %return

if.end.469:                                       ; preds = %if.then.449
  %228 = load i32, i32* %index, align 4
  %idxprom470 = sext i32 %228 to i64
  %229 = load %struct.Hash_Entry*, %struct.Hash_Entry** @g_trans_table, align 8
  %arrayidx471 = getelementptr inbounds %struct.Hash_Entry, %struct.Hash_Entry* %229, i64 %idxprom470
  %value472 = getelementptr inbounds %struct.Hash_Entry, %struct.Hash_Entry* %arrayidx471, i32 0, i32 3
  %230 = bitcast [3 x i8]* %value472 to i24*
  %bf.load473 = load i24, i24* %230, align 1
  %bf.shl474 = shl i24 %bf.load473, 2
  %bf.ashr475 = ashr i24 %bf.shl474, 10
  %bf.cast476 = trunc i24 %bf.ashr475 to i16
  %conv477 = sext i16 %bf.cast476 to i32
  %231 = load i32*, i32** %alpha.addr, align 8
  %232 = load i32, i32* %231, align 4
  %cmp478 = icmp sgt i32 %conv477, %232
  br i1 %cmp478, label %if.then.480, label %if.end.489

if.then.480:                                      ; preds = %if.end.469
  %233 = load i32, i32* %index, align 4
  %idxprom481 = sext i32 %233 to i64
  %234 = load %struct.Hash_Entry*, %struct.Hash_Entry** @g_trans_table, align 8
  %arrayidx482 = getelementptr inbounds %struct.Hash_Entry, %struct.Hash_Entry* %234, i64 %idxprom481
  %value483 = getelementptr inbounds %struct.Hash_Entry, %struct.Hash_Entry* %arrayidx482, i32 0, i32 3
  %235 = bitcast [3 x i8]* %value483 to i24*
  %bf.load484 = load i24, i24* %235, align 1
  %bf.shl485 = shl i24 %bf.load484, 2
  %bf.ashr486 = ashr i24 %bf.shl485, 10
  %bf.cast487 = trunc i24 %bf.ashr486 to i16
  %conv488 = sext i16 %bf.cast487 to i32
  %236 = load i32*, i32** %alpha.addr, align 8
  store i32 %conv488, i32* %236, align 4
  br label %if.end.489

if.end.489:                                       ; preds = %if.then.480, %if.end.469
  store i32 0, i32* %retval
  br label %return

if.end.490:                                       ; preds = %if.end.439
  %237 = load i32, i32* %index, align 4
  %idxprom491 = sext i32 %237 to i64
  %238 = load %struct.Hash_Entry*, %struct.Hash_Entry** @g_trans_table, align 8
  %arrayidx492 = getelementptr inbounds %struct.Hash_Entry, %struct.Hash_Entry* %238, i64 %idxprom491
  %type493 = getelementptr inbounds %struct.Hash_Entry, %struct.Hash_Entry* %arrayidx492, i32 0, i32 3
  %239 = bitcast [3 x i8]* %type493 to i24*
  %bf.load494 = load i24, i24* %239, align 1
  %bf.lshr495 = lshr i24 %bf.load494, 22
  %bf.cast496 = trunc i24 %bf.lshr495 to i16
  %conv497 = zext i16 %bf.cast496 to i32
  %cmp498 = icmp eq i32 %conv497, 2
  br i1 %cmp498, label %if.then.500, label %if.end.541

if.then.500:                                      ; preds = %if.end.490
  %240 = load i32, i32* %index, align 4
  %idxprom501 = sext i32 %240 to i64
  %241 = load %struct.Hash_Entry*, %struct.Hash_Entry** @g_trans_table, align 8
  %arrayidx502 = getelementptr inbounds %struct.Hash_Entry, %struct.Hash_Entry* %241, i64 %idxprom501
  %value503 = getelementptr inbounds %struct.Hash_Entry, %struct.Hash_Entry* %arrayidx502, i32 0, i32 3
  %242 = bitcast [3 x i8]* %value503 to i24*
  %bf.load504 = load i24, i24* %242, align 1
  %bf.shl505 = shl i24 %bf.load504, 2
  %bf.ashr506 = ashr i24 %bf.shl505, 10
  %bf.cast507 = trunc i24 %bf.ashr506 to i16
  %conv508 = sext i16 %bf.cast507 to i32
  %243 = load i32*, i32** %alpha.addr, align 8
  %244 = load i32, i32* %243, align 4
  %cmp509 = icmp sle i32 %conv508, %244
  br i1 %cmp509, label %if.then.511, label %if.end.520

if.then.511:                                      ; preds = %if.then.500
  %245 = load i32, i32* %index, align 4
  %idxprom512 = sext i32 %245 to i64
  %246 = load %struct.Hash_Entry*, %struct.Hash_Entry** @g_trans_table, align 8
  %arrayidx513 = getelementptr inbounds %struct.Hash_Entry, %struct.Hash_Entry* %246, i64 %idxprom512
  %value514 = getelementptr inbounds %struct.Hash_Entry, %struct.Hash_Entry* %arrayidx513, i32 0, i32 3
  %247 = bitcast [3 x i8]* %value514 to i24*
  %bf.load515 = load i24, i24* %247, align 1
  %bf.shl516 = shl i24 %bf.load515, 2
  %bf.ashr517 = ashr i24 %bf.shl516, 10
  %bf.cast518 = trunc i24 %bf.ashr517 to i16
  %conv519 = sext i16 %bf.cast518 to i32
  %248 = load i32*, i32** %value.addr, align 8
  store i32 %conv519, i32* %248, align 4
  store i32 1, i32* %retval
  br label %return

if.end.520:                                       ; preds = %if.then.500
  %249 = load i32, i32* %index, align 4
  %idxprom521 = sext i32 %249 to i64
  %250 = load %struct.Hash_Entry*, %struct.Hash_Entry** @g_trans_table, align 8
  %arrayidx522 = getelementptr inbounds %struct.Hash_Entry, %struct.Hash_Entry* %250, i64 %idxprom521
  %value523 = getelementptr inbounds %struct.Hash_Entry, %struct.Hash_Entry* %arrayidx522, i32 0, i32 3
  %251 = bitcast [3 x i8]* %value523 to i24*
  %bf.load524 = load i24, i24* %251, align 1
  %bf.shl525 = shl i24 %bf.load524, 2
  %bf.ashr526 = ashr i24 %bf.shl525, 10
  %bf.cast527 = trunc i24 %bf.ashr526 to i16
  %conv528 = sext i16 %bf.cast527 to i32
  %252 = load i32*, i32** %beta.addr, align 8
  %253 = load i32, i32* %252, align 4
  %cmp529 = icmp slt i32 %conv528, %253
  br i1 %cmp529, label %if.then.531, label %if.end.540

if.then.531:                                      ; preds = %if.end.520
  %254 = load i32, i32* %index, align 4
  %idxprom532 = sext i32 %254 to i64
  %255 = load %struct.Hash_Entry*, %struct.Hash_Entry** @g_trans_table, align 8
  %arrayidx533 = getelementptr inbounds %struct.Hash_Entry, %struct.Hash_Entry* %255, i64 %idxprom532
  %value534 = getelementptr inbounds %struct.Hash_Entry, %struct.Hash_Entry* %arrayidx533, i32 0, i32 3
  %256 = bitcast [3 x i8]* %value534 to i24*
  %bf.load535 = load i24, i24* %256, align 1
  %bf.shl536 = shl i24 %bf.load535, 2
  %bf.ashr537 = ashr i24 %bf.shl536, 10
  %bf.cast538 = trunc i24 %bf.ashr537 to i16
  %conv539 = sext i16 %bf.cast538 to i32
  %257 = load i32*, i32** %beta.addr, align 8
  store i32 %conv539, i32* %257, align 4
  br label %if.end.540

if.end.540:                                       ; preds = %if.then.531, %if.end.520
  store i32 0, i32* %retval
  br label %return

if.end.541:                                       ; preds = %if.end.490
  br label %if.end.542

if.end.542:                                       ; preds = %if.end.541, %if.then.392
  br label %if.end.543

if.end.543:                                       ; preds = %if.end.542, %land.lhs.true.381, %land.lhs.true.374, %land.lhs.true.367, %land.lhs.true.360, %if.end.353
  %258 = load i32, i32* getelementptr inbounds (%struct.Hash_Key, %struct.Hash_Key* @g_flipVH_hashkey, i32 0, i32 1), align 4
  store i32 %258, i32* %index, align 4
  %259 = load i32, i32* %index, align 4
  %idxprom544 = sext i32 %259 to i64
  %260 = load %struct.Hash_Entry*, %struct.Hash_Entry** @g_trans_table, align 8
  %arrayidx545 = getelementptr inbounds %struct.Hash_Entry, %struct.Hash_Entry* %260, i64 %idxprom544
  %key546 = getelementptr inbounds %struct.Hash_Entry, %struct.Hash_Entry* %arrayidx545, i32 0, i32 0
  %arrayidx547 = getelementptr inbounds [4 x i32], [4 x i32]* %key546, i32 0, i64 0
  %261 = load i32, i32* %arrayidx547, align 4
  %262 = load i32, i32* getelementptr inbounds (%struct.Hash_Key, %struct.Hash_Key* @g_flipVH_hashkey, i32 0, i32 0, i64 0), align 4
  %cmp548 = icmp eq i32 %261, %262
  br i1 %cmp548, label %land.lhs.true.550, label %if.end.733

land.lhs.true.550:                                ; preds = %if.end.543
  %263 = load i32, i32* %index, align 4
  %idxprom551 = sext i32 %263 to i64
  %264 = load %struct.Hash_Entry*, %struct.Hash_Entry** @g_trans_table, align 8
  %arrayidx552 = getelementptr inbounds %struct.Hash_Entry, %struct.Hash_Entry* %264, i64 %idxprom551
  %key553 = getelementptr inbounds %struct.Hash_Entry, %struct.Hash_Entry* %arrayidx552, i32 0, i32 0
  %arrayidx554 = getelementptr inbounds [4 x i32], [4 x i32]* %key553, i32 0, i64 1
  %265 = load i32, i32* %arrayidx554, align 4
  %266 = load i32, i32* getelementptr inbounds (%struct.Hash_Key, %struct.Hash_Key* @g_flipVH_hashkey, i32 0, i32 0, i64 1), align 4
  %cmp555 = icmp eq i32 %265, %266
  br i1 %cmp555, label %land.lhs.true.557, label %if.end.733

land.lhs.true.557:                                ; preds = %land.lhs.true.550
  %267 = load i32, i32* %index, align 4
  %idxprom558 = sext i32 %267 to i64
  %268 = load %struct.Hash_Entry*, %struct.Hash_Entry** @g_trans_table, align 8
  %arrayidx559 = getelementptr inbounds %struct.Hash_Entry, %struct.Hash_Entry* %268, i64 %idxprom558
  %key560 = getelementptr inbounds %struct.Hash_Entry, %struct.Hash_Entry* %arrayidx559, i32 0, i32 0
  %arrayidx561 = getelementptr inbounds [4 x i32], [4 x i32]* %key560, i32 0, i64 2
  %269 = load i32, i32* %arrayidx561, align 4
  %270 = load i32, i32* getelementptr inbounds (%struct.Hash_Key, %struct.Hash_Key* @g_flipVH_hashkey, i32 0, i32 0, i64 2), align 4
  %cmp562 = icmp eq i32 %269, %270
  br i1 %cmp562, label %land.lhs.true.564, label %if.end.733

land.lhs.true.564:                                ; preds = %land.lhs.true.557
  %271 = load i32, i32* %index, align 4
  %idxprom565 = sext i32 %271 to i64
  %272 = load %struct.Hash_Entry*, %struct.Hash_Entry** @g_trans_table, align 8
  %arrayidx566 = getelementptr inbounds %struct.Hash_Entry, %struct.Hash_Entry* %272, i64 %idxprom565
  %key567 = getelementptr inbounds %struct.Hash_Entry, %struct.Hash_Entry* %arrayidx566, i32 0, i32 0
  %arrayidx568 = getelementptr inbounds [4 x i32], [4 x i32]* %key567, i32 0, i64 3
  %273 = load i32, i32* %arrayidx568, align 4
  %274 = load i32, i32* getelementptr inbounds (%struct.Hash_Key, %struct.Hash_Key* @g_flipVH_hashkey, i32 0, i32 0, i64 3), align 4
  %cmp569 = icmp eq i32 %273, %274
  br i1 %cmp569, label %land.lhs.true.571, label %if.end.733

land.lhs.true.571:                                ; preds = %land.lhs.true.564
  %275 = load i32, i32* %index, align 4
  %idxprom572 = sext i32 %275 to i64
  %276 = load %struct.Hash_Entry*, %struct.Hash_Entry** @g_trans_table, align 8
  %arrayidx573 = getelementptr inbounds %struct.Hash_Entry, %struct.Hash_Entry* %276, i64 %idxprom572
  %whos_turn574 = getelementptr inbounds %struct.Hash_Entry, %struct.Hash_Entry* %arrayidx573, i32 0, i32 3
  %277 = bitcast [3 x i8]* %whos_turn574 to i24*
  %bf.load575 = load i24, i24* %277, align 1
  %bf.lshr576 = lshr i24 %bf.load575, 7
  %bf.clear577 = and i24 %bf.lshr576, 1
  %bf.cast578 = trunc i24 %bf.clear577 to i8
  %conv579 = zext i8 %bf.cast578 to i32
  %278 = load i32, i32* %player.addr, align 4
  %cmp580 = icmp eq i32 %conv579, %278
  br i1 %cmp580, label %if.then.582, label %if.end.733

if.then.582:                                      ; preds = %land.lhs.true.571
  %279 = load i32, i32* %index, align 4
  %idxprom583 = sext i32 %279 to i64
  %280 = load %struct.Hash_Entry*, %struct.Hash_Entry** @g_trans_table, align 8
  %arrayidx584 = getelementptr inbounds %struct.Hash_Entry, %struct.Hash_Entry* %280, i64 %idxprom583
  %best_move585 = getelementptr inbounds %struct.Hash_Entry, %struct.Hash_Entry* %arrayidx584, i32 0, i32 2
  %281 = load i8, i8* %best_move585, align 1
  %conv586 = zext i8 %281 to i32
  %282 = load i32, i32* %player.addr, align 4
  %idxprom587 = sext i32 %282 to i64
  %arrayidx588 = getelementptr inbounds [2 x i32], [2 x i32]* @g_board_size, i32 0, i64 %idxprom587
  %283 = load i32, i32* %arrayidx588, align 4
  %div589 = sdiv i32 %conv586, %283
  %add590 = add nsw i32 %div589, 1
  %284 = load %struct.Move*, %struct.Move** %force_first.addr, align 8
  %mask_index591 = getelementptr inbounds %struct.Move, %struct.Move* %284, i32 0, i32 1
  store i32 %add590, i32* %mask_index591, align 4
  %285 = load i32, i32* %index, align 4
  %idxprom592 = sext i32 %285 to i64
  %286 = load %struct.Hash_Entry*, %struct.Hash_Entry** @g_trans_table, align 8
  %arrayidx593 = getelementptr inbounds %struct.Hash_Entry, %struct.Hash_Entry* %286, i64 %idxprom592
  %best_move594 = getelementptr inbounds %struct.Hash_Entry, %struct.Hash_Entry* %arrayidx593, i32 0, i32 2
  %287 = load i8, i8* %best_move594, align 1
  %conv595 = zext i8 %287 to i32
  %288 = load i32, i32* %player.addr, align 4
  %idxprom596 = sext i32 %288 to i64
  %arrayidx597 = getelementptr inbounds [2 x i32], [2 x i32]* @g_board_size, i32 0, i64 %idxprom596
  %289 = load i32, i32* %arrayidx597, align 4
  %rem598 = srem i32 %conv595, %289
  %add599 = add nsw i32 %rem598, 1
  %290 = load %struct.Move*, %struct.Move** %force_first.addr, align 8
  %array_index600 = getelementptr inbounds %struct.Move, %struct.Move* %290, i32 0, i32 0
  store i32 %add599, i32* %array_index600, align 4
  %291 = load i32, i32* %index, align 4
  %idxprom601 = sext i32 %291 to i64
  %292 = load %struct.Hash_Entry*, %struct.Hash_Entry** @g_trans_table, align 8
  %arrayidx602 = getelementptr inbounds %struct.Hash_Entry, %struct.Hash_Entry* %292, i64 %idxprom601
  %depth603 = getelementptr inbounds %struct.Hash_Entry, %struct.Hash_Entry* %arrayidx602, i32 0, i32 3
  %293 = bitcast [3 x i8]* %depth603 to i24*
  %bf.load604 = load i24, i24* %293, align 1
  %bf.clear605 = and i24 %bf.load604, 127
  %bf.cast606 = trunc i24 %bf.clear605 to i8
  %conv607 = zext i8 %bf.cast606 to i32
  %294 = load i32, i32* %depth_remaining.addr, align 4
  %cmp608 = icmp sge i32 %conv607, %294
  br i1 %cmp608, label %if.then.610, label %if.end.732

if.then.610:                                      ; preds = %if.then.582
  %295 = load i32, i32* %index, align 4
  %idxprom611 = sext i32 %295 to i64
  %296 = load %struct.Hash_Entry*, %struct.Hash_Entry** @g_trans_table, align 8
  %arrayidx612 = getelementptr inbounds %struct.Hash_Entry, %struct.Hash_Entry* %296, i64 %idxprom611
  %type613 = getelementptr inbounds %struct.Hash_Entry, %struct.Hash_Entry* %arrayidx612, i32 0, i32 3
  %297 = bitcast [3 x i8]* %type613 to i24*
  %bf.load614 = load i24, i24* %297, align 1
  %bf.lshr615 = lshr i24 %bf.load614, 22
  %bf.cast616 = trunc i24 %bf.lshr615 to i16
  %conv617 = zext i16 %bf.cast616 to i32
  %cmp618 = icmp eq i32 %conv617, 1
  br i1 %cmp618, label %if.then.620, label %if.end.629

if.then.620:                                      ; preds = %if.then.610
  %298 = load i32, i32* %index, align 4
  %idxprom621 = sext i32 %298 to i64
  %299 = load %struct.Hash_Entry*, %struct.Hash_Entry** @g_trans_table, align 8
  %arrayidx622 = getelementptr inbounds %struct.Hash_Entry, %struct.Hash_Entry* %299, i64 %idxprom621
  %value623 = getelementptr inbounds %struct.Hash_Entry, %struct.Hash_Entry* %arrayidx622, i32 0, i32 3
  %300 = bitcast [3 x i8]* %value623 to i24*
  %bf.load624 = load i24, i24* %300, align 1
  %bf.shl625 = shl i24 %bf.load624, 2
  %bf.ashr626 = ashr i24 %bf.shl625, 10
  %bf.cast627 = trunc i24 %bf.ashr626 to i16
  %conv628 = sext i16 %bf.cast627 to i32
  %301 = load i32*, i32** %value.addr, align 8
  store i32 %conv628, i32* %301, align 4
  store i32 1, i32* %retval
  br label %return

if.end.629:                                       ; preds = %if.then.610
  %302 = load i32, i32* %index, align 4
  %idxprom630 = sext i32 %302 to i64
  %303 = load %struct.Hash_Entry*, %struct.Hash_Entry** @g_trans_table, align 8
  %arrayidx631 = getelementptr inbounds %struct.Hash_Entry, %struct.Hash_Entry* %303, i64 %idxprom630
  %type632 = getelementptr inbounds %struct.Hash_Entry, %struct.Hash_Entry* %arrayidx631, i32 0, i32 3
  %304 = bitcast [3 x i8]* %type632 to i24*
  %bf.load633 = load i24, i24* %304, align 1
  %bf.lshr634 = lshr i24 %bf.load633, 22
  %bf.cast635 = trunc i24 %bf.lshr634 to i16
  %conv636 = zext i16 %bf.cast635 to i32
  %cmp637 = icmp eq i32 %conv636, 0
  br i1 %cmp637, label %if.then.639, label %if.end.680

if.then.639:                                      ; preds = %if.end.629
  %305 = load i32, i32* %index, align 4
  %idxprom640 = sext i32 %305 to i64
  %306 = load %struct.Hash_Entry*, %struct.Hash_Entry** @g_trans_table, align 8
  %arrayidx641 = getelementptr inbounds %struct.Hash_Entry, %struct.Hash_Entry* %306, i64 %idxprom640
  %value642 = getelementptr inbounds %struct.Hash_Entry, %struct.Hash_Entry* %arrayidx641, i32 0, i32 3
  %307 = bitcast [3 x i8]* %value642 to i24*
  %bf.load643 = load i24, i24* %307, align 1
  %bf.shl644 = shl i24 %bf.load643, 2
  %bf.ashr645 = ashr i24 %bf.shl644, 10
  %bf.cast646 = trunc i24 %bf.ashr645 to i16
  %conv647 = sext i16 %bf.cast646 to i32
  %308 = load i32*, i32** %beta.addr, align 8
  %309 = load i32, i32* %308, align 4
  %cmp648 = icmp sge i32 %conv647, %309
  br i1 %cmp648, label %if.then.650, label %if.end.659

if.then.650:                                      ; preds = %if.then.639
  %310 = load i32, i32* %index, align 4
  %idxprom651 = sext i32 %310 to i64
  %311 = load %struct.Hash_Entry*, %struct.Hash_Entry** @g_trans_table, align 8
  %arrayidx652 = getelementptr inbounds %struct.Hash_Entry, %struct.Hash_Entry* %311, i64 %idxprom651
  %value653 = getelementptr inbounds %struct.Hash_Entry, %struct.Hash_Entry* %arrayidx652, i32 0, i32 3
  %312 = bitcast [3 x i8]* %value653 to i24*
  %bf.load654 = load i24, i24* %312, align 1
  %bf.shl655 = shl i24 %bf.load654, 2
  %bf.ashr656 = ashr i24 %bf.shl655, 10
  %bf.cast657 = trunc i24 %bf.ashr656 to i16
  %conv658 = sext i16 %bf.cast657 to i32
  %313 = load i32*, i32** %value.addr, align 8
  store i32 %conv658, i32* %313, align 4
  store i32 1, i32* %retval
  br label %return

if.end.659:                                       ; preds = %if.then.639
  %314 = load i32, i32* %index, align 4
  %idxprom660 = sext i32 %314 to i64
  %315 = load %struct.Hash_Entry*, %struct.Hash_Entry** @g_trans_table, align 8
  %arrayidx661 = getelementptr inbounds %struct.Hash_Entry, %struct.Hash_Entry* %315, i64 %idxprom660
  %value662 = getelementptr inbounds %struct.Hash_Entry, %struct.Hash_Entry* %arrayidx661, i32 0, i32 3
  %316 = bitcast [3 x i8]* %value662 to i24*
  %bf.load663 = load i24, i24* %316, align 1
  %bf.shl664 = shl i24 %bf.load663, 2
  %bf.ashr665 = ashr i24 %bf.shl664, 10
  %bf.cast666 = trunc i24 %bf.ashr665 to i16
  %conv667 = sext i16 %bf.cast666 to i32
  %317 = load i32*, i32** %alpha.addr, align 8
  %318 = load i32, i32* %317, align 4
  %cmp668 = icmp sgt i32 %conv667, %318
  br i1 %cmp668, label %if.then.670, label %if.end.679

if.then.670:                                      ; preds = %if.end.659
  %319 = load i32, i32* %index, align 4
  %idxprom671 = sext i32 %319 to i64
  %320 = load %struct.Hash_Entry*, %struct.Hash_Entry** @g_trans_table, align 8
  %arrayidx672 = getelementptr inbounds %struct.Hash_Entry, %struct.Hash_Entry* %320, i64 %idxprom671
  %value673 = getelementptr inbounds %struct.Hash_Entry, %struct.Hash_Entry* %arrayidx672, i32 0, i32 3
  %321 = bitcast [3 x i8]* %value673 to i24*
  %bf.load674 = load i24, i24* %321, align 1
  %bf.shl675 = shl i24 %bf.load674, 2
  %bf.ashr676 = ashr i24 %bf.shl675, 10
  %bf.cast677 = trunc i24 %bf.ashr676 to i16
  %conv678 = sext i16 %bf.cast677 to i32
  %322 = load i32*, i32** %alpha.addr, align 8
  store i32 %conv678, i32* %322, align 4
  br label %if.end.679

if.end.679:                                       ; preds = %if.then.670, %if.end.659
  store i32 0, i32* %retval
  br label %return

if.end.680:                                       ; preds = %if.end.629
  %323 = load i32, i32* %index, align 4
  %idxprom681 = sext i32 %323 to i64
  %324 = load %struct.Hash_Entry*, %struct.Hash_Entry** @g_trans_table, align 8
  %arrayidx682 = getelementptr inbounds %struct.Hash_Entry, %struct.Hash_Entry* %324, i64 %idxprom681
  %type683 = getelementptr inbounds %struct.Hash_Entry, %struct.Hash_Entry* %arrayidx682, i32 0, i32 3
  %325 = bitcast [3 x i8]* %type683 to i24*
  %bf.load684 = load i24, i24* %325, align 1
  %bf.lshr685 = lshr i24 %bf.load684, 22
  %bf.cast686 = trunc i24 %bf.lshr685 to i16
  %conv687 = zext i16 %bf.cast686 to i32
  %cmp688 = icmp eq i32 %conv687, 2
  br i1 %cmp688, label %if.then.690, label %if.end.731

if.then.690:                                      ; preds = %if.end.680
  %326 = load i32, i32* %index, align 4
  %idxprom691 = sext i32 %326 to i64
  %327 = load %struct.Hash_Entry*, %struct.Hash_Entry** @g_trans_table, align 8
  %arrayidx692 = getelementptr inbounds %struct.Hash_Entry, %struct.Hash_Entry* %327, i64 %idxprom691
  %value693 = getelementptr inbounds %struct.Hash_Entry, %struct.Hash_Entry* %arrayidx692, i32 0, i32 3
  %328 = bitcast [3 x i8]* %value693 to i24*
  %bf.load694 = load i24, i24* %328, align 1
  %bf.shl695 = shl i24 %bf.load694, 2
  %bf.ashr696 = ashr i24 %bf.shl695, 10
  %bf.cast697 = trunc i24 %bf.ashr696 to i16
  %conv698 = sext i16 %bf.cast697 to i32
  %329 = load i32*, i32** %alpha.addr, align 8
  %330 = load i32, i32* %329, align 4
  %cmp699 = icmp sle i32 %conv698, %330
  br i1 %cmp699, label %if.then.701, label %if.end.710

if.then.701:                                      ; preds = %if.then.690
  %331 = load i32, i32* %index, align 4
  %idxprom702 = sext i32 %331 to i64
  %332 = load %struct.Hash_Entry*, %struct.Hash_Entry** @g_trans_table, align 8
  %arrayidx703 = getelementptr inbounds %struct.Hash_Entry, %struct.Hash_Entry* %332, i64 %idxprom702
  %value704 = getelementptr inbounds %struct.Hash_Entry, %struct.Hash_Entry* %arrayidx703, i32 0, i32 3
  %333 = bitcast [3 x i8]* %value704 to i24*
  %bf.load705 = load i24, i24* %333, align 1
  %bf.shl706 = shl i24 %bf.load705, 2
  %bf.ashr707 = ashr i24 %bf.shl706, 10
  %bf.cast708 = trunc i24 %bf.ashr707 to i16
  %conv709 = sext i16 %bf.cast708 to i32
  %334 = load i32*, i32** %value.addr, align 8
  store i32 %conv709, i32* %334, align 4
  store i32 1, i32* %retval
  br label %return

if.end.710:                                       ; preds = %if.then.690
  %335 = load i32, i32* %index, align 4
  %idxprom711 = sext i32 %335 to i64
  %336 = load %struct.Hash_Entry*, %struct.Hash_Entry** @g_trans_table, align 8
  %arrayidx712 = getelementptr inbounds %struct.Hash_Entry, %struct.Hash_Entry* %336, i64 %idxprom711
  %value713 = getelementptr inbounds %struct.Hash_Entry, %struct.Hash_Entry* %arrayidx712, i32 0, i32 3
  %337 = bitcast [3 x i8]* %value713 to i24*
  %bf.load714 = load i24, i24* %337, align 1
  %bf.shl715 = shl i24 %bf.load714, 2
  %bf.ashr716 = ashr i24 %bf.shl715, 10
  %bf.cast717 = trunc i24 %bf.ashr716 to i16
  %conv718 = sext i16 %bf.cast717 to i32
  %338 = load i32*, i32** %beta.addr, align 8
  %339 = load i32, i32* %338, align 4
  %cmp719 = icmp slt i32 %conv718, %339
  br i1 %cmp719, label %if.then.721, label %if.end.730

if.then.721:                                      ; preds = %if.end.710
  %340 = load i32, i32* %index, align 4
  %idxprom722 = sext i32 %340 to i64
  %341 = load %struct.Hash_Entry*, %struct.Hash_Entry** @g_trans_table, align 8
  %arrayidx723 = getelementptr inbounds %struct.Hash_Entry, %struct.Hash_Entry* %341, i64 %idxprom722
  %value724 = getelementptr inbounds %struct.Hash_Entry, %struct.Hash_Entry* %arrayidx723, i32 0, i32 3
  %342 = bitcast [3 x i8]* %value724 to i24*
  %bf.load725 = load i24, i24* %342, align 1
  %bf.shl726 = shl i24 %bf.load725, 2
  %bf.ashr727 = ashr i24 %bf.shl726, 10
  %bf.cast728 = trunc i24 %bf.ashr727 to i16
  %conv729 = sext i16 %bf.cast728 to i32
  %343 = load i32*, i32** %beta.addr, align 8
  store i32 %conv729, i32* %343, align 4
  br label %if.end.730

if.end.730:                                       ; preds = %if.then.721, %if.end.710
  store i32 0, i32* %retval
  br label %return

if.end.731:                                       ; preds = %if.end.680
  br label %if.end.732

if.end.732:                                       ; preds = %if.end.731, %if.then.582
  br label %if.end.733

if.end.733:                                       ; preds = %if.end.732, %land.lhs.true.571, %land.lhs.true.564, %land.lhs.true.557, %land.lhs.true.550, %if.end.543
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.733, %if.end.730, %if.then.701, %if.end.679, %if.then.650, %if.then.620, %if.end.540, %if.then.511, %if.end.489, %if.then.460, %if.then.430, %if.end.350, %if.then.321, %if.end.299, %if.then.270, %if.then.240, %if.end.160, %if.then.131, %if.end.109, %if.then.80, %if.then.53
  %344 = load i32, i32* %retval
  ret i32 %344
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
