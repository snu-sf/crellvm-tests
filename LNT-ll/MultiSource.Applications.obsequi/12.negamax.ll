; ModuleID = './MultiSource.Applications.obsequi/12.negamax.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Basic_Info = type { i32, i32, i32 }
%struct.KeyInfo = type { %struct.KeyInfo_s, %struct.KeyInfo_s, %struct.KeyInfo_s, %struct.KeyInfo_s }
%struct.KeyInfo_s = type { i32, i32, i32 }
%struct.Hash_Key = type { [4 x i32], i32 }
%struct.Move = type { i32, i32, i32 }

@g_empty_squares = global i32 0, align 4
@g_print = global i32 0, align 4
@.str = private unnamed_addr constant [85 x i8] c"/home/juneyoung.lee/undef/llvm-test-suite/MultiSource/Applications/obsequi/negamax.c\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"Invalid player.\0A\00", align 1
@g_board_size = external global [2 x i32], align 4
@g_board = external global [2 x [32 x i32]], align 16
@countbits16 = external global [65536 x i32], align 16
@g_info_totals = external global [2 x %struct.Basic_Info], align 16
@.str.2 = private unnamed_addr constant [9 x i8] c"No moves\00", align 1
@g_num_nodes = common global i64 0, align 8
@starting_depth = internal global i32 0, align 4
@g_move_number = common global [128 x i32] zeroinitializer, align 16
@g_keyinfo = external global [2 x [32 x [32 x %struct.KeyInfo]]], align 16
@g_norm_hashkey = common global %struct.Hash_Key zeroinitializer, align 4
@g_flipV_hashkey = common global %struct.Hash_Key zeroinitializer, align 4
@g_flipH_hashkey = common global %struct.Hash_Key zeroinitializer, align 4
@g_flipVH_hashkey = common global %struct.Hash_Key zeroinitializer, align 4
@.str.3 = private unnamed_addr constant [29 x i8] c"Move (%d,%d), value %d: %s.\0A\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"alpha %d, beta %d.\0A\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"Winner found: %d.\0A\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"oops.\00", align 1
@.str.7 = private unnamed_addr constant [35 x i8] c"The value is %d at a depth of %d.\0A\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"Nodes: %u.\0A\00", align 1
@g_first_move = common global [2 x [32 x [32 x i32]]] zeroinitializer, align 16
@stat_nth_try = internal global [40 x [10 x i32]] zeroinitializer, align 16
@stat_cutoffs = internal global [40 x i32] zeroinitializer, align 16
@stat_nodes = internal global [40 x i32] zeroinitializer, align 16
@.str.9 = private unnamed_addr constant [15 x i8] c"%d %d %d %d.\0A\0A\00", align 1
@cut1 = internal global i32 0, align 4
@cut2 = internal global i32 0, align 4
@cut3 = internal global i32 0, align 4
@cut4 = internal global i32 0, align 4
@.str.10 = private unnamed_addr constant [28 x i8] c"cutoffs depth %d: (%d) %d -\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c" %d\00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c" >%d.\0A\00", align 1
@.str.13 = private unnamed_addr constant [28 x i8] c"Should always have a move.\0A\00", align 1

; Function Attrs: nounwind uwtable
define i32 @search_for_move(i8 signext %dir, i32* %row, i32* %col, i64* %nodes) #0 {
entry:
  %retval = alloca i32, align 4
  %dir.addr = alloca i8, align 1
  %row.addr = alloca i32*, align 8
  %col.addr = alloca i32*, align 8
  %nodes.addr = alloca i64*, align 8
  %d = alloca i32, align 4
  %i = alloca i32, align 4
  %value = alloca i32, align 4
  %num_moves = alloca i32, align 4
  %movelist = alloca [256 x %struct.Move], align 16
  %whos_turn = alloca i32, align 4
  %forcefirst = alloca %struct.Move, align 4
  %opponent = alloca i32, align 4
  %forcefirst.coerce = alloca { i64, i32 }
  %alpha = alloca i32, align 4
  %beta = alloca i32, align 4
  %arrayidx56.coerce = alloca { i64, i32 }
  %arrayidx386.coerce = alloca { i64, i32 }
  %rem768 = alloca i32, align 4
  %swp = alloca %struct.Move, align 4
  %max = alloca i32, align 4
  %index = alloca i32, align 4
  %j = alloca i32, align 4
  store i8 %dir, i8* %dir.addr, align 1
  store i32* %row, i32** %row.addr, align 8
  store i32* %col, i32** %col.addr, align 8
  store i64* %nodes, i64** %nodes.addr, align 8
  store i32 0, i32* %value, align 4
  %0 = load i8, i8* %dir.addr, align 1
  %conv = sext i8 %0 to i32
  %call = call i32 @toupper(i32 %conv) #4
  %cmp = icmp eq i32 %call, 86
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 1, i32* %whos_turn, align 4
  br label %if.end.8

if.else:                                          ; preds = %entry
  %1 = load i8, i8* %dir.addr, align 1
  %conv2 = sext i8 %1 to i32
  %call3 = call i32 @toupper(i32 %conv2) #4
  %cmp4 = icmp eq i32 %call3, 72
  br i1 %cmp4, label %if.then.6, label %if.else.7

if.then.6:                                        ; preds = %if.else
  store i32 0, i32* %whos_turn, align 4
  br label %if.end

if.else.7:                                        ; preds = %if.else
  call void (i8*, i32, i32, i8*, ...) @_fatal_error_aux(i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str, i32 0, i32 0), i32 125, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i32 0, i32 0))
  call void @exit(i32 1) #5
  unreachable

if.end:                                           ; preds = %if.then.6
  br label %if.end.8

if.end.8:                                         ; preds = %if.end, %if.then
  store i32 0, i32* @g_empty_squares, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.8
  %2 = load i32, i32* %i, align 4
  %3 = load i32, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @g_board_size, i32 0, i64 0), align 4
  %cmp9 = icmp slt i32 %2, %3
  br i1 %cmp9, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %i, align 4
  %add = add nsw i32 %4, 1
  %idxprom = sext i32 %add to i64
  %arrayidx = getelementptr inbounds [32 x i32], [32 x i32]* getelementptr inbounds ([2 x [32 x i32]], [2 x [32 x i32]]* @g_board, i32 0, i64 0), i32 0, i64 %idxprom
  %5 = load i32, i32* %arrayidx, align 4
  %neg = xor i32 %5, -1
  %and = and i32 %neg, 65535
  %idxprom11 = zext i32 %and to i64
  %arrayidx12 = getelementptr inbounds [65536 x i32], [65536 x i32]* @countbits16, i32 0, i64 %idxprom11
  %6 = load i32, i32* %arrayidx12, align 4
  %7 = load i32, i32* %i, align 4
  %add13 = add nsw i32 %7, 1
  %idxprom14 = sext i32 %add13 to i64
  %arrayidx15 = getelementptr inbounds [32 x i32], [32 x i32]* getelementptr inbounds ([2 x [32 x i32]], [2 x [32 x i32]]* @g_board, i32 0, i64 0), i32 0, i64 %idxprom14
  %8 = load i32, i32* %arrayidx15, align 4
  %neg16 = xor i32 %8, -1
  %shr = lshr i32 %neg16, 16
  %and17 = and i32 %shr, 65535
  %idxprom18 = zext i32 %and17 to i64
  %arrayidx19 = getelementptr inbounds [65536 x i32], [65536 x i32]* @countbits16, i32 0, i64 %idxprom18
  %9 = load i32, i32* %arrayidx19, align 4
  %add20 = add nsw i32 %6, %9
  %10 = load i32, i32* @g_empty_squares, align 4
  %add21 = add nsw i32 %10, %add20
  store i32 %add21, i32* @g_empty_squares, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %11 = load i32, i32* %i, align 4
  %inc = add nsw i32 %11, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  call void @init_stats()
  %12 = load i32, i32* %whos_turn, align 4
  %xor = xor i32 %12, 1
  store i32 %xor, i32* %opponent, align 4
  %13 = load i32, i32* %whos_turn, align 4
  %idxprom22 = sext i32 %13 to i64
  %arrayidx23 = getelementptr inbounds [2 x %struct.Basic_Info], [2 x %struct.Basic_Info]* @g_info_totals, i32 0, i64 %idxprom22
  %safe = getelementptr inbounds %struct.Basic_Info, %struct.Basic_Info* %arrayidx23, i32 0, i32 0
  %14 = load i32, i32* %safe, align 4
  %15 = load i32, i32* %opponent, align 4
  %idxprom24 = sext i32 %15 to i64
  %arrayidx25 = getelementptr inbounds [2 x %struct.Basic_Info], [2 x %struct.Basic_Info]* @g_info_totals, i32 0, i64 %idxprom24
  %real = getelementptr inbounds %struct.Basic_Info, %struct.Basic_Info* %arrayidx25, i32 0, i32 1
  %16 = load i32, i32* %real, align 4
  %cmp26 = icmp sgt i32 %14, %16
  br i1 %cmp26, label %if.then.28, label %if.end.29

if.then.28:                                       ; preds = %for.end
  %17 = load i32*, i32** %row.addr, align 8
  store i32 -1, i32* %17, align 4
  %18 = load i32*, i32** %col.addr, align 8
  store i32 -1, i32* %18, align 4
  %19 = load i64*, i64** %nodes.addr, align 8
  store i64 0, i64* %19, align 8
  store i32 5000, i32* %retval
  br label %return

if.end.29:                                        ; preds = %for.end
  %20 = load i32, i32* %opponent, align 4
  %idxprom30 = sext i32 %20 to i64
  %arrayidx31 = getelementptr inbounds [2 x %struct.Basic_Info], [2 x %struct.Basic_Info]* @g_info_totals, i32 0, i64 %idxprom30
  %safe32 = getelementptr inbounds %struct.Basic_Info, %struct.Basic_Info* %arrayidx31, i32 0, i32 0
  %21 = load i32, i32* %safe32, align 4
  %22 = load i32, i32* %whos_turn, align 4
  %idxprom33 = sext i32 %22 to i64
  %arrayidx34 = getelementptr inbounds [2 x %struct.Basic_Info], [2 x %struct.Basic_Info]* @g_info_totals, i32 0, i64 %idxprom33
  %real35 = getelementptr inbounds %struct.Basic_Info, %struct.Basic_Info* %arrayidx34, i32 0, i32 1
  %23 = load i32, i32* %real35, align 4
  %cmp36 = icmp sge i32 %21, %23
  br i1 %cmp36, label %if.then.38, label %if.end.39

if.then.38:                                       ; preds = %if.end.29
  %24 = load i32*, i32** %row.addr, align 8
  store i32 -1, i32* %24, align 4
  %25 = load i32*, i32** %col.addr, align 8
  store i32 -1, i32* %25, align 4
  %26 = load i64*, i64** %nodes.addr, align 8
  store i64 0, i64* %26, align 8
  store i32 -5000, i32* %retval
  br label %return

if.end.39:                                        ; preds = %if.end.29
  %arraydecay = getelementptr inbounds [256 x %struct.Move], [256 x %struct.Move]* %movelist, i32 0, i32 0
  %27 = load i32, i32* %whos_turn, align 4
  %call40 = call i32 @move_generator(%struct.Move* %arraydecay, i32 %27)
  store i32 %call40, i32* %num_moves, align 4
  %28 = load i32, i32* %num_moves, align 4
  %cmp41 = icmp eq i32 %28, 0
  br i1 %cmp41, label %if.then.43, label %if.end.44

if.then.43:                                       ; preds = %if.end.39
  call void (i8*, i32, i32, i8*, ...) @_fatal_error_aux(i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str, i32 0, i32 0), i32 159, i32 1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0))
  br label %if.end.44

if.end.44:                                        ; preds = %if.then.43, %if.end.39
  %array_index = getelementptr inbounds %struct.Move, %struct.Move* %forcefirst, i32 0, i32 0
  store i32 -1, i32* %array_index, align 4
  %arraydecay45 = getelementptr inbounds [256 x %struct.Move], [256 x %struct.Move]* %movelist, i32 0, i32 0
  %29 = load i32, i32* %num_moves, align 4
  %30 = load i32, i32* %whos_turn, align 4
  %31 = bitcast { i64, i32 }* %forcefirst.coerce to i8*
  %32 = bitcast %struct.Move* %forcefirst to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %31, i8* %32, i64 12, i32 0, i1 false)
  %33 = getelementptr { i64, i32 }, { i64, i32 }* %forcefirst.coerce, i32 0, i32 0
  %34 = load i64, i64* %33, align 1
  %35 = getelementptr { i64, i32 }, { i64, i32 }* %forcefirst.coerce, i32 0, i32 1
  %36 = load i32, i32* %35, align 1
  call void @score_and_get_first(%struct.Move* %arraydecay45, i32 %29, i32 %30, i64 %34, i32 %36)
  %arraydecay46 = getelementptr inbounds [256 x %struct.Move], [256 x %struct.Move]* %movelist, i32 0, i32 0
  %37 = load i32, i32* %num_moves, align 4
  call void @sort_moves(%struct.Move* %arraydecay46, i32 1, i32 %37)
  store i32 1, i32* %d, align 4
  br label %for.cond.47

for.cond.47:                                      ; preds = %for.inc.849, %if.end.44
  %38 = load i32, i32* %d, align 4
  %cmp48 = icmp slt i32 %38, 50
  br i1 %cmp48, label %for.body.50, label %for.end.851

for.body.50:                                      ; preds = %for.cond.47
  store i32 -5000, i32* %alpha, align 4
  store i32 5000, i32* %beta, align 4
  store i64 0, i64* @g_num_nodes, align 8
  call void @init_stats()
  %39 = load i32, i32* %d, align 4
  store i32 %39, i32* @starting_depth, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.51

for.cond.51:                                      ; preds = %for.inc.738, %for.body.50
  %40 = load i32, i32* %i, align 4
  %41 = load i32, i32* %num_moves, align 4
  %cmp52 = icmp slt i32 %40, %41
  br i1 %cmp52, label %for.body.54, label %for.end.740

for.body.54:                                      ; preds = %for.cond.51
  call void (...) @set_position_values()
  %42 = load i32, i32* %i, align 4
  store i32 %42, i32* getelementptr inbounds ([128 x i32], [128 x i32]* @g_move_number, i32 0, i64 0), align 4
  %43 = load i32, i32* @g_empty_squares, align 4
  %sub = sub nsw i32 %43, 2
  store i32 %sub, i32* @g_empty_squares, align 4
  %44 = load i32, i32* %i, align 4
  %idxprom55 = sext i32 %44 to i64
  %arrayidx56 = getelementptr inbounds [256 x %struct.Move], [256 x %struct.Move]* %movelist, i32 0, i64 %idxprom55
  %45 = load i32, i32* %whos_turn, align 4
  %46 = bitcast { i64, i32 }* %arrayidx56.coerce to i8*
  %47 = bitcast %struct.Move* %arrayidx56 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %46, i8* %47, i64 12, i32 0, i1 false)
  %48 = getelementptr { i64, i32 }, { i64, i32 }* %arrayidx56.coerce, i32 0, i32 0
  %49 = load i64, i64* %48, align 1
  %50 = getelementptr { i64, i32 }, { i64, i32 }* %arrayidx56.coerce, i32 0, i32 1
  %51 = load i32, i32* %50, align 1
  call void @toggle_move(i64 %49, i32 %51, i32 %45)
  %52 = load i32, i32* %i, align 4
  %idxprom57 = sext i32 %52 to i64
  %arrayidx58 = getelementptr inbounds [256 x %struct.Move], [256 x %struct.Move]* %movelist, i32 0, i64 %idxprom57
  %mask_index = getelementptr inbounds %struct.Move, %struct.Move* %arrayidx58, i32 0, i32 1
  %53 = load i32, i32* %mask_index, align 4
  %idxprom59 = sext i32 %53 to i64
  %54 = load i32, i32* %i, align 4
  %idxprom60 = sext i32 %54 to i64
  %arrayidx61 = getelementptr inbounds [256 x %struct.Move], [256 x %struct.Move]* %movelist, i32 0, i64 %idxprom60
  %array_index62 = getelementptr inbounds %struct.Move, %struct.Move* %arrayidx61, i32 0, i32 0
  %55 = load i32, i32* %array_index62, align 4
  %idxprom63 = sext i32 %55 to i64
  %56 = load i32, i32* %whos_turn, align 4
  %idxprom64 = sext i32 %56 to i64
  %arrayidx65 = getelementptr inbounds [2 x [32 x [32 x %struct.KeyInfo]]], [2 x [32 x [32 x %struct.KeyInfo]]]* @g_keyinfo, i32 0, i64 %idxprom64
  %arrayidx66 = getelementptr inbounds [32 x [32 x %struct.KeyInfo]], [32 x [32 x %struct.KeyInfo]]* %arrayidx65, i32 0, i64 %idxprom63
  %arrayidx67 = getelementptr inbounds [32 x %struct.KeyInfo], [32 x %struct.KeyInfo]* %arrayidx66, i32 0, i64 %idxprom59
  %norm = getelementptr inbounds %struct.KeyInfo, %struct.KeyInfo* %arrayidx67, i32 0, i32 0
  %bit1_index = getelementptr inbounds %struct.KeyInfo_s, %struct.KeyInfo_s* %norm, i32 0, i32 0
  %57 = load i32, i32* %bit1_index, align 4
  %rem = srem i32 %57, 32
  %shl = shl i32 1, %rem
  %58 = load i32, i32* %i, align 4
  %idxprom68 = sext i32 %58 to i64
  %arrayidx69 = getelementptr inbounds [256 x %struct.Move], [256 x %struct.Move]* %movelist, i32 0, i64 %idxprom68
  %mask_index70 = getelementptr inbounds %struct.Move, %struct.Move* %arrayidx69, i32 0, i32 1
  %59 = load i32, i32* %mask_index70, align 4
  %idxprom71 = sext i32 %59 to i64
  %60 = load i32, i32* %i, align 4
  %idxprom72 = sext i32 %60 to i64
  %arrayidx73 = getelementptr inbounds [256 x %struct.Move], [256 x %struct.Move]* %movelist, i32 0, i64 %idxprom72
  %array_index74 = getelementptr inbounds %struct.Move, %struct.Move* %arrayidx73, i32 0, i32 0
  %61 = load i32, i32* %array_index74, align 4
  %idxprom75 = sext i32 %61 to i64
  %62 = load i32, i32* %whos_turn, align 4
  %idxprom76 = sext i32 %62 to i64
  %arrayidx77 = getelementptr inbounds [2 x [32 x [32 x %struct.KeyInfo]]], [2 x [32 x [32 x %struct.KeyInfo]]]* @g_keyinfo, i32 0, i64 %idxprom76
  %arrayidx78 = getelementptr inbounds [32 x [32 x %struct.KeyInfo]], [32 x [32 x %struct.KeyInfo]]* %arrayidx77, i32 0, i64 %idxprom75
  %arrayidx79 = getelementptr inbounds [32 x %struct.KeyInfo], [32 x %struct.KeyInfo]* %arrayidx78, i32 0, i64 %idxprom71
  %norm80 = getelementptr inbounds %struct.KeyInfo, %struct.KeyInfo* %arrayidx79, i32 0, i32 0
  %bit1_index81 = getelementptr inbounds %struct.KeyInfo_s, %struct.KeyInfo_s* %norm80, i32 0, i32 0
  %63 = load i32, i32* %bit1_index81, align 4
  %div = sdiv i32 %63, 32
  %idxprom82 = sext i32 %div to i64
  %arrayidx83 = getelementptr inbounds [4 x i32], [4 x i32]* getelementptr inbounds (%struct.Hash_Key, %struct.Hash_Key* @g_norm_hashkey, i32 0, i32 0), i32 0, i64 %idxprom82
  %64 = load i32, i32* %arrayidx83, align 4
  %xor84 = xor i32 %64, %shl
  store i32 %xor84, i32* %arrayidx83, align 4
  %65 = load i32, i32* %i, align 4
  %idxprom85 = sext i32 %65 to i64
  %arrayidx86 = getelementptr inbounds [256 x %struct.Move], [256 x %struct.Move]* %movelist, i32 0, i64 %idxprom85
  %mask_index87 = getelementptr inbounds %struct.Move, %struct.Move* %arrayidx86, i32 0, i32 1
  %66 = load i32, i32* %mask_index87, align 4
  %idxprom88 = sext i32 %66 to i64
  %67 = load i32, i32* %i, align 4
  %idxprom89 = sext i32 %67 to i64
  %arrayidx90 = getelementptr inbounds [256 x %struct.Move], [256 x %struct.Move]* %movelist, i32 0, i64 %idxprom89
  %array_index91 = getelementptr inbounds %struct.Move, %struct.Move* %arrayidx90, i32 0, i32 0
  %68 = load i32, i32* %array_index91, align 4
  %idxprom92 = sext i32 %68 to i64
  %69 = load i32, i32* %whos_turn, align 4
  %idxprom93 = sext i32 %69 to i64
  %arrayidx94 = getelementptr inbounds [2 x [32 x [32 x %struct.KeyInfo]]], [2 x [32 x [32 x %struct.KeyInfo]]]* @g_keyinfo, i32 0, i64 %idxprom93
  %arrayidx95 = getelementptr inbounds [32 x [32 x %struct.KeyInfo]], [32 x [32 x %struct.KeyInfo]]* %arrayidx94, i32 0, i64 %idxprom92
  %arrayidx96 = getelementptr inbounds [32 x %struct.KeyInfo], [32 x %struct.KeyInfo]* %arrayidx95, i32 0, i64 %idxprom88
  %norm97 = getelementptr inbounds %struct.KeyInfo, %struct.KeyInfo* %arrayidx96, i32 0, i32 0
  %bit2_index = getelementptr inbounds %struct.KeyInfo_s, %struct.KeyInfo_s* %norm97, i32 0, i32 1
  %70 = load i32, i32* %bit2_index, align 4
  %rem98 = srem i32 %70, 32
  %shl99 = shl i32 1, %rem98
  %71 = load i32, i32* %i, align 4
  %idxprom100 = sext i32 %71 to i64
  %arrayidx101 = getelementptr inbounds [256 x %struct.Move], [256 x %struct.Move]* %movelist, i32 0, i64 %idxprom100
  %mask_index102 = getelementptr inbounds %struct.Move, %struct.Move* %arrayidx101, i32 0, i32 1
  %72 = load i32, i32* %mask_index102, align 4
  %idxprom103 = sext i32 %72 to i64
  %73 = load i32, i32* %i, align 4
  %idxprom104 = sext i32 %73 to i64
  %arrayidx105 = getelementptr inbounds [256 x %struct.Move], [256 x %struct.Move]* %movelist, i32 0, i64 %idxprom104
  %array_index106 = getelementptr inbounds %struct.Move, %struct.Move* %arrayidx105, i32 0, i32 0
  %74 = load i32, i32* %array_index106, align 4
  %idxprom107 = sext i32 %74 to i64
  %75 = load i32, i32* %whos_turn, align 4
  %idxprom108 = sext i32 %75 to i64
  %arrayidx109 = getelementptr inbounds [2 x [32 x [32 x %struct.KeyInfo]]], [2 x [32 x [32 x %struct.KeyInfo]]]* @g_keyinfo, i32 0, i64 %idxprom108
  %arrayidx110 = getelementptr inbounds [32 x [32 x %struct.KeyInfo]], [32 x [32 x %struct.KeyInfo]]* %arrayidx109, i32 0, i64 %idxprom107
  %arrayidx111 = getelementptr inbounds [32 x %struct.KeyInfo], [32 x %struct.KeyInfo]* %arrayidx110, i32 0, i64 %idxprom103
  %norm112 = getelementptr inbounds %struct.KeyInfo, %struct.KeyInfo* %arrayidx111, i32 0, i32 0
  %bit2_index113 = getelementptr inbounds %struct.KeyInfo_s, %struct.KeyInfo_s* %norm112, i32 0, i32 1
  %76 = load i32, i32* %bit2_index113, align 4
  %div114 = sdiv i32 %76, 32
  %idxprom115 = sext i32 %div114 to i64
  %arrayidx116 = getelementptr inbounds [4 x i32], [4 x i32]* getelementptr inbounds (%struct.Hash_Key, %struct.Hash_Key* @g_norm_hashkey, i32 0, i32 0), i32 0, i64 %idxprom115
  %77 = load i32, i32* %arrayidx116, align 4
  %xor117 = xor i32 %77, %shl99
  store i32 %xor117, i32* %arrayidx116, align 4
  %78 = load i32, i32* %i, align 4
  %idxprom118 = sext i32 %78 to i64
  %arrayidx119 = getelementptr inbounds [256 x %struct.Move], [256 x %struct.Move]* %movelist, i32 0, i64 %idxprom118
  %mask_index120 = getelementptr inbounds %struct.Move, %struct.Move* %arrayidx119, i32 0, i32 1
  %79 = load i32, i32* %mask_index120, align 4
  %idxprom121 = sext i32 %79 to i64
  %80 = load i32, i32* %i, align 4
  %idxprom122 = sext i32 %80 to i64
  %arrayidx123 = getelementptr inbounds [256 x %struct.Move], [256 x %struct.Move]* %movelist, i32 0, i64 %idxprom122
  %array_index124 = getelementptr inbounds %struct.Move, %struct.Move* %arrayidx123, i32 0, i32 0
  %81 = load i32, i32* %array_index124, align 4
  %idxprom125 = sext i32 %81 to i64
  %82 = load i32, i32* %whos_turn, align 4
  %idxprom126 = sext i32 %82 to i64
  %arrayidx127 = getelementptr inbounds [2 x [32 x [32 x %struct.KeyInfo]]], [2 x [32 x [32 x %struct.KeyInfo]]]* @g_keyinfo, i32 0, i64 %idxprom126
  %arrayidx128 = getelementptr inbounds [32 x [32 x %struct.KeyInfo]], [32 x [32 x %struct.KeyInfo]]* %arrayidx127, i32 0, i64 %idxprom125
  %arrayidx129 = getelementptr inbounds [32 x %struct.KeyInfo], [32 x %struct.KeyInfo]* %arrayidx128, i32 0, i64 %idxprom121
  %norm130 = getelementptr inbounds %struct.KeyInfo, %struct.KeyInfo* %arrayidx129, i32 0, i32 0
  %hash_code = getelementptr inbounds %struct.KeyInfo_s, %struct.KeyInfo_s* %norm130, i32 0, i32 2
  %83 = load i32, i32* %hash_code, align 4
  %84 = load i32, i32* getelementptr inbounds (%struct.Hash_Key, %struct.Hash_Key* @g_norm_hashkey, i32 0, i32 1), align 4
  %xor131 = xor i32 %84, %83
  store i32 %xor131, i32* getelementptr inbounds (%struct.Hash_Key, %struct.Hash_Key* @g_norm_hashkey, i32 0, i32 1), align 4
  %85 = load i32, i32* %i, align 4
  %idxprom132 = sext i32 %85 to i64
  %arrayidx133 = getelementptr inbounds [256 x %struct.Move], [256 x %struct.Move]* %movelist, i32 0, i64 %idxprom132
  %mask_index134 = getelementptr inbounds %struct.Move, %struct.Move* %arrayidx133, i32 0, i32 1
  %86 = load i32, i32* %mask_index134, align 4
  %idxprom135 = sext i32 %86 to i64
  %87 = load i32, i32* %i, align 4
  %idxprom136 = sext i32 %87 to i64
  %arrayidx137 = getelementptr inbounds [256 x %struct.Move], [256 x %struct.Move]* %movelist, i32 0, i64 %idxprom136
  %array_index138 = getelementptr inbounds %struct.Move, %struct.Move* %arrayidx137, i32 0, i32 0
  %88 = load i32, i32* %array_index138, align 4
  %idxprom139 = sext i32 %88 to i64
  %89 = load i32, i32* %whos_turn, align 4
  %idxprom140 = sext i32 %89 to i64
  %arrayidx141 = getelementptr inbounds [2 x [32 x [32 x %struct.KeyInfo]]], [2 x [32 x [32 x %struct.KeyInfo]]]* @g_keyinfo, i32 0, i64 %idxprom140
  %arrayidx142 = getelementptr inbounds [32 x [32 x %struct.KeyInfo]], [32 x [32 x %struct.KeyInfo]]* %arrayidx141, i32 0, i64 %idxprom139
  %arrayidx143 = getelementptr inbounds [32 x %struct.KeyInfo], [32 x %struct.KeyInfo]* %arrayidx142, i32 0, i64 %idxprom135
  %flipV = getelementptr inbounds %struct.KeyInfo, %struct.KeyInfo* %arrayidx143, i32 0, i32 1
  %bit1_index144 = getelementptr inbounds %struct.KeyInfo_s, %struct.KeyInfo_s* %flipV, i32 0, i32 0
  %90 = load i32, i32* %bit1_index144, align 4
  %rem145 = srem i32 %90, 32
  %shl146 = shl i32 1, %rem145
  %91 = load i32, i32* %i, align 4
  %idxprom147 = sext i32 %91 to i64
  %arrayidx148 = getelementptr inbounds [256 x %struct.Move], [256 x %struct.Move]* %movelist, i32 0, i64 %idxprom147
  %mask_index149 = getelementptr inbounds %struct.Move, %struct.Move* %arrayidx148, i32 0, i32 1
  %92 = load i32, i32* %mask_index149, align 4
  %idxprom150 = sext i32 %92 to i64
  %93 = load i32, i32* %i, align 4
  %idxprom151 = sext i32 %93 to i64
  %arrayidx152 = getelementptr inbounds [256 x %struct.Move], [256 x %struct.Move]* %movelist, i32 0, i64 %idxprom151
  %array_index153 = getelementptr inbounds %struct.Move, %struct.Move* %arrayidx152, i32 0, i32 0
  %94 = load i32, i32* %array_index153, align 4
  %idxprom154 = sext i32 %94 to i64
  %95 = load i32, i32* %whos_turn, align 4
  %idxprom155 = sext i32 %95 to i64
  %arrayidx156 = getelementptr inbounds [2 x [32 x [32 x %struct.KeyInfo]]], [2 x [32 x [32 x %struct.KeyInfo]]]* @g_keyinfo, i32 0, i64 %idxprom155
  %arrayidx157 = getelementptr inbounds [32 x [32 x %struct.KeyInfo]], [32 x [32 x %struct.KeyInfo]]* %arrayidx156, i32 0, i64 %idxprom154
  %arrayidx158 = getelementptr inbounds [32 x %struct.KeyInfo], [32 x %struct.KeyInfo]* %arrayidx157, i32 0, i64 %idxprom150
  %flipV159 = getelementptr inbounds %struct.KeyInfo, %struct.KeyInfo* %arrayidx158, i32 0, i32 1
  %bit1_index160 = getelementptr inbounds %struct.KeyInfo_s, %struct.KeyInfo_s* %flipV159, i32 0, i32 0
  %96 = load i32, i32* %bit1_index160, align 4
  %div161 = sdiv i32 %96, 32
  %idxprom162 = sext i32 %div161 to i64
  %arrayidx163 = getelementptr inbounds [4 x i32], [4 x i32]* getelementptr inbounds (%struct.Hash_Key, %struct.Hash_Key* @g_flipV_hashkey, i32 0, i32 0), i32 0, i64 %idxprom162
  %97 = load i32, i32* %arrayidx163, align 4
  %xor164 = xor i32 %97, %shl146
  store i32 %xor164, i32* %arrayidx163, align 4
  %98 = load i32, i32* %i, align 4
  %idxprom165 = sext i32 %98 to i64
  %arrayidx166 = getelementptr inbounds [256 x %struct.Move], [256 x %struct.Move]* %movelist, i32 0, i64 %idxprom165
  %mask_index167 = getelementptr inbounds %struct.Move, %struct.Move* %arrayidx166, i32 0, i32 1
  %99 = load i32, i32* %mask_index167, align 4
  %idxprom168 = sext i32 %99 to i64
  %100 = load i32, i32* %i, align 4
  %idxprom169 = sext i32 %100 to i64
  %arrayidx170 = getelementptr inbounds [256 x %struct.Move], [256 x %struct.Move]* %movelist, i32 0, i64 %idxprom169
  %array_index171 = getelementptr inbounds %struct.Move, %struct.Move* %arrayidx170, i32 0, i32 0
  %101 = load i32, i32* %array_index171, align 4
  %idxprom172 = sext i32 %101 to i64
  %102 = load i32, i32* %whos_turn, align 4
  %idxprom173 = sext i32 %102 to i64
  %arrayidx174 = getelementptr inbounds [2 x [32 x [32 x %struct.KeyInfo]]], [2 x [32 x [32 x %struct.KeyInfo]]]* @g_keyinfo, i32 0, i64 %idxprom173
  %arrayidx175 = getelementptr inbounds [32 x [32 x %struct.KeyInfo]], [32 x [32 x %struct.KeyInfo]]* %arrayidx174, i32 0, i64 %idxprom172
  %arrayidx176 = getelementptr inbounds [32 x %struct.KeyInfo], [32 x %struct.KeyInfo]* %arrayidx175, i32 0, i64 %idxprom168
  %flipV177 = getelementptr inbounds %struct.KeyInfo, %struct.KeyInfo* %arrayidx176, i32 0, i32 1
  %bit2_index178 = getelementptr inbounds %struct.KeyInfo_s, %struct.KeyInfo_s* %flipV177, i32 0, i32 1
  %103 = load i32, i32* %bit2_index178, align 4
  %rem179 = srem i32 %103, 32
  %shl180 = shl i32 1, %rem179
  %104 = load i32, i32* %i, align 4
  %idxprom181 = sext i32 %104 to i64
  %arrayidx182 = getelementptr inbounds [256 x %struct.Move], [256 x %struct.Move]* %movelist, i32 0, i64 %idxprom181
  %mask_index183 = getelementptr inbounds %struct.Move, %struct.Move* %arrayidx182, i32 0, i32 1
  %105 = load i32, i32* %mask_index183, align 4
  %idxprom184 = sext i32 %105 to i64
  %106 = load i32, i32* %i, align 4
  %idxprom185 = sext i32 %106 to i64
  %arrayidx186 = getelementptr inbounds [256 x %struct.Move], [256 x %struct.Move]* %movelist, i32 0, i64 %idxprom185
  %array_index187 = getelementptr inbounds %struct.Move, %struct.Move* %arrayidx186, i32 0, i32 0
  %107 = load i32, i32* %array_index187, align 4
  %idxprom188 = sext i32 %107 to i64
  %108 = load i32, i32* %whos_turn, align 4
  %idxprom189 = sext i32 %108 to i64
  %arrayidx190 = getelementptr inbounds [2 x [32 x [32 x %struct.KeyInfo]]], [2 x [32 x [32 x %struct.KeyInfo]]]* @g_keyinfo, i32 0, i64 %idxprom189
  %arrayidx191 = getelementptr inbounds [32 x [32 x %struct.KeyInfo]], [32 x [32 x %struct.KeyInfo]]* %arrayidx190, i32 0, i64 %idxprom188
  %arrayidx192 = getelementptr inbounds [32 x %struct.KeyInfo], [32 x %struct.KeyInfo]* %arrayidx191, i32 0, i64 %idxprom184
  %flipV193 = getelementptr inbounds %struct.KeyInfo, %struct.KeyInfo* %arrayidx192, i32 0, i32 1
  %bit2_index194 = getelementptr inbounds %struct.KeyInfo_s, %struct.KeyInfo_s* %flipV193, i32 0, i32 1
  %109 = load i32, i32* %bit2_index194, align 4
  %div195 = sdiv i32 %109, 32
  %idxprom196 = sext i32 %div195 to i64
  %arrayidx197 = getelementptr inbounds [4 x i32], [4 x i32]* getelementptr inbounds (%struct.Hash_Key, %struct.Hash_Key* @g_flipV_hashkey, i32 0, i32 0), i32 0, i64 %idxprom196
  %110 = load i32, i32* %arrayidx197, align 4
  %xor198 = xor i32 %110, %shl180
  store i32 %xor198, i32* %arrayidx197, align 4
  %111 = load i32, i32* %i, align 4
  %idxprom199 = sext i32 %111 to i64
  %arrayidx200 = getelementptr inbounds [256 x %struct.Move], [256 x %struct.Move]* %movelist, i32 0, i64 %idxprom199
  %mask_index201 = getelementptr inbounds %struct.Move, %struct.Move* %arrayidx200, i32 0, i32 1
  %112 = load i32, i32* %mask_index201, align 4
  %idxprom202 = sext i32 %112 to i64
  %113 = load i32, i32* %i, align 4
  %idxprom203 = sext i32 %113 to i64
  %arrayidx204 = getelementptr inbounds [256 x %struct.Move], [256 x %struct.Move]* %movelist, i32 0, i64 %idxprom203
  %array_index205 = getelementptr inbounds %struct.Move, %struct.Move* %arrayidx204, i32 0, i32 0
  %114 = load i32, i32* %array_index205, align 4
  %idxprom206 = sext i32 %114 to i64
  %115 = load i32, i32* %whos_turn, align 4
  %idxprom207 = sext i32 %115 to i64
  %arrayidx208 = getelementptr inbounds [2 x [32 x [32 x %struct.KeyInfo]]], [2 x [32 x [32 x %struct.KeyInfo]]]* @g_keyinfo, i32 0, i64 %idxprom207
  %arrayidx209 = getelementptr inbounds [32 x [32 x %struct.KeyInfo]], [32 x [32 x %struct.KeyInfo]]* %arrayidx208, i32 0, i64 %idxprom206
  %arrayidx210 = getelementptr inbounds [32 x %struct.KeyInfo], [32 x %struct.KeyInfo]* %arrayidx209, i32 0, i64 %idxprom202
  %flipV211 = getelementptr inbounds %struct.KeyInfo, %struct.KeyInfo* %arrayidx210, i32 0, i32 1
  %hash_code212 = getelementptr inbounds %struct.KeyInfo_s, %struct.KeyInfo_s* %flipV211, i32 0, i32 2
  %116 = load i32, i32* %hash_code212, align 4
  %117 = load i32, i32* getelementptr inbounds (%struct.Hash_Key, %struct.Hash_Key* @g_flipV_hashkey, i32 0, i32 1), align 4
  %xor213 = xor i32 %117, %116
  store i32 %xor213, i32* getelementptr inbounds (%struct.Hash_Key, %struct.Hash_Key* @g_flipV_hashkey, i32 0, i32 1), align 4
  %118 = load i32, i32* %i, align 4
  %idxprom214 = sext i32 %118 to i64
  %arrayidx215 = getelementptr inbounds [256 x %struct.Move], [256 x %struct.Move]* %movelist, i32 0, i64 %idxprom214
  %mask_index216 = getelementptr inbounds %struct.Move, %struct.Move* %arrayidx215, i32 0, i32 1
  %119 = load i32, i32* %mask_index216, align 4
  %idxprom217 = sext i32 %119 to i64
  %120 = load i32, i32* %i, align 4
  %idxprom218 = sext i32 %120 to i64
  %arrayidx219 = getelementptr inbounds [256 x %struct.Move], [256 x %struct.Move]* %movelist, i32 0, i64 %idxprom218
  %array_index220 = getelementptr inbounds %struct.Move, %struct.Move* %arrayidx219, i32 0, i32 0
  %121 = load i32, i32* %array_index220, align 4
  %idxprom221 = sext i32 %121 to i64
  %122 = load i32, i32* %whos_turn, align 4
  %idxprom222 = sext i32 %122 to i64
  %arrayidx223 = getelementptr inbounds [2 x [32 x [32 x %struct.KeyInfo]]], [2 x [32 x [32 x %struct.KeyInfo]]]* @g_keyinfo, i32 0, i64 %idxprom222
  %arrayidx224 = getelementptr inbounds [32 x [32 x %struct.KeyInfo]], [32 x [32 x %struct.KeyInfo]]* %arrayidx223, i32 0, i64 %idxprom221
  %arrayidx225 = getelementptr inbounds [32 x %struct.KeyInfo], [32 x %struct.KeyInfo]* %arrayidx224, i32 0, i64 %idxprom217
  %flipH = getelementptr inbounds %struct.KeyInfo, %struct.KeyInfo* %arrayidx225, i32 0, i32 2
  %bit1_index226 = getelementptr inbounds %struct.KeyInfo_s, %struct.KeyInfo_s* %flipH, i32 0, i32 0
  %123 = load i32, i32* %bit1_index226, align 4
  %rem227 = srem i32 %123, 32
  %shl228 = shl i32 1, %rem227
  %124 = load i32, i32* %i, align 4
  %idxprom229 = sext i32 %124 to i64
  %arrayidx230 = getelementptr inbounds [256 x %struct.Move], [256 x %struct.Move]* %movelist, i32 0, i64 %idxprom229
  %mask_index231 = getelementptr inbounds %struct.Move, %struct.Move* %arrayidx230, i32 0, i32 1
  %125 = load i32, i32* %mask_index231, align 4
  %idxprom232 = sext i32 %125 to i64
  %126 = load i32, i32* %i, align 4
  %idxprom233 = sext i32 %126 to i64
  %arrayidx234 = getelementptr inbounds [256 x %struct.Move], [256 x %struct.Move]* %movelist, i32 0, i64 %idxprom233
  %array_index235 = getelementptr inbounds %struct.Move, %struct.Move* %arrayidx234, i32 0, i32 0
  %127 = load i32, i32* %array_index235, align 4
  %idxprom236 = sext i32 %127 to i64
  %128 = load i32, i32* %whos_turn, align 4
  %idxprom237 = sext i32 %128 to i64
  %arrayidx238 = getelementptr inbounds [2 x [32 x [32 x %struct.KeyInfo]]], [2 x [32 x [32 x %struct.KeyInfo]]]* @g_keyinfo, i32 0, i64 %idxprom237
  %arrayidx239 = getelementptr inbounds [32 x [32 x %struct.KeyInfo]], [32 x [32 x %struct.KeyInfo]]* %arrayidx238, i32 0, i64 %idxprom236
  %arrayidx240 = getelementptr inbounds [32 x %struct.KeyInfo], [32 x %struct.KeyInfo]* %arrayidx239, i32 0, i64 %idxprom232
  %flipH241 = getelementptr inbounds %struct.KeyInfo, %struct.KeyInfo* %arrayidx240, i32 0, i32 2
  %bit1_index242 = getelementptr inbounds %struct.KeyInfo_s, %struct.KeyInfo_s* %flipH241, i32 0, i32 0
  %129 = load i32, i32* %bit1_index242, align 4
  %div243 = sdiv i32 %129, 32
  %idxprom244 = sext i32 %div243 to i64
  %arrayidx245 = getelementptr inbounds [4 x i32], [4 x i32]* getelementptr inbounds (%struct.Hash_Key, %struct.Hash_Key* @g_flipH_hashkey, i32 0, i32 0), i32 0, i64 %idxprom244
  %130 = load i32, i32* %arrayidx245, align 4
  %xor246 = xor i32 %130, %shl228
  store i32 %xor246, i32* %arrayidx245, align 4
  %131 = load i32, i32* %i, align 4
  %idxprom247 = sext i32 %131 to i64
  %arrayidx248 = getelementptr inbounds [256 x %struct.Move], [256 x %struct.Move]* %movelist, i32 0, i64 %idxprom247
  %mask_index249 = getelementptr inbounds %struct.Move, %struct.Move* %arrayidx248, i32 0, i32 1
  %132 = load i32, i32* %mask_index249, align 4
  %idxprom250 = sext i32 %132 to i64
  %133 = load i32, i32* %i, align 4
  %idxprom251 = sext i32 %133 to i64
  %arrayidx252 = getelementptr inbounds [256 x %struct.Move], [256 x %struct.Move]* %movelist, i32 0, i64 %idxprom251
  %array_index253 = getelementptr inbounds %struct.Move, %struct.Move* %arrayidx252, i32 0, i32 0
  %134 = load i32, i32* %array_index253, align 4
  %idxprom254 = sext i32 %134 to i64
  %135 = load i32, i32* %whos_turn, align 4
  %idxprom255 = sext i32 %135 to i64
  %arrayidx256 = getelementptr inbounds [2 x [32 x [32 x %struct.KeyInfo]]], [2 x [32 x [32 x %struct.KeyInfo]]]* @g_keyinfo, i32 0, i64 %idxprom255
  %arrayidx257 = getelementptr inbounds [32 x [32 x %struct.KeyInfo]], [32 x [32 x %struct.KeyInfo]]* %arrayidx256, i32 0, i64 %idxprom254
  %arrayidx258 = getelementptr inbounds [32 x %struct.KeyInfo], [32 x %struct.KeyInfo]* %arrayidx257, i32 0, i64 %idxprom250
  %flipH259 = getelementptr inbounds %struct.KeyInfo, %struct.KeyInfo* %arrayidx258, i32 0, i32 2
  %bit2_index260 = getelementptr inbounds %struct.KeyInfo_s, %struct.KeyInfo_s* %flipH259, i32 0, i32 1
  %136 = load i32, i32* %bit2_index260, align 4
  %rem261 = srem i32 %136, 32
  %shl262 = shl i32 1, %rem261
  %137 = load i32, i32* %i, align 4
  %idxprom263 = sext i32 %137 to i64
  %arrayidx264 = getelementptr inbounds [256 x %struct.Move], [256 x %struct.Move]* %movelist, i32 0, i64 %idxprom263
  %mask_index265 = getelementptr inbounds %struct.Move, %struct.Move* %arrayidx264, i32 0, i32 1
  %138 = load i32, i32* %mask_index265, align 4
  %idxprom266 = sext i32 %138 to i64
  %139 = load i32, i32* %i, align 4
  %idxprom267 = sext i32 %139 to i64
  %arrayidx268 = getelementptr inbounds [256 x %struct.Move], [256 x %struct.Move]* %movelist, i32 0, i64 %idxprom267
  %array_index269 = getelementptr inbounds %struct.Move, %struct.Move* %arrayidx268, i32 0, i32 0
  %140 = load i32, i32* %array_index269, align 4
  %idxprom270 = sext i32 %140 to i64
  %141 = load i32, i32* %whos_turn, align 4
  %idxprom271 = sext i32 %141 to i64
  %arrayidx272 = getelementptr inbounds [2 x [32 x [32 x %struct.KeyInfo]]], [2 x [32 x [32 x %struct.KeyInfo]]]* @g_keyinfo, i32 0, i64 %idxprom271
  %arrayidx273 = getelementptr inbounds [32 x [32 x %struct.KeyInfo]], [32 x [32 x %struct.KeyInfo]]* %arrayidx272, i32 0, i64 %idxprom270
  %arrayidx274 = getelementptr inbounds [32 x %struct.KeyInfo], [32 x %struct.KeyInfo]* %arrayidx273, i32 0, i64 %idxprom266
  %flipH275 = getelementptr inbounds %struct.KeyInfo, %struct.KeyInfo* %arrayidx274, i32 0, i32 2
  %bit2_index276 = getelementptr inbounds %struct.KeyInfo_s, %struct.KeyInfo_s* %flipH275, i32 0, i32 1
  %142 = load i32, i32* %bit2_index276, align 4
  %div277 = sdiv i32 %142, 32
  %idxprom278 = sext i32 %div277 to i64
  %arrayidx279 = getelementptr inbounds [4 x i32], [4 x i32]* getelementptr inbounds (%struct.Hash_Key, %struct.Hash_Key* @g_flipH_hashkey, i32 0, i32 0), i32 0, i64 %idxprom278
  %143 = load i32, i32* %arrayidx279, align 4
  %xor280 = xor i32 %143, %shl262
  store i32 %xor280, i32* %arrayidx279, align 4
  %144 = load i32, i32* %i, align 4
  %idxprom281 = sext i32 %144 to i64
  %arrayidx282 = getelementptr inbounds [256 x %struct.Move], [256 x %struct.Move]* %movelist, i32 0, i64 %idxprom281
  %mask_index283 = getelementptr inbounds %struct.Move, %struct.Move* %arrayidx282, i32 0, i32 1
  %145 = load i32, i32* %mask_index283, align 4
  %idxprom284 = sext i32 %145 to i64
  %146 = load i32, i32* %i, align 4
  %idxprom285 = sext i32 %146 to i64
  %arrayidx286 = getelementptr inbounds [256 x %struct.Move], [256 x %struct.Move]* %movelist, i32 0, i64 %idxprom285
  %array_index287 = getelementptr inbounds %struct.Move, %struct.Move* %arrayidx286, i32 0, i32 0
  %147 = load i32, i32* %array_index287, align 4
  %idxprom288 = sext i32 %147 to i64
  %148 = load i32, i32* %whos_turn, align 4
  %idxprom289 = sext i32 %148 to i64
  %arrayidx290 = getelementptr inbounds [2 x [32 x [32 x %struct.KeyInfo]]], [2 x [32 x [32 x %struct.KeyInfo]]]* @g_keyinfo, i32 0, i64 %idxprom289
  %arrayidx291 = getelementptr inbounds [32 x [32 x %struct.KeyInfo]], [32 x [32 x %struct.KeyInfo]]* %arrayidx290, i32 0, i64 %idxprom288
  %arrayidx292 = getelementptr inbounds [32 x %struct.KeyInfo], [32 x %struct.KeyInfo]* %arrayidx291, i32 0, i64 %idxprom284
  %flipH293 = getelementptr inbounds %struct.KeyInfo, %struct.KeyInfo* %arrayidx292, i32 0, i32 2
  %hash_code294 = getelementptr inbounds %struct.KeyInfo_s, %struct.KeyInfo_s* %flipH293, i32 0, i32 2
  %149 = load i32, i32* %hash_code294, align 4
  %150 = load i32, i32* getelementptr inbounds (%struct.Hash_Key, %struct.Hash_Key* @g_flipH_hashkey, i32 0, i32 1), align 4
  %xor295 = xor i32 %150, %149
  store i32 %xor295, i32* getelementptr inbounds (%struct.Hash_Key, %struct.Hash_Key* @g_flipH_hashkey, i32 0, i32 1), align 4
  %151 = load i32, i32* %i, align 4
  %idxprom296 = sext i32 %151 to i64
  %arrayidx297 = getelementptr inbounds [256 x %struct.Move], [256 x %struct.Move]* %movelist, i32 0, i64 %idxprom296
  %mask_index298 = getelementptr inbounds %struct.Move, %struct.Move* %arrayidx297, i32 0, i32 1
  %152 = load i32, i32* %mask_index298, align 4
  %idxprom299 = sext i32 %152 to i64
  %153 = load i32, i32* %i, align 4
  %idxprom300 = sext i32 %153 to i64
  %arrayidx301 = getelementptr inbounds [256 x %struct.Move], [256 x %struct.Move]* %movelist, i32 0, i64 %idxprom300
  %array_index302 = getelementptr inbounds %struct.Move, %struct.Move* %arrayidx301, i32 0, i32 0
  %154 = load i32, i32* %array_index302, align 4
  %idxprom303 = sext i32 %154 to i64
  %155 = load i32, i32* %whos_turn, align 4
  %idxprom304 = sext i32 %155 to i64
  %arrayidx305 = getelementptr inbounds [2 x [32 x [32 x %struct.KeyInfo]]], [2 x [32 x [32 x %struct.KeyInfo]]]* @g_keyinfo, i32 0, i64 %idxprom304
  %arrayidx306 = getelementptr inbounds [32 x [32 x %struct.KeyInfo]], [32 x [32 x %struct.KeyInfo]]* %arrayidx305, i32 0, i64 %idxprom303
  %arrayidx307 = getelementptr inbounds [32 x %struct.KeyInfo], [32 x %struct.KeyInfo]* %arrayidx306, i32 0, i64 %idxprom299
  %flipVH = getelementptr inbounds %struct.KeyInfo, %struct.KeyInfo* %arrayidx307, i32 0, i32 3
  %bit1_index308 = getelementptr inbounds %struct.KeyInfo_s, %struct.KeyInfo_s* %flipVH, i32 0, i32 0
  %156 = load i32, i32* %bit1_index308, align 4
  %rem309 = srem i32 %156, 32
  %shl310 = shl i32 1, %rem309
  %157 = load i32, i32* %i, align 4
  %idxprom311 = sext i32 %157 to i64
  %arrayidx312 = getelementptr inbounds [256 x %struct.Move], [256 x %struct.Move]* %movelist, i32 0, i64 %idxprom311
  %mask_index313 = getelementptr inbounds %struct.Move, %struct.Move* %arrayidx312, i32 0, i32 1
  %158 = load i32, i32* %mask_index313, align 4
  %idxprom314 = sext i32 %158 to i64
  %159 = load i32, i32* %i, align 4
  %idxprom315 = sext i32 %159 to i64
  %arrayidx316 = getelementptr inbounds [256 x %struct.Move], [256 x %struct.Move]* %movelist, i32 0, i64 %idxprom315
  %array_index317 = getelementptr inbounds %struct.Move, %struct.Move* %arrayidx316, i32 0, i32 0
  %160 = load i32, i32* %array_index317, align 4
  %idxprom318 = sext i32 %160 to i64
  %161 = load i32, i32* %whos_turn, align 4
  %idxprom319 = sext i32 %161 to i64
  %arrayidx320 = getelementptr inbounds [2 x [32 x [32 x %struct.KeyInfo]]], [2 x [32 x [32 x %struct.KeyInfo]]]* @g_keyinfo, i32 0, i64 %idxprom319
  %arrayidx321 = getelementptr inbounds [32 x [32 x %struct.KeyInfo]], [32 x [32 x %struct.KeyInfo]]* %arrayidx320, i32 0, i64 %idxprom318
  %arrayidx322 = getelementptr inbounds [32 x %struct.KeyInfo], [32 x %struct.KeyInfo]* %arrayidx321, i32 0, i64 %idxprom314
  %flipVH323 = getelementptr inbounds %struct.KeyInfo, %struct.KeyInfo* %arrayidx322, i32 0, i32 3
  %bit1_index324 = getelementptr inbounds %struct.KeyInfo_s, %struct.KeyInfo_s* %flipVH323, i32 0, i32 0
  %162 = load i32, i32* %bit1_index324, align 4
  %div325 = sdiv i32 %162, 32
  %idxprom326 = sext i32 %div325 to i64
  %arrayidx327 = getelementptr inbounds [4 x i32], [4 x i32]* getelementptr inbounds (%struct.Hash_Key, %struct.Hash_Key* @g_flipVH_hashkey, i32 0, i32 0), i32 0, i64 %idxprom326
  %163 = load i32, i32* %arrayidx327, align 4
  %xor328 = xor i32 %163, %shl310
  store i32 %xor328, i32* %arrayidx327, align 4
  %164 = load i32, i32* %i, align 4
  %idxprom329 = sext i32 %164 to i64
  %arrayidx330 = getelementptr inbounds [256 x %struct.Move], [256 x %struct.Move]* %movelist, i32 0, i64 %idxprom329
  %mask_index331 = getelementptr inbounds %struct.Move, %struct.Move* %arrayidx330, i32 0, i32 1
  %165 = load i32, i32* %mask_index331, align 4
  %idxprom332 = sext i32 %165 to i64
  %166 = load i32, i32* %i, align 4
  %idxprom333 = sext i32 %166 to i64
  %arrayidx334 = getelementptr inbounds [256 x %struct.Move], [256 x %struct.Move]* %movelist, i32 0, i64 %idxprom333
  %array_index335 = getelementptr inbounds %struct.Move, %struct.Move* %arrayidx334, i32 0, i32 0
  %167 = load i32, i32* %array_index335, align 4
  %idxprom336 = sext i32 %167 to i64
  %168 = load i32, i32* %whos_turn, align 4
  %idxprom337 = sext i32 %168 to i64
  %arrayidx338 = getelementptr inbounds [2 x [32 x [32 x %struct.KeyInfo]]], [2 x [32 x [32 x %struct.KeyInfo]]]* @g_keyinfo, i32 0, i64 %idxprom337
  %arrayidx339 = getelementptr inbounds [32 x [32 x %struct.KeyInfo]], [32 x [32 x %struct.KeyInfo]]* %arrayidx338, i32 0, i64 %idxprom336
  %arrayidx340 = getelementptr inbounds [32 x %struct.KeyInfo], [32 x %struct.KeyInfo]* %arrayidx339, i32 0, i64 %idxprom332
  %flipVH341 = getelementptr inbounds %struct.KeyInfo, %struct.KeyInfo* %arrayidx340, i32 0, i32 3
  %bit2_index342 = getelementptr inbounds %struct.KeyInfo_s, %struct.KeyInfo_s* %flipVH341, i32 0, i32 1
  %169 = load i32, i32* %bit2_index342, align 4
  %rem343 = srem i32 %169, 32
  %shl344 = shl i32 1, %rem343
  %170 = load i32, i32* %i, align 4
  %idxprom345 = sext i32 %170 to i64
  %arrayidx346 = getelementptr inbounds [256 x %struct.Move], [256 x %struct.Move]* %movelist, i32 0, i64 %idxprom345
  %mask_index347 = getelementptr inbounds %struct.Move, %struct.Move* %arrayidx346, i32 0, i32 1
  %171 = load i32, i32* %mask_index347, align 4
  %idxprom348 = sext i32 %171 to i64
  %172 = load i32, i32* %i, align 4
  %idxprom349 = sext i32 %172 to i64
  %arrayidx350 = getelementptr inbounds [256 x %struct.Move], [256 x %struct.Move]* %movelist, i32 0, i64 %idxprom349
  %array_index351 = getelementptr inbounds %struct.Move, %struct.Move* %arrayidx350, i32 0, i32 0
  %173 = load i32, i32* %array_index351, align 4
  %idxprom352 = sext i32 %173 to i64
  %174 = load i32, i32* %whos_turn, align 4
  %idxprom353 = sext i32 %174 to i64
  %arrayidx354 = getelementptr inbounds [2 x [32 x [32 x %struct.KeyInfo]]], [2 x [32 x [32 x %struct.KeyInfo]]]* @g_keyinfo, i32 0, i64 %idxprom353
  %arrayidx355 = getelementptr inbounds [32 x [32 x %struct.KeyInfo]], [32 x [32 x %struct.KeyInfo]]* %arrayidx354, i32 0, i64 %idxprom352
  %arrayidx356 = getelementptr inbounds [32 x %struct.KeyInfo], [32 x %struct.KeyInfo]* %arrayidx355, i32 0, i64 %idxprom348
  %flipVH357 = getelementptr inbounds %struct.KeyInfo, %struct.KeyInfo* %arrayidx356, i32 0, i32 3
  %bit2_index358 = getelementptr inbounds %struct.KeyInfo_s, %struct.KeyInfo_s* %flipVH357, i32 0, i32 1
  %175 = load i32, i32* %bit2_index358, align 4
  %div359 = sdiv i32 %175, 32
  %idxprom360 = sext i32 %div359 to i64
  %arrayidx361 = getelementptr inbounds [4 x i32], [4 x i32]* getelementptr inbounds (%struct.Hash_Key, %struct.Hash_Key* @g_flipVH_hashkey, i32 0, i32 0), i32 0, i64 %idxprom360
  %176 = load i32, i32* %arrayidx361, align 4
  %xor362 = xor i32 %176, %shl344
  store i32 %xor362, i32* %arrayidx361, align 4
  %177 = load i32, i32* %i, align 4
  %idxprom363 = sext i32 %177 to i64
  %arrayidx364 = getelementptr inbounds [256 x %struct.Move], [256 x %struct.Move]* %movelist, i32 0, i64 %idxprom363
  %mask_index365 = getelementptr inbounds %struct.Move, %struct.Move* %arrayidx364, i32 0, i32 1
  %178 = load i32, i32* %mask_index365, align 4
  %idxprom366 = sext i32 %178 to i64
  %179 = load i32, i32* %i, align 4
  %idxprom367 = sext i32 %179 to i64
  %arrayidx368 = getelementptr inbounds [256 x %struct.Move], [256 x %struct.Move]* %movelist, i32 0, i64 %idxprom367
  %array_index369 = getelementptr inbounds %struct.Move, %struct.Move* %arrayidx368, i32 0, i32 0
  %180 = load i32, i32* %array_index369, align 4
  %idxprom370 = sext i32 %180 to i64
  %181 = load i32, i32* %whos_turn, align 4
  %idxprom371 = sext i32 %181 to i64
  %arrayidx372 = getelementptr inbounds [2 x [32 x [32 x %struct.KeyInfo]]], [2 x [32 x [32 x %struct.KeyInfo]]]* @g_keyinfo, i32 0, i64 %idxprom371
  %arrayidx373 = getelementptr inbounds [32 x [32 x %struct.KeyInfo]], [32 x [32 x %struct.KeyInfo]]* %arrayidx372, i32 0, i64 %idxprom370
  %arrayidx374 = getelementptr inbounds [32 x %struct.KeyInfo], [32 x %struct.KeyInfo]* %arrayidx373, i32 0, i64 %idxprom366
  %flipVH375 = getelementptr inbounds %struct.KeyInfo, %struct.KeyInfo* %arrayidx374, i32 0, i32 3
  %hash_code376 = getelementptr inbounds %struct.KeyInfo_s, %struct.KeyInfo_s* %flipVH375, i32 0, i32 2
  %182 = load i32, i32* %hash_code376, align 4
  %183 = load i32, i32* getelementptr inbounds (%struct.Hash_Key, %struct.Hash_Key* @g_flipVH_hashkey, i32 0, i32 1), align 4
  %xor377 = xor i32 %183, %182
  store i32 %xor377, i32* getelementptr inbounds (%struct.Hash_Key, %struct.Hash_Key* @g_flipVH_hashkey, i32 0, i32 1), align 4
  call void (...) @check_hash_code_sanity()
  %184 = load i32, i32* %d, align 4
  %sub378 = sub nsw i32 %184, 1
  %185 = load i32, i32* %whos_turn, align 4
  %xor379 = xor i32 %185, 1
  %186 = load i32, i32* %beta, align 4
  %sub380 = sub nsw i32 0, %186
  %187 = load i32, i32* %alpha, align 4
  %sub381 = sub nsw i32 0, %187
  %call382 = call i32 @negamax(i32 %sub378, i32 %xor379, i32 %sub380, i32 %sub381)
  %sub383 = sub nsw i32 0, %call382
  store i32 %sub383, i32* %value, align 4
  %188 = load i32, i32* @g_empty_squares, align 4
  %add384 = add nsw i32 %188, 2
  store i32 %add384, i32* @g_empty_squares, align 4
  %189 = load i32, i32* %i, align 4
  %idxprom385 = sext i32 %189 to i64
  %arrayidx386 = getelementptr inbounds [256 x %struct.Move], [256 x %struct.Move]* %movelist, i32 0, i64 %idxprom385
  %190 = load i32, i32* %whos_turn, align 4
  %191 = bitcast { i64, i32 }* %arrayidx386.coerce to i8*
  %192 = bitcast %struct.Move* %arrayidx386 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %191, i8* %192, i64 12, i32 0, i1 false)
  %193 = getelementptr { i64, i32 }, { i64, i32 }* %arrayidx386.coerce, i32 0, i32 0
  %194 = load i64, i64* %193, align 1
  %195 = getelementptr { i64, i32 }, { i64, i32 }* %arrayidx386.coerce, i32 0, i32 1
  %196 = load i32, i32* %195, align 1
  call void @toggle_move(i64 %194, i32 %196, i32 %190)
  %197 = load i32, i32* %i, align 4
  %idxprom387 = sext i32 %197 to i64
  %arrayidx388 = getelementptr inbounds [256 x %struct.Move], [256 x %struct.Move]* %movelist, i32 0, i64 %idxprom387
  %mask_index389 = getelementptr inbounds %struct.Move, %struct.Move* %arrayidx388, i32 0, i32 1
  %198 = load i32, i32* %mask_index389, align 4
  %idxprom390 = sext i32 %198 to i64
  %199 = load i32, i32* %i, align 4
  %idxprom391 = sext i32 %199 to i64
  %arrayidx392 = getelementptr inbounds [256 x %struct.Move], [256 x %struct.Move]* %movelist, i32 0, i64 %idxprom391
  %array_index393 = getelementptr inbounds %struct.Move, %struct.Move* %arrayidx392, i32 0, i32 0
  %200 = load i32, i32* %array_index393, align 4
  %idxprom394 = sext i32 %200 to i64
  %201 = load i32, i32* %whos_turn, align 4
  %idxprom395 = sext i32 %201 to i64
  %arrayidx396 = getelementptr inbounds [2 x [32 x [32 x %struct.KeyInfo]]], [2 x [32 x [32 x %struct.KeyInfo]]]* @g_keyinfo, i32 0, i64 %idxprom395
  %arrayidx397 = getelementptr inbounds [32 x [32 x %struct.KeyInfo]], [32 x [32 x %struct.KeyInfo]]* %arrayidx396, i32 0, i64 %idxprom394
  %arrayidx398 = getelementptr inbounds [32 x %struct.KeyInfo], [32 x %struct.KeyInfo]* %arrayidx397, i32 0, i64 %idxprom390
  %norm399 = getelementptr inbounds %struct.KeyInfo, %struct.KeyInfo* %arrayidx398, i32 0, i32 0
  %bit1_index400 = getelementptr inbounds %struct.KeyInfo_s, %struct.KeyInfo_s* %norm399, i32 0, i32 0
  %202 = load i32, i32* %bit1_index400, align 4
  %rem401 = srem i32 %202, 32
  %shl402 = shl i32 1, %rem401
  %203 = load i32, i32* %i, align 4
  %idxprom403 = sext i32 %203 to i64
  %arrayidx404 = getelementptr inbounds [256 x %struct.Move], [256 x %struct.Move]* %movelist, i32 0, i64 %idxprom403
  %mask_index405 = getelementptr inbounds %struct.Move, %struct.Move* %arrayidx404, i32 0, i32 1
  %204 = load i32, i32* %mask_index405, align 4
  %idxprom406 = sext i32 %204 to i64
  %205 = load i32, i32* %i, align 4
  %idxprom407 = sext i32 %205 to i64
  %arrayidx408 = getelementptr inbounds [256 x %struct.Move], [256 x %struct.Move]* %movelist, i32 0, i64 %idxprom407
  %array_index409 = getelementptr inbounds %struct.Move, %struct.Move* %arrayidx408, i32 0, i32 0
  %206 = load i32, i32* %array_index409, align 4
  %idxprom410 = sext i32 %206 to i64
  %207 = load i32, i32* %whos_turn, align 4
  %idxprom411 = sext i32 %207 to i64
  %arrayidx412 = getelementptr inbounds [2 x [32 x [32 x %struct.KeyInfo]]], [2 x [32 x [32 x %struct.KeyInfo]]]* @g_keyinfo, i32 0, i64 %idxprom411
  %arrayidx413 = getelementptr inbounds [32 x [32 x %struct.KeyInfo]], [32 x [32 x %struct.KeyInfo]]* %arrayidx412, i32 0, i64 %idxprom410
  %arrayidx414 = getelementptr inbounds [32 x %struct.KeyInfo], [32 x %struct.KeyInfo]* %arrayidx413, i32 0, i64 %idxprom406
  %norm415 = getelementptr inbounds %struct.KeyInfo, %struct.KeyInfo* %arrayidx414, i32 0, i32 0
  %bit1_index416 = getelementptr inbounds %struct.KeyInfo_s, %struct.KeyInfo_s* %norm415, i32 0, i32 0
  %208 = load i32, i32* %bit1_index416, align 4
  %div417 = sdiv i32 %208, 32
  %idxprom418 = sext i32 %div417 to i64
  %arrayidx419 = getelementptr inbounds [4 x i32], [4 x i32]* getelementptr inbounds (%struct.Hash_Key, %struct.Hash_Key* @g_norm_hashkey, i32 0, i32 0), i32 0, i64 %idxprom418
  %209 = load i32, i32* %arrayidx419, align 4
  %xor420 = xor i32 %209, %shl402
  store i32 %xor420, i32* %arrayidx419, align 4
  %210 = load i32, i32* %i, align 4
  %idxprom421 = sext i32 %210 to i64
  %arrayidx422 = getelementptr inbounds [256 x %struct.Move], [256 x %struct.Move]* %movelist, i32 0, i64 %idxprom421
  %mask_index423 = getelementptr inbounds %struct.Move, %struct.Move* %arrayidx422, i32 0, i32 1
  %211 = load i32, i32* %mask_index423, align 4
  %idxprom424 = sext i32 %211 to i64
  %212 = load i32, i32* %i, align 4
  %idxprom425 = sext i32 %212 to i64
  %arrayidx426 = getelementptr inbounds [256 x %struct.Move], [256 x %struct.Move]* %movelist, i32 0, i64 %idxprom425
  %array_index427 = getelementptr inbounds %struct.Move, %struct.Move* %arrayidx426, i32 0, i32 0
  %213 = load i32, i32* %array_index427, align 4
  %idxprom428 = sext i32 %213 to i64
  %214 = load i32, i32* %whos_turn, align 4
  %idxprom429 = sext i32 %214 to i64
  %arrayidx430 = getelementptr inbounds [2 x [32 x [32 x %struct.KeyInfo]]], [2 x [32 x [32 x %struct.KeyInfo]]]* @g_keyinfo, i32 0, i64 %idxprom429
  %arrayidx431 = getelementptr inbounds [32 x [32 x %struct.KeyInfo]], [32 x [32 x %struct.KeyInfo]]* %arrayidx430, i32 0, i64 %idxprom428
  %arrayidx432 = getelementptr inbounds [32 x %struct.KeyInfo], [32 x %struct.KeyInfo]* %arrayidx431, i32 0, i64 %idxprom424
  %norm433 = getelementptr inbounds %struct.KeyInfo, %struct.KeyInfo* %arrayidx432, i32 0, i32 0
  %bit2_index434 = getelementptr inbounds %struct.KeyInfo_s, %struct.KeyInfo_s* %norm433, i32 0, i32 1
  %215 = load i32, i32* %bit2_index434, align 4
  %rem435 = srem i32 %215, 32
  %shl436 = shl i32 1, %rem435
  %216 = load i32, i32* %i, align 4
  %idxprom437 = sext i32 %216 to i64
  %arrayidx438 = getelementptr inbounds [256 x %struct.Move], [256 x %struct.Move]* %movelist, i32 0, i64 %idxprom437
  %mask_index439 = getelementptr inbounds %struct.Move, %struct.Move* %arrayidx438, i32 0, i32 1
  %217 = load i32, i32* %mask_index439, align 4
  %idxprom440 = sext i32 %217 to i64
  %218 = load i32, i32* %i, align 4
  %idxprom441 = sext i32 %218 to i64
  %arrayidx442 = getelementptr inbounds [256 x %struct.Move], [256 x %struct.Move]* %movelist, i32 0, i64 %idxprom441
  %array_index443 = getelementptr inbounds %struct.Move, %struct.Move* %arrayidx442, i32 0, i32 0
  %219 = load i32, i32* %array_index443, align 4
  %idxprom444 = sext i32 %219 to i64
  %220 = load i32, i32* %whos_turn, align 4
  %idxprom445 = sext i32 %220 to i64
  %arrayidx446 = getelementptr inbounds [2 x [32 x [32 x %struct.KeyInfo]]], [2 x [32 x [32 x %struct.KeyInfo]]]* @g_keyinfo, i32 0, i64 %idxprom445
  %arrayidx447 = getelementptr inbounds [32 x [32 x %struct.KeyInfo]], [32 x [32 x %struct.KeyInfo]]* %arrayidx446, i32 0, i64 %idxprom444
  %arrayidx448 = getelementptr inbounds [32 x %struct.KeyInfo], [32 x %struct.KeyInfo]* %arrayidx447, i32 0, i64 %idxprom440
  %norm449 = getelementptr inbounds %struct.KeyInfo, %struct.KeyInfo* %arrayidx448, i32 0, i32 0
  %bit2_index450 = getelementptr inbounds %struct.KeyInfo_s, %struct.KeyInfo_s* %norm449, i32 0, i32 1
  %221 = load i32, i32* %bit2_index450, align 4
  %div451 = sdiv i32 %221, 32
  %idxprom452 = sext i32 %div451 to i64
  %arrayidx453 = getelementptr inbounds [4 x i32], [4 x i32]* getelementptr inbounds (%struct.Hash_Key, %struct.Hash_Key* @g_norm_hashkey, i32 0, i32 0), i32 0, i64 %idxprom452
  %222 = load i32, i32* %arrayidx453, align 4
  %xor454 = xor i32 %222, %shl436
  store i32 %xor454, i32* %arrayidx453, align 4
  %223 = load i32, i32* %i, align 4
  %idxprom455 = sext i32 %223 to i64
  %arrayidx456 = getelementptr inbounds [256 x %struct.Move], [256 x %struct.Move]* %movelist, i32 0, i64 %idxprom455
  %mask_index457 = getelementptr inbounds %struct.Move, %struct.Move* %arrayidx456, i32 0, i32 1
  %224 = load i32, i32* %mask_index457, align 4
  %idxprom458 = sext i32 %224 to i64
  %225 = load i32, i32* %i, align 4
  %idxprom459 = sext i32 %225 to i64
  %arrayidx460 = getelementptr inbounds [256 x %struct.Move], [256 x %struct.Move]* %movelist, i32 0, i64 %idxprom459
  %array_index461 = getelementptr inbounds %struct.Move, %struct.Move* %arrayidx460, i32 0, i32 0
  %226 = load i32, i32* %array_index461, align 4
  %idxprom462 = sext i32 %226 to i64
  %227 = load i32, i32* %whos_turn, align 4
  %idxprom463 = sext i32 %227 to i64
  %arrayidx464 = getelementptr inbounds [2 x [32 x [32 x %struct.KeyInfo]]], [2 x [32 x [32 x %struct.KeyInfo]]]* @g_keyinfo, i32 0, i64 %idxprom463
  %arrayidx465 = getelementptr inbounds [32 x [32 x %struct.KeyInfo]], [32 x [32 x %struct.KeyInfo]]* %arrayidx464, i32 0, i64 %idxprom462
  %arrayidx466 = getelementptr inbounds [32 x %struct.KeyInfo], [32 x %struct.KeyInfo]* %arrayidx465, i32 0, i64 %idxprom458
  %norm467 = getelementptr inbounds %struct.KeyInfo, %struct.KeyInfo* %arrayidx466, i32 0, i32 0
  %hash_code468 = getelementptr inbounds %struct.KeyInfo_s, %struct.KeyInfo_s* %norm467, i32 0, i32 2
  %228 = load i32, i32* %hash_code468, align 4
  %229 = load i32, i32* getelementptr inbounds (%struct.Hash_Key, %struct.Hash_Key* @g_norm_hashkey, i32 0, i32 1), align 4
  %xor469 = xor i32 %229, %228
  store i32 %xor469, i32* getelementptr inbounds (%struct.Hash_Key, %struct.Hash_Key* @g_norm_hashkey, i32 0, i32 1), align 4
  %230 = load i32, i32* %i, align 4
  %idxprom470 = sext i32 %230 to i64
  %arrayidx471 = getelementptr inbounds [256 x %struct.Move], [256 x %struct.Move]* %movelist, i32 0, i64 %idxprom470
  %mask_index472 = getelementptr inbounds %struct.Move, %struct.Move* %arrayidx471, i32 0, i32 1
  %231 = load i32, i32* %mask_index472, align 4
  %idxprom473 = sext i32 %231 to i64
  %232 = load i32, i32* %i, align 4
  %idxprom474 = sext i32 %232 to i64
  %arrayidx475 = getelementptr inbounds [256 x %struct.Move], [256 x %struct.Move]* %movelist, i32 0, i64 %idxprom474
  %array_index476 = getelementptr inbounds %struct.Move, %struct.Move* %arrayidx475, i32 0, i32 0
  %233 = load i32, i32* %array_index476, align 4
  %idxprom477 = sext i32 %233 to i64
  %234 = load i32, i32* %whos_turn, align 4
  %idxprom478 = sext i32 %234 to i64
  %arrayidx479 = getelementptr inbounds [2 x [32 x [32 x %struct.KeyInfo]]], [2 x [32 x [32 x %struct.KeyInfo]]]* @g_keyinfo, i32 0, i64 %idxprom478
  %arrayidx480 = getelementptr inbounds [32 x [32 x %struct.KeyInfo]], [32 x [32 x %struct.KeyInfo]]* %arrayidx479, i32 0, i64 %idxprom477
  %arrayidx481 = getelementptr inbounds [32 x %struct.KeyInfo], [32 x %struct.KeyInfo]* %arrayidx480, i32 0, i64 %idxprom473
  %flipV482 = getelementptr inbounds %struct.KeyInfo, %struct.KeyInfo* %arrayidx481, i32 0, i32 1
  %bit1_index483 = getelementptr inbounds %struct.KeyInfo_s, %struct.KeyInfo_s* %flipV482, i32 0, i32 0
  %235 = load i32, i32* %bit1_index483, align 4
  %rem484 = srem i32 %235, 32
  %shl485 = shl i32 1, %rem484
  %236 = load i32, i32* %i, align 4
  %idxprom486 = sext i32 %236 to i64
  %arrayidx487 = getelementptr inbounds [256 x %struct.Move], [256 x %struct.Move]* %movelist, i32 0, i64 %idxprom486
  %mask_index488 = getelementptr inbounds %struct.Move, %struct.Move* %arrayidx487, i32 0, i32 1
  %237 = load i32, i32* %mask_index488, align 4
  %idxprom489 = sext i32 %237 to i64
  %238 = load i32, i32* %i, align 4
  %idxprom490 = sext i32 %238 to i64
  %arrayidx491 = getelementptr inbounds [256 x %struct.Move], [256 x %struct.Move]* %movelist, i32 0, i64 %idxprom490
  %array_index492 = getelementptr inbounds %struct.Move, %struct.Move* %arrayidx491, i32 0, i32 0
  %239 = load i32, i32* %array_index492, align 4
  %idxprom493 = sext i32 %239 to i64
  %240 = load i32, i32* %whos_turn, align 4
  %idxprom494 = sext i32 %240 to i64
  %arrayidx495 = getelementptr inbounds [2 x [32 x [32 x %struct.KeyInfo]]], [2 x [32 x [32 x %struct.KeyInfo]]]* @g_keyinfo, i32 0, i64 %idxprom494
  %arrayidx496 = getelementptr inbounds [32 x [32 x %struct.KeyInfo]], [32 x [32 x %struct.KeyInfo]]* %arrayidx495, i32 0, i64 %idxprom493
  %arrayidx497 = getelementptr inbounds [32 x %struct.KeyInfo], [32 x %struct.KeyInfo]* %arrayidx496, i32 0, i64 %idxprom489
  %flipV498 = getelementptr inbounds %struct.KeyInfo, %struct.KeyInfo* %arrayidx497, i32 0, i32 1
  %bit1_index499 = getelementptr inbounds %struct.KeyInfo_s, %struct.KeyInfo_s* %flipV498, i32 0, i32 0
  %241 = load i32, i32* %bit1_index499, align 4
  %div500 = sdiv i32 %241, 32
  %idxprom501 = sext i32 %div500 to i64
  %arrayidx502 = getelementptr inbounds [4 x i32], [4 x i32]* getelementptr inbounds (%struct.Hash_Key, %struct.Hash_Key* @g_flipV_hashkey, i32 0, i32 0), i32 0, i64 %idxprom501
  %242 = load i32, i32* %arrayidx502, align 4
  %xor503 = xor i32 %242, %shl485
  store i32 %xor503, i32* %arrayidx502, align 4
  %243 = load i32, i32* %i, align 4
  %idxprom504 = sext i32 %243 to i64
  %arrayidx505 = getelementptr inbounds [256 x %struct.Move], [256 x %struct.Move]* %movelist, i32 0, i64 %idxprom504
  %mask_index506 = getelementptr inbounds %struct.Move, %struct.Move* %arrayidx505, i32 0, i32 1
  %244 = load i32, i32* %mask_index506, align 4
  %idxprom507 = sext i32 %244 to i64
  %245 = load i32, i32* %i, align 4
  %idxprom508 = sext i32 %245 to i64
  %arrayidx509 = getelementptr inbounds [256 x %struct.Move], [256 x %struct.Move]* %movelist, i32 0, i64 %idxprom508
  %array_index510 = getelementptr inbounds %struct.Move, %struct.Move* %arrayidx509, i32 0, i32 0
  %246 = load i32, i32* %array_index510, align 4
  %idxprom511 = sext i32 %246 to i64
  %247 = load i32, i32* %whos_turn, align 4
  %idxprom512 = sext i32 %247 to i64
  %arrayidx513 = getelementptr inbounds [2 x [32 x [32 x %struct.KeyInfo]]], [2 x [32 x [32 x %struct.KeyInfo]]]* @g_keyinfo, i32 0, i64 %idxprom512
  %arrayidx514 = getelementptr inbounds [32 x [32 x %struct.KeyInfo]], [32 x [32 x %struct.KeyInfo]]* %arrayidx513, i32 0, i64 %idxprom511
  %arrayidx515 = getelementptr inbounds [32 x %struct.KeyInfo], [32 x %struct.KeyInfo]* %arrayidx514, i32 0, i64 %idxprom507
  %flipV516 = getelementptr inbounds %struct.KeyInfo, %struct.KeyInfo* %arrayidx515, i32 0, i32 1
  %bit2_index517 = getelementptr inbounds %struct.KeyInfo_s, %struct.KeyInfo_s* %flipV516, i32 0, i32 1
  %248 = load i32, i32* %bit2_index517, align 4
  %rem518 = srem i32 %248, 32
  %shl519 = shl i32 1, %rem518
  %249 = load i32, i32* %i, align 4
  %idxprom520 = sext i32 %249 to i64
  %arrayidx521 = getelementptr inbounds [256 x %struct.Move], [256 x %struct.Move]* %movelist, i32 0, i64 %idxprom520
  %mask_index522 = getelementptr inbounds %struct.Move, %struct.Move* %arrayidx521, i32 0, i32 1
  %250 = load i32, i32* %mask_index522, align 4
  %idxprom523 = sext i32 %250 to i64
  %251 = load i32, i32* %i, align 4
  %idxprom524 = sext i32 %251 to i64
  %arrayidx525 = getelementptr inbounds [256 x %struct.Move], [256 x %struct.Move]* %movelist, i32 0, i64 %idxprom524
  %array_index526 = getelementptr inbounds %struct.Move, %struct.Move* %arrayidx525, i32 0, i32 0
  %252 = load i32, i32* %array_index526, align 4
  %idxprom527 = sext i32 %252 to i64
  %253 = load i32, i32* %whos_turn, align 4
  %idxprom528 = sext i32 %253 to i64
  %arrayidx529 = getelementptr inbounds [2 x [32 x [32 x %struct.KeyInfo]]], [2 x [32 x [32 x %struct.KeyInfo]]]* @g_keyinfo, i32 0, i64 %idxprom528
  %arrayidx530 = getelementptr inbounds [32 x [32 x %struct.KeyInfo]], [32 x [32 x %struct.KeyInfo]]* %arrayidx529, i32 0, i64 %idxprom527
  %arrayidx531 = getelementptr inbounds [32 x %struct.KeyInfo], [32 x %struct.KeyInfo]* %arrayidx530, i32 0, i64 %idxprom523
  %flipV532 = getelementptr inbounds %struct.KeyInfo, %struct.KeyInfo* %arrayidx531, i32 0, i32 1
  %bit2_index533 = getelementptr inbounds %struct.KeyInfo_s, %struct.KeyInfo_s* %flipV532, i32 0, i32 1
  %254 = load i32, i32* %bit2_index533, align 4
  %div534 = sdiv i32 %254, 32
  %idxprom535 = sext i32 %div534 to i64
  %arrayidx536 = getelementptr inbounds [4 x i32], [4 x i32]* getelementptr inbounds (%struct.Hash_Key, %struct.Hash_Key* @g_flipV_hashkey, i32 0, i32 0), i32 0, i64 %idxprom535
  %255 = load i32, i32* %arrayidx536, align 4
  %xor537 = xor i32 %255, %shl519
  store i32 %xor537, i32* %arrayidx536, align 4
  %256 = load i32, i32* %i, align 4
  %idxprom538 = sext i32 %256 to i64
  %arrayidx539 = getelementptr inbounds [256 x %struct.Move], [256 x %struct.Move]* %movelist, i32 0, i64 %idxprom538
  %mask_index540 = getelementptr inbounds %struct.Move, %struct.Move* %arrayidx539, i32 0, i32 1
  %257 = load i32, i32* %mask_index540, align 4
  %idxprom541 = sext i32 %257 to i64
  %258 = load i32, i32* %i, align 4
  %idxprom542 = sext i32 %258 to i64
  %arrayidx543 = getelementptr inbounds [256 x %struct.Move], [256 x %struct.Move]* %movelist, i32 0, i64 %idxprom542
  %array_index544 = getelementptr inbounds %struct.Move, %struct.Move* %arrayidx543, i32 0, i32 0
  %259 = load i32, i32* %array_index544, align 4
  %idxprom545 = sext i32 %259 to i64
  %260 = load i32, i32* %whos_turn, align 4
  %idxprom546 = sext i32 %260 to i64
  %arrayidx547 = getelementptr inbounds [2 x [32 x [32 x %struct.KeyInfo]]], [2 x [32 x [32 x %struct.KeyInfo]]]* @g_keyinfo, i32 0, i64 %idxprom546
  %arrayidx548 = getelementptr inbounds [32 x [32 x %struct.KeyInfo]], [32 x [32 x %struct.KeyInfo]]* %arrayidx547, i32 0, i64 %idxprom545
  %arrayidx549 = getelementptr inbounds [32 x %struct.KeyInfo], [32 x %struct.KeyInfo]* %arrayidx548, i32 0, i64 %idxprom541
  %flipV550 = getelementptr inbounds %struct.KeyInfo, %struct.KeyInfo* %arrayidx549, i32 0, i32 1
  %hash_code551 = getelementptr inbounds %struct.KeyInfo_s, %struct.KeyInfo_s* %flipV550, i32 0, i32 2
  %261 = load i32, i32* %hash_code551, align 4
  %262 = load i32, i32* getelementptr inbounds (%struct.Hash_Key, %struct.Hash_Key* @g_flipV_hashkey, i32 0, i32 1), align 4
  %xor552 = xor i32 %262, %261
  store i32 %xor552, i32* getelementptr inbounds (%struct.Hash_Key, %struct.Hash_Key* @g_flipV_hashkey, i32 0, i32 1), align 4
  %263 = load i32, i32* %i, align 4
  %idxprom553 = sext i32 %263 to i64
  %arrayidx554 = getelementptr inbounds [256 x %struct.Move], [256 x %struct.Move]* %movelist, i32 0, i64 %idxprom553
  %mask_index555 = getelementptr inbounds %struct.Move, %struct.Move* %arrayidx554, i32 0, i32 1
  %264 = load i32, i32* %mask_index555, align 4
  %idxprom556 = sext i32 %264 to i64
  %265 = load i32, i32* %i, align 4
  %idxprom557 = sext i32 %265 to i64
  %arrayidx558 = getelementptr inbounds [256 x %struct.Move], [256 x %struct.Move]* %movelist, i32 0, i64 %idxprom557
  %array_index559 = getelementptr inbounds %struct.Move, %struct.Move* %arrayidx558, i32 0, i32 0
  %266 = load i32, i32* %array_index559, align 4
  %idxprom560 = sext i32 %266 to i64
  %267 = load i32, i32* %whos_turn, align 4
  %idxprom561 = sext i32 %267 to i64
  %arrayidx562 = getelementptr inbounds [2 x [32 x [32 x %struct.KeyInfo]]], [2 x [32 x [32 x %struct.KeyInfo]]]* @g_keyinfo, i32 0, i64 %idxprom561
  %arrayidx563 = getelementptr inbounds [32 x [32 x %struct.KeyInfo]], [32 x [32 x %struct.KeyInfo]]* %arrayidx562, i32 0, i64 %idxprom560
  %arrayidx564 = getelementptr inbounds [32 x %struct.KeyInfo], [32 x %struct.KeyInfo]* %arrayidx563, i32 0, i64 %idxprom556
  %flipH565 = getelementptr inbounds %struct.KeyInfo, %struct.KeyInfo* %arrayidx564, i32 0, i32 2
  %bit1_index566 = getelementptr inbounds %struct.KeyInfo_s, %struct.KeyInfo_s* %flipH565, i32 0, i32 0
  %268 = load i32, i32* %bit1_index566, align 4
  %rem567 = srem i32 %268, 32
  %shl568 = shl i32 1, %rem567
  %269 = load i32, i32* %i, align 4
  %idxprom569 = sext i32 %269 to i64
  %arrayidx570 = getelementptr inbounds [256 x %struct.Move], [256 x %struct.Move]* %movelist, i32 0, i64 %idxprom569
  %mask_index571 = getelementptr inbounds %struct.Move, %struct.Move* %arrayidx570, i32 0, i32 1
  %270 = load i32, i32* %mask_index571, align 4
  %idxprom572 = sext i32 %270 to i64
  %271 = load i32, i32* %i, align 4
  %idxprom573 = sext i32 %271 to i64
  %arrayidx574 = getelementptr inbounds [256 x %struct.Move], [256 x %struct.Move]* %movelist, i32 0, i64 %idxprom573
  %array_index575 = getelementptr inbounds %struct.Move, %struct.Move* %arrayidx574, i32 0, i32 0
  %272 = load i32, i32* %array_index575, align 4
  %idxprom576 = sext i32 %272 to i64
  %273 = load i32, i32* %whos_turn, align 4
  %idxprom577 = sext i32 %273 to i64
  %arrayidx578 = getelementptr inbounds [2 x [32 x [32 x %struct.KeyInfo]]], [2 x [32 x [32 x %struct.KeyInfo]]]* @g_keyinfo, i32 0, i64 %idxprom577
  %arrayidx579 = getelementptr inbounds [32 x [32 x %struct.KeyInfo]], [32 x [32 x %struct.KeyInfo]]* %arrayidx578, i32 0, i64 %idxprom576
  %arrayidx580 = getelementptr inbounds [32 x %struct.KeyInfo], [32 x %struct.KeyInfo]* %arrayidx579, i32 0, i64 %idxprom572
  %flipH581 = getelementptr inbounds %struct.KeyInfo, %struct.KeyInfo* %arrayidx580, i32 0, i32 2
  %bit1_index582 = getelementptr inbounds %struct.KeyInfo_s, %struct.KeyInfo_s* %flipH581, i32 0, i32 0
  %274 = load i32, i32* %bit1_index582, align 4
  %div583 = sdiv i32 %274, 32
  %idxprom584 = sext i32 %div583 to i64
  %arrayidx585 = getelementptr inbounds [4 x i32], [4 x i32]* getelementptr inbounds (%struct.Hash_Key, %struct.Hash_Key* @g_flipH_hashkey, i32 0, i32 0), i32 0, i64 %idxprom584
  %275 = load i32, i32* %arrayidx585, align 4
  %xor586 = xor i32 %275, %shl568
  store i32 %xor586, i32* %arrayidx585, align 4
  %276 = load i32, i32* %i, align 4
  %idxprom587 = sext i32 %276 to i64
  %arrayidx588 = getelementptr inbounds [256 x %struct.Move], [256 x %struct.Move]* %movelist, i32 0, i64 %idxprom587
  %mask_index589 = getelementptr inbounds %struct.Move, %struct.Move* %arrayidx588, i32 0, i32 1
  %277 = load i32, i32* %mask_index589, align 4
  %idxprom590 = sext i32 %277 to i64
  %278 = load i32, i32* %i, align 4
  %idxprom591 = sext i32 %278 to i64
  %arrayidx592 = getelementptr inbounds [256 x %struct.Move], [256 x %struct.Move]* %movelist, i32 0, i64 %idxprom591
  %array_index593 = getelementptr inbounds %struct.Move, %struct.Move* %arrayidx592, i32 0, i32 0
  %279 = load i32, i32* %array_index593, align 4
  %idxprom594 = sext i32 %279 to i64
  %280 = load i32, i32* %whos_turn, align 4
  %idxprom595 = sext i32 %280 to i64
  %arrayidx596 = getelementptr inbounds [2 x [32 x [32 x %struct.KeyInfo]]], [2 x [32 x [32 x %struct.KeyInfo]]]* @g_keyinfo, i32 0, i64 %idxprom595
  %arrayidx597 = getelementptr inbounds [32 x [32 x %struct.KeyInfo]], [32 x [32 x %struct.KeyInfo]]* %arrayidx596, i32 0, i64 %idxprom594
  %arrayidx598 = getelementptr inbounds [32 x %struct.KeyInfo], [32 x %struct.KeyInfo]* %arrayidx597, i32 0, i64 %idxprom590
  %flipH599 = getelementptr inbounds %struct.KeyInfo, %struct.KeyInfo* %arrayidx598, i32 0, i32 2
  %bit2_index600 = getelementptr inbounds %struct.KeyInfo_s, %struct.KeyInfo_s* %flipH599, i32 0, i32 1
  %281 = load i32, i32* %bit2_index600, align 4
  %rem601 = srem i32 %281, 32
  %shl602 = shl i32 1, %rem601
  %282 = load i32, i32* %i, align 4
  %idxprom603 = sext i32 %282 to i64
  %arrayidx604 = getelementptr inbounds [256 x %struct.Move], [256 x %struct.Move]* %movelist, i32 0, i64 %idxprom603
  %mask_index605 = getelementptr inbounds %struct.Move, %struct.Move* %arrayidx604, i32 0, i32 1
  %283 = load i32, i32* %mask_index605, align 4
  %idxprom606 = sext i32 %283 to i64
  %284 = load i32, i32* %i, align 4
  %idxprom607 = sext i32 %284 to i64
  %arrayidx608 = getelementptr inbounds [256 x %struct.Move], [256 x %struct.Move]* %movelist, i32 0, i64 %idxprom607
  %array_index609 = getelementptr inbounds %struct.Move, %struct.Move* %arrayidx608, i32 0, i32 0
  %285 = load i32, i32* %array_index609, align 4
  %idxprom610 = sext i32 %285 to i64
  %286 = load i32, i32* %whos_turn, align 4
  %idxprom611 = sext i32 %286 to i64
  %arrayidx612 = getelementptr inbounds [2 x [32 x [32 x %struct.KeyInfo]]], [2 x [32 x [32 x %struct.KeyInfo]]]* @g_keyinfo, i32 0, i64 %idxprom611
  %arrayidx613 = getelementptr inbounds [32 x [32 x %struct.KeyInfo]], [32 x [32 x %struct.KeyInfo]]* %arrayidx612, i32 0, i64 %idxprom610
  %arrayidx614 = getelementptr inbounds [32 x %struct.KeyInfo], [32 x %struct.KeyInfo]* %arrayidx613, i32 0, i64 %idxprom606
  %flipH615 = getelementptr inbounds %struct.KeyInfo, %struct.KeyInfo* %arrayidx614, i32 0, i32 2
  %bit2_index616 = getelementptr inbounds %struct.KeyInfo_s, %struct.KeyInfo_s* %flipH615, i32 0, i32 1
  %287 = load i32, i32* %bit2_index616, align 4
  %div617 = sdiv i32 %287, 32
  %idxprom618 = sext i32 %div617 to i64
  %arrayidx619 = getelementptr inbounds [4 x i32], [4 x i32]* getelementptr inbounds (%struct.Hash_Key, %struct.Hash_Key* @g_flipH_hashkey, i32 0, i32 0), i32 0, i64 %idxprom618
  %288 = load i32, i32* %arrayidx619, align 4
  %xor620 = xor i32 %288, %shl602
  store i32 %xor620, i32* %arrayidx619, align 4
  %289 = load i32, i32* %i, align 4
  %idxprom621 = sext i32 %289 to i64
  %arrayidx622 = getelementptr inbounds [256 x %struct.Move], [256 x %struct.Move]* %movelist, i32 0, i64 %idxprom621
  %mask_index623 = getelementptr inbounds %struct.Move, %struct.Move* %arrayidx622, i32 0, i32 1
  %290 = load i32, i32* %mask_index623, align 4
  %idxprom624 = sext i32 %290 to i64
  %291 = load i32, i32* %i, align 4
  %idxprom625 = sext i32 %291 to i64
  %arrayidx626 = getelementptr inbounds [256 x %struct.Move], [256 x %struct.Move]* %movelist, i32 0, i64 %idxprom625
  %array_index627 = getelementptr inbounds %struct.Move, %struct.Move* %arrayidx626, i32 0, i32 0
  %292 = load i32, i32* %array_index627, align 4
  %idxprom628 = sext i32 %292 to i64
  %293 = load i32, i32* %whos_turn, align 4
  %idxprom629 = sext i32 %293 to i64
  %arrayidx630 = getelementptr inbounds [2 x [32 x [32 x %struct.KeyInfo]]], [2 x [32 x [32 x %struct.KeyInfo]]]* @g_keyinfo, i32 0, i64 %idxprom629
  %arrayidx631 = getelementptr inbounds [32 x [32 x %struct.KeyInfo]], [32 x [32 x %struct.KeyInfo]]* %arrayidx630, i32 0, i64 %idxprom628
  %arrayidx632 = getelementptr inbounds [32 x %struct.KeyInfo], [32 x %struct.KeyInfo]* %arrayidx631, i32 0, i64 %idxprom624
  %flipH633 = getelementptr inbounds %struct.KeyInfo, %struct.KeyInfo* %arrayidx632, i32 0, i32 2
  %hash_code634 = getelementptr inbounds %struct.KeyInfo_s, %struct.KeyInfo_s* %flipH633, i32 0, i32 2
  %294 = load i32, i32* %hash_code634, align 4
  %295 = load i32, i32* getelementptr inbounds (%struct.Hash_Key, %struct.Hash_Key* @g_flipH_hashkey, i32 0, i32 1), align 4
  %xor635 = xor i32 %295, %294
  store i32 %xor635, i32* getelementptr inbounds (%struct.Hash_Key, %struct.Hash_Key* @g_flipH_hashkey, i32 0, i32 1), align 4
  %296 = load i32, i32* %i, align 4
  %idxprom636 = sext i32 %296 to i64
  %arrayidx637 = getelementptr inbounds [256 x %struct.Move], [256 x %struct.Move]* %movelist, i32 0, i64 %idxprom636
  %mask_index638 = getelementptr inbounds %struct.Move, %struct.Move* %arrayidx637, i32 0, i32 1
  %297 = load i32, i32* %mask_index638, align 4
  %idxprom639 = sext i32 %297 to i64
  %298 = load i32, i32* %i, align 4
  %idxprom640 = sext i32 %298 to i64
  %arrayidx641 = getelementptr inbounds [256 x %struct.Move], [256 x %struct.Move]* %movelist, i32 0, i64 %idxprom640
  %array_index642 = getelementptr inbounds %struct.Move, %struct.Move* %arrayidx641, i32 0, i32 0
  %299 = load i32, i32* %array_index642, align 4
  %idxprom643 = sext i32 %299 to i64
  %300 = load i32, i32* %whos_turn, align 4
  %idxprom644 = sext i32 %300 to i64
  %arrayidx645 = getelementptr inbounds [2 x [32 x [32 x %struct.KeyInfo]]], [2 x [32 x [32 x %struct.KeyInfo]]]* @g_keyinfo, i32 0, i64 %idxprom644
  %arrayidx646 = getelementptr inbounds [32 x [32 x %struct.KeyInfo]], [32 x [32 x %struct.KeyInfo]]* %arrayidx645, i32 0, i64 %idxprom643
  %arrayidx647 = getelementptr inbounds [32 x %struct.KeyInfo], [32 x %struct.KeyInfo]* %arrayidx646, i32 0, i64 %idxprom639
  %flipVH648 = getelementptr inbounds %struct.KeyInfo, %struct.KeyInfo* %arrayidx647, i32 0, i32 3
  %bit1_index649 = getelementptr inbounds %struct.KeyInfo_s, %struct.KeyInfo_s* %flipVH648, i32 0, i32 0
  %301 = load i32, i32* %bit1_index649, align 4
  %rem650 = srem i32 %301, 32
  %shl651 = shl i32 1, %rem650
  %302 = load i32, i32* %i, align 4
  %idxprom652 = sext i32 %302 to i64
  %arrayidx653 = getelementptr inbounds [256 x %struct.Move], [256 x %struct.Move]* %movelist, i32 0, i64 %idxprom652
  %mask_index654 = getelementptr inbounds %struct.Move, %struct.Move* %arrayidx653, i32 0, i32 1
  %303 = load i32, i32* %mask_index654, align 4
  %idxprom655 = sext i32 %303 to i64
  %304 = load i32, i32* %i, align 4
  %idxprom656 = sext i32 %304 to i64
  %arrayidx657 = getelementptr inbounds [256 x %struct.Move], [256 x %struct.Move]* %movelist, i32 0, i64 %idxprom656
  %array_index658 = getelementptr inbounds %struct.Move, %struct.Move* %arrayidx657, i32 0, i32 0
  %305 = load i32, i32* %array_index658, align 4
  %idxprom659 = sext i32 %305 to i64
  %306 = load i32, i32* %whos_turn, align 4
  %idxprom660 = sext i32 %306 to i64
  %arrayidx661 = getelementptr inbounds [2 x [32 x [32 x %struct.KeyInfo]]], [2 x [32 x [32 x %struct.KeyInfo]]]* @g_keyinfo, i32 0, i64 %idxprom660
  %arrayidx662 = getelementptr inbounds [32 x [32 x %struct.KeyInfo]], [32 x [32 x %struct.KeyInfo]]* %arrayidx661, i32 0, i64 %idxprom659
  %arrayidx663 = getelementptr inbounds [32 x %struct.KeyInfo], [32 x %struct.KeyInfo]* %arrayidx662, i32 0, i64 %idxprom655
  %flipVH664 = getelementptr inbounds %struct.KeyInfo, %struct.KeyInfo* %arrayidx663, i32 0, i32 3
  %bit1_index665 = getelementptr inbounds %struct.KeyInfo_s, %struct.KeyInfo_s* %flipVH664, i32 0, i32 0
  %307 = load i32, i32* %bit1_index665, align 4
  %div666 = sdiv i32 %307, 32
  %idxprom667 = sext i32 %div666 to i64
  %arrayidx668 = getelementptr inbounds [4 x i32], [4 x i32]* getelementptr inbounds (%struct.Hash_Key, %struct.Hash_Key* @g_flipVH_hashkey, i32 0, i32 0), i32 0, i64 %idxprom667
  %308 = load i32, i32* %arrayidx668, align 4
  %xor669 = xor i32 %308, %shl651
  store i32 %xor669, i32* %arrayidx668, align 4
  %309 = load i32, i32* %i, align 4
  %idxprom670 = sext i32 %309 to i64
  %arrayidx671 = getelementptr inbounds [256 x %struct.Move], [256 x %struct.Move]* %movelist, i32 0, i64 %idxprom670
  %mask_index672 = getelementptr inbounds %struct.Move, %struct.Move* %arrayidx671, i32 0, i32 1
  %310 = load i32, i32* %mask_index672, align 4
  %idxprom673 = sext i32 %310 to i64
  %311 = load i32, i32* %i, align 4
  %idxprom674 = sext i32 %311 to i64
  %arrayidx675 = getelementptr inbounds [256 x %struct.Move], [256 x %struct.Move]* %movelist, i32 0, i64 %idxprom674
  %array_index676 = getelementptr inbounds %struct.Move, %struct.Move* %arrayidx675, i32 0, i32 0
  %312 = load i32, i32* %array_index676, align 4
  %idxprom677 = sext i32 %312 to i64
  %313 = load i32, i32* %whos_turn, align 4
  %idxprom678 = sext i32 %313 to i64
  %arrayidx679 = getelementptr inbounds [2 x [32 x [32 x %struct.KeyInfo]]], [2 x [32 x [32 x %struct.KeyInfo]]]* @g_keyinfo, i32 0, i64 %idxprom678
  %arrayidx680 = getelementptr inbounds [32 x [32 x %struct.KeyInfo]], [32 x [32 x %struct.KeyInfo]]* %arrayidx679, i32 0, i64 %idxprom677
  %arrayidx681 = getelementptr inbounds [32 x %struct.KeyInfo], [32 x %struct.KeyInfo]* %arrayidx680, i32 0, i64 %idxprom673
  %flipVH682 = getelementptr inbounds %struct.KeyInfo, %struct.KeyInfo* %arrayidx681, i32 0, i32 3
  %bit2_index683 = getelementptr inbounds %struct.KeyInfo_s, %struct.KeyInfo_s* %flipVH682, i32 0, i32 1
  %314 = load i32, i32* %bit2_index683, align 4
  %rem684 = srem i32 %314, 32
  %shl685 = shl i32 1, %rem684
  %315 = load i32, i32* %i, align 4
  %idxprom686 = sext i32 %315 to i64
  %arrayidx687 = getelementptr inbounds [256 x %struct.Move], [256 x %struct.Move]* %movelist, i32 0, i64 %idxprom686
  %mask_index688 = getelementptr inbounds %struct.Move, %struct.Move* %arrayidx687, i32 0, i32 1
  %316 = load i32, i32* %mask_index688, align 4
  %idxprom689 = sext i32 %316 to i64
  %317 = load i32, i32* %i, align 4
  %idxprom690 = sext i32 %317 to i64
  %arrayidx691 = getelementptr inbounds [256 x %struct.Move], [256 x %struct.Move]* %movelist, i32 0, i64 %idxprom690
  %array_index692 = getelementptr inbounds %struct.Move, %struct.Move* %arrayidx691, i32 0, i32 0
  %318 = load i32, i32* %array_index692, align 4
  %idxprom693 = sext i32 %318 to i64
  %319 = load i32, i32* %whos_turn, align 4
  %idxprom694 = sext i32 %319 to i64
  %arrayidx695 = getelementptr inbounds [2 x [32 x [32 x %struct.KeyInfo]]], [2 x [32 x [32 x %struct.KeyInfo]]]* @g_keyinfo, i32 0, i64 %idxprom694
  %arrayidx696 = getelementptr inbounds [32 x [32 x %struct.KeyInfo]], [32 x [32 x %struct.KeyInfo]]* %arrayidx695, i32 0, i64 %idxprom693
  %arrayidx697 = getelementptr inbounds [32 x %struct.KeyInfo], [32 x %struct.KeyInfo]* %arrayidx696, i32 0, i64 %idxprom689
  %flipVH698 = getelementptr inbounds %struct.KeyInfo, %struct.KeyInfo* %arrayidx697, i32 0, i32 3
  %bit2_index699 = getelementptr inbounds %struct.KeyInfo_s, %struct.KeyInfo_s* %flipVH698, i32 0, i32 1
  %320 = load i32, i32* %bit2_index699, align 4
  %div700 = sdiv i32 %320, 32
  %idxprom701 = sext i32 %div700 to i64
  %arrayidx702 = getelementptr inbounds [4 x i32], [4 x i32]* getelementptr inbounds (%struct.Hash_Key, %struct.Hash_Key* @g_flipVH_hashkey, i32 0, i32 0), i32 0, i64 %idxprom701
  %321 = load i32, i32* %arrayidx702, align 4
  %xor703 = xor i32 %321, %shl685
  store i32 %xor703, i32* %arrayidx702, align 4
  %322 = load i32, i32* %i, align 4
  %idxprom704 = sext i32 %322 to i64
  %arrayidx705 = getelementptr inbounds [256 x %struct.Move], [256 x %struct.Move]* %movelist, i32 0, i64 %idxprom704
  %mask_index706 = getelementptr inbounds %struct.Move, %struct.Move* %arrayidx705, i32 0, i32 1
  %323 = load i32, i32* %mask_index706, align 4
  %idxprom707 = sext i32 %323 to i64
  %324 = load i32, i32* %i, align 4
  %idxprom708 = sext i32 %324 to i64
  %arrayidx709 = getelementptr inbounds [256 x %struct.Move], [256 x %struct.Move]* %movelist, i32 0, i64 %idxprom708
  %array_index710 = getelementptr inbounds %struct.Move, %struct.Move* %arrayidx709, i32 0, i32 0
  %325 = load i32, i32* %array_index710, align 4
  %idxprom711 = sext i32 %325 to i64
  %326 = load i32, i32* %whos_turn, align 4
  %idxprom712 = sext i32 %326 to i64
  %arrayidx713 = getelementptr inbounds [2 x [32 x [32 x %struct.KeyInfo]]], [2 x [32 x [32 x %struct.KeyInfo]]]* @g_keyinfo, i32 0, i64 %idxprom712
  %arrayidx714 = getelementptr inbounds [32 x [32 x %struct.KeyInfo]], [32 x [32 x %struct.KeyInfo]]* %arrayidx713, i32 0, i64 %idxprom711
  %arrayidx715 = getelementptr inbounds [32 x %struct.KeyInfo], [32 x %struct.KeyInfo]* %arrayidx714, i32 0, i64 %idxprom707
  %flipVH716 = getelementptr inbounds %struct.KeyInfo, %struct.KeyInfo* %arrayidx715, i32 0, i32 3
  %hash_code717 = getelementptr inbounds %struct.KeyInfo_s, %struct.KeyInfo_s* %flipVH716, i32 0, i32 2
  %327 = load i32, i32* %hash_code717, align 4
  %328 = load i32, i32* getelementptr inbounds (%struct.Hash_Key, %struct.Hash_Key* @g_flipVH_hashkey, i32 0, i32 1), align 4
  %xor718 = xor i32 %328, %327
  store i32 %xor718, i32* getelementptr inbounds (%struct.Hash_Key, %struct.Hash_Key* @g_flipVH_hashkey, i32 0, i32 1), align 4
  call void (...) @check_hash_code_sanity()
  %329 = load i32, i32* %i, align 4
  %idxprom719 = sext i32 %329 to i64
  %arrayidx720 = getelementptr inbounds [256 x %struct.Move], [256 x %struct.Move]* %movelist, i32 0, i64 %idxprom719
  %array_index721 = getelementptr inbounds %struct.Move, %struct.Move* %arrayidx720, i32 0, i32 0
  %330 = load i32, i32* %array_index721, align 4
  %331 = load i32, i32* %i, align 4
  %idxprom722 = sext i32 %331 to i64
  %arrayidx723 = getelementptr inbounds [256 x %struct.Move], [256 x %struct.Move]* %movelist, i32 0, i64 %idxprom722
  %mask_index724 = getelementptr inbounds %struct.Move, %struct.Move* %arrayidx723, i32 0, i32 1
  %332 = load i32, i32* %mask_index724, align 4
  %333 = load i32, i32* %value, align 4
  %334 = load i64, i64* @g_num_nodes, align 8
  %call725 = call i8* @u64bit_to_string(i64 %334)
  %call726 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i32 0, i32 0), i32 %330, i32 %332, i32 %333, i8* %call725)
  %335 = load i32, i32* %alpha, align 4
  %336 = load i32, i32* %beta, align 4
  %call727 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i32 0, i32 0), i32 %335, i32 %336)
  %337 = load i32, i32* %value, align 4
  %338 = load i32, i32* %i, align 4
  %idxprom728 = sext i32 %338 to i64
  %arrayidx729 = getelementptr inbounds [256 x %struct.Move], [256 x %struct.Move]* %movelist, i32 0, i64 %idxprom728
  %info = getelementptr inbounds %struct.Move, %struct.Move* %arrayidx729, i32 0, i32 2
  store i32 %337, i32* %info, align 4
  %339 = load i32, i32* %value, align 4
  %340 = load i32, i32* %beta, align 4
  %cmp730 = icmp sge i32 %339, %340
  br i1 %cmp730, label %if.then.732, label %if.end.733

if.then.732:                                      ; preds = %for.body.54
  %341 = load i32, i32* %value, align 4
  store i32 %341, i32* %alpha, align 4
  br label %for.end.740

if.end.733:                                       ; preds = %for.body.54
  %342 = load i32, i32* %value, align 4
  %343 = load i32, i32* %alpha, align 4
  %cmp734 = icmp sgt i32 %342, %343
  br i1 %cmp734, label %if.then.736, label %if.end.737

if.then.736:                                      ; preds = %if.end.733
  %344 = load i32, i32* %value, align 4
  store i32 %344, i32* %alpha, align 4
  br label %if.end.737

if.end.737:                                       ; preds = %if.then.736, %if.end.733
  br label %for.inc.738

for.inc.738:                                      ; preds = %if.end.737
  %345 = load i32, i32* %i, align 4
  %inc739 = add nsw i32 %345, 1
  store i32 %inc739, i32* %i, align 4
  br label %for.cond.51

for.end.740:                                      ; preds = %if.then.732, %for.cond.51
  %346 = load i32, i32* %value, align 4
  %cmp741 = icmp sge i32 %346, 5000
  br i1 %cmp741, label %if.then.743, label %if.end.767

if.then.743:                                      ; preds = %for.end.740
  %347 = load i32, i32* %value, align 4
  %call744 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i32 0, i32 0), i32 %347)
  %348 = load i32, i32* %whos_turn, align 4
  %cmp745 = icmp eq i32 %348, 0
  br i1 %cmp745, label %if.then.747, label %if.else.754

if.then.747:                                      ; preds = %if.then.743
  %349 = load i32, i32* %i, align 4
  %idxprom748 = sext i32 %349 to i64
  %arrayidx749 = getelementptr inbounds [256 x %struct.Move], [256 x %struct.Move]* %movelist, i32 0, i64 %idxprom748
  %array_index750 = getelementptr inbounds %struct.Move, %struct.Move* %arrayidx749, i32 0, i32 0
  %350 = load i32, i32* %array_index750, align 4
  %351 = load i32*, i32** %row.addr, align 8
  store i32 %350, i32* %351, align 4
  %352 = load i32, i32* %i, align 4
  %idxprom751 = sext i32 %352 to i64
  %arrayidx752 = getelementptr inbounds [256 x %struct.Move], [256 x %struct.Move]* %movelist, i32 0, i64 %idxprom751
  %mask_index753 = getelementptr inbounds %struct.Move, %struct.Move* %arrayidx752, i32 0, i32 1
  %353 = load i32, i32* %mask_index753, align 4
  %354 = load i32*, i32** %col.addr, align 8
  store i32 %353, i32* %354, align 4
  br label %if.end.766

if.else.754:                                      ; preds = %if.then.743
  %355 = load i32, i32* %whos_turn, align 4
  %cmp755 = icmp eq i32 %355, 1
  br i1 %cmp755, label %if.then.757, label %if.else.764

if.then.757:                                      ; preds = %if.else.754
  %356 = load i32, i32* %i, align 4
  %idxprom758 = sext i32 %356 to i64
  %arrayidx759 = getelementptr inbounds [256 x %struct.Move], [256 x %struct.Move]* %movelist, i32 0, i64 %idxprom758
  %array_index760 = getelementptr inbounds %struct.Move, %struct.Move* %arrayidx759, i32 0, i32 0
  %357 = load i32, i32* %array_index760, align 4
  %358 = load i32*, i32** %col.addr, align 8
  store i32 %357, i32* %358, align 4
  %359 = load i32, i32* %i, align 4
  %idxprom761 = sext i32 %359 to i64
  %arrayidx762 = getelementptr inbounds [256 x %struct.Move], [256 x %struct.Move]* %movelist, i32 0, i64 %idxprom761
  %mask_index763 = getelementptr inbounds %struct.Move, %struct.Move* %arrayidx762, i32 0, i32 1
  %360 = load i32, i32* %mask_index763, align 4
  %361 = load i32*, i32** %row.addr, align 8
  store i32 %360, i32* %361, align 4
  br label %if.end.765

if.else.764:                                      ; preds = %if.else.754
  call void (i8*, i32, i32, i8*, ...) @_fatal_error_aux(i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str, i32 0, i32 0), i32 238, i32 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0))
  br label %if.end.765

if.end.765:                                       ; preds = %if.else.764, %if.then.757
  br label %if.end.766

if.end.766:                                       ; preds = %if.end.765, %if.then.747
  %362 = load i64, i64* @g_num_nodes, align 8
  %363 = load i64*, i64** %nodes.addr, align 8
  store i64 %362, i64* %363, align 8
  call void @print_stats()
  %364 = load i32, i32* %value, align 4
  store i32 %364, i32* %retval
  br label %return

if.end.767:                                       ; preds = %for.end.740
  store i32 0, i32* %rem768, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.769

for.cond.769:                                     ; preds = %for.inc.791, %if.end.767
  %365 = load i32, i32* %i, align 4
  %366 = load i32, i32* %num_moves, align 4
  %cmp770 = icmp slt i32 %365, %366
  br i1 %cmp770, label %for.body.772, label %for.end.793

for.body.772:                                     ; preds = %for.cond.769
  %367 = load i32, i32* %i, align 4
  %idxprom773 = sext i32 %367 to i64
  %arrayidx774 = getelementptr inbounds [256 x %struct.Move], [256 x %struct.Move]* %movelist, i32 0, i64 %idxprom773
  %info775 = getelementptr inbounds %struct.Move, %struct.Move* %arrayidx774, i32 0, i32 2
  %368 = load i32, i32* %info775, align 4
  %cmp776 = icmp sle i32 %368, -5000
  br i1 %cmp776, label %if.then.778, label %if.else.780

if.then.778:                                      ; preds = %for.body.772
  %369 = load i32, i32* %rem768, align 4
  %inc779 = add nsw i32 %369, 1
  store i32 %inc779, i32* %rem768, align 4
  br label %if.end.790

if.else.780:                                      ; preds = %for.body.772
  %370 = load i32, i32* %rem768, align 4
  %cmp781 = icmp sgt i32 %370, 0
  br i1 %cmp781, label %if.then.783, label %if.end.789

if.then.783:                                      ; preds = %if.else.780
  %371 = load i32, i32* %i, align 4
  %372 = load i32, i32* %rem768, align 4
  %sub784 = sub nsw i32 %371, %372
  %idxprom785 = sext i32 %sub784 to i64
  %arrayidx786 = getelementptr inbounds [256 x %struct.Move], [256 x %struct.Move]* %movelist, i32 0, i64 %idxprom785
  %373 = load i32, i32* %i, align 4
  %idxprom787 = sext i32 %373 to i64
  %arrayidx788 = getelementptr inbounds [256 x %struct.Move], [256 x %struct.Move]* %movelist, i32 0, i64 %idxprom787
  %374 = bitcast %struct.Move* %arrayidx786 to i8*
  %375 = bitcast %struct.Move* %arrayidx788 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %374, i8* %375, i64 12, i32 4, i1 false)
  br label %if.end.789

if.end.789:                                       ; preds = %if.then.783, %if.else.780
  br label %if.end.790

if.end.790:                                       ; preds = %if.end.789, %if.then.778
  br label %for.inc.791

for.inc.791:                                      ; preds = %if.end.790
  %376 = load i32, i32* %i, align 4
  %inc792 = add nsw i32 %376, 1
  store i32 %inc792, i32* %i, align 4
  br label %for.cond.769

for.end.793:                                      ; preds = %for.cond.769
  %377 = load i32, i32* %rem768, align 4
  %378 = load i32, i32* %num_moves, align 4
  %sub794 = sub nsw i32 %378, %377
  store i32 %sub794, i32* %num_moves, align 4
  call void @print_stats()
  %379 = load i32, i32* %num_moves, align 4
  %cmp795 = icmp eq i32 %379, 0
  br i1 %cmp795, label %if.then.797, label %if.end.798

if.then.797:                                      ; preds = %for.end.793
  br label %for.end.851

if.end.798:                                       ; preds = %for.end.793
  store i32 0, i32* %i, align 4
  br label %for.cond.799

for.cond.799:                                     ; preds = %for.inc.843, %if.end.798
  %380 = load i32, i32* %i, align 4
  %381 = load i32, i32* %num_moves, align 4
  %cmp800 = icmp slt i32 %380, %381
  br i1 %cmp800, label %for.body.802, label %for.end.845

for.body.802:                                     ; preds = %for.cond.799
  %382 = load i32, i32* %i, align 4
  %idxprom803 = sext i32 %382 to i64
  %arrayidx804 = getelementptr inbounds [256 x %struct.Move], [256 x %struct.Move]* %movelist, i32 0, i64 %idxprom803
  %info805 = getelementptr inbounds %struct.Move, %struct.Move* %arrayidx804, i32 0, i32 2
  %383 = load i32, i32* %info805, align 4
  store i32 %383, i32* %max, align 4
  %384 = load i32, i32* %i, align 4
  store i32 %384, i32* %index, align 4
  %385 = load i32, i32* %i, align 4
  %add806 = add nsw i32 %385, 1
  store i32 %add806, i32* %j, align 4
  br label %for.cond.807

for.cond.807:                                     ; preds = %for.inc.821, %for.body.802
  %386 = load i32, i32* %j, align 4
  %387 = load i32, i32* %num_moves, align 4
  %cmp808 = icmp slt i32 %386, %387
  br i1 %cmp808, label %for.body.810, label %for.end.823

for.body.810:                                     ; preds = %for.cond.807
  %388 = load i32, i32* %j, align 4
  %idxprom811 = sext i32 %388 to i64
  %arrayidx812 = getelementptr inbounds [256 x %struct.Move], [256 x %struct.Move]* %movelist, i32 0, i64 %idxprom811
  %info813 = getelementptr inbounds %struct.Move, %struct.Move* %arrayidx812, i32 0, i32 2
  %389 = load i32, i32* %info813, align 4
  %390 = load i32, i32* %max, align 4
  %cmp814 = icmp sgt i32 %389, %390
  br i1 %cmp814, label %if.then.816, label %if.end.820

if.then.816:                                      ; preds = %for.body.810
  %391 = load i32, i32* %j, align 4
  %idxprom817 = sext i32 %391 to i64
  %arrayidx818 = getelementptr inbounds [256 x %struct.Move], [256 x %struct.Move]* %movelist, i32 0, i64 %idxprom817
  %info819 = getelementptr inbounds %struct.Move, %struct.Move* %arrayidx818, i32 0, i32 2
  %392 = load i32, i32* %info819, align 4
  store i32 %392, i32* %max, align 4
  %393 = load i32, i32* %j, align 4
  store i32 %393, i32* %index, align 4
  br label %if.end.820

if.end.820:                                       ; preds = %if.then.816, %for.body.810
  br label %for.inc.821

for.inc.821:                                      ; preds = %if.end.820
  %394 = load i32, i32* %j, align 4
  %inc822 = add nsw i32 %394, 1
  store i32 %inc822, i32* %j, align 4
  br label %for.cond.807

for.end.823:                                      ; preds = %for.cond.807
  %395 = load i32, i32* %index, align 4
  %396 = load i32, i32* %i, align 4
  %cmp824 = icmp ne i32 %395, %396
  br i1 %cmp824, label %if.then.826, label %if.end.842

if.then.826:                                      ; preds = %for.end.823
  %397 = load i32, i32* %index, align 4
  %idxprom827 = sext i32 %397 to i64
  %arrayidx828 = getelementptr inbounds [256 x %struct.Move], [256 x %struct.Move]* %movelist, i32 0, i64 %idxprom827
  %398 = bitcast %struct.Move* %swp to i8*
  %399 = bitcast %struct.Move* %arrayidx828 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %398, i8* %399, i64 12, i32 4, i1 false)
  %400 = load i32, i32* %index, align 4
  store i32 %400, i32* %j, align 4
  br label %for.cond.829

for.cond.829:                                     ; preds = %for.inc.838, %if.then.826
  %401 = load i32, i32* %j, align 4
  %402 = load i32, i32* %i, align 4
  %cmp830 = icmp ne i32 %401, %402
  br i1 %cmp830, label %for.body.832, label %for.end.839

for.body.832:                                     ; preds = %for.cond.829
  %403 = load i32, i32* %j, align 4
  %idxprom833 = sext i32 %403 to i64
  %arrayidx834 = getelementptr inbounds [256 x %struct.Move], [256 x %struct.Move]* %movelist, i32 0, i64 %idxprom833
  %404 = load i32, i32* %j, align 4
  %sub835 = sub nsw i32 %404, 1
  %idxprom836 = sext i32 %sub835 to i64
  %arrayidx837 = getelementptr inbounds [256 x %struct.Move], [256 x %struct.Move]* %movelist, i32 0, i64 %idxprom836
  %405 = bitcast %struct.Move* %arrayidx834 to i8*
  %406 = bitcast %struct.Move* %arrayidx837 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %405, i8* %406, i64 12, i32 4, i1 false)
  br label %for.inc.838

for.inc.838:                                      ; preds = %for.body.832
  %407 = load i32, i32* %j, align 4
  %dec = add nsw i32 %407, -1
  store i32 %dec, i32* %j, align 4
  br label %for.cond.829

for.end.839:                                      ; preds = %for.cond.829
  %408 = load i32, i32* %i, align 4
  %idxprom840 = sext i32 %408 to i64
  %arrayidx841 = getelementptr inbounds [256 x %struct.Move], [256 x %struct.Move]* %movelist, i32 0, i64 %idxprom840
  %409 = bitcast %struct.Move* %arrayidx841 to i8*
  %410 = bitcast %struct.Move* %swp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %409, i8* %410, i64 12, i32 4, i1 false)
  br label %if.end.842

if.end.842:                                       ; preds = %for.end.839, %for.end.823
  br label %for.inc.843

for.inc.843:                                      ; preds = %if.end.842
  %411 = load i32, i32* %i, align 4
  %inc844 = add nsw i32 %411, 1
  store i32 %inc844, i32* %i, align 4
  br label %for.cond.799

for.end.845:                                      ; preds = %for.cond.799
  %412 = load i32, i32* %value, align 4
  %413 = load i32, i32* %d, align 4
  %call846 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.7, i32 0, i32 0), i32 %412, i32 %413)
  %414 = load i64, i64* @g_num_nodes, align 8
  %conv847 = trunc i64 %414 to i32
  %call848 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i32 0, i32 0), i32 %conv847)
  br label %for.inc.849

for.inc.849:                                      ; preds = %for.end.845
  %415 = load i32, i32* %d, align 4
  %add850 = add nsw i32 %415, 44
  store i32 %add850, i32* %d, align 4
  br label %for.cond.47

for.end.851:                                      ; preds = %if.then.797, %for.cond.47
  %416 = load i32*, i32** %row.addr, align 8
  store i32 -1, i32* %416, align 4
  %417 = load i32*, i32** %col.addr, align 8
  store i32 -1, i32* %417, align 4
  %418 = load i64, i64* @g_num_nodes, align 8
  %419 = load i64*, i64** %nodes.addr, align 8
  store i64 %418, i64* %419, align 8
  %420 = load i32, i32* %value, align 4
  store i32 %420, i32* %retval
  br label %return

return:                                           ; preds = %for.end.851, %if.end.766, %if.then.38, %if.then.28
  %421 = load i32, i32* %retval
  ret i32 %421
}

; Function Attrs: nounwind
declare i32 @toupper(i32) #1

declare void @_fatal_error_aux(i8*, i32, i32, i8*, ...) #2

; Function Attrs: noreturn nounwind
declare void @exit(i32) #3

declare i32 @move_generator(%struct.Move*, i32) #2

declare void @score_and_get_first(%struct.Move*, i32, i32, i64, i32) #2

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #4

declare void @sort_moves(%struct.Move*, i32, i32) #2

declare void @set_position_values(...) #2

declare void @toggle_move(i64, i32, i32) #2

declare void @check_hash_code_sanity(...) #2

; Function Attrs: nounwind uwtable
define internal i32 @negamax(i32 %depth_remaining, i32 %whos_turn_t, i32 %alpha, i32 %beta) #0 {
entry:
  %retval = alloca i32, align 4
  %depth_remaining.addr = alloca i32, align 4
  %whos_turn_t.addr = alloca i32, align 4
  %alpha.addr = alloca i32, align 4
  %beta.addr = alloca i32, align 4
  %movelist = alloca [256 x %struct.Move], align 16
  %best = alloca %struct.Move, align 8
  %whos_turn = alloca i32, align 4
  %opponent = alloca i32, align 4
  %value = alloca i32, align 4
  %init_alpha = alloca i32, align 4
  %init_beta = alloca i32, align 4
  %start_nodes = alloca i32, align 4
  %forcefirst = alloca %struct.Move, align 4
  %who_wins_value = alloca i32, align 4
  %stage = alloca i32, align 4
  %state = alloca i32, align 4
  %true_count = alloca i32, align 4
  %i = alloca i32, align 4
  %num_moves = alloca i32, align 4
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  %forcefirst.coerce = alloca { i64, i32 }
  %arrayidx88.coerce = alloca { i64, i32 }
  %arrayidx417.coerce = alloca { i64, i32 }
  store i32 %depth_remaining, i32* %depth_remaining.addr, align 4
  store i32 %whos_turn_t, i32* %whos_turn_t.addr, align 4
  store i32 %alpha, i32* %alpha.addr, align 4
  store i32 %beta, i32* %beta.addr, align 4
  %0 = load i32, i32* %whos_turn_t.addr, align 4
  %and = and i32 %0, 1
  store i32 %and, i32* %whos_turn, align 4
  %1 = load i32, i32* %whos_turn_t.addr, align 4
  %xor = xor i32 %1, 1
  store i32 %xor, i32* %opponent, align 4
  %2 = load i32, i32* %alpha.addr, align 4
  store i32 %2, i32* %init_alpha, align 4
  %3 = load i32, i32* %beta.addr, align 4
  store i32 %3, i32* %init_beta, align 4
  %4 = load i64, i64* @g_num_nodes, align 8
  %conv = trunc i64 %4 to i32
  store i32 %conv, i32* %start_nodes, align 4
  store i32 0, i32* %stage, align 4
  store i32 0, i32* %state, align 4
  store i32 0, i32* %i, align 4
  store i32 1, i32* %num_moves, align 4
  %5 = load i64, i64* @g_num_nodes, align 8
  %inc = add i64 %5, 1
  store i64 %inc, i64* @g_num_nodes, align 8
  %6 = load i32, i32* @starting_depth, align 4
  %7 = load i32, i32* %depth_remaining.addr, align 4
  %sub = sub nsw i32 %6, %7
  %idxprom = sext i32 %sub to i64
  %arrayidx = getelementptr inbounds [40 x i32], [40 x i32]* @stat_nodes, i32 0, i64 %idxprom
  %8 = load i32, i32* %arrayidx, align 4
  %inc1 = add nsw i32 %8, 1
  store i32 %inc1, i32* %arrayidx, align 4
  %9 = load i32, i32* %depth_remaining.addr, align 4
  %cmp = icmp sle i32 %9, 0
  br i1 %cmp, label %if.then, label %if.end.12

if.then:                                          ; preds = %entry
  store i32 0, i32* %a, align 4
  store i32 0, i32* %b, align 4
  %10 = load i32, i32* %whos_turn, align 4
  %call = call i32 (i32, i32, ...) bitcast (i32 (...)* @does_next_player_win to i32 (i32, i32, ...)*)(i32 %10, i32 0)
  store i32 %call, i32* %a, align 4
  %cmp3 = icmp sgt i32 %call, 0
  br i1 %cmp3, label %if.then.5, label %if.end

if.then.5:                                        ; preds = %if.then
  store i32 5000, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  %11 = load i32, i32* %opponent, align 4
  %call6 = call i32 (i32, i32, ...) bitcast (i32 (...)* @does_who_just_moved_win to i32 (i32, i32, ...)*)(i32 %11, i32 0)
  store i32 %call6, i32* %b, align 4
  %cmp7 = icmp sge i32 %call6, 0
  br i1 %cmp7, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %if.end
  store i32 -5000, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.end
  %12 = load i32, i32* %a, align 4
  %13 = load i32, i32* %b, align 4
  %sub11 = sub nsw i32 %12, %13
  store i32 %sub11, i32* %retval
  br label %return

if.end.12:                                        ; preds = %entry
  %14 = load i32, i32* %whos_turn, align 4
  %idxprom13 = sext i32 %14 to i64
  %arrayidx14 = getelementptr inbounds [2 x %struct.Basic_Info], [2 x %struct.Basic_Info]* @g_info_totals, i32 0, i64 %idxprom13
  %safe = getelementptr inbounds %struct.Basic_Info, %struct.Basic_Info* %arrayidx14, i32 0, i32 0
  %15 = load i32, i32* %safe, align 4
  %16 = load i32, i32* %opponent, align 4
  %idxprom15 = sext i32 %16 to i64
  %arrayidx16 = getelementptr inbounds [2 x %struct.Basic_Info], [2 x %struct.Basic_Info]* @g_info_totals, i32 0, i64 %idxprom15
  %real = getelementptr inbounds %struct.Basic_Info, %struct.Basic_Info* %arrayidx16, i32 0, i32 1
  %17 = load i32, i32* %real, align 4
  %cmp17 = icmp sgt i32 %15, %17
  br i1 %cmp17, label %if.then.19, label %if.end.21

if.then.19:                                       ; preds = %if.end.12
  %18 = load i32, i32* @cut1, align 4
  %inc20 = add nsw i32 %18, 1
  store i32 %inc20, i32* @cut1, align 4
  store i32 5000, i32* %retval
  br label %return

if.end.21:                                        ; preds = %if.end.12
  %19 = load i32, i32* %opponent, align 4
  %idxprom22 = sext i32 %19 to i64
  %arrayidx23 = getelementptr inbounds [2 x %struct.Basic_Info], [2 x %struct.Basic_Info]* @g_info_totals, i32 0, i64 %idxprom22
  %safe24 = getelementptr inbounds %struct.Basic_Info, %struct.Basic_Info* %arrayidx23, i32 0, i32 0
  %20 = load i32, i32* %safe24, align 4
  %21 = load i32, i32* %whos_turn, align 4
  %idxprom25 = sext i32 %21 to i64
  %arrayidx26 = getelementptr inbounds [2 x %struct.Basic_Info], [2 x %struct.Basic_Info]* @g_info_totals, i32 0, i64 %idxprom25
  %real27 = getelementptr inbounds %struct.Basic_Info, %struct.Basic_Info* %arrayidx26, i32 0, i32 1
  %22 = load i32, i32* %real27, align 4
  %cmp28 = icmp sge i32 %20, %22
  br i1 %cmp28, label %if.then.30, label %if.end.32

if.then.30:                                       ; preds = %if.end.21
  %23 = load i32, i32* @cut2, align 4
  %inc31 = add nsw i32 %23, 1
  store i32 %inc31, i32* @cut2, align 4
  store i32 -5000, i32* %retval
  br label %return

if.end.32:                                        ; preds = %if.end.21
  %array_index = getelementptr inbounds %struct.Move, %struct.Move* %forcefirst, i32 0, i32 0
  store i32 -1, i32* %array_index, align 4
  %24 = load i32, i32* %depth_remaining.addr, align 4
  %25 = load i32, i32* %whos_turn, align 4
  %call33 = call i32 @hashlookup(i32* %value, i32* %alpha.addr, i32* %beta.addr, i32 %24, %struct.Move* %forcefirst, i32 %25)
  %tobool = icmp ne i32 %call33, 0
  br i1 %tobool, label %if.then.34, label %if.end.35

if.then.34:                                       ; preds = %if.end.32
  %26 = load i32, i32* %value, align 4
  store i32 %26, i32* %retval
  br label %return

if.end.35:                                        ; preds = %if.end.32
  %array_index36 = getelementptr inbounds %struct.Move, %struct.Move* %forcefirst, i32 0, i32 0
  store i32 -1, i32* %array_index36, align 4
  %27 = load i32, i32* %whos_turn, align 4
  %call37 = call i32 (i32, i32, ...) bitcast (i32 (...)* @does_next_player_win to i32 (i32, i32, ...)*)(i32 %27, i32 0)
  store i32 %call37, i32* %who_wins_value, align 4
  %cmp38 = icmp sgt i32 %call37, 0
  br i1 %cmp38, label %if.then.40, label %if.end.42

if.then.40:                                       ; preds = %if.end.35
  %28 = load i32, i32* @cut3, align 4
  %inc41 = add nsw i32 %28, 1
  store i32 %inc41, i32* @cut3, align 4
  store i32 5000, i32* %retval
  br label %return

if.end.42:                                        ; preds = %if.end.35
  %29 = load i32, i32* %opponent, align 4
  %call43 = call i32 (i32, i32, ...) bitcast (i32 (...)* @does_who_just_moved_win to i32 (i32, i32, ...)*)(i32 %29, i32 0)
  store i32 %call43, i32* %who_wins_value, align 4
  %cmp44 = icmp sge i32 %call43, 0
  br i1 %cmp44, label %if.then.46, label %if.end.48

if.then.46:                                       ; preds = %if.end.42
  %30 = load i32, i32* @cut4, align 4
  %inc47 = add nsw i32 %30, 1
  store i32 %inc47, i32* @cut4, align 4
  store i32 -5000, i32* %retval
  br label %return

if.end.48:                                        ; preds = %if.end.42
  store i32 0, i32* %i, align 4
  store i32 0, i32* %true_count, align 4
  store i32 0, i32* %state, align 4
  store i32 0, i32* %stage, align 4
  store i32 1, i32* %num_moves, align 4
  %arraydecay = getelementptr inbounds [256 x %struct.Move], [256 x %struct.Move]* %movelist, i32 0, i32 0
  %31 = load i32, i32* %whos_turn, align 4
  %call49 = call i32 @move_generator_stage1(%struct.Move* %arraydecay, i32 %31)
  store i32 %call49, i32* %true_count, align 4
  %32 = load i32, i32* %true_count, align 4
  %cmp50 = icmp eq i32 %32, 0
  br i1 %cmp50, label %if.then.52, label %if.end.59

if.then.52:                                       ; preds = %if.end.48
  %arraydecay53 = getelementptr inbounds [256 x %struct.Move], [256 x %struct.Move]* %movelist, i32 0, i32 0
  %33 = load i32, i32* %whos_turn, align 4
  %call54 = call i32 @move_generator_stage2(%struct.Move* %arraydecay53, i32 0, i32 %33)
  store i32 %call54, i32* %true_count, align 4
  store i32 1, i32* %stage, align 4
  %34 = load i32, i32* %true_count, align 4
  %cmp55 = icmp eq i32 %34, 0
  br i1 %cmp55, label %if.then.57, label %if.end.58

if.then.57:                                       ; preds = %if.then.52
  call void (i8*, i32, i32, i8*, ...) @_fatal_error_aux(i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str, i32 0, i32 0), i32 446, i32 1, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.13, i32 0, i32 0))
  br label %if.end.58

if.end.58:                                        ; preds = %if.then.57, %if.then.52
  br label %if.end.59

if.end.59:                                        ; preds = %if.end.58, %if.end.48
  %arraydecay60 = getelementptr inbounds [256 x %struct.Move], [256 x %struct.Move]* %movelist, i32 0, i32 0
  %35 = load i32, i32* %true_count, align 4
  %36 = load i32, i32* %whos_turn, align 4
  %37 = bitcast { i64, i32 }* %forcefirst.coerce to i8*
  %38 = bitcast %struct.Move* %forcefirst to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %37, i8* %38, i64 12, i32 0, i1 false)
  %39 = getelementptr { i64, i32 }, { i64, i32 }* %forcefirst.coerce, i32 0, i32 0
  %40 = load i64, i64* %39, align 1
  %41 = getelementptr { i64, i32 }, { i64, i32 }* %forcefirst.coerce, i32 0, i32 1
  %42 = load i32, i32* %41, align 1
  call void @score_and_get_first(%struct.Move* %arraydecay60, i32 %35, i32 %36, i64 %40, i32 %42)
  %arrayidx61 = getelementptr inbounds [256 x %struct.Move], [256 x %struct.Move]* %movelist, i32 0, i64 0
  %43 = bitcast %struct.Move* %best to i8*
  %44 = bitcast %struct.Move* %arrayidx61 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %43, i8* %44, i64 12, i32 4, i1 false)
  br label %while.cond

while.cond:                                       ; preds = %if.end.786, %if.end.59
  %45 = load i32, i32* %state, align 4
  %cmp62 = icmp slt i32 %45, 3
  br i1 %cmp62, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %46 = load i32, i32* %state, align 4
  %cmp64 = icmp eq i32 %46, 0
  br i1 %cmp64, label %if.then.66, label %if.else

if.then.66:                                       ; preds = %while.body
  store i32 1, i32* %state, align 4
  br label %if.end.80

if.else:                                          ; preds = %while.body
  %47 = load i32, i32* %state, align 4
  %cmp67 = icmp eq i32 %47, 1
  br i1 %cmp67, label %if.then.69, label %if.else.76

if.then.69:                                       ; preds = %if.else
  %arraydecay70 = getelementptr inbounds [256 x %struct.Move], [256 x %struct.Move]* %movelist, i32 0, i32 0
  %48 = load i32, i32* %true_count, align 4
  call void @sort_moves(%struct.Move* %arraydecay70, i32 1, i32 %48)
  %49 = load i32, i32* %true_count, align 4
  store i32 %49, i32* %num_moves, align 4
  %50 = load i32, i32* %stage, align 4
  %cmp71 = icmp eq i32 %50, 0
  br i1 %cmp71, label %if.then.73, label %if.else.74

if.then.73:                                       ; preds = %if.then.69
  store i32 2, i32* %state, align 4
  br label %if.end.75

if.else.74:                                       ; preds = %if.then.69
  store i32 3, i32* %state, align 4
  br label %if.end.75

if.end.75:                                        ; preds = %if.else.74, %if.then.73
  br label %if.end.79

if.else.76:                                       ; preds = %if.else
  %arraydecay77 = getelementptr inbounds [256 x %struct.Move], [256 x %struct.Move]* %movelist, i32 0, i32 0
  %51 = load i32, i32* %num_moves, align 4
  %52 = load i32, i32* %whos_turn, align 4
  %call78 = call i32 @move_generator_stage2(%struct.Move* %arraydecay77, i32 %51, i32 %52)
  store i32 %call78, i32* %num_moves, align 4
  store i32 3, i32* %state, align 4
  br label %if.end.79

if.end.79:                                        ; preds = %if.else.76, %if.end.75
  br label %if.end.80

if.end.80:                                        ; preds = %if.end.79, %if.then.66
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.80
  %53 = load i32, i32* %i, align 4
  %54 = load i32, i32* %num_moves, align 4
  %cmp81 = icmp slt i32 %53, %54
  br i1 %cmp81, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %55 = load i32, i32* %i, align 4
  %56 = load i32, i32* @starting_depth, align 4
  %57 = load i32, i32* %depth_remaining.addr, align 4
  %sub83 = sub nsw i32 %56, %57
  %idxprom84 = sext i32 %sub83 to i64
  %arrayidx85 = getelementptr inbounds [128 x i32], [128 x i32]* @g_move_number, i32 0, i64 %idxprom84
  store i32 %55, i32* %arrayidx85, align 4
  %58 = load i32, i32* @g_empty_squares, align 4
  %sub86 = sub nsw i32 %58, 2
  store i32 %sub86, i32* @g_empty_squares, align 4
  %59 = load i32, i32* %i, align 4
  %idxprom87 = sext i32 %59 to i64
  %arrayidx88 = getelementptr inbounds [256 x %struct.Move], [256 x %struct.Move]* %movelist, i32 0, i64 %idxprom87
  %60 = load i32, i32* %whos_turn, align 4
  %61 = bitcast { i64, i32 }* %arrayidx88.coerce to i8*
  %62 = bitcast %struct.Move* %arrayidx88 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %61, i8* %62, i64 12, i32 0, i1 false)
  %63 = getelementptr { i64, i32 }, { i64, i32 }* %arrayidx88.coerce, i32 0, i32 0
  %64 = load i64, i64* %63, align 1
  %65 = getelementptr { i64, i32 }, { i64, i32 }* %arrayidx88.coerce, i32 0, i32 1
  %66 = load i32, i32* %65, align 1
  call void @toggle_move(i64 %64, i32 %66, i32 %60)
  %67 = load i32, i32* %i, align 4
  %idxprom89 = sext i32 %67 to i64
  %arrayidx90 = getelementptr inbounds [256 x %struct.Move], [256 x %struct.Move]* %movelist, i32 0, i64 %idxprom89
  %mask_index = getelementptr inbounds %struct.Move, %struct.Move* %arrayidx90, i32 0, i32 1
  %68 = load i32, i32* %mask_index, align 4
  %idxprom91 = sext i32 %68 to i64
  %69 = load i32, i32* %i, align 4
  %idxprom92 = sext i32 %69 to i64
  %arrayidx93 = getelementptr inbounds [256 x %struct.Move], [256 x %struct.Move]* %movelist, i32 0, i64 %idxprom92
  %array_index94 = getelementptr inbounds %struct.Move, %struct.Move* %arrayidx93, i32 0, i32 0
  %70 = load i32, i32* %array_index94, align 4
  %idxprom95 = sext i32 %70 to i64
  %71 = load i32, i32* %whos_turn, align 4
  %idxprom96 = sext i32 %71 to i64
  %arrayidx97 = getelementptr inbounds [2 x [32 x [32 x %struct.KeyInfo]]], [2 x [32 x [32 x %struct.KeyInfo]]]* @g_keyinfo, i32 0, i64 %idxprom96
  %arrayidx98 = getelementptr inbounds [32 x [32 x %struct.KeyInfo]], [32 x [32 x %struct.KeyInfo]]* %arrayidx97, i32 0, i64 %idxprom95
  %arrayidx99 = getelementptr inbounds [32 x %struct.KeyInfo], [32 x %struct.KeyInfo]* %arrayidx98, i32 0, i64 %idxprom91
  %norm = getelementptr inbounds %struct.KeyInfo, %struct.KeyInfo* %arrayidx99, i32 0, i32 0
  %bit1_index = getelementptr inbounds %struct.KeyInfo_s, %struct.KeyInfo_s* %norm, i32 0, i32 0
  %72 = load i32, i32* %bit1_index, align 4
  %rem = srem i32 %72, 32
  %shl = shl i32 1, %rem
  %73 = load i32, i32* %i, align 4
  %idxprom100 = sext i32 %73 to i64
  %arrayidx101 = getelementptr inbounds [256 x %struct.Move], [256 x %struct.Move]* %movelist, i32 0, i64 %idxprom100
  %mask_index102 = getelementptr inbounds %struct.Move, %struct.Move* %arrayidx101, i32 0, i32 1
  %74 = load i32, i32* %mask_index102, align 4
  %idxprom103 = sext i32 %74 to i64
  %75 = load i32, i32* %i, align 4
  %idxprom104 = sext i32 %75 to i64
  %arrayidx105 = getelementptr inbounds [256 x %struct.Move], [256 x %struct.Move]* %movelist, i32 0, i64 %idxprom104
  %array_index106 = getelementptr inbounds %struct.Move, %struct.Move* %arrayidx105, i32 0, i32 0
  %76 = load i32, i32* %array_index106, align 4
  %idxprom107 = sext i32 %76 to i64
  %77 = load i32, i32* %whos_turn, align 4
  %idxprom108 = sext i32 %77 to i64
  %arrayidx109 = getelementptr inbounds [2 x [32 x [32 x %struct.KeyInfo]]], [2 x [32 x [32 x %struct.KeyInfo]]]* @g_keyinfo, i32 0, i64 %idxprom108
  %arrayidx110 = getelementptr inbounds [32 x [32 x %struct.KeyInfo]], [32 x [32 x %struct.KeyInfo]]* %arrayidx109, i32 0, i64 %idxprom107
  %arrayidx111 = getelementptr inbounds [32 x %struct.KeyInfo], [32 x %struct.KeyInfo]* %arrayidx110, i32 0, i64 %idxprom103
  %norm112 = getelementptr inbounds %struct.KeyInfo, %struct.KeyInfo* %arrayidx111, i32 0, i32 0
  %bit1_index113 = getelementptr inbounds %struct.KeyInfo_s, %struct.KeyInfo_s* %norm112, i32 0, i32 0
  %78 = load i32, i32* %bit1_index113, align 4
  %div = sdiv i32 %78, 32
  %idxprom114 = sext i32 %div to i64
  %arrayidx115 = getelementptr inbounds [4 x i32], [4 x i32]* getelementptr inbounds (%struct.Hash_Key, %struct.Hash_Key* @g_norm_hashkey, i32 0, i32 0), i32 0, i64 %idxprom114
  %79 = load i32, i32* %arrayidx115, align 4
  %xor116 = xor i32 %79, %shl
  store i32 %xor116, i32* %arrayidx115, align 4
  %80 = load i32, i32* %i, align 4
  %idxprom117 = sext i32 %80 to i64
  %arrayidx118 = getelementptr inbounds [256 x %struct.Move], [256 x %struct.Move]* %movelist, i32 0, i64 %idxprom117
  %mask_index119 = getelementptr inbounds %struct.Move, %struct.Move* %arrayidx118, i32 0, i32 1
  %81 = load i32, i32* %mask_index119, align 4
  %idxprom120 = sext i32 %81 to i64
  %82 = load i32, i32* %i, align 4
  %idxprom121 = sext i32 %82 to i64
  %arrayidx122 = getelementptr inbounds [256 x %struct.Move], [256 x %struct.Move]* %movelist, i32 0, i64 %idxprom121
  %array_index123 = getelementptr inbounds %struct.Move, %struct.Move* %arrayidx122, i32 0, i32 0
  %83 = load i32, i32* %array_index123, align 4
  %idxprom124 = sext i32 %83 to i64
  %84 = load i32, i32* %whos_turn, align 4
  %idxprom125 = sext i32 %84 to i64
  %arrayidx126 = getelementptr inbounds [2 x [32 x [32 x %struct.KeyInfo]]], [2 x [32 x [32 x %struct.KeyInfo]]]* @g_keyinfo, i32 0, i64 %idxprom125
  %arrayidx127 = getelementptr inbounds [32 x [32 x %struct.KeyInfo]], [32 x [32 x %struct.KeyInfo]]* %arrayidx126, i32 0, i64 %idxprom124
  %arrayidx128 = getelementptr inbounds [32 x %struct.KeyInfo], [32 x %struct.KeyInfo]* %arrayidx127, i32 0, i64 %idxprom120
  %norm129 = getelementptr inbounds %struct.KeyInfo, %struct.KeyInfo* %arrayidx128, i32 0, i32 0
  %bit2_index = getelementptr inbounds %struct.KeyInfo_s, %struct.KeyInfo_s* %norm129, i32 0, i32 1
  %85 = load i32, i32* %bit2_index, align 4
  %rem130 = srem i32 %85, 32
  %shl131 = shl i32 1, %rem130
  %86 = load i32, i32* %i, align 4
  %idxprom132 = sext i32 %86 to i64
  %arrayidx133 = getelementptr inbounds [256 x %struct.Move], [256 x %struct.Move]* %movelist, i32 0, i64 %idxprom132
  %mask_index134 = getelementptr inbounds %struct.Move, %struct.Move* %arrayidx133, i32 0, i32 1
  %87 = load i32, i32* %mask_index134, align 4
  %idxprom135 = sext i32 %87 to i64
  %88 = load i32, i32* %i, align 4
  %idxprom136 = sext i32 %88 to i64
  %arrayidx137 = getelementptr inbounds [256 x %struct.Move], [256 x %struct.Move]* %movelist, i32 0, i64 %idxprom136
  %array_index138 = getelementptr inbounds %struct.Move, %struct.Move* %arrayidx137, i32 0, i32 0
  %89 = load i32, i32* %array_index138, align 4
  %idxprom139 = sext i32 %89 to i64
  %90 = load i32, i32* %whos_turn, align 4
  %idxprom140 = sext i32 %90 to i64
  %arrayidx141 = getelementptr inbounds [2 x [32 x [32 x %struct.KeyInfo]]], [2 x [32 x [32 x %struct.KeyInfo]]]* @g_keyinfo, i32 0, i64 %idxprom140
  %arrayidx142 = getelementptr inbounds [32 x [32 x %struct.KeyInfo]], [32 x [32 x %struct.KeyInfo]]* %arrayidx141, i32 0, i64 %idxprom139
  %arrayidx143 = getelementptr inbounds [32 x %struct.KeyInfo], [32 x %struct.KeyInfo]* %arrayidx142, i32 0, i64 %idxprom135
  %norm144 = getelementptr inbounds %struct.KeyInfo, %struct.KeyInfo* %arrayidx143, i32 0, i32 0
  %bit2_index145 = getelementptr inbounds %struct.KeyInfo_s, %struct.KeyInfo_s* %norm144, i32 0, i32 1
  %91 = load i32, i32* %bit2_index145, align 4
  %div146 = sdiv i32 %91, 32
  %idxprom147 = sext i32 %div146 to i64
  %arrayidx148 = getelementptr inbounds [4 x i32], [4 x i32]* getelementptr inbounds (%struct.Hash_Key, %struct.Hash_Key* @g_norm_hashkey, i32 0, i32 0), i32 0, i64 %idxprom147
  %92 = load i32, i32* %arrayidx148, align 4
  %xor149 = xor i32 %92, %shl131
  store i32 %xor149, i32* %arrayidx148, align 4
  %93 = load i32, i32* %i, align 4
  %idxprom150 = sext i32 %93 to i64
  %arrayidx151 = getelementptr inbounds [256 x %struct.Move], [256 x %struct.Move]* %movelist, i32 0, i64 %idxprom150
  %mask_index152 = getelementptr inbounds %struct.Move, %struct.Move* %arrayidx151, i32 0, i32 1
  %94 = load i32, i32* %mask_index152, align 4
  %idxprom153 = sext i32 %94 to i64
  %95 = load i32, i32* %i, align 4
  %idxprom154 = sext i32 %95 to i64
  %arrayidx155 = getelementptr inbounds [256 x %struct.Move], [256 x %struct.Move]* %movelist, i32 0, i64 %idxprom154
  %array_index156 = getelementptr inbounds %struct.Move, %struct.Move* %arrayidx155, i32 0, i32 0
  %96 = load i32, i32* %array_index156, align 4
  %idxprom157 = sext i32 %96 to i64
  %97 = load i32, i32* %whos_turn, align 4
  %idxprom158 = sext i32 %97 to i64
  %arrayidx159 = getelementptr inbounds [2 x [32 x [32 x %struct.KeyInfo]]], [2 x [32 x [32 x %struct.KeyInfo]]]* @g_keyinfo, i32 0, i64 %idxprom158
  %arrayidx160 = getelementptr inbounds [32 x [32 x %struct.KeyInfo]], [32 x [32 x %struct.KeyInfo]]* %arrayidx159, i32 0, i64 %idxprom157
  %arrayidx161 = getelementptr inbounds [32 x %struct.KeyInfo], [32 x %struct.KeyInfo]* %arrayidx160, i32 0, i64 %idxprom153
  %norm162 = getelementptr inbounds %struct.KeyInfo, %struct.KeyInfo* %arrayidx161, i32 0, i32 0
  %hash_code = getelementptr inbounds %struct.KeyInfo_s, %struct.KeyInfo_s* %norm162, i32 0, i32 2
  %98 = load i32, i32* %hash_code, align 4
  %99 = load i32, i32* getelementptr inbounds (%struct.Hash_Key, %struct.Hash_Key* @g_norm_hashkey, i32 0, i32 1), align 4
  %xor163 = xor i32 %99, %98
  store i32 %xor163, i32* getelementptr inbounds (%struct.Hash_Key, %struct.Hash_Key* @g_norm_hashkey, i32 0, i32 1), align 4
  %100 = load i32, i32* %i, align 4
  %idxprom164 = sext i32 %100 to i64
  %arrayidx165 = getelementptr inbounds [256 x %struct.Move], [256 x %struct.Move]* %movelist, i32 0, i64 %idxprom164
  %mask_index166 = getelementptr inbounds %struct.Move, %struct.Move* %arrayidx165, i32 0, i32 1
  %101 = load i32, i32* %mask_index166, align 4
  %idxprom167 = sext i32 %101 to i64
  %102 = load i32, i32* %i, align 4
  %idxprom168 = sext i32 %102 to i64
  %arrayidx169 = getelementptr inbounds [256 x %struct.Move], [256 x %struct.Move]* %movelist, i32 0, i64 %idxprom168
  %array_index170 = getelementptr inbounds %struct.Move, %struct.Move* %arrayidx169, i32 0, i32 0
  %103 = load i32, i32* %array_index170, align 4
  %idxprom171 = sext i32 %103 to i64
  %104 = load i32, i32* %whos_turn, align 4
  %idxprom172 = sext i32 %104 to i64
  %arrayidx173 = getelementptr inbounds [2 x [32 x [32 x %struct.KeyInfo]]], [2 x [32 x [32 x %struct.KeyInfo]]]* @g_keyinfo, i32 0, i64 %idxprom172
  %arrayidx174 = getelementptr inbounds [32 x [32 x %struct.KeyInfo]], [32 x [32 x %struct.KeyInfo]]* %arrayidx173, i32 0, i64 %idxprom171
  %arrayidx175 = getelementptr inbounds [32 x %struct.KeyInfo], [32 x %struct.KeyInfo]* %arrayidx174, i32 0, i64 %idxprom167
  %flipV = getelementptr inbounds %struct.KeyInfo, %struct.KeyInfo* %arrayidx175, i32 0, i32 1
  %bit1_index176 = getelementptr inbounds %struct.KeyInfo_s, %struct.KeyInfo_s* %flipV, i32 0, i32 0
  %105 = load i32, i32* %bit1_index176, align 4
  %rem177 = srem i32 %105, 32
  %shl178 = shl i32 1, %rem177
  %106 = load i32, i32* %i, align 4
  %idxprom179 = sext i32 %106 to i64
  %arrayidx180 = getelementptr inbounds [256 x %struct.Move], [256 x %struct.Move]* %movelist, i32 0, i64 %idxprom179
  %mask_index181 = getelementptr inbounds %struct.Move, %struct.Move* %arrayidx180, i32 0, i32 1
  %107 = load i32, i32* %mask_index181, align 4
  %idxprom182 = sext i32 %107 to i64
  %108 = load i32, i32* %i, align 4
  %idxprom183 = sext i32 %108 to i64
  %arrayidx184 = getelementptr inbounds [256 x %struct.Move], [256 x %struct.Move]* %movelist, i32 0, i64 %idxprom183
  %array_index185 = getelementptr inbounds %struct.Move, %struct.Move* %arrayidx184, i32 0, i32 0
  %109 = load i32, i32* %array_index185, align 4
  %idxprom186 = sext i32 %109 to i64
  %110 = load i32, i32* %whos_turn, align 4
  %idxprom187 = sext i32 %110 to i64
  %arrayidx188 = getelementptr inbounds [2 x [32 x [32 x %struct.KeyInfo]]], [2 x [32 x [32 x %struct.KeyInfo]]]* @g_keyinfo, i32 0, i64 %idxprom187
  %arrayidx189 = getelementptr inbounds [32 x [32 x %struct.KeyInfo]], [32 x [32 x %struct.KeyInfo]]* %arrayidx188, i32 0, i64 %idxprom186
  %arrayidx190 = getelementptr inbounds [32 x %struct.KeyInfo], [32 x %struct.KeyInfo]* %arrayidx189, i32 0, i64 %idxprom182
  %flipV191 = getelementptr inbounds %struct.KeyInfo, %struct.KeyInfo* %arrayidx190, i32 0, i32 1
  %bit1_index192 = getelementptr inbounds %struct.KeyInfo_s, %struct.KeyInfo_s* %flipV191, i32 0, i32 0
  %111 = load i32, i32* %bit1_index192, align 4
  %div193 = sdiv i32 %111, 32
  %idxprom194 = sext i32 %div193 to i64
  %arrayidx195 = getelementptr inbounds [4 x i32], [4 x i32]* getelementptr inbounds (%struct.Hash_Key, %struct.Hash_Key* @g_flipV_hashkey, i32 0, i32 0), i32 0, i64 %idxprom194
  %112 = load i32, i32* %arrayidx195, align 4
  %xor196 = xor i32 %112, %shl178
  store i32 %xor196, i32* %arrayidx195, align 4
  %113 = load i32, i32* %i, align 4
  %idxprom197 = sext i32 %113 to i64
  %arrayidx198 = getelementptr inbounds [256 x %struct.Move], [256 x %struct.Move]* %movelist, i32 0, i64 %idxprom197
  %mask_index199 = getelementptr inbounds %struct.Move, %struct.Move* %arrayidx198, i32 0, i32 1
  %114 = load i32, i32* %mask_index199, align 4
  %idxprom200 = sext i32 %114 to i64
  %115 = load i32, i32* %i, align 4
  %idxprom201 = sext i32 %115 to i64
  %arrayidx202 = getelementptr inbounds [256 x %struct.Move], [256 x %struct.Move]* %movelist, i32 0, i64 %idxprom201
  %array_index203 = getelementptr inbounds %struct.Move, %struct.Move* %arrayidx202, i32 0, i32 0
  %116 = load i32, i32* %array_index203, align 4
  %idxprom204 = sext i32 %116 to i64
  %117 = load i32, i32* %whos_turn, align 4
  %idxprom205 = sext i32 %117 to i64
  %arrayidx206 = getelementptr inbounds [2 x [32 x [32 x %struct.KeyInfo]]], [2 x [32 x [32 x %struct.KeyInfo]]]* @g_keyinfo, i32 0, i64 %idxprom205
  %arrayidx207 = getelementptr inbounds [32 x [32 x %struct.KeyInfo]], [32 x [32 x %struct.KeyInfo]]* %arrayidx206, i32 0, i64 %idxprom204
  %arrayidx208 = getelementptr inbounds [32 x %struct.KeyInfo], [32 x %struct.KeyInfo]* %arrayidx207, i32 0, i64 %idxprom200
  %flipV209 = getelementptr inbounds %struct.KeyInfo, %struct.KeyInfo* %arrayidx208, i32 0, i32 1
  %bit2_index210 = getelementptr inbounds %struct.KeyInfo_s, %struct.KeyInfo_s* %flipV209, i32 0, i32 1
  %118 = load i32, i32* %bit2_index210, align 4
  %rem211 = srem i32 %118, 32
  %shl212 = shl i32 1, %rem211
  %119 = load i32, i32* %i, align 4
  %idxprom213 = sext i32 %119 to i64
  %arrayidx214 = getelementptr inbounds [256 x %struct.Move], [256 x %struct.Move]* %movelist, i32 0, i64 %idxprom213
  %mask_index215 = getelementptr inbounds %struct.Move, %struct.Move* %arrayidx214, i32 0, i32 1
  %120 = load i32, i32* %mask_index215, align 4
  %idxprom216 = sext i32 %120 to i64
  %121 = load i32, i32* %i, align 4
  %idxprom217 = sext i32 %121 to i64
  %arrayidx218 = getelementptr inbounds [256 x %struct.Move], [256 x %struct.Move]* %movelist, i32 0, i64 %idxprom217
  %array_index219 = getelementptr inbounds %struct.Move, %struct.Move* %arrayidx218, i32 0, i32 0
  %122 = load i32, i32* %array_index219, align 4
  %idxprom220 = sext i32 %122 to i64
  %123 = load i32, i32* %whos_turn, align 4
  %idxprom221 = sext i32 %123 to i64
  %arrayidx222 = getelementptr inbounds [2 x [32 x [32 x %struct.KeyInfo]]], [2 x [32 x [32 x %struct.KeyInfo]]]* @g_keyinfo, i32 0, i64 %idxprom221
  %arrayidx223 = getelementptr inbounds [32 x [32 x %struct.KeyInfo]], [32 x [32 x %struct.KeyInfo]]* %arrayidx222, i32 0, i64 %idxprom220
  %arrayidx224 = getelementptr inbounds [32 x %struct.KeyInfo], [32 x %struct.KeyInfo]* %arrayidx223, i32 0, i64 %idxprom216
  %flipV225 = getelementptr inbounds %struct.KeyInfo, %struct.KeyInfo* %arrayidx224, i32 0, i32 1
  %bit2_index226 = getelementptr inbounds %struct.KeyInfo_s, %struct.KeyInfo_s* %flipV225, i32 0, i32 1
  %124 = load i32, i32* %bit2_index226, align 4
  %div227 = sdiv i32 %124, 32
  %idxprom228 = sext i32 %div227 to i64
  %arrayidx229 = getelementptr inbounds [4 x i32], [4 x i32]* getelementptr inbounds (%struct.Hash_Key, %struct.Hash_Key* @g_flipV_hashkey, i32 0, i32 0), i32 0, i64 %idxprom228
  %125 = load i32, i32* %arrayidx229, align 4
  %xor230 = xor i32 %125, %shl212
  store i32 %xor230, i32* %arrayidx229, align 4
  %126 = load i32, i32* %i, align 4
  %idxprom231 = sext i32 %126 to i64
  %arrayidx232 = getelementptr inbounds [256 x %struct.Move], [256 x %struct.Move]* %movelist, i32 0, i64 %idxprom231
  %mask_index233 = getelementptr inbounds %struct.Move, %struct.Move* %arrayidx232, i32 0, i32 1
  %127 = load i32, i32* %mask_index233, align 4
  %idxprom234 = sext i32 %127 to i64
  %128 = load i32, i32* %i, align 4
  %idxprom235 = sext i32 %128 to i64
  %arrayidx236 = getelementptr inbounds [256 x %struct.Move], [256 x %struct.Move]* %movelist, i32 0, i64 %idxprom235
  %array_index237 = getelementptr inbounds %struct.Move, %struct.Move* %arrayidx236, i32 0, i32 0
  %129 = load i32, i32* %array_index237, align 4
  %idxprom238 = sext i32 %129 to i64
  %130 = load i32, i32* %whos_turn, align 4
  %idxprom239 = sext i32 %130 to i64
  %arrayidx240 = getelementptr inbounds [2 x [32 x [32 x %struct.KeyInfo]]], [2 x [32 x [32 x %struct.KeyInfo]]]* @g_keyinfo, i32 0, i64 %idxprom239
  %arrayidx241 = getelementptr inbounds [32 x [32 x %struct.KeyInfo]], [32 x [32 x %struct.KeyInfo]]* %arrayidx240, i32 0, i64 %idxprom238
  %arrayidx242 = getelementptr inbounds [32 x %struct.KeyInfo], [32 x %struct.KeyInfo]* %arrayidx241, i32 0, i64 %idxprom234
  %flipV243 = getelementptr inbounds %struct.KeyInfo, %struct.KeyInfo* %arrayidx242, i32 0, i32 1
  %hash_code244 = getelementptr inbounds %struct.KeyInfo_s, %struct.KeyInfo_s* %flipV243, i32 0, i32 2
  %131 = load i32, i32* %hash_code244, align 4
  %132 = load i32, i32* getelementptr inbounds (%struct.Hash_Key, %struct.Hash_Key* @g_flipV_hashkey, i32 0, i32 1), align 4
  %xor245 = xor i32 %132, %131
  store i32 %xor245, i32* getelementptr inbounds (%struct.Hash_Key, %struct.Hash_Key* @g_flipV_hashkey, i32 0, i32 1), align 4
  %133 = load i32, i32* %i, align 4
  %idxprom246 = sext i32 %133 to i64
  %arrayidx247 = getelementptr inbounds [256 x %struct.Move], [256 x %struct.Move]* %movelist, i32 0, i64 %idxprom246
  %mask_index248 = getelementptr inbounds %struct.Move, %struct.Move* %arrayidx247, i32 0, i32 1
  %134 = load i32, i32* %mask_index248, align 4
  %idxprom249 = sext i32 %134 to i64
  %135 = load i32, i32* %i, align 4
  %idxprom250 = sext i32 %135 to i64
  %arrayidx251 = getelementptr inbounds [256 x %struct.Move], [256 x %struct.Move]* %movelist, i32 0, i64 %idxprom250
  %array_index252 = getelementptr inbounds %struct.Move, %struct.Move* %arrayidx251, i32 0, i32 0
  %136 = load i32, i32* %array_index252, align 4
  %idxprom253 = sext i32 %136 to i64
  %137 = load i32, i32* %whos_turn, align 4
  %idxprom254 = sext i32 %137 to i64
  %arrayidx255 = getelementptr inbounds [2 x [32 x [32 x %struct.KeyInfo]]], [2 x [32 x [32 x %struct.KeyInfo]]]* @g_keyinfo, i32 0, i64 %idxprom254
  %arrayidx256 = getelementptr inbounds [32 x [32 x %struct.KeyInfo]], [32 x [32 x %struct.KeyInfo]]* %arrayidx255, i32 0, i64 %idxprom253
  %arrayidx257 = getelementptr inbounds [32 x %struct.KeyInfo], [32 x %struct.KeyInfo]* %arrayidx256, i32 0, i64 %idxprom249
  %flipH = getelementptr inbounds %struct.KeyInfo, %struct.KeyInfo* %arrayidx257, i32 0, i32 2
  %bit1_index258 = getelementptr inbounds %struct.KeyInfo_s, %struct.KeyInfo_s* %flipH, i32 0, i32 0
  %138 = load i32, i32* %bit1_index258, align 4
  %rem259 = srem i32 %138, 32
  %shl260 = shl i32 1, %rem259
  %139 = load i32, i32* %i, align 4
  %idxprom261 = sext i32 %139 to i64
  %arrayidx262 = getelementptr inbounds [256 x %struct.Move], [256 x %struct.Move]* %movelist, i32 0, i64 %idxprom261
  %mask_index263 = getelementptr inbounds %struct.Move, %struct.Move* %arrayidx262, i32 0, i32 1
  %140 = load i32, i32* %mask_index263, align 4
  %idxprom264 = sext i32 %140 to i64
  %141 = load i32, i32* %i, align 4
  %idxprom265 = sext i32 %141 to i64
  %arrayidx266 = getelementptr inbounds [256 x %struct.Move], [256 x %struct.Move]* %movelist, i32 0, i64 %idxprom265
  %array_index267 = getelementptr inbounds %struct.Move, %struct.Move* %arrayidx266, i32 0, i32 0
  %142 = load i32, i32* %array_index267, align 4
  %idxprom268 = sext i32 %142 to i64
  %143 = load i32, i32* %whos_turn, align 4
  %idxprom269 = sext i32 %143 to i64
  %arrayidx270 = getelementptr inbounds [2 x [32 x [32 x %struct.KeyInfo]]], [2 x [32 x [32 x %struct.KeyInfo]]]* @g_keyinfo, i32 0, i64 %idxprom269
  %arrayidx271 = getelementptr inbounds [32 x [32 x %struct.KeyInfo]], [32 x [32 x %struct.KeyInfo]]* %arrayidx270, i32 0, i64 %idxprom268
  %arrayidx272 = getelementptr inbounds [32 x %struct.KeyInfo], [32 x %struct.KeyInfo]* %arrayidx271, i32 0, i64 %idxprom264
  %flipH273 = getelementptr inbounds %struct.KeyInfo, %struct.KeyInfo* %arrayidx272, i32 0, i32 2
  %bit1_index274 = getelementptr inbounds %struct.KeyInfo_s, %struct.KeyInfo_s* %flipH273, i32 0, i32 0
  %144 = load i32, i32* %bit1_index274, align 4
  %div275 = sdiv i32 %144, 32
  %idxprom276 = sext i32 %div275 to i64
  %arrayidx277 = getelementptr inbounds [4 x i32], [4 x i32]* getelementptr inbounds (%struct.Hash_Key, %struct.Hash_Key* @g_flipH_hashkey, i32 0, i32 0), i32 0, i64 %idxprom276
  %145 = load i32, i32* %arrayidx277, align 4
  %xor278 = xor i32 %145, %shl260
  store i32 %xor278, i32* %arrayidx277, align 4
  %146 = load i32, i32* %i, align 4
  %idxprom279 = sext i32 %146 to i64
  %arrayidx280 = getelementptr inbounds [256 x %struct.Move], [256 x %struct.Move]* %movelist, i32 0, i64 %idxprom279
  %mask_index281 = getelementptr inbounds %struct.Move, %struct.Move* %arrayidx280, i32 0, i32 1
  %147 = load i32, i32* %mask_index281, align 4
  %idxprom282 = sext i32 %147 to i64
  %148 = load i32, i32* %i, align 4
  %idxprom283 = sext i32 %148 to i64
  %arrayidx284 = getelementptr inbounds [256 x %struct.Move], [256 x %struct.Move]* %movelist, i32 0, i64 %idxprom283
  %array_index285 = getelementptr inbounds %struct.Move, %struct.Move* %arrayidx284, i32 0, i32 0
  %149 = load i32, i32* %array_index285, align 4
  %idxprom286 = sext i32 %149 to i64
  %150 = load i32, i32* %whos_turn, align 4
  %idxprom287 = sext i32 %150 to i64
  %arrayidx288 = getelementptr inbounds [2 x [32 x [32 x %struct.KeyInfo]]], [2 x [32 x [32 x %struct.KeyInfo]]]* @g_keyinfo, i32 0, i64 %idxprom287
  %arrayidx289 = getelementptr inbounds [32 x [32 x %struct.KeyInfo]], [32 x [32 x %struct.KeyInfo]]* %arrayidx288, i32 0, i64 %idxprom286
  %arrayidx290 = getelementptr inbounds [32 x %struct.KeyInfo], [32 x %struct.KeyInfo]* %arrayidx289, i32 0, i64 %idxprom282
  %flipH291 = getelementptr inbounds %struct.KeyInfo, %struct.KeyInfo* %arrayidx290, i32 0, i32 2
  %bit2_index292 = getelementptr inbounds %struct.KeyInfo_s, %struct.KeyInfo_s* %flipH291, i32 0, i32 1
  %151 = load i32, i32* %bit2_index292, align 4
  %rem293 = srem i32 %151, 32
  %shl294 = shl i32 1, %rem293
  %152 = load i32, i32* %i, align 4
  %idxprom295 = sext i32 %152 to i64
  %arrayidx296 = getelementptr inbounds [256 x %struct.Move], [256 x %struct.Move]* %movelist, i32 0, i64 %idxprom295
  %mask_index297 = getelementptr inbounds %struct.Move, %struct.Move* %arrayidx296, i32 0, i32 1
  %153 = load i32, i32* %mask_index297, align 4
  %idxprom298 = sext i32 %153 to i64
  %154 = load i32, i32* %i, align 4
  %idxprom299 = sext i32 %154 to i64
  %arrayidx300 = getelementptr inbounds [256 x %struct.Move], [256 x %struct.Move]* %movelist, i32 0, i64 %idxprom299
  %array_index301 = getelementptr inbounds %struct.Move, %struct.Move* %arrayidx300, i32 0, i32 0
  %155 = load i32, i32* %array_index301, align 4
  %idxprom302 = sext i32 %155 to i64
  %156 = load i32, i32* %whos_turn, align 4
  %idxprom303 = sext i32 %156 to i64
  %arrayidx304 = getelementptr inbounds [2 x [32 x [32 x %struct.KeyInfo]]], [2 x [32 x [32 x %struct.KeyInfo]]]* @g_keyinfo, i32 0, i64 %idxprom303
  %arrayidx305 = getelementptr inbounds [32 x [32 x %struct.KeyInfo]], [32 x [32 x %struct.KeyInfo]]* %arrayidx304, i32 0, i64 %idxprom302
  %arrayidx306 = getelementptr inbounds [32 x %struct.KeyInfo], [32 x %struct.KeyInfo]* %arrayidx305, i32 0, i64 %idxprom298
  %flipH307 = getelementptr inbounds %struct.KeyInfo, %struct.KeyInfo* %arrayidx306, i32 0, i32 2
  %bit2_index308 = getelementptr inbounds %struct.KeyInfo_s, %struct.KeyInfo_s* %flipH307, i32 0, i32 1
  %157 = load i32, i32* %bit2_index308, align 4
  %div309 = sdiv i32 %157, 32
  %idxprom310 = sext i32 %div309 to i64
  %arrayidx311 = getelementptr inbounds [4 x i32], [4 x i32]* getelementptr inbounds (%struct.Hash_Key, %struct.Hash_Key* @g_flipH_hashkey, i32 0, i32 0), i32 0, i64 %idxprom310
  %158 = load i32, i32* %arrayidx311, align 4
  %xor312 = xor i32 %158, %shl294
  store i32 %xor312, i32* %arrayidx311, align 4
  %159 = load i32, i32* %i, align 4
  %idxprom313 = sext i32 %159 to i64
  %arrayidx314 = getelementptr inbounds [256 x %struct.Move], [256 x %struct.Move]* %movelist, i32 0, i64 %idxprom313
  %mask_index315 = getelementptr inbounds %struct.Move, %struct.Move* %arrayidx314, i32 0, i32 1
  %160 = load i32, i32* %mask_index315, align 4
  %idxprom316 = sext i32 %160 to i64
  %161 = load i32, i32* %i, align 4
  %idxprom317 = sext i32 %161 to i64
  %arrayidx318 = getelementptr inbounds [256 x %struct.Move], [256 x %struct.Move]* %movelist, i32 0, i64 %idxprom317
  %array_index319 = getelementptr inbounds %struct.Move, %struct.Move* %arrayidx318, i32 0, i32 0
  %162 = load i32, i32* %array_index319, align 4
  %idxprom320 = sext i32 %162 to i64
  %163 = load i32, i32* %whos_turn, align 4
  %idxprom321 = sext i32 %163 to i64
  %arrayidx322 = getelementptr inbounds [2 x [32 x [32 x %struct.KeyInfo]]], [2 x [32 x [32 x %struct.KeyInfo]]]* @g_keyinfo, i32 0, i64 %idxprom321
  %arrayidx323 = getelementptr inbounds [32 x [32 x %struct.KeyInfo]], [32 x [32 x %struct.KeyInfo]]* %arrayidx322, i32 0, i64 %idxprom320
  %arrayidx324 = getelementptr inbounds [32 x %struct.KeyInfo], [32 x %struct.KeyInfo]* %arrayidx323, i32 0, i64 %idxprom316
  %flipH325 = getelementptr inbounds %struct.KeyInfo, %struct.KeyInfo* %arrayidx324, i32 0, i32 2
  %hash_code326 = getelementptr inbounds %struct.KeyInfo_s, %struct.KeyInfo_s* %flipH325, i32 0, i32 2
  %164 = load i32, i32* %hash_code326, align 4
  %165 = load i32, i32* getelementptr inbounds (%struct.Hash_Key, %struct.Hash_Key* @g_flipH_hashkey, i32 0, i32 1), align 4
  %xor327 = xor i32 %165, %164
  store i32 %xor327, i32* getelementptr inbounds (%struct.Hash_Key, %struct.Hash_Key* @g_flipH_hashkey, i32 0, i32 1), align 4
  %166 = load i32, i32* %i, align 4
  %idxprom328 = sext i32 %166 to i64
  %arrayidx329 = getelementptr inbounds [256 x %struct.Move], [256 x %struct.Move]* %movelist, i32 0, i64 %idxprom328
  %mask_index330 = getelementptr inbounds %struct.Move, %struct.Move* %arrayidx329, i32 0, i32 1
  %167 = load i32, i32* %mask_index330, align 4
  %idxprom331 = sext i32 %167 to i64
  %168 = load i32, i32* %i, align 4
  %idxprom332 = sext i32 %168 to i64
  %arrayidx333 = getelementptr inbounds [256 x %struct.Move], [256 x %struct.Move]* %movelist, i32 0, i64 %idxprom332
  %array_index334 = getelementptr inbounds %struct.Move, %struct.Move* %arrayidx333, i32 0, i32 0
  %169 = load i32, i32* %array_index334, align 4
  %idxprom335 = sext i32 %169 to i64
  %170 = load i32, i32* %whos_turn, align 4
  %idxprom336 = sext i32 %170 to i64
  %arrayidx337 = getelementptr inbounds [2 x [32 x [32 x %struct.KeyInfo]]], [2 x [32 x [32 x %struct.KeyInfo]]]* @g_keyinfo, i32 0, i64 %idxprom336
  %arrayidx338 = getelementptr inbounds [32 x [32 x %struct.KeyInfo]], [32 x [32 x %struct.KeyInfo]]* %arrayidx337, i32 0, i64 %idxprom335
  %arrayidx339 = getelementptr inbounds [32 x %struct.KeyInfo], [32 x %struct.KeyInfo]* %arrayidx338, i32 0, i64 %idxprom331
  %flipVH = getelementptr inbounds %struct.KeyInfo, %struct.KeyInfo* %arrayidx339, i32 0, i32 3
  %bit1_index340 = getelementptr inbounds %struct.KeyInfo_s, %struct.KeyInfo_s* %flipVH, i32 0, i32 0
  %171 = load i32, i32* %bit1_index340, align 4
  %rem341 = srem i32 %171, 32
  %shl342 = shl i32 1, %rem341
  %172 = load i32, i32* %i, align 4
  %idxprom343 = sext i32 %172 to i64
  %arrayidx344 = getelementptr inbounds [256 x %struct.Move], [256 x %struct.Move]* %movelist, i32 0, i64 %idxprom343
  %mask_index345 = getelementptr inbounds %struct.Move, %struct.Move* %arrayidx344, i32 0, i32 1
  %173 = load i32, i32* %mask_index345, align 4
  %idxprom346 = sext i32 %173 to i64
  %174 = load i32, i32* %i, align 4
  %idxprom347 = sext i32 %174 to i64
  %arrayidx348 = getelementptr inbounds [256 x %struct.Move], [256 x %struct.Move]* %movelist, i32 0, i64 %idxprom347
  %array_index349 = getelementptr inbounds %struct.Move, %struct.Move* %arrayidx348, i32 0, i32 0
  %175 = load i32, i32* %array_index349, align 4
  %idxprom350 = sext i32 %175 to i64
  %176 = load i32, i32* %whos_turn, align 4
  %idxprom351 = sext i32 %176 to i64
  %arrayidx352 = getelementptr inbounds [2 x [32 x [32 x %struct.KeyInfo]]], [2 x [32 x [32 x %struct.KeyInfo]]]* @g_keyinfo, i32 0, i64 %idxprom351
  %arrayidx353 = getelementptr inbounds [32 x [32 x %struct.KeyInfo]], [32 x [32 x %struct.KeyInfo]]* %arrayidx352, i32 0, i64 %idxprom350
  %arrayidx354 = getelementptr inbounds [32 x %struct.KeyInfo], [32 x %struct.KeyInfo]* %arrayidx353, i32 0, i64 %idxprom346
  %flipVH355 = getelementptr inbounds %struct.KeyInfo, %struct.KeyInfo* %arrayidx354, i32 0, i32 3
  %bit1_index356 = getelementptr inbounds %struct.KeyInfo_s, %struct.KeyInfo_s* %flipVH355, i32 0, i32 0
  %177 = load i32, i32* %bit1_index356, align 4
  %div357 = sdiv i32 %177, 32
  %idxprom358 = sext i32 %div357 to i64
  %arrayidx359 = getelementptr inbounds [4 x i32], [4 x i32]* getelementptr inbounds (%struct.Hash_Key, %struct.Hash_Key* @g_flipVH_hashkey, i32 0, i32 0), i32 0, i64 %idxprom358
  %178 = load i32, i32* %arrayidx359, align 4
  %xor360 = xor i32 %178, %shl342
  store i32 %xor360, i32* %arrayidx359, align 4
  %179 = load i32, i32* %i, align 4
  %idxprom361 = sext i32 %179 to i64
  %arrayidx362 = getelementptr inbounds [256 x %struct.Move], [256 x %struct.Move]* %movelist, i32 0, i64 %idxprom361
  %mask_index363 = getelementptr inbounds %struct.Move, %struct.Move* %arrayidx362, i32 0, i32 1
  %180 = load i32, i32* %mask_index363, align 4
  %idxprom364 = sext i32 %180 to i64
  %181 = load i32, i32* %i, align 4
  %idxprom365 = sext i32 %181 to i64
  %arrayidx366 = getelementptr inbounds [256 x %struct.Move], [256 x %struct.Move]* %movelist, i32 0, i64 %idxprom365
  %array_index367 = getelementptr inbounds %struct.Move, %struct.Move* %arrayidx366, i32 0, i32 0
  %182 = load i32, i32* %array_index367, align 4
  %idxprom368 = sext i32 %182 to i64
  %183 = load i32, i32* %whos_turn, align 4
  %idxprom369 = sext i32 %183 to i64
  %arrayidx370 = getelementptr inbounds [2 x [32 x [32 x %struct.KeyInfo]]], [2 x [32 x [32 x %struct.KeyInfo]]]* @g_keyinfo, i32 0, i64 %idxprom369
  %arrayidx371 = getelementptr inbounds [32 x [32 x %struct.KeyInfo]], [32 x [32 x %struct.KeyInfo]]* %arrayidx370, i32 0, i64 %idxprom368
  %arrayidx372 = getelementptr inbounds [32 x %struct.KeyInfo], [32 x %struct.KeyInfo]* %arrayidx371, i32 0, i64 %idxprom364
  %flipVH373 = getelementptr inbounds %struct.KeyInfo, %struct.KeyInfo* %arrayidx372, i32 0, i32 3
  %bit2_index374 = getelementptr inbounds %struct.KeyInfo_s, %struct.KeyInfo_s* %flipVH373, i32 0, i32 1
  %184 = load i32, i32* %bit2_index374, align 4
  %rem375 = srem i32 %184, 32
  %shl376 = shl i32 1, %rem375
  %185 = load i32, i32* %i, align 4
  %idxprom377 = sext i32 %185 to i64
  %arrayidx378 = getelementptr inbounds [256 x %struct.Move], [256 x %struct.Move]* %movelist, i32 0, i64 %idxprom377
  %mask_index379 = getelementptr inbounds %struct.Move, %struct.Move* %arrayidx378, i32 0, i32 1
  %186 = load i32, i32* %mask_index379, align 4
  %idxprom380 = sext i32 %186 to i64
  %187 = load i32, i32* %i, align 4
  %idxprom381 = sext i32 %187 to i64
  %arrayidx382 = getelementptr inbounds [256 x %struct.Move], [256 x %struct.Move]* %movelist, i32 0, i64 %idxprom381
  %array_index383 = getelementptr inbounds %struct.Move, %struct.Move* %arrayidx382, i32 0, i32 0
  %188 = load i32, i32* %array_index383, align 4
  %idxprom384 = sext i32 %188 to i64
  %189 = load i32, i32* %whos_turn, align 4
  %idxprom385 = sext i32 %189 to i64
  %arrayidx386 = getelementptr inbounds [2 x [32 x [32 x %struct.KeyInfo]]], [2 x [32 x [32 x %struct.KeyInfo]]]* @g_keyinfo, i32 0, i64 %idxprom385
  %arrayidx387 = getelementptr inbounds [32 x [32 x %struct.KeyInfo]], [32 x [32 x %struct.KeyInfo]]* %arrayidx386, i32 0, i64 %idxprom384
  %arrayidx388 = getelementptr inbounds [32 x %struct.KeyInfo], [32 x %struct.KeyInfo]* %arrayidx387, i32 0, i64 %idxprom380
  %flipVH389 = getelementptr inbounds %struct.KeyInfo, %struct.KeyInfo* %arrayidx388, i32 0, i32 3
  %bit2_index390 = getelementptr inbounds %struct.KeyInfo_s, %struct.KeyInfo_s* %flipVH389, i32 0, i32 1
  %190 = load i32, i32* %bit2_index390, align 4
  %div391 = sdiv i32 %190, 32
  %idxprom392 = sext i32 %div391 to i64
  %arrayidx393 = getelementptr inbounds [4 x i32], [4 x i32]* getelementptr inbounds (%struct.Hash_Key, %struct.Hash_Key* @g_flipVH_hashkey, i32 0, i32 0), i32 0, i64 %idxprom392
  %191 = load i32, i32* %arrayidx393, align 4
  %xor394 = xor i32 %191, %shl376
  store i32 %xor394, i32* %arrayidx393, align 4
  %192 = load i32, i32* %i, align 4
  %idxprom395 = sext i32 %192 to i64
  %arrayidx396 = getelementptr inbounds [256 x %struct.Move], [256 x %struct.Move]* %movelist, i32 0, i64 %idxprom395
  %mask_index397 = getelementptr inbounds %struct.Move, %struct.Move* %arrayidx396, i32 0, i32 1
  %193 = load i32, i32* %mask_index397, align 4
  %idxprom398 = sext i32 %193 to i64
  %194 = load i32, i32* %i, align 4
  %idxprom399 = sext i32 %194 to i64
  %arrayidx400 = getelementptr inbounds [256 x %struct.Move], [256 x %struct.Move]* %movelist, i32 0, i64 %idxprom399
  %array_index401 = getelementptr inbounds %struct.Move, %struct.Move* %arrayidx400, i32 0, i32 0
  %195 = load i32, i32* %array_index401, align 4
  %idxprom402 = sext i32 %195 to i64
  %196 = load i32, i32* %whos_turn, align 4
  %idxprom403 = sext i32 %196 to i64
  %arrayidx404 = getelementptr inbounds [2 x [32 x [32 x %struct.KeyInfo]]], [2 x [32 x [32 x %struct.KeyInfo]]]* @g_keyinfo, i32 0, i64 %idxprom403
  %arrayidx405 = getelementptr inbounds [32 x [32 x %struct.KeyInfo]], [32 x [32 x %struct.KeyInfo]]* %arrayidx404, i32 0, i64 %idxprom402
  %arrayidx406 = getelementptr inbounds [32 x %struct.KeyInfo], [32 x %struct.KeyInfo]* %arrayidx405, i32 0, i64 %idxprom398
  %flipVH407 = getelementptr inbounds %struct.KeyInfo, %struct.KeyInfo* %arrayidx406, i32 0, i32 3
  %hash_code408 = getelementptr inbounds %struct.KeyInfo_s, %struct.KeyInfo_s* %flipVH407, i32 0, i32 2
  %197 = load i32, i32* %hash_code408, align 4
  %198 = load i32, i32* getelementptr inbounds (%struct.Hash_Key, %struct.Hash_Key* @g_flipVH_hashkey, i32 0, i32 1), align 4
  %xor409 = xor i32 %198, %197
  store i32 %xor409, i32* getelementptr inbounds (%struct.Hash_Key, %struct.Hash_Key* @g_flipVH_hashkey, i32 0, i32 1), align 4
  %199 = load i32, i32* %depth_remaining.addr, align 4
  %sub410 = sub nsw i32 %199, 1
  %200 = load i32, i32* %whos_turn, align 4
  %xor411 = xor i32 %200, 1
  %201 = load i32, i32* %beta.addr, align 4
  %sub412 = sub nsw i32 0, %201
  %202 = load i32, i32* %alpha.addr, align 4
  %sub413 = sub nsw i32 0, %202
  %call414 = call i32 @negamax(i32 %sub410, i32 %xor411, i32 %sub412, i32 %sub413)
  %sub415 = sub nsw i32 0, %call414
  store i32 %sub415, i32* %value, align 4
  %203 = load i32, i32* @g_empty_squares, align 4
  %add = add nsw i32 %203, 2
  store i32 %add, i32* @g_empty_squares, align 4
  %204 = load i32, i32* %i, align 4
  %idxprom416 = sext i32 %204 to i64
  %arrayidx417 = getelementptr inbounds [256 x %struct.Move], [256 x %struct.Move]* %movelist, i32 0, i64 %idxprom416
  %205 = load i32, i32* %whos_turn, align 4
  %206 = bitcast { i64, i32 }* %arrayidx417.coerce to i8*
  %207 = bitcast %struct.Move* %arrayidx417 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %206, i8* %207, i64 12, i32 0, i1 false)
  %208 = getelementptr { i64, i32 }, { i64, i32 }* %arrayidx417.coerce, i32 0, i32 0
  %209 = load i64, i64* %208, align 1
  %210 = getelementptr { i64, i32 }, { i64, i32 }* %arrayidx417.coerce, i32 0, i32 1
  %211 = load i32, i32* %210, align 1
  call void @toggle_move(i64 %209, i32 %211, i32 %205)
  %212 = load i32, i32* %i, align 4
  %idxprom418 = sext i32 %212 to i64
  %arrayidx419 = getelementptr inbounds [256 x %struct.Move], [256 x %struct.Move]* %movelist, i32 0, i64 %idxprom418
  %mask_index420 = getelementptr inbounds %struct.Move, %struct.Move* %arrayidx419, i32 0, i32 1
  %213 = load i32, i32* %mask_index420, align 4
  %idxprom421 = sext i32 %213 to i64
  %214 = load i32, i32* %i, align 4
  %idxprom422 = sext i32 %214 to i64
  %arrayidx423 = getelementptr inbounds [256 x %struct.Move], [256 x %struct.Move]* %movelist, i32 0, i64 %idxprom422
  %array_index424 = getelementptr inbounds %struct.Move, %struct.Move* %arrayidx423, i32 0, i32 0
  %215 = load i32, i32* %array_index424, align 4
  %idxprom425 = sext i32 %215 to i64
  %216 = load i32, i32* %whos_turn, align 4
  %idxprom426 = sext i32 %216 to i64
  %arrayidx427 = getelementptr inbounds [2 x [32 x [32 x %struct.KeyInfo]]], [2 x [32 x [32 x %struct.KeyInfo]]]* @g_keyinfo, i32 0, i64 %idxprom426
  %arrayidx428 = getelementptr inbounds [32 x [32 x %struct.KeyInfo]], [32 x [32 x %struct.KeyInfo]]* %arrayidx427, i32 0, i64 %idxprom425
  %arrayidx429 = getelementptr inbounds [32 x %struct.KeyInfo], [32 x %struct.KeyInfo]* %arrayidx428, i32 0, i64 %idxprom421
  %norm430 = getelementptr inbounds %struct.KeyInfo, %struct.KeyInfo* %arrayidx429, i32 0, i32 0
  %bit1_index431 = getelementptr inbounds %struct.KeyInfo_s, %struct.KeyInfo_s* %norm430, i32 0, i32 0
  %217 = load i32, i32* %bit1_index431, align 4
  %rem432 = srem i32 %217, 32
  %shl433 = shl i32 1, %rem432
  %218 = load i32, i32* %i, align 4
  %idxprom434 = sext i32 %218 to i64
  %arrayidx435 = getelementptr inbounds [256 x %struct.Move], [256 x %struct.Move]* %movelist, i32 0, i64 %idxprom434
  %mask_index436 = getelementptr inbounds %struct.Move, %struct.Move* %arrayidx435, i32 0, i32 1
  %219 = load i32, i32* %mask_index436, align 4
  %idxprom437 = sext i32 %219 to i64
  %220 = load i32, i32* %i, align 4
  %idxprom438 = sext i32 %220 to i64
  %arrayidx439 = getelementptr inbounds [256 x %struct.Move], [256 x %struct.Move]* %movelist, i32 0, i64 %idxprom438
  %array_index440 = getelementptr inbounds %struct.Move, %struct.Move* %arrayidx439, i32 0, i32 0
  %221 = load i32, i32* %array_index440, align 4
  %idxprom441 = sext i32 %221 to i64
  %222 = load i32, i32* %whos_turn, align 4
  %idxprom442 = sext i32 %222 to i64
  %arrayidx443 = getelementptr inbounds [2 x [32 x [32 x %struct.KeyInfo]]], [2 x [32 x [32 x %struct.KeyInfo]]]* @g_keyinfo, i32 0, i64 %idxprom442
  %arrayidx444 = getelementptr inbounds [32 x [32 x %struct.KeyInfo]], [32 x [32 x %struct.KeyInfo]]* %arrayidx443, i32 0, i64 %idxprom441
  %arrayidx445 = getelementptr inbounds [32 x %struct.KeyInfo], [32 x %struct.KeyInfo]* %arrayidx444, i32 0, i64 %idxprom437
  %norm446 = getelementptr inbounds %struct.KeyInfo, %struct.KeyInfo* %arrayidx445, i32 0, i32 0
  %bit1_index447 = getelementptr inbounds %struct.KeyInfo_s, %struct.KeyInfo_s* %norm446, i32 0, i32 0
  %223 = load i32, i32* %bit1_index447, align 4
  %div448 = sdiv i32 %223, 32
  %idxprom449 = sext i32 %div448 to i64
  %arrayidx450 = getelementptr inbounds [4 x i32], [4 x i32]* getelementptr inbounds (%struct.Hash_Key, %struct.Hash_Key* @g_norm_hashkey, i32 0, i32 0), i32 0, i64 %idxprom449
  %224 = load i32, i32* %arrayidx450, align 4
  %xor451 = xor i32 %224, %shl433
  store i32 %xor451, i32* %arrayidx450, align 4
  %225 = load i32, i32* %i, align 4
  %idxprom452 = sext i32 %225 to i64
  %arrayidx453 = getelementptr inbounds [256 x %struct.Move], [256 x %struct.Move]* %movelist, i32 0, i64 %idxprom452
  %mask_index454 = getelementptr inbounds %struct.Move, %struct.Move* %arrayidx453, i32 0, i32 1
  %226 = load i32, i32* %mask_index454, align 4
  %idxprom455 = sext i32 %226 to i64
  %227 = load i32, i32* %i, align 4
  %idxprom456 = sext i32 %227 to i64
  %arrayidx457 = getelementptr inbounds [256 x %struct.Move], [256 x %struct.Move]* %movelist, i32 0, i64 %idxprom456
  %array_index458 = getelementptr inbounds %struct.Move, %struct.Move* %arrayidx457, i32 0, i32 0
  %228 = load i32, i32* %array_index458, align 4
  %idxprom459 = sext i32 %228 to i64
  %229 = load i32, i32* %whos_turn, align 4
  %idxprom460 = sext i32 %229 to i64
  %arrayidx461 = getelementptr inbounds [2 x [32 x [32 x %struct.KeyInfo]]], [2 x [32 x [32 x %struct.KeyInfo]]]* @g_keyinfo, i32 0, i64 %idxprom460
  %arrayidx462 = getelementptr inbounds [32 x [32 x %struct.KeyInfo]], [32 x [32 x %struct.KeyInfo]]* %arrayidx461, i32 0, i64 %idxprom459
  %arrayidx463 = getelementptr inbounds [32 x %struct.KeyInfo], [32 x %struct.KeyInfo]* %arrayidx462, i32 0, i64 %idxprom455
  %norm464 = getelementptr inbounds %struct.KeyInfo, %struct.KeyInfo* %arrayidx463, i32 0, i32 0
  %bit2_index465 = getelementptr inbounds %struct.KeyInfo_s, %struct.KeyInfo_s* %norm464, i32 0, i32 1
  %230 = load i32, i32* %bit2_index465, align 4
  %rem466 = srem i32 %230, 32
  %shl467 = shl i32 1, %rem466
  %231 = load i32, i32* %i, align 4
  %idxprom468 = sext i32 %231 to i64
  %arrayidx469 = getelementptr inbounds [256 x %struct.Move], [256 x %struct.Move]* %movelist, i32 0, i64 %idxprom468
  %mask_index470 = getelementptr inbounds %struct.Move, %struct.Move* %arrayidx469, i32 0, i32 1
  %232 = load i32, i32* %mask_index470, align 4
  %idxprom471 = sext i32 %232 to i64
  %233 = load i32, i32* %i, align 4
  %idxprom472 = sext i32 %233 to i64
  %arrayidx473 = getelementptr inbounds [256 x %struct.Move], [256 x %struct.Move]* %movelist, i32 0, i64 %idxprom472
  %array_index474 = getelementptr inbounds %struct.Move, %struct.Move* %arrayidx473, i32 0, i32 0
  %234 = load i32, i32* %array_index474, align 4
  %idxprom475 = sext i32 %234 to i64
  %235 = load i32, i32* %whos_turn, align 4
  %idxprom476 = sext i32 %235 to i64
  %arrayidx477 = getelementptr inbounds [2 x [32 x [32 x %struct.KeyInfo]]], [2 x [32 x [32 x %struct.KeyInfo]]]* @g_keyinfo, i32 0, i64 %idxprom476
  %arrayidx478 = getelementptr inbounds [32 x [32 x %struct.KeyInfo]], [32 x [32 x %struct.KeyInfo]]* %arrayidx477, i32 0, i64 %idxprom475
  %arrayidx479 = getelementptr inbounds [32 x %struct.KeyInfo], [32 x %struct.KeyInfo]* %arrayidx478, i32 0, i64 %idxprom471
  %norm480 = getelementptr inbounds %struct.KeyInfo, %struct.KeyInfo* %arrayidx479, i32 0, i32 0
  %bit2_index481 = getelementptr inbounds %struct.KeyInfo_s, %struct.KeyInfo_s* %norm480, i32 0, i32 1
  %236 = load i32, i32* %bit2_index481, align 4
  %div482 = sdiv i32 %236, 32
  %idxprom483 = sext i32 %div482 to i64
  %arrayidx484 = getelementptr inbounds [4 x i32], [4 x i32]* getelementptr inbounds (%struct.Hash_Key, %struct.Hash_Key* @g_norm_hashkey, i32 0, i32 0), i32 0, i64 %idxprom483
  %237 = load i32, i32* %arrayidx484, align 4
  %xor485 = xor i32 %237, %shl467
  store i32 %xor485, i32* %arrayidx484, align 4
  %238 = load i32, i32* %i, align 4
  %idxprom486 = sext i32 %238 to i64
  %arrayidx487 = getelementptr inbounds [256 x %struct.Move], [256 x %struct.Move]* %movelist, i32 0, i64 %idxprom486
  %mask_index488 = getelementptr inbounds %struct.Move, %struct.Move* %arrayidx487, i32 0, i32 1
  %239 = load i32, i32* %mask_index488, align 4
  %idxprom489 = sext i32 %239 to i64
  %240 = load i32, i32* %i, align 4
  %idxprom490 = sext i32 %240 to i64
  %arrayidx491 = getelementptr inbounds [256 x %struct.Move], [256 x %struct.Move]* %movelist, i32 0, i64 %idxprom490
  %array_index492 = getelementptr inbounds %struct.Move, %struct.Move* %arrayidx491, i32 0, i32 0
  %241 = load i32, i32* %array_index492, align 4
  %idxprom493 = sext i32 %241 to i64
  %242 = load i32, i32* %whos_turn, align 4
  %idxprom494 = sext i32 %242 to i64
  %arrayidx495 = getelementptr inbounds [2 x [32 x [32 x %struct.KeyInfo]]], [2 x [32 x [32 x %struct.KeyInfo]]]* @g_keyinfo, i32 0, i64 %idxprom494
  %arrayidx496 = getelementptr inbounds [32 x [32 x %struct.KeyInfo]], [32 x [32 x %struct.KeyInfo]]* %arrayidx495, i32 0, i64 %idxprom493
  %arrayidx497 = getelementptr inbounds [32 x %struct.KeyInfo], [32 x %struct.KeyInfo]* %arrayidx496, i32 0, i64 %idxprom489
  %norm498 = getelementptr inbounds %struct.KeyInfo, %struct.KeyInfo* %arrayidx497, i32 0, i32 0
  %hash_code499 = getelementptr inbounds %struct.KeyInfo_s, %struct.KeyInfo_s* %norm498, i32 0, i32 2
  %243 = load i32, i32* %hash_code499, align 4
  %244 = load i32, i32* getelementptr inbounds (%struct.Hash_Key, %struct.Hash_Key* @g_norm_hashkey, i32 0, i32 1), align 4
  %xor500 = xor i32 %244, %243
  store i32 %xor500, i32* getelementptr inbounds (%struct.Hash_Key, %struct.Hash_Key* @g_norm_hashkey, i32 0, i32 1), align 4
  %245 = load i32, i32* %i, align 4
  %idxprom501 = sext i32 %245 to i64
  %arrayidx502 = getelementptr inbounds [256 x %struct.Move], [256 x %struct.Move]* %movelist, i32 0, i64 %idxprom501
  %mask_index503 = getelementptr inbounds %struct.Move, %struct.Move* %arrayidx502, i32 0, i32 1
  %246 = load i32, i32* %mask_index503, align 4
  %idxprom504 = sext i32 %246 to i64
  %247 = load i32, i32* %i, align 4
  %idxprom505 = sext i32 %247 to i64
  %arrayidx506 = getelementptr inbounds [256 x %struct.Move], [256 x %struct.Move]* %movelist, i32 0, i64 %idxprom505
  %array_index507 = getelementptr inbounds %struct.Move, %struct.Move* %arrayidx506, i32 0, i32 0
  %248 = load i32, i32* %array_index507, align 4
  %idxprom508 = sext i32 %248 to i64
  %249 = load i32, i32* %whos_turn, align 4
  %idxprom509 = sext i32 %249 to i64
  %arrayidx510 = getelementptr inbounds [2 x [32 x [32 x %struct.KeyInfo]]], [2 x [32 x [32 x %struct.KeyInfo]]]* @g_keyinfo, i32 0, i64 %idxprom509
  %arrayidx511 = getelementptr inbounds [32 x [32 x %struct.KeyInfo]], [32 x [32 x %struct.KeyInfo]]* %arrayidx510, i32 0, i64 %idxprom508
  %arrayidx512 = getelementptr inbounds [32 x %struct.KeyInfo], [32 x %struct.KeyInfo]* %arrayidx511, i32 0, i64 %idxprom504
  %flipV513 = getelementptr inbounds %struct.KeyInfo, %struct.KeyInfo* %arrayidx512, i32 0, i32 1
  %bit1_index514 = getelementptr inbounds %struct.KeyInfo_s, %struct.KeyInfo_s* %flipV513, i32 0, i32 0
  %250 = load i32, i32* %bit1_index514, align 4
  %rem515 = srem i32 %250, 32
  %shl516 = shl i32 1, %rem515
  %251 = load i32, i32* %i, align 4
  %idxprom517 = sext i32 %251 to i64
  %arrayidx518 = getelementptr inbounds [256 x %struct.Move], [256 x %struct.Move]* %movelist, i32 0, i64 %idxprom517
  %mask_index519 = getelementptr inbounds %struct.Move, %struct.Move* %arrayidx518, i32 0, i32 1
  %252 = load i32, i32* %mask_index519, align 4
  %idxprom520 = sext i32 %252 to i64
  %253 = load i32, i32* %i, align 4
  %idxprom521 = sext i32 %253 to i64
  %arrayidx522 = getelementptr inbounds [256 x %struct.Move], [256 x %struct.Move]* %movelist, i32 0, i64 %idxprom521
  %array_index523 = getelementptr inbounds %struct.Move, %struct.Move* %arrayidx522, i32 0, i32 0
  %254 = load i32, i32* %array_index523, align 4
  %idxprom524 = sext i32 %254 to i64
  %255 = load i32, i32* %whos_turn, align 4
  %idxprom525 = sext i32 %255 to i64
  %arrayidx526 = getelementptr inbounds [2 x [32 x [32 x %struct.KeyInfo]]], [2 x [32 x [32 x %struct.KeyInfo]]]* @g_keyinfo, i32 0, i64 %idxprom525
  %arrayidx527 = getelementptr inbounds [32 x [32 x %struct.KeyInfo]], [32 x [32 x %struct.KeyInfo]]* %arrayidx526, i32 0, i64 %idxprom524
  %arrayidx528 = getelementptr inbounds [32 x %struct.KeyInfo], [32 x %struct.KeyInfo]* %arrayidx527, i32 0, i64 %idxprom520
  %flipV529 = getelementptr inbounds %struct.KeyInfo, %struct.KeyInfo* %arrayidx528, i32 0, i32 1
  %bit1_index530 = getelementptr inbounds %struct.KeyInfo_s, %struct.KeyInfo_s* %flipV529, i32 0, i32 0
  %256 = load i32, i32* %bit1_index530, align 4
  %div531 = sdiv i32 %256, 32
  %idxprom532 = sext i32 %div531 to i64
  %arrayidx533 = getelementptr inbounds [4 x i32], [4 x i32]* getelementptr inbounds (%struct.Hash_Key, %struct.Hash_Key* @g_flipV_hashkey, i32 0, i32 0), i32 0, i64 %idxprom532
  %257 = load i32, i32* %arrayidx533, align 4
  %xor534 = xor i32 %257, %shl516
  store i32 %xor534, i32* %arrayidx533, align 4
  %258 = load i32, i32* %i, align 4
  %idxprom535 = sext i32 %258 to i64
  %arrayidx536 = getelementptr inbounds [256 x %struct.Move], [256 x %struct.Move]* %movelist, i32 0, i64 %idxprom535
  %mask_index537 = getelementptr inbounds %struct.Move, %struct.Move* %arrayidx536, i32 0, i32 1
  %259 = load i32, i32* %mask_index537, align 4
  %idxprom538 = sext i32 %259 to i64
  %260 = load i32, i32* %i, align 4
  %idxprom539 = sext i32 %260 to i64
  %arrayidx540 = getelementptr inbounds [256 x %struct.Move], [256 x %struct.Move]* %movelist, i32 0, i64 %idxprom539
  %array_index541 = getelementptr inbounds %struct.Move, %struct.Move* %arrayidx540, i32 0, i32 0
  %261 = load i32, i32* %array_index541, align 4
  %idxprom542 = sext i32 %261 to i64
  %262 = load i32, i32* %whos_turn, align 4
  %idxprom543 = sext i32 %262 to i64
  %arrayidx544 = getelementptr inbounds [2 x [32 x [32 x %struct.KeyInfo]]], [2 x [32 x [32 x %struct.KeyInfo]]]* @g_keyinfo, i32 0, i64 %idxprom543
  %arrayidx545 = getelementptr inbounds [32 x [32 x %struct.KeyInfo]], [32 x [32 x %struct.KeyInfo]]* %arrayidx544, i32 0, i64 %idxprom542
  %arrayidx546 = getelementptr inbounds [32 x %struct.KeyInfo], [32 x %struct.KeyInfo]* %arrayidx545, i32 0, i64 %idxprom538
  %flipV547 = getelementptr inbounds %struct.KeyInfo, %struct.KeyInfo* %arrayidx546, i32 0, i32 1
  %bit2_index548 = getelementptr inbounds %struct.KeyInfo_s, %struct.KeyInfo_s* %flipV547, i32 0, i32 1
  %263 = load i32, i32* %bit2_index548, align 4
  %rem549 = srem i32 %263, 32
  %shl550 = shl i32 1, %rem549
  %264 = load i32, i32* %i, align 4
  %idxprom551 = sext i32 %264 to i64
  %arrayidx552 = getelementptr inbounds [256 x %struct.Move], [256 x %struct.Move]* %movelist, i32 0, i64 %idxprom551
  %mask_index553 = getelementptr inbounds %struct.Move, %struct.Move* %arrayidx552, i32 0, i32 1
  %265 = load i32, i32* %mask_index553, align 4
  %idxprom554 = sext i32 %265 to i64
  %266 = load i32, i32* %i, align 4
  %idxprom555 = sext i32 %266 to i64
  %arrayidx556 = getelementptr inbounds [256 x %struct.Move], [256 x %struct.Move]* %movelist, i32 0, i64 %idxprom555
  %array_index557 = getelementptr inbounds %struct.Move, %struct.Move* %arrayidx556, i32 0, i32 0
  %267 = load i32, i32* %array_index557, align 4
  %idxprom558 = sext i32 %267 to i64
  %268 = load i32, i32* %whos_turn, align 4
  %idxprom559 = sext i32 %268 to i64
  %arrayidx560 = getelementptr inbounds [2 x [32 x [32 x %struct.KeyInfo]]], [2 x [32 x [32 x %struct.KeyInfo]]]* @g_keyinfo, i32 0, i64 %idxprom559
  %arrayidx561 = getelementptr inbounds [32 x [32 x %struct.KeyInfo]], [32 x [32 x %struct.KeyInfo]]* %arrayidx560, i32 0, i64 %idxprom558
  %arrayidx562 = getelementptr inbounds [32 x %struct.KeyInfo], [32 x %struct.KeyInfo]* %arrayidx561, i32 0, i64 %idxprom554
  %flipV563 = getelementptr inbounds %struct.KeyInfo, %struct.KeyInfo* %arrayidx562, i32 0, i32 1
  %bit2_index564 = getelementptr inbounds %struct.KeyInfo_s, %struct.KeyInfo_s* %flipV563, i32 0, i32 1
  %269 = load i32, i32* %bit2_index564, align 4
  %div565 = sdiv i32 %269, 32
  %idxprom566 = sext i32 %div565 to i64
  %arrayidx567 = getelementptr inbounds [4 x i32], [4 x i32]* getelementptr inbounds (%struct.Hash_Key, %struct.Hash_Key* @g_flipV_hashkey, i32 0, i32 0), i32 0, i64 %idxprom566
  %270 = load i32, i32* %arrayidx567, align 4
  %xor568 = xor i32 %270, %shl550
  store i32 %xor568, i32* %arrayidx567, align 4
  %271 = load i32, i32* %i, align 4
  %idxprom569 = sext i32 %271 to i64
  %arrayidx570 = getelementptr inbounds [256 x %struct.Move], [256 x %struct.Move]* %movelist, i32 0, i64 %idxprom569
  %mask_index571 = getelementptr inbounds %struct.Move, %struct.Move* %arrayidx570, i32 0, i32 1
  %272 = load i32, i32* %mask_index571, align 4
  %idxprom572 = sext i32 %272 to i64
  %273 = load i32, i32* %i, align 4
  %idxprom573 = sext i32 %273 to i64
  %arrayidx574 = getelementptr inbounds [256 x %struct.Move], [256 x %struct.Move]* %movelist, i32 0, i64 %idxprom573
  %array_index575 = getelementptr inbounds %struct.Move, %struct.Move* %arrayidx574, i32 0, i32 0
  %274 = load i32, i32* %array_index575, align 4
  %idxprom576 = sext i32 %274 to i64
  %275 = load i32, i32* %whos_turn, align 4
  %idxprom577 = sext i32 %275 to i64
  %arrayidx578 = getelementptr inbounds [2 x [32 x [32 x %struct.KeyInfo]]], [2 x [32 x [32 x %struct.KeyInfo]]]* @g_keyinfo, i32 0, i64 %idxprom577
  %arrayidx579 = getelementptr inbounds [32 x [32 x %struct.KeyInfo]], [32 x [32 x %struct.KeyInfo]]* %arrayidx578, i32 0, i64 %idxprom576
  %arrayidx580 = getelementptr inbounds [32 x %struct.KeyInfo], [32 x %struct.KeyInfo]* %arrayidx579, i32 0, i64 %idxprom572
  %flipV581 = getelementptr inbounds %struct.KeyInfo, %struct.KeyInfo* %arrayidx580, i32 0, i32 1
  %hash_code582 = getelementptr inbounds %struct.KeyInfo_s, %struct.KeyInfo_s* %flipV581, i32 0, i32 2
  %276 = load i32, i32* %hash_code582, align 4
  %277 = load i32, i32* getelementptr inbounds (%struct.Hash_Key, %struct.Hash_Key* @g_flipV_hashkey, i32 0, i32 1), align 4
  %xor583 = xor i32 %277, %276
  store i32 %xor583, i32* getelementptr inbounds (%struct.Hash_Key, %struct.Hash_Key* @g_flipV_hashkey, i32 0, i32 1), align 4
  %278 = load i32, i32* %i, align 4
  %idxprom584 = sext i32 %278 to i64
  %arrayidx585 = getelementptr inbounds [256 x %struct.Move], [256 x %struct.Move]* %movelist, i32 0, i64 %idxprom584
  %mask_index586 = getelementptr inbounds %struct.Move, %struct.Move* %arrayidx585, i32 0, i32 1
  %279 = load i32, i32* %mask_index586, align 4
  %idxprom587 = sext i32 %279 to i64
  %280 = load i32, i32* %i, align 4
  %idxprom588 = sext i32 %280 to i64
  %arrayidx589 = getelementptr inbounds [256 x %struct.Move], [256 x %struct.Move]* %movelist, i32 0, i64 %idxprom588
  %array_index590 = getelementptr inbounds %struct.Move, %struct.Move* %arrayidx589, i32 0, i32 0
  %281 = load i32, i32* %array_index590, align 4
  %idxprom591 = sext i32 %281 to i64
  %282 = load i32, i32* %whos_turn, align 4
  %idxprom592 = sext i32 %282 to i64
  %arrayidx593 = getelementptr inbounds [2 x [32 x [32 x %struct.KeyInfo]]], [2 x [32 x [32 x %struct.KeyInfo]]]* @g_keyinfo, i32 0, i64 %idxprom592
  %arrayidx594 = getelementptr inbounds [32 x [32 x %struct.KeyInfo]], [32 x [32 x %struct.KeyInfo]]* %arrayidx593, i32 0, i64 %idxprom591
  %arrayidx595 = getelementptr inbounds [32 x %struct.KeyInfo], [32 x %struct.KeyInfo]* %arrayidx594, i32 0, i64 %idxprom587
  %flipH596 = getelementptr inbounds %struct.KeyInfo, %struct.KeyInfo* %arrayidx595, i32 0, i32 2
  %bit1_index597 = getelementptr inbounds %struct.KeyInfo_s, %struct.KeyInfo_s* %flipH596, i32 0, i32 0
  %283 = load i32, i32* %bit1_index597, align 4
  %rem598 = srem i32 %283, 32
  %shl599 = shl i32 1, %rem598
  %284 = load i32, i32* %i, align 4
  %idxprom600 = sext i32 %284 to i64
  %arrayidx601 = getelementptr inbounds [256 x %struct.Move], [256 x %struct.Move]* %movelist, i32 0, i64 %idxprom600
  %mask_index602 = getelementptr inbounds %struct.Move, %struct.Move* %arrayidx601, i32 0, i32 1
  %285 = load i32, i32* %mask_index602, align 4
  %idxprom603 = sext i32 %285 to i64
  %286 = load i32, i32* %i, align 4
  %idxprom604 = sext i32 %286 to i64
  %arrayidx605 = getelementptr inbounds [256 x %struct.Move], [256 x %struct.Move]* %movelist, i32 0, i64 %idxprom604
  %array_index606 = getelementptr inbounds %struct.Move, %struct.Move* %arrayidx605, i32 0, i32 0
  %287 = load i32, i32* %array_index606, align 4
  %idxprom607 = sext i32 %287 to i64
  %288 = load i32, i32* %whos_turn, align 4
  %idxprom608 = sext i32 %288 to i64
  %arrayidx609 = getelementptr inbounds [2 x [32 x [32 x %struct.KeyInfo]]], [2 x [32 x [32 x %struct.KeyInfo]]]* @g_keyinfo, i32 0, i64 %idxprom608
  %arrayidx610 = getelementptr inbounds [32 x [32 x %struct.KeyInfo]], [32 x [32 x %struct.KeyInfo]]* %arrayidx609, i32 0, i64 %idxprom607
  %arrayidx611 = getelementptr inbounds [32 x %struct.KeyInfo], [32 x %struct.KeyInfo]* %arrayidx610, i32 0, i64 %idxprom603
  %flipH612 = getelementptr inbounds %struct.KeyInfo, %struct.KeyInfo* %arrayidx611, i32 0, i32 2
  %bit1_index613 = getelementptr inbounds %struct.KeyInfo_s, %struct.KeyInfo_s* %flipH612, i32 0, i32 0
  %289 = load i32, i32* %bit1_index613, align 4
  %div614 = sdiv i32 %289, 32
  %idxprom615 = sext i32 %div614 to i64
  %arrayidx616 = getelementptr inbounds [4 x i32], [4 x i32]* getelementptr inbounds (%struct.Hash_Key, %struct.Hash_Key* @g_flipH_hashkey, i32 0, i32 0), i32 0, i64 %idxprom615
  %290 = load i32, i32* %arrayidx616, align 4
  %xor617 = xor i32 %290, %shl599
  store i32 %xor617, i32* %arrayidx616, align 4
  %291 = load i32, i32* %i, align 4
  %idxprom618 = sext i32 %291 to i64
  %arrayidx619 = getelementptr inbounds [256 x %struct.Move], [256 x %struct.Move]* %movelist, i32 0, i64 %idxprom618
  %mask_index620 = getelementptr inbounds %struct.Move, %struct.Move* %arrayidx619, i32 0, i32 1
  %292 = load i32, i32* %mask_index620, align 4
  %idxprom621 = sext i32 %292 to i64
  %293 = load i32, i32* %i, align 4
  %idxprom622 = sext i32 %293 to i64
  %arrayidx623 = getelementptr inbounds [256 x %struct.Move], [256 x %struct.Move]* %movelist, i32 0, i64 %idxprom622
  %array_index624 = getelementptr inbounds %struct.Move, %struct.Move* %arrayidx623, i32 0, i32 0
  %294 = load i32, i32* %array_index624, align 4
  %idxprom625 = sext i32 %294 to i64
  %295 = load i32, i32* %whos_turn, align 4
  %idxprom626 = sext i32 %295 to i64
  %arrayidx627 = getelementptr inbounds [2 x [32 x [32 x %struct.KeyInfo]]], [2 x [32 x [32 x %struct.KeyInfo]]]* @g_keyinfo, i32 0, i64 %idxprom626
  %arrayidx628 = getelementptr inbounds [32 x [32 x %struct.KeyInfo]], [32 x [32 x %struct.KeyInfo]]* %arrayidx627, i32 0, i64 %idxprom625
  %arrayidx629 = getelementptr inbounds [32 x %struct.KeyInfo], [32 x %struct.KeyInfo]* %arrayidx628, i32 0, i64 %idxprom621
  %flipH630 = getelementptr inbounds %struct.KeyInfo, %struct.KeyInfo* %arrayidx629, i32 0, i32 2
  %bit2_index631 = getelementptr inbounds %struct.KeyInfo_s, %struct.KeyInfo_s* %flipH630, i32 0, i32 1
  %296 = load i32, i32* %bit2_index631, align 4
  %rem632 = srem i32 %296, 32
  %shl633 = shl i32 1, %rem632
  %297 = load i32, i32* %i, align 4
  %idxprom634 = sext i32 %297 to i64
  %arrayidx635 = getelementptr inbounds [256 x %struct.Move], [256 x %struct.Move]* %movelist, i32 0, i64 %idxprom634
  %mask_index636 = getelementptr inbounds %struct.Move, %struct.Move* %arrayidx635, i32 0, i32 1
  %298 = load i32, i32* %mask_index636, align 4
  %idxprom637 = sext i32 %298 to i64
  %299 = load i32, i32* %i, align 4
  %idxprom638 = sext i32 %299 to i64
  %arrayidx639 = getelementptr inbounds [256 x %struct.Move], [256 x %struct.Move]* %movelist, i32 0, i64 %idxprom638
  %array_index640 = getelementptr inbounds %struct.Move, %struct.Move* %arrayidx639, i32 0, i32 0
  %300 = load i32, i32* %array_index640, align 4
  %idxprom641 = sext i32 %300 to i64
  %301 = load i32, i32* %whos_turn, align 4
  %idxprom642 = sext i32 %301 to i64
  %arrayidx643 = getelementptr inbounds [2 x [32 x [32 x %struct.KeyInfo]]], [2 x [32 x [32 x %struct.KeyInfo]]]* @g_keyinfo, i32 0, i64 %idxprom642
  %arrayidx644 = getelementptr inbounds [32 x [32 x %struct.KeyInfo]], [32 x [32 x %struct.KeyInfo]]* %arrayidx643, i32 0, i64 %idxprom641
  %arrayidx645 = getelementptr inbounds [32 x %struct.KeyInfo], [32 x %struct.KeyInfo]* %arrayidx644, i32 0, i64 %idxprom637
  %flipH646 = getelementptr inbounds %struct.KeyInfo, %struct.KeyInfo* %arrayidx645, i32 0, i32 2
  %bit2_index647 = getelementptr inbounds %struct.KeyInfo_s, %struct.KeyInfo_s* %flipH646, i32 0, i32 1
  %302 = load i32, i32* %bit2_index647, align 4
  %div648 = sdiv i32 %302, 32
  %idxprom649 = sext i32 %div648 to i64
  %arrayidx650 = getelementptr inbounds [4 x i32], [4 x i32]* getelementptr inbounds (%struct.Hash_Key, %struct.Hash_Key* @g_flipH_hashkey, i32 0, i32 0), i32 0, i64 %idxprom649
  %303 = load i32, i32* %arrayidx650, align 4
  %xor651 = xor i32 %303, %shl633
  store i32 %xor651, i32* %arrayidx650, align 4
  %304 = load i32, i32* %i, align 4
  %idxprom652 = sext i32 %304 to i64
  %arrayidx653 = getelementptr inbounds [256 x %struct.Move], [256 x %struct.Move]* %movelist, i32 0, i64 %idxprom652
  %mask_index654 = getelementptr inbounds %struct.Move, %struct.Move* %arrayidx653, i32 0, i32 1
  %305 = load i32, i32* %mask_index654, align 4
  %idxprom655 = sext i32 %305 to i64
  %306 = load i32, i32* %i, align 4
  %idxprom656 = sext i32 %306 to i64
  %arrayidx657 = getelementptr inbounds [256 x %struct.Move], [256 x %struct.Move]* %movelist, i32 0, i64 %idxprom656
  %array_index658 = getelementptr inbounds %struct.Move, %struct.Move* %arrayidx657, i32 0, i32 0
  %307 = load i32, i32* %array_index658, align 4
  %idxprom659 = sext i32 %307 to i64
  %308 = load i32, i32* %whos_turn, align 4
  %idxprom660 = sext i32 %308 to i64
  %arrayidx661 = getelementptr inbounds [2 x [32 x [32 x %struct.KeyInfo]]], [2 x [32 x [32 x %struct.KeyInfo]]]* @g_keyinfo, i32 0, i64 %idxprom660
  %arrayidx662 = getelementptr inbounds [32 x [32 x %struct.KeyInfo]], [32 x [32 x %struct.KeyInfo]]* %arrayidx661, i32 0, i64 %idxprom659
  %arrayidx663 = getelementptr inbounds [32 x %struct.KeyInfo], [32 x %struct.KeyInfo]* %arrayidx662, i32 0, i64 %idxprom655
  %flipH664 = getelementptr inbounds %struct.KeyInfo, %struct.KeyInfo* %arrayidx663, i32 0, i32 2
  %hash_code665 = getelementptr inbounds %struct.KeyInfo_s, %struct.KeyInfo_s* %flipH664, i32 0, i32 2
  %309 = load i32, i32* %hash_code665, align 4
  %310 = load i32, i32* getelementptr inbounds (%struct.Hash_Key, %struct.Hash_Key* @g_flipH_hashkey, i32 0, i32 1), align 4
  %xor666 = xor i32 %310, %309
  store i32 %xor666, i32* getelementptr inbounds (%struct.Hash_Key, %struct.Hash_Key* @g_flipH_hashkey, i32 0, i32 1), align 4
  %311 = load i32, i32* %i, align 4
  %idxprom667 = sext i32 %311 to i64
  %arrayidx668 = getelementptr inbounds [256 x %struct.Move], [256 x %struct.Move]* %movelist, i32 0, i64 %idxprom667
  %mask_index669 = getelementptr inbounds %struct.Move, %struct.Move* %arrayidx668, i32 0, i32 1
  %312 = load i32, i32* %mask_index669, align 4
  %idxprom670 = sext i32 %312 to i64
  %313 = load i32, i32* %i, align 4
  %idxprom671 = sext i32 %313 to i64
  %arrayidx672 = getelementptr inbounds [256 x %struct.Move], [256 x %struct.Move]* %movelist, i32 0, i64 %idxprom671
  %array_index673 = getelementptr inbounds %struct.Move, %struct.Move* %arrayidx672, i32 0, i32 0
  %314 = load i32, i32* %array_index673, align 4
  %idxprom674 = sext i32 %314 to i64
  %315 = load i32, i32* %whos_turn, align 4
  %idxprom675 = sext i32 %315 to i64
  %arrayidx676 = getelementptr inbounds [2 x [32 x [32 x %struct.KeyInfo]]], [2 x [32 x [32 x %struct.KeyInfo]]]* @g_keyinfo, i32 0, i64 %idxprom675
  %arrayidx677 = getelementptr inbounds [32 x [32 x %struct.KeyInfo]], [32 x [32 x %struct.KeyInfo]]* %arrayidx676, i32 0, i64 %idxprom674
  %arrayidx678 = getelementptr inbounds [32 x %struct.KeyInfo], [32 x %struct.KeyInfo]* %arrayidx677, i32 0, i64 %idxprom670
  %flipVH679 = getelementptr inbounds %struct.KeyInfo, %struct.KeyInfo* %arrayidx678, i32 0, i32 3
  %bit1_index680 = getelementptr inbounds %struct.KeyInfo_s, %struct.KeyInfo_s* %flipVH679, i32 0, i32 0
  %316 = load i32, i32* %bit1_index680, align 4
  %rem681 = srem i32 %316, 32
  %shl682 = shl i32 1, %rem681
  %317 = load i32, i32* %i, align 4
  %idxprom683 = sext i32 %317 to i64
  %arrayidx684 = getelementptr inbounds [256 x %struct.Move], [256 x %struct.Move]* %movelist, i32 0, i64 %idxprom683
  %mask_index685 = getelementptr inbounds %struct.Move, %struct.Move* %arrayidx684, i32 0, i32 1
  %318 = load i32, i32* %mask_index685, align 4
  %idxprom686 = sext i32 %318 to i64
  %319 = load i32, i32* %i, align 4
  %idxprom687 = sext i32 %319 to i64
  %arrayidx688 = getelementptr inbounds [256 x %struct.Move], [256 x %struct.Move]* %movelist, i32 0, i64 %idxprom687
  %array_index689 = getelementptr inbounds %struct.Move, %struct.Move* %arrayidx688, i32 0, i32 0
  %320 = load i32, i32* %array_index689, align 4
  %idxprom690 = sext i32 %320 to i64
  %321 = load i32, i32* %whos_turn, align 4
  %idxprom691 = sext i32 %321 to i64
  %arrayidx692 = getelementptr inbounds [2 x [32 x [32 x %struct.KeyInfo]]], [2 x [32 x [32 x %struct.KeyInfo]]]* @g_keyinfo, i32 0, i64 %idxprom691
  %arrayidx693 = getelementptr inbounds [32 x [32 x %struct.KeyInfo]], [32 x [32 x %struct.KeyInfo]]* %arrayidx692, i32 0, i64 %idxprom690
  %arrayidx694 = getelementptr inbounds [32 x %struct.KeyInfo], [32 x %struct.KeyInfo]* %arrayidx693, i32 0, i64 %idxprom686
  %flipVH695 = getelementptr inbounds %struct.KeyInfo, %struct.KeyInfo* %arrayidx694, i32 0, i32 3
  %bit1_index696 = getelementptr inbounds %struct.KeyInfo_s, %struct.KeyInfo_s* %flipVH695, i32 0, i32 0
  %322 = load i32, i32* %bit1_index696, align 4
  %div697 = sdiv i32 %322, 32
  %idxprom698 = sext i32 %div697 to i64
  %arrayidx699 = getelementptr inbounds [4 x i32], [4 x i32]* getelementptr inbounds (%struct.Hash_Key, %struct.Hash_Key* @g_flipVH_hashkey, i32 0, i32 0), i32 0, i64 %idxprom698
  %323 = load i32, i32* %arrayidx699, align 4
  %xor700 = xor i32 %323, %shl682
  store i32 %xor700, i32* %arrayidx699, align 4
  %324 = load i32, i32* %i, align 4
  %idxprom701 = sext i32 %324 to i64
  %arrayidx702 = getelementptr inbounds [256 x %struct.Move], [256 x %struct.Move]* %movelist, i32 0, i64 %idxprom701
  %mask_index703 = getelementptr inbounds %struct.Move, %struct.Move* %arrayidx702, i32 0, i32 1
  %325 = load i32, i32* %mask_index703, align 4
  %idxprom704 = sext i32 %325 to i64
  %326 = load i32, i32* %i, align 4
  %idxprom705 = sext i32 %326 to i64
  %arrayidx706 = getelementptr inbounds [256 x %struct.Move], [256 x %struct.Move]* %movelist, i32 0, i64 %idxprom705
  %array_index707 = getelementptr inbounds %struct.Move, %struct.Move* %arrayidx706, i32 0, i32 0
  %327 = load i32, i32* %array_index707, align 4
  %idxprom708 = sext i32 %327 to i64
  %328 = load i32, i32* %whos_turn, align 4
  %idxprom709 = sext i32 %328 to i64
  %arrayidx710 = getelementptr inbounds [2 x [32 x [32 x %struct.KeyInfo]]], [2 x [32 x [32 x %struct.KeyInfo]]]* @g_keyinfo, i32 0, i64 %idxprom709
  %arrayidx711 = getelementptr inbounds [32 x [32 x %struct.KeyInfo]], [32 x [32 x %struct.KeyInfo]]* %arrayidx710, i32 0, i64 %idxprom708
  %arrayidx712 = getelementptr inbounds [32 x %struct.KeyInfo], [32 x %struct.KeyInfo]* %arrayidx711, i32 0, i64 %idxprom704
  %flipVH713 = getelementptr inbounds %struct.KeyInfo, %struct.KeyInfo* %arrayidx712, i32 0, i32 3
  %bit2_index714 = getelementptr inbounds %struct.KeyInfo_s, %struct.KeyInfo_s* %flipVH713, i32 0, i32 1
  %329 = load i32, i32* %bit2_index714, align 4
  %rem715 = srem i32 %329, 32
  %shl716 = shl i32 1, %rem715
  %330 = load i32, i32* %i, align 4
  %idxprom717 = sext i32 %330 to i64
  %arrayidx718 = getelementptr inbounds [256 x %struct.Move], [256 x %struct.Move]* %movelist, i32 0, i64 %idxprom717
  %mask_index719 = getelementptr inbounds %struct.Move, %struct.Move* %arrayidx718, i32 0, i32 1
  %331 = load i32, i32* %mask_index719, align 4
  %idxprom720 = sext i32 %331 to i64
  %332 = load i32, i32* %i, align 4
  %idxprom721 = sext i32 %332 to i64
  %arrayidx722 = getelementptr inbounds [256 x %struct.Move], [256 x %struct.Move]* %movelist, i32 0, i64 %idxprom721
  %array_index723 = getelementptr inbounds %struct.Move, %struct.Move* %arrayidx722, i32 0, i32 0
  %333 = load i32, i32* %array_index723, align 4
  %idxprom724 = sext i32 %333 to i64
  %334 = load i32, i32* %whos_turn, align 4
  %idxprom725 = sext i32 %334 to i64
  %arrayidx726 = getelementptr inbounds [2 x [32 x [32 x %struct.KeyInfo]]], [2 x [32 x [32 x %struct.KeyInfo]]]* @g_keyinfo, i32 0, i64 %idxprom725
  %arrayidx727 = getelementptr inbounds [32 x [32 x %struct.KeyInfo]], [32 x [32 x %struct.KeyInfo]]* %arrayidx726, i32 0, i64 %idxprom724
  %arrayidx728 = getelementptr inbounds [32 x %struct.KeyInfo], [32 x %struct.KeyInfo]* %arrayidx727, i32 0, i64 %idxprom720
  %flipVH729 = getelementptr inbounds %struct.KeyInfo, %struct.KeyInfo* %arrayidx728, i32 0, i32 3
  %bit2_index730 = getelementptr inbounds %struct.KeyInfo_s, %struct.KeyInfo_s* %flipVH729, i32 0, i32 1
  %335 = load i32, i32* %bit2_index730, align 4
  %div731 = sdiv i32 %335, 32
  %idxprom732 = sext i32 %div731 to i64
  %arrayidx733 = getelementptr inbounds [4 x i32], [4 x i32]* getelementptr inbounds (%struct.Hash_Key, %struct.Hash_Key* @g_flipVH_hashkey, i32 0, i32 0), i32 0, i64 %idxprom732
  %336 = load i32, i32* %arrayidx733, align 4
  %xor734 = xor i32 %336, %shl716
  store i32 %xor734, i32* %arrayidx733, align 4
  %337 = load i32, i32* %i, align 4
  %idxprom735 = sext i32 %337 to i64
  %arrayidx736 = getelementptr inbounds [256 x %struct.Move], [256 x %struct.Move]* %movelist, i32 0, i64 %idxprom735
  %mask_index737 = getelementptr inbounds %struct.Move, %struct.Move* %arrayidx736, i32 0, i32 1
  %338 = load i32, i32* %mask_index737, align 4
  %idxprom738 = sext i32 %338 to i64
  %339 = load i32, i32* %i, align 4
  %idxprom739 = sext i32 %339 to i64
  %arrayidx740 = getelementptr inbounds [256 x %struct.Move], [256 x %struct.Move]* %movelist, i32 0, i64 %idxprom739
  %array_index741 = getelementptr inbounds %struct.Move, %struct.Move* %arrayidx740, i32 0, i32 0
  %340 = load i32, i32* %array_index741, align 4
  %idxprom742 = sext i32 %340 to i64
  %341 = load i32, i32* %whos_turn, align 4
  %idxprom743 = sext i32 %341 to i64
  %arrayidx744 = getelementptr inbounds [2 x [32 x [32 x %struct.KeyInfo]]], [2 x [32 x [32 x %struct.KeyInfo]]]* @g_keyinfo, i32 0, i64 %idxprom743
  %arrayidx745 = getelementptr inbounds [32 x [32 x %struct.KeyInfo]], [32 x [32 x %struct.KeyInfo]]* %arrayidx744, i32 0, i64 %idxprom742
  %arrayidx746 = getelementptr inbounds [32 x %struct.KeyInfo], [32 x %struct.KeyInfo]* %arrayidx745, i32 0, i64 %idxprom738
  %flipVH747 = getelementptr inbounds %struct.KeyInfo, %struct.KeyInfo* %arrayidx746, i32 0, i32 3
  %hash_code748 = getelementptr inbounds %struct.KeyInfo_s, %struct.KeyInfo_s* %flipVH747, i32 0, i32 2
  %342 = load i32, i32* %hash_code748, align 4
  %343 = load i32, i32* getelementptr inbounds (%struct.Hash_Key, %struct.Hash_Key* @g_flipVH_hashkey, i32 0, i32 1), align 4
  %xor749 = xor i32 %343, %342
  store i32 %xor749, i32* getelementptr inbounds (%struct.Hash_Key, %struct.Hash_Key* @g_flipVH_hashkey, i32 0, i32 1), align 4
  %344 = load i32, i32* %value, align 4
  %345 = load i32, i32* %beta.addr, align 4
  %cmp750 = icmp sge i32 %344, %345
  br i1 %cmp750, label %if.then.752, label %if.end.775

if.then.752:                                      ; preds = %for.body
  %346 = load i32, i32* %value, align 4
  store i32 %346, i32* %alpha.addr, align 4
  %347 = load i32, i32* %i, align 4
  %idxprom753 = sext i32 %347 to i64
  %arrayidx754 = getelementptr inbounds [256 x %struct.Move], [256 x %struct.Move]* %movelist, i32 0, i64 %idxprom753
  %348 = bitcast %struct.Move* %best to i8*
  %349 = bitcast %struct.Move* %arrayidx754 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %348, i8* %349, i64 12, i32 4, i1 false)
  %350 = load i32, i32* @starting_depth, align 4
  %351 = load i32, i32* %depth_remaining.addr, align 4
  %sub755 = sub nsw i32 %350, %351
  %idxprom756 = sext i32 %sub755 to i64
  %arrayidx757 = getelementptr inbounds [40 x i32], [40 x i32]* @stat_cutoffs, i32 0, i64 %idxprom756
  %352 = load i32, i32* %arrayidx757, align 4
  %inc758 = add nsw i32 %352, 1
  store i32 %inc758, i32* %arrayidx757, align 4
  %353 = load i32, i32* %i, align 4
  %cmp759 = icmp slt i32 %353, 5
  br i1 %cmp759, label %if.then.761, label %if.else.768

if.then.761:                                      ; preds = %if.then.752
  %354 = load i32, i32* %i, align 4
  %idxprom762 = sext i32 %354 to i64
  %355 = load i32, i32* @starting_depth, align 4
  %356 = load i32, i32* %depth_remaining.addr, align 4
  %sub763 = sub nsw i32 %355, %356
  %idxprom764 = sext i32 %sub763 to i64
  %arrayidx765 = getelementptr inbounds [40 x [10 x i32]], [40 x [10 x i32]]* @stat_nth_try, i32 0, i64 %idxprom764
  %arrayidx766 = getelementptr inbounds [10 x i32], [10 x i32]* %arrayidx765, i32 0, i64 %idxprom762
  %357 = load i32, i32* %arrayidx766, align 4
  %inc767 = add nsw i32 %357, 1
  store i32 %inc767, i32* %arrayidx766, align 4
  br label %if.end.774

if.else.768:                                      ; preds = %if.then.752
  %358 = load i32, i32* @starting_depth, align 4
  %359 = load i32, i32* %depth_remaining.addr, align 4
  %sub769 = sub nsw i32 %358, %359
  %idxprom770 = sext i32 %sub769 to i64
  %arrayidx771 = getelementptr inbounds [40 x [10 x i32]], [40 x [10 x i32]]* @stat_nth_try, i32 0, i64 %idxprom770
  %arrayidx772 = getelementptr inbounds [10 x i32], [10 x i32]* %arrayidx771, i32 0, i64 5
  %360 = load i32, i32* %arrayidx772, align 4
  %inc773 = add nsw i32 %360, 1
  store i32 %inc773, i32* %arrayidx772, align 4
  br label %if.end.774

if.end.774:                                       ; preds = %if.else.768, %if.then.761
  br label %for.end

if.end.775:                                       ; preds = %for.body
  %361 = load i32, i32* %value, align 4
  %362 = load i32, i32* %alpha.addr, align 4
  %cmp776 = icmp sgt i32 %361, %362
  br i1 %cmp776, label %if.then.778, label %if.end.781

if.then.778:                                      ; preds = %if.end.775
  %363 = load i32, i32* %value, align 4
  store i32 %363, i32* %alpha.addr, align 4
  %364 = load i32, i32* %i, align 4
  %idxprom779 = sext i32 %364 to i64
  %arrayidx780 = getelementptr inbounds [256 x %struct.Move], [256 x %struct.Move]* %movelist, i32 0, i64 %idxprom779
  %365 = bitcast %struct.Move* %best to i8*
  %366 = bitcast %struct.Move* %arrayidx780 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %365, i8* %366, i64 12, i32 4, i1 false)
  br label %if.end.781

if.end.781:                                       ; preds = %if.then.778, %if.end.775
  br label %for.inc

for.inc:                                          ; preds = %if.end.781
  %367 = load i32, i32* %i, align 4
  %inc782 = add nsw i32 %367, 1
  store i32 %inc782, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %if.end.774, %for.cond
  %368 = load i32, i32* %value, align 4
  %369 = load i32, i32* %beta.addr, align 4
  %cmp783 = icmp sge i32 %368, %369
  br i1 %cmp783, label %if.then.785, label %if.end.786

if.then.785:                                      ; preds = %for.end
  br label %while.end

if.end.786:                                       ; preds = %for.end
  br label %while.cond

while.end:                                        ; preds = %if.then.785, %while.cond
  %370 = load i32, i32* %alpha.addr, align 4
  %371 = load i32, i32* %init_alpha, align 4
  %372 = load i32, i32* %init_beta, align 4
  %373 = load i64, i64* @g_num_nodes, align 8
  %374 = load i32, i32* %start_nodes, align 4
  %conv787 = zext i32 %374 to i64
  %sub788 = sub i64 %373, %conv787
  %shr = lshr i64 %sub788, 5
  %conv789 = trunc i64 %shr to i32
  %375 = load i32, i32* %depth_remaining.addr, align 4
  %376 = load i32, i32* %whos_turn, align 4
  call void @hashstore(i32 %370, i32 %371, i32 %372, i32 %conv789, i32 %375, %struct.Move* byval align 8 %best, i32 %376)
  %377 = load i32, i32* %alpha.addr, align 4
  store i32 %377, i32* %retval
  br label %return

return:                                           ; preds = %while.end, %if.then.46, %if.then.40, %if.then.34, %if.then.30, %if.then.19, %if.end.10, %if.then.9, %if.then.5
  %378 = load i32, i32* %retval
  ret i32 %378
}

declare i32 @printf(i8*, ...) #2

declare i8* @u64bit_to_string(i64) #2

; Function Attrs: nounwind uwtable
define internal void @init_stats() #0 {
entry:
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.10, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 40
  br i1 %cmp, label %for.body, label %for.end.12

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc, %for.body
  %1 = load i32, i32* %j, align 4
  %cmp2 = icmp slt i32 %1, 6
  br i1 %cmp2, label %for.body.3, label %for.end

for.body.3:                                       ; preds = %for.cond.1
  %2 = load i32, i32* %j, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load i32, i32* %i, align 4
  %idxprom4 = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds [40 x [10 x i32]], [40 x [10 x i32]]* @stat_nth_try, i32 0, i64 %idxprom4
  %arrayidx5 = getelementptr inbounds [10 x i32], [10 x i32]* %arrayidx, i32 0, i64 %idxprom
  store i32 0, i32* %arrayidx5, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body.3
  %4 = load i32, i32* %j, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.1

for.end:                                          ; preds = %for.cond.1
  %5 = load i32, i32* %i, align 4
  %idxprom6 = sext i32 %5 to i64
  %arrayidx7 = getelementptr inbounds [40 x i32], [40 x i32]* @stat_cutoffs, i32 0, i64 %idxprom6
  store i32 0, i32* %arrayidx7, align 4
  %6 = load i32, i32* %i, align 4
  %idxprom8 = sext i32 %6 to i64
  %arrayidx9 = getelementptr inbounds [40 x i32], [40 x i32]* @stat_nodes, i32 0, i64 %idxprom8
  store i32 0, i32* %arrayidx9, align 4
  br label %for.inc.10

for.inc.10:                                       ; preds = %for.end
  %7 = load i32, i32* %i, align 4
  %inc11 = add nsw i32 %7, 1
  store i32 %inc11, i32* %i, align 4
  br label %for.cond

for.end.12:                                       ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @print_stats() #0 {
entry:
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %0 = load i32, i32* @cut1, align 4
  %1 = load i32, i32* @cut2, align 4
  %2 = load i32, i32* @cut3, align 4
  %3 = load i32, i32* @cut4, align 4
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i32 0, i32 0), i32 %0, i32 %1, i32 %2, i32 %3)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.22, %entry
  %4 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %4, 40
  br i1 %cmp, label %for.body, label %for.end.24

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %i, align 4
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds [40 x i32], [40 x i32]* @stat_cutoffs, i32 0, i64 %idxprom
  %6 = load i32, i32* %arrayidx, align 4
  %cmp1 = icmp ne i32 %6, 0
  br i1 %cmp1, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %7 = load i32, i32* %i, align 4
  %idxprom2 = sext i32 %7 to i64
  %arrayidx3 = getelementptr inbounds [40 x i32], [40 x i32]* @stat_nodes, i32 0, i64 %idxprom2
  %8 = load i32, i32* %arrayidx3, align 4
  %cmp4 = icmp ne i32 %8, 0
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %for.body
  %9 = load i32, i32* %i, align 4
  %10 = load i32, i32* %i, align 4
  %idxprom5 = sext i32 %10 to i64
  %arrayidx6 = getelementptr inbounds [40 x i32], [40 x i32]* @stat_nodes, i32 0, i64 %idxprom5
  %11 = load i32, i32* %arrayidx6, align 4
  %12 = load i32, i32* %i, align 4
  %idxprom7 = sext i32 %12 to i64
  %arrayidx8 = getelementptr inbounds [40 x i32], [40 x i32]* @stat_cutoffs, i32 0, i64 %idxprom7
  %13 = load i32, i32* %arrayidx8, align 4
  %call9 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.10, i32 0, i32 0), i32 %9, i32 %11, i32 %13)
  store i32 0, i32* %j, align 4
  br label %for.cond.10

for.cond.10:                                      ; preds = %for.inc, %if.then
  %14 = load i32, i32* %j, align 4
  %cmp11 = icmp slt i32 %14, 5
  br i1 %cmp11, label %for.body.12, label %for.end

for.body.12:                                      ; preds = %for.cond.10
  %15 = load i32, i32* %j, align 4
  %idxprom13 = sext i32 %15 to i64
  %16 = load i32, i32* %i, align 4
  %idxprom14 = sext i32 %16 to i64
  %arrayidx15 = getelementptr inbounds [40 x [10 x i32]], [40 x [10 x i32]]* @stat_nth_try, i32 0, i64 %idxprom14
  %arrayidx16 = getelementptr inbounds [10 x i32], [10 x i32]* %arrayidx15, i32 0, i64 %idxprom13
  %17 = load i32, i32* %arrayidx16, align 4
  %call17 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i32 0, i32 0), i32 %17)
  br label %for.inc

for.inc:                                          ; preds = %for.body.12
  %18 = load i32, i32* %j, align 4
  %inc = add nsw i32 %18, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.10

for.end:                                          ; preds = %for.cond.10
  %19 = load i32, i32* %i, align 4
  %idxprom18 = sext i32 %19 to i64
  %arrayidx19 = getelementptr inbounds [40 x [10 x i32]], [40 x [10 x i32]]* @stat_nth_try, i32 0, i64 %idxprom18
  %arrayidx20 = getelementptr inbounds [10 x i32], [10 x i32]* %arrayidx19, i32 0, i64 5
  %20 = load i32, i32* %arrayidx20, align 4
  %call21 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i32 0, i32 0), i32 %20)
  br label %if.end

if.end:                                           ; preds = %for.end, %lor.lhs.false
  br label %for.inc.22

for.inc.22:                                       ; preds = %if.end
  %21 = load i32, i32* %i, align 4
  %inc23 = add nsw i32 %21, 1
  store i32 %inc23, i32* %i, align 4
  br label %for.cond

for.end.24:                                       ; preds = %for.cond
  ret void
}

declare i32 @does_next_player_win(...) #2

declare i32 @does_who_just_moved_win(...) #2

declare i32 @hashlookup(i32*, i32*, i32*, i32, %struct.Move*, i32) #2

declare i32 @move_generator_stage1(%struct.Move*, i32) #2

declare i32 @move_generator_stage2(%struct.Move*, i32, i32) #2

declare void @hashstore(i32, i32, i32, i32, i32, %struct.Move* byval align 8, i32) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { noreturn nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
