; ModuleID = './MultiSource.Applications.obsequi/8.display.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Hash_Key = type { [4 x i32], i32 }
%struct.Hash_Entry = type { [4 x i32], i32, i8, [3 x i8] }
%struct.Basic_Info = type { i32, i32, i32 }
%struct.KeyInfo = type { %struct.KeyInfo_s, %struct.KeyInfo_s, %struct.KeyInfo_s, %struct.KeyInfo_s }
%struct.KeyInfo_s = type { i32, i32, i32 }

@g_board_size = external global [2 x i32], align 4
@g_board = external global [2 x [32 x i32]], align 16
@g_norm_hashkey = external global %struct.Hash_Key, align 4
@g_flipV_hashkey = external global %struct.Hash_Key, align 4
@g_flipH_hashkey = external global %struct.Hash_Key, align 4
@g_flipVH_hashkey = external global %struct.Hash_Key, align 4
@.str = private unnamed_addr constant [13 x i8] c"%d %d - %d.\0A\00", align 1
@.str.1 = private unnamed_addr constant [85 x i8] c"/home/juneyoung.lee/undef/llvm-test-suite/MultiSource/Applications/obsequi/display.c\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"Board is inconsistent.\0A\00", align 1
@g_trans_table = external global %struct.Hash_Entry*, align 8
@.str.3 = private unnamed_addr constant [17 x i8] c"Hash entry: %d.\0A\00", align 1
@.str.4 = private unnamed_addr constant [61 x i8] c" Key:%8X:%8X:%8X:%8X, n:%u, d:%d, w:%d, v:%d, t:%d, int:%d.\0A\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c" #\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c" 0\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.8 = private unnamed_addr constant [23 x i8] c"Number of rows    = %d\00", align 1
@.str.9 = private unnamed_addr constant [23 x i8] c"Number of columns = %d\00", align 1
@.str.10 = private unnamed_addr constant [15 x i8] c"%7s %15s %15s\0A\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"Vertical\00", align 1
@.str.12 = private unnamed_addr constant [11 x i8] c"Horizontal\00", align 1
@.str.13 = private unnamed_addr constant [21 x i8] c"%7s %7s %7s %7s %7s\0A\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"Real\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"Safe\00", align 1
@.str.16 = private unnamed_addr constant [26 x i8] c"%6d) %7d %7d %7d %7d  %s\0A\00", align 1
@g_info = external global [2 x [32 x %struct.Basic_Info]], align 16
@.str.17 = private unnamed_addr constant [25 x i8] c"Totals: %7d %7d %7d %7d\0A\00", align 1
@g_info_totals = external global [2 x %struct.Basic_Info], align 16
@.str.18 = private unnamed_addr constant [4 x i8] c"%X\0A\00", align 1
@.str.19 = private unnamed_addr constant [34 x i8] c"Key: %8X:%8X:%8X:%8X, Code: %8X.\0A\00", align 1
@.str.20 = private unnamed_addr constant [14 x i8] c"Too large???\0A\00", align 1
@.str.21 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.22 = private unnamed_addr constant [5 x i8] c",%3d\00", align 1
@.str.23 = private unnamed_addr constant [23 x i8] c"bit1_index equal to -1\00", align 1
@.str.24 = private unnamed_addr constant [13 x i8] c"%3d:%3d %8X \00", align 1
@.str.25 = private unnamed_addr constant [9 x i8] c"%3d:%3d \00", align 1
@g_keyinfo = external global [2 x [32 x [32 x %struct.KeyInfo]]], align 16
@.str.26 = private unnamed_addr constant [14 x i8] c"(%2d,%2d)>>  \00", align 1
@g_print = external global i32, align 4
@current_search_state.str = internal global i8* null, align 8
@.str.27 = private unnamed_addr constant [39 x i8] c"Nodes: %s.\0A%d %d %d %d %d %d %d %d %d.\00", align 1
@g_num_nodes = external global i64, align 8
@g_move_number = external global [128 x i32], align 16
@.str.28 = private unnamed_addr constant [20 x i8] c"HashKey Incorrect.\0A\00", align 1
@g_zobrist = external global [32 x [32 x i32]], align 16
@.str.29 = private unnamed_addr constant [20 x i8] c"Invalid hash code.\0A\00", align 1

; Function Attrs: nounwind uwtable
define void @check_hash_code_sanity() #0 {
entry:
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %index = alloca i32, align 4
  %n_rows = alloca i32, align 4
  %n_cols = alloca i32, align 4
  %tmp = alloca %struct.Hash_Key, align 8
  %tmp9 = alloca %struct.Hash_Key, align 8
  %tmp14 = alloca %struct.Hash_Key, align 8
  %tmp21 = alloca %struct.Hash_Key, align 8
  %tmp24 = alloca %struct.Hash_Key, align 8
  %tmp29 = alloca %struct.Hash_Key, align 8
  %tmp34 = alloca %struct.Hash_Key, align 8
  %tmp41 = alloca %struct.Hash_Key, align 8
  %tmp45 = alloca %struct.Hash_Key, align 8
  %tmp46 = alloca %struct.Hash_Key, align 8
  %tmp47 = alloca %struct.Hash_Key, align 8
  %tmp48 = alloca %struct.Hash_Key, align 8
  %0 = load i32, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @g_board_size, i32 0, i64 0), align 4
  store i32 %0, i32* %n_rows, align 4
  %1 = load i32, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @g_board_size, i32 0, i64 1), align 4
  store i32 %1, i32* %n_cols, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.42, %entry
  %2 = load i32, i32* %i, align 4
  %3 = load i32, i32* %n_rows, align 4
  %cmp = icmp slt i32 %2, %3
  br i1 %cmp, label %for.body, label %for.end.44

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc, %for.body
  %4 = load i32, i32* %j, align 4
  %5 = load i32, i32* %n_cols, align 4
  %cmp2 = icmp slt i32 %4, %5
  br i1 %cmp2, label %for.body.3, label %for.end

for.body.3:                                       ; preds = %for.cond.1
  %6 = load i32, i32* %i, align 4
  %add = add nsw i32 %6, 1
  %idxprom = sext i32 %add to i64
  %arrayidx = getelementptr inbounds [32 x i32], [32 x i32]* getelementptr inbounds ([2 x [32 x i32]], [2 x [32 x i32]]* @g_board, i32 0, i64 0), i32 0, i64 %idxprom
  %7 = load i32, i32* %arrayidx, align 4
  %8 = load i32, i32* %j, align 4
  %add4 = add nsw i32 %8, 1
  %shl = shl i32 1, %add4
  %and = and i32 %7, %shl
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %for.body.3
  %9 = load i32, i32* %i, align 4
  %10 = load i32, i32* %n_cols, align 4
  %mul = mul nsw i32 %9, %10
  %11 = load i32, i32* %j, align 4
  %add5 = add nsw i32 %mul, %11
  store i32 %add5, i32* %index, align 4
  %12 = load i32, i32* %index, align 4
  %13 = bitcast %struct.Hash_Key* %tmp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* bitcast (%struct.Hash_Key* @g_norm_hashkey to i8*), i64 20, i32 4, i1 false)
  call void @check_hashkey_bit_set(%struct.Hash_Key* byval align 8 %tmp, i32 %12)
  %14 = load i32, i32* %i, align 4
  %15 = load i32, i32* %n_cols, align 4
  %mul6 = mul nsw i32 %14, %15
  %16 = load i32, i32* %n_cols, align 4
  %17 = load i32, i32* %j, align 4
  %sub = sub nsw i32 %16, %17
  %sub7 = sub nsw i32 %sub, 1
  %add8 = add nsw i32 %mul6, %sub7
  store i32 %add8, i32* %index, align 4
  %18 = load i32, i32* %index, align 4
  %19 = bitcast %struct.Hash_Key* %tmp9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %19, i8* bitcast (%struct.Hash_Key* @g_flipV_hashkey to i8*), i64 20, i32 4, i1 false)
  call void @check_hashkey_bit_set(%struct.Hash_Key* byval align 8 %tmp9, i32 %18)
  %20 = load i32, i32* %n_rows, align 4
  %21 = load i32, i32* %i, align 4
  %sub10 = sub nsw i32 %20, %21
  %sub11 = sub nsw i32 %sub10, 1
  %22 = load i32, i32* %n_cols, align 4
  %mul12 = mul nsw i32 %sub11, %22
  %23 = load i32, i32* %j, align 4
  %add13 = add nsw i32 %mul12, %23
  store i32 %add13, i32* %index, align 4
  %24 = load i32, i32* %index, align 4
  %25 = bitcast %struct.Hash_Key* %tmp14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %25, i8* bitcast (%struct.Hash_Key* @g_flipH_hashkey to i8*), i64 20, i32 4, i1 false)
  call void @check_hashkey_bit_set(%struct.Hash_Key* byval align 8 %tmp14, i32 %24)
  %26 = load i32, i32* %n_rows, align 4
  %27 = load i32, i32* %i, align 4
  %sub15 = sub nsw i32 %26, %27
  %sub16 = sub nsw i32 %sub15, 1
  %28 = load i32, i32* %n_cols, align 4
  %mul17 = mul nsw i32 %sub16, %28
  %29 = load i32, i32* %n_cols, align 4
  %30 = load i32, i32* %j, align 4
  %sub18 = sub nsw i32 %29, %30
  %sub19 = sub nsw i32 %sub18, 1
  %add20 = add nsw i32 %mul17, %sub19
  store i32 %add20, i32* %index, align 4
  %31 = load i32, i32* %index, align 4
  %32 = bitcast %struct.Hash_Key* %tmp21 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %32, i8* bitcast (%struct.Hash_Key* @g_flipVH_hashkey to i8*), i64 20, i32 4, i1 false)
  call void @check_hashkey_bit_set(%struct.Hash_Key* byval align 8 %tmp21, i32 %31)
  br label %if.end

if.else:                                          ; preds = %for.body.3
  %33 = load i32, i32* %i, align 4
  %34 = load i32, i32* %n_cols, align 4
  %mul22 = mul nsw i32 %33, %34
  %35 = load i32, i32* %j, align 4
  %add23 = add nsw i32 %mul22, %35
  store i32 %add23, i32* %index, align 4
  %36 = load i32, i32* %index, align 4
  %37 = bitcast %struct.Hash_Key* %tmp24 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %37, i8* bitcast (%struct.Hash_Key* @g_norm_hashkey to i8*), i64 20, i32 4, i1 false)
  call void @check_hashkey_bit_not_set(%struct.Hash_Key* byval align 8 %tmp24, i32 %36)
  %38 = load i32, i32* %i, align 4
  %39 = load i32, i32* %n_cols, align 4
  %mul25 = mul nsw i32 %38, %39
  %40 = load i32, i32* %n_cols, align 4
  %41 = load i32, i32* %j, align 4
  %sub26 = sub nsw i32 %40, %41
  %sub27 = sub nsw i32 %sub26, 1
  %add28 = add nsw i32 %mul25, %sub27
  store i32 %add28, i32* %index, align 4
  %42 = load i32, i32* %index, align 4
  %43 = bitcast %struct.Hash_Key* %tmp29 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %43, i8* bitcast (%struct.Hash_Key* @g_flipV_hashkey to i8*), i64 20, i32 4, i1 false)
  call void @check_hashkey_bit_not_set(%struct.Hash_Key* byval align 8 %tmp29, i32 %42)
  %44 = load i32, i32* %n_rows, align 4
  %45 = load i32, i32* %i, align 4
  %sub30 = sub nsw i32 %44, %45
  %sub31 = sub nsw i32 %sub30, 1
  %46 = load i32, i32* %n_cols, align 4
  %mul32 = mul nsw i32 %sub31, %46
  %47 = load i32, i32* %j, align 4
  %add33 = add nsw i32 %mul32, %47
  store i32 %add33, i32* %index, align 4
  %48 = load i32, i32* %index, align 4
  %49 = bitcast %struct.Hash_Key* %tmp34 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %49, i8* bitcast (%struct.Hash_Key* @g_flipH_hashkey to i8*), i64 20, i32 4, i1 false)
  call void @check_hashkey_bit_not_set(%struct.Hash_Key* byval align 8 %tmp34, i32 %48)
  %50 = load i32, i32* %n_rows, align 4
  %51 = load i32, i32* %i, align 4
  %sub35 = sub nsw i32 %50, %51
  %sub36 = sub nsw i32 %sub35, 1
  %52 = load i32, i32* %n_cols, align 4
  %mul37 = mul nsw i32 %sub36, %52
  %53 = load i32, i32* %n_cols, align 4
  %54 = load i32, i32* %j, align 4
  %sub38 = sub nsw i32 %53, %54
  %sub39 = sub nsw i32 %sub38, 1
  %add40 = add nsw i32 %mul37, %sub39
  store i32 %add40, i32* %index, align 4
  %55 = load i32, i32* %index, align 4
  %56 = bitcast %struct.Hash_Key* %tmp41 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %56, i8* bitcast (%struct.Hash_Key* @g_flipVH_hashkey to i8*), i64 20, i32 4, i1 false)
  call void @check_hashkey_bit_not_set(%struct.Hash_Key* byval align 8 %tmp41, i32 %55)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %57 = load i32, i32* %j, align 4
  %inc = add nsw i32 %57, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.1

for.end:                                          ; preds = %for.cond.1
  br label %for.inc.42

for.inc.42:                                       ; preds = %for.end
  %58 = load i32, i32* %i, align 4
  %inc43 = add nsw i32 %58, 1
  store i32 %inc43, i32* %i, align 4
  br label %for.cond

for.end.44:                                       ; preds = %for.cond
  %59 = bitcast %struct.Hash_Key* %tmp45 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %59, i8* bitcast (%struct.Hash_Key* @g_norm_hashkey to i8*), i64 20, i32 4, i1 false)
  call void @check_hashkey_code(%struct.Hash_Key* byval align 8 %tmp45)
  %60 = bitcast %struct.Hash_Key* %tmp46 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %60, i8* bitcast (%struct.Hash_Key* @g_flipV_hashkey to i8*), i64 20, i32 4, i1 false)
  call void @check_hashkey_code(%struct.Hash_Key* byval align 8 %tmp46)
  %61 = bitcast %struct.Hash_Key* %tmp47 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %61, i8* bitcast (%struct.Hash_Key* @g_flipH_hashkey to i8*), i64 20, i32 4, i1 false)
  call void @check_hashkey_code(%struct.Hash_Key* byval align 8 %tmp47)
  %62 = bitcast %struct.Hash_Key* %tmp48 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %62, i8* bitcast (%struct.Hash_Key* @g_flipVH_hashkey to i8*), i64 20, i32 4, i1 false)
  call void @check_hashkey_code(%struct.Hash_Key* byval align 8 %tmp48)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @check_hashkey_bit_set(%struct.Hash_Key* byval align 8 %key, i32 %index) #0 {
entry:
  %index.addr = alloca i32, align 4
  store i32 %index, i32* %index.addr, align 4
  %0 = load i32, i32* %index.addr, align 4
  %div = sdiv i32 %0, 32
  %idxprom = sext i32 %div to i64
  %key1 = getelementptr inbounds %struct.Hash_Key, %struct.Hash_Key* %key, i32 0, i32 0
  %arrayidx = getelementptr inbounds [4 x i32], [4 x i32]* %key1, i32 0, i64 %idxprom
  %1 = load i32, i32* %arrayidx, align 4
  %2 = load i32, i32* %index.addr, align 4
  %rem = srem i32 %2, 32
  %shl = shl i32 1, %rem
  %and = and i32 %1, %shl
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %index.addr, align 4
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.21, i32 0, i32 0), i32 %3)
  call void @print_bitboard(i32 0)
  call void @print_hashkey(%struct.Hash_Key* byval align 8 %key)
  call void (i8*, i32, i32, i8*, ...) @_fatal_error_aux(i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.1, i32 0, i32 0), i32 23, i32 1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.28, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

; Function Attrs: nounwind uwtable
define internal void @check_hashkey_bit_not_set(%struct.Hash_Key* byval align 8 %key, i32 %index) #0 {
entry:
  %index.addr = alloca i32, align 4
  store i32 %index, i32* %index.addr, align 4
  %0 = load i32, i32* %index.addr, align 4
  %div = sdiv i32 %0, 32
  %idxprom = sext i32 %div to i64
  %key1 = getelementptr inbounds %struct.Hash_Key, %struct.Hash_Key* %key, i32 0, i32 0
  %arrayidx = getelementptr inbounds [4 x i32], [4 x i32]* %key1, i32 0, i64 %idxprom
  %1 = load i32, i32* %arrayidx, align 4
  %2 = load i32, i32* %index.addr, align 4
  %rem = srem i32 %2, 32
  %shl = shl i32 1, %rem
  %and = and i32 %1, %shl
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %index.addr, align 4
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.21, i32 0, i32 0), i32 %3)
  call void @print_bitboard(i32 0)
  call void @print_hashkey(%struct.Hash_Key* byval align 8 %key)
  call void (i8*, i32, i32, i8*, ...) @_fatal_error_aux(i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.1, i32 0, i32 0), i32 38, i32 1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.28, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @check_hashkey_code(%struct.Hash_Key* byval align 8 %key) #0 {
entry:
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %index = alloca i32, align 4
  %n_rows = alloca i32, align 4
  %n_cols = alloca i32, align 4
  %code = alloca i32, align 4
  %0 = load i32, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @g_board_size, i32 0, i64 0), align 4
  store i32 %0, i32* %n_rows, align 4
  %1 = load i32, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @g_board_size, i32 0, i64 1), align 4
  store i32 %1, i32* %n_cols, align 4
  %code1 = getelementptr inbounds %struct.Hash_Key, %struct.Hash_Key* %key, i32 0, i32 1
  %2 = load i32, i32* %code1, align 4
  store i32 %2, i32* %code, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.12, %entry
  %3 = load i32, i32* %i, align 4
  %4 = load i32, i32* %n_rows, align 4
  %cmp = icmp slt i32 %3, %4
  br i1 %cmp, label %for.body, label %for.end.14

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond.2

for.cond.2:                                       ; preds = %for.inc, %for.body
  %5 = load i32, i32* %j, align 4
  %6 = load i32, i32* %n_cols, align 4
  %cmp3 = icmp slt i32 %5, %6
  br i1 %cmp3, label %for.body.4, label %for.end

for.body.4:                                       ; preds = %for.cond.2
  %7 = load i32, i32* %i, align 4
  %8 = load i32, i32* %n_cols, align 4
  %mul = mul nsw i32 %7, %8
  %9 = load i32, i32* %j, align 4
  %add = add nsw i32 %mul, %9
  store i32 %add, i32* %index, align 4
  %10 = load i32, i32* %index, align 4
  %div = sdiv i32 %10, 32
  %idxprom = sext i32 %div to i64
  %key5 = getelementptr inbounds %struct.Hash_Key, %struct.Hash_Key* %key, i32 0, i32 0
  %arrayidx = getelementptr inbounds [4 x i32], [4 x i32]* %key5, i32 0, i64 %idxprom
  %11 = load i32, i32* %arrayidx, align 4
  %12 = load i32, i32* %index, align 4
  %rem = srem i32 %12, 32
  %shl = shl i32 1, %rem
  %and = and i32 %11, %shl
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body.4
  %13 = load i32, i32* %j, align 4
  %add6 = add nsw i32 %13, 1
  %idxprom7 = sext i32 %add6 to i64
  %14 = load i32, i32* %i, align 4
  %add8 = add nsw i32 %14, 1
  %idxprom9 = sext i32 %add8 to i64
  %arrayidx10 = getelementptr inbounds [32 x [32 x i32]], [32 x [32 x i32]]* @g_zobrist, i32 0, i64 %idxprom9
  %arrayidx11 = getelementptr inbounds [32 x i32], [32 x i32]* %arrayidx10, i32 0, i64 %idxprom7
  %15 = load i32, i32* %arrayidx11, align 4
  %16 = load i32, i32* %code, align 4
  %xor = xor i32 %16, %15
  store i32 %xor, i32* %code, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.4
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %17 = load i32, i32* %j, align 4
  %inc = add nsw i32 %17, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.2

for.end:                                          ; preds = %for.cond.2
  br label %for.inc.12

for.inc.12:                                       ; preds = %for.end
  %18 = load i32, i32* %i, align 4
  %inc13 = add nsw i32 %18, 1
  store i32 %inc13, i32* %i, align 4
  br label %for.cond

for.end.14:                                       ; preds = %for.cond
  %19 = load i32, i32* %code, align 4
  %cmp15 = icmp ne i32 %19, 0
  br i1 %cmp15, label %if.then.16, label %if.end.17

if.then.16:                                       ; preds = %for.end.14
  call void (i8*, i32, i32, i8*, ...) @_fatal_error_aux(i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.1, i32 0, i32 0), i32 59, i32 1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.29, i32 0, i32 0))
  br label %if.end.17

if.end.17:                                        ; preds = %if.then.16, %for.end.14
  ret void
}

; Function Attrs: nounwind uwtable
define void @check_board_sanity() #0 {
entry:
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %count = alloca i32, align 4
  store i32 0, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.17, %entry
  %0 = load i32, i32* %j, align 4
  %1 = load i32, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @g_board_size, i32 0, i64 0), align 4
  %add = add nsw i32 %1, 2
  %cmp = icmp slt i32 %0, %add
  br i1 %cmp, label %for.body, label %for.end.19

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc, %for.body
  %2 = load i32, i32* %i, align 4
  %3 = load i32, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @g_board_size, i32 0, i64 1), align 4
  %add2 = add nsw i32 %3, 2
  %cmp3 = icmp slt i32 %2, %add2
  br i1 %cmp3, label %for.body.4, label %for.end

for.body.4:                                       ; preds = %for.cond.1
  store i32 0, i32* %count, align 4
  %4 = load i32, i32* %i, align 4
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds [32 x i32], [32 x i32]* getelementptr inbounds ([2 x [32 x i32]], [2 x [32 x i32]]* @g_board, i32 0, i64 1), i32 0, i64 %idxprom
  %5 = load i32, i32* %arrayidx, align 4
  %6 = load i32, i32* %j, align 4
  %shl = shl i32 1, %6
  %and = and i32 %5, %shl
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body.4
  %7 = load i32, i32* %count, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, i32* %count, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.4
  %8 = load i32, i32* %j, align 4
  %idxprom5 = sext i32 %8 to i64
  %arrayidx6 = getelementptr inbounds [32 x i32], [32 x i32]* getelementptr inbounds ([2 x [32 x i32]], [2 x [32 x i32]]* @g_board, i32 0, i64 0), i32 0, i64 %idxprom5
  %9 = load i32, i32* %arrayidx6, align 4
  %10 = load i32, i32* %i, align 4
  %shl7 = shl i32 1, %10
  %and8 = and i32 %9, %shl7
  %tobool9 = icmp ne i32 %and8, 0
  br i1 %tobool9, label %if.then.10, label %if.end.12

if.then.10:                                       ; preds = %if.end
  %11 = load i32, i32* %count, align 4
  %inc11 = add nsw i32 %11, 1
  store i32 %inc11, i32* %count, align 4
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.10, %if.end
  %12 = load i32, i32* %count, align 4
  %cmp13 = icmp eq i32 %12, 1
  br i1 %cmp13, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %if.end.12
  call void @print_board(i32 1)
  call void @print_board(i32 0)
  %13 = load i32, i32* %j, align 4
  %14 = load i32, i32* %i, align 4
  %15 = load i32, i32* %count, align 4
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i32 %13, i32 %14, i32 %15)
  call void (i8*, i32, i32, i8*, ...) @_fatal_error_aux(i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.1, i32 0, i32 0), i32 136, i32 1, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i32 0, i32 0))
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.14, %if.end.12
  br label %for.inc

for.inc:                                          ; preds = %if.end.15
  %16 = load i32, i32* %i, align 4
  %inc16 = add nsw i32 %16, 1
  store i32 %inc16, i32* %i, align 4
  br label %for.cond.1

for.end:                                          ; preds = %for.cond.1
  br label %for.inc.17

for.inc.17:                                       ; preds = %for.end
  %17 = load i32, i32* %j, align 4
  %inc18 = add nsw i32 %17, 1
  store i32 %inc18, i32* %j, align 4
  br label %for.cond

for.end.19:                                       ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @print_board(i32 %player) #0 {
entry:
  %player.addr = alloca i32, align 4
  %player_index = alloca i32, align 4
  %row = alloca i32, align 4
  %col = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 %player, i32* %player.addr, align 4
  %0 = load i32, i32* %player.addr, align 4
  %and = and i32 %0, 1
  store i32 %and, i32* %player_index, align 4
  %1 = load i32, i32* %player_index, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [2 x i32], [2 x i32]* @g_board_size, i32 0, i64 %idxprom
  %2 = load i32, i32* %arrayidx, align 4
  store i32 %2, i32* %row, align 4
  %3 = load i32, i32* %player_index, align 4
  %xor = xor i32 %3, 1
  %idxprom1 = sext i32 %xor to i64
  %arrayidx2 = getelementptr inbounds [2 x i32], [2 x i32]* @g_board_size, i32 0, i64 %idxprom1
  %4 = load i32, i32* %arrayidx2, align 4
  store i32 %4, i32* %col, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.14, %entry
  %5 = load i32, i32* %i, align 4
  %6 = load i32, i32* %row, align 4
  %cmp = icmp slt i32 %5, %6
  br i1 %cmp, label %for.body, label %for.end.16

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond.3

for.cond.3:                                       ; preds = %for.inc, %for.body
  %7 = load i32, i32* %j, align 4
  %8 = load i32, i32* %col, align 4
  %cmp4 = icmp slt i32 %7, %8
  br i1 %cmp4, label %for.body.5, label %for.end

for.body.5:                                       ; preds = %for.cond.3
  %9 = load i32, i32* %i, align 4
  %add = add nsw i32 %9, 1
  %idxprom6 = sext i32 %add to i64
  %10 = load i32, i32* %player_index, align 4
  %idxprom7 = sext i32 %10 to i64
  %arrayidx8 = getelementptr inbounds [2 x [32 x i32]], [2 x [32 x i32]]* @g_board, i32 0, i64 %idxprom7
  %arrayidx9 = getelementptr inbounds [32 x i32], [32 x i32]* %arrayidx8, i32 0, i64 %idxprom6
  %11 = load i32, i32* %arrayidx9, align 4
  %12 = load i32, i32* %j, align 4
  %add10 = add nsw i32 %12, 1
  %shl = shl i32 1, %add10
  %and11 = and i32 %11, %shl
  %tobool = icmp ne i32 %and11, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %for.body.5
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i32 0, i32 0))
  br label %if.end

if.else:                                          ; preds = %for.body.5
  %call12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %13 = load i32, i32* %j, align 4
  %inc = add nsw i32 %13, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.3

for.end:                                          ; preds = %for.cond.3
  %call13 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i32 0, i32 0))
  br label %for.inc.14

for.inc.14:                                       ; preds = %for.end
  %14 = load i32, i32* %i, align 4
  %inc15 = add nsw i32 %14, 1
  store i32 %inc15, i32* %i, align 4
  br label %for.cond

for.end.16:                                       ; preds = %for.cond
  ret void
}

declare i32 @printf(i8*, ...) #2

declare void @_fatal_error_aux(i8*, i32, i32, i8*, ...) #2

; Function Attrs: nounwind uwtable
define void @print_hashentry(i32 %index) #0 {
entry:
  %index.addr = alloca i32, align 4
  %entry1 = alloca %struct.Hash_Entry, align 4
  store i32 %index, i32* %index.addr, align 4
  %0 = load i32, i32* %index.addr, align 4
  %idxprom = sext i32 %0 to i64
  %1 = load %struct.Hash_Entry*, %struct.Hash_Entry** @g_trans_table, align 8
  %arrayidx = getelementptr inbounds %struct.Hash_Entry, %struct.Hash_Entry* %1, i64 %idxprom
  %2 = bitcast %struct.Hash_Entry* %entry1 to i8*
  %3 = bitcast %struct.Hash_Entry* %arrayidx to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %2, i8* %3, i64 24, i32 4, i1 false)
  %4 = load i32, i32* %index.addr, align 4
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i32 0, i32 0), i32 %4)
  %key = getelementptr inbounds %struct.Hash_Entry, %struct.Hash_Entry* %entry1, i32 0, i32 0
  %arrayidx2 = getelementptr inbounds [4 x i32], [4 x i32]* %key, i32 0, i64 0
  %5 = load i32, i32* %arrayidx2, align 4
  %key3 = getelementptr inbounds %struct.Hash_Entry, %struct.Hash_Entry* %entry1, i32 0, i32 0
  %arrayidx4 = getelementptr inbounds [4 x i32], [4 x i32]* %key3, i32 0, i64 1
  %6 = load i32, i32* %arrayidx4, align 4
  %key5 = getelementptr inbounds %struct.Hash_Entry, %struct.Hash_Entry* %entry1, i32 0, i32 0
  %arrayidx6 = getelementptr inbounds [4 x i32], [4 x i32]* %key5, i32 0, i64 2
  %7 = load i32, i32* %arrayidx6, align 4
  %key7 = getelementptr inbounds %struct.Hash_Entry, %struct.Hash_Entry* %entry1, i32 0, i32 0
  %arrayidx8 = getelementptr inbounds [4 x i32], [4 x i32]* %key7, i32 0, i64 3
  %8 = load i32, i32* %arrayidx8, align 4
  %nodes = getelementptr inbounds %struct.Hash_Entry, %struct.Hash_Entry* %entry1, i32 0, i32 1
  %9 = load i32, i32* %nodes, align 4
  %depth = getelementptr inbounds %struct.Hash_Entry, %struct.Hash_Entry* %entry1, i32 0, i32 3
  %10 = bitcast [3 x i8]* %depth to i24*
  %bf.load = load i24, i24* %10, align 1
  %bf.clear = and i24 %bf.load, 127
  %bf.cast = trunc i24 %bf.clear to i8
  %conv = zext i8 %bf.cast to i32
  %whos_turn = getelementptr inbounds %struct.Hash_Entry, %struct.Hash_Entry* %entry1, i32 0, i32 3
  %11 = bitcast [3 x i8]* %whos_turn to i24*
  %bf.load9 = load i24, i24* %11, align 1
  %bf.lshr = lshr i24 %bf.load9, 7
  %bf.clear10 = and i24 %bf.lshr, 1
  %bf.cast11 = trunc i24 %bf.clear10 to i8
  %conv12 = zext i8 %bf.cast11 to i32
  %value = getelementptr inbounds %struct.Hash_Entry, %struct.Hash_Entry* %entry1, i32 0, i32 3
  %12 = bitcast [3 x i8]* %value to i24*
  %bf.load13 = load i24, i24* %12, align 1
  %bf.shl = shl i24 %bf.load13, 2
  %bf.ashr = ashr i24 %bf.shl, 10
  %bf.cast14 = trunc i24 %bf.ashr to i16
  %conv15 = sext i16 %bf.cast14 to i32
  %type = getelementptr inbounds %struct.Hash_Entry, %struct.Hash_Entry* %entry1, i32 0, i32 3
  %13 = bitcast [3 x i8]* %type to i24*
  %bf.load16 = load i24, i24* %13, align 1
  %bf.lshr17 = lshr i24 %bf.load16, 22
  %bf.cast18 = trunc i24 %bf.lshr17 to i16
  %conv19 = zext i16 %bf.cast18 to i32
  %best_move = getelementptr inbounds %struct.Hash_Entry, %struct.Hash_Entry* %entry1, i32 0, i32 2
  %14 = load i8, i8* %best_move, align 1
  %conv20 = zext i8 %14 to i32
  %call21 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.4, i32 0, i32 0), i32 %5, i32 %6, i32 %7, i32 %8, i32 %9, i32 %conv, i32 %conv12, i32 %conv15, i32 %conv19, i32 %conv20)
  ret void
}

; Function Attrs: nounwind uwtable
define void @print_board_info(i32 %player) #0 {
entry:
  %player.addr = alloca i32, align 4
  %num_rows = alloca i32, align 4
  %num_cols = alloca i32, align 4
  %max_dim = alloca i32, align 4
  %i = alloca i32, align 4
  %str = alloca [32 x [80 x i8]], align 16
  %null_str = alloca [1 x i8], align 1
  store i32 %player, i32* %player.addr, align 4
  %0 = bitcast [1 x i8]* %null_str to i8*
  call void @llvm.memset.p0i8.i64(i8* %0, i8 0, i64 1, i32 1, i1 false)
  %1 = load i32, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @g_board_size, i32 0, i64 0), align 4
  store i32 %1, i32* %num_rows, align 4
  %2 = load i32, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @g_board_size, i32 0, i64 1), align 4
  store i32 %2, i32* %num_cols, align 4
  %3 = load i32, i32* %num_rows, align 4
  %4 = load i32, i32* %num_cols, align 4
  %cmp = icmp sgt i32 %3, %4
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %5 = load i32, i32* %num_rows, align 4
  br label %cond.end

cond.false:                                       ; preds = %entry
  %6 = load i32, i32* %num_cols, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %5, %cond.true ], [ %6, %cond.false ]
  store i32 %cond, i32* %max_dim, align 4
  %arrayidx = getelementptr inbounds [32 x [80 x i8]], [32 x [80 x i8]]* %str, i32 0, i64 1
  %arraydecay = getelementptr inbounds [80 x i8], [80 x i8]* %arrayidx, i32 0, i32 0
  %7 = load i32, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @g_board_size, i32 0, i64 0), align 4
  %call = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i32 0, i32 0), i32 %7) #1
  %arrayidx1 = getelementptr inbounds [32 x [80 x i8]], [32 x [80 x i8]]* %str, i32 0, i64 2
  %arraydecay2 = getelementptr inbounds [80 x i8], [80 x i8]* %arrayidx1, i32 0, i32 0
  %8 = load i32, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @g_board_size, i32 0, i64 1), align 4
  %call3 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay2, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.9, i32 0, i32 0), i32 %8) #1
  %arraydecay4 = getelementptr inbounds [1 x i8], [1 x i8]* %null_str, i32 0, i32 0
  %call5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i32 0, i32 0), i8* %arraydecay4, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.12, i32 0, i32 0))
  %arraydecay6 = getelementptr inbounds [1 x i8], [1 x i8]* %null_str, i32 0, i32 0
  %call7 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.13, i32 0, i32 0), i8* %arraydecay6, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i32 0, i32 0))
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end
  %9 = load i32, i32* %i, align 4
  %10 = load i32, i32* %max_dim, align 4
  %cmp8 = icmp slt i32 %9, %10
  br i1 %cmp8, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %11 = load i32, i32* %i, align 4
  %add = add nsw i32 %11, 1
  %12 = load i32, i32* %i, align 4
  %add9 = add nsw i32 %12, 1
  %idxprom = sext i32 %add9 to i64
  %arrayidx10 = getelementptr inbounds [32 x %struct.Basic_Info], [32 x %struct.Basic_Info]* getelementptr inbounds ([2 x [32 x %struct.Basic_Info]], [2 x [32 x %struct.Basic_Info]]* @g_info, i32 0, i64 1), i32 0, i64 %idxprom
  %real = getelementptr inbounds %struct.Basic_Info, %struct.Basic_Info* %arrayidx10, i32 0, i32 1
  %13 = load i32, i32* %real, align 4
  %14 = load i32, i32* %i, align 4
  %add11 = add nsw i32 %14, 1
  %idxprom12 = sext i32 %add11 to i64
  %arrayidx13 = getelementptr inbounds [32 x %struct.Basic_Info], [32 x %struct.Basic_Info]* getelementptr inbounds ([2 x [32 x %struct.Basic_Info]], [2 x [32 x %struct.Basic_Info]]* @g_info, i32 0, i64 1), i32 0, i64 %idxprom12
  %safe = getelementptr inbounds %struct.Basic_Info, %struct.Basic_Info* %arrayidx13, i32 0, i32 0
  %15 = load i32, i32* %safe, align 4
  %16 = load i32, i32* %i, align 4
  %add14 = add nsw i32 %16, 1
  %idxprom15 = sext i32 %add14 to i64
  %arrayidx16 = getelementptr inbounds [32 x %struct.Basic_Info], [32 x %struct.Basic_Info]* getelementptr inbounds ([2 x [32 x %struct.Basic_Info]], [2 x [32 x %struct.Basic_Info]]* @g_info, i32 0, i64 0), i32 0, i64 %idxprom15
  %real17 = getelementptr inbounds %struct.Basic_Info, %struct.Basic_Info* %arrayidx16, i32 0, i32 1
  %17 = load i32, i32* %real17, align 4
  %18 = load i32, i32* %i, align 4
  %add18 = add nsw i32 %18, 1
  %idxprom19 = sext i32 %add18 to i64
  %arrayidx20 = getelementptr inbounds [32 x %struct.Basic_Info], [32 x %struct.Basic_Info]* getelementptr inbounds ([2 x [32 x %struct.Basic_Info]], [2 x [32 x %struct.Basic_Info]]* @g_info, i32 0, i64 0), i32 0, i64 %idxprom19
  %safe21 = getelementptr inbounds %struct.Basic_Info, %struct.Basic_Info* %arrayidx20, i32 0, i32 0
  %19 = load i32, i32* %safe21, align 4
  %20 = load i32, i32* %i, align 4
  %cmp22 = icmp slt i32 %20, 2
  br i1 %cmp22, label %cond.true.23, label %cond.false.28

cond.true.23:                                     ; preds = %for.body
  %21 = load i32, i32* %i, align 4
  %add24 = add nsw i32 %21, 1
  %idxprom25 = sext i32 %add24 to i64
  %arrayidx26 = getelementptr inbounds [32 x [80 x i8]], [32 x [80 x i8]]* %str, i32 0, i64 %idxprom25
  %arraydecay27 = getelementptr inbounds [80 x i8], [80 x i8]* %arrayidx26, i32 0, i32 0
  br label %cond.end.30

cond.false.28:                                    ; preds = %for.body
  %arraydecay29 = getelementptr inbounds [1 x i8], [1 x i8]* %null_str, i32 0, i32 0
  br label %cond.end.30

cond.end.30:                                      ; preds = %cond.false.28, %cond.true.23
  %cond31 = phi i8* [ %arraydecay27, %cond.true.23 ], [ %arraydecay29, %cond.false.28 ]
  %call32 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.16, i32 0, i32 0), i32 %add, i32 %13, i32 %15, i32 %17, i32 %19, i8* %cond31)
  br label %for.inc

for.inc:                                          ; preds = %cond.end.30
  %22 = load i32, i32* %i, align 4
  %inc = add nsw i32 %22, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %23 = load i32, i32* getelementptr inbounds ([2 x %struct.Basic_Info], [2 x %struct.Basic_Info]* @g_info_totals, i32 0, i64 1, i32 1), align 4
  %24 = load i32, i32* getelementptr inbounds ([2 x %struct.Basic_Info], [2 x %struct.Basic_Info]* @g_info_totals, i32 0, i64 1, i32 0), align 4
  %25 = load i32, i32* getelementptr inbounds ([2 x %struct.Basic_Info], [2 x %struct.Basic_Info]* @g_info_totals, i32 0, i64 0, i32 1), align 4
  %26 = load i32, i32* getelementptr inbounds ([2 x %struct.Basic_Info], [2 x %struct.Basic_Info]* @g_info_totals, i32 0, i64 0, i32 0), align 4
  %call33 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.17, i32 0, i32 0), i32 %23, i32 %24, i32 %25, i32 %26)
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #1

; Function Attrs: nounwind
declare i32 @sprintf(i8*, i8*, ...) #3

; Function Attrs: nounwind uwtable
define void @print_bitboard(i32 %player) #0 {
entry:
  %player.addr = alloca i32, align 4
  %player_index = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 %player, i32* %player.addr, align 4
  %0 = load i32, i32* %player.addr, align 4
  %and = and i32 %0, 1
  store i32 %and, i32* %player_index, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4
  %2 = load i32, i32* %player_index, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [2 x i32], [2 x i32]* @g_board_size, i32 0, i64 %idxprom
  %3 = load i32, i32* %arrayidx, align 4
  %add = add nsw i32 %3, 2
  %cmp = icmp slt i32 %1, %add
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %i, align 4
  %idxprom1 = sext i32 %4 to i64
  %5 = load i32, i32* %player_index, align 4
  %idxprom2 = sext i32 %5 to i64
  %arrayidx3 = getelementptr inbounds [2 x [32 x i32]], [2 x [32 x i32]]* @g_board, i32 0, i64 %idxprom2
  %arrayidx4 = getelementptr inbounds [32 x i32], [32 x i32]* %arrayidx3, i32 0, i64 %idxprom1
  %6 = load i32, i32* %arrayidx4, align 4
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i32 0, i32 0), i32 %6)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load i32, i32* %i, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @print_hashkey(%struct.Hash_Key* byval align 8 %key) #0 {
entry:
  %key1 = getelementptr inbounds %struct.Hash_Key, %struct.Hash_Key* %key, i32 0, i32 0
  %arrayidx = getelementptr inbounds [4 x i32], [4 x i32]* %key1, i32 0, i64 0
  %0 = load i32, i32* %arrayidx, align 4
  %key2 = getelementptr inbounds %struct.Hash_Key, %struct.Hash_Key* %key, i32 0, i32 0
  %arrayidx3 = getelementptr inbounds [4 x i32], [4 x i32]* %key2, i32 0, i64 1
  %1 = load i32, i32* %arrayidx3, align 4
  %key4 = getelementptr inbounds %struct.Hash_Key, %struct.Hash_Key* %key, i32 0, i32 0
  %arrayidx5 = getelementptr inbounds [4 x i32], [4 x i32]* %key4, i32 0, i64 2
  %2 = load i32, i32* %arrayidx5, align 4
  %key6 = getelementptr inbounds %struct.Hash_Key, %struct.Hash_Key* %key, i32 0, i32 0
  %arrayidx7 = getelementptr inbounds [4 x i32], [4 x i32]* %key6, i32 0, i64 3
  %3 = load i32, i32* %arrayidx7, align 4
  %code = getelementptr inbounds %struct.Hash_Key, %struct.Hash_Key* %key, i32 0, i32 1
  %4 = load i32, i32* %code, align 4
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.19, i32 0, i32 0), i32 %0, i32 %1, i32 %2, i32 %3, i32 %4)
  ret void
}

; Function Attrs: nounwind uwtable
define void @print_u64bit(i64 %val) #0 {
entry:
  %val.addr = alloca i64, align 8
  %vals = alloca [10 x i32], align 16
  %i = alloca i32, align 4
  store i64 %val, i64* %val.addr, align 8
  store i32 0, i32* %i, align 4
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  %0 = load i64, i64* %val.addr, align 8
  %rem = urem i64 %0, 1000
  %conv = trunc i64 %rem to i32
  %1 = load i32, i32* %i, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* %vals, i32 0, i64 %idxprom
  store i32 %conv, i32* %arrayidx, align 4
  %2 = load i64, i64* %val.addr, align 8
  %div = udiv i64 %2, 1000
  store i64 %div, i64* %val.addr, align 8
  %3 = load i32, i32* %i, align 4
  %inc = add nsw i32 %3, 1
  store i32 %inc, i32* %i, align 4
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %4 = load i64, i64* %val.addr, align 8
  %cmp = icmp ne i64 %4, 0
  br i1 %cmp, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %5 = load i32, i32* %i, align 4
  %cmp2 = icmp sgt i32 %5, 10
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %do.end
  call void (i8*, i32, i32, i8*, ...) @_fatal_error_aux(i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.1, i32 0, i32 0), i32 255, i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.20, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %do.end
  %6 = load i32, i32* %i, align 4
  %dec = add nsw i32 %6, -1
  store i32 %dec, i32* %i, align 4
  %idxprom4 = sext i32 %dec to i64
  %arrayidx5 = getelementptr inbounds [10 x i32], [10 x i32]* %vals, i32 0, i64 %idxprom4
  %7 = load i32, i32* %arrayidx5, align 4
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.21, i32 0, i32 0), i32 %7)
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %8 = load i32, i32* %i, align 4
  %cmp6 = icmp ne i32 %8, 0
  br i1 %cmp6, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %9 = load i32, i32* %i, align 4
  %dec8 = add nsw i32 %9, -1
  store i32 %dec8, i32* %i, align 4
  %idxprom9 = sext i32 %dec8 to i64
  %arrayidx10 = getelementptr inbounds [10 x i32], [10 x i32]* %vals, i32 0, i64 %idxprom9
  %10 = load i32, i32* %arrayidx10, align 4
  %call11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.22, i32 0, i32 0), i32 %10)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @print_keyinfo(i64 %info.coerce0, i32 %info.coerce1, i32 %with) #0 {
entry:
  %info = alloca %struct.KeyInfo_s, align 8
  %coerce = alloca { i64, i32 }, align 8
  %with.addr = alloca i32, align 4
  %0 = getelementptr { i64, i32 }, { i64, i32 }* %coerce, i32 0, i32 0
  store i64 %info.coerce0, i64* %0
  %1 = getelementptr { i64, i32 }, { i64, i32 }* %coerce, i32 0, i32 1
  store i32 %info.coerce1, i32* %1
  %2 = bitcast %struct.KeyInfo_s* %info to i8*
  %3 = bitcast { i64, i32 }* %coerce to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %2, i8* %3, i64 12, i32 8, i1 false)
  store i32 %with, i32* %with.addr, align 4
  %bit1_index = getelementptr inbounds %struct.KeyInfo_s, %struct.KeyInfo_s* %info, i32 0, i32 0
  %4 = load i32, i32* %bit1_index, align 4
  %cmp = icmp eq i32 %4, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void (i8*, i32, i32, i8*, ...) @_fatal_error_aux(i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.1, i32 0, i32 0), i32 266, i32 1, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.23, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load i32, i32* %with.addr, align 4
  %tobool = icmp ne i32 %5, 0
  br i1 %tobool, label %if.then.1, label %if.else

if.then.1:                                        ; preds = %if.end
  %bit1_index2 = getelementptr inbounds %struct.KeyInfo_s, %struct.KeyInfo_s* %info, i32 0, i32 0
  %6 = load i32, i32* %bit1_index2, align 4
  %bit2_index = getelementptr inbounds %struct.KeyInfo_s, %struct.KeyInfo_s* %info, i32 0, i32 1
  %7 = load i32, i32* %bit2_index, align 4
  %hash_code = getelementptr inbounds %struct.KeyInfo_s, %struct.KeyInfo_s* %info, i32 0, i32 2
  %8 = load i32, i32* %hash_code, align 4
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.24, i32 0, i32 0), i32 %6, i32 %7, i32 %8)
  br label %if.end.6

if.else:                                          ; preds = %if.end
  %bit1_index3 = getelementptr inbounds %struct.KeyInfo_s, %struct.KeyInfo_s* %info, i32 0, i32 0
  %9 = load i32, i32* %bit1_index3, align 4
  %bit2_index4 = getelementptr inbounds %struct.KeyInfo_s, %struct.KeyInfo_s* %info, i32 0, i32 1
  %10 = load i32, i32* %bit2_index4, align 4
  %call5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.25, i32 0, i32 0), i32 %9, i32 %10)
  br label %if.end.6

if.end.6:                                         ; preds = %if.else, %if.then.1
  ret void
}

; Function Attrs: nounwind uwtable
define void @print_keyinfo_table(i32 %player, i32 %with_hashcode) #0 {
entry:
  %player.addr = alloca i32, align 4
  %with_hashcode.addr = alloca i32, align 4
  %r = alloca i32, align 4
  %c = alloca i32, align 4
  %norm15.coerce = alloca { i64, i32 }
  %flipV.coerce = alloca { i64, i32 }
  %flipH.coerce = alloca { i64, i32 }
  %flipVH.coerce = alloca { i64, i32 }
  store i32 %player, i32* %player.addr, align 4
  store i32 %with_hashcode, i32* %with_hashcode.addr, align 4
  store i32 0, i32* %r, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.35, %entry
  %0 = load i32, i32* %r, align 4
  %cmp = icmp slt i32 %0, 32
  br i1 %cmp, label %for.body, label %for.end.37

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %c, align 4
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc, %for.body
  %1 = load i32, i32* %c, align 4
  %cmp2 = icmp slt i32 %1, 32
  br i1 %cmp2, label %for.body.3, label %for.end

for.body.3:                                       ; preds = %for.cond.1
  %2 = load i32, i32* %c, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load i32, i32* %r, align 4
  %idxprom4 = sext i32 %3 to i64
  %4 = load i32, i32* %player.addr, align 4
  %idxprom5 = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds [2 x [32 x [32 x %struct.KeyInfo]]], [2 x [32 x [32 x %struct.KeyInfo]]]* @g_keyinfo, i32 0, i64 %idxprom5
  %arrayidx6 = getelementptr inbounds [32 x [32 x %struct.KeyInfo]], [32 x [32 x %struct.KeyInfo]]* %arrayidx, i32 0, i64 %idxprom4
  %arrayidx7 = getelementptr inbounds [32 x %struct.KeyInfo], [32 x %struct.KeyInfo]* %arrayidx6, i32 0, i64 %idxprom
  %norm = getelementptr inbounds %struct.KeyInfo, %struct.KeyInfo* %arrayidx7, i32 0, i32 0
  %bit1_index = getelementptr inbounds %struct.KeyInfo_s, %struct.KeyInfo_s* %norm, i32 0, i32 0
  %5 = load i32, i32* %bit1_index, align 4
  %cmp8 = icmp ne i32 %5, -1
  br i1 %cmp8, label %if.then, label %if.end

if.then:                                          ; preds = %for.body.3
  %6 = load i32, i32* %r, align 4
  %7 = load i32, i32* %c, align 4
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.26, i32 0, i32 0), i32 %6, i32 %7)
  %8 = load i32, i32* %c, align 4
  %idxprom9 = sext i32 %8 to i64
  %9 = load i32, i32* %r, align 4
  %idxprom10 = sext i32 %9 to i64
  %10 = load i32, i32* %player.addr, align 4
  %idxprom11 = sext i32 %10 to i64
  %arrayidx12 = getelementptr inbounds [2 x [32 x [32 x %struct.KeyInfo]]], [2 x [32 x [32 x %struct.KeyInfo]]]* @g_keyinfo, i32 0, i64 %idxprom11
  %arrayidx13 = getelementptr inbounds [32 x [32 x %struct.KeyInfo]], [32 x [32 x %struct.KeyInfo]]* %arrayidx12, i32 0, i64 %idxprom10
  %arrayidx14 = getelementptr inbounds [32 x %struct.KeyInfo], [32 x %struct.KeyInfo]* %arrayidx13, i32 0, i64 %idxprom9
  %norm15 = getelementptr inbounds %struct.KeyInfo, %struct.KeyInfo* %arrayidx14, i32 0, i32 0
  %11 = load i32, i32* %with_hashcode.addr, align 4
  %12 = bitcast { i64, i32 }* %norm15.coerce to i8*
  %13 = bitcast %struct.KeyInfo_s* %norm15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %12, i8* %13, i64 12, i32 0, i1 false)
  %14 = getelementptr { i64, i32 }, { i64, i32 }* %norm15.coerce, i32 0, i32 0
  %15 = load i64, i64* %14, align 1
  %16 = getelementptr { i64, i32 }, { i64, i32 }* %norm15.coerce, i32 0, i32 1
  %17 = load i32, i32* %16, align 1
  call void @print_keyinfo(i64 %15, i32 %17, i32 %11)
  %18 = load i32, i32* %c, align 4
  %idxprom16 = sext i32 %18 to i64
  %19 = load i32, i32* %r, align 4
  %idxprom17 = sext i32 %19 to i64
  %20 = load i32, i32* %player.addr, align 4
  %idxprom18 = sext i32 %20 to i64
  %arrayidx19 = getelementptr inbounds [2 x [32 x [32 x %struct.KeyInfo]]], [2 x [32 x [32 x %struct.KeyInfo]]]* @g_keyinfo, i32 0, i64 %idxprom18
  %arrayidx20 = getelementptr inbounds [32 x [32 x %struct.KeyInfo]], [32 x [32 x %struct.KeyInfo]]* %arrayidx19, i32 0, i64 %idxprom17
  %arrayidx21 = getelementptr inbounds [32 x %struct.KeyInfo], [32 x %struct.KeyInfo]* %arrayidx20, i32 0, i64 %idxprom16
  %flipV = getelementptr inbounds %struct.KeyInfo, %struct.KeyInfo* %arrayidx21, i32 0, i32 1
  %21 = load i32, i32* %with_hashcode.addr, align 4
  %22 = bitcast { i64, i32 }* %flipV.coerce to i8*
  %23 = bitcast %struct.KeyInfo_s* %flipV to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %22, i8* %23, i64 12, i32 0, i1 false)
  %24 = getelementptr { i64, i32 }, { i64, i32 }* %flipV.coerce, i32 0, i32 0
  %25 = load i64, i64* %24, align 1
  %26 = getelementptr { i64, i32 }, { i64, i32 }* %flipV.coerce, i32 0, i32 1
  %27 = load i32, i32* %26, align 1
  call void @print_keyinfo(i64 %25, i32 %27, i32 %21)
  %28 = load i32, i32* %c, align 4
  %idxprom22 = sext i32 %28 to i64
  %29 = load i32, i32* %r, align 4
  %idxprom23 = sext i32 %29 to i64
  %30 = load i32, i32* %player.addr, align 4
  %idxprom24 = sext i32 %30 to i64
  %arrayidx25 = getelementptr inbounds [2 x [32 x [32 x %struct.KeyInfo]]], [2 x [32 x [32 x %struct.KeyInfo]]]* @g_keyinfo, i32 0, i64 %idxprom24
  %arrayidx26 = getelementptr inbounds [32 x [32 x %struct.KeyInfo]], [32 x [32 x %struct.KeyInfo]]* %arrayidx25, i32 0, i64 %idxprom23
  %arrayidx27 = getelementptr inbounds [32 x %struct.KeyInfo], [32 x %struct.KeyInfo]* %arrayidx26, i32 0, i64 %idxprom22
  %flipH = getelementptr inbounds %struct.KeyInfo, %struct.KeyInfo* %arrayidx27, i32 0, i32 2
  %31 = load i32, i32* %with_hashcode.addr, align 4
  %32 = bitcast { i64, i32 }* %flipH.coerce to i8*
  %33 = bitcast %struct.KeyInfo_s* %flipH to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %32, i8* %33, i64 12, i32 0, i1 false)
  %34 = getelementptr { i64, i32 }, { i64, i32 }* %flipH.coerce, i32 0, i32 0
  %35 = load i64, i64* %34, align 1
  %36 = getelementptr { i64, i32 }, { i64, i32 }* %flipH.coerce, i32 0, i32 1
  %37 = load i32, i32* %36, align 1
  call void @print_keyinfo(i64 %35, i32 %37, i32 %31)
  %38 = load i32, i32* %c, align 4
  %idxprom28 = sext i32 %38 to i64
  %39 = load i32, i32* %r, align 4
  %idxprom29 = sext i32 %39 to i64
  %40 = load i32, i32* %player.addr, align 4
  %idxprom30 = sext i32 %40 to i64
  %arrayidx31 = getelementptr inbounds [2 x [32 x [32 x %struct.KeyInfo]]], [2 x [32 x [32 x %struct.KeyInfo]]]* @g_keyinfo, i32 0, i64 %idxprom30
  %arrayidx32 = getelementptr inbounds [32 x [32 x %struct.KeyInfo]], [32 x [32 x %struct.KeyInfo]]* %arrayidx31, i32 0, i64 %idxprom29
  %arrayidx33 = getelementptr inbounds [32 x %struct.KeyInfo], [32 x %struct.KeyInfo]* %arrayidx32, i32 0, i64 %idxprom28
  %flipVH = getelementptr inbounds %struct.KeyInfo, %struct.KeyInfo* %arrayidx33, i32 0, i32 3
  %41 = load i32, i32* %with_hashcode.addr, align 4
  %42 = bitcast { i64, i32 }* %flipVH.coerce to i8*
  %43 = bitcast %struct.KeyInfo_s* %flipVH to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %42, i8* %43, i64 12, i32 0, i1 false)
  %44 = getelementptr { i64, i32 }, { i64, i32 }* %flipVH.coerce, i32 0, i32 0
  %45 = load i64, i64* %44, align 1
  %46 = getelementptr { i64, i32 }, { i64, i32 }* %flipVH.coerce, i32 0, i32 1
  %47 = load i32, i32* %46, align 1
  call void @print_keyinfo(i64 %45, i32 %47, i32 %41)
  %call34 = call i32 @putchar(i32 10)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.3
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %48 = load i32, i32* %c, align 4
  %inc = add nsw i32 %48, 1
  store i32 %inc, i32* %c, align 4
  br label %for.cond.1

for.end:                                          ; preds = %for.cond.1
  br label %for.inc.35

for.inc.35:                                       ; preds = %for.end
  %49 = load i32, i32* %r, align 4
  %inc36 = add nsw i32 %49, 1
  store i32 %inc36, i32* %r, align 4
  br label %for.cond

for.end.37:                                       ; preds = %for.cond
  ret void
}

declare i32 @putchar(i32) #2

; Function Attrs: nounwind uwtable
define void @print_external() #0 {
entry:
  call void @print_keyinfo_table(i32 1, i32 1)
  ret void
}

; Function Attrs: nounwind uwtable
define void @print_current_state() #0 {
entry:
  call void @print_board(i32 0)
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i32 0, i32 0))
  call void @print_board_info(i32 0)
  store i32 0, i32* @g_print, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define i8* @current_search_state() #0 {
entry:
  store i32 1, i32* @g_print, align 4
  %0 = load i8*, i8** @current_search_state.str, align 8
  %cmp = icmp ne i8* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** @current_search_state.str, align 8
  call void @free(i8* %1) #1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load i64, i64* @g_num_nodes, align 8
  %call = call i8* @u64bit_to_string(i64 %2)
  %3 = load i32, i32* getelementptr inbounds ([128 x i32], [128 x i32]* @g_move_number, i32 0, i64 1), align 4
  %4 = load i32, i32* getelementptr inbounds ([128 x i32], [128 x i32]* @g_move_number, i32 0, i64 2), align 4
  %5 = load i32, i32* getelementptr inbounds ([128 x i32], [128 x i32]* @g_move_number, i32 0, i64 3), align 4
  %6 = load i32, i32* getelementptr inbounds ([128 x i32], [128 x i32]* @g_move_number, i32 0, i64 4), align 4
  %7 = load i32, i32* getelementptr inbounds ([128 x i32], [128 x i32]* @g_move_number, i32 0, i64 5), align 4
  %8 = load i32, i32* getelementptr inbounds ([128 x i32], [128 x i32]* @g_move_number, i32 0, i64 6), align 4
  %9 = load i32, i32* getelementptr inbounds ([128 x i32], [128 x i32]* @g_move_number, i32 0, i64 7), align 4
  %10 = load i32, i32* getelementptr inbounds ([128 x i32], [128 x i32]* @g_move_number, i32 0, i64 8), align 4
  %11 = load i32, i32* getelementptr inbounds ([128 x i32], [128 x i32]* @g_move_number, i32 0, i64 9), align 4
  %call1 = call i32 (i8**, i8*, ...) @asprintf(i8** @current_search_state.str, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.27, i32 0, i32 0), i8* %call, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8, i32 %9, i32 %10, i32 %11) #1
  %12 = load i8*, i8** @current_search_state.str, align 8
  ret i8* %12
}

; Function Attrs: nounwind
declare void @free(i8*) #3

; Function Attrs: nounwind
declare i32 @asprintf(i8**, i8*, ...) #3

declare i8* @u64bit_to_string(i64) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
