; ModuleID = 'search.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.move_s = type { i32, i32, i32, i32, i32, i32 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@searching_pv = external global i32, align 4
@material = external global [14 x i32], align 16
@board = external global [144 x i32], align 16
@white_to_move = external global i32, align 4
@ply = external global i32, align 4
@pv = external global [300 x [300 x %struct.move_s]], align 16
@i_depth = external global i32, align 4
@history_h = external global [144 x [144 x i32]], align 16
@killer1 = external global [300 x %struct.move_s], align 16
@killer2 = external global [300 x %struct.move_s], align 16
@killer3 = external global [300 x %struct.move_s], align 16
@nodes = external global i32, align 4
@rootnodecount = common global [512 x i32] zeroinitializer, align 16
@raw_nodes = external global i32, align 4
@numb_moves = external global i32, align 4
@pv_length = external global [300 x i32], align 16
@time_exit = external global i32, align 4
@start_time = external global i64, align 8
@time_for_move = external global i32, align 4
@failed = common global i32 0, align 4
@extendedtime = common global i32 0, align 4
@fixed_time = external global i32, align 4
@go_fast = external global i32, align 4
@Variant = external global i32, align 4
@time_left = external global i32, align 4
@.str = private unnamed_addr constant [38 x i8] c"Extended from %d to %d, time left %d\0A\00", align 1
@qnodes = external global i32, align 4
@kingcap = external global i32, align 4
@search.rc_index = internal constant [14 x i32] [i32 0, i32 1, i32 1, i32 2, i32 2, i32 5, i32 5, i32 3, i32 3, i32 4, i32 4, i32 2, i32 2, i32 0], align 16
@checks = common global [300 x i32] zeroinitializer, align 16
@singular = common global [300 x i32] zeroinitializer, align 16
@recaps = common global [300 x i32] zeroinitializer, align 16
@ext_check = external global i32, align 4
@cfg_recap = external global i32, align 4
@path = external global [300 x %struct.move_s], align 16
@ext_recap = common global i32 0, align 4
@captures = external global i32, align 4
@ep_square = external global i32, align 4
@phase = external global i32, align 4
@fifty = external global i32, align 4
@hash = external global i32, align 4
@NTries = external global i32, align 4
@NCuts = external global i32, align 4
@TExt = external global i32, align 4
@ext_onerep = common global i32 0, align 4
@cfg_onerep = external global i32, align 4
@cfg_futprune = external global i32, align 4
@Material = external global i32, align 4
@move_number = external global i32, align 4
@hash_history = external global [600 x i32], align 16
@Xrank = external constant [144 x i32], align 16
@cfg_razordrop = external global i32, align 4
@razor_drop = common global i32 0, align 4
@cfg_cutdrop = external global i32, align 4
@drop_cuts = common global i32 0, align 4
@FULL = external global i32, align 4
@PVS = external global i32, align 4
@PVSF = external global i32, align 4
@razor_material = common global i32 0, align 4
@killer_scores = external global [300 x i32], align 16
@killer_scores2 = external global [300 x i32], align 16
@killer_scores3 = external global [300 x i32], align 16
@FHF = common global i32 0, align 4
@FH = common global i32 0, align 4
@dummy = external global %struct.move_s, align 4
@time_failure = external global i32, align 4
@cur_score = external global i32, align 4
@result = external global i32, align 4
@legals = common global i32 0, align 4
@movetotal = common global i32 0, align 4
@alllosers = external global i32, align 4
@rootlosers = external global [300 x i32], align 16
@moveleft = common global i32 0, align 4
@searching_move = common global [20 x i8] zeroinitializer, align 16
@post = external global i32, align 4
@xb_mode = external global i32, align 4
@bestmovenum = common global i32 0, align 4
@is_pondering = external global i32, align 4
@userealholdings = external global i32, align 4
@ECacheProbes = external global i32, align 4
@ECacheHits = external global i32, align 4
@TTProbes = external global i32, align 4
@TTHits = external global i32, align 4
@TTStores = external global i32, align 4
@forcedwin = external global i32, align 4
@maxposdiff = external global i32, align 4
@true_i_depth = common global i8 0, align 1
@is_analyzing = external global i32, align 4
@inc = external global i32, align 4
@time_cushion = external global i32, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"Opening phase.\0A\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"Middlegame phase.\0A\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"Endgame phase.\0A\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"Time for move : %d\0A\00", align 1
@piece_count = external global i32, align 4
@pn_time = external global i32, align 4
@pn_move = external global %struct.move_s, align 4
@maxdepth = external global i32, align 4
@postpv = common global [256 x i8] zeroinitializer, align 16
@s_threat = common global i32 0, align 4
@.str.5 = private unnamed_addr constant [49 x i8] c"tellics whisper %d restart(s), ended up with %s\0A\00", align 1
@moves_to_tc = external global i32, align 4
@.str.6 = private unnamed_addr constant [27 x i8] c"tellics kibitz Mate in %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [52 x i8] c"tellics ptell Mate in %d, give him no more pieces.\0A\00", align 1
@tradefreely = common global i32 0, align 4
@.str.8 = private unnamed_addr constant [37 x i8] c"tellics ptell You can trade freely.\0A\00", align 1
@must_sit = external global i32, align 4
@realholdings = external global [255 x i8], align 16
@.str.9 = private unnamed_addr constant [25 x i8] c"tellics ptell ---trades\0A\00", align 1
@partnerdead = external global i32, align 4
@.str.10 = private unnamed_addr constant [49 x i8] c"tellics kibitz Both players dead...resigning...\0A\00", align 1
@.str.11 = private unnamed_addr constant [16 x i8] c"tellics resign\0A\00", align 1
@.str.12 = private unnamed_addr constant [81 x i8] c"tellics ptell I am forcedly mated (dead). Tell me 'go' to start moving into it.\0A\00", align 1
@.str.13 = private unnamed_addr constant [62 x i8] c"tellics ptell I'll have to sit...(lose piece that mates you)\0A\00", align 1
@.str.14 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@ugly_ep_hack = common global i32 0, align 4

; Function Attrs: nounwind uwtable
define void @order_moves(%struct.move_s* %moves, i32* %move_ordering, i32* %see_values, i32 %num_moves, i32 %best) #0 {
entry:
  %moves.addr = alloca %struct.move_s*, align 8
  %move_ordering.addr = alloca i32*, align 8
  %see_values.addr = alloca i32*, align 8
  %num_moves.addr = alloca i32, align 4
  %best.addr = alloca i32, align 4
  %promoted = alloca i32, align 4
  %captured = alloca i32, align 4
  %i = alloca i32, align 4
  %from = alloca i32, align 4
  %target = alloca i32, align 4
  %seev = alloca i32, align 4
  store %struct.move_s* %moves, %struct.move_s** %moves.addr, align 8
  store i32* %move_ordering, i32** %move_ordering.addr, align 8
  store i32* %see_values, i32** %see_values.addr, align 8
  store i32 %num_moves, i32* %num_moves.addr, align 4
  store i32 %best, i32* %best.addr, align 4
  %0 = load i32, i32* @searching_pv, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.else.300

if.then:                                          ; preds = %entry
  store i32 0, i32* @searching_pv, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %1 = load i32, i32* %i, align 4
  %2 = load i32, i32* %num_moves.addr, align 4
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load %struct.move_s*, %struct.move_s** %moves.addr, align 8
  %arrayidx = getelementptr inbounds %struct.move_s, %struct.move_s* %4, i64 %idxprom
  %from1 = getelementptr inbounds %struct.move_s, %struct.move_s* %arrayidx, i32 0, i32 0
  %5 = load i32, i32* %from1, align 4
  store i32 %5, i32* %from, align 4
  %6 = load i32, i32* %i, align 4
  %idxprom2 = sext i32 %6 to i64
  %7 = load %struct.move_s*, %struct.move_s** %moves.addr, align 8
  %arrayidx3 = getelementptr inbounds %struct.move_s, %struct.move_s* %7, i64 %idxprom2
  %target4 = getelementptr inbounds %struct.move_s, %struct.move_s* %arrayidx3, i32 0, i32 1
  %8 = load i32, i32* %target4, align 4
  store i32 %8, i32* %target, align 4
  %9 = load i32, i32* %i, align 4
  %idxprom5 = sext i32 %9 to i64
  %10 = load %struct.move_s*, %struct.move_s** %moves.addr, align 8
  %arrayidx6 = getelementptr inbounds %struct.move_s, %struct.move_s* %10, i64 %idxprom5
  %promoted7 = getelementptr inbounds %struct.move_s, %struct.move_s* %arrayidx6, i32 0, i32 3
  %11 = load i32, i32* %promoted7, align 4
  store i32 %11, i32* %promoted, align 4
  %12 = load i32, i32* %i, align 4
  %idxprom8 = sext i32 %12 to i64
  %13 = load %struct.move_s*, %struct.move_s** %moves.addr, align 8
  %arrayidx9 = getelementptr inbounds %struct.move_s, %struct.move_s* %13, i64 %idxprom8
  %captured10 = getelementptr inbounds %struct.move_s, %struct.move_s* %arrayidx9, i32 0, i32 2
  %14 = load i32, i32* %captured10, align 4
  store i32 %14, i32* %captured, align 4
  %15 = load i32, i32* %captured, align 4
  %cmp11 = icmp ne i32 %15, 13
  br i1 %cmp11, label %if.then.12, label %if.else.50

if.then.12:                                       ; preds = %for.body
  %16 = load i32, i32* %captured, align 4
  %idxprom13 = sext i32 %16 to i64
  %arrayidx14 = getelementptr inbounds [14 x i32], [14 x i32]* @material, i32 0, i64 %idxprom13
  %17 = load i32, i32* %arrayidx14, align 4
  %call = call i32 @abs(i32 %17) #4
  %add = add nsw i32 %call, 15
  %18 = load i32, i32* %from, align 4
  %idxprom15 = sext i32 %18 to i64
  %arrayidx16 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom15
  %19 = load i32, i32* %arrayidx16, align 4
  %idxprom17 = sext i32 %19 to i64
  %arrayidx18 = getelementptr inbounds [14 x i32], [14 x i32]* @material, i32 0, i64 %idxprom17
  %20 = load i32, i32* %arrayidx18, align 4
  %call19 = call i32 @abs(i32 %20) #4
  %cmp20 = icmp sge i32 %add, %call19
  br i1 %cmp20, label %if.then.21, label %if.else

if.then.21:                                       ; preds = %if.then.12
  %21 = load i32, i32* %captured, align 4
  %idxprom22 = sext i32 %21 to i64
  %arrayidx23 = getelementptr inbounds [14 x i32], [14 x i32]* @material, i32 0, i64 %idxprom22
  %22 = load i32, i32* %arrayidx23, align 4
  %call24 = call i32 @abs(i32 %22) #4
  %23 = load i32, i32* %from, align 4
  %idxprom25 = sext i32 %23 to i64
  %arrayidx26 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom25
  %24 = load i32, i32* %arrayidx26, align 4
  %idxprom27 = sext i32 %24 to i64
  %arrayidx28 = getelementptr inbounds [14 x i32], [14 x i32]* @material, i32 0, i64 %idxprom27
  %25 = load i32, i32* %arrayidx28, align 4
  %call29 = call i32 @abs(i32 %25) #4
  %shr = ashr i32 %call29, 4
  %sub = sub nsw i32 %call24, %shr
  %26 = load i32, i32* %i, align 4
  %idxprom30 = sext i32 %26 to i64
  %27 = load i32*, i32** %see_values.addr, align 8
  %arrayidx31 = getelementptr inbounds i32, i32* %27, i64 %idxprom30
  store i32 %sub, i32* %arrayidx31, align 4
  %28 = load i32, i32* %i, align 4
  %idxprom32 = sext i32 %28 to i64
  %29 = load i32*, i32** %see_values.addr, align 8
  %arrayidx33 = getelementptr inbounds i32, i32* %29, i64 %idxprom32
  %30 = load i32, i32* %arrayidx33, align 4
  %add34 = add nsw i32 50000000, %30
  %31 = load i32, i32* %i, align 4
  %idxprom35 = sext i32 %31 to i64
  %32 = load i32*, i32** %move_ordering.addr, align 8
  %arrayidx36 = getelementptr inbounds i32, i32* %32, i64 %idxprom35
  store i32 %add34, i32* %arrayidx36, align 4
  br label %if.end.49

if.else:                                          ; preds = %if.then.12
  %33 = load i32, i32* @white_to_move, align 4
  %tobool37 = icmp ne i32 %33, 0
  %cond = select i1 %tobool37, i32 0, i32 1
  %34 = load i32, i32* %target, align 4
  %35 = load i32, i32* %from, align 4
  %call38 = call i32 @see(i32 %cond, i32 %34, i32 %35)
  store i32 %call38, i32* %seev, align 4
  %36 = load i32, i32* %seev, align 4
  %cmp39 = icmp sge i32 %36, -50
  br i1 %cmp39, label %if.then.40, label %if.else.44

if.then.40:                                       ; preds = %if.else
  %37 = load i32, i32* %seev, align 4
  %add41 = add nsw i32 50000000, %37
  %38 = load i32, i32* %i, align 4
  %idxprom42 = sext i32 %38 to i64
  %39 = load i32*, i32** %move_ordering.addr, align 8
  %arrayidx43 = getelementptr inbounds i32, i32* %39, i64 %idxprom42
  store i32 %add41, i32* %arrayidx43, align 4
  br label %if.end

if.else.44:                                       ; preds = %if.else
  %40 = load i32, i32* %seev, align 4
  %41 = load i32, i32* %i, align 4
  %idxprom45 = sext i32 %41 to i64
  %42 = load i32*, i32** %move_ordering.addr, align 8
  %arrayidx46 = getelementptr inbounds i32, i32* %42, i64 %idxprom45
  store i32 %40, i32* %arrayidx46, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.44, %if.then.40
  %43 = load i32, i32* %seev, align 4
  %44 = load i32, i32* %i, align 4
  %idxprom47 = sext i32 %44 to i64
  %45 = load i32*, i32** %see_values.addr, align 8
  %arrayidx48 = getelementptr inbounds i32, i32* %45, i64 %idxprom47
  store i32 %43, i32* %arrayidx48, align 4
  br label %if.end.49

if.end.49:                                        ; preds = %if.end, %if.then.21
  br label %if.end.53

if.else.50:                                       ; preds = %for.body
  %46 = load i32, i32* %i, align 4
  %idxprom51 = sext i32 %46 to i64
  %47 = load i32*, i32** %move_ordering.addr, align 8
  %arrayidx52 = getelementptr inbounds i32, i32* %47, i64 %idxprom51
  store i32 0, i32* %arrayidx52, align 4
  br label %if.end.53

if.end.53:                                        ; preds = %if.else.50, %if.end.49
  %48 = load i32, i32* %from, align 4
  %49 = load i32, i32* @ply, align 4
  %idxprom54 = sext i32 %49 to i64
  %arrayidx55 = getelementptr inbounds [300 x %struct.move_s], [300 x %struct.move_s]* getelementptr inbounds ([300 x [300 x %struct.move_s]], [300 x [300 x %struct.move_s]]* @pv, i32 0, i64 1), i32 0, i64 %idxprom54
  %from56 = getelementptr inbounds %struct.move_s, %struct.move_s* %arrayidx55, i32 0, i32 0
  %50 = load i32, i32* %from56, align 4
  %cmp57 = icmp eq i32 %48, %50
  br i1 %cmp57, label %land.lhs.true, label %if.else.103

land.lhs.true:                                    ; preds = %if.end.53
  %51 = load i32, i32* %target, align 4
  %52 = load i32, i32* @ply, align 4
  %idxprom58 = sext i32 %52 to i64
  %arrayidx59 = getelementptr inbounds [300 x %struct.move_s], [300 x %struct.move_s]* getelementptr inbounds ([300 x [300 x %struct.move_s]], [300 x [300 x %struct.move_s]]* @pv, i32 0, i64 1), i32 0, i64 %idxprom58
  %target60 = getelementptr inbounds %struct.move_s, %struct.move_s* %arrayidx59, i32 0, i32 1
  %53 = load i32, i32* %target60, align 4
  %cmp61 = icmp eq i32 %51, %53
  br i1 %cmp61, label %land.lhs.true.62, label %if.else.103

land.lhs.true.62:                                 ; preds = %land.lhs.true
  %54 = load i32, i32* %promoted, align 4
  %55 = load i32, i32* @ply, align 4
  %idxprom63 = sext i32 %55 to i64
  %arrayidx64 = getelementptr inbounds [300 x %struct.move_s], [300 x %struct.move_s]* getelementptr inbounds ([300 x [300 x %struct.move_s]], [300 x [300 x %struct.move_s]]* @pv, i32 0, i64 1), i32 0, i64 %idxprom63
  %promoted65 = getelementptr inbounds %struct.move_s, %struct.move_s* %arrayidx64, i32 0, i32 3
  %56 = load i32, i32* %promoted65, align 4
  %cmp66 = icmp eq i32 %54, %56
  br i1 %cmp66, label %if.then.67, label %if.else.103

if.then.67:                                       ; preds = %land.lhs.true.62
  store i32 1, i32* @searching_pv, align 4
  %57 = load i32, i32* %i, align 4
  %idxprom68 = sext i32 %57 to i64
  %58 = load i32*, i32** %move_ordering.addr, align 8
  %arrayidx69 = getelementptr inbounds i32, i32* %58, i64 %idxprom68
  store i32 100000000, i32* %arrayidx69, align 4
  %59 = load i32, i32* %captured, align 4
  %cmp70 = icmp ne i32 %59, 13
  br i1 %cmp70, label %if.then.71, label %if.end.102

if.then.71:                                       ; preds = %if.then.67
  %60 = load i32, i32* %captured, align 4
  %idxprom72 = sext i32 %60 to i64
  %arrayidx73 = getelementptr inbounds [14 x i32], [14 x i32]* @material, i32 0, i64 %idxprom72
  %61 = load i32, i32* %arrayidx73, align 4
  %call74 = call i32 @abs(i32 %61) #4
  %add75 = add nsw i32 %call74, 15
  %62 = load i32, i32* %from, align 4
  %idxprom76 = sext i32 %62 to i64
  %arrayidx77 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom76
  %63 = load i32, i32* %arrayidx77, align 4
  %idxprom78 = sext i32 %63 to i64
  %arrayidx79 = getelementptr inbounds [14 x i32], [14 x i32]* @material, i32 0, i64 %idxprom78
  %64 = load i32, i32* %arrayidx79, align 4
  %call80 = call i32 @abs(i32 %64) #4
  %cmp81 = icmp sge i32 %add75, %call80
  br i1 %cmp81, label %if.then.82, label %if.else.95

if.then.82:                                       ; preds = %if.then.71
  %65 = load i32, i32* %captured, align 4
  %idxprom83 = sext i32 %65 to i64
  %arrayidx84 = getelementptr inbounds [14 x i32], [14 x i32]* @material, i32 0, i64 %idxprom83
  %66 = load i32, i32* %arrayidx84, align 4
  %call85 = call i32 @abs(i32 %66) #4
  %67 = load i32, i32* %from, align 4
  %idxprom86 = sext i32 %67 to i64
  %arrayidx87 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom86
  %68 = load i32, i32* %arrayidx87, align 4
  %idxprom88 = sext i32 %68 to i64
  %arrayidx89 = getelementptr inbounds [14 x i32], [14 x i32]* @material, i32 0, i64 %idxprom88
  %69 = load i32, i32* %arrayidx89, align 4
  %call90 = call i32 @abs(i32 %69) #4
  %shr91 = ashr i32 %call90, 4
  %sub92 = sub nsw i32 %call85, %shr91
  %70 = load i32, i32* %i, align 4
  %idxprom93 = sext i32 %70 to i64
  %71 = load i32*, i32** %see_values.addr, align 8
  %arrayidx94 = getelementptr inbounds i32, i32* %71, i64 %idxprom93
  store i32 %sub92, i32* %arrayidx94, align 4
  br label %if.end.101

if.else.95:                                       ; preds = %if.then.71
  %72 = load i32, i32* @white_to_move, align 4
  %tobool96 = icmp ne i32 %72, 0
  %cond97 = select i1 %tobool96, i32 0, i32 1
  %73 = load i32, i32* %target, align 4
  %74 = load i32, i32* %from, align 4
  %call98 = call i32 @see(i32 %cond97, i32 %73, i32 %74)
  store i32 %call98, i32* %seev, align 4
  %75 = load i32, i32* %seev, align 4
  %76 = load i32, i32* %i, align 4
  %idxprom99 = sext i32 %76 to i64
  %77 = load i32*, i32** %see_values.addr, align 8
  %arrayidx100 = getelementptr inbounds i32, i32* %77, i64 %idxprom99
  store i32 %75, i32* %arrayidx100, align 4
  br label %if.end.101

if.end.101:                                       ; preds = %if.else.95, %if.then.82
  br label %if.end.102

if.end.102:                                       ; preds = %if.end.101, %if.then.67
  br label %if.end.299

if.else.103:                                      ; preds = %land.lhs.true.62, %land.lhs.true, %if.end.53
  %78 = load i32, i32* %best.addr, align 4
  %cmp104 = icmp ne i32 %78, -1
  br i1 %cmp104, label %land.lhs.true.105, label %if.else.145

land.lhs.true.105:                                ; preds = %if.else.103
  %79 = load i32, i32* %best.addr, align 4
  %cmp106 = icmp ne i32 %79, -2
  br i1 %cmp106, label %land.lhs.true.107, label %if.else.145

land.lhs.true.107:                                ; preds = %land.lhs.true.105
  %80 = load i32, i32* %i, align 4
  %81 = load i32, i32* %best.addr, align 4
  %cmp108 = icmp eq i32 %80, %81
  br i1 %cmp108, label %if.then.109, label %if.else.145

if.then.109:                                      ; preds = %land.lhs.true.107
  %82 = load i32, i32* %i, align 4
  %idxprom110 = sext i32 %82 to i64
  %83 = load i32*, i32** %move_ordering.addr, align 8
  %arrayidx111 = getelementptr inbounds i32, i32* %83, i64 %idxprom110
  store i32 100000000, i32* %arrayidx111, align 4
  %84 = load i32, i32* %captured, align 4
  %cmp112 = icmp ne i32 %84, 13
  br i1 %cmp112, label %if.then.113, label %if.end.144

if.then.113:                                      ; preds = %if.then.109
  %85 = load i32, i32* %captured, align 4
  %idxprom114 = sext i32 %85 to i64
  %arrayidx115 = getelementptr inbounds [14 x i32], [14 x i32]* @material, i32 0, i64 %idxprom114
  %86 = load i32, i32* %arrayidx115, align 4
  %call116 = call i32 @abs(i32 %86) #4
  %add117 = add nsw i32 %call116, 15
  %87 = load i32, i32* %from, align 4
  %idxprom118 = sext i32 %87 to i64
  %arrayidx119 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom118
  %88 = load i32, i32* %arrayidx119, align 4
  %idxprom120 = sext i32 %88 to i64
  %arrayidx121 = getelementptr inbounds [14 x i32], [14 x i32]* @material, i32 0, i64 %idxprom120
  %89 = load i32, i32* %arrayidx121, align 4
  %call122 = call i32 @abs(i32 %89) #4
  %cmp123 = icmp sge i32 %add117, %call122
  br i1 %cmp123, label %if.then.124, label %if.else.137

if.then.124:                                      ; preds = %if.then.113
  %90 = load i32, i32* %captured, align 4
  %idxprom125 = sext i32 %90 to i64
  %arrayidx126 = getelementptr inbounds [14 x i32], [14 x i32]* @material, i32 0, i64 %idxprom125
  %91 = load i32, i32* %arrayidx126, align 4
  %call127 = call i32 @abs(i32 %91) #4
  %92 = load i32, i32* %from, align 4
  %idxprom128 = sext i32 %92 to i64
  %arrayidx129 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom128
  %93 = load i32, i32* %arrayidx129, align 4
  %idxprom130 = sext i32 %93 to i64
  %arrayidx131 = getelementptr inbounds [14 x i32], [14 x i32]* @material, i32 0, i64 %idxprom130
  %94 = load i32, i32* %arrayidx131, align 4
  %call132 = call i32 @abs(i32 %94) #4
  %shr133 = ashr i32 %call132, 4
  %sub134 = sub nsw i32 %call127, %shr133
  %95 = load i32, i32* %i, align 4
  %idxprom135 = sext i32 %95 to i64
  %96 = load i32*, i32** %see_values.addr, align 8
  %arrayidx136 = getelementptr inbounds i32, i32* %96, i64 %idxprom135
  store i32 %sub134, i32* %arrayidx136, align 4
  br label %if.end.143

if.else.137:                                      ; preds = %if.then.113
  %97 = load i32, i32* @white_to_move, align 4
  %tobool138 = icmp ne i32 %97, 0
  %cond139 = select i1 %tobool138, i32 0, i32 1
  %98 = load i32, i32* %target, align 4
  %99 = load i32, i32* %from, align 4
  %call140 = call i32 @see(i32 %cond139, i32 %98, i32 %99)
  store i32 %call140, i32* %seev, align 4
  %100 = load i32, i32* %seev, align 4
  %101 = load i32, i32* %i, align 4
  %idxprom141 = sext i32 %101 to i64
  %102 = load i32*, i32** %see_values.addr, align 8
  %arrayidx142 = getelementptr inbounds i32, i32* %102, i64 %idxprom141
  store i32 %100, i32* %arrayidx142, align 4
  br label %if.end.143

if.end.143:                                       ; preds = %if.else.137, %if.then.124
  br label %if.end.144

if.end.144:                                       ; preds = %if.end.143, %if.then.109
  br label %if.end.298

if.else.145:                                      ; preds = %land.lhs.true.107, %land.lhs.true.105, %if.else.103
  %103 = load i32, i32* %best.addr, align 4
  %cmp146 = icmp eq i32 %103, -2
  br i1 %cmp146, label %if.then.147, label %if.else.211

if.then.147:                                      ; preds = %if.else.145
  %104 = load i32, i32* %from, align 4
  %105 = load i32, i32* @ply, align 4
  %add148 = add nsw i32 %105, 1
  %idxprom149 = sext i32 %add148 to i64
  %106 = load i32, i32* @ply, align 4
  %add150 = add nsw i32 %106, 1
  %idxprom151 = sext i32 %add150 to i64
  %arrayidx152 = getelementptr inbounds [300 x [300 x %struct.move_s]], [300 x [300 x %struct.move_s]]* @pv, i32 0, i64 %idxprom151
  %arrayidx153 = getelementptr inbounds [300 x %struct.move_s], [300 x %struct.move_s]* %arrayidx152, i32 0, i64 %idxprom149
  %from154 = getelementptr inbounds %struct.move_s, %struct.move_s* %arrayidx153, i32 0, i32 0
  %107 = load i32, i32* %from154, align 4
  %cmp155 = icmp eq i32 %104, %107
  br i1 %cmp155, label %land.lhs.true.156, label %if.end.210

land.lhs.true.156:                                ; preds = %if.then.147
  %108 = load i32, i32* %target, align 4
  %109 = load i32, i32* @ply, align 4
  %add157 = add nsw i32 %109, 1
  %idxprom158 = sext i32 %add157 to i64
  %110 = load i32, i32* @ply, align 4
  %add159 = add nsw i32 %110, 1
  %idxprom160 = sext i32 %add159 to i64
  %arrayidx161 = getelementptr inbounds [300 x [300 x %struct.move_s]], [300 x [300 x %struct.move_s]]* @pv, i32 0, i64 %idxprom160
  %arrayidx162 = getelementptr inbounds [300 x %struct.move_s], [300 x %struct.move_s]* %arrayidx161, i32 0, i64 %idxprom158
  %target163 = getelementptr inbounds %struct.move_s, %struct.move_s* %arrayidx162, i32 0, i32 1
  %111 = load i32, i32* %target163, align 4
  %cmp164 = icmp eq i32 %108, %111
  br i1 %cmp164, label %land.lhs.true.165, label %if.end.210

land.lhs.true.165:                                ; preds = %land.lhs.true.156
  %112 = load i32, i32* %promoted, align 4
  %113 = load i32, i32* @ply, align 4
  %add166 = add nsw i32 %113, 1
  %idxprom167 = sext i32 %add166 to i64
  %114 = load i32, i32* @ply, align 4
  %add168 = add nsw i32 %114, 1
  %idxprom169 = sext i32 %add168 to i64
  %arrayidx170 = getelementptr inbounds [300 x [300 x %struct.move_s]], [300 x [300 x %struct.move_s]]* @pv, i32 0, i64 %idxprom169
  %arrayidx171 = getelementptr inbounds [300 x %struct.move_s], [300 x %struct.move_s]* %arrayidx170, i32 0, i64 %idxprom167
  %promoted172 = getelementptr inbounds %struct.move_s, %struct.move_s* %arrayidx171, i32 0, i32 3
  %115 = load i32, i32* %promoted172, align 4
  %cmp173 = icmp eq i32 %112, %115
  br i1 %cmp173, label %if.then.174, label %if.end.210

if.then.174:                                      ; preds = %land.lhs.true.165
  %116 = load i32, i32* %i, align 4
  %idxprom175 = sext i32 %116 to i64
  %117 = load i32*, i32** %move_ordering.addr, align 8
  %arrayidx176 = getelementptr inbounds i32, i32* %117, i64 %idxprom175
  store i32 100000000, i32* %arrayidx176, align 4
  %118 = load i32, i32* %captured, align 4
  %cmp177 = icmp ne i32 %118, 13
  br i1 %cmp177, label %if.then.178, label %if.end.209

if.then.178:                                      ; preds = %if.then.174
  %119 = load i32, i32* %captured, align 4
  %idxprom179 = sext i32 %119 to i64
  %arrayidx180 = getelementptr inbounds [14 x i32], [14 x i32]* @material, i32 0, i64 %idxprom179
  %120 = load i32, i32* %arrayidx180, align 4
  %call181 = call i32 @abs(i32 %120) #4
  %add182 = add nsw i32 %call181, 15
  %121 = load i32, i32* %from, align 4
  %idxprom183 = sext i32 %121 to i64
  %arrayidx184 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom183
  %122 = load i32, i32* %arrayidx184, align 4
  %idxprom185 = sext i32 %122 to i64
  %arrayidx186 = getelementptr inbounds [14 x i32], [14 x i32]* @material, i32 0, i64 %idxprom185
  %123 = load i32, i32* %arrayidx186, align 4
  %call187 = call i32 @abs(i32 %123) #4
  %cmp188 = icmp sge i32 %add182, %call187
  br i1 %cmp188, label %if.then.189, label %if.else.202

if.then.189:                                      ; preds = %if.then.178
  %124 = load i32, i32* %captured, align 4
  %idxprom190 = sext i32 %124 to i64
  %arrayidx191 = getelementptr inbounds [14 x i32], [14 x i32]* @material, i32 0, i64 %idxprom190
  %125 = load i32, i32* %arrayidx191, align 4
  %call192 = call i32 @abs(i32 %125) #4
  %126 = load i32, i32* %from, align 4
  %idxprom193 = sext i32 %126 to i64
  %arrayidx194 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom193
  %127 = load i32, i32* %arrayidx194, align 4
  %idxprom195 = sext i32 %127 to i64
  %arrayidx196 = getelementptr inbounds [14 x i32], [14 x i32]* @material, i32 0, i64 %idxprom195
  %128 = load i32, i32* %arrayidx196, align 4
  %call197 = call i32 @abs(i32 %128) #4
  %shr198 = ashr i32 %call197, 4
  %sub199 = sub nsw i32 %call192, %shr198
  %129 = load i32, i32* %i, align 4
  %idxprom200 = sext i32 %129 to i64
  %130 = load i32*, i32** %see_values.addr, align 8
  %arrayidx201 = getelementptr inbounds i32, i32* %130, i64 %idxprom200
  store i32 %sub199, i32* %arrayidx201, align 4
  br label %if.end.208

if.else.202:                                      ; preds = %if.then.178
  %131 = load i32, i32* @white_to_move, align 4
  %tobool203 = icmp ne i32 %131, 0
  %cond204 = select i1 %tobool203, i32 0, i32 1
  %132 = load i32, i32* %target, align 4
  %133 = load i32, i32* %from, align 4
  %call205 = call i32 @see(i32 %cond204, i32 %132, i32 %133)
  store i32 %call205, i32* %seev, align 4
  %134 = load i32, i32* %seev, align 4
  %135 = load i32, i32* %i, align 4
  %idxprom206 = sext i32 %135 to i64
  %136 = load i32*, i32** %see_values.addr, align 8
  %arrayidx207 = getelementptr inbounds i32, i32* %136, i64 %idxprom206
  store i32 %134, i32* %arrayidx207, align 4
  br label %if.end.208

if.end.208:                                       ; preds = %if.else.202, %if.then.189
  br label %if.end.209

if.end.209:                                       ; preds = %if.end.208, %if.then.174
  br label %if.end.210

if.end.210:                                       ; preds = %if.end.209, %land.lhs.true.165, %land.lhs.true.156, %if.then.147
  br label %if.end.297

if.else.211:                                      ; preds = %if.else.145
  %137 = load i32, i32* @ply, align 4
  %cmp212 = icmp ne i32 %137, 1
  br i1 %cmp212, label %if.then.214, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else.211
  %138 = load i32, i32* @i_depth, align 4
  %cmp213 = icmp slt i32 %138, 2
  br i1 %cmp213, label %if.then.214, label %if.else.281

if.then.214:                                      ; preds = %lor.lhs.false, %if.else.211
  %139 = load i32, i32* %target, align 4
  %idxprom215 = sext i32 %139 to i64
  %140 = load i32, i32* %from, align 4
  %idxprom216 = sext i32 %140 to i64
  %arrayidx217 = getelementptr inbounds [144 x [144 x i32]], [144 x [144 x i32]]* @history_h, i32 0, i64 %idxprom216
  %arrayidx218 = getelementptr inbounds [144 x i32], [144 x i32]* %arrayidx217, i32 0, i64 %idxprom215
  %141 = load i32, i32* %arrayidx218, align 4
  %142 = load i32, i32* %i, align 4
  %idxprom219 = sext i32 %142 to i64
  %143 = load i32*, i32** %move_ordering.addr, align 8
  %arrayidx220 = getelementptr inbounds i32, i32* %143, i64 %idxprom219
  %144 = load i32, i32* %arrayidx220, align 4
  %add221 = add i32 %144, %141
  store i32 %add221, i32* %arrayidx220, align 4
  %145 = load i32, i32* %from, align 4
  %146 = load i32, i32* @ply, align 4
  %idxprom222 = sext i32 %146 to i64
  %arrayidx223 = getelementptr inbounds [300 x %struct.move_s], [300 x %struct.move_s]* @killer1, i32 0, i64 %idxprom222
  %from224 = getelementptr inbounds %struct.move_s, %struct.move_s* %arrayidx223, i32 0, i32 0
  %147 = load i32, i32* %from224, align 4
  %cmp225 = icmp eq i32 %145, %147
  br i1 %cmp225, label %land.lhs.true.226, label %if.else.240

land.lhs.true.226:                                ; preds = %if.then.214
  %148 = load i32, i32* %target, align 4
  %149 = load i32, i32* @ply, align 4
  %idxprom227 = sext i32 %149 to i64
  %arrayidx228 = getelementptr inbounds [300 x %struct.move_s], [300 x %struct.move_s]* @killer1, i32 0, i64 %idxprom227
  %target229 = getelementptr inbounds %struct.move_s, %struct.move_s* %arrayidx228, i32 0, i32 1
  %150 = load i32, i32* %target229, align 4
  %cmp230 = icmp eq i32 %148, %150
  br i1 %cmp230, label %land.lhs.true.231, label %if.else.240

land.lhs.true.231:                                ; preds = %land.lhs.true.226
  %151 = load i32, i32* %promoted, align 4
  %152 = load i32, i32* @ply, align 4
  %idxprom232 = sext i32 %152 to i64
  %arrayidx233 = getelementptr inbounds [300 x %struct.move_s], [300 x %struct.move_s]* @killer1, i32 0, i64 %idxprom232
  %promoted234 = getelementptr inbounds %struct.move_s, %struct.move_s* %arrayidx233, i32 0, i32 3
  %153 = load i32, i32* %promoted234, align 4
  %cmp235 = icmp eq i32 %151, %153
  br i1 %cmp235, label %if.then.236, label %if.else.240

if.then.236:                                      ; preds = %land.lhs.true.231
  %154 = load i32, i32* %i, align 4
  %idxprom237 = sext i32 %154 to i64
  %155 = load i32*, i32** %move_ordering.addr, align 8
  %arrayidx238 = getelementptr inbounds i32, i32* %155, i64 %idxprom237
  %156 = load i32, i32* %arrayidx238, align 4
  %add239 = add nsw i32 %156, 25000000
  store i32 %add239, i32* %arrayidx238, align 4
  br label %if.end.280

if.else.240:                                      ; preds = %land.lhs.true.231, %land.lhs.true.226, %if.then.214
  %157 = load i32, i32* %from, align 4
  %158 = load i32, i32* @ply, align 4
  %idxprom241 = sext i32 %158 to i64
  %arrayidx242 = getelementptr inbounds [300 x %struct.move_s], [300 x %struct.move_s]* @killer2, i32 0, i64 %idxprom241
  %from243 = getelementptr inbounds %struct.move_s, %struct.move_s* %arrayidx242, i32 0, i32 0
  %159 = load i32, i32* %from243, align 4
  %cmp244 = icmp eq i32 %157, %159
  br i1 %cmp244, label %land.lhs.true.245, label %if.else.259

land.lhs.true.245:                                ; preds = %if.else.240
  %160 = load i32, i32* %target, align 4
  %161 = load i32, i32* @ply, align 4
  %idxprom246 = sext i32 %161 to i64
  %arrayidx247 = getelementptr inbounds [300 x %struct.move_s], [300 x %struct.move_s]* @killer2, i32 0, i64 %idxprom246
  %target248 = getelementptr inbounds %struct.move_s, %struct.move_s* %arrayidx247, i32 0, i32 1
  %162 = load i32, i32* %target248, align 4
  %cmp249 = icmp eq i32 %160, %162
  br i1 %cmp249, label %land.lhs.true.250, label %if.else.259

land.lhs.true.250:                                ; preds = %land.lhs.true.245
  %163 = load i32, i32* %promoted, align 4
  %164 = load i32, i32* @ply, align 4
  %idxprom251 = sext i32 %164 to i64
  %arrayidx252 = getelementptr inbounds [300 x %struct.move_s], [300 x %struct.move_s]* @killer2, i32 0, i64 %idxprom251
  %promoted253 = getelementptr inbounds %struct.move_s, %struct.move_s* %arrayidx252, i32 0, i32 3
  %165 = load i32, i32* %promoted253, align 4
  %cmp254 = icmp eq i32 %163, %165
  br i1 %cmp254, label %if.then.255, label %if.else.259

if.then.255:                                      ; preds = %land.lhs.true.250
  %166 = load i32, i32* %i, align 4
  %idxprom256 = sext i32 %166 to i64
  %167 = load i32*, i32** %move_ordering.addr, align 8
  %arrayidx257 = getelementptr inbounds i32, i32* %167, i64 %idxprom256
  %168 = load i32, i32* %arrayidx257, align 4
  %add258 = add nsw i32 %168, 20000000
  store i32 %add258, i32* %arrayidx257, align 4
  br label %if.end.279

if.else.259:                                      ; preds = %land.lhs.true.250, %land.lhs.true.245, %if.else.240
  %169 = load i32, i32* %from, align 4
  %170 = load i32, i32* @ply, align 4
  %idxprom260 = sext i32 %170 to i64
  %arrayidx261 = getelementptr inbounds [300 x %struct.move_s], [300 x %struct.move_s]* @killer3, i32 0, i64 %idxprom260
  %from262 = getelementptr inbounds %struct.move_s, %struct.move_s* %arrayidx261, i32 0, i32 0
  %171 = load i32, i32* %from262, align 4
  %cmp263 = icmp eq i32 %169, %171
  br i1 %cmp263, label %land.lhs.true.264, label %if.end.278

land.lhs.true.264:                                ; preds = %if.else.259
  %172 = load i32, i32* %target, align 4
  %173 = load i32, i32* @ply, align 4
  %idxprom265 = sext i32 %173 to i64
  %arrayidx266 = getelementptr inbounds [300 x %struct.move_s], [300 x %struct.move_s]* @killer3, i32 0, i64 %idxprom265
  %target267 = getelementptr inbounds %struct.move_s, %struct.move_s* %arrayidx266, i32 0, i32 1
  %174 = load i32, i32* %target267, align 4
  %cmp268 = icmp eq i32 %172, %174
  br i1 %cmp268, label %land.lhs.true.269, label %if.end.278

land.lhs.true.269:                                ; preds = %land.lhs.true.264
  %175 = load i32, i32* %promoted, align 4
  %176 = load i32, i32* @ply, align 4
  %idxprom270 = sext i32 %176 to i64
  %arrayidx271 = getelementptr inbounds [300 x %struct.move_s], [300 x %struct.move_s]* @killer3, i32 0, i64 %idxprom270
  %promoted272 = getelementptr inbounds %struct.move_s, %struct.move_s* %arrayidx271, i32 0, i32 3
  %177 = load i32, i32* %promoted272, align 4
  %cmp273 = icmp eq i32 %175, %177
  br i1 %cmp273, label %if.then.274, label %if.end.278

if.then.274:                                      ; preds = %land.lhs.true.269
  %178 = load i32, i32* %i, align 4
  %idxprom275 = sext i32 %178 to i64
  %179 = load i32*, i32** %move_ordering.addr, align 8
  %arrayidx276 = getelementptr inbounds i32, i32* %179, i64 %idxprom275
  %180 = load i32, i32* %arrayidx276, align 4
  %add277 = add nsw i32 %180, 15000000
  store i32 %add277, i32* %arrayidx276, align 4
  br label %if.end.278

if.end.278:                                       ; preds = %if.then.274, %land.lhs.true.269, %land.lhs.true.264, %if.else.259
  br label %if.end.279

if.end.279:                                       ; preds = %if.end.278, %if.then.255
  br label %if.end.280

if.end.280:                                       ; preds = %if.end.279, %if.then.236
  br label %if.end.296

if.else.281:                                      ; preds = %lor.lhs.false
  %181 = load i32, i32* @nodes, align 4
  %div = sdiv i32 %181, 100
  %cmp282 = icmp sgt i32 %div, 100000000
  br i1 %cmp282, label %if.then.283, label %if.else.289

if.then.283:                                      ; preds = %if.else.281
  %182 = load i32, i32* %i, align 4
  %idxprom284 = sext i32 %182 to i64
  %arrayidx285 = getelementptr inbounds [512 x i32], [512 x i32]* @rootnodecount, i32 0, i64 %idxprom284
  %183 = load i32, i32* %arrayidx285, align 4
  %div286 = udiv i32 %183, 1000
  %184 = load i32, i32* %i, align 4
  %idxprom287 = sext i32 %184 to i64
  %185 = load i32*, i32** %move_ordering.addr, align 8
  %arrayidx288 = getelementptr inbounds i32, i32* %185, i64 %idxprom287
  store i32 %div286, i32* %arrayidx288, align 4
  br label %if.end.295

if.else.289:                                      ; preds = %if.else.281
  %186 = load i32, i32* %i, align 4
  %idxprom290 = sext i32 %186 to i64
  %arrayidx291 = getelementptr inbounds [512 x i32], [512 x i32]* @rootnodecount, i32 0, i64 %idxprom290
  %187 = load i32, i32* %arrayidx291, align 4
  %div292 = udiv i32 %187, 100
  %188 = load i32, i32* %i, align 4
  %idxprom293 = sext i32 %188 to i64
  %189 = load i32*, i32** %move_ordering.addr, align 8
  %arrayidx294 = getelementptr inbounds i32, i32* %189, i64 %idxprom293
  store i32 %div292, i32* %arrayidx294, align 4
  br label %if.end.295

if.end.295:                                       ; preds = %if.else.289, %if.then.283
  br label %if.end.296

if.end.296:                                       ; preds = %if.end.295, %if.end.280
  br label %if.end.297

if.end.297:                                       ; preds = %if.end.296, %if.end.210
  br label %if.end.298

if.end.298:                                       ; preds = %if.end.297, %if.end.144
  br label %if.end.299

if.end.299:                                       ; preds = %if.end.298, %if.end.102
  br label %for.inc

for.inc:                                          ; preds = %if.end.299
  %190 = load i32, i32* %i, align 4
  %inc = add nsw i32 %190, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.543

if.else.300:                                      ; preds = %entry
  store i32 0, i32* %i, align 4
  br label %for.cond.301

for.cond.301:                                     ; preds = %for.inc.540, %if.else.300
  %191 = load i32, i32* %i, align 4
  %192 = load i32, i32* %num_moves.addr, align 4
  %cmp302 = icmp slt i32 %191, %192
  br i1 %cmp302, label %for.body.303, label %for.end.542

for.body.303:                                     ; preds = %for.cond.301
  %193 = load i32, i32* %i, align 4
  %idxprom304 = sext i32 %193 to i64
  %194 = load %struct.move_s*, %struct.move_s** %moves.addr, align 8
  %arrayidx305 = getelementptr inbounds %struct.move_s, %struct.move_s* %194, i64 %idxprom304
  %from306 = getelementptr inbounds %struct.move_s, %struct.move_s* %arrayidx305, i32 0, i32 0
  %195 = load i32, i32* %from306, align 4
  store i32 %195, i32* %from, align 4
  %196 = load i32, i32* %i, align 4
  %idxprom307 = sext i32 %196 to i64
  %197 = load %struct.move_s*, %struct.move_s** %moves.addr, align 8
  %arrayidx308 = getelementptr inbounds %struct.move_s, %struct.move_s* %197, i64 %idxprom307
  %target309 = getelementptr inbounds %struct.move_s, %struct.move_s* %arrayidx308, i32 0, i32 1
  %198 = load i32, i32* %target309, align 4
  store i32 %198, i32* %target, align 4
  %199 = load i32, i32* %i, align 4
  %idxprom310 = sext i32 %199 to i64
  %200 = load %struct.move_s*, %struct.move_s** %moves.addr, align 8
  %arrayidx311 = getelementptr inbounds %struct.move_s, %struct.move_s* %200, i64 %idxprom310
  %promoted312 = getelementptr inbounds %struct.move_s, %struct.move_s* %arrayidx311, i32 0, i32 3
  %201 = load i32, i32* %promoted312, align 4
  store i32 %201, i32* %promoted, align 4
  %202 = load i32, i32* %i, align 4
  %idxprom313 = sext i32 %202 to i64
  %203 = load %struct.move_s*, %struct.move_s** %moves.addr, align 8
  %arrayidx314 = getelementptr inbounds %struct.move_s, %struct.move_s* %203, i64 %idxprom313
  %captured315 = getelementptr inbounds %struct.move_s, %struct.move_s* %arrayidx314, i32 0, i32 2
  %204 = load i32, i32* %captured315, align 4
  store i32 %204, i32* %captured, align 4
  %205 = load i32, i32* %best.addr, align 4
  %cmp316 = icmp ne i32 %205, -1
  br i1 %cmp316, label %land.lhs.true.317, label %if.else.355

land.lhs.true.317:                                ; preds = %for.body.303
  %206 = load i32, i32* %i, align 4
  %207 = load i32, i32* %best.addr, align 4
  %cmp318 = icmp eq i32 %206, %207
  br i1 %cmp318, label %if.then.319, label %if.else.355

if.then.319:                                      ; preds = %land.lhs.true.317
  %208 = load i32, i32* %i, align 4
  %idxprom320 = sext i32 %208 to i64
  %209 = load i32*, i32** %move_ordering.addr, align 8
  %arrayidx321 = getelementptr inbounds i32, i32* %209, i64 %idxprom320
  store i32 100000000, i32* %arrayidx321, align 4
  %210 = load i32, i32* %captured, align 4
  %cmp322 = icmp ne i32 %210, 13
  br i1 %cmp322, label %if.then.323, label %if.end.354

if.then.323:                                      ; preds = %if.then.319
  %211 = load i32, i32* %captured, align 4
  %idxprom324 = sext i32 %211 to i64
  %arrayidx325 = getelementptr inbounds [14 x i32], [14 x i32]* @material, i32 0, i64 %idxprom324
  %212 = load i32, i32* %arrayidx325, align 4
  %call326 = call i32 @abs(i32 %212) #4
  %add327 = add nsw i32 %call326, 15
  %213 = load i32, i32* %from, align 4
  %idxprom328 = sext i32 %213 to i64
  %arrayidx329 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom328
  %214 = load i32, i32* %arrayidx329, align 4
  %idxprom330 = sext i32 %214 to i64
  %arrayidx331 = getelementptr inbounds [14 x i32], [14 x i32]* @material, i32 0, i64 %idxprom330
  %215 = load i32, i32* %arrayidx331, align 4
  %call332 = call i32 @abs(i32 %215) #4
  %cmp333 = icmp sge i32 %add327, %call332
  br i1 %cmp333, label %if.then.334, label %if.else.347

if.then.334:                                      ; preds = %if.then.323
  %216 = load i32, i32* %captured, align 4
  %idxprom335 = sext i32 %216 to i64
  %arrayidx336 = getelementptr inbounds [14 x i32], [14 x i32]* @material, i32 0, i64 %idxprom335
  %217 = load i32, i32* %arrayidx336, align 4
  %call337 = call i32 @abs(i32 %217) #4
  %218 = load i32, i32* %from, align 4
  %idxprom338 = sext i32 %218 to i64
  %arrayidx339 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom338
  %219 = load i32, i32* %arrayidx339, align 4
  %idxprom340 = sext i32 %219 to i64
  %arrayidx341 = getelementptr inbounds [14 x i32], [14 x i32]* @material, i32 0, i64 %idxprom340
  %220 = load i32, i32* %arrayidx341, align 4
  %call342 = call i32 @abs(i32 %220) #4
  %shr343 = ashr i32 %call342, 4
  %sub344 = sub nsw i32 %call337, %shr343
  %221 = load i32, i32* %i, align 4
  %idxprom345 = sext i32 %221 to i64
  %222 = load i32*, i32** %see_values.addr, align 8
  %arrayidx346 = getelementptr inbounds i32, i32* %222, i64 %idxprom345
  store i32 %sub344, i32* %arrayidx346, align 4
  br label %if.end.353

if.else.347:                                      ; preds = %if.then.323
  %223 = load i32, i32* @white_to_move, align 4
  %tobool348 = icmp ne i32 %223, 0
  %cond349 = select i1 %tobool348, i32 0, i32 1
  %224 = load i32, i32* %target, align 4
  %225 = load i32, i32* %from, align 4
  %call350 = call i32 @see(i32 %cond349, i32 %224, i32 %225)
  store i32 %call350, i32* %seev, align 4
  %226 = load i32, i32* %seev, align 4
  %227 = load i32, i32* %i, align 4
  %idxprom351 = sext i32 %227 to i64
  %228 = load i32*, i32** %see_values.addr, align 8
  %arrayidx352 = getelementptr inbounds i32, i32* %228, i64 %idxprom351
  store i32 %226, i32* %arrayidx352, align 4
  br label %if.end.353

if.end.353:                                       ; preds = %if.else.347, %if.then.334
  br label %if.end.354

if.end.354:                                       ; preds = %if.end.353, %if.then.319
  br label %if.end.473

if.else.355:                                      ; preds = %land.lhs.true.317, %for.body.303
  %229 = load i32, i32* %best.addr, align 4
  %cmp356 = icmp eq i32 %229, -2
  br i1 %cmp356, label %if.then.357, label %if.else.421

if.then.357:                                      ; preds = %if.else.355
  %230 = load i32, i32* %from, align 4
  %231 = load i32, i32* @ply, align 4
  %add358 = add nsw i32 %231, 1
  %idxprom359 = sext i32 %add358 to i64
  %232 = load i32, i32* @ply, align 4
  %add360 = add nsw i32 %232, 1
  %idxprom361 = sext i32 %add360 to i64
  %arrayidx362 = getelementptr inbounds [300 x [300 x %struct.move_s]], [300 x [300 x %struct.move_s]]* @pv, i32 0, i64 %idxprom361
  %arrayidx363 = getelementptr inbounds [300 x %struct.move_s], [300 x %struct.move_s]* %arrayidx362, i32 0, i64 %idxprom359
  %from364 = getelementptr inbounds %struct.move_s, %struct.move_s* %arrayidx363, i32 0, i32 0
  %233 = load i32, i32* %from364, align 4
  %cmp365 = icmp eq i32 %230, %233
  br i1 %cmp365, label %land.lhs.true.366, label %if.end.420

land.lhs.true.366:                                ; preds = %if.then.357
  %234 = load i32, i32* %target, align 4
  %235 = load i32, i32* @ply, align 4
  %add367 = add nsw i32 %235, 1
  %idxprom368 = sext i32 %add367 to i64
  %236 = load i32, i32* @ply, align 4
  %add369 = add nsw i32 %236, 1
  %idxprom370 = sext i32 %add369 to i64
  %arrayidx371 = getelementptr inbounds [300 x [300 x %struct.move_s]], [300 x [300 x %struct.move_s]]* @pv, i32 0, i64 %idxprom370
  %arrayidx372 = getelementptr inbounds [300 x %struct.move_s], [300 x %struct.move_s]* %arrayidx371, i32 0, i64 %idxprom368
  %target373 = getelementptr inbounds %struct.move_s, %struct.move_s* %arrayidx372, i32 0, i32 1
  %237 = load i32, i32* %target373, align 4
  %cmp374 = icmp eq i32 %234, %237
  br i1 %cmp374, label %land.lhs.true.375, label %if.end.420

land.lhs.true.375:                                ; preds = %land.lhs.true.366
  %238 = load i32, i32* %promoted, align 4
  %239 = load i32, i32* @ply, align 4
  %add376 = add nsw i32 %239, 1
  %idxprom377 = sext i32 %add376 to i64
  %240 = load i32, i32* @ply, align 4
  %add378 = add nsw i32 %240, 1
  %idxprom379 = sext i32 %add378 to i64
  %arrayidx380 = getelementptr inbounds [300 x [300 x %struct.move_s]], [300 x [300 x %struct.move_s]]* @pv, i32 0, i64 %idxprom379
  %arrayidx381 = getelementptr inbounds [300 x %struct.move_s], [300 x %struct.move_s]* %arrayidx380, i32 0, i64 %idxprom377
  %promoted382 = getelementptr inbounds %struct.move_s, %struct.move_s* %arrayidx381, i32 0, i32 3
  %241 = load i32, i32* %promoted382, align 4
  %cmp383 = icmp eq i32 %238, %241
  br i1 %cmp383, label %if.then.384, label %if.end.420

if.then.384:                                      ; preds = %land.lhs.true.375
  %242 = load i32, i32* %i, align 4
  %idxprom385 = sext i32 %242 to i64
  %243 = load i32*, i32** %move_ordering.addr, align 8
  %arrayidx386 = getelementptr inbounds i32, i32* %243, i64 %idxprom385
  store i32 100000000, i32* %arrayidx386, align 4
  %244 = load i32, i32* %captured, align 4
  %cmp387 = icmp ne i32 %244, 13
  br i1 %cmp387, label %if.then.388, label %if.end.419

if.then.388:                                      ; preds = %if.then.384
  %245 = load i32, i32* %captured, align 4
  %idxprom389 = sext i32 %245 to i64
  %arrayidx390 = getelementptr inbounds [14 x i32], [14 x i32]* @material, i32 0, i64 %idxprom389
  %246 = load i32, i32* %arrayidx390, align 4
  %call391 = call i32 @abs(i32 %246) #4
  %add392 = add nsw i32 %call391, 15
  %247 = load i32, i32* %from, align 4
  %idxprom393 = sext i32 %247 to i64
  %arrayidx394 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom393
  %248 = load i32, i32* %arrayidx394, align 4
  %idxprom395 = sext i32 %248 to i64
  %arrayidx396 = getelementptr inbounds [14 x i32], [14 x i32]* @material, i32 0, i64 %idxprom395
  %249 = load i32, i32* %arrayidx396, align 4
  %call397 = call i32 @abs(i32 %249) #4
  %cmp398 = icmp sge i32 %add392, %call397
  br i1 %cmp398, label %if.then.399, label %if.else.412

if.then.399:                                      ; preds = %if.then.388
  %250 = load i32, i32* %captured, align 4
  %idxprom400 = sext i32 %250 to i64
  %arrayidx401 = getelementptr inbounds [14 x i32], [14 x i32]* @material, i32 0, i64 %idxprom400
  %251 = load i32, i32* %arrayidx401, align 4
  %call402 = call i32 @abs(i32 %251) #4
  %252 = load i32, i32* %from, align 4
  %idxprom403 = sext i32 %252 to i64
  %arrayidx404 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom403
  %253 = load i32, i32* %arrayidx404, align 4
  %idxprom405 = sext i32 %253 to i64
  %arrayidx406 = getelementptr inbounds [14 x i32], [14 x i32]* @material, i32 0, i64 %idxprom405
  %254 = load i32, i32* %arrayidx406, align 4
  %call407 = call i32 @abs(i32 %254) #4
  %shr408 = ashr i32 %call407, 4
  %sub409 = sub nsw i32 %call402, %shr408
  %255 = load i32, i32* %i, align 4
  %idxprom410 = sext i32 %255 to i64
  %256 = load i32*, i32** %see_values.addr, align 8
  %arrayidx411 = getelementptr inbounds i32, i32* %256, i64 %idxprom410
  store i32 %sub409, i32* %arrayidx411, align 4
  br label %if.end.418

if.else.412:                                      ; preds = %if.then.388
  %257 = load i32, i32* @white_to_move, align 4
  %tobool413 = icmp ne i32 %257, 0
  %cond414 = select i1 %tobool413, i32 0, i32 1
  %258 = load i32, i32* %target, align 4
  %259 = load i32, i32* %from, align 4
  %call415 = call i32 @see(i32 %cond414, i32 %258, i32 %259)
  store i32 %call415, i32* %seev, align 4
  %260 = load i32, i32* %seev, align 4
  %261 = load i32, i32* %i, align 4
  %idxprom416 = sext i32 %261 to i64
  %262 = load i32*, i32** %see_values.addr, align 8
  %arrayidx417 = getelementptr inbounds i32, i32* %262, i64 %idxprom416
  store i32 %260, i32* %arrayidx417, align 4
  br label %if.end.418

if.end.418:                                       ; preds = %if.else.412, %if.then.399
  br label %if.end.419

if.end.419:                                       ; preds = %if.end.418, %if.then.384
  br label %if.end.420

if.end.420:                                       ; preds = %if.end.419, %land.lhs.true.375, %land.lhs.true.366, %if.then.357
  br label %if.end.472

if.else.421:                                      ; preds = %if.else.355
  %263 = load i32, i32* %captured, align 4
  %cmp422 = icmp ne i32 %263, 13
  br i1 %cmp422, label %if.then.423, label %if.else.468

if.then.423:                                      ; preds = %if.else.421
  %264 = load i32, i32* %captured, align 4
  %idxprom424 = sext i32 %264 to i64
  %arrayidx425 = getelementptr inbounds [14 x i32], [14 x i32]* @material, i32 0, i64 %idxprom424
  %265 = load i32, i32* %arrayidx425, align 4
  %call426 = call i32 @abs(i32 %265) #4
  %add427 = add nsw i32 %call426, 15
  %266 = load i32, i32* %from, align 4
  %idxprom428 = sext i32 %266 to i64
  %arrayidx429 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom428
  %267 = load i32, i32* %arrayidx429, align 4
  %idxprom430 = sext i32 %267 to i64
  %arrayidx431 = getelementptr inbounds [14 x i32], [14 x i32]* @material, i32 0, i64 %idxprom430
  %268 = load i32, i32* %arrayidx431, align 4
  %call432 = call i32 @abs(i32 %268) #4
  %cmp433 = icmp sge i32 %add427, %call432
  br i1 %cmp433, label %if.then.434, label %if.else.452

if.then.434:                                      ; preds = %if.then.423
  %269 = load i32, i32* %captured, align 4
  %idxprom435 = sext i32 %269 to i64
  %arrayidx436 = getelementptr inbounds [14 x i32], [14 x i32]* @material, i32 0, i64 %idxprom435
  %270 = load i32, i32* %arrayidx436, align 4
  %call437 = call i32 @abs(i32 %270) #4
  %271 = load i32, i32* %from, align 4
  %idxprom438 = sext i32 %271 to i64
  %arrayidx439 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom438
  %272 = load i32, i32* %arrayidx439, align 4
  %idxprom440 = sext i32 %272 to i64
  %arrayidx441 = getelementptr inbounds [14 x i32], [14 x i32]* @material, i32 0, i64 %idxprom440
  %273 = load i32, i32* %arrayidx441, align 4
  %call442 = call i32 @abs(i32 %273) #4
  %shr443 = ashr i32 %call442, 4
  %sub444 = sub nsw i32 %call437, %shr443
  %274 = load i32, i32* %i, align 4
  %idxprom445 = sext i32 %274 to i64
  %275 = load i32*, i32** %see_values.addr, align 8
  %arrayidx446 = getelementptr inbounds i32, i32* %275, i64 %idxprom445
  store i32 %sub444, i32* %arrayidx446, align 4
  %276 = load i32, i32* %i, align 4
  %idxprom447 = sext i32 %276 to i64
  %277 = load i32*, i32** %see_values.addr, align 8
  %arrayidx448 = getelementptr inbounds i32, i32* %277, i64 %idxprom447
  %278 = load i32, i32* %arrayidx448, align 4
  %add449 = add nsw i32 50000000, %278
  %279 = load i32, i32* %i, align 4
  %idxprom450 = sext i32 %279 to i64
  %280 = load i32*, i32** %move_ordering.addr, align 8
  %arrayidx451 = getelementptr inbounds i32, i32* %280, i64 %idxprom450
  store i32 %add449, i32* %arrayidx451, align 4
  br label %if.end.467

if.else.452:                                      ; preds = %if.then.423
  %281 = load i32, i32* @white_to_move, align 4
  %tobool453 = icmp ne i32 %281, 0
  %cond454 = select i1 %tobool453, i32 0, i32 1
  %282 = load i32, i32* %target, align 4
  %283 = load i32, i32* %from, align 4
  %call455 = call i32 @see(i32 %cond454, i32 %282, i32 %283)
  store i32 %call455, i32* %seev, align 4
  %284 = load i32, i32* %seev, align 4
  %cmp456 = icmp sge i32 %284, -50
  br i1 %cmp456, label %if.then.457, label %if.else.461

if.then.457:                                      ; preds = %if.else.452
  %285 = load i32, i32* %seev, align 4
  %add458 = add nsw i32 50000000, %285
  %286 = load i32, i32* %i, align 4
  %idxprom459 = sext i32 %286 to i64
  %287 = load i32*, i32** %move_ordering.addr, align 8
  %arrayidx460 = getelementptr inbounds i32, i32* %287, i64 %idxprom459
  store i32 %add458, i32* %arrayidx460, align 4
  br label %if.end.464

if.else.461:                                      ; preds = %if.else.452
  %288 = load i32, i32* %seev, align 4
  %289 = load i32, i32* %i, align 4
  %idxprom462 = sext i32 %289 to i64
  %290 = load i32*, i32** %move_ordering.addr, align 8
  %arrayidx463 = getelementptr inbounds i32, i32* %290, i64 %idxprom462
  store i32 %288, i32* %arrayidx463, align 4
  br label %if.end.464

if.end.464:                                       ; preds = %if.else.461, %if.then.457
  %291 = load i32, i32* %seev, align 4
  %292 = load i32, i32* %i, align 4
  %idxprom465 = sext i32 %292 to i64
  %293 = load i32*, i32** %see_values.addr, align 8
  %arrayidx466 = getelementptr inbounds i32, i32* %293, i64 %idxprom465
  store i32 %291, i32* %arrayidx466, align 4
  br label %if.end.467

if.end.467:                                       ; preds = %if.end.464, %if.then.434
  br label %if.end.471

if.else.468:                                      ; preds = %if.else.421
  %294 = load i32, i32* %i, align 4
  %idxprom469 = sext i32 %294 to i64
  %295 = load i32*, i32** %move_ordering.addr, align 8
  %arrayidx470 = getelementptr inbounds i32, i32* %295, i64 %idxprom469
  store i32 0, i32* %arrayidx470, align 4
  br label %if.end.471

if.end.471:                                       ; preds = %if.else.468, %if.end.467
  br label %if.end.472

if.end.472:                                       ; preds = %if.end.471, %if.end.420
  br label %if.end.473

if.end.473:                                       ; preds = %if.end.472, %if.end.354
  %296 = load i32, i32* %target, align 4
  %idxprom474 = sext i32 %296 to i64
  %297 = load i32, i32* %from, align 4
  %idxprom475 = sext i32 %297 to i64
  %arrayidx476 = getelementptr inbounds [144 x [144 x i32]], [144 x [144 x i32]]* @history_h, i32 0, i64 %idxprom475
  %arrayidx477 = getelementptr inbounds [144 x i32], [144 x i32]* %arrayidx476, i32 0, i64 %idxprom474
  %298 = load i32, i32* %arrayidx477, align 4
  %299 = load i32, i32* %i, align 4
  %idxprom478 = sext i32 %299 to i64
  %300 = load i32*, i32** %move_ordering.addr, align 8
  %arrayidx479 = getelementptr inbounds i32, i32* %300, i64 %idxprom478
  %301 = load i32, i32* %arrayidx479, align 4
  %add480 = add i32 %301, %298
  store i32 %add480, i32* %arrayidx479, align 4
  %302 = load i32, i32* %from, align 4
  %303 = load i32, i32* @ply, align 4
  %idxprom481 = sext i32 %303 to i64
  %arrayidx482 = getelementptr inbounds [300 x %struct.move_s], [300 x %struct.move_s]* @killer1, i32 0, i64 %idxprom481
  %from483 = getelementptr inbounds %struct.move_s, %struct.move_s* %arrayidx482, i32 0, i32 0
  %304 = load i32, i32* %from483, align 4
  %cmp484 = icmp eq i32 %302, %304
  br i1 %cmp484, label %land.lhs.true.485, label %if.else.499

land.lhs.true.485:                                ; preds = %if.end.473
  %305 = load i32, i32* %target, align 4
  %306 = load i32, i32* @ply, align 4
  %idxprom486 = sext i32 %306 to i64
  %arrayidx487 = getelementptr inbounds [300 x %struct.move_s], [300 x %struct.move_s]* @killer1, i32 0, i64 %idxprom486
  %target488 = getelementptr inbounds %struct.move_s, %struct.move_s* %arrayidx487, i32 0, i32 1
  %307 = load i32, i32* %target488, align 4
  %cmp489 = icmp eq i32 %305, %307
  br i1 %cmp489, label %land.lhs.true.490, label %if.else.499

land.lhs.true.490:                                ; preds = %land.lhs.true.485
  %308 = load i32, i32* %promoted, align 4
  %309 = load i32, i32* @ply, align 4
  %idxprom491 = sext i32 %309 to i64
  %arrayidx492 = getelementptr inbounds [300 x %struct.move_s], [300 x %struct.move_s]* @killer1, i32 0, i64 %idxprom491
  %promoted493 = getelementptr inbounds %struct.move_s, %struct.move_s* %arrayidx492, i32 0, i32 3
  %310 = load i32, i32* %promoted493, align 4
  %cmp494 = icmp eq i32 %308, %310
  br i1 %cmp494, label %if.then.495, label %if.else.499

if.then.495:                                      ; preds = %land.lhs.true.490
  %311 = load i32, i32* %i, align 4
  %idxprom496 = sext i32 %311 to i64
  %312 = load i32*, i32** %move_ordering.addr, align 8
  %arrayidx497 = getelementptr inbounds i32, i32* %312, i64 %idxprom496
  %313 = load i32, i32* %arrayidx497, align 4
  %add498 = add nsw i32 %313, 25000000
  store i32 %add498, i32* %arrayidx497, align 4
  br label %if.end.539

if.else.499:                                      ; preds = %land.lhs.true.490, %land.lhs.true.485, %if.end.473
  %314 = load i32, i32* %from, align 4
  %315 = load i32, i32* @ply, align 4
  %idxprom500 = sext i32 %315 to i64
  %arrayidx501 = getelementptr inbounds [300 x %struct.move_s], [300 x %struct.move_s]* @killer2, i32 0, i64 %idxprom500
  %from502 = getelementptr inbounds %struct.move_s, %struct.move_s* %arrayidx501, i32 0, i32 0
  %316 = load i32, i32* %from502, align 4
  %cmp503 = icmp eq i32 %314, %316
  br i1 %cmp503, label %land.lhs.true.504, label %if.else.518

land.lhs.true.504:                                ; preds = %if.else.499
  %317 = load i32, i32* %target, align 4
  %318 = load i32, i32* @ply, align 4
  %idxprom505 = sext i32 %318 to i64
  %arrayidx506 = getelementptr inbounds [300 x %struct.move_s], [300 x %struct.move_s]* @killer2, i32 0, i64 %idxprom505
  %target507 = getelementptr inbounds %struct.move_s, %struct.move_s* %arrayidx506, i32 0, i32 1
  %319 = load i32, i32* %target507, align 4
  %cmp508 = icmp eq i32 %317, %319
  br i1 %cmp508, label %land.lhs.true.509, label %if.else.518

land.lhs.true.509:                                ; preds = %land.lhs.true.504
  %320 = load i32, i32* %promoted, align 4
  %321 = load i32, i32* @ply, align 4
  %idxprom510 = sext i32 %321 to i64
  %arrayidx511 = getelementptr inbounds [300 x %struct.move_s], [300 x %struct.move_s]* @killer2, i32 0, i64 %idxprom510
  %promoted512 = getelementptr inbounds %struct.move_s, %struct.move_s* %arrayidx511, i32 0, i32 3
  %322 = load i32, i32* %promoted512, align 4
  %cmp513 = icmp eq i32 %320, %322
  br i1 %cmp513, label %if.then.514, label %if.else.518

if.then.514:                                      ; preds = %land.lhs.true.509
  %323 = load i32, i32* %i, align 4
  %idxprom515 = sext i32 %323 to i64
  %324 = load i32*, i32** %move_ordering.addr, align 8
  %arrayidx516 = getelementptr inbounds i32, i32* %324, i64 %idxprom515
  %325 = load i32, i32* %arrayidx516, align 4
  %add517 = add nsw i32 %325, 20000000
  store i32 %add517, i32* %arrayidx516, align 4
  br label %if.end.538

if.else.518:                                      ; preds = %land.lhs.true.509, %land.lhs.true.504, %if.else.499
  %326 = load i32, i32* %from, align 4
  %327 = load i32, i32* @ply, align 4
  %idxprom519 = sext i32 %327 to i64
  %arrayidx520 = getelementptr inbounds [300 x %struct.move_s], [300 x %struct.move_s]* @killer3, i32 0, i64 %idxprom519
  %from521 = getelementptr inbounds %struct.move_s, %struct.move_s* %arrayidx520, i32 0, i32 0
  %328 = load i32, i32* %from521, align 4
  %cmp522 = icmp eq i32 %326, %328
  br i1 %cmp522, label %land.lhs.true.523, label %if.end.537

land.lhs.true.523:                                ; preds = %if.else.518
  %329 = load i32, i32* %target, align 4
  %330 = load i32, i32* @ply, align 4
  %idxprom524 = sext i32 %330 to i64
  %arrayidx525 = getelementptr inbounds [300 x %struct.move_s], [300 x %struct.move_s]* @killer3, i32 0, i64 %idxprom524
  %target526 = getelementptr inbounds %struct.move_s, %struct.move_s* %arrayidx525, i32 0, i32 1
  %331 = load i32, i32* %target526, align 4
  %cmp527 = icmp eq i32 %329, %331
  br i1 %cmp527, label %land.lhs.true.528, label %if.end.537

land.lhs.true.528:                                ; preds = %land.lhs.true.523
  %332 = load i32, i32* %promoted, align 4
  %333 = load i32, i32* @ply, align 4
  %idxprom529 = sext i32 %333 to i64
  %arrayidx530 = getelementptr inbounds [300 x %struct.move_s], [300 x %struct.move_s]* @killer3, i32 0, i64 %idxprom529
  %promoted531 = getelementptr inbounds %struct.move_s, %struct.move_s* %arrayidx530, i32 0, i32 3
  %334 = load i32, i32* %promoted531, align 4
  %cmp532 = icmp eq i32 %332, %334
  br i1 %cmp532, label %if.then.533, label %if.end.537

if.then.533:                                      ; preds = %land.lhs.true.528
  %335 = load i32, i32* %i, align 4
  %idxprom534 = sext i32 %335 to i64
  %336 = load i32*, i32** %move_ordering.addr, align 8
  %arrayidx535 = getelementptr inbounds i32, i32* %336, i64 %idxprom534
  %337 = load i32, i32* %arrayidx535, align 4
  %add536 = add nsw i32 %337, 15000000
  store i32 %add536, i32* %arrayidx535, align 4
  br label %if.end.537

if.end.537:                                       ; preds = %if.then.533, %land.lhs.true.528, %land.lhs.true.523, %if.else.518
  br label %if.end.538

if.end.538:                                       ; preds = %if.end.537, %if.then.514
  br label %if.end.539

if.end.539:                                       ; preds = %if.end.538, %if.then.495
  br label %for.inc.540

for.inc.540:                                      ; preds = %if.end.539
  %338 = load i32, i32* %i, align 4
  %inc541 = add nsw i32 %338, 1
  store i32 %inc541, i32* %i, align 4
  br label %for.cond.301

for.end.542:                                      ; preds = %for.cond.301
  br label %if.end.543

if.end.543:                                       ; preds = %for.end.542, %for.end
  ret void
}

; Function Attrs: nounwind readnone
declare i32 @abs(i32) #1

declare i32 @see(i32, i32, i32) #2

; Function Attrs: nounwind uwtable
define void @perft(i32 %depth) #0 {
entry:
  %depth.addr = alloca i32, align 4
  %moves = alloca [512 x %struct.move_s], align 16
  %num_moves = alloca i32, align 4
  %i = alloca i32, align 4
  %ic = alloca i32, align 4
  store i32 %depth, i32* %depth.addr, align 4
  store i32 0, i32* %num_moves, align 4
  %0 = load i32, i32* %depth.addr, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %1 = load i32, i32* @raw_nodes, align 4
  %inc = add nsw i32 %1, 1
  store i32 %inc, i32* @raw_nodes, align 4
  br label %for.end

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %moves, i32 0, i64 0
  call void @gen(%struct.move_s* %arrayidx)
  %2 = load i32, i32* @numb_moves, align 4
  store i32 %2, i32* %num_moves, align 4
  %call = call i32 @in_check()
  store i32 %call, i32* %ic, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %3 = load i32, i32* %i, align 4
  %4 = load i32, i32* %num_moves, align 4
  %cmp = icmp slt i32 %3, %4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %arrayidx1 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %moves, i32 0, i64 0
  %5 = load i32, i32* %i, align 4
  call void @make(%struct.move_s* %arrayidx1, i32 %5)
  %arrayidx2 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %moves, i32 0, i64 0
  %6 = load i32, i32* %i, align 4
  %7 = load i32, i32* %ic, align 4
  %call3 = call i32 @check_legal(%struct.move_s* %arrayidx2, i32 %6, i32 %7)
  %tobool4 = icmp ne i32 %call3, 0
  br i1 %tobool4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %for.body
  %8 = load i32, i32* %depth.addr, align 4
  %sub = sub nsw i32 %8, 1
  call void @perft(i32 %sub)
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.5, %for.body
  %arrayidx7 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %moves, i32 0, i64 0
  %9 = load i32, i32* %i, align 4
  call void @unmake(%struct.move_s* %arrayidx7, i32 %9)
  br label %for.inc

for.inc:                                          ; preds = %if.end.6
  %10 = load i32, i32* %i, align 4
  %inc8 = add nsw i32 %10, 1
  store i32 %inc8, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then, %for.cond
  ret void
}

declare void @gen(%struct.move_s*) #2

declare i32 @in_check() #2

declare void @make(%struct.move_s*, i32) #2

declare i32 @check_legal(%struct.move_s*, i32, i32) #2

declare void @unmake(%struct.move_s*, i32) #2

; Function Attrs: nounwind uwtable
define i32 @qsearch(i32 %alpha, i32 %beta, i32 %depth) #0 {
entry:
  %retval = alloca i32, align 4
  %alpha.addr = alloca i32, align 4
  %beta.addr = alloca i32, align 4
  %depth.addr = alloca i32, align 4
  %moves = alloca [512 x %struct.move_s], align 16
  %num_moves = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %score = alloca i32, align 4
  %standpat = alloca i32, align 4
  %move_ordering = alloca [512 x i32], align 16
  %see_values = alloca [512 x i32], align 16
  %legal_move = alloca i32, align 4
  %no_moves = alloca i32, align 4
  %sbest = alloca i32, align 4
  %best_score = alloca i32, align 4
  %best = alloca i32, align 4
  %delta = alloca i32, align 4
  %bound = alloca i32, align 4
  %originalalpha = alloca i32, align 4
  %oldtime = alloca i32, align 4
  %seev = alloca i32, align 4
  store i32 %alpha, i32* %alpha.addr, align 4
  store i32 %beta, i32* %beta.addr, align 4
  store i32 %depth, i32* %depth.addr, align 4
  store i32 -1000000, i32* %score, align 4
  store i32 1, i32* %no_moves, align 4
  %0 = load i32, i32* @ply, align 4
  %1 = load i32, i32* @ply, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [300 x i32], [300 x i32]* @pv_length, i32 0, i64 %idxprom
  store i32 %0, i32* %arrayidx, align 4
  %2 = load i32, i32* @nodes, align 4
  %and = and i32 %2, 65535
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.end.26, label %if.then

if.then:                                          ; preds = %entry
  %call = call i32 @interrupt()
  %tobool1 = icmp ne i32 %call, 0
  br i1 %tobool1, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %if.then
  store i32 1, i32* @time_exit, align 4
  store i32 0, i32* %retval
  br label %return

if.else:                                          ; preds = %if.then
  %call3 = call i64 @rtime()
  %3 = load i64, i64* @start_time, align 8
  %call4 = call i32 @rdifftime(i64 %call3, i64 %3)
  %4 = load i32, i32* @time_for_move, align 4
  %cmp = icmp sge i32 %call4, %4
  br i1 %cmp, label %land.lhs.true, label %if.end.24

land.lhs.true:                                    ; preds = %if.else
  %5 = load i32, i32* @i_depth, align 4
  %cmp5 = icmp sgt i32 %5, 1
  br i1 %cmp5, label %if.then.6, label %if.end.24

if.then.6:                                        ; preds = %land.lhs.true
  %6 = load i32, i32* @failed, align 4
  %cmp7 = icmp eq i32 %6, 1
  br i1 %cmp7, label %land.lhs.true.8, label %if.else.23

land.lhs.true.8:                                  ; preds = %if.then.6
  %7 = load i32, i32* @extendedtime, align 4
  %tobool9 = icmp ne i32 %7, 0
  br i1 %tobool9, label %if.else.23, label %land.lhs.true.10

land.lhs.true.10:                                 ; preds = %land.lhs.true.8
  %8 = load i32, i32* @fixed_time, align 4
  %tobool11 = icmp ne i32 %8, 0
  br i1 %tobool11, label %if.else.23, label %land.lhs.true.12

land.lhs.true.12:                                 ; preds = %land.lhs.true.10
  %9 = load i32, i32* @go_fast, align 4
  %tobool13 = icmp ne i32 %9, 0
  br i1 %tobool13, label %if.else.23, label %land.lhs.true.14

land.lhs.true.14:                                 ; preds = %land.lhs.true.12
  %10 = load i32, i32* @Variant, align 4
  %cmp15 = icmp ne i32 %10, 1
  br i1 %cmp15, label %land.lhs.true.16, label %if.else.23

land.lhs.true.16:                                 ; preds = %land.lhs.true.14
  %11 = load i32, i32* @time_left, align 4
  %12 = load i32, i32* @time_for_move, align 4
  %mul = mul nsw i32 %12, 4
  %cmp17 = icmp sgt i32 %mul, 1000
  br i1 %cmp17, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true.16
  %13 = load i32, i32* @time_for_move, align 4
  %mul18 = mul nsw i32 %13, 4
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true.16
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %mul18, %cond.true ], [ 1000, %cond.false ]
  %cmp19 = icmp sgt i32 %11, %cond
  br i1 %cmp19, label %if.then.20, label %if.else.23

if.then.20:                                       ; preds = %cond.end
  store i32 1, i32* @extendedtime, align 4
  %14 = load i32, i32* @time_for_move, align 4
  store i32 %14, i32* %oldtime, align 4
  %call21 = call i32 @allocate_time()
  %15 = load i32, i32* @time_for_move, align 4
  %add = add nsw i32 %15, %call21
  store i32 %add, i32* @time_for_move, align 4
  %16 = load i32, i32* %oldtime, align 4
  %17 = load i32, i32* @time_for_move, align 4
  %18 = load i32, i32* @time_left, align 4
  %call22 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i32 0, i32 0), i32 %16, i32 %17, i32 %18)
  br label %if.end

if.else.23:                                       ; preds = %cond.end, %land.lhs.true.14, %land.lhs.true.12, %land.lhs.true.10, %land.lhs.true.8, %if.then.6
  store i32 1, i32* @time_exit, align 4
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then.20
  br label %if.end.24

if.end.24:                                        ; preds = %if.end, %land.lhs.true, %if.else
  br label %if.end.25

if.end.25:                                        ; preds = %if.end.24
  br label %if.end.26

if.end.26:                                        ; preds = %if.end.25, %entry
  %19 = load i32, i32* %depth.addr, align 4
  %cmp27 = icmp sle i32 %19, 0
  br i1 %cmp27, label %if.then.29, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.26
  %20 = load i32, i32* @ply, align 4
  %cmp28 = icmp sge i32 %20, 300
  br i1 %cmp28, label %if.then.29, label %if.end.31

if.then.29:                                       ; preds = %lor.lhs.false, %if.end.26
  %21 = load i32, i32* %alpha.addr, align 4
  %22 = load i32, i32* %beta.addr, align 4
  %call30 = call i32 @eval(i32 %21, i32 %22)
  store i32 %call30, i32* %score, align 4
  %23 = load i32, i32* %score, align 4
  store i32 %23, i32* %retval
  br label %return

if.end.31:                                        ; preds = %lor.lhs.false
  %24 = load i32, i32* @qnodes, align 4
  %inc = add nsw i32 %24, 1
  store i32 %inc, i32* @qnodes, align 4
  %25 = load i32, i32* @nodes, align 4
  %inc32 = add nsw i32 %25, 1
  store i32 %inc32, i32* @nodes, align 4
  %26 = load i32, i32* %alpha.addr, align 4
  store i32 %26, i32* %originalalpha, align 4
  %call33 = call i32 @QProbeTT(i32* %bound, i32* %best)
  switch i32 %call33, label %sw.epilog [
    i32 3, label %sw.bb
    i32 1, label %sw.bb.34
    i32 2, label %sw.bb.38
    i32 0, label %sw.bb.42
    i32 4, label %sw.bb.43
  ]

sw.bb:                                            ; preds = %if.end.31
  %27 = load i32, i32* %bound, align 4
  store i32 %27, i32* %retval
  br label %return

sw.bb.34:                                         ; preds = %if.end.31
  %28 = load i32, i32* %bound, align 4
  %29 = load i32, i32* %alpha.addr, align 4
  %cmp35 = icmp sle i32 %28, %29
  br i1 %cmp35, label %if.then.36, label %if.end.37

if.then.36:                                       ; preds = %sw.bb.34
  %30 = load i32, i32* %bound, align 4
  store i32 %30, i32* %retval
  br label %return

if.end.37:                                        ; preds = %sw.bb.34
  br label %sw.epilog

sw.bb.38:                                         ; preds = %if.end.31
  %31 = load i32, i32* %bound, align 4
  %32 = load i32, i32* %beta.addr, align 4
  %cmp39 = icmp sge i32 %31, %32
  br i1 %cmp39, label %if.then.40, label %if.end.41

if.then.40:                                       ; preds = %sw.bb.38
  %33 = load i32, i32* %bound, align 4
  store i32 %33, i32* %retval
  br label %return

if.end.41:                                        ; preds = %sw.bb.38
  br label %sw.epilog

sw.bb.42:                                         ; preds = %if.end.31
  br label %sw.epilog

sw.bb.43:                                         ; preds = %if.end.31
  store i32 -1, i32* %best, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end.31, %sw.bb.43, %sw.bb.42, %if.end.41, %if.end.37
  %34 = load i32, i32* %alpha.addr, align 4
  %35 = load i32, i32* %beta.addr, align 4
  %call44 = call i32 @eval(i32 %34, i32 %35)
  store i32 %call44, i32* %standpat, align 4
  %36 = load i32, i32* %standpat, align 4
  %37 = load i32, i32* %beta.addr, align 4
  %cmp45 = icmp sge i32 %36, %37
  br i1 %cmp45, label %if.then.46, label %if.else.47

if.then.46:                                       ; preds = %sw.epilog
  %38 = load i32, i32* %standpat, align 4
  %39 = load i32, i32* %originalalpha, align 4
  %40 = load i32, i32* %beta.addr, align 4
  call void @QStoreTT(i32 %38, i32 %39, i32 %40, i32 500)
  %41 = load i32, i32* %standpat, align 4
  store i32 %41, i32* %retval
  br label %return

if.else.47:                                       ; preds = %sw.epilog
  %42 = load i32, i32* %standpat, align 4
  %43 = load i32, i32* %alpha.addr, align 4
  %cmp48 = icmp sgt i32 %42, %43
  br i1 %cmp48, label %if.then.49, label %if.end.50

if.then.49:                                       ; preds = %if.else.47
  %44 = load i32, i32* %standpat, align 4
  store i32 %44, i32* %alpha.addr, align 4
  br label %if.end.50

if.end.50:                                        ; preds = %if.then.49, %if.else.47
  br label %if.end.51

if.end.51:                                        ; preds = %if.end.50
  store i32 -1, i32* %sbest, align 4
  store i32 -1000000, i32* %best_score, align 4
  store i32 0, i32* %num_moves, align 4
  %arrayidx52 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %moves, i32 0, i64 0
  call void @gen(%struct.move_s* %arrayidx52)
  %45 = load i32, i32* @numb_moves, align 4
  store i32 %45, i32* %num_moves, align 4
  %46 = load i32, i32* @kingcap, align 4
  %tobool53 = icmp ne i32 %46, 0
  br i1 %tobool53, label %if.then.54, label %if.end.55

if.then.54:                                       ; preds = %if.end.51
  store i32 50000, i32* %retval
  br label %return

if.end.55:                                        ; preds = %if.end.51
  %47 = load i32, i32* %alpha.addr, align 4
  %sub = sub nsw i32 %47, 150
  %48 = load i32, i32* %standpat, align 4
  %sub56 = sub nsw i32 %sub, %48
  store i32 %sub56, i32* %delta, align 4
  %arrayidx57 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %moves, i32 0, i64 0
  %arrayidx58 = getelementptr inbounds [512 x i32], [512 x i32]* %move_ordering, i32 0, i64 0
  %arrayidx59 = getelementptr inbounds [512 x i32], [512 x i32]* %see_values, i32 0, i64 0
  %49 = load i32, i32* %num_moves, align 4
  %50 = load i32, i32* %best, align 4
  call void @order_moves(%struct.move_s* %arrayidx57, i32* %arrayidx58, i32* %arrayidx59, i32 %49, i32 %50)
  br label %while.cond

while.cond:                                       ; preds = %if.end.123, %if.then.72, %if.end.55
  %arrayidx60 = getelementptr inbounds [512 x i32], [512 x i32]* %move_ordering, i32 0, i64 0
  %51 = load i32, i32* %num_moves, align 4
  %call61 = call i32 @remove_one(i32* %i, i32* %arrayidx60, i32 %51)
  %tobool62 = icmp ne i32 %call61, 0
  br i1 %tobool62, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  store i32 0, i32* %legal_move, align 4
  %52 = load i32, i32* %i, align 4
  %idxprom63 = sext i32 %52 to i64
  %arrayidx64 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %moves, i32 0, i64 %idxprom63
  %promoted = getelementptr inbounds %struct.move_s, %struct.move_s* %arrayidx64, i32 0, i32 3
  %53 = load i32, i32* %promoted, align 4
  %tobool65 = icmp ne i32 %53, 0
  br i1 %tobool65, label %if.end.74, label %if.then.66

if.then.66:                                       ; preds = %while.body
  %54 = load i32, i32* %i, align 4
  %idxprom67 = sext i32 %54 to i64
  %arrayidx68 = getelementptr inbounds [512 x i32], [512 x i32]* %see_values, i32 0, i64 %idxprom67
  %55 = load i32, i32* %arrayidx68, align 4
  store i32 %55, i32* %seev, align 4
  %56 = load i32, i32* %seev, align 4
  %57 = load i32, i32* %delta, align 4
  %cmp69 = icmp slt i32 %56, %57
  br i1 %cmp69, label %if.then.72, label %lor.lhs.false.70

lor.lhs.false.70:                                 ; preds = %if.then.66
  %58 = load i32, i32* %seev, align 4
  %cmp71 = icmp slt i32 %58, 0
  br i1 %cmp71, label %if.then.72, label %if.end.73

if.then.72:                                       ; preds = %lor.lhs.false.70, %if.then.66
  br label %while.cond

if.end.73:                                        ; preds = %lor.lhs.false.70
  br label %if.end.74

if.end.74:                                        ; preds = %if.end.73, %while.body
  %arrayidx75 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %moves, i32 0, i64 0
  %59 = load i32, i32* %i, align 4
  call void @make(%struct.move_s* %arrayidx75, i32 %59)
  %60 = load i32, i32* %beta.addr, align 4
  %sub76 = sub nsw i32 0, %60
  %61 = load i32, i32* %alpha.addr, align 4
  %sub77 = sub nsw i32 0, %61
  %62 = load i32, i32* %depth.addr, align 4
  %sub78 = sub nsw i32 %62, 1
  %call79 = call i32 @qsearch(i32 %sub76, i32 %sub77, i32 %sub78)
  %sub80 = sub nsw i32 0, %call79
  store i32 %sub80, i32* %score, align 4
  %63 = load i32, i32* %score, align 4
  %cmp81 = icmp ne i32 %63, -50000
  br i1 %cmp81, label %if.then.82, label %if.end.83

if.then.82:                                       ; preds = %if.end.74
  store i32 1, i32* %legal_move, align 4
  store i32 0, i32* %no_moves, align 4
  br label %if.end.83

if.end.83:                                        ; preds = %if.then.82, %if.end.74
  %arrayidx84 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %moves, i32 0, i64 0
  %64 = load i32, i32* %i, align 4
  call void @unmake(%struct.move_s* %arrayidx84, i32 %64)
  %65 = load i32, i32* %score, align 4
  %66 = load i32, i32* %best_score, align 4
  %cmp85 = icmp sgt i32 %65, %66
  br i1 %cmp85, label %land.lhs.true.86, label %if.end.89

land.lhs.true.86:                                 ; preds = %if.end.83
  %67 = load i32, i32* %legal_move, align 4
  %tobool87 = icmp ne i32 %67, 0
  br i1 %tobool87, label %if.then.88, label %if.end.89

if.then.88:                                       ; preds = %land.lhs.true.86
  %68 = load i32, i32* %score, align 4
  store i32 %68, i32* %best_score, align 4
  br label %if.end.89

if.end.89:                                        ; preds = %if.then.88, %land.lhs.true.86, %if.end.83
  %69 = load i32, i32* %score, align 4
  %70 = load i32, i32* %alpha.addr, align 4
  %cmp90 = icmp sgt i32 %69, %70
  br i1 %cmp90, label %land.lhs.true.91, label %if.end.123

land.lhs.true.91:                                 ; preds = %if.end.89
  %71 = load i32, i32* %legal_move, align 4
  %tobool92 = icmp ne i32 %71, 0
  br i1 %tobool92, label %if.then.93, label %if.end.123

if.then.93:                                       ; preds = %land.lhs.true.91
  %72 = load i32, i32* %i, align 4
  store i32 %72, i32* %best, align 4
  %73 = load i32, i32* %score, align 4
  %74 = load i32, i32* %beta.addr, align 4
  %cmp94 = icmp sge i32 %73, %74
  br i1 %cmp94, label %if.then.95, label %if.end.96

if.then.95:                                       ; preds = %if.then.93
  %75 = load i32, i32* %score, align 4
  %76 = load i32, i32* %originalalpha, align 4
  %77 = load i32, i32* %beta.addr, align 4
  %78 = load i32, i32* %i, align 4
  call void @QStoreTT(i32 %75, i32 %76, i32 %77, i32 %78)
  %79 = load i32, i32* %score, align 4
  store i32 %79, i32* %retval
  br label %return

if.end.96:                                        ; preds = %if.then.93
  %80 = load i32, i32* %score, align 4
  store i32 %80, i32* %alpha.addr, align 4
  %81 = load i32, i32* @ply, align 4
  %idxprom97 = sext i32 %81 to i64
  %82 = load i32, i32* @ply, align 4
  %idxprom98 = sext i32 %82 to i64
  %arrayidx99 = getelementptr inbounds [300 x [300 x %struct.move_s]], [300 x [300 x %struct.move_s]]* @pv, i32 0, i64 %idxprom98
  %arrayidx100 = getelementptr inbounds [300 x %struct.move_s], [300 x %struct.move_s]* %arrayidx99, i32 0, i64 %idxprom97
  %83 = load i32, i32* %i, align 4
  %idxprom101 = sext i32 %83 to i64
  %arrayidx102 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %moves, i32 0, i64 %idxprom101
  %84 = bitcast %struct.move_s* %arrayidx100 to i8*
  %85 = bitcast %struct.move_s* %arrayidx102 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %84, i8* %85, i64 24, i32 4, i1 false)
  %86 = load i32, i32* @ply, align 4
  %add103 = add nsw i32 %86, 1
  store i32 %add103, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.96
  %87 = load i32, i32* %j, align 4
  %88 = load i32, i32* @ply, align 4
  %add104 = add nsw i32 %88, 1
  %idxprom105 = sext i32 %add104 to i64
  %arrayidx106 = getelementptr inbounds [300 x i32], [300 x i32]* @pv_length, i32 0, i64 %idxprom105
  %89 = load i32, i32* %arrayidx106, align 4
  %cmp107 = icmp slt i32 %87, %89
  br i1 %cmp107, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %90 = load i32, i32* %j, align 4
  %idxprom108 = sext i32 %90 to i64
  %91 = load i32, i32* @ply, align 4
  %idxprom109 = sext i32 %91 to i64
  %arrayidx110 = getelementptr inbounds [300 x [300 x %struct.move_s]], [300 x [300 x %struct.move_s]]* @pv, i32 0, i64 %idxprom109
  %arrayidx111 = getelementptr inbounds [300 x %struct.move_s], [300 x %struct.move_s]* %arrayidx110, i32 0, i64 %idxprom108
  %92 = load i32, i32* %j, align 4
  %idxprom112 = sext i32 %92 to i64
  %93 = load i32, i32* @ply, align 4
  %add113 = add nsw i32 %93, 1
  %idxprom114 = sext i32 %add113 to i64
  %arrayidx115 = getelementptr inbounds [300 x [300 x %struct.move_s]], [300 x [300 x %struct.move_s]]* @pv, i32 0, i64 %idxprom114
  %arrayidx116 = getelementptr inbounds [300 x %struct.move_s], [300 x %struct.move_s]* %arrayidx115, i32 0, i64 %idxprom112
  %94 = bitcast %struct.move_s* %arrayidx111 to i8*
  %95 = bitcast %struct.move_s* %arrayidx116 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %94, i8* %95, i64 24, i32 4, i1 false)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %96 = load i32, i32* %j, align 4
  %inc117 = add nsw i32 %96, 1
  store i32 %inc117, i32* %j, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %97 = load i32, i32* @ply, align 4
  %add118 = add nsw i32 %97, 1
  %idxprom119 = sext i32 %add118 to i64
  %arrayidx120 = getelementptr inbounds [300 x i32], [300 x i32]* @pv_length, i32 0, i64 %idxprom119
  %98 = load i32, i32* %arrayidx120, align 4
  %99 = load i32, i32* @ply, align 4
  %idxprom121 = sext i32 %99 to i64
  %arrayidx122 = getelementptr inbounds [300 x i32], [300 x i32]* @pv_length, i32 0, i64 %idxprom121
  store i32 %98, i32* %arrayidx122, align 4
  br label %if.end.123

if.end.123:                                       ; preds = %for.end, %land.lhs.true.91, %if.end.89
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %100 = load i32, i32* %alpha.addr, align 4
  %101 = load i32, i32* %originalalpha, align 4
  %102 = load i32, i32* %beta.addr, align 4
  %103 = load i32, i32* %best, align 4
  call void @QStoreTT(i32 %100, i32 %101, i32 %102, i32 %103)
  %104 = load i32, i32* %alpha.addr, align 4
  store i32 %104, i32* %retval
  br label %return

return:                                           ; preds = %while.end, %if.then.95, %if.then.54, %if.then.46, %if.then.40, %if.then.36, %sw.bb, %if.then.29, %if.else.23, %if.then.2
  %105 = load i32, i32* %retval
  ret i32 %105
}

declare i32 @interrupt() #2

declare i32 @rdifftime(i64, i64) #2

declare i64 @rtime() #2

declare i32 @allocate_time() #2

declare i32 @printf(i8*, ...) #2

declare i32 @eval(i32, i32) #2

declare i32 @QProbeTT(i32*, i32*) #2

declare void @QStoreTT(i32, i32, i32, i32) #2

; Function Attrs: nounwind uwtable
define i32 @remove_one(i32* %marker, i32* %move_ordering, i32 %num_moves) #0 {
entry:
  %retval = alloca i32, align 4
  %marker.addr = alloca i32*, align 8
  %move_ordering.addr = alloca i32*, align 8
  %num_moves.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %best = alloca i32, align 4
  store i32* %marker, i32** %marker.addr, align 8
  store i32* %move_ordering, i32** %move_ordering.addr, align 8
  store i32 %num_moves, i32* %num_moves.addr, align 4
  store i32 -1000000, i32* %best, align 4
  %0 = load i32*, i32** %marker.addr, align 8
  store i32 -1000000, i32* %0, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4
  %2 = load i32, i32* %num_moves.addr, align 4
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load i32*, i32** %move_ordering.addr, align 8
  %arrayidx = getelementptr inbounds i32, i32* %4, i64 %idxprom
  %5 = load i32, i32* %arrayidx, align 4
  %6 = load i32, i32* %best, align 4
  %cmp1 = icmp sgt i32 %5, %6
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %7 = load i32, i32* %i, align 4
  %8 = load i32*, i32** %marker.addr, align 8
  store i32 %7, i32* %8, align 4
  %9 = load i32, i32* %i, align 4
  %idxprom2 = sext i32 %9 to i64
  %10 = load i32*, i32** %move_ordering.addr, align 8
  %arrayidx3 = getelementptr inbounds i32, i32* %10, i64 %idxprom2
  %11 = load i32, i32* %arrayidx3, align 4
  store i32 %11, i32* %best, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %12 = load i32, i32* %i, align 4
  %inc = add nsw i32 %12, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %13 = load i32*, i32** %marker.addr, align 8
  %14 = load i32, i32* %13, align 4
  %cmp4 = icmp sgt i32 %14, -1000000
  br i1 %cmp4, label %if.then.5, label %if.else

if.then.5:                                        ; preds = %for.end
  %15 = load i32*, i32** %marker.addr, align 8
  %16 = load i32, i32* %15, align 4
  %idxprom6 = sext i32 %16 to i64
  %17 = load i32*, i32** %move_ordering.addr, align 8
  %arrayidx7 = getelementptr inbounds i32, i32* %17, i64 %idxprom6
  store i32 -1000000, i32* %arrayidx7, align 4
  store i32 1, i32* %retval
  br label %return

if.else:                                          ; preds = %for.end
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.else, %if.then.5
  %18 = load i32, i32* %retval
  ret i32 %18
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #3

; Function Attrs: nounwind uwtable
define i32 @search(i32 %alpha, i32 %beta, i32 %depth, i32 %is_null) #0 {
entry:
  %retval = alloca i32, align 4
  %alpha.addr = alloca i32, align 4
  %beta.addr = alloca i32, align 4
  %depth.addr = alloca i32, align 4
  %is_null.addr = alloca i32, align 4
  %moves = alloca [512 x %struct.move_s], align 16
  %num_moves = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %score = alloca i32, align 4
  %move_ordering = alloca [512 x i32], align 16
  %see_values = alloca [512 x i32], align 16
  %no_moves = alloca i32, align 4
  %legal_move = alloca i32, align 4
  %bound = alloca i32, align 4
  %threat = alloca i32, align 4
  %donull = alloca i32, align 4
  %best = alloca i32, align 4
  %sbest = alloca i32, align 4
  %best_score = alloca i32, align 4
  %old_ep = alloca i32, align 4
  %incheck = alloca i32, align 4
  %first = alloca i32, align 4
  %extend = alloca i32, align 4
  %fscore = alloca i32, align 4
  %fmax = alloca i32, align 4
  %selective = alloca i32, align 4
  %kswap = alloca %struct.move_s, align 4
  %ksswap = alloca i32, align 4
  %originalalpha = alloca i32, align 4
  %afterincheck = alloca i32, align 4
  %legalmoves = alloca i32, align 4
  %dropcut = alloca i32, align 4
  %oldtime = alloca i32, align 4
  store i32 %alpha, i32* %alpha.addr, align 4
  store i32 %beta, i32* %beta.addr, align 4
  store i32 %depth, i32* %depth.addr, align 4
  store i32 %is_null, i32* %is_null.addr, align 4
  store i32 -1000000, i32* %score, align 4
  %0 = load i32, i32* @nodes, align 4
  %inc = add nsw i32 %0, 1
  store i32 %inc, i32* @nodes, align 4
  %1 = load i32, i32* @nodes, align 4
  %and = and i32 %1, 65535
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.end.26, label %if.then

if.then:                                          ; preds = %entry
  %call = call i32 @interrupt()
  %tobool1 = icmp ne i32 %call, 0
  br i1 %tobool1, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %if.then
  store i32 1, i32* @time_exit, align 4
  store i32 0, i32* %retval
  br label %return

if.else:                                          ; preds = %if.then
  %call3 = call i64 @rtime()
  %2 = load i64, i64* @start_time, align 8
  %call4 = call i32 @rdifftime(i64 %call3, i64 %2)
  %3 = load i32, i32* @time_for_move, align 4
  %cmp = icmp sge i32 %call4, %3
  br i1 %cmp, label %land.lhs.true, label %if.end.24

land.lhs.true:                                    ; preds = %if.else
  %4 = load i32, i32* @i_depth, align 4
  %cmp5 = icmp sgt i32 %4, 1
  br i1 %cmp5, label %if.then.6, label %if.end.24

if.then.6:                                        ; preds = %land.lhs.true
  %5 = load i32, i32* @failed, align 4
  %cmp7 = icmp eq i32 %5, 1
  br i1 %cmp7, label %land.lhs.true.8, label %if.else.23

land.lhs.true.8:                                  ; preds = %if.then.6
  %6 = load i32, i32* @extendedtime, align 4
  %tobool9 = icmp ne i32 %6, 0
  br i1 %tobool9, label %if.else.23, label %land.lhs.true.10

land.lhs.true.10:                                 ; preds = %land.lhs.true.8
  %7 = load i32, i32* @fixed_time, align 4
  %tobool11 = icmp ne i32 %7, 0
  br i1 %tobool11, label %if.else.23, label %land.lhs.true.12

land.lhs.true.12:                                 ; preds = %land.lhs.true.10
  %8 = load i32, i32* @go_fast, align 4
  %tobool13 = icmp ne i32 %8, 0
  br i1 %tobool13, label %if.else.23, label %land.lhs.true.14

land.lhs.true.14:                                 ; preds = %land.lhs.true.12
  %9 = load i32, i32* @Variant, align 4
  %cmp15 = icmp ne i32 %9, 1
  br i1 %cmp15, label %land.lhs.true.16, label %if.else.23

land.lhs.true.16:                                 ; preds = %land.lhs.true.14
  %10 = load i32, i32* @time_left, align 4
  %11 = load i32, i32* @time_for_move, align 4
  %mul = mul nsw i32 %11, 4
  %cmp17 = icmp sgt i32 %mul, 1000
  br i1 %cmp17, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true.16
  %12 = load i32, i32* @time_for_move, align 4
  %mul18 = mul nsw i32 %12, 4
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true.16
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %mul18, %cond.true ], [ 1000, %cond.false ]
  %cmp19 = icmp sgt i32 %10, %cond
  br i1 %cmp19, label %if.then.20, label %if.else.23

if.then.20:                                       ; preds = %cond.end
  store i32 1, i32* @extendedtime, align 4
  %13 = load i32, i32* @time_for_move, align 4
  store i32 %13, i32* %oldtime, align 4
  %call21 = call i32 @allocate_time()
  %14 = load i32, i32* @time_for_move, align 4
  %add = add nsw i32 %14, %call21
  store i32 %add, i32* @time_for_move, align 4
  %15 = load i32, i32* %oldtime, align 4
  %16 = load i32, i32* @time_for_move, align 4
  %17 = load i32, i32* @time_left, align 4
  %call22 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i32 0, i32 0), i32 %15, i32 %16, i32 %17)
  br label %if.end

if.else.23:                                       ; preds = %cond.end, %land.lhs.true.14, %land.lhs.true.12, %land.lhs.true.10, %land.lhs.true.8, %if.then.6
  store i32 1, i32* @time_exit, align 4
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then.20
  br label %if.end.24

if.end.24:                                        ; preds = %if.end, %land.lhs.true, %if.else
  br label %if.end.25

if.end.25:                                        ; preds = %if.end.24
  br label %if.end.26

if.end.26:                                        ; preds = %if.end.25, %entry
  %18 = load i32, i32* %alpha.addr, align 4
  store i32 %18, i32* %originalalpha, align 4
  store i32 -1000000, i32* %fmax, align 4
  store i32 0, i32* %threat, align 4
  store i32 0, i32* %extend, align 4
  %19 = load i32, i32* @ply, align 4
  %20 = load i32, i32* @ply, align 4
  %idxprom = sext i32 %20 to i64
  %arrayidx = getelementptr inbounds [300 x i32], [300 x i32]* @pv_length, i32 0, i64 %idxprom
  store i32 %19, i32* %arrayidx, align 4
  %call27 = call i32 @is_draw()
  %tobool28 = icmp ne i32 %call27, 0
  br i1 %tobool28, label %if.then.29, label %if.end.30

if.then.29:                                       ; preds = %if.end.26
  store i32 0, i32* %retval
  br label %return

if.end.30:                                        ; preds = %if.end.26
  %21 = load i32, i32* @ply, align 4
  %idxprom31 = sext i32 %21 to i64
  %arrayidx32 = getelementptr inbounds [300 x i32], [300 x i32]* @checks, i32 0, i64 %idxprom31
  %22 = load i32, i32* %arrayidx32, align 4
  store i32 %22, i32* %incheck, align 4
  %23 = load i32, i32* @ply, align 4
  %idxprom33 = sext i32 %23 to i64
  %arrayidx34 = getelementptr inbounds [300 x i32], [300 x i32]* @singular, i32 0, i64 %idxprom33
  store i32 0, i32* %arrayidx34, align 4
  %24 = load i32, i32* @ply, align 4
  %idxprom35 = sext i32 %24 to i64
  %arrayidx36 = getelementptr inbounds [300 x i32], [300 x i32]* @recaps, i32 0, i64 %idxprom35
  store i32 0, i32* %arrayidx36, align 4
  %25 = load i32, i32* @ply, align 4
  %cmp37 = icmp slt i32 %25, 300
  br i1 %cmp37, label %land.lhs.true.38, label %if.else.48

land.lhs.true.38:                                 ; preds = %if.end.30
  %26 = load i32, i32* %incheck, align 4
  %tobool39 = icmp ne i32 %26, 0
  br i1 %tobool39, label %land.lhs.true.40, label %if.else.48

land.lhs.true.40:                                 ; preds = %land.lhs.true.38
  %27 = load i32, i32* @ply, align 4
  %28 = load i32, i32* @i_depth, align 4
  %mul41 = mul nsw i32 %28, 2
  %cmp42 = icmp sle i32 %27, %mul41
  br i1 %cmp42, label %if.then.44, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.40
  %29 = load i32, i32* %depth.addr, align 4
  %cmp43 = icmp eq i32 %29, 0
  br i1 %cmp43, label %if.then.44, label %if.else.48

if.then.44:                                       ; preds = %lor.lhs.false, %land.lhs.true.40
  %30 = load i32, i32* %depth.addr, align 4
  %inc45 = add nsw i32 %30, 1
  store i32 %inc45, i32* %depth.addr, align 4
  %31 = load i32, i32* @ext_check, align 4
  %inc46 = add i32 %31, 1
  store i32 %inc46, i32* @ext_check, align 4
  %32 = load i32, i32* %extend, align 4
  %inc47 = add nsw i32 %32, 1
  store i32 %inc47, i32* %extend, align 4
  br label %if.end.87

if.else.48:                                       ; preds = %lor.lhs.false, %land.lhs.true.38, %if.end.30
  %33 = load i32, i32* @ply, align 4
  %cmp49 = icmp slt i32 %33, 300
  br i1 %cmp49, label %land.lhs.true.50, label %if.end.86

land.lhs.true.50:                                 ; preds = %if.else.48
  %34 = load i32, i32* @ply, align 4
  %cmp51 = icmp sgt i32 %34, 2
  br i1 %cmp51, label %land.lhs.true.52, label %if.end.86

land.lhs.true.52:                                 ; preds = %land.lhs.true.50
  %35 = load i32, i32* @ply, align 4
  %36 = load i32, i32* @i_depth, align 4
  %mul53 = mul nsw i32 %36, 2
  %cmp54 = icmp sle i32 %35, %mul53
  br i1 %cmp54, label %land.lhs.true.55, label %if.end.86

land.lhs.true.55:                                 ; preds = %land.lhs.true.52
  %37 = load i32, i32* @ply, align 4
  %sub = sub nsw i32 %37, 2
  %idxprom56 = sext i32 %sub to i64
  %arrayidx57 = getelementptr inbounds [300 x i32], [300 x i32]* @recaps, i32 0, i64 %idxprom56
  %38 = load i32, i32* %arrayidx57, align 4
  %tobool58 = icmp ne i32 %38, 0
  br i1 %tobool58, label %if.end.86, label %land.lhs.true.59

land.lhs.true.59:                                 ; preds = %land.lhs.true.55
  %39 = load i32, i32* @cfg_recap, align 4
  %tobool60 = icmp ne i32 %39, 0
  br i1 %tobool60, label %land.lhs.true.61, label %if.end.86

land.lhs.true.61:                                 ; preds = %land.lhs.true.59
  %40 = load i32, i32* @ply, align 4
  %sub62 = sub nsw i32 %40, 1
  %idxprom63 = sext i32 %sub62 to i64
  %arrayidx64 = getelementptr inbounds [300 x %struct.move_s], [300 x %struct.move_s]* @path, i32 0, i64 %idxprom63
  %captured = getelementptr inbounds %struct.move_s, %struct.move_s* %arrayidx64, i32 0, i32 2
  %41 = load i32, i32* %captured, align 4
  %cmp65 = icmp ne i32 %41, 13
  br i1 %cmp65, label %land.lhs.true.66, label %if.end.86

land.lhs.true.66:                                 ; preds = %land.lhs.true.61
  %42 = load i32, i32* @ply, align 4
  %sub67 = sub nsw i32 %42, 1
  %idxprom68 = sext i32 %sub67 to i64
  %arrayidx69 = getelementptr inbounds [300 x %struct.move_s], [300 x %struct.move_s]* @path, i32 0, i64 %idxprom68
  %captured70 = getelementptr inbounds %struct.move_s, %struct.move_s* %arrayidx69, i32 0, i32 2
  %43 = load i32, i32* %captured70, align 4
  %idxprom71 = sext i32 %43 to i64
  %arrayidx72 = getelementptr inbounds [14 x i32], [14 x i32]* @search.rc_index, i32 0, i64 %idxprom71
  %44 = load i32, i32* %arrayidx72, align 4
  %45 = load i32, i32* @ply, align 4
  %sub73 = sub nsw i32 %45, 2
  %idxprom74 = sext i32 %sub73 to i64
  %arrayidx75 = getelementptr inbounds [300 x %struct.move_s], [300 x %struct.move_s]* @path, i32 0, i64 %idxprom74
  %captured76 = getelementptr inbounds %struct.move_s, %struct.move_s* %arrayidx75, i32 0, i32 2
  %46 = load i32, i32* %captured76, align 4
  %idxprom77 = sext i32 %46 to i64
  %arrayidx78 = getelementptr inbounds [14 x i32], [14 x i32]* @search.rc_index, i32 0, i64 %idxprom77
  %47 = load i32, i32* %arrayidx78, align 4
  %cmp79 = icmp eq i32 %44, %47
  br i1 %cmp79, label %if.then.80, label %if.end.86

if.then.80:                                       ; preds = %land.lhs.true.66
  %48 = load i32, i32* %depth.addr, align 4
  %inc81 = add nsw i32 %48, 1
  store i32 %inc81, i32* %depth.addr, align 4
  %49 = load i32, i32* @ext_recap, align 4
  %inc82 = add i32 %49, 1
  store i32 %inc82, i32* @ext_recap, align 4
  %50 = load i32, i32* %extend, align 4
  %inc83 = add nsw i32 %50, 1
  store i32 %inc83, i32* %extend, align 4
  %51 = load i32, i32* @ply, align 4
  %idxprom84 = sext i32 %51 to i64
  %arrayidx85 = getelementptr inbounds [300 x i32], [300 x i32]* @recaps, i32 0, i64 %idxprom84
  store i32 1, i32* %arrayidx85, align 4
  br label %if.end.86

if.end.86:                                        ; preds = %if.then.80, %land.lhs.true.66, %land.lhs.true.61, %land.lhs.true.59, %land.lhs.true.55, %land.lhs.true.52, %land.lhs.true.50, %if.else.48
  br label %if.end.87

if.end.87:                                        ; preds = %if.end.86, %if.then.44
  %52 = load i32, i32* %depth.addr, align 4
  %cmp88 = icmp sle i32 %52, 0
  br i1 %cmp88, label %if.then.91, label %lor.lhs.false.89

lor.lhs.false.89:                                 ; preds = %if.end.87
  %53 = load i32, i32* @ply, align 4
  %cmp90 = icmp sge i32 %53, 300
  br i1 %cmp90, label %if.then.91, label %if.end.120

if.then.91:                                       ; preds = %lor.lhs.false.89, %if.end.87
  %54 = load i32, i32* @Variant, align 4
  %cmp92 = icmp ne i32 %54, 3
  br i1 %cmp92, label %land.lhs.true.93, label %if.else.98

land.lhs.true.93:                                 ; preds = %if.then.91
  %55 = load i32, i32* @Variant, align 4
  %cmp94 = icmp ne i32 %55, 4
  br i1 %cmp94, label %if.then.95, label %if.else.98

if.then.95:                                       ; preds = %land.lhs.true.93
  store i32 1, i32* @captures, align 4
  %56 = load i32, i32* %alpha.addr, align 4
  %57 = load i32, i32* %beta.addr, align 4
  %58 = load i32, i32* @ply, align 4
  %sub96 = sub nsw i32 300, %58
  %call97 = call i32 @qsearch(i32 %56, i32 %57, i32 %sub96)
  store i32 %call97, i32* %score, align 4
  store i32 0, i32* @captures, align 4
  %59 = load i32, i32* %score, align 4
  store i32 %59, i32* %retval
  br label %return

if.else.98:                                       ; preds = %land.lhs.true.93, %if.then.91
  %60 = load i32, i32* @Variant, align 4
  %cmp99 = icmp eq i32 %60, 3
  br i1 %cmp99, label %if.then.100, label %if.else.102

if.then.100:                                      ; preds = %if.else.98
  %call101 = call i32 @suicide_eval()
  store i32 %call101, i32* %retval
  br label %return

if.else.102:                                      ; preds = %if.else.98
  %61 = load i32, i32* @Variant, align 4
  %cmp103 = icmp eq i32 %61, 4
  br i1 %cmp103, label %if.then.104, label %if.end.117

if.then.104:                                      ; preds = %if.else.102
  %call105 = call i32 @losers_eval()
  store i32 %call105, i32* %i, align 4
  %62 = load i32, i32* %i, align 4
  %call106 = call i32 @abs(i32 %62) #4
  %cmp107 = icmp eq i32 %call106, 1000000
  br i1 %cmp107, label %if.then.108, label %if.else.116

if.then.108:                                      ; preds = %if.then.104
  %63 = load i32, i32* %i, align 4
  %cmp109 = icmp sgt i32 %63, 0
  br i1 %cmp109, label %cond.true.110, label %cond.false.112

cond.true.110:                                    ; preds = %if.then.108
  %64 = load i32, i32* @ply, align 4
  %sub111 = sub nsw i32 1000000, %64
  br label %cond.end.114

cond.false.112:                                   ; preds = %if.then.108
  %65 = load i32, i32* @ply, align 4
  %add113 = add nsw i32 -1000000, %65
  br label %cond.end.114

cond.end.114:                                     ; preds = %cond.false.112, %cond.true.110
  %cond115 = phi i32 [ %sub111, %cond.true.110 ], [ %add113, %cond.false.112 ]
  store i32 %cond115, i32* %retval
  br label %return

if.else.116:                                      ; preds = %if.then.104
  %66 = load i32, i32* %i, align 4
  store i32 %66, i32* %retval
  br label %return

if.end.117:                                       ; preds = %if.else.102
  br label %if.end.118

if.end.118:                                       ; preds = %if.end.117
  br label %if.end.119

if.end.119:                                       ; preds = %if.end.118
  br label %if.end.120

if.end.120:                                       ; preds = %if.end.119, %lor.lhs.false.89
  store i32 0, i32* %num_moves, align 4
  store i32 1, i32* %no_moves, align 4
  %67 = load i32, i32* %beta.addr, align 4
  %68 = load i32, i32* %depth.addr, align 4
  %call121 = call i32 @ProbeTT(i32* %bound, i32 %67, i32* %best, i32* %threat, i32* %donull, i32 %68)
  switch i32 %call121, label %sw.epilog [
    i32 3, label %sw.bb
    i32 1, label %sw.bb.122
    i32 2, label %sw.bb.126
    i32 0, label %sw.bb.130
    i32 4, label %sw.bb.131
  ]

sw.bb:                                            ; preds = %if.end.120
  %69 = load i32, i32* %bound, align 4
  store i32 %69, i32* %retval
  br label %return

sw.bb.122:                                        ; preds = %if.end.120
  %70 = load i32, i32* %bound, align 4
  %71 = load i32, i32* %alpha.addr, align 4
  %cmp123 = icmp sle i32 %70, %71
  br i1 %cmp123, label %if.then.124, label %if.end.125

if.then.124:                                      ; preds = %sw.bb.122
  %72 = load i32, i32* %bound, align 4
  store i32 %72, i32* %retval
  br label %return

if.end.125:                                       ; preds = %sw.bb.122
  br label %sw.epilog

sw.bb.126:                                        ; preds = %if.end.120
  %73 = load i32, i32* %bound, align 4
  %74 = load i32, i32* %beta.addr, align 4
  %cmp127 = icmp sge i32 %73, %74
  br i1 %cmp127, label %if.then.128, label %if.end.129

if.then.128:                                      ; preds = %sw.bb.126
  %75 = load i32, i32* %bound, align 4
  store i32 %75, i32* %retval
  br label %return

if.end.129:                                       ; preds = %sw.bb.126
  br label %sw.epilog

sw.bb.130:                                        ; preds = %if.end.120
  br label %sw.epilog

sw.bb.131:                                        ; preds = %if.end.120
  store i32 -1, i32* %best, align 4
  store i32 0, i32* %threat, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end.120, %sw.bb.131, %sw.bb.130, %if.end.129, %if.end.125
  %76 = load i32, i32* %best, align 4
  %cmp132 = icmp eq i32 %76, 500
  br i1 %cmp132, label %if.then.133, label %if.end.134

if.then.133:                                      ; preds = %sw.epilog
  store i32 -1, i32* %best, align 4
  br label %if.end.134

if.end.134:                                       ; preds = %if.then.133, %sw.epilog
  store i32 -1, i32* %sbest, align 4
  store i32 -1000000, i32* %best_score, align 4
  %77 = load i32, i32* @ep_square, align 4
  store i32 %77, i32* %old_ep, align 4
  store i32 0, i32* %legalmoves, align 4
  %78 = load i32, i32* @Variant, align 4
  %cmp135 = icmp eq i32 %78, 4
  br i1 %cmp135, label %if.then.136, label %if.end.167

if.then.136:                                      ; preds = %if.end.134
  %call137 = call i32 @losers_eval()
  store i32 %call137, i32* %i, align 4
  %79 = load i32, i32* %i, align 4
  %call138 = call i32 @abs(i32 %79) #4
  %cmp139 = icmp eq i32 %call138, 1000000
  br i1 %cmp139, label %if.then.140, label %if.end.148

if.then.140:                                      ; preds = %if.then.136
  %80 = load i32, i32* %i, align 4
  %cmp141 = icmp sgt i32 %80, 0
  br i1 %cmp141, label %cond.true.142, label %cond.false.144

cond.true.142:                                    ; preds = %if.then.140
  %81 = load i32, i32* %i, align 4
  %82 = load i32, i32* @ply, align 4
  %sub143 = sub nsw i32 %81, %82
  br label %cond.end.146

cond.false.144:                                   ; preds = %if.then.140
  %83 = load i32, i32* %i, align 4
  %84 = load i32, i32* @ply, align 4
  %add145 = add nsw i32 %83, %84
  br label %cond.end.146

cond.end.146:                                     ; preds = %cond.false.144, %cond.true.142
  %cond147 = phi i32 [ %sub143, %cond.true.142 ], [ %add145, %cond.false.144 ]
  store i32 %cond147, i32* %retval
  br label %return

if.end.148:                                       ; preds = %if.then.136
  store i32 1, i32* @captures, align 4
  %arrayidx149 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %moves, i32 0, i64 0
  call void @gen(%struct.move_s* %arrayidx149)
  %85 = load i32, i32* @numb_moves, align 4
  store i32 %85, i32* %num_moves, align 4
  store i32 0, i32* @captures, align 4
  %86 = load i32, i32* %num_moves, align 4
  %tobool150 = icmp ne i32 %86, 0
  br i1 %tobool150, label %if.then.151, label %if.end.162

if.then.151:                                      ; preds = %if.end.148
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.151
  %87 = load i32, i32* %i, align 4
  %88 = load i32, i32* %num_moves, align 4
  %cmp152 = icmp slt i32 %87, %88
  br i1 %cmp152, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %arrayidx153 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %moves, i32 0, i64 0
  %89 = load i32, i32* %i, align 4
  call void @make(%struct.move_s* %arrayidx153, i32 %89)
  %arrayidx154 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %moves, i32 0, i64 0
  %90 = load i32, i32* %i, align 4
  %91 = load i32, i32* %incheck, align 4
  %call155 = call i32 @check_legal(%struct.move_s* %arrayidx154, i32 %90, i32 %91)
  %tobool156 = icmp ne i32 %call155, 0
  br i1 %tobool156, label %if.then.157, label %if.end.159

if.then.157:                                      ; preds = %for.body
  %92 = load i32, i32* %legalmoves, align 4
  %inc158 = add nsw i32 %92, 1
  store i32 %inc158, i32* %legalmoves, align 4
  br label %if.end.159

if.end.159:                                       ; preds = %if.then.157, %for.body
  %arrayidx160 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %moves, i32 0, i64 0
  %93 = load i32, i32* %i, align 4
  call void @unmake(%struct.move_s* %arrayidx160, i32 %93)
  br label %for.inc

for.inc:                                          ; preds = %if.end.159
  %94 = load i32, i32* %i, align 4
  %inc161 = add nsw i32 %94, 1
  store i32 %inc161, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.162

if.end.162:                                       ; preds = %for.end, %if.end.148
  %95 = load i32, i32* %legalmoves, align 4
  %tobool163 = icmp ne i32 %95, 0
  br i1 %tobool163, label %if.end.166, label %if.then.164

if.then.164:                                      ; preds = %if.end.162
  store i32 0, i32* @captures, align 4
  %arrayidx165 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %moves, i32 0, i64 0
  call void @gen(%struct.move_s* %arrayidx165)
  %96 = load i32, i32* @numb_moves, align 4
  store i32 %96, i32* %num_moves, align 4
  br label %if.end.166

if.end.166:                                       ; preds = %if.then.164, %if.end.162
  store i32 0, i32* %legalmoves, align 4
  br label %if.end.167

if.end.167:                                       ; preds = %if.end.166, %if.end.134
  %97 = load i32, i32* %is_null.addr, align 4
  %cmp168 = icmp eq i32 %97, 0
  br i1 %cmp168, label %land.lhs.true.169, label %if.else.243

land.lhs.true.169:                                ; preds = %if.end.167
  %98 = load i32, i32* @phase, align 4
  %cmp170 = icmp ne i32 %98, 2
  br i1 %cmp170, label %land.lhs.true.175, label %lor.lhs.false.171

lor.lhs.false.171:                                ; preds = %land.lhs.true.169
  %99 = load i32, i32* @phase, align 4
  %cmp172 = icmp eq i32 %99, 2
  br i1 %cmp172, label %land.lhs.true.173, label %if.else.243

land.lhs.true.173:                                ; preds = %lor.lhs.false.171
  %100 = load i32, i32* %depth.addr, align 4
  %cmp174 = icmp sle i32 %100, 6
  br i1 %cmp174, label %land.lhs.true.175, label %if.else.243

land.lhs.true.175:                                ; preds = %land.lhs.true.173, %land.lhs.true.169
  %101 = load i32, i32* %incheck, align 4
  %tobool176 = icmp ne i32 %101, 0
  br i1 %tobool176, label %if.else.243, label %land.lhs.true.177

land.lhs.true.177:                                ; preds = %land.lhs.true.175
  %102 = load i32, i32* %donull, align 4
  %tobool178 = icmp ne i32 %102, 0
  br i1 %tobool178, label %land.lhs.true.179, label %if.else.243

land.lhs.true.179:                                ; preds = %land.lhs.true.177
  %103 = load i32, i32* @searching_pv, align 4
  %tobool180 = icmp ne i32 %103, 0
  br i1 %tobool180, label %if.else.243, label %land.lhs.true.181

land.lhs.true.181:                                ; preds = %land.lhs.true.179
  %104 = load i32, i32* %threat, align 4
  %cmp182 = icmp eq i32 %104, 0
  br i1 %cmp182, label %land.lhs.true.183, label %if.else.243

land.lhs.true.183:                                ; preds = %land.lhs.true.181
  %105 = load i32, i32* @Variant, align 4
  %cmp184 = icmp ne i32 %105, 3
  br i1 %cmp184, label %land.lhs.true.185, label %lor.lhs.false.187

land.lhs.true.185:                                ; preds = %land.lhs.true.183
  %106 = load i32, i32* @Variant, align 4
  %cmp186 = icmp ne i32 %106, 4
  br i1 %cmp186, label %if.then.193, label %lor.lhs.false.187

lor.lhs.false.187:                                ; preds = %land.lhs.true.185, %land.lhs.true.183
  %107 = load i32, i32* @Variant, align 4
  %cmp188 = icmp eq i32 %107, 4
  br i1 %cmp188, label %land.lhs.true.189, label %if.else.243

land.lhs.true.189:                                ; preds = %lor.lhs.false.187
  %arrayidx190 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %moves, i32 0, i64 0
  %captured191 = getelementptr inbounds %struct.move_s, %struct.move_s* %arrayidx190, i32 0, i32 2
  %108 = load i32, i32* %captured191, align 4
  %cmp192 = icmp eq i32 %108, 13
  br i1 %cmp192, label %if.then.193, label %if.else.243

if.then.193:                                      ; preds = %land.lhs.true.189, %land.lhs.true.185
  store i32 0, i32* @ep_square, align 4
  %109 = load i32, i32* @white_to_move, align 4
  %xor = xor i32 %109, 1
  store i32 %xor, i32* @white_to_move, align 4
  %110 = load i32, i32* @ply, align 4
  %inc194 = add nsw i32 %110, 1
  store i32 %inc194, i32* @ply, align 4
  %111 = load i32, i32* @fifty, align 4
  %inc195 = add nsw i32 %111, 1
  store i32 %inc195, i32* @fifty, align 4
  %112 = load i32, i32* @hash, align 4
  %xor196 = xor i32 %112, -559038737
  store i32 %xor196, i32* @hash, align 4
  %113 = load i32, i32* @Variant, align 4
  %cmp197 = icmp ne i32 %113, 2
  br i1 %cmp197, label %land.lhs.true.198, label %if.else.215

land.lhs.true.198:                                ; preds = %if.then.193
  %114 = load i32, i32* @Variant, align 4
  %cmp199 = icmp ne i32 %114, 4
  br i1 %cmp199, label %if.then.200, label %if.else.215

if.then.200:                                      ; preds = %land.lhs.true.198
  %115 = load i32, i32* %beta.addr, align 4
  %sub201 = sub nsw i32 0, %115
  %116 = load i32, i32* %beta.addr, align 4
  %sub202 = sub nsw i32 0, %116
  %add203 = add nsw i32 %sub202, 1
  %117 = load i32, i32* %depth.addr, align 4
  %cmp204 = icmp sgt i32 %117, 3
  br i1 %cmp204, label %cond.true.205, label %cond.false.208

cond.true.205:                                    ; preds = %if.then.200
  %118 = load i32, i32* %depth.addr, align 4
  %sub206 = sub nsw i32 %118, 2
  %sub207 = sub nsw i32 %sub206, 1
  br label %cond.end.211

cond.false.208:                                   ; preds = %if.then.200
  %119 = load i32, i32* %depth.addr, align 4
  %sub209 = sub nsw i32 %119, 1
  %sub210 = sub nsw i32 %sub209, 1
  br label %cond.end.211

cond.end.211:                                     ; preds = %cond.false.208, %cond.true.205
  %cond212 = phi i32 [ %sub207, %cond.true.205 ], [ %sub210, %cond.false.208 ]
  %call213 = call i32 @search(i32 %sub201, i32 %add203, i32 %cond212, i32 1)
  %sub214 = sub nsw i32 0, %call213
  store i32 %sub214, i32* %score, align 4
  br label %if.end.223

if.else.215:                                      ; preds = %land.lhs.true.198, %if.then.193
  %120 = load i32, i32* %beta.addr, align 4
  %sub216 = sub nsw i32 0, %120
  %121 = load i32, i32* %beta.addr, align 4
  %sub217 = sub nsw i32 0, %121
  %add218 = add nsw i32 %sub217, 1
  %122 = load i32, i32* %depth.addr, align 4
  %sub219 = sub nsw i32 %122, 3
  %sub220 = sub nsw i32 %sub219, 1
  %call221 = call i32 @search(i32 %sub216, i32 %add218, i32 %sub220, i32 1)
  %sub222 = sub nsw i32 0, %call221
  store i32 %sub222, i32* %score, align 4
  br label %if.end.223

if.end.223:                                       ; preds = %if.else.215, %cond.end.211
  %123 = load i32, i32* @hash, align 4
  %xor224 = xor i32 %123, -559038737
  store i32 %xor224, i32* @hash, align 4
  %124 = load i32, i32* @fifty, align 4
  %dec = add nsw i32 %124, -1
  store i32 %dec, i32* @fifty, align 4
  %125 = load i32, i32* @ply, align 4
  %dec225 = add nsw i32 %125, -1
  store i32 %dec225, i32* @ply, align 4
  %126 = load i32, i32* @white_to_move, align 4
  %xor226 = xor i32 %126, 1
  store i32 %xor226, i32* @white_to_move, align 4
  %127 = load i32, i32* %old_ep, align 4
  store i32 %127, i32* @ep_square, align 4
  %128 = load i32, i32* @time_exit, align 4
  %tobool227 = icmp ne i32 %128, 0
  br i1 %tobool227, label %if.then.228, label %if.end.229

if.then.228:                                      ; preds = %if.end.223
  store i32 0, i32* %retval
  br label %return

if.end.229:                                       ; preds = %if.end.223
  %129 = load i32, i32* @NTries, align 4
  %inc230 = add i32 %129, 1
  store i32 %inc230, i32* @NTries, align 4
  %130 = load i32, i32* %score, align 4
  %131 = load i32, i32* %beta.addr, align 4
  %cmp231 = icmp sge i32 %130, %131
  br i1 %cmp231, label %if.then.232, label %if.else.234

if.then.232:                                      ; preds = %if.end.229
  %132 = load i32, i32* @NCuts, align 4
  %inc233 = add i32 %132, 1
  store i32 %inc233, i32* @NCuts, align 4
  %133 = load i32, i32* %score, align 4
  %134 = load i32, i32* %alpha.addr, align 4
  %135 = load i32, i32* %beta.addr, align 4
  %136 = load i32, i32* %depth.addr, align 4
  call void @StoreTT(i32 %133, i32 %134, i32 %135, i32 500, i32 0, i32 %136)
  %137 = load i32, i32* %score, align 4
  store i32 %137, i32* %retval
  br label %return

if.else.234:                                      ; preds = %if.end.229
  %138 = load i32, i32* %score, align 4
  %cmp235 = icmp slt i32 %138, -999900
  br i1 %cmp235, label %if.then.236, label %if.end.241

if.then.236:                                      ; preds = %if.else.234
  store i32 1, i32* %threat, align 4
  %139 = load i32, i32* @TExt, align 4
  %inc237 = add i32 %139, 1
  store i32 %inc237, i32* @TExt, align 4
  %140 = load i32, i32* %depth.addr, align 4
  %inc238 = add nsw i32 %140, 1
  store i32 %inc238, i32* %depth.addr, align 4
  %141 = load i32, i32* %extend, align 4
  %inc239 = add nsw i32 %141, 1
  store i32 %inc239, i32* %extend, align 4
  %142 = load i32, i32* @ext_onerep, align 4
  %inc240 = add i32 %142, 1
  store i32 %inc240, i32* @ext_onerep, align 4
  br label %if.end.241

if.end.241:                                       ; preds = %if.then.236, %if.else.234
  br label %if.end.242

if.end.242:                                       ; preds = %if.end.241
  br label %if.end.251

if.else.243:                                      ; preds = %land.lhs.true.189, %lor.lhs.false.187, %land.lhs.true.181, %land.lhs.true.179, %land.lhs.true.177, %land.lhs.true.175, %land.lhs.true.173, %lor.lhs.false.171, %if.end.167
  %143 = load i32, i32* %threat, align 4
  %cmp244 = icmp eq i32 %143, 1
  br i1 %cmp244, label %if.then.245, label %if.end.250

if.then.245:                                      ; preds = %if.else.243
  %144 = load i32, i32* @TExt, align 4
  %inc246 = add i32 %144, 1
  store i32 %inc246, i32* @TExt, align 4
  %145 = load i32, i32* %depth.addr, align 4
  %inc247 = add nsw i32 %145, 1
  store i32 %inc247, i32* %depth.addr, align 4
  %146 = load i32, i32* %extend, align 4
  %inc248 = add nsw i32 %146, 1
  store i32 %inc248, i32* %extend, align 4
  %147 = load i32, i32* @ext_onerep, align 4
  %inc249 = add i32 %147, 1
  store i32 %inc249, i32* @ext_onerep, align 4
  br label %if.end.250

if.end.250:                                       ; preds = %if.then.245, %if.else.243
  br label %if.end.251

if.end.251:                                       ; preds = %if.end.250, %if.end.242
  store i32 -1000000, i32* %score, align 4
  %148 = load i32, i32* @Variant, align 4
  %cmp252 = icmp ne i32 %148, 4
  br i1 %cmp252, label %if.then.253, label %if.end.255

if.then.253:                                      ; preds = %if.end.251
  %arrayidx254 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %moves, i32 0, i64 0
  call void @gen(%struct.move_s* %arrayidx254)
  %149 = load i32, i32* @numb_moves, align 4
  store i32 %149, i32* %num_moves, align 4
  br label %if.end.255

if.end.255:                                       ; preds = %if.then.253, %if.end.251
  %150 = load i32, i32* @cfg_onerep, align 4
  %tobool256 = icmp ne i32 %150, 0
  br i1 %tobool256, label %land.lhs.true.257, label %if.end.278

land.lhs.true.257:                                ; preds = %if.end.255
  %151 = load i32, i32* %incheck, align 4
  %tobool258 = icmp ne i32 %151, 0
  br i1 %tobool258, label %if.then.259, label %if.end.278

if.then.259:                                      ; preds = %land.lhs.true.257
  %152 = load i32, i32* %num_moves, align 4
  %tobool260 = icmp ne i32 %152, 0
  br i1 %tobool260, label %if.then.261, label %if.end.277

if.then.261:                                      ; preds = %if.then.259
  store i32 0, i32* %i, align 4
  br label %for.cond.262

for.cond.262:                                     ; preds = %for.inc.274, %if.then.261
  %153 = load i32, i32* %i, align 4
  %154 = load i32, i32* %num_moves, align 4
  %cmp263 = icmp slt i32 %153, %154
  br i1 %cmp263, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond.262
  %155 = load i32, i32* %legalmoves, align 4
  %cmp264 = icmp slt i32 %155, 2
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond.262
  %156 = phi i1 [ false, %for.cond.262 ], [ %cmp264, %land.rhs ]
  br i1 %156, label %for.body.265, label %for.end.276

for.body.265:                                     ; preds = %land.end
  %arrayidx266 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %moves, i32 0, i64 0
  %157 = load i32, i32* %i, align 4
  call void @make(%struct.move_s* %arrayidx266, i32 %157)
  %arrayidx267 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %moves, i32 0, i64 0
  %158 = load i32, i32* %i, align 4
  %159 = load i32, i32* %incheck, align 4
  %call268 = call i32 @check_legal(%struct.move_s* %arrayidx267, i32 %158, i32 %159)
  %tobool269 = icmp ne i32 %call268, 0
  br i1 %tobool269, label %if.then.270, label %if.end.272

if.then.270:                                      ; preds = %for.body.265
  %160 = load i32, i32* %legalmoves, align 4
  %inc271 = add nsw i32 %160, 1
  store i32 %inc271, i32* %legalmoves, align 4
  br label %if.end.272

if.end.272:                                       ; preds = %if.then.270, %for.body.265
  %arrayidx273 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %moves, i32 0, i64 0
  %161 = load i32, i32* %i, align 4
  call void @unmake(%struct.move_s* %arrayidx273, i32 %161)
  br label %for.inc.274

for.inc.274:                                      ; preds = %if.end.272
  %162 = load i32, i32* %i, align 4
  %inc275 = add nsw i32 %162, 1
  store i32 %inc275, i32* %i, align 4
  br label %for.cond.262

for.end.276:                                      ; preds = %land.end
  br label %if.end.277

if.end.277:                                       ; preds = %for.end.276, %if.then.259
  br label %if.end.278

if.end.278:                                       ; preds = %if.end.277, %land.lhs.true.257, %if.end.255
  %163 = load i32, i32* @ply, align 4
  %cmp279 = icmp slt i32 %163, 300
  br i1 %cmp279, label %if.then.280, label %if.end.303

if.then.280:                                      ; preds = %if.end.278
  %164 = load i32, i32* @Variant, align 4
  %cmp281 = icmp eq i32 %164, 3
  br i1 %cmp281, label %land.lhs.true.282, label %if.else.289

land.lhs.true.282:                                ; preds = %if.then.280
  %165 = load i32, i32* %num_moves, align 4
  %cmp283 = icmp eq i32 %165, 1
  br i1 %cmp283, label %if.then.284, label %if.else.289

if.then.284:                                      ; preds = %land.lhs.true.282
  %166 = load i32, i32* %depth.addr, align 4
  %inc285 = add nsw i32 %166, 1
  store i32 %inc285, i32* %depth.addr, align 4
  %167 = load i32, i32* @ext_onerep, align 4
  %inc286 = add i32 %167, 1
  store i32 %inc286, i32* @ext_onerep, align 4
  %168 = load i32, i32* @ply, align 4
  %idxprom287 = sext i32 %168 to i64
  %arrayidx288 = getelementptr inbounds [300 x i32], [300 x i32]* @singular, i32 0, i64 %idxprom287
  store i32 1, i32* %arrayidx288, align 4
  br label %if.end.302

if.else.289:                                      ; preds = %land.lhs.true.282, %if.then.280
  %169 = load i32, i32* %legalmoves, align 4
  %cmp290 = icmp eq i32 %169, 1
  br i1 %cmp290, label %land.lhs.true.291, label %if.end.301

land.lhs.true.291:                                ; preds = %if.else.289
  %170 = load i32, i32* @ply, align 4
  %sub292 = sub nsw i32 %170, 2
  %idxprom293 = sext i32 %sub292 to i64
  %arrayidx294 = getelementptr inbounds [300 x i32], [300 x i32]* @singular, i32 0, i64 %idxprom293
  %171 = load i32, i32* %arrayidx294, align 4
  %tobool295 = icmp ne i32 %171, 0
  br i1 %tobool295, label %if.end.301, label %if.then.296

if.then.296:                                      ; preds = %land.lhs.true.291
  %172 = load i32, i32* %depth.addr, align 4
  %inc297 = add nsw i32 %172, 1
  store i32 %inc297, i32* %depth.addr, align 4
  %173 = load i32, i32* @ext_onerep, align 4
  %inc298 = add i32 %173, 1
  store i32 %inc298, i32* @ext_onerep, align 4
  %174 = load i32, i32* @ply, align 4
  %idxprom299 = sext i32 %174 to i64
  %arrayidx300 = getelementptr inbounds [300 x i32], [300 x i32]* @singular, i32 0, i64 %idxprom299
  store i32 1, i32* %arrayidx300, align 4
  br label %if.end.301

if.end.301:                                       ; preds = %if.then.296, %land.lhs.true.291, %if.else.289
  br label %if.end.302

if.end.302:                                       ; preds = %if.end.301, %if.then.284
  br label %if.end.303

if.end.303:                                       ; preds = %if.end.302, %if.end.278
  store i32 1, i32* %first, align 4
  store i32 0, i32* %selective, align 4
  %175 = load i32, i32* @phase, align 4
  %cmp304 = icmp ne i32 %175, 2
  br i1 %cmp304, label %land.lhs.true.305, label %if.end.354

land.lhs.true.305:                                ; preds = %if.end.303
  %176 = load i32, i32* @Variant, align 4
  %cmp306 = icmp ne i32 %176, 3
  br i1 %cmp306, label %land.lhs.true.307, label %if.end.354

land.lhs.true.307:                                ; preds = %land.lhs.true.305
  %177 = load i32, i32* @cfg_futprune, align 4
  %tobool308 = icmp ne i32 %177, 0
  br i1 %tobool308, label %if.then.309, label %if.end.354

if.then.309:                                      ; preds = %land.lhs.true.307
  %178 = load i32, i32* @white_to_move, align 4
  %tobool310 = icmp ne i32 %178, 0
  br i1 %tobool310, label %cond.true.311, label %cond.false.312

cond.true.311:                                    ; preds = %if.then.309
  %179 = load i32, i32* @Material, align 4
  br label %cond.end.314

cond.false.312:                                   ; preds = %if.then.309
  %180 = load i32, i32* @Material, align 4
  %sub313 = sub nsw i32 0, %180
  br label %cond.end.314

cond.end.314:                                     ; preds = %cond.false.312, %cond.true.311
  %cond315 = phi i32 [ %179, %cond.true.311 ], [ %sub313, %cond.false.312 ]
  %add316 = add nsw i32 %cond315, 900
  store i32 %add316, i32* %fscore, align 4
  %181 = load i32, i32* %extend, align 4
  %tobool317 = icmp ne i32 %181, 0
  br i1 %tobool317, label %if.end.323, label %land.lhs.true.318

land.lhs.true.318:                                ; preds = %cond.end.314
  %182 = load i32, i32* %depth.addr, align 4
  %cmp319 = icmp eq i32 %182, 3
  br i1 %cmp319, label %land.lhs.true.320, label %if.end.323

land.lhs.true.320:                                ; preds = %land.lhs.true.318
  %183 = load i32, i32* %fscore, align 4
  %184 = load i32, i32* %alpha.addr, align 4
  %cmp321 = icmp sle i32 %183, %184
  br i1 %cmp321, label %if.then.322, label %if.end.323

if.then.322:                                      ; preds = %land.lhs.true.320
  store i32 2, i32* %depth.addr, align 4
  br label %if.end.323

if.end.323:                                       ; preds = %if.then.322, %land.lhs.true.320, %land.lhs.true.318, %cond.end.314
  %185 = load i32, i32* @white_to_move, align 4
  %tobool324 = icmp ne i32 %185, 0
  br i1 %tobool324, label %cond.true.325, label %cond.false.326

cond.true.325:                                    ; preds = %if.end.323
  %186 = load i32, i32* @Material, align 4
  br label %cond.end.328

cond.false.326:                                   ; preds = %if.end.323
  %187 = load i32, i32* @Material, align 4
  %sub327 = sub nsw i32 0, %187
  br label %cond.end.328

cond.end.328:                                     ; preds = %cond.false.326, %cond.true.325
  %cond329 = phi i32 [ %186, %cond.true.325 ], [ %sub327, %cond.false.326 ]
  %add330 = add nsw i32 %cond329, 500
  store i32 %add330, i32* %fscore, align 4
  %188 = load i32, i32* %extend, align 4
  %tobool331 = icmp ne i32 %188, 0
  br i1 %tobool331, label %if.end.337, label %land.lhs.true.332

land.lhs.true.332:                                ; preds = %cond.end.328
  %189 = load i32, i32* %depth.addr, align 4
  %cmp333 = icmp eq i32 %189, 2
  br i1 %cmp333, label %land.lhs.true.334, label %if.end.337

land.lhs.true.334:                                ; preds = %land.lhs.true.332
  %190 = load i32, i32* %fscore, align 4
  %191 = load i32, i32* %alpha.addr, align 4
  %cmp335 = icmp sle i32 %190, %191
  br i1 %cmp335, label %if.then.336, label %if.end.337

if.then.336:                                      ; preds = %land.lhs.true.334
  store i32 1, i32* %selective, align 4
  %192 = load i32, i32* %fscore, align 4
  store i32 %192, i32* %fmax, align 4
  store i32 %192, i32* %best_score, align 4
  br label %if.end.337

if.end.337:                                       ; preds = %if.then.336, %land.lhs.true.334, %land.lhs.true.332, %cond.end.328
  %193 = load i32, i32* @white_to_move, align 4
  %tobool338 = icmp ne i32 %193, 0
  br i1 %tobool338, label %cond.true.339, label %cond.false.340

cond.true.339:                                    ; preds = %if.end.337
  %194 = load i32, i32* @Material, align 4
  br label %cond.end.342

cond.false.340:                                   ; preds = %if.end.337
  %195 = load i32, i32* @Material, align 4
  %sub341 = sub nsw i32 0, %195
  br label %cond.end.342

cond.end.342:                                     ; preds = %cond.false.340, %cond.true.339
  %cond343 = phi i32 [ %194, %cond.true.339 ], [ %sub341, %cond.false.340 ]
  %196 = load i32, i32* @Variant, align 4
  %cmp344 = icmp eq i32 %196, 2
  %cond345 = select i1 %cmp344, i32 150, i32 200
  %add346 = add nsw i32 %cond343, %cond345
  store i32 %add346, i32* %fscore, align 4
  %197 = load i32, i32* %extend, align 4
  %tobool347 = icmp ne i32 %197, 0
  br i1 %tobool347, label %if.end.353, label %land.lhs.true.348

land.lhs.true.348:                                ; preds = %cond.end.342
  %198 = load i32, i32* %depth.addr, align 4
  %cmp349 = icmp eq i32 %198, 1
  br i1 %cmp349, label %land.lhs.true.350, label %if.end.353

land.lhs.true.350:                                ; preds = %land.lhs.true.348
  %199 = load i32, i32* %fscore, align 4
  %200 = load i32, i32* %alpha.addr, align 4
  %cmp351 = icmp sle i32 %199, %200
  br i1 %cmp351, label %if.then.352, label %if.end.353

if.then.352:                                      ; preds = %land.lhs.true.350
  store i32 1, i32* %selective, align 4
  %201 = load i32, i32* %fscore, align 4
  store i32 %201, i32* %fmax, align 4
  store i32 %201, i32* %best_score, align 4
  br label %if.end.353

if.end.353:                                       ; preds = %if.then.352, %land.lhs.true.350, %land.lhs.true.348, %cond.end.342
  br label %if.end.354

if.end.354:                                       ; preds = %if.end.353, %land.lhs.true.307, %land.lhs.true.305, %if.end.303
  %202 = load i32, i32* %num_moves, align 4
  %cmp355 = icmp sgt i32 %202, 0
  br i1 %cmp355, label %if.then.356, label %if.else.791

if.then.356:                                      ; preds = %if.end.354
  %arrayidx357 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %moves, i32 0, i64 0
  %arrayidx358 = getelementptr inbounds [512 x i32], [512 x i32]* %move_ordering, i32 0, i64 0
  %arrayidx359 = getelementptr inbounds [512 x i32], [512 x i32]* %see_values, i32 0, i64 0
  %203 = load i32, i32* %num_moves, align 4
  %204 = load i32, i32* %best, align 4
  call void @order_moves(%struct.move_s* %arrayidx357, i32* %arrayidx358, i32* %arrayidx359, i32 %203, i32 %204)
  br label %while.cond

while.cond:                                       ; preds = %if.end.790, %if.then.356
  %arrayidx360 = getelementptr inbounds [512 x i32], [512 x i32]* %move_ordering, i32 0, i64 0
  %205 = load i32, i32* %num_moves, align 4
  %call361 = call i32 @remove_one(i32* %i, i32* %arrayidx360, i32 %205)
  %tobool362 = icmp ne i32 %call361, 0
  br i1 %tobool362, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %arrayidx363 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %moves, i32 0, i64 0
  %206 = load i32, i32* %i, align 4
  call void @make(%struct.move_s* %arrayidx363, i32 %206)
  store i32 0, i32* %legal_move, align 4
  %207 = load i32, i32* @hash, align 4
  %208 = load i32, i32* @move_number, align 4
  %209 = load i32, i32* @ply, align 4
  %add364 = add nsw i32 %208, %209
  %sub365 = sub nsw i32 %add364, 1
  %idxprom366 = sext i32 %sub365 to i64
  %arrayidx367 = getelementptr inbounds [600 x i32], [600 x i32]* @hash_history, i32 0, i64 %idxprom366
  store i32 %207, i32* %arrayidx367, align 4
  %210 = load i32, i32* @ply, align 4
  %sub368 = sub nsw i32 %210, 1
  %idxprom369 = sext i32 %sub368 to i64
  %arrayidx370 = getelementptr inbounds [300 x %struct.move_s], [300 x %struct.move_s]* @path, i32 0, i64 %idxprom369
  %211 = load i32, i32* %i, align 4
  %idxprom371 = sext i32 %211 to i64
  %arrayidx372 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %moves, i32 0, i64 %idxprom371
  %212 = bitcast %struct.move_s* %arrayidx370 to i8*
  %213 = bitcast %struct.move_s* %arrayidx372 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %212, i8* %213, i64 24, i32 4, i1 false)
  store i32 0, i32* %extend, align 4
  %arrayidx373 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %moves, i32 0, i64 0
  %214 = load i32, i32* %i, align 4
  %215 = load i32, i32* %incheck, align 4
  %call374 = call i32 @check_legal(%struct.move_s* %arrayidx373, i32 %214, i32 %215)
  %tobool375 = icmp ne i32 %call374, 0
  br i1 %tobool375, label %if.then.376, label %if.end.562

if.then.376:                                      ; preds = %while.body
  %arrayidx377 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %moves, i32 0, i64 0
  %216 = load i32, i32* %i, align 4
  %call378 = call i32 @f_in_check(%struct.move_s* %arrayidx377, i32 %216)
  store i32 %call378, i32* %afterincheck, align 4
  %217 = load i32, i32* %afterincheck, align 4
  %218 = load i32, i32* @ply, align 4
  %idxprom379 = sext i32 %218 to i64
  %arrayidx380 = getelementptr inbounds [300 x i32], [300 x i32]* @checks, i32 0, i64 %idxprom379
  store i32 %217, i32* %arrayidx380, align 4
  %219 = load i32, i32* %afterincheck, align 4
  %tobool381 = icmp ne i32 %219, 0
  br i1 %tobool381, label %if.end.419, label %land.lhs.true.382

land.lhs.true.382:                                ; preds = %if.then.376
  %220 = load i32, i32* @Variant, align 4
  %cmp383 = icmp eq i32 %220, 2
  br i1 %cmp383, label %land.lhs.true.388, label %lor.lhs.false.384

lor.lhs.false.384:                                ; preds = %land.lhs.true.382
  %221 = load i32, i32* @Variant, align 4
  %cmp385 = icmp eq i32 %221, 3
  br i1 %cmp385, label %land.lhs.true.388, label %lor.lhs.false.386

lor.lhs.false.386:                                ; preds = %lor.lhs.false.384
  %222 = load i32, i32* @Variant, align 4
  %cmp387 = icmp eq i32 %222, 4
  br i1 %cmp387, label %land.lhs.true.388, label %if.end.419

land.lhs.true.388:                                ; preds = %lor.lhs.false.386, %lor.lhs.false.384, %land.lhs.true.382
  %223 = load i32, i32* %depth.addr, align 4
  %cmp389 = icmp slt i32 %223, 3
  br i1 %cmp389, label %land.lhs.true.390, label %if.end.419

land.lhs.true.390:                                ; preds = %land.lhs.true.388
  %224 = load i32, i32* %i, align 4
  %idxprom391 = sext i32 %224 to i64
  %arrayidx392 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %moves, i32 0, i64 %idxprom391
  %target = getelementptr inbounds %struct.move_s, %struct.move_s* %arrayidx392, i32 0, i32 1
  %225 = load i32, i32* %target, align 4
  %idxprom393 = sext i32 %225 to i64
  %arrayidx394 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom393
  %226 = load i32, i32* %arrayidx394, align 4
  %cmp395 = icmp eq i32 %226, 1
  br i1 %cmp395, label %land.lhs.true.396, label %lor.lhs.false.403

land.lhs.true.396:                                ; preds = %land.lhs.true.390
  %227 = load i32, i32* %i, align 4
  %idxprom397 = sext i32 %227 to i64
  %arrayidx398 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %moves, i32 0, i64 %idxprom397
  %target399 = getelementptr inbounds %struct.move_s, %struct.move_s* %arrayidx398, i32 0, i32 1
  %228 = load i32, i32* %target399, align 4
  %idxprom400 = sext i32 %228 to i64
  %arrayidx401 = getelementptr inbounds [144 x i32], [144 x i32]* @Xrank, i32 0, i64 %idxprom400
  %229 = load i32, i32* %arrayidx401, align 4
  %cmp402 = icmp sge i32 %229, 6
  br i1 %cmp402, label %if.then.417, label %lor.lhs.false.403

lor.lhs.false.403:                                ; preds = %land.lhs.true.396, %land.lhs.true.390
  %230 = load i32, i32* %i, align 4
  %idxprom404 = sext i32 %230 to i64
  %arrayidx405 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %moves, i32 0, i64 %idxprom404
  %target406 = getelementptr inbounds %struct.move_s, %struct.move_s* %arrayidx405, i32 0, i32 1
  %231 = load i32, i32* %target406, align 4
  %idxprom407 = sext i32 %231 to i64
  %arrayidx408 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom407
  %232 = load i32, i32* %arrayidx408, align 4
  %cmp409 = icmp eq i32 %232, 2
  br i1 %cmp409, label %land.lhs.true.410, label %if.end.419

land.lhs.true.410:                                ; preds = %lor.lhs.false.403
  %233 = load i32, i32* %i, align 4
  %idxprom411 = sext i32 %233 to i64
  %arrayidx412 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %moves, i32 0, i64 %idxprom411
  %target413 = getelementptr inbounds %struct.move_s, %struct.move_s* %arrayidx412, i32 0, i32 1
  %234 = load i32, i32* %target413, align 4
  %idxprom414 = sext i32 %234 to i64
  %arrayidx415 = getelementptr inbounds [144 x i32], [144 x i32]* @Xrank, i32 0, i64 %idxprom414
  %235 = load i32, i32* %arrayidx415, align 4
  %cmp416 = icmp sle i32 %235, 3
  br i1 %cmp416, label %if.then.417, label %if.end.419

if.then.417:                                      ; preds = %land.lhs.true.410, %land.lhs.true.396
  %236 = load i32, i32* %extend, align 4
  %inc418 = add nsw i32 %236, 1
  store i32 %inc418, i32* %extend, align 4
  br label %if.end.419

if.end.419:                                       ; preds = %if.then.417, %land.lhs.true.410, %lor.lhs.false.403, %land.lhs.true.388, %lor.lhs.false.386, %if.then.376
  store i32 0, i32* %dropcut, align 4
  %237 = load i32, i32* %i, align 4
  %idxprom420 = sext i32 %237 to i64
  %arrayidx421 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %moves, i32 0, i64 %idxprom420
  %from = getelementptr inbounds %struct.move_s, %struct.move_s* %arrayidx421, i32 0, i32 0
  %238 = load i32, i32* %from, align 4
  %cmp422 = icmp eq i32 %238, 0
  br i1 %cmp422, label %land.lhs.true.423, label %if.else.436

land.lhs.true.423:                                ; preds = %if.end.419
  %239 = load i32, i32* %depth.addr, align 4
  %cmp424 = icmp sgt i32 %239, 1
  br i1 %cmp424, label %land.lhs.true.425, label %if.else.436

land.lhs.true.425:                                ; preds = %land.lhs.true.423
  %240 = load i32, i32* %afterincheck, align 4
  %cmp426 = icmp eq i32 %240, 0
  br i1 %cmp426, label %land.lhs.true.427, label %if.else.436

land.lhs.true.427:                                ; preds = %land.lhs.true.425
  %241 = load i32, i32* %incheck, align 4
  %cmp428 = icmp eq i32 %241, 0
  br i1 %cmp428, label %land.lhs.true.429, label %if.else.436

land.lhs.true.429:                                ; preds = %land.lhs.true.427
  %242 = load i32, i32* @searching_pv, align 4
  %tobool430 = icmp ne i32 %242, 0
  br i1 %tobool430, label %if.else.436, label %land.lhs.true.431

land.lhs.true.431:                                ; preds = %land.lhs.true.429
  %243 = load i32, i32* @cfg_razordrop, align 4
  %tobool432 = icmp ne i32 %243, 0
  br i1 %tobool432, label %if.then.433, label %if.else.436

if.then.433:                                      ; preds = %land.lhs.true.431
  %244 = load i32, i32* @razor_drop, align 4
  %inc434 = add i32 %244, 1
  store i32 %inc434, i32* @razor_drop, align 4
  %245 = load i32, i32* %extend, align 4
  %dec435 = add nsw i32 %245, -1
  store i32 %dec435, i32* %extend, align 4
  br label %if.end.482

if.else.436:                                      ; preds = %land.lhs.true.431, %land.lhs.true.429, %land.lhs.true.427, %land.lhs.true.425, %land.lhs.true.423, %if.end.419
  %246 = load i32, i32* %i, align 4
  %idxprom437 = sext i32 %246 to i64
  %arrayidx438 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %moves, i32 0, i64 %idxprom437
  %from439 = getelementptr inbounds %struct.move_s, %struct.move_s* %arrayidx438, i32 0, i32 0
  %247 = load i32, i32* %from439, align 4
  %cmp440 = icmp eq i32 %247, 0
  br i1 %cmp440, label %land.lhs.true.441, label %if.end.481

land.lhs.true.441:                                ; preds = %if.else.436
  %248 = load i32, i32* %depth.addr, align 4
  %cmp442 = icmp eq i32 %248, 1
  br i1 %cmp442, label %land.lhs.true.443, label %if.end.481

land.lhs.true.443:                                ; preds = %land.lhs.true.441
  %249 = load i32, i32* %incheck, align 4
  %cmp444 = icmp eq i32 %249, 0
  br i1 %cmp444, label %land.lhs.true.445, label %if.end.481

land.lhs.true.445:                                ; preds = %land.lhs.true.443
  %250 = load i32, i32* @cfg_cutdrop, align 4
  %tobool446 = icmp ne i32 %250, 0
  br i1 %tobool446, label %if.then.447, label %if.end.481

if.then.447:                                      ; preds = %land.lhs.true.445
  %251 = load i32, i32* @white_to_move, align 4
  %tobool448 = icmp ne i32 %251, 0
  br i1 %tobool448, label %if.then.449, label %if.else.464

if.then.449:                                      ; preds = %if.then.447
  %252 = load i32, i32* %i, align 4
  %idxprom450 = sext i32 %252 to i64
  %arrayidx451 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %moves, i32 0, i64 %idxprom450
  %target452 = getelementptr inbounds %struct.move_s, %struct.move_s* %arrayidx451, i32 0, i32 1
  %253 = load i32, i32* %target452, align 4
  %call453 = call i32 @calc_attackers(i32 %253, i32 1)
  %254 = load i32, i32* %i, align 4
  %idxprom454 = sext i32 %254 to i64
  %arrayidx455 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %moves, i32 0, i64 %idxprom454
  %target456 = getelementptr inbounds %struct.move_s, %struct.move_s* %arrayidx455, i32 0, i32 1
  %255 = load i32, i32* %target456, align 4
  %call457 = call i32 @calc_attackers(i32 %255, i32 0)
  %sub458 = sub nsw i32 %call453, %call457
  %cmp459 = icmp sgt i32 %sub458, 0
  %conv = zext i1 %cmp459 to i32
  store i32 %conv, i32* %dropcut, align 4
  %256 = load i32, i32* %dropcut, align 4
  %tobool460 = icmp ne i32 %256, 0
  br i1 %tobool460, label %if.then.461, label %if.end.463

if.then.461:                                      ; preds = %if.then.449
  %257 = load i32, i32* @drop_cuts, align 4
  %inc462 = add i32 %257, 1
  store i32 %inc462, i32* @drop_cuts, align 4
  br label %if.end.463

if.end.463:                                       ; preds = %if.then.461, %if.then.449
  br label %if.end.480

if.else.464:                                      ; preds = %if.then.447
  %258 = load i32, i32* %i, align 4
  %idxprom465 = sext i32 %258 to i64
  %arrayidx466 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %moves, i32 0, i64 %idxprom465
  %target467 = getelementptr inbounds %struct.move_s, %struct.move_s* %arrayidx466, i32 0, i32 1
  %259 = load i32, i32* %target467, align 4
  %call468 = call i32 @calc_attackers(i32 %259, i32 0)
  %260 = load i32, i32* %i, align 4
  %idxprom469 = sext i32 %260 to i64
  %arrayidx470 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %moves, i32 0, i64 %idxprom469
  %target471 = getelementptr inbounds %struct.move_s, %struct.move_s* %arrayidx470, i32 0, i32 1
  %261 = load i32, i32* %target471, align 4
  %call472 = call i32 @calc_attackers(i32 %261, i32 1)
  %sub473 = sub nsw i32 %call468, %call472
  %cmp474 = icmp sgt i32 %sub473, 0
  %conv475 = zext i1 %cmp474 to i32
  store i32 %conv475, i32* %dropcut, align 4
  %262 = load i32, i32* %dropcut, align 4
  %tobool476 = icmp ne i32 %262, 0
  br i1 %tobool476, label %if.then.477, label %if.end.479

if.then.477:                                      ; preds = %if.else.464
  %263 = load i32, i32* @drop_cuts, align 4
  %inc478 = add i32 %263, 1
  store i32 %inc478, i32* @drop_cuts, align 4
  br label %if.end.479

if.end.479:                                       ; preds = %if.then.477, %if.else.464
  br label %if.end.480

if.end.480:                                       ; preds = %if.end.479, %if.end.463
  br label %if.end.481

if.end.481:                                       ; preds = %if.end.480, %land.lhs.true.445, %land.lhs.true.443, %land.lhs.true.441, %if.else.436
  br label %if.end.482

if.end.482:                                       ; preds = %if.end.481, %if.then.433
  %264 = load i32, i32* %dropcut, align 4
  %tobool483 = icmp ne i32 %264, 0
  br i1 %tobool483, label %if.else.558, label %land.lhs.true.484

land.lhs.true.484:                                ; preds = %if.end.482
  %265 = load i32, i32* %selective, align 4
  %tobool485 = icmp ne i32 %265, 0
  br i1 %tobool485, label %lor.lhs.false.486, label %if.then.509

lor.lhs.false.486:                                ; preds = %land.lhs.true.484
  %266 = load i32, i32* %afterincheck, align 4
  %cmp487 = icmp ne i32 %266, 0
  br i1 %cmp487, label %if.then.509, label %lor.lhs.false.489

lor.lhs.false.489:                                ; preds = %lor.lhs.false.486
  %267 = load i32, i32* %fmax, align 4
  %268 = load i32, i32* %i, align 4
  %idxprom490 = sext i32 %268 to i64
  %arrayidx491 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %moves, i32 0, i64 %idxprom490
  %captured492 = getelementptr inbounds %struct.move_s, %struct.move_s* %arrayidx491, i32 0, i32 2
  %269 = load i32, i32* %captured492, align 4
  %idxprom493 = sext i32 %269 to i64
  %arrayidx494 = getelementptr inbounds [14 x i32], [14 x i32]* @material, i32 0, i64 %idxprom493
  %270 = load i32, i32* %arrayidx494, align 4
  %call495 = call i32 @abs(i32 %270) #4
  %271 = load i32, i32* @Variant, align 4
  %cmp496 = icmp eq i32 %271, 2
  br i1 %cmp496, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %lor.lhs.false.489
  %272 = load i32, i32* @Variant, align 4
  %cmp498 = icmp eq i32 %272, 4
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false.489
  %273 = phi i1 [ true, %lor.lhs.false.489 ], [ %cmp498, %lor.rhs ]
  %cond500 = select i1 %273, i32 1, i32 2
  %mul501 = mul nsw i32 %call495, %cond500
  %add502 = add nsw i32 %267, %mul501
  %274 = load i32, i32* %alpha.addr, align 4
  %cmp503 = icmp sgt i32 %add502, %274
  br i1 %cmp503, label %if.then.509, label %lor.lhs.false.505

lor.lhs.false.505:                                ; preds = %lor.end
  %275 = load i32, i32* %i, align 4
  %idxprom506 = sext i32 %275 to i64
  %arrayidx507 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %moves, i32 0, i64 %idxprom506
  %promoted = getelementptr inbounds %struct.move_s, %struct.move_s* %arrayidx507, i32 0, i32 3
  %276 = load i32, i32* %promoted, align 4
  %tobool508 = icmp ne i32 %276, 0
  br i1 %tobool508, label %if.then.509, label %if.else.558

if.then.509:                                      ; preds = %lor.lhs.false.505, %lor.end, %lor.lhs.false.486, %land.lhs.true.484
  %277 = load i32, i32* %first, align 4
  %cmp510 = icmp eq i32 %277, 1
  br i1 %cmp510, label %if.then.512, label %if.else.520

if.then.512:                                      ; preds = %if.then.509
  %278 = load i32, i32* %beta.addr, align 4
  %sub513 = sub nsw i32 0, %278
  %279 = load i32, i32* %alpha.addr, align 4
  %sub514 = sub nsw i32 0, %279
  %280 = load i32, i32* %depth.addr, align 4
  %281 = load i32, i32* %extend, align 4
  %add515 = add nsw i32 %280, %281
  %sub516 = sub nsw i32 %add515, 1
  %call517 = call i32 @search(i32 %sub513, i32 %sub514, i32 %sub516, i32 0)
  %sub518 = sub nsw i32 0, %call517
  store i32 %sub518, i32* %score, align 4
  %282 = load i32, i32* @FULL, align 4
  %inc519 = add i32 %282, 1
  store i32 %inc519, i32* @FULL, align 4
  br label %if.end.557

if.else.520:                                      ; preds = %if.then.509
  %283 = load i32, i32* %alpha.addr, align 4
  %sub521 = sub nsw i32 0, %283
  %sub522 = sub nsw i32 %sub521, 1
  %284 = load i32, i32* %alpha.addr, align 4
  %sub523 = sub nsw i32 0, %284
  %285 = load i32, i32* %depth.addr, align 4
  %286 = load i32, i32* %extend, align 4
  %add524 = add nsw i32 %285, %286
  %sub525 = sub nsw i32 %add524, 1
  %call526 = call i32 @search(i32 %sub522, i32 %sub523, i32 %sub525, i32 0)
  %sub527 = sub nsw i32 0, %call526
  store i32 %sub527, i32* %score, align 4
  %287 = load i32, i32* @PVS, align 4
  %inc528 = add i32 %287, 1
  store i32 %inc528, i32* @PVS, align 4
  %288 = load i32, i32* %score, align 4
  %289 = load i32, i32* %best_score, align 4
  %cmp529 = icmp sgt i32 %288, %289
  br i1 %cmp529, label %land.lhs.true.531, label %if.end.556

land.lhs.true.531:                                ; preds = %if.else.520
  %290 = load i32, i32* @time_exit, align 4
  %tobool532 = icmp ne i32 %290, 0
  br i1 %tobool532, label %if.end.556, label %land.lhs.true.533

land.lhs.true.533:                                ; preds = %land.lhs.true.531
  %291 = load i32, i32* %score, align 4
  %cmp534 = icmp ne i32 %291, -50000
  br i1 %cmp534, label %if.then.536, label %if.end.556

if.then.536:                                      ; preds = %land.lhs.true.533
  %292 = load i32, i32* %score, align 4
  %293 = load i32, i32* %alpha.addr, align 4
  %cmp537 = icmp sgt i32 %292, %293
  br i1 %cmp537, label %land.lhs.true.539, label %if.else.554

land.lhs.true.539:                                ; preds = %if.then.536
  %294 = load i32, i32* %score, align 4
  %295 = load i32, i32* %beta.addr, align 4
  %cmp540 = icmp slt i32 %294, %295
  br i1 %cmp540, label %if.then.542, label %if.else.554

if.then.542:                                      ; preds = %land.lhs.true.539
  %296 = load i32, i32* %beta.addr, align 4
  %sub543 = sub nsw i32 0, %296
  %297 = load i32, i32* %alpha.addr, align 4
  %sub544 = sub nsw i32 0, %297
  %298 = load i32, i32* %depth.addr, align 4
  %299 = load i32, i32* %extend, align 4
  %add545 = add nsw i32 %298, %299
  %sub546 = sub nsw i32 %add545, 1
  %call547 = call i32 @search(i32 %sub543, i32 %sub544, i32 %sub546, i32 0)
  %sub548 = sub nsw i32 0, %call547
  store i32 %sub548, i32* %score, align 4
  %300 = load i32, i32* @PVSF, align 4
  %inc549 = add i32 %300, 1
  store i32 %inc549, i32* @PVSF, align 4
  %301 = load i32, i32* %score, align 4
  %302 = load i32, i32* %best_score, align 4
  %cmp550 = icmp sgt i32 %301, %302
  br i1 %cmp550, label %if.then.552, label %if.end.553

if.then.552:                                      ; preds = %if.then.542
  %303 = load i32, i32* %score, align 4
  store i32 %303, i32* %best_score, align 4
  br label %if.end.553

if.end.553:                                       ; preds = %if.then.552, %if.then.542
  br label %if.end.555

if.else.554:                                      ; preds = %land.lhs.true.539, %if.then.536
  %304 = load i32, i32* %score, align 4
  store i32 %304, i32* %best_score, align 4
  br label %if.end.555

if.end.555:                                       ; preds = %if.else.554, %if.end.553
  br label %if.end.556

if.end.556:                                       ; preds = %if.end.555, %land.lhs.true.533, %land.lhs.true.531, %if.else.520
  br label %if.end.557

if.end.557:                                       ; preds = %if.end.556, %if.then.512
  store i32 1, i32* %legal_move, align 4
  br label %if.end.560

if.else.558:                                      ; preds = %lor.lhs.false.505, %if.end.482
  %305 = load i32, i32* @razor_material, align 4
  %inc559 = add i32 %305, 1
  store i32 %inc559, i32* @razor_material, align 4
  br label %if.end.560

if.end.560:                                       ; preds = %if.else.558, %if.end.557
  %306 = load i32, i32* %legalmoves, align 4
  %inc561 = add nsw i32 %306, 1
  store i32 %inc561, i32* %legalmoves, align 4
  store i32 0, i32* %no_moves, align 4
  br label %if.end.562

if.end.562:                                       ; preds = %if.end.560, %while.body
  %307 = load i32, i32* %score, align 4
  %308 = load i32, i32* %best_score, align 4
  %cmp563 = icmp sgt i32 %307, %308
  br i1 %cmp563, label %land.lhs.true.565, label %if.end.568

land.lhs.true.565:                                ; preds = %if.end.562
  %309 = load i32, i32* %legal_move, align 4
  %tobool566 = icmp ne i32 %309, 0
  br i1 %tobool566, label %if.then.567, label %if.end.568

if.then.567:                                      ; preds = %land.lhs.true.565
  %310 = load i32, i32* %score, align 4
  store i32 %310, i32* %best_score, align 4
  br label %if.end.568

if.end.568:                                       ; preds = %if.then.567, %land.lhs.true.565, %if.end.562
  %arrayidx569 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %moves, i32 0, i64 0
  %311 = load i32, i32* %i, align 4
  call void @unmake(%struct.move_s* %arrayidx569, i32 %311)
  %312 = load i32, i32* @time_exit, align 4
  %tobool570 = icmp ne i32 %312, 0
  br i1 %tobool570, label %if.then.571, label %if.end.572

if.then.571:                                      ; preds = %if.end.568
  store i32 0, i32* %retval
  br label %return

if.end.572:                                       ; preds = %if.end.568
  %313 = load i32, i32* %score, align 4
  %314 = load i32, i32* %alpha.addr, align 4
  %cmp573 = icmp sgt i32 %313, %314
  br i1 %cmp573, label %land.lhs.true.575, label %if.end.787

land.lhs.true.575:                                ; preds = %if.end.572
  %315 = load i32, i32* %legal_move, align 4
  %tobool576 = icmp ne i32 %315, 0
  br i1 %tobool576, label %if.then.577, label %if.end.787

if.then.577:                                      ; preds = %land.lhs.true.575
  %316 = load i32, i32* %score, align 4
  %317 = load i32, i32* %beta.addr, align 4
  %cmp578 = icmp sge i32 %316, %317
  br i1 %cmp578, label %if.then.580, label %if.end.755

if.then.580:                                      ; preds = %if.then.577
  %318 = load i32, i32* %i, align 4
  %idxprom581 = sext i32 %318 to i64
  %arrayidx582 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %moves, i32 0, i64 %idxprom581
  %target583 = getelementptr inbounds %struct.move_s, %struct.move_s* %arrayidx582, i32 0, i32 1
  %319 = load i32, i32* %target583, align 4
  %idxprom584 = sext i32 %319 to i64
  %320 = load i32, i32* %i, align 4
  %idxprom585 = sext i32 %320 to i64
  %arrayidx586 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %moves, i32 0, i64 %idxprom585
  %from587 = getelementptr inbounds %struct.move_s, %struct.move_s* %arrayidx586, i32 0, i32 0
  %321 = load i32, i32* %from587, align 4
  %idxprom588 = sext i32 %321 to i64
  %arrayidx589 = getelementptr inbounds [144 x [144 x i32]], [144 x [144 x i32]]* @history_h, i32 0, i64 %idxprom588
  %arrayidx590 = getelementptr inbounds [144 x i32], [144 x i32]* %arrayidx589, i32 0, i64 %idxprom584
  %322 = load i32, i32* %arrayidx590, align 4
  %inc591 = add i32 %322, 1
  store i32 %inc591, i32* %arrayidx590, align 4
  %323 = load i32, i32* %i, align 4
  %idxprom592 = sext i32 %323 to i64
  %arrayidx593 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %moves, i32 0, i64 %idxprom592
  %captured594 = getelementptr inbounds %struct.move_s, %struct.move_s* %arrayidx593, i32 0, i32 2
  %324 = load i32, i32* %captured594, align 4
  %cmp595 = icmp eq i32 %324, 13
  br i1 %cmp595, label %if.then.597, label %if.end.748

if.then.597:                                      ; preds = %if.then.580
  %325 = load i32, i32* %i, align 4
  %idxprom598 = sext i32 %325 to i64
  %arrayidx599 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %moves, i32 0, i64 %idxprom598
  %from600 = getelementptr inbounds %struct.move_s, %struct.move_s* %arrayidx599, i32 0, i32 0
  %326 = load i32, i32* %from600, align 4
  %327 = load i32, i32* @ply, align 4
  %idxprom601 = sext i32 %327 to i64
  %arrayidx602 = getelementptr inbounds [300 x %struct.move_s], [300 x %struct.move_s]* @killer1, i32 0, i64 %idxprom601
  %from603 = getelementptr inbounds %struct.move_s, %struct.move_s* %arrayidx602, i32 0, i32 0
  %328 = load i32, i32* %from603, align 4
  %cmp604 = icmp eq i32 %326, %328
  br i1 %cmp604, label %land.lhs.true.606, label %if.else.628

land.lhs.true.606:                                ; preds = %if.then.597
  %329 = load i32, i32* %i, align 4
  %idxprom607 = sext i32 %329 to i64
  %arrayidx608 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %moves, i32 0, i64 %idxprom607
  %target609 = getelementptr inbounds %struct.move_s, %struct.move_s* %arrayidx608, i32 0, i32 1
  %330 = load i32, i32* %target609, align 4
  %331 = load i32, i32* @ply, align 4
  %idxprom610 = sext i32 %331 to i64
  %arrayidx611 = getelementptr inbounds [300 x %struct.move_s], [300 x %struct.move_s]* @killer1, i32 0, i64 %idxprom610
  %target612 = getelementptr inbounds %struct.move_s, %struct.move_s* %arrayidx611, i32 0, i32 1
  %332 = load i32, i32* %target612, align 4
  %cmp613 = icmp eq i32 %330, %332
  br i1 %cmp613, label %land.lhs.true.615, label %if.else.628

land.lhs.true.615:                                ; preds = %land.lhs.true.606
  %333 = load i32, i32* %i, align 4
  %idxprom616 = sext i32 %333 to i64
  %arrayidx617 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %moves, i32 0, i64 %idxprom616
  %promoted618 = getelementptr inbounds %struct.move_s, %struct.move_s* %arrayidx617, i32 0, i32 3
  %334 = load i32, i32* %promoted618, align 4
  %335 = load i32, i32* @ply, align 4
  %idxprom619 = sext i32 %335 to i64
  %arrayidx620 = getelementptr inbounds [300 x %struct.move_s], [300 x %struct.move_s]* @killer1, i32 0, i64 %idxprom619
  %promoted621 = getelementptr inbounds %struct.move_s, %struct.move_s* %arrayidx620, i32 0, i32 3
  %336 = load i32, i32* %promoted621, align 4
  %cmp622 = icmp eq i32 %334, %336
  br i1 %cmp622, label %if.then.624, label %if.else.628

if.then.624:                                      ; preds = %land.lhs.true.615
  %337 = load i32, i32* @ply, align 4
  %idxprom625 = sext i32 %337 to i64
  %arrayidx626 = getelementptr inbounds [300 x i32], [300 x i32]* @killer_scores, i32 0, i64 %idxprom625
  %338 = load i32, i32* %arrayidx626, align 4
  %inc627 = add nsw i32 %338, 1
  store i32 %inc627, i32* %arrayidx626, align 4
  br label %if.end.747

if.else.628:                                      ; preds = %land.lhs.true.615, %land.lhs.true.606, %if.then.597
  %339 = load i32, i32* %i, align 4
  %idxprom629 = sext i32 %339 to i64
  %arrayidx630 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %moves, i32 0, i64 %idxprom629
  %from631 = getelementptr inbounds %struct.move_s, %struct.move_s* %arrayidx630, i32 0, i32 0
  %340 = load i32, i32* %from631, align 4
  %341 = load i32, i32* @ply, align 4
  %idxprom632 = sext i32 %341 to i64
  %arrayidx633 = getelementptr inbounds [300 x %struct.move_s], [300 x %struct.move_s]* @killer2, i32 0, i64 %idxprom632
  %from634 = getelementptr inbounds %struct.move_s, %struct.move_s* %arrayidx633, i32 0, i32 0
  %342 = load i32, i32* %from634, align 4
  %cmp635 = icmp eq i32 %340, %342
  br i1 %cmp635, label %land.lhs.true.637, label %if.else.683

land.lhs.true.637:                                ; preds = %if.else.628
  %343 = load i32, i32* %i, align 4
  %idxprom638 = sext i32 %343 to i64
  %arrayidx639 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %moves, i32 0, i64 %idxprom638
  %target640 = getelementptr inbounds %struct.move_s, %struct.move_s* %arrayidx639, i32 0, i32 1
  %344 = load i32, i32* %target640, align 4
  %345 = load i32, i32* @ply, align 4
  %idxprom641 = sext i32 %345 to i64
  %arrayidx642 = getelementptr inbounds [300 x %struct.move_s], [300 x %struct.move_s]* @killer2, i32 0, i64 %idxprom641
  %target643 = getelementptr inbounds %struct.move_s, %struct.move_s* %arrayidx642, i32 0, i32 1
  %346 = load i32, i32* %target643, align 4
  %cmp644 = icmp eq i32 %344, %346
  br i1 %cmp644, label %land.lhs.true.646, label %if.else.683

land.lhs.true.646:                                ; preds = %land.lhs.true.637
  %347 = load i32, i32* %i, align 4
  %idxprom647 = sext i32 %347 to i64
  %arrayidx648 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %moves, i32 0, i64 %idxprom647
  %promoted649 = getelementptr inbounds %struct.move_s, %struct.move_s* %arrayidx648, i32 0, i32 3
  %348 = load i32, i32* %promoted649, align 4
  %349 = load i32, i32* @ply, align 4
  %idxprom650 = sext i32 %349 to i64
  %arrayidx651 = getelementptr inbounds [300 x %struct.move_s], [300 x %struct.move_s]* @killer2, i32 0, i64 %idxprom650
  %promoted652 = getelementptr inbounds %struct.move_s, %struct.move_s* %arrayidx651, i32 0, i32 3
  %350 = load i32, i32* %promoted652, align 4
  %cmp653 = icmp eq i32 %348, %350
  br i1 %cmp653, label %if.then.655, label %if.else.683

if.then.655:                                      ; preds = %land.lhs.true.646
  %351 = load i32, i32* @ply, align 4
  %idxprom656 = sext i32 %351 to i64
  %arrayidx657 = getelementptr inbounds [300 x i32], [300 x i32]* @killer_scores2, i32 0, i64 %idxprom656
  %352 = load i32, i32* %arrayidx657, align 4
  %inc658 = add nsw i32 %352, 1
  store i32 %inc658, i32* %arrayidx657, align 4
  %353 = load i32, i32* @ply, align 4
  %idxprom659 = sext i32 %353 to i64
  %arrayidx660 = getelementptr inbounds [300 x i32], [300 x i32]* @killer_scores2, i32 0, i64 %idxprom659
  %354 = load i32, i32* %arrayidx660, align 4
  %355 = load i32, i32* @ply, align 4
  %idxprom661 = sext i32 %355 to i64
  %arrayidx662 = getelementptr inbounds [300 x i32], [300 x i32]* @killer_scores, i32 0, i64 %idxprom661
  %356 = load i32, i32* %arrayidx662, align 4
  %cmp663 = icmp sgt i32 %354, %356
  br i1 %cmp663, label %if.then.665, label %if.end.682

if.then.665:                                      ; preds = %if.then.655
  %357 = load i32, i32* @ply, align 4
  %idxprom666 = sext i32 %357 to i64
  %arrayidx667 = getelementptr inbounds [300 x %struct.move_s], [300 x %struct.move_s]* @killer1, i32 0, i64 %idxprom666
  %358 = bitcast %struct.move_s* %kswap to i8*
  %359 = bitcast %struct.move_s* %arrayidx667 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %358, i8* %359, i64 24, i32 4, i1 false)
  %360 = load i32, i32* @ply, align 4
  %idxprom668 = sext i32 %360 to i64
  %arrayidx669 = getelementptr inbounds [300 x %struct.move_s], [300 x %struct.move_s]* @killer1, i32 0, i64 %idxprom668
  %361 = load i32, i32* @ply, align 4
  %idxprom670 = sext i32 %361 to i64
  %arrayidx671 = getelementptr inbounds [300 x %struct.move_s], [300 x %struct.move_s]* @killer2, i32 0, i64 %idxprom670
  %362 = bitcast %struct.move_s* %arrayidx669 to i8*
  %363 = bitcast %struct.move_s* %arrayidx671 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %362, i8* %363, i64 24, i32 4, i1 false)
  %364 = load i32, i32* @ply, align 4
  %idxprom672 = sext i32 %364 to i64
  %arrayidx673 = getelementptr inbounds [300 x %struct.move_s], [300 x %struct.move_s]* @killer2, i32 0, i64 %idxprom672
  %365 = bitcast %struct.move_s* %arrayidx673 to i8*
  %366 = bitcast %struct.move_s* %kswap to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %365, i8* %366, i64 24, i32 4, i1 false)
  %367 = load i32, i32* @ply, align 4
  %idxprom674 = sext i32 %367 to i64
  %arrayidx675 = getelementptr inbounds [300 x i32], [300 x i32]* @killer_scores, i32 0, i64 %idxprom674
  %368 = load i32, i32* %arrayidx675, align 4
  store i32 %368, i32* %ksswap, align 4
  %369 = load i32, i32* @ply, align 4
  %idxprom676 = sext i32 %369 to i64
  %arrayidx677 = getelementptr inbounds [300 x i32], [300 x i32]* @killer_scores2, i32 0, i64 %idxprom676
  %370 = load i32, i32* %arrayidx677, align 4
  %371 = load i32, i32* @ply, align 4
  %idxprom678 = sext i32 %371 to i64
  %arrayidx679 = getelementptr inbounds [300 x i32], [300 x i32]* @killer_scores, i32 0, i64 %idxprom678
  store i32 %370, i32* %arrayidx679, align 4
  %372 = load i32, i32* %ksswap, align 4
  %373 = load i32, i32* @ply, align 4
  %idxprom680 = sext i32 %373 to i64
  %arrayidx681 = getelementptr inbounds [300 x i32], [300 x i32]* @killer_scores2, i32 0, i64 %idxprom680
  store i32 %372, i32* %arrayidx681, align 4
  br label %if.end.682

if.end.682:                                       ; preds = %if.then.665, %if.then.655
  br label %if.end.746

if.else.683:                                      ; preds = %land.lhs.true.646, %land.lhs.true.637, %if.else.628
  %374 = load i32, i32* %i, align 4
  %idxprom684 = sext i32 %374 to i64
  %arrayidx685 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %moves, i32 0, i64 %idxprom684
  %from686 = getelementptr inbounds %struct.move_s, %struct.move_s* %arrayidx685, i32 0, i32 0
  %375 = load i32, i32* %from686, align 4
  %376 = load i32, i32* @ply, align 4
  %idxprom687 = sext i32 %376 to i64
  %arrayidx688 = getelementptr inbounds [300 x %struct.move_s], [300 x %struct.move_s]* @killer3, i32 0, i64 %idxprom687
  %from689 = getelementptr inbounds %struct.move_s, %struct.move_s* %arrayidx688, i32 0, i32 0
  %377 = load i32, i32* %from689, align 4
  %cmp690 = icmp eq i32 %375, %377
  br i1 %cmp690, label %land.lhs.true.692, label %if.else.738

land.lhs.true.692:                                ; preds = %if.else.683
  %378 = load i32, i32* %i, align 4
  %idxprom693 = sext i32 %378 to i64
  %arrayidx694 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %moves, i32 0, i64 %idxprom693
  %target695 = getelementptr inbounds %struct.move_s, %struct.move_s* %arrayidx694, i32 0, i32 1
  %379 = load i32, i32* %target695, align 4
  %380 = load i32, i32* @ply, align 4
  %idxprom696 = sext i32 %380 to i64
  %arrayidx697 = getelementptr inbounds [300 x %struct.move_s], [300 x %struct.move_s]* @killer3, i32 0, i64 %idxprom696
  %target698 = getelementptr inbounds %struct.move_s, %struct.move_s* %arrayidx697, i32 0, i32 1
  %381 = load i32, i32* %target698, align 4
  %cmp699 = icmp eq i32 %379, %381
  br i1 %cmp699, label %land.lhs.true.701, label %if.else.738

land.lhs.true.701:                                ; preds = %land.lhs.true.692
  %382 = load i32, i32* %i, align 4
  %idxprom702 = sext i32 %382 to i64
  %arrayidx703 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %moves, i32 0, i64 %idxprom702
  %promoted704 = getelementptr inbounds %struct.move_s, %struct.move_s* %arrayidx703, i32 0, i32 3
  %383 = load i32, i32* %promoted704, align 4
  %384 = load i32, i32* @ply, align 4
  %idxprom705 = sext i32 %384 to i64
  %arrayidx706 = getelementptr inbounds [300 x %struct.move_s], [300 x %struct.move_s]* @killer3, i32 0, i64 %idxprom705
  %promoted707 = getelementptr inbounds %struct.move_s, %struct.move_s* %arrayidx706, i32 0, i32 3
  %385 = load i32, i32* %promoted707, align 4
  %cmp708 = icmp eq i32 %383, %385
  br i1 %cmp708, label %if.then.710, label %if.else.738

if.then.710:                                      ; preds = %land.lhs.true.701
  %386 = load i32, i32* @ply, align 4
  %idxprom711 = sext i32 %386 to i64
  %arrayidx712 = getelementptr inbounds [300 x i32], [300 x i32]* @killer_scores3, i32 0, i64 %idxprom711
  %387 = load i32, i32* %arrayidx712, align 4
  %inc713 = add nsw i32 %387, 1
  store i32 %inc713, i32* %arrayidx712, align 4
  %388 = load i32, i32* @ply, align 4
  %idxprom714 = sext i32 %388 to i64
  %arrayidx715 = getelementptr inbounds [300 x i32], [300 x i32]* @killer_scores3, i32 0, i64 %idxprom714
  %389 = load i32, i32* %arrayidx715, align 4
  %390 = load i32, i32* @ply, align 4
  %idxprom716 = sext i32 %390 to i64
  %arrayidx717 = getelementptr inbounds [300 x i32], [300 x i32]* @killer_scores2, i32 0, i64 %idxprom716
  %391 = load i32, i32* %arrayidx717, align 4
  %cmp718 = icmp sgt i32 %389, %391
  br i1 %cmp718, label %if.then.720, label %if.end.737

if.then.720:                                      ; preds = %if.then.710
  %392 = load i32, i32* @ply, align 4
  %idxprom721 = sext i32 %392 to i64
  %arrayidx722 = getelementptr inbounds [300 x %struct.move_s], [300 x %struct.move_s]* @killer2, i32 0, i64 %idxprom721
  %393 = bitcast %struct.move_s* %kswap to i8*
  %394 = bitcast %struct.move_s* %arrayidx722 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %393, i8* %394, i64 24, i32 4, i1 false)
  %395 = load i32, i32* @ply, align 4
  %idxprom723 = sext i32 %395 to i64
  %arrayidx724 = getelementptr inbounds [300 x %struct.move_s], [300 x %struct.move_s]* @killer2, i32 0, i64 %idxprom723
  %396 = load i32, i32* @ply, align 4
  %idxprom725 = sext i32 %396 to i64
  %arrayidx726 = getelementptr inbounds [300 x %struct.move_s], [300 x %struct.move_s]* @killer3, i32 0, i64 %idxprom725
  %397 = bitcast %struct.move_s* %arrayidx724 to i8*
  %398 = bitcast %struct.move_s* %arrayidx726 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %397, i8* %398, i64 24, i32 4, i1 false)
  %399 = load i32, i32* @ply, align 4
  %idxprom727 = sext i32 %399 to i64
  %arrayidx728 = getelementptr inbounds [300 x %struct.move_s], [300 x %struct.move_s]* @killer3, i32 0, i64 %idxprom727
  %400 = bitcast %struct.move_s* %arrayidx728 to i8*
  %401 = bitcast %struct.move_s* %kswap to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %400, i8* %401, i64 24, i32 4, i1 false)
  %402 = load i32, i32* @ply, align 4
  %idxprom729 = sext i32 %402 to i64
  %arrayidx730 = getelementptr inbounds [300 x i32], [300 x i32]* @killer_scores2, i32 0, i64 %idxprom729
  %403 = load i32, i32* %arrayidx730, align 4
  store i32 %403, i32* %ksswap, align 4
  %404 = load i32, i32* @ply, align 4
  %idxprom731 = sext i32 %404 to i64
  %arrayidx732 = getelementptr inbounds [300 x i32], [300 x i32]* @killer_scores3, i32 0, i64 %idxprom731
  %405 = load i32, i32* %arrayidx732, align 4
  %406 = load i32, i32* @ply, align 4
  %idxprom733 = sext i32 %406 to i64
  %arrayidx734 = getelementptr inbounds [300 x i32], [300 x i32]* @killer_scores2, i32 0, i64 %idxprom733
  store i32 %405, i32* %arrayidx734, align 4
  %407 = load i32, i32* %ksswap, align 4
  %408 = load i32, i32* @ply, align 4
  %idxprom735 = sext i32 %408 to i64
  %arrayidx736 = getelementptr inbounds [300 x i32], [300 x i32]* @killer_scores3, i32 0, i64 %idxprom735
  store i32 %407, i32* %arrayidx736, align 4
  br label %if.end.737

if.end.737:                                       ; preds = %if.then.720, %if.then.710
  br label %if.end.745

if.else.738:                                      ; preds = %land.lhs.true.701, %land.lhs.true.692, %if.else.683
  %409 = load i32, i32* @ply, align 4
  %idxprom739 = sext i32 %409 to i64
  %arrayidx740 = getelementptr inbounds [300 x i32], [300 x i32]* @killer_scores3, i32 0, i64 %idxprom739
  store i32 1, i32* %arrayidx740, align 4
  %410 = load i32, i32* @ply, align 4
  %idxprom741 = sext i32 %410 to i64
  %arrayidx742 = getelementptr inbounds [300 x %struct.move_s], [300 x %struct.move_s]* @killer3, i32 0, i64 %idxprom741
  %411 = load i32, i32* %i, align 4
  %idxprom743 = sext i32 %411 to i64
  %arrayidx744 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %moves, i32 0, i64 %idxprom743
  %412 = bitcast %struct.move_s* %arrayidx742 to i8*
  %413 = bitcast %struct.move_s* %arrayidx744 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %412, i8* %413, i64 24, i32 4, i1 false)
  br label %if.end.745

if.end.745:                                       ; preds = %if.else.738, %if.end.737
  br label %if.end.746

if.end.746:                                       ; preds = %if.end.745, %if.end.682
  br label %if.end.747

if.end.747:                                       ; preds = %if.end.746, %if.then.624
  br label %if.end.748

if.end.748:                                       ; preds = %if.end.747, %if.then.580
  %414 = load i32, i32* %first, align 4
  %cmp749 = icmp eq i32 %414, 1
  br i1 %cmp749, label %if.then.751, label %if.end.753

if.then.751:                                      ; preds = %if.end.748
  %415 = load i32, i32* @FHF, align 4
  %inc752 = add i32 %415, 1
  store i32 %inc752, i32* @FHF, align 4
  br label %if.end.753

if.end.753:                                       ; preds = %if.then.751, %if.end.748
  %416 = load i32, i32* @FH, align 4
  %inc754 = add i32 %416, 1
  store i32 %inc754, i32* @FH, align 4
  %417 = load i32, i32* %score, align 4
  %418 = load i32, i32* %originalalpha, align 4
  %419 = load i32, i32* %beta.addr, align 4
  %420 = load i32, i32* %i, align 4
  %421 = load i32, i32* %threat, align 4
  %422 = load i32, i32* %depth.addr, align 4
  call void @StoreTT(i32 %417, i32 %418, i32 %419, i32 %420, i32 %421, i32 %422)
  %423 = load i32, i32* %score, align 4
  store i32 %423, i32* %retval
  br label %return

if.end.755:                                       ; preds = %if.then.577
  %424 = load i32, i32* %score, align 4
  store i32 %424, i32* %alpha.addr, align 4
  %425 = load i32, i32* %i, align 4
  store i32 %425, i32* %sbest, align 4
  %426 = load i32, i32* @ply, align 4
  %idxprom756 = sext i32 %426 to i64
  %427 = load i32, i32* @ply, align 4
  %idxprom757 = sext i32 %427 to i64
  %arrayidx758 = getelementptr inbounds [300 x [300 x %struct.move_s]], [300 x [300 x %struct.move_s]]* @pv, i32 0, i64 %idxprom757
  %arrayidx759 = getelementptr inbounds [300 x %struct.move_s], [300 x %struct.move_s]* %arrayidx758, i32 0, i64 %idxprom756
  %428 = load i32, i32* %i, align 4
  %idxprom760 = sext i32 %428 to i64
  %arrayidx761 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %moves, i32 0, i64 %idxprom760
  %429 = bitcast %struct.move_s* %arrayidx759 to i8*
  %430 = bitcast %struct.move_s* %arrayidx761 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %429, i8* %430, i64 24, i32 4, i1 false)
  %431 = load i32, i32* @ply, align 4
  %add762 = add nsw i32 %431, 1
  store i32 %add762, i32* %j, align 4
  br label %for.cond.763

for.cond.763:                                     ; preds = %for.inc.779, %if.end.755
  %432 = load i32, i32* %j, align 4
  %433 = load i32, i32* @ply, align 4
  %add764 = add nsw i32 %433, 1
  %idxprom765 = sext i32 %add764 to i64
  %arrayidx766 = getelementptr inbounds [300 x i32], [300 x i32]* @pv_length, i32 0, i64 %idxprom765
  %434 = load i32, i32* %arrayidx766, align 4
  %cmp767 = icmp slt i32 %432, %434
  br i1 %cmp767, label %for.body.769, label %for.end.781

for.body.769:                                     ; preds = %for.cond.763
  %435 = load i32, i32* %j, align 4
  %idxprom770 = sext i32 %435 to i64
  %436 = load i32, i32* @ply, align 4
  %idxprom771 = sext i32 %436 to i64
  %arrayidx772 = getelementptr inbounds [300 x [300 x %struct.move_s]], [300 x [300 x %struct.move_s]]* @pv, i32 0, i64 %idxprom771
  %arrayidx773 = getelementptr inbounds [300 x %struct.move_s], [300 x %struct.move_s]* %arrayidx772, i32 0, i64 %idxprom770
  %437 = load i32, i32* %j, align 4
  %idxprom774 = sext i32 %437 to i64
  %438 = load i32, i32* @ply, align 4
  %add775 = add nsw i32 %438, 1
  %idxprom776 = sext i32 %add775 to i64
  %arrayidx777 = getelementptr inbounds [300 x [300 x %struct.move_s]], [300 x [300 x %struct.move_s]]* @pv, i32 0, i64 %idxprom776
  %arrayidx778 = getelementptr inbounds [300 x %struct.move_s], [300 x %struct.move_s]* %arrayidx777, i32 0, i64 %idxprom774
  %439 = bitcast %struct.move_s* %arrayidx773 to i8*
  %440 = bitcast %struct.move_s* %arrayidx778 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %439, i8* %440, i64 24, i32 4, i1 false)
  br label %for.inc.779

for.inc.779:                                      ; preds = %for.body.769
  %441 = load i32, i32* %j, align 4
  %inc780 = add nsw i32 %441, 1
  store i32 %inc780, i32* %j, align 4
  br label %for.cond.763

for.end.781:                                      ; preds = %for.cond.763
  %442 = load i32, i32* @ply, align 4
  %add782 = add nsw i32 %442, 1
  %idxprom783 = sext i32 %add782 to i64
  %arrayidx784 = getelementptr inbounds [300 x i32], [300 x i32]* @pv_length, i32 0, i64 %idxprom783
  %443 = load i32, i32* %arrayidx784, align 4
  %444 = load i32, i32* @ply, align 4
  %idxprom785 = sext i32 %444 to i64
  %arrayidx786 = getelementptr inbounds [300 x i32], [300 x i32]* @pv_length, i32 0, i64 %idxprom785
  store i32 %443, i32* %arrayidx786, align 4
  br label %if.end.787

if.end.787:                                       ; preds = %for.end.781, %land.lhs.true.575, %if.end.572
  %445 = load i32, i32* %legal_move, align 4
  %tobool788 = icmp ne i32 %445, 0
  br i1 %tobool788, label %if.then.789, label %if.end.790

if.then.789:                                      ; preds = %if.end.787
  store i32 0, i32* %first, align 4
  br label %if.end.790

if.end.790:                                       ; preds = %if.then.789, %if.end.787
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %if.end.794

if.else.791:                                      ; preds = %if.end.354
  %446 = load i32, i32* @ply, align 4
  %sub792 = sub nsw i32 1000000, %446
  %447 = load i32, i32* %originalalpha, align 4
  %448 = load i32, i32* %beta.addr, align 4
  %449 = load i32, i32* %threat, align 4
  %450 = load i32, i32* %depth.addr, align 4
  call void @StoreTT(i32 %sub792, i32 %447, i32 %448, i32 0, i32 %449, i32 %450)
  %451 = load i32, i32* @ply, align 4
  %sub793 = sub nsw i32 1000000, %451
  store i32 %sub793, i32* %retval
  br label %return

if.end.794:                                       ; preds = %while.end
  %452 = load i32, i32* %no_moves, align 4
  %tobool795 = icmp ne i32 %452, 0
  br i1 %tobool795, label %if.then.796, label %if.else.812

if.then.796:                                      ; preds = %if.end.794
  %453 = load i32, i32* @Variant, align 4
  %cmp797 = icmp ne i32 %453, 4
  br i1 %cmp797, label %land.lhs.true.799, label %if.else.809

land.lhs.true.799:                                ; preds = %if.then.796
  %454 = load i32, i32* @Variant, align 4
  %cmp800 = icmp ne i32 %454, 3
  br i1 %cmp800, label %if.then.802, label %if.else.809

if.then.802:                                      ; preds = %land.lhs.true.799
  %call803 = call i32 @in_check()
  %tobool804 = icmp ne i32 %call803, 0
  br i1 %tobool804, label %if.then.805, label %if.else.808

if.then.805:                                      ; preds = %if.then.802
  %455 = load i32, i32* @ply, align 4
  %add806 = add nsw i32 -1000000, %455
  %456 = load i32, i32* %originalalpha, align 4
  %457 = load i32, i32* %beta.addr, align 4
  %458 = load i32, i32* %threat, align 4
  %459 = load i32, i32* %depth.addr, align 4
  call void @StoreTT(i32 %add806, i32 %456, i32 %457, i32 0, i32 %458, i32 %459)
  %460 = load i32, i32* @ply, align 4
  %add807 = add nsw i32 -1000000, %460
  store i32 %add807, i32* %retval
  br label %return

if.else.808:                                      ; preds = %if.then.802
  %461 = load i32, i32* %originalalpha, align 4
  %462 = load i32, i32* %beta.addr, align 4
  %463 = load i32, i32* %threat, align 4
  %464 = load i32, i32* %depth.addr, align 4
  call void @StoreTT(i32 0, i32 %461, i32 %462, i32 0, i32 %463, i32 %464)
  store i32 0, i32* %retval
  br label %return

if.else.809:                                      ; preds = %land.lhs.true.799, %if.then.796
  %465 = load i32, i32* @ply, align 4
  %sub810 = sub nsw i32 1000000, %465
  %466 = load i32, i32* %originalalpha, align 4
  %467 = load i32, i32* %beta.addr, align 4
  %468 = load i32, i32* %threat, align 4
  %469 = load i32, i32* %depth.addr, align 4
  call void @StoreTT(i32 %sub810, i32 %466, i32 %467, i32 0, i32 %468, i32 %469)
  %470 = load i32, i32* @ply, align 4
  %sub811 = sub nsw i32 1000000, %470
  store i32 %sub811, i32* %retval
  br label %return

if.else.812:                                      ; preds = %if.end.794
  %471 = load i32, i32* @fifty, align 4
  %cmp813 = icmp sgt i32 %471, 100
  br i1 %cmp813, label %if.then.815, label %if.end.816

if.then.815:                                      ; preds = %if.else.812
  store i32 0, i32* %retval
  br label %return

if.end.816:                                       ; preds = %if.else.812
  br label %if.end.817

if.end.817:                                       ; preds = %if.end.816
  %472 = load i32, i32* %sbest, align 4
  %cmp818 = icmp eq i32 %472, -1
  br i1 %cmp818, label %if.then.820, label %if.end.821

if.then.820:                                      ; preds = %if.end.817
  store i32 500, i32* %sbest, align 4
  br label %if.end.821

if.end.821:                                       ; preds = %if.then.820, %if.end.817
  %473 = load i32, i32* %best_score, align 4
  %474 = load i32, i32* %originalalpha, align 4
  %cmp822 = icmp sle i32 %473, %474
  br i1 %cmp822, label %if.then.824, label %if.else.828

if.then.824:                                      ; preds = %if.end.821
  %475 = load i32, i32* %selective, align 4
  %tobool825 = icmp ne i32 %475, 0
  br i1 %tobool825, label %if.end.827, label %if.then.826

if.then.826:                                      ; preds = %if.then.824
  %476 = load i32, i32* %best_score, align 4
  %477 = load i32, i32* %originalalpha, align 4
  %478 = load i32, i32* %beta.addr, align 4
  %479 = load i32, i32* %sbest, align 4
  %480 = load i32, i32* %threat, align 4
  %481 = load i32, i32* %depth.addr, align 4
  call void @StoreTT(i32 %476, i32 %477, i32 %478, i32 %479, i32 %480, i32 %481)
  br label %if.end.827

if.end.827:                                       ; preds = %if.then.826, %if.then.824
  br label %if.end.833

if.else.828:                                      ; preds = %if.end.821
  %482 = load i32, i32* %selective, align 4
  %tobool829 = icmp ne i32 %482, 0
  br i1 %tobool829, label %if.else.831, label %if.then.830

if.then.830:                                      ; preds = %if.else.828
  %483 = load i32, i32* %best_score, align 4
  %484 = load i32, i32* %originalalpha, align 4
  %485 = load i32, i32* %beta.addr, align 4
  %486 = load i32, i32* %sbest, align 4
  %487 = load i32, i32* %threat, align 4
  %488 = load i32, i32* %depth.addr, align 4
  call void @StoreTT(i32 %483, i32 %484, i32 %485, i32 %486, i32 %487, i32 %488)
  br label %if.end.832

if.else.831:                                      ; preds = %if.else.828
  %489 = load i32, i32* %best_score, align 4
  %490 = load i32, i32* %sbest, align 4
  %491 = load i32, i32* %threat, align 4
  %492 = load i32, i32* %depth.addr, align 4
  call void @StoreTT(i32 %489, i32 -1000000, i32 -1000000, i32 %490, i32 %491, i32 %492)
  br label %if.end.832

if.end.832:                                       ; preds = %if.else.831, %if.then.830
  br label %if.end.833

if.end.833:                                       ; preds = %if.end.832, %if.end.827
  %493 = load i32, i32* %best_score, align 4
  store i32 %493, i32* %retval
  br label %return

return:                                           ; preds = %if.end.833, %if.then.815, %if.else.809, %if.else.808, %if.then.805, %if.else.791, %if.end.753, %if.then.571, %if.then.232, %if.then.228, %cond.end.146, %if.then.128, %if.then.124, %sw.bb, %if.else.116, %cond.end.114, %if.then.100, %if.then.95, %if.then.29, %if.else.23, %if.then.2
  %494 = load i32, i32* %retval
  ret i32 %494
}

declare i32 @is_draw() #2

declare i32 @suicide_eval() #2

declare i32 @losers_eval() #2

declare i32 @ProbeTT(i32*, i32, i32*, i32*, i32*, i32) #2

declare void @StoreTT(i32, i32, i32, i32, i32, i32) #2

declare i32 @f_in_check(%struct.move_s*, i32) #2

declare i32 @calc_attackers(i32, i32) #2

; Function Attrs: nounwind uwtable
define void @search_root(%struct.move_s* noalias sret %agg.result, i32 %originalalpha, i32 %originalbeta, i32 %depth) #0 {
entry:
  %originalalpha.addr = alloca i32, align 4
  %originalbeta.addr = alloca i32, align 4
  %depth.addr = alloca i32, align 4
  %moves = alloca [512 x %struct.move_s], align 16
  %best_move = alloca %struct.move_s, align 4
  %num_moves = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %root_score = alloca i32, align 4
  %move_ordering = alloca [512 x i32], align 16
  %see_values = alloca [512 x i32], align 16
  %no_moves = alloca i32, align 4
  %legal_move = alloca i32, align 4
  %first = alloca i32, align 4
  %alpha = alloca i32, align 4
  %beta = alloca i32, align 4
  %kswap = alloca %struct.move_s, align 4
  %ksswap = alloca i32, align 4
  %incheck = alloca i32, align 4
  %mc = alloca i32, align 4
  %oldnodecount = alloca i32, align 4
  store i32 %originalalpha, i32* %originalalpha.addr, align 4
  store i32 %originalbeta, i32* %originalbeta.addr, align 4
  store i32 %depth, i32* %depth.addr, align 4
  %0 = bitcast %struct.move_s* %best_move to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* bitcast (%struct.move_s* @dummy to i8*), i64 24, i32 4, i1 false)
  store i32 -1000000, i32* %root_score, align 4
  store i32 0, i32* %mc, align 4
  %1 = load i32, i32* %originalalpha.addr, align 4
  store i32 %1, i32* %alpha, align 4
  %2 = load i32, i32* %originalbeta.addr, align 4
  store i32 %2, i32* %beta, align 4
  store i32 0, i32* %num_moves, align 4
  store i32 1, i32* %no_moves, align 4
  store i32 1, i32* @ply, align 4
  store i32 1, i32* @searching_pv, align 4
  store i32 0, i32* @time_exit, align 4
  store i32 0, i32* @time_failure, align 4
  store i32 1, i32* %first, align 4
  store i32 -1000000, i32* @cur_score, align 4
  %3 = load i32, i32* @nodes, align 4
  %inc = add nsw i32 %3, 1
  store i32 %inc, i32* @nodes, align 4
  %call = call i32 @is_draw()
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 5, i32* @result, align 4
  store i32 0, i32* @cur_score, align 4
  %4 = load i32, i32* @ply, align 4
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds [300 x i32], [300 x i32]* @pv_length, i32 0, i64 %idxprom
  store i32 0, i32* %arrayidx, align 4
  %5 = bitcast %struct.move_s* %agg.result to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %5, i8* bitcast (%struct.move_s* @dummy to i8*), i64 24, i32 4, i1 false)
  br label %return

if.end:                                           ; preds = %entry
  %6 = load i32, i32* @ply, align 4
  %7 = load i32, i32* @ply, align 4
  %idxprom1 = sext i32 %7 to i64
  %arrayidx2 = getelementptr inbounds [300 x i32], [300 x i32]* @pv_length, i32 0, i64 %idxprom1
  store i32 %6, i32* %arrayidx2, align 4
  %8 = load i32, i32* @hash, align 4
  %9 = load i32, i32* @move_number, align 4
  %10 = load i32, i32* @ply, align 4
  %add = add nsw i32 %9, %10
  %sub = sub nsw i32 %add, 1
  %idxprom3 = sext i32 %sub to i64
  %arrayidx4 = getelementptr inbounds [600 x i32], [600 x i32]* @hash_history, i32 0, i64 %idxprom3
  store i32 %8, i32* %arrayidx4, align 4
  %call5 = call i32 @in_check()
  store i32 %call5, i32* %incheck, align 4
  %11 = load i32, i32* %incheck, align 4
  %tobool6 = icmp ne i32 %11, 0
  br i1 %tobool6, label %if.then.7, label %if.end.10

if.then.7:                                        ; preds = %if.end
  %12 = load i32, i32* @ext_check, align 4
  %inc8 = add i32 %12, 1
  store i32 %inc8, i32* @ext_check, align 4
  %13 = load i32, i32* %depth.addr, align 4
  %inc9 = add nsw i32 %13, 1
  store i32 %inc9, i32* %depth.addr, align 4
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.7, %if.end
  %14 = load i32, i32* %incheck, align 4
  %15 = load i32, i32* @ply, align 4
  %idxprom11 = sext i32 %15 to i64
  %arrayidx12 = getelementptr inbounds [300 x i32], [300 x i32]* @checks, i32 0, i64 %idxprom11
  store i32 %14, i32* %arrayidx12, align 4
  %16 = load i32, i32* @ply, align 4
  %idxprom13 = sext i32 %16 to i64
  %arrayidx14 = getelementptr inbounds [300 x i32], [300 x i32]* @recaps, i32 0, i64 %idxprom13
  store i32 0, i32* %arrayidx14, align 4
  %17 = load i32, i32* @ply, align 4
  %idxprom15 = sext i32 %17 to i64
  %arrayidx16 = getelementptr inbounds [300 x i32], [300 x i32]* @singular, i32 0, i64 %idxprom15
  store i32 0, i32* %arrayidx16, align 4
  %18 = load i32, i32* @Variant, align 4
  %cmp = icmp eq i32 %18, 4
  br i1 %cmp, label %if.then.17, label %if.else

if.then.17:                                       ; preds = %if.end.10
  store i32 0, i32* @legals, align 4
  store i32 1, i32* @captures, align 4
  %arrayidx18 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %moves, i32 0, i64 0
  call void @gen(%struct.move_s* %arrayidx18)
  %19 = load i32, i32* @numb_moves, align 4
  store i32 %19, i32* %num_moves, align 4
  store i32 0, i32* @captures, align 4
  %20 = load i32, i32* %num_moves, align 4
  %tobool19 = icmp ne i32 %20, 0
  br i1 %tobool19, label %if.then.20, label %if.end.31

if.then.20:                                       ; preds = %if.then.17
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.20
  %21 = load i32, i32* %i, align 4
  %22 = load i32, i32* %num_moves, align 4
  %cmp21 = icmp slt i32 %21, %22
  br i1 %cmp21, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %arrayidx22 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %moves, i32 0, i64 0
  %23 = load i32, i32* %i, align 4
  call void @make(%struct.move_s* %arrayidx22, i32 %23)
  %arrayidx23 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %moves, i32 0, i64 0
  %24 = load i32, i32* %i, align 4
  %25 = load i32, i32* %incheck, align 4
  %call24 = call i32 @check_legal(%struct.move_s* %arrayidx23, i32 %24, i32 %25)
  %tobool25 = icmp ne i32 %call24, 0
  br i1 %tobool25, label %if.then.26, label %if.end.28

if.then.26:                                       ; preds = %for.body
  %26 = load i32, i32* @legals, align 4
  %inc27 = add nsw i32 %26, 1
  store i32 %inc27, i32* @legals, align 4
  br label %if.end.28

if.end.28:                                        ; preds = %if.then.26, %for.body
  %arrayidx29 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %moves, i32 0, i64 0
  %27 = load i32, i32* %i, align 4
  call void @unmake(%struct.move_s* %arrayidx29, i32 %27)
  br label %for.inc

for.inc:                                          ; preds = %if.end.28
  %28 = load i32, i32* %i, align 4
  %inc30 = add nsw i32 %28, 1
  store i32 %inc30, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.31

if.end.31:                                        ; preds = %for.end, %if.then.17
  %29 = load i32, i32* @legals, align 4
  %tobool32 = icmp ne i32 %29, 0
  br i1 %tobool32, label %if.end.49, label %if.then.33

if.then.33:                                       ; preds = %if.end.31
  store i32 0, i32* @captures, align 4
  %arrayidx34 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %moves, i32 0, i64 0
  call void @gen(%struct.move_s* %arrayidx34)
  %30 = load i32, i32* @numb_moves, align 4
  store i32 %30, i32* %num_moves, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.35

for.cond.35:                                      ; preds = %for.inc.46, %if.then.33
  %31 = load i32, i32* %i, align 4
  %32 = load i32, i32* %num_moves, align 4
  %cmp36 = icmp slt i32 %31, %32
  br i1 %cmp36, label %for.body.37, label %for.end.48

for.body.37:                                      ; preds = %for.cond.35
  %arrayidx38 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %moves, i32 0, i64 0
  %33 = load i32, i32* %i, align 4
  call void @make(%struct.move_s* %arrayidx38, i32 %33)
  %arrayidx39 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %moves, i32 0, i64 0
  %34 = load i32, i32* %i, align 4
  %35 = load i32, i32* %incheck, align 4
  %call40 = call i32 @check_legal(%struct.move_s* %arrayidx39, i32 %34, i32 %35)
  %tobool41 = icmp ne i32 %call40, 0
  br i1 %tobool41, label %if.then.42, label %if.end.44

if.then.42:                                       ; preds = %for.body.37
  %36 = load i32, i32* @legals, align 4
  %inc43 = add nsw i32 %36, 1
  store i32 %inc43, i32* @legals, align 4
  br label %if.end.44

if.end.44:                                        ; preds = %if.then.42, %for.body.37
  %arrayidx45 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %moves, i32 0, i64 0
  %37 = load i32, i32* %i, align 4
  call void @unmake(%struct.move_s* %arrayidx45, i32 %37)
  br label %for.inc.46

for.inc.46:                                       ; preds = %if.end.44
  %38 = load i32, i32* %i, align 4
  %inc47 = add nsw i32 %38, 1
  store i32 %inc47, i32* %i, align 4
  br label %for.cond.35

for.end.48:                                       ; preds = %for.cond.35
  br label %if.end.49

if.end.49:                                        ; preds = %for.end.48, %if.end.31
  br label %if.end.51

if.else:                                          ; preds = %if.end.10
  %arrayidx50 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %moves, i32 0, i64 0
  call void @gen(%struct.move_s* %arrayidx50)
  %39 = load i32, i32* @numb_moves, align 4
  store i32 %39, i32* %num_moves, align 4
  br label %if.end.51

if.end.51:                                        ; preds = %if.else, %if.end.49
  %40 = load i32, i32* @legals, align 4
  store i32 %40, i32* @movetotal, align 4
  %arrayidx52 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %moves, i32 0, i64 0
  %arrayidx53 = getelementptr inbounds [512 x i32], [512 x i32]* %move_ordering, i32 0, i64 0
  %arrayidx54 = getelementptr inbounds [512 x i32], [512 x i32]* %see_values, i32 0, i64 0
  %41 = load i32, i32* %num_moves, align 4
  call void @order_moves(%struct.move_s* %arrayidx52, i32* %arrayidx53, i32* %arrayidx54, i32 %41, i32 -1)
  br label %while.cond

while.cond:                                       ; preds = %if.end.447, %if.then.65, %if.end.51
  %arrayidx55 = getelementptr inbounds [512 x i32], [512 x i32]* %move_ordering, i32 0, i64 0
  %42 = load i32, i32* %num_moves, align 4
  %call56 = call i32 @remove_one(i32* %i, i32* %arrayidx55, i32 %42)
  %tobool57 = icmp ne i32 %call56, 0
  br i1 %tobool57, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %43 = load i32, i32* @alllosers, align 4
  %tobool58 = icmp ne i32 %43, 0
  br i1 %tobool58, label %if.end.66, label %land.lhs.true

land.lhs.true:                                    ; preds = %while.body
  %44 = load i32, i32* %i, align 4
  %idxprom59 = sext i32 %44 to i64
  %arrayidx60 = getelementptr inbounds [300 x i32], [300 x i32]* @rootlosers, i32 0, i64 %idxprom59
  %45 = load i32, i32* %arrayidx60, align 4
  %tobool61 = icmp ne i32 %45, 0
  br i1 %tobool61, label %land.lhs.true.62, label %if.end.66

land.lhs.true.62:                                 ; preds = %land.lhs.true
  %46 = load i32, i32* @Variant, align 4
  %cmp63 = icmp eq i32 %46, 4
  br i1 %cmp63, label %if.then.65, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.62
  %47 = load i32, i32* @Variant, align 4
  %cmp64 = icmp eq i32 %47, 3
  br i1 %cmp64, label %if.then.65, label %if.end.66

if.then.65:                                       ; preds = %lor.lhs.false, %land.lhs.true.62
  br label %while.cond

if.end.66:                                        ; preds = %lor.lhs.false, %land.lhs.true, %while.body
  %arrayidx67 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %moves, i32 0, i64 0
  %48 = load i32, i32* %i, align 4
  call void @make(%struct.move_s* %arrayidx67, i32 %48)
  store i32 0, i32* %legal_move, align 4
  %49 = load i32, i32* @hash, align 4
  %50 = load i32, i32* @move_number, align 4
  %51 = load i32, i32* @ply, align 4
  %add68 = add nsw i32 %50, %51
  %sub69 = sub nsw i32 %add68, 1
  %idxprom70 = sext i32 %sub69 to i64
  %arrayidx71 = getelementptr inbounds [600 x i32], [600 x i32]* @hash_history, i32 0, i64 %idxprom70
  store i32 %49, i32* %arrayidx71, align 4
  %52 = load i32, i32* @ply, align 4
  %sub72 = sub nsw i32 %52, 1
  %idxprom73 = sext i32 %sub72 to i64
  %arrayidx74 = getelementptr inbounds [300 x %struct.move_s], [300 x %struct.move_s]* @path, i32 0, i64 %idxprom73
  %53 = load i32, i32* %i, align 4
  %idxprom75 = sext i32 %53 to i64
  %arrayidx76 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %moves, i32 0, i64 %idxprom75
  %54 = bitcast %struct.move_s* %arrayidx74 to i8*
  %55 = bitcast %struct.move_s* %arrayidx76 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %54, i8* %55, i64 24, i32 4, i1 false)
  %56 = load i32, i32* @nodes, align 4
  store i32 %56, i32* %oldnodecount, align 4
  %arrayidx77 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %moves, i32 0, i64 0
  %57 = load i32, i32* %i, align 4
  %58 = load i32, i32* %incheck, align 4
  %call78 = call i32 @check_legal(%struct.move_s* %arrayidx77, i32 %57, i32 %58)
  %tobool79 = icmp ne i32 %call78, 0
  br i1 %tobool79, label %if.then.80, label %if.end.248

if.then.80:                                       ; preds = %if.end.66
  %arrayidx81 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %moves, i32 0, i64 0
  %59 = load i32, i32* %i, align 4
  call void @unmake(%struct.move_s* %arrayidx81, i32 %59)
  %60 = load i32, i32* %mc, align 4
  %inc82 = add nsw i32 %60, 1
  store i32 %inc82, i32* %mc, align 4
  %61 = load i32, i32* @movetotal, align 4
  %62 = load i32, i32* %mc, align 4
  %sub83 = sub nsw i32 %61, %62
  store i32 %sub83, i32* @moveleft, align 4
  %63 = load i32, i32* %i, align 4
  %idxprom84 = sext i32 %63 to i64
  %arrayidx85 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %moves, i32 0, i64 %idxprom84
  call void @comp_to_san(%struct.move_s* byval align 8 %arrayidx85, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @searching_move, i32 0, i32 0))
  %arrayidx86 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %moves, i32 0, i64 0
  %64 = load i32, i32* %i, align 4
  call void @make(%struct.move_s* %arrayidx86, i32 %64)
  %arrayidx87 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %moves, i32 0, i64 0
  %65 = load i32, i32* %i, align 4
  %call88 = call i32 @f_in_check(%struct.move_s* %arrayidx87, i32 %65)
  %66 = load i32, i32* @ply, align 4
  %idxprom89 = sext i32 %66 to i64
  %arrayidx90 = getelementptr inbounds [300 x i32], [300 x i32]* @checks, i32 0, i64 %idxprom89
  store i32 %call88, i32* %arrayidx90, align 4
  %67 = load i32, i32* @ply, align 4
  %idxprom91 = sext i32 %67 to i64
  %arrayidx92 = getelementptr inbounds [300 x i32], [300 x i32]* @recaps, i32 0, i64 %idxprom91
  store i32 0, i32* %arrayidx92, align 4
  %68 = load i32, i32* @ply, align 4
  %idxprom93 = sext i32 %68 to i64
  %arrayidx94 = getelementptr inbounds [300 x i32], [300 x i32]* @singular, i32 0, i64 %idxprom93
  store i32 0, i32* %arrayidx94, align 4
  %69 = load i32, i32* %first, align 4
  %cmp95 = icmp eq i32 %69, 1
  br i1 %cmp95, label %if.then.98, label %lor.lhs.false.96

lor.lhs.false.96:                                 ; preds = %if.then.80
  %70 = load i32, i32* @i_depth, align 4
  %cmp97 = icmp slt i32 %70, 2
  br i1 %cmp97, label %if.then.98, label %if.else.162

if.then.98:                                       ; preds = %lor.lhs.false.96, %if.then.80
  %71 = load i32, i32* %beta, align 4
  %sub99 = sub nsw i32 0, %71
  %72 = load i32, i32* %alpha, align 4
  %sub100 = sub nsw i32 0, %72
  %73 = load i32, i32* %depth.addr, align 4
  %sub101 = sub nsw i32 %73, 1
  %call102 = call i32 @search(i32 %sub99, i32 %sub100, i32 %sub101, i32 0)
  %sub103 = sub nsw i32 0, %call102
  store i32 %sub103, i32* %root_score, align 4
  %74 = load i32, i32* @time_exit, align 4
  %tobool104 = icmp ne i32 %74, 0
  br i1 %tobool104, label %if.end.161, label %land.lhs.true.105

land.lhs.true.105:                                ; preds = %if.then.98
  %75 = load i32, i32* @post, align 4
  %tobool106 = icmp ne i32 %75, 0
  br i1 %tobool106, label %land.lhs.true.109, label %lor.lhs.false.107

lor.lhs.false.107:                                ; preds = %land.lhs.true.105
  %76 = load i32, i32* @xb_mode, align 4
  %tobool108 = icmp ne i32 %76, 0
  br i1 %tobool108, label %if.end.161, label %land.lhs.true.109

land.lhs.true.109:                                ; preds = %lor.lhs.false.107, %land.lhs.true.105
  %77 = load i32, i32* @i_depth, align 4
  %cmp110 = icmp sge i32 %77, 2
  br i1 %cmp110, label %if.then.111, label %if.end.161

if.then.111:                                      ; preds = %land.lhs.true.109
  %78 = load i32, i32* %root_score, align 4
  %79 = load i32, i32* %beta, align 4
  %cmp112 = icmp sge i32 %78, %79
  br i1 %cmp112, label %if.then.113, label %if.else.116

if.then.113:                                      ; preds = %if.then.111
  %80 = load i32, i32* %root_score, align 4
  %81 = load i32, i32* %i, align 4
  %idxprom114 = sext i32 %81 to i64
  %arrayidx115 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %moves, i32 0, i64 %idxprom114
  call void @post_fh_thinking(i32 %80, %struct.move_s* %arrayidx115)
  br label %if.end.153

if.else.116:                                      ; preds = %if.then.111
  %82 = load i32, i32* %root_score, align 4
  %83 = load i32, i32* %alpha, align 4
  %cmp117 = icmp sle i32 %82, %83
  br i1 %cmp117, label %if.then.118, label %if.else.121

if.then.118:                                      ; preds = %if.else.116
  store i32 1, i32* @failed, align 4
  %84 = load i32, i32* %root_score, align 4
  %85 = load i32, i32* %i, align 4
  %idxprom119 = sext i32 %85 to i64
  %arrayidx120 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %moves, i32 0, i64 %idxprom119
  call void @post_fl_thinking(i32 %84, %struct.move_s* %arrayidx120)
  br label %if.end.152

if.else.121:                                      ; preds = %if.else.116
  %86 = load i32, i32* @ply, align 4
  %sub122 = sub nsw i32 %86, 1
  %idxprom123 = sext i32 %sub122 to i64
  %87 = load i32, i32* @ply, align 4
  %sub124 = sub nsw i32 %87, 1
  %idxprom125 = sext i32 %sub124 to i64
  %arrayidx126 = getelementptr inbounds [300 x [300 x %struct.move_s]], [300 x [300 x %struct.move_s]]* @pv, i32 0, i64 %idxprom125
  %arrayidx127 = getelementptr inbounds [300 x %struct.move_s], [300 x %struct.move_s]* %arrayidx126, i32 0, i64 %idxprom123
  %88 = load i32, i32* %i, align 4
  %idxprom128 = sext i32 %88 to i64
  %arrayidx129 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %moves, i32 0, i64 %idxprom128
  %89 = bitcast %struct.move_s* %arrayidx127 to i8*
  %90 = bitcast %struct.move_s* %arrayidx129 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %89, i8* %90, i64 24, i32 4, i1 false)
  %91 = load i32, i32* @ply, align 4
  store i32 %91, i32* %j, align 4
  br label %for.cond.130

for.cond.130:                                     ; preds = %for.inc.144, %if.else.121
  %92 = load i32, i32* %j, align 4
  %93 = load i32, i32* @ply, align 4
  %idxprom131 = sext i32 %93 to i64
  %arrayidx132 = getelementptr inbounds [300 x i32], [300 x i32]* @pv_length, i32 0, i64 %idxprom131
  %94 = load i32, i32* %arrayidx132, align 4
  %cmp133 = icmp slt i32 %92, %94
  br i1 %cmp133, label %for.body.134, label %for.end.146

for.body.134:                                     ; preds = %for.cond.130
  %95 = load i32, i32* %j, align 4
  %idxprom135 = sext i32 %95 to i64
  %96 = load i32, i32* @ply, align 4
  %sub136 = sub nsw i32 %96, 1
  %idxprom137 = sext i32 %sub136 to i64
  %arrayidx138 = getelementptr inbounds [300 x [300 x %struct.move_s]], [300 x [300 x %struct.move_s]]* @pv, i32 0, i64 %idxprom137
  %arrayidx139 = getelementptr inbounds [300 x %struct.move_s], [300 x %struct.move_s]* %arrayidx138, i32 0, i64 %idxprom135
  %97 = load i32, i32* %j, align 4
  %idxprom140 = sext i32 %97 to i64
  %98 = load i32, i32* @ply, align 4
  %idxprom141 = sext i32 %98 to i64
  %arrayidx142 = getelementptr inbounds [300 x [300 x %struct.move_s]], [300 x [300 x %struct.move_s]]* @pv, i32 0, i64 %idxprom141
  %arrayidx143 = getelementptr inbounds [300 x %struct.move_s], [300 x %struct.move_s]* %arrayidx142, i32 0, i64 %idxprom140
  %99 = bitcast %struct.move_s* %arrayidx139 to i8*
  %100 = bitcast %struct.move_s* %arrayidx143 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %99, i8* %100, i64 24, i32 4, i1 false)
  br label %for.inc.144

for.inc.144:                                      ; preds = %for.body.134
  %101 = load i32, i32* %j, align 4
  %inc145 = add nsw i32 %101, 1
  store i32 %inc145, i32* %j, align 4
  br label %for.cond.130

for.end.146:                                      ; preds = %for.cond.130
  %102 = load i32, i32* @ply, align 4
  %idxprom147 = sext i32 %102 to i64
  %arrayidx148 = getelementptr inbounds [300 x i32], [300 x i32]* @pv_length, i32 0, i64 %idxprom147
  %103 = load i32, i32* %arrayidx148, align 4
  %104 = load i32, i32* @ply, align 4
  %sub149 = sub nsw i32 %104, 1
  %idxprom150 = sext i32 %sub149 to i64
  %arrayidx151 = getelementptr inbounds [300 x i32], [300 x i32]* @pv_length, i32 0, i64 %idxprom150
  store i32 %103, i32* %arrayidx151, align 4
  %105 = load i32, i32* %root_score, align 4
  call void @post_thinking(i32 %105)
  br label %if.end.152

if.end.152:                                       ; preds = %for.end.146, %if.then.118
  br label %if.end.153

if.end.153:                                       ; preds = %if.end.152, %if.then.113
  %106 = load i32, i32* %root_score, align 4
  %107 = load i32, i32* @cur_score, align 4
  %cmp154 = icmp sgt i32 %106, %107
  br i1 %cmp154, label %land.lhs.true.155, label %if.end.160

land.lhs.true.155:                                ; preds = %if.end.153
  %108 = load i32, i32* @time_exit, align 4
  %tobool156 = icmp ne i32 %108, 0
  br i1 %tobool156, label %if.end.160, label %if.then.157

if.then.157:                                      ; preds = %land.lhs.true.155
  %109 = load i32, i32* %root_score, align 4
  store i32 %109, i32* @cur_score, align 4
  %110 = load i32, i32* %i, align 4
  store i32 %110, i32* @bestmovenum, align 4
  %111 = load i32, i32* %i, align 4
  %idxprom158 = sext i32 %111 to i64
  %arrayidx159 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %moves, i32 0, i64 %idxprom158
  %112 = bitcast %struct.move_s* %best_move to i8*
  %113 = bitcast %struct.move_s* %arrayidx159 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %112, i8* %113, i64 24, i32 4, i1 false)
  br label %if.end.160

if.end.160:                                       ; preds = %if.then.157, %land.lhs.true.155, %if.end.153
  br label %if.end.161

if.end.161:                                       ; preds = %if.end.160, %land.lhs.true.109, %lor.lhs.false.107, %if.then.98
  br label %if.end.232

if.else.162:                                      ; preds = %lor.lhs.false.96
  %114 = load i32, i32* %alpha, align 4
  %sub163 = sub nsw i32 0, %114
  %sub164 = sub nsw i32 %sub163, 1
  %115 = load i32, i32* %alpha, align 4
  %sub165 = sub nsw i32 0, %115
  %116 = load i32, i32* %depth.addr, align 4
  %sub166 = sub nsw i32 %116, 1
  %call167 = call i32 @search(i32 %sub164, i32 %sub165, i32 %sub166, i32 0)
  %sub168 = sub nsw i32 0, %call167
  store i32 %sub168, i32* %root_score, align 4
  %117 = load i32, i32* %root_score, align 4
  %118 = load i32, i32* %alpha, align 4
  %cmp169 = icmp sgt i32 %117, %118
  br i1 %cmp169, label %land.lhs.true.170, label %if.end.224

land.lhs.true.170:                                ; preds = %if.else.162
  %119 = load i32, i32* %root_score, align 4
  %120 = load i32, i32* %beta, align 4
  %cmp171 = icmp slt i32 %119, %120
  br i1 %cmp171, label %land.lhs.true.172, label %if.end.224

land.lhs.true.172:                                ; preds = %land.lhs.true.170
  %121 = load i32, i32* @time_exit, align 4
  %tobool173 = icmp ne i32 %121, 0
  br i1 %tobool173, label %if.end.224, label %if.then.174

if.then.174:                                      ; preds = %land.lhs.true.172
  %122 = load i32, i32* %root_score, align 4
  %123 = load i32, i32* %i, align 4
  %idxprom175 = sext i32 %123 to i64
  %arrayidx176 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %moves, i32 0, i64 %idxprom175
  call void @post_fail_thinking(i32 %122, %struct.move_s* %arrayidx176)
  %124 = load i32, i32* %beta, align 4
  %sub177 = sub nsw i32 0, %124
  %125 = load i32, i32* %alpha, align 4
  %sub178 = sub nsw i32 0, %125
  %126 = load i32, i32* %depth.addr, align 4
  %sub179 = sub nsw i32 %126, 1
  %call180 = call i32 @search(i32 %sub177, i32 %sub178, i32 %sub179, i32 0)
  %sub181 = sub nsw i32 0, %call180
  store i32 %sub181, i32* %root_score, align 4
  %127 = load i32, i32* %root_score, align 4
  %128 = load i32, i32* %alpha, align 4
  %cmp182 = icmp sgt i32 %127, %128
  br i1 %cmp182, label %land.lhs.true.183, label %if.end.223

land.lhs.true.183:                                ; preds = %if.then.174
  %129 = load i32, i32* @time_exit, align 4
  %tobool184 = icmp ne i32 %129, 0
  br i1 %tobool184, label %if.end.223, label %if.then.185

if.then.185:                                      ; preds = %land.lhs.true.183
  store i32 0, i32* @failed, align 4
  %130 = load i32, i32* %root_score, align 4
  store i32 %130, i32* @cur_score, align 4
  %131 = load i32, i32* %i, align 4
  store i32 %131, i32* @bestmovenum, align 4
  %132 = load i32, i32* %i, align 4
  %idxprom186 = sext i32 %132 to i64
  %arrayidx187 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %moves, i32 0, i64 %idxprom186
  %133 = bitcast %struct.move_s* %best_move to i8*
  %134 = bitcast %struct.move_s* %arrayidx187 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %133, i8* %134, i64 24, i32 4, i1 false)
  %135 = load i32, i32* %root_score, align 4
  %136 = load i32, i32* %beta, align 4
  %cmp188 = icmp slt i32 %135, %136
  br i1 %cmp188, label %land.lhs.true.189, label %if.end.222

land.lhs.true.189:                                ; preds = %if.then.185
  %137 = load i32, i32* @i_depth, align 4
  %cmp190 = icmp sge i32 %137, 2
  br i1 %cmp190, label %if.then.191, label %if.end.222

if.then.191:                                      ; preds = %land.lhs.true.189
  %138 = load i32, i32* @ply, align 4
  %sub192 = sub nsw i32 %138, 1
  %idxprom193 = sext i32 %sub192 to i64
  %139 = load i32, i32* @ply, align 4
  %sub194 = sub nsw i32 %139, 1
  %idxprom195 = sext i32 %sub194 to i64
  %arrayidx196 = getelementptr inbounds [300 x [300 x %struct.move_s]], [300 x [300 x %struct.move_s]]* @pv, i32 0, i64 %idxprom195
  %arrayidx197 = getelementptr inbounds [300 x %struct.move_s], [300 x %struct.move_s]* %arrayidx196, i32 0, i64 %idxprom193
  %140 = load i32, i32* %i, align 4
  %idxprom198 = sext i32 %140 to i64
  %arrayidx199 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %moves, i32 0, i64 %idxprom198
  %141 = bitcast %struct.move_s* %arrayidx197 to i8*
  %142 = bitcast %struct.move_s* %arrayidx199 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %141, i8* %142, i64 24, i32 4, i1 false)
  %143 = load i32, i32* @ply, align 4
  store i32 %143, i32* %j, align 4
  br label %for.cond.200

for.cond.200:                                     ; preds = %for.inc.214, %if.then.191
  %144 = load i32, i32* %j, align 4
  %145 = load i32, i32* @ply, align 4
  %idxprom201 = sext i32 %145 to i64
  %arrayidx202 = getelementptr inbounds [300 x i32], [300 x i32]* @pv_length, i32 0, i64 %idxprom201
  %146 = load i32, i32* %arrayidx202, align 4
  %cmp203 = icmp slt i32 %144, %146
  br i1 %cmp203, label %for.body.204, label %for.end.216

for.body.204:                                     ; preds = %for.cond.200
  %147 = load i32, i32* %j, align 4
  %idxprom205 = sext i32 %147 to i64
  %148 = load i32, i32* @ply, align 4
  %sub206 = sub nsw i32 %148, 1
  %idxprom207 = sext i32 %sub206 to i64
  %arrayidx208 = getelementptr inbounds [300 x [300 x %struct.move_s]], [300 x [300 x %struct.move_s]]* @pv, i32 0, i64 %idxprom207
  %arrayidx209 = getelementptr inbounds [300 x %struct.move_s], [300 x %struct.move_s]* %arrayidx208, i32 0, i64 %idxprom205
  %149 = load i32, i32* %j, align 4
  %idxprom210 = sext i32 %149 to i64
  %150 = load i32, i32* @ply, align 4
  %idxprom211 = sext i32 %150 to i64
  %arrayidx212 = getelementptr inbounds [300 x [300 x %struct.move_s]], [300 x [300 x %struct.move_s]]* @pv, i32 0, i64 %idxprom211
  %arrayidx213 = getelementptr inbounds [300 x %struct.move_s], [300 x %struct.move_s]* %arrayidx212, i32 0, i64 %idxprom210
  %151 = bitcast %struct.move_s* %arrayidx209 to i8*
  %152 = bitcast %struct.move_s* %arrayidx213 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %151, i8* %152, i64 24, i32 4, i1 false)
  br label %for.inc.214

for.inc.214:                                      ; preds = %for.body.204
  %153 = load i32, i32* %j, align 4
  %inc215 = add nsw i32 %153, 1
  store i32 %inc215, i32* %j, align 4
  br label %for.cond.200

for.end.216:                                      ; preds = %for.cond.200
  %154 = load i32, i32* @ply, align 4
  %idxprom217 = sext i32 %154 to i64
  %arrayidx218 = getelementptr inbounds [300 x i32], [300 x i32]* @pv_length, i32 0, i64 %idxprom217
  %155 = load i32, i32* %arrayidx218, align 4
  %156 = load i32, i32* @ply, align 4
  %sub219 = sub nsw i32 %156, 1
  %idxprom220 = sext i32 %sub219 to i64
  %arrayidx221 = getelementptr inbounds [300 x i32], [300 x i32]* @pv_length, i32 0, i64 %idxprom220
  store i32 %155, i32* %arrayidx221, align 4
  br label %if.end.222

if.end.222:                                       ; preds = %for.end.216, %land.lhs.true.189, %if.then.185
  br label %if.end.223

if.end.223:                                       ; preds = %if.end.222, %land.lhs.true.183, %if.then.174
  br label %if.end.224

if.end.224:                                       ; preds = %if.end.223, %land.lhs.true.172, %land.lhs.true.170, %if.else.162
  %157 = load i32, i32* %root_score, align 4
  %158 = load i32, i32* %beta, align 4
  %cmp225 = icmp sge i32 %157, %158
  br i1 %cmp225, label %land.lhs.true.226, label %if.end.231

land.lhs.true.226:                                ; preds = %if.end.224
  %159 = load i32, i32* @time_exit, align 4
  %tobool227 = icmp ne i32 %159, 0
  br i1 %tobool227, label %if.end.231, label %if.then.228

if.then.228:                                      ; preds = %land.lhs.true.226
  %160 = load i32, i32* %root_score, align 4
  %161 = load i32, i32* %i, align 4
  %idxprom229 = sext i32 %161 to i64
  %arrayidx230 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %moves, i32 0, i64 %idxprom229
  call void @post_fh_thinking(i32 %160, %struct.move_s* %arrayidx230)
  br label %if.end.231

if.end.231:                                       ; preds = %if.then.228, %land.lhs.true.226, %if.end.224
  br label %if.end.232

if.end.232:                                       ; preds = %if.end.231, %if.end.161
  %162 = load i32, i32* %root_score, align 4
  %163 = load i32, i32* @cur_score, align 4
  %cmp233 = icmp sgt i32 %162, %163
  br i1 %cmp233, label %land.lhs.true.234, label %if.end.239

land.lhs.true.234:                                ; preds = %if.end.232
  %164 = load i32, i32* @time_exit, align 4
  %tobool235 = icmp ne i32 %164, 0
  br i1 %tobool235, label %if.end.239, label %if.then.236

if.then.236:                                      ; preds = %land.lhs.true.234
  %165 = load i32, i32* %root_score, align 4
  store i32 %165, i32* @cur_score, align 4
  %166 = load i32, i32* %i, align 4
  store i32 %166, i32* @bestmovenum, align 4
  %167 = load i32, i32* %i, align 4
  %idxprom237 = sext i32 %167 to i64
  %arrayidx238 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %moves, i32 0, i64 %idxprom237
  %168 = bitcast %struct.move_s* %best_move to i8*
  %169 = bitcast %struct.move_s* %arrayidx238 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %168, i8* %169, i64 24, i32 4, i1 false)
  br label %if.end.239

if.end.239:                                       ; preds = %if.then.236, %land.lhs.true.234, %if.end.232
  %170 = load i32, i32* @time_exit, align 4
  %tobool240 = icmp ne i32 %170, 0
  br i1 %tobool240, label %land.lhs.true.241, label %if.end.247

land.lhs.true.241:                                ; preds = %if.end.239
  %171 = load i32, i32* @cur_score, align 4
  %cmp242 = icmp eq i32 %171, -1000000
  br i1 %cmp242, label %if.then.243, label %if.end.247

if.then.243:                                      ; preds = %land.lhs.true.241
  %172 = load i32, i32* %no_moves, align 4
  %tobool244 = icmp ne i32 %172, 0
  br i1 %tobool244, label %if.then.245, label %if.end.246

if.then.245:                                      ; preds = %if.then.243
  store i32 1, i32* @time_failure, align 4
  br label %if.end.246

if.end.246:                                       ; preds = %if.then.245, %if.then.243
  br label %if.end.247

if.end.247:                                       ; preds = %if.end.246, %land.lhs.true.241, %if.end.239
  store i32 0, i32* %no_moves, align 4
  store i32 1, i32* %legal_move, align 4
  br label %if.end.248

if.end.248:                                       ; preds = %if.end.247, %if.end.66
  %arrayidx249 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %moves, i32 0, i64 0
  %173 = load i32, i32* %i, align 4
  call void @unmake(%struct.move_s* %arrayidx249, i32 %173)
  %174 = load i32, i32* @time_exit, align 4
  %tobool250 = icmp ne i32 %174, 0
  br i1 %tobool250, label %if.then.251, label %if.end.252

if.then.251:                                      ; preds = %if.end.248
  %175 = bitcast %struct.move_s* %agg.result to i8*
  %176 = bitcast %struct.move_s* %best_move to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %175, i8* %176, i64 24, i32 4, i1 false)
  br label %return

if.end.252:                                       ; preds = %if.end.248
  %177 = load i32, i32* %root_score, align 4
  %178 = load i32, i32* %alpha, align 4
  %cmp253 = icmp sgt i32 %177, %178
  br i1 %cmp253, label %land.lhs.true.254, label %if.end.444

land.lhs.true.254:                                ; preds = %if.end.252
  %179 = load i32, i32* %legal_move, align 4
  %tobool255 = icmp ne i32 %179, 0
  br i1 %tobool255, label %if.then.256, label %if.end.444

if.then.256:                                      ; preds = %land.lhs.true.254
  %180 = load i32, i32* %i, align 4
  %idxprom257 = sext i32 %180 to i64
  %arrayidx258 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %moves, i32 0, i64 %idxprom257
  %from = getelementptr inbounds %struct.move_s, %struct.move_s* %arrayidx258, i32 0, i32 0
  %181 = load i32, i32* %from, align 4
  %182 = load i32, i32* @ply, align 4
  %idxprom259 = sext i32 %182 to i64
  %arrayidx260 = getelementptr inbounds [300 x %struct.move_s], [300 x %struct.move_s]* @killer1, i32 0, i64 %idxprom259
  %from261 = getelementptr inbounds %struct.move_s, %struct.move_s* %arrayidx260, i32 0, i32 0
  %183 = load i32, i32* %from261, align 4
  %cmp262 = icmp eq i32 %181, %183
  br i1 %cmp262, label %land.lhs.true.263, label %if.else.281

land.lhs.true.263:                                ; preds = %if.then.256
  %184 = load i32, i32* %i, align 4
  %idxprom264 = sext i32 %184 to i64
  %arrayidx265 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %moves, i32 0, i64 %idxprom264
  %target = getelementptr inbounds %struct.move_s, %struct.move_s* %arrayidx265, i32 0, i32 1
  %185 = load i32, i32* %target, align 4
  %186 = load i32, i32* @ply, align 4
  %idxprom266 = sext i32 %186 to i64
  %arrayidx267 = getelementptr inbounds [300 x %struct.move_s], [300 x %struct.move_s]* @killer1, i32 0, i64 %idxprom266
  %target268 = getelementptr inbounds %struct.move_s, %struct.move_s* %arrayidx267, i32 0, i32 1
  %187 = load i32, i32* %target268, align 4
  %cmp269 = icmp eq i32 %185, %187
  br i1 %cmp269, label %land.lhs.true.270, label %if.else.281

land.lhs.true.270:                                ; preds = %land.lhs.true.263
  %188 = load i32, i32* %i, align 4
  %idxprom271 = sext i32 %188 to i64
  %arrayidx272 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %moves, i32 0, i64 %idxprom271
  %promoted = getelementptr inbounds %struct.move_s, %struct.move_s* %arrayidx272, i32 0, i32 3
  %189 = load i32, i32* %promoted, align 4
  %190 = load i32, i32* @ply, align 4
  %idxprom273 = sext i32 %190 to i64
  %arrayidx274 = getelementptr inbounds [300 x %struct.move_s], [300 x %struct.move_s]* @killer1, i32 0, i64 %idxprom273
  %promoted275 = getelementptr inbounds %struct.move_s, %struct.move_s* %arrayidx274, i32 0, i32 3
  %191 = load i32, i32* %promoted275, align 4
  %cmp276 = icmp eq i32 %189, %191
  br i1 %cmp276, label %if.then.277, label %if.else.281

if.then.277:                                      ; preds = %land.lhs.true.270
  %192 = load i32, i32* @ply, align 4
  %idxprom278 = sext i32 %192 to i64
  %arrayidx279 = getelementptr inbounds [300 x i32], [300 x i32]* @killer_scores, i32 0, i64 %idxprom278
  %193 = load i32, i32* %arrayidx279, align 4
  %inc280 = add nsw i32 %193, 1
  store i32 %inc280, i32* %arrayidx279, align 4
  br label %if.end.392

if.else.281:                                      ; preds = %land.lhs.true.270, %land.lhs.true.263, %if.then.256
  %194 = load i32, i32* %i, align 4
  %idxprom282 = sext i32 %194 to i64
  %arrayidx283 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %moves, i32 0, i64 %idxprom282
  %from284 = getelementptr inbounds %struct.move_s, %struct.move_s* %arrayidx283, i32 0, i32 0
  %195 = load i32, i32* %from284, align 4
  %196 = load i32, i32* @ply, align 4
  %idxprom285 = sext i32 %196 to i64
  %arrayidx286 = getelementptr inbounds [300 x %struct.move_s], [300 x %struct.move_s]* @killer2, i32 0, i64 %idxprom285
  %from287 = getelementptr inbounds %struct.move_s, %struct.move_s* %arrayidx286, i32 0, i32 0
  %197 = load i32, i32* %from287, align 4
  %cmp288 = icmp eq i32 %195, %197
  br i1 %cmp288, label %land.lhs.true.289, label %if.else.332

land.lhs.true.289:                                ; preds = %if.else.281
  %198 = load i32, i32* %i, align 4
  %idxprom290 = sext i32 %198 to i64
  %arrayidx291 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %moves, i32 0, i64 %idxprom290
  %target292 = getelementptr inbounds %struct.move_s, %struct.move_s* %arrayidx291, i32 0, i32 1
  %199 = load i32, i32* %target292, align 4
  %200 = load i32, i32* @ply, align 4
  %idxprom293 = sext i32 %200 to i64
  %arrayidx294 = getelementptr inbounds [300 x %struct.move_s], [300 x %struct.move_s]* @killer2, i32 0, i64 %idxprom293
  %target295 = getelementptr inbounds %struct.move_s, %struct.move_s* %arrayidx294, i32 0, i32 1
  %201 = load i32, i32* %target295, align 4
  %cmp296 = icmp eq i32 %199, %201
  br i1 %cmp296, label %land.lhs.true.297, label %if.else.332

land.lhs.true.297:                                ; preds = %land.lhs.true.289
  %202 = load i32, i32* %i, align 4
  %idxprom298 = sext i32 %202 to i64
  %arrayidx299 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %moves, i32 0, i64 %idxprom298
  %promoted300 = getelementptr inbounds %struct.move_s, %struct.move_s* %arrayidx299, i32 0, i32 3
  %203 = load i32, i32* %promoted300, align 4
  %204 = load i32, i32* @ply, align 4
  %idxprom301 = sext i32 %204 to i64
  %arrayidx302 = getelementptr inbounds [300 x %struct.move_s], [300 x %struct.move_s]* @killer2, i32 0, i64 %idxprom301
  %promoted303 = getelementptr inbounds %struct.move_s, %struct.move_s* %arrayidx302, i32 0, i32 3
  %205 = load i32, i32* %promoted303, align 4
  %cmp304 = icmp eq i32 %203, %205
  br i1 %cmp304, label %if.then.305, label %if.else.332

if.then.305:                                      ; preds = %land.lhs.true.297
  %206 = load i32, i32* @ply, align 4
  %idxprom306 = sext i32 %206 to i64
  %arrayidx307 = getelementptr inbounds [300 x i32], [300 x i32]* @killer_scores2, i32 0, i64 %idxprom306
  %207 = load i32, i32* %arrayidx307, align 4
  %inc308 = add nsw i32 %207, 1
  store i32 %inc308, i32* %arrayidx307, align 4
  %208 = load i32, i32* @ply, align 4
  %idxprom309 = sext i32 %208 to i64
  %arrayidx310 = getelementptr inbounds [300 x i32], [300 x i32]* @killer_scores2, i32 0, i64 %idxprom309
  %209 = load i32, i32* %arrayidx310, align 4
  %210 = load i32, i32* @ply, align 4
  %idxprom311 = sext i32 %210 to i64
  %arrayidx312 = getelementptr inbounds [300 x i32], [300 x i32]* @killer_scores, i32 0, i64 %idxprom311
  %211 = load i32, i32* %arrayidx312, align 4
  %cmp313 = icmp sgt i32 %209, %211
  br i1 %cmp313, label %if.then.314, label %if.end.331

if.then.314:                                      ; preds = %if.then.305
  %212 = load i32, i32* @ply, align 4
  %idxprom315 = sext i32 %212 to i64
  %arrayidx316 = getelementptr inbounds [300 x %struct.move_s], [300 x %struct.move_s]* @killer1, i32 0, i64 %idxprom315
  %213 = bitcast %struct.move_s* %kswap to i8*
  %214 = bitcast %struct.move_s* %arrayidx316 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %213, i8* %214, i64 24, i32 4, i1 false)
  %215 = load i32, i32* @ply, align 4
  %idxprom317 = sext i32 %215 to i64
  %arrayidx318 = getelementptr inbounds [300 x %struct.move_s], [300 x %struct.move_s]* @killer1, i32 0, i64 %idxprom317
  %216 = load i32, i32* @ply, align 4
  %idxprom319 = sext i32 %216 to i64
  %arrayidx320 = getelementptr inbounds [300 x %struct.move_s], [300 x %struct.move_s]* @killer2, i32 0, i64 %idxprom319
  %217 = bitcast %struct.move_s* %arrayidx318 to i8*
  %218 = bitcast %struct.move_s* %arrayidx320 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %217, i8* %218, i64 24, i32 4, i1 false)
  %219 = load i32, i32* @ply, align 4
  %idxprom321 = sext i32 %219 to i64
  %arrayidx322 = getelementptr inbounds [300 x %struct.move_s], [300 x %struct.move_s]* @killer2, i32 0, i64 %idxprom321
  %220 = bitcast %struct.move_s* %arrayidx322 to i8*
  %221 = bitcast %struct.move_s* %kswap to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %220, i8* %221, i64 24, i32 4, i1 false)
  %222 = load i32, i32* @ply, align 4
  %idxprom323 = sext i32 %222 to i64
  %arrayidx324 = getelementptr inbounds [300 x i32], [300 x i32]* @killer_scores, i32 0, i64 %idxprom323
  %223 = load i32, i32* %arrayidx324, align 4
  store i32 %223, i32* %ksswap, align 4
  %224 = load i32, i32* @ply, align 4
  %idxprom325 = sext i32 %224 to i64
  %arrayidx326 = getelementptr inbounds [300 x i32], [300 x i32]* @killer_scores2, i32 0, i64 %idxprom325
  %225 = load i32, i32* %arrayidx326, align 4
  %226 = load i32, i32* @ply, align 4
  %idxprom327 = sext i32 %226 to i64
  %arrayidx328 = getelementptr inbounds [300 x i32], [300 x i32]* @killer_scores, i32 0, i64 %idxprom327
  store i32 %225, i32* %arrayidx328, align 4
  %227 = load i32, i32* %ksswap, align 4
  %228 = load i32, i32* @ply, align 4
  %idxprom329 = sext i32 %228 to i64
  %arrayidx330 = getelementptr inbounds [300 x i32], [300 x i32]* @killer_scores2, i32 0, i64 %idxprom329
  store i32 %227, i32* %arrayidx330, align 4
  br label %if.end.331

if.end.331:                                       ; preds = %if.then.314, %if.then.305
  br label %if.end.391

if.else.332:                                      ; preds = %land.lhs.true.297, %land.lhs.true.289, %if.else.281
  %229 = load i32, i32* %i, align 4
  %idxprom333 = sext i32 %229 to i64
  %arrayidx334 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %moves, i32 0, i64 %idxprom333
  %from335 = getelementptr inbounds %struct.move_s, %struct.move_s* %arrayidx334, i32 0, i32 0
  %230 = load i32, i32* %from335, align 4
  %231 = load i32, i32* @ply, align 4
  %idxprom336 = sext i32 %231 to i64
  %arrayidx337 = getelementptr inbounds [300 x %struct.move_s], [300 x %struct.move_s]* @killer3, i32 0, i64 %idxprom336
  %from338 = getelementptr inbounds %struct.move_s, %struct.move_s* %arrayidx337, i32 0, i32 0
  %232 = load i32, i32* %from338, align 4
  %cmp339 = icmp eq i32 %230, %232
  br i1 %cmp339, label %land.lhs.true.340, label %if.else.383

land.lhs.true.340:                                ; preds = %if.else.332
  %233 = load i32, i32* %i, align 4
  %idxprom341 = sext i32 %233 to i64
  %arrayidx342 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %moves, i32 0, i64 %idxprom341
  %target343 = getelementptr inbounds %struct.move_s, %struct.move_s* %arrayidx342, i32 0, i32 1
  %234 = load i32, i32* %target343, align 4
  %235 = load i32, i32* @ply, align 4
  %idxprom344 = sext i32 %235 to i64
  %arrayidx345 = getelementptr inbounds [300 x %struct.move_s], [300 x %struct.move_s]* @killer3, i32 0, i64 %idxprom344
  %target346 = getelementptr inbounds %struct.move_s, %struct.move_s* %arrayidx345, i32 0, i32 1
  %236 = load i32, i32* %target346, align 4
  %cmp347 = icmp eq i32 %234, %236
  br i1 %cmp347, label %land.lhs.true.348, label %if.else.383

land.lhs.true.348:                                ; preds = %land.lhs.true.340
  %237 = load i32, i32* %i, align 4
  %idxprom349 = sext i32 %237 to i64
  %arrayidx350 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %moves, i32 0, i64 %idxprom349
  %promoted351 = getelementptr inbounds %struct.move_s, %struct.move_s* %arrayidx350, i32 0, i32 3
  %238 = load i32, i32* %promoted351, align 4
  %239 = load i32, i32* @ply, align 4
  %idxprom352 = sext i32 %239 to i64
  %arrayidx353 = getelementptr inbounds [300 x %struct.move_s], [300 x %struct.move_s]* @killer3, i32 0, i64 %idxprom352
  %promoted354 = getelementptr inbounds %struct.move_s, %struct.move_s* %arrayidx353, i32 0, i32 3
  %240 = load i32, i32* %promoted354, align 4
  %cmp355 = icmp eq i32 %238, %240
  br i1 %cmp355, label %if.then.356, label %if.else.383

if.then.356:                                      ; preds = %land.lhs.true.348
  %241 = load i32, i32* @ply, align 4
  %idxprom357 = sext i32 %241 to i64
  %arrayidx358 = getelementptr inbounds [300 x i32], [300 x i32]* @killer_scores3, i32 0, i64 %idxprom357
  %242 = load i32, i32* %arrayidx358, align 4
  %inc359 = add nsw i32 %242, 1
  store i32 %inc359, i32* %arrayidx358, align 4
  %243 = load i32, i32* @ply, align 4
  %idxprom360 = sext i32 %243 to i64
  %arrayidx361 = getelementptr inbounds [300 x i32], [300 x i32]* @killer_scores3, i32 0, i64 %idxprom360
  %244 = load i32, i32* %arrayidx361, align 4
  %245 = load i32, i32* @ply, align 4
  %idxprom362 = sext i32 %245 to i64
  %arrayidx363 = getelementptr inbounds [300 x i32], [300 x i32]* @killer_scores2, i32 0, i64 %idxprom362
  %246 = load i32, i32* %arrayidx363, align 4
  %cmp364 = icmp sgt i32 %244, %246
  br i1 %cmp364, label %if.then.365, label %if.end.382

if.then.365:                                      ; preds = %if.then.356
  %247 = load i32, i32* @ply, align 4
  %idxprom366 = sext i32 %247 to i64
  %arrayidx367 = getelementptr inbounds [300 x %struct.move_s], [300 x %struct.move_s]* @killer2, i32 0, i64 %idxprom366
  %248 = bitcast %struct.move_s* %kswap to i8*
  %249 = bitcast %struct.move_s* %arrayidx367 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %248, i8* %249, i64 24, i32 4, i1 false)
  %250 = load i32, i32* @ply, align 4
  %idxprom368 = sext i32 %250 to i64
  %arrayidx369 = getelementptr inbounds [300 x %struct.move_s], [300 x %struct.move_s]* @killer2, i32 0, i64 %idxprom368
  %251 = load i32, i32* @ply, align 4
  %idxprom370 = sext i32 %251 to i64
  %arrayidx371 = getelementptr inbounds [300 x %struct.move_s], [300 x %struct.move_s]* @killer3, i32 0, i64 %idxprom370
  %252 = bitcast %struct.move_s* %arrayidx369 to i8*
  %253 = bitcast %struct.move_s* %arrayidx371 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %252, i8* %253, i64 24, i32 4, i1 false)
  %254 = load i32, i32* @ply, align 4
  %idxprom372 = sext i32 %254 to i64
  %arrayidx373 = getelementptr inbounds [300 x %struct.move_s], [300 x %struct.move_s]* @killer3, i32 0, i64 %idxprom372
  %255 = bitcast %struct.move_s* %arrayidx373 to i8*
  %256 = bitcast %struct.move_s* %kswap to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %255, i8* %256, i64 24, i32 4, i1 false)
  %257 = load i32, i32* @ply, align 4
  %idxprom374 = sext i32 %257 to i64
  %arrayidx375 = getelementptr inbounds [300 x i32], [300 x i32]* @killer_scores2, i32 0, i64 %idxprom374
  %258 = load i32, i32* %arrayidx375, align 4
  store i32 %258, i32* %ksswap, align 4
  %259 = load i32, i32* @ply, align 4
  %idxprom376 = sext i32 %259 to i64
  %arrayidx377 = getelementptr inbounds [300 x i32], [300 x i32]* @killer_scores3, i32 0, i64 %idxprom376
  %260 = load i32, i32* %arrayidx377, align 4
  %261 = load i32, i32* @ply, align 4
  %idxprom378 = sext i32 %261 to i64
  %arrayidx379 = getelementptr inbounds [300 x i32], [300 x i32]* @killer_scores2, i32 0, i64 %idxprom378
  store i32 %260, i32* %arrayidx379, align 4
  %262 = load i32, i32* %ksswap, align 4
  %263 = load i32, i32* @ply, align 4
  %idxprom380 = sext i32 %263 to i64
  %arrayidx381 = getelementptr inbounds [300 x i32], [300 x i32]* @killer_scores3, i32 0, i64 %idxprom380
  store i32 %262, i32* %arrayidx381, align 4
  br label %if.end.382

if.end.382:                                       ; preds = %if.then.365, %if.then.356
  br label %if.end.390

if.else.383:                                      ; preds = %land.lhs.true.348, %land.lhs.true.340, %if.else.332
  %264 = load i32, i32* @ply, align 4
  %idxprom384 = sext i32 %264 to i64
  %arrayidx385 = getelementptr inbounds [300 x i32], [300 x i32]* @killer_scores3, i32 0, i64 %idxprom384
  store i32 1, i32* %arrayidx385, align 4
  %265 = load i32, i32* @ply, align 4
  %idxprom386 = sext i32 %265 to i64
  %arrayidx387 = getelementptr inbounds [300 x %struct.move_s], [300 x %struct.move_s]* @killer3, i32 0, i64 %idxprom386
  %266 = load i32, i32* %i, align 4
  %idxprom388 = sext i32 %266 to i64
  %arrayidx389 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %moves, i32 0, i64 %idxprom388
  %267 = bitcast %struct.move_s* %arrayidx387 to i8*
  %268 = bitcast %struct.move_s* %arrayidx389 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %267, i8* %268, i64 24, i32 4, i1 false)
  br label %if.end.390

if.end.390:                                       ; preds = %if.else.383, %if.end.382
  br label %if.end.391

if.end.391:                                       ; preds = %if.end.390, %if.end.331
  br label %if.end.392

if.end.392:                                       ; preds = %if.end.391, %if.then.277
  %269 = load i32, i32* %i, align 4
  %idxprom393 = sext i32 %269 to i64
  %arrayidx394 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %moves, i32 0, i64 %idxprom393
  %target395 = getelementptr inbounds %struct.move_s, %struct.move_s* %arrayidx394, i32 0, i32 1
  %270 = load i32, i32* %target395, align 4
  %idxprom396 = sext i32 %270 to i64
  %271 = load i32, i32* %i, align 4
  %idxprom397 = sext i32 %271 to i64
  %arrayidx398 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %moves, i32 0, i64 %idxprom397
  %from399 = getelementptr inbounds %struct.move_s, %struct.move_s* %arrayidx398, i32 0, i32 0
  %272 = load i32, i32* %from399, align 4
  %idxprom400 = sext i32 %272 to i64
  %arrayidx401 = getelementptr inbounds [144 x [144 x i32]], [144 x [144 x i32]]* @history_h, i32 0, i64 %idxprom400
  %arrayidx402 = getelementptr inbounds [144 x i32], [144 x i32]* %arrayidx401, i32 0, i64 %idxprom396
  %273 = load i32, i32* %arrayidx402, align 4
  %inc403 = add i32 %273, 1
  store i32 %inc403, i32* %arrayidx402, align 4
  %274 = load i32, i32* %root_score, align 4
  store i32 %274, i32* %alpha, align 4
  %275 = load i32, i32* %i, align 4
  %idxprom404 = sext i32 %275 to i64
  %arrayidx405 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %moves, i32 0, i64 %idxprom404
  %276 = bitcast %struct.move_s* %best_move to i8*
  %277 = bitcast %struct.move_s* %arrayidx405 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %276, i8* %277, i64 24, i32 4, i1 false)
  %278 = load i32, i32* %i, align 4
  store i32 %278, i32* @bestmovenum, align 4
  %279 = load i32, i32* %alpha, align 4
  store i32 %279, i32* @cur_score, align 4
  %280 = load i32, i32* @ply, align 4
  %idxprom406 = sext i32 %280 to i64
  %281 = load i32, i32* @ply, align 4
  %idxprom407 = sext i32 %281 to i64
  %arrayidx408 = getelementptr inbounds [300 x [300 x %struct.move_s]], [300 x [300 x %struct.move_s]]* @pv, i32 0, i64 %idxprom407
  %arrayidx409 = getelementptr inbounds [300 x %struct.move_s], [300 x %struct.move_s]* %arrayidx408, i32 0, i64 %idxprom406
  %282 = load i32, i32* %i, align 4
  %idxprom410 = sext i32 %282 to i64
  %arrayidx411 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %moves, i32 0, i64 %idxprom410
  %283 = bitcast %struct.move_s* %arrayidx409 to i8*
  %284 = bitcast %struct.move_s* %arrayidx411 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %283, i8* %284, i64 24, i32 4, i1 false)
  %285 = load i32, i32* @ply, align 4
  %add412 = add nsw i32 %285, 1
  store i32 %add412, i32* %j, align 4
  br label %for.cond.413

for.cond.413:                                     ; preds = %for.inc.428, %if.end.392
  %286 = load i32, i32* %j, align 4
  %287 = load i32, i32* @ply, align 4
  %add414 = add nsw i32 %287, 1
  %idxprom415 = sext i32 %add414 to i64
  %arrayidx416 = getelementptr inbounds [300 x i32], [300 x i32]* @pv_length, i32 0, i64 %idxprom415
  %288 = load i32, i32* %arrayidx416, align 4
  %cmp417 = icmp slt i32 %286, %288
  br i1 %cmp417, label %for.body.418, label %for.end.430

for.body.418:                                     ; preds = %for.cond.413
  %289 = load i32, i32* %j, align 4
  %idxprom419 = sext i32 %289 to i64
  %290 = load i32, i32* @ply, align 4
  %idxprom420 = sext i32 %290 to i64
  %arrayidx421 = getelementptr inbounds [300 x [300 x %struct.move_s]], [300 x [300 x %struct.move_s]]* @pv, i32 0, i64 %idxprom420
  %arrayidx422 = getelementptr inbounds [300 x %struct.move_s], [300 x %struct.move_s]* %arrayidx421, i32 0, i64 %idxprom419
  %291 = load i32, i32* %j, align 4
  %idxprom423 = sext i32 %291 to i64
  %292 = load i32, i32* @ply, align 4
  %add424 = add nsw i32 %292, 1
  %idxprom425 = sext i32 %add424 to i64
  %arrayidx426 = getelementptr inbounds [300 x [300 x %struct.move_s]], [300 x [300 x %struct.move_s]]* @pv, i32 0, i64 %idxprom425
  %arrayidx427 = getelementptr inbounds [300 x %struct.move_s], [300 x %struct.move_s]* %arrayidx426, i32 0, i64 %idxprom423
  %293 = bitcast %struct.move_s* %arrayidx422 to i8*
  %294 = bitcast %struct.move_s* %arrayidx427 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %293, i8* %294, i64 24, i32 4, i1 false)
  br label %for.inc.428

for.inc.428:                                      ; preds = %for.body.418
  %295 = load i32, i32* %j, align 4
  %inc429 = add nsw i32 %295, 1
  store i32 %inc429, i32* %j, align 4
  br label %for.cond.413

for.end.430:                                      ; preds = %for.cond.413
  %296 = load i32, i32* @ply, align 4
  %add431 = add nsw i32 %296, 1
  %idxprom432 = sext i32 %add431 to i64
  %arrayidx433 = getelementptr inbounds [300 x i32], [300 x i32]* @pv_length, i32 0, i64 %idxprom432
  %297 = load i32, i32* %arrayidx433, align 4
  %298 = load i32, i32* @ply, align 4
  %idxprom434 = sext i32 %298 to i64
  %arrayidx435 = getelementptr inbounds [300 x i32], [300 x i32]* @pv_length, i32 0, i64 %idxprom434
  store i32 %297, i32* %arrayidx435, align 4
  %299 = load i32, i32* @cur_score, align 4
  %300 = load i32, i32* %beta, align 4
  %cmp436 = icmp sge i32 %299, %300
  br i1 %cmp436, label %if.then.437, label %if.end.438

if.then.437:                                      ; preds = %for.end.430
  %301 = bitcast %struct.move_s* %agg.result to i8*
  %302 = bitcast %struct.move_s* %best_move to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %301, i8* %302, i64 24, i32 4, i1 false)
  br label %return

if.end.438:                                       ; preds = %for.end.430
  %303 = load i32, i32* @post, align 4
  %tobool439 = icmp ne i32 %303, 0
  br i1 %tobool439, label %land.lhs.true.440, label %if.end.443

land.lhs.true.440:                                ; preds = %if.end.438
  %304 = load i32, i32* @i_depth, align 4
  %cmp441 = icmp sge i32 %304, 2
  br i1 %cmp441, label %if.then.442, label %if.end.443

if.then.442:                                      ; preds = %land.lhs.true.440
  %305 = load i32, i32* %alpha, align 4
  call void @post_thinking(i32 %305)
  br label %if.end.443

if.end.443:                                       ; preds = %if.then.442, %land.lhs.true.440, %if.end.438
  br label %if.end.444

if.end.444:                                       ; preds = %if.end.443, %land.lhs.true.254, %if.end.252
  %306 = load i32, i32* %legal_move, align 4
  %tobool445 = icmp ne i32 %306, 0
  br i1 %tobool445, label %if.then.446, label %if.end.447

if.then.446:                                      ; preds = %if.end.444
  store i32 0, i32* %first, align 4
  br label %if.end.447

if.end.447:                                       ; preds = %if.then.446, %if.end.444
  %307 = load i32, i32* @nodes, align 4
  %308 = load i32, i32* %oldnodecount, align 4
  %sub448 = sub nsw i32 %307, %308
  %309 = load i32, i32* %i, align 4
  %idxprom449 = sext i32 %309 to i64
  %arrayidx450 = getelementptr inbounds [512 x i32], [512 x i32]* @rootnodecount, i32 0, i64 %idxprom449
  store i32 %sub448, i32* %arrayidx450, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %310 = load i32, i32* %no_moves, align 4
  %tobool451 = icmp ne i32 %310, 0
  br i1 %tobool451, label %land.lhs.true.452, label %if.else.474

land.lhs.true.452:                                ; preds = %while.end
  %311 = load i32, i32* @is_pondering, align 4
  %tobool453 = icmp ne i32 %311, 0
  br i1 %tobool453, label %if.else.474, label %if.then.454

if.then.454:                                      ; preds = %land.lhs.true.452
  %312 = load i32, i32* @Variant, align 4
  %cmp455 = icmp ne i32 %312, 3
  br i1 %cmp455, label %land.lhs.true.456, label %if.else.468

land.lhs.true.456:                                ; preds = %if.then.454
  %313 = load i32, i32* @Variant, align 4
  %cmp457 = icmp ne i32 %313, 4
  br i1 %cmp457, label %if.then.458, label %if.else.468

if.then.458:                                      ; preds = %land.lhs.true.456
  %call459 = call i32 @in_check()
  %tobool460 = icmp ne i32 %call459, 0
  br i1 %tobool460, label %if.then.461, label %if.else.466

if.then.461:                                      ; preds = %if.then.458
  %314 = load i32, i32* @white_to_move, align 4
  %cmp462 = icmp eq i32 %314, 1
  br i1 %cmp462, label %if.then.463, label %if.else.464

if.then.463:                                      ; preds = %if.then.461
  store i32 2, i32* @result, align 4
  br label %if.end.465

if.else.464:                                      ; preds = %if.then.461
  store i32 3, i32* @result, align 4
  br label %if.end.465

if.end.465:                                       ; preds = %if.else.464, %if.then.463
  br label %if.end.467

if.else.466:                                      ; preds = %if.then.458
  store i32 1, i32* @result, align 4
  br label %if.end.467

if.end.467:                                       ; preds = %if.else.466, %if.end.465
  br label %if.end.473

if.else.468:                                      ; preds = %land.lhs.true.456, %if.then.454
  %315 = load i32, i32* @white_to_move, align 4
  %cmp469 = icmp eq i32 %315, 1
  br i1 %cmp469, label %if.then.470, label %if.else.471

if.then.470:                                      ; preds = %if.else.468
  store i32 3, i32* @result, align 4
  br label %if.end.472

if.else.471:                                      ; preds = %if.else.468
  store i32 2, i32* @result, align 4
  br label %if.end.472

if.end.472:                                       ; preds = %if.else.471, %if.then.470
  br label %if.end.473

if.end.473:                                       ; preds = %if.end.472, %if.end.467
  br label %if.end.483

if.else.474:                                      ; preds = %land.lhs.true.452, %while.end
  %316 = load i32, i32* @is_pondering, align 4
  %tobool475 = icmp ne i32 %316, 0
  br i1 %tobool475, label %if.end.482, label %if.then.476

if.then.476:                                      ; preds = %if.else.474
  %317 = load i32, i32* @fifty, align 4
  %cmp477 = icmp sgt i32 %317, 100
  br i1 %cmp477, label %if.then.478, label %if.end.481

if.then.478:                                      ; preds = %if.then.476
  store i32 4, i32* @result, align 4
  store i32 0, i32* @cur_score, align 4
  %318 = load i32, i32* @ply, align 4
  %idxprom479 = sext i32 %318 to i64
  %arrayidx480 = getelementptr inbounds [300 x i32], [300 x i32]* @pv_length, i32 0, i64 %idxprom479
  store i32 0, i32* %arrayidx480, align 4
  %319 = bitcast %struct.move_s* %agg.result to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %319, i8* bitcast (%struct.move_s* @dummy to i8*), i64 24, i32 4, i1 false)
  br label %return

if.end.481:                                       ; preds = %if.then.476
  br label %if.end.482

if.end.482:                                       ; preds = %if.end.481, %if.else.474
  br label %if.end.483

if.end.483:                                       ; preds = %if.end.482, %if.end.473
  %320 = bitcast %struct.move_s* %agg.result to i8*
  %321 = bitcast %struct.move_s* %best_move to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %320, i8* %321, i64 24, i32 4, i1 false)
  br label %return

return:                                           ; preds = %if.end.483, %if.then.478, %if.then.437, %if.then.251, %if.then
  ret void
}

declare void @comp_to_san(%struct.move_s* byval align 8, i8*) #2

declare void @post_fh_thinking(i32, %struct.move_s*) #2

declare void @post_fl_thinking(i32, %struct.move_s*) #2

declare void @post_thinking(i32) #2

declare void @post_fail_thinking(i32, %struct.move_s*) #2

; Function Attrs: nounwind uwtable
define void @think(%struct.move_s* noalias sret %agg.result) #0 {
entry:
  %comp_move = alloca %struct.move_s, align 8
  %temp_move = alloca %struct.move_s, align 4
  %old_move = alloca %struct.move_s, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %elapsed = alloca i32, align 4
  %temp_score = alloca i32, align 4
  %true_score = alloca i32, align 4
  %alpha = alloca i32, align 4
  %beta = alloca i32, align 4
  %tmptmp = alloca i32, align 4
  %rs = alloca i32, align 4
  %moves = alloca [512 x %struct.move_s], align 16
  %l = alloca i32, align 4
  %lastlegal = alloca i32, align 4
  %ic = alloca i32, align 4
  %pn_restart = alloca i32, align 4
  %num_moves = alloca i32, align 4
  %output = alloca [8 x i8], align 1
  %tmp = alloca %struct.move_s, align 4
  %tmp197 = alloca %struct.move_s, align 4
  %tmp208 = alloca %struct.move_s, align 4
  %tmp287 = alloca %struct.move_s, align 4
  store i32 0, i32* %k, align 4
  store i32 0, i32* %temp_score, align 4
  store i32 0, i32* %lastlegal, align 4
  store i32 0, i32* @userealholdings, align 4
  store i32 0, i32* %pn_restart, align 4
  br label %restart

restart:                                          ; preds = %if.else.483, %if.end.338, %entry
  store i32 0, i32* @nodes, align 4
  store i32 0, i32* @qnodes, align 4
  store i32 1, i32* @ply, align 4
  store i32 0, i32* @ECacheProbes, align 4
  store i32 0, i32* @ECacheHits, align 4
  store i32 0, i32* @TTProbes, align 4
  store i32 0, i32* @TTHits, align 4
  store i32 0, i32* @TTStores, align 4
  store i32 0, i32* @NCuts, align 4
  store i32 0, i32* @NTries, align 4
  store i32 0, i32* @TExt, align 4
  store i32 0, i32* @FH, align 4
  store i32 0, i32* @FHF, align 4
  store i32 0, i32* @PVS, align 4
  store i32 0, i32* @FULL, align 4
  store i32 0, i32* @PVSF, align 4
  store i32 0, i32* @ext_check, align 4
  store i32 0, i32* @ext_recap, align 4
  store i32 0, i32* @ext_onerep, align 4
  store i32 0, i32* @razor_drop, align 4
  store i32 0, i32* @razor_material, align 4
  store i32 0, i32* @drop_cuts, align 4
  store i32 0, i32* %rs, align 4
  store i32 0, i32* @extendedtime, align 4
  store i32 0, i32* @forcedwin, align 4
  store i32 200, i32* @maxposdiff, align 4
  store i8 0, i8* @true_i_depth, align 1
  store i32 -1, i32* @bestmovenum, align 4
  %call = call i32 @interrupt()
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %restart
  %0 = load i32, i32* @is_analyzing, align 4
  %tobool1 = icmp ne i32 %0, 0
  br i1 %tobool1, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %1 = load i32, i32* @is_pondering, align 4
  %tobool2 = icmp ne i32 %1, 0
  br i1 %tobool2, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %land.lhs.true
  %2 = bitcast %struct.move_s* %agg.result to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %2, i8* bitcast (%struct.move_s* @dummy to i8*), i64 24, i32 4, i1 false)
  br label %return

if.end:                                           ; preds = %lor.lhs.false, %restart
  %call3 = call i64 @rtime()
  store i64 %call3, i64* @start_time, align 8
  store i32 0, i32* @legals, align 4
  %3 = load i32, i32* @Variant, align 4
  %cmp = icmp eq i32 %3, 4
  br i1 %cmp, label %if.then.4, label %if.else

if.then.4:                                        ; preds = %if.end
  store i32 1, i32* @captures, align 4
  br label %if.end.5

if.else:                                          ; preds = %if.end
  store i32 0, i32* @captures, align 4
  br label %if.end.5

if.end.5:                                         ; preds = %if.else, %if.then.4
  %arrayidx = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %moves, i32 0, i64 0
  call void @gen(%struct.move_s* %arrayidx)
  %4 = load i32, i32* @numb_moves, align 4
  store i32 %4, i32* %num_moves, align 4
  %call6 = call i32 @in_check()
  store i32 %call6, i32* %ic, align 4
  store i32 0, i32* %l, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.5
  %5 = load i32, i32* %l, align 4
  %6 = load i32, i32* @numb_moves, align 4
  %cmp7 = icmp slt i32 %5, %6
  br i1 %cmp7, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %arrayidx8 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %moves, i32 0, i64 0
  %7 = load i32, i32* %l, align 4
  call void @make(%struct.move_s* %arrayidx8, i32 %7)
  %arrayidx9 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %moves, i32 0, i64 0
  %8 = load i32, i32* %l, align 4
  %9 = load i32, i32* %ic, align 4
  %call10 = call i32 @check_legal(%struct.move_s* %arrayidx9, i32 %8, i32 %9)
  %tobool11 = icmp ne i32 %call10, 0
  br i1 %tobool11, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %for.body
  %10 = load i32, i32* @legals, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, i32* @legals, align 4
  %11 = load i32, i32* %l, align 4
  store i32 %11, i32* %lastlegal, align 4
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.12, %for.body
  %arrayidx14 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %moves, i32 0, i64 0
  %12 = load i32, i32* %l, align 4
  call void @unmake(%struct.move_s* %arrayidx14, i32 %12)
  br label %for.inc

for.inc:                                          ; preds = %if.end.13
  %13 = load i32, i32* %l, align 4
  %inc15 = add nsw i32 %13, 1
  store i32 %inc15, i32* %l, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %14 = load i32, i32* @Variant, align 4
  %cmp16 = icmp eq i32 %14, 4
  br i1 %cmp16, label %land.lhs.true.17, label %if.end.35

land.lhs.true.17:                                 ; preds = %for.end
  %15 = load i32, i32* @legals, align 4
  %cmp18 = icmp eq i32 %15, 0
  br i1 %cmp18, label %if.then.19, label %if.end.35

if.then.19:                                       ; preds = %land.lhs.true.17
  store i32 0, i32* @captures, align 4
  store i32 0, i32* %num_moves, align 4
  %arrayidx20 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %moves, i32 0, i64 0
  call void @gen(%struct.move_s* %arrayidx20)
  %16 = load i32, i32* @numb_moves, align 4
  store i32 %16, i32* %num_moves, align 4
  store i32 0, i32* %l, align 4
  br label %for.cond.21

for.cond.21:                                      ; preds = %for.inc.32, %if.then.19
  %17 = load i32, i32* %l, align 4
  %18 = load i32, i32* @numb_moves, align 4
  %cmp22 = icmp slt i32 %17, %18
  br i1 %cmp22, label %for.body.23, label %for.end.34

for.body.23:                                      ; preds = %for.cond.21
  %arrayidx24 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %moves, i32 0, i64 0
  %19 = load i32, i32* %l, align 4
  call void @make(%struct.move_s* %arrayidx24, i32 %19)
  %arrayidx25 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %moves, i32 0, i64 0
  %20 = load i32, i32* %l, align 4
  %21 = load i32, i32* %ic, align 4
  %call26 = call i32 @check_legal(%struct.move_s* %arrayidx25, i32 %20, i32 %21)
  %tobool27 = icmp ne i32 %call26, 0
  br i1 %tobool27, label %if.then.28, label %if.end.30

if.then.28:                                       ; preds = %for.body.23
  %22 = load i32, i32* @legals, align 4
  %inc29 = add nsw i32 %22, 1
  store i32 %inc29, i32* @legals, align 4
  %23 = load i32, i32* %l, align 4
  store i32 %23, i32* %lastlegal, align 4
  br label %if.end.30

if.end.30:                                        ; preds = %if.then.28, %for.body.23
  %arrayidx31 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %moves, i32 0, i64 0
  %24 = load i32, i32* %l, align 4
  call void @unmake(%struct.move_s* %arrayidx31, i32 %24)
  br label %for.inc.32

for.inc.32:                                       ; preds = %if.end.30
  %25 = load i32, i32* %l, align 4
  %inc33 = add nsw i32 %25, 1
  store i32 %inc33, i32* %l, align 4
  br label %for.cond.21

for.end.34:                                       ; preds = %for.cond.21
  br label %if.end.35

if.end.35:                                        ; preds = %for.end.34, %land.lhs.true.17, %for.end
  %26 = load i32, i32* @Variant, align 4
  %cmp36 = icmp ne i32 %26, 1
  br i1 %cmp36, label %land.lhs.true.37, label %if.end.44

land.lhs.true.37:                                 ; preds = %if.end.35
  %27 = load i32, i32* @is_pondering, align 4
  %tobool38 = icmp ne i32 %27, 0
  br i1 %tobool38, label %if.end.44, label %if.then.39

if.then.39:                                       ; preds = %land.lhs.true.37
  %28 = load i32, i32* @legals, align 4
  %cmp40 = icmp eq i32 %28, 1
  br i1 %cmp40, label %if.then.41, label %if.end.43

if.then.41:                                       ; preds = %if.then.39
  %29 = load i32, i32* @inc, align 4
  %mul = mul nsw i32 %29, 100
  %30 = load i32, i32* @time_cushion, align 4
  %add = add nsw i32 %30, %mul
  store i32 %add, i32* @time_cushion, align 4
  %31 = load i32, i32* %lastlegal, align 4
  %idxprom = sext i32 %31 to i64
  %arrayidx42 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %moves, i32 0, i64 %idxprom
  %32 = bitcast %struct.move_s* %agg.result to i8*
  %33 = bitcast %struct.move_s* %arrayidx42 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %32, i8* %33, i64 24, i32 4, i1 false)
  br label %return

if.end.43:                                        ; preds = %if.then.39
  br label %if.end.44

if.end.44:                                        ; preds = %if.end.43, %land.lhs.true.37, %if.end.35
  call void @check_phase()
  %34 = load i32, i32* @phase, align 4
  switch i32 %34, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.46
    i32 2, label %sw.bb.48
  ]

sw.bb:                                            ; preds = %if.end.44
  %call45 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i32 0, i32 0))
  br label %sw.epilog

sw.bb.46:                                         ; preds = %if.end.44
  %call47 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i32 0, i32 0))
  br label %sw.epilog

sw.bb.48:                                         ; preds = %if.end.44
  %call49 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i32 0, i32 0))
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end.44, %sw.bb.48, %sw.bb.46, %sw.bb
  %35 = load i32, i32* @is_pondering, align 4
  %tobool50 = icmp ne i32 %35, 0
  br i1 %tobool50, label %if.else.66, label %if.then.51

if.then.51:                                       ; preds = %sw.epilog
  %36 = load i32, i32* @fixed_time, align 4
  %tobool52 = icmp ne i32 %36, 0
  br i1 %tobool52, label %if.else.64, label %if.then.53

if.then.53:                                       ; preds = %if.then.51
  %37 = load i32, i32* @go_fast, align 4
  %tobool54 = icmp ne i32 %37, 0
  br i1 %tobool54, label %if.then.55, label %if.else.61

if.then.55:                                       ; preds = %if.then.53
  %call56 = call i32 @allocate_time()
  store i32 %call56, i32* %tmptmp, align 4
  %38 = load i32, i32* %tmptmp, align 4
  %cmp57 = icmp sgt i32 %38, 40
  br i1 %cmp57, label %if.then.58, label %if.else.59

if.then.58:                                       ; preds = %if.then.55
  store i32 40, i32* @time_for_move, align 4
  br label %if.end.60

if.else.59:                                       ; preds = %if.then.55
  %39 = load i32, i32* %tmptmp, align 4
  store i32 %39, i32* @time_for_move, align 4
  br label %if.end.60

if.end.60:                                        ; preds = %if.else.59, %if.then.58
  br label %if.end.63

if.else.61:                                       ; preds = %if.then.53
  %call62 = call i32 @allocate_time()
  store i32 %call62, i32* @time_for_move, align 4
  br label %if.end.63

if.end.63:                                        ; preds = %if.else.61, %if.end.60
  br label %if.end.65

if.else.64:                                       ; preds = %if.then.51
  %40 = load i32, i32* @fixed_time, align 4
  store i32 %40, i32* @time_for_move, align 4
  br label %if.end.65

if.end.65:                                        ; preds = %if.else.64, %if.end.63
  br label %if.end.67

if.else.66:                                       ; preds = %sw.epilog
  store i32 999999, i32* @time_for_move, align 4
  br label %if.end.67

if.end.67:                                        ; preds = %if.else.66, %if.end.65
  %41 = load i32, i32* %pn_restart, align 4
  %tobool68 = icmp ne i32 %41, 0
  br i1 %tobool68, label %if.then.69, label %if.end.76

if.then.69:                                       ; preds = %if.end.67
  %42 = load i32, i32* @time_for_move, align 4
  %conv = sitofp i32 %42 to float
  %mul70 = fmul float %conv, 2.000000e+00
  %conv71 = fpext float %mul70 to double
  %43 = load i32, i32* %pn_restart, align 4
  %conv72 = sitofp i32 %43 to float
  %conv73 = fpext float %conv72 to double
  %add74 = fadd double %conv73, 1.000000e+00
  %div = fdiv double %conv71, %add74
  %conv75 = fptosi double %div to i32
  store i32 %conv75, i32* @time_for_move, align 4
  br label %if.end.76

if.end.76:                                        ; preds = %if.then.69, %if.end.67
  %44 = load i32, i32* @time_for_move, align 4
  %call77 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i32 0, i32 0), i32 %44)
  %45 = load i32, i32* %pn_restart, align 4
  %tobool78 = icmp ne i32 %45, 0
  br i1 %tobool78, label %if.end.80, label %if.then.79

if.then.79:                                       ; preds = %if.end.76
  call void @clear_tt()
  call void @reset_ecache()
  call void @llvm.memset.p0i8.i64(i8* bitcast ([300 x i32]* @rootlosers to i8*), i8 0, i64 1200, i32 16, i1 false)
  br label %if.end.80

if.end.80:                                        ; preds = %if.then.79, %if.end.76
  %46 = load i32, i32* %pn_restart, align 4
  %tobool81 = icmp ne i32 %46, 0
  br i1 %tobool81, label %if.else.102, label %land.lhs.true.82

land.lhs.true.82:                                 ; preds = %if.end.80
  %47 = load i32, i32* @is_pondering, align 4
  %tobool83 = icmp ne i32 %47, 0
  br i1 %tobool83, label %if.else.102, label %land.lhs.true.84

land.lhs.true.84:                                 ; preds = %land.lhs.true.82
  %48 = load i32, i32* @Variant, align 4
  %cmp85 = icmp eq i32 %48, 3
  br i1 %cmp85, label %land.lhs.true.90, label %lor.lhs.false.87

lor.lhs.false.87:                                 ; preds = %land.lhs.true.84
  %49 = load i32, i32* @Variant, align 4
  %cmp88 = icmp eq i32 %49, 4
  br i1 %cmp88, label %land.lhs.true.90, label %if.else.102

land.lhs.true.90:                                 ; preds = %lor.lhs.false.87, %land.lhs.true.84
  %50 = load i32, i32* @piece_count, align 4
  %cmp91 = icmp sgt i32 %50, 3
  br i1 %cmp91, label %if.then.96, label %lor.lhs.false.93

lor.lhs.false.93:                                 ; preds = %land.lhs.true.90
  %51 = load i32, i32* @Variant, align 4
  %cmp94 = icmp ne i32 %51, 3
  br i1 %cmp94, label %if.then.96, label %if.else.102

if.then.96:                                       ; preds = %lor.lhs.false.93, %land.lhs.true.90
  %52 = load i32, i32* @time_for_move, align 4
  %conv97 = sitofp i32 %52 to float
  %conv98 = fpext float %conv97 to double
  %mul99 = fmul double %conv98, 1.000000e+00
  %div100 = fdiv double %mul99, 3.000000e+00
  %conv101 = fptosi double %div100 to i32
  store i32 %conv101, i32* @pn_time, align 4
  call void @proofnumberscan()
  br label %if.end.106

if.else.102:                                      ; preds = %lor.lhs.false.93, %lor.lhs.false.87, %land.lhs.true.82, %if.end.80
  %53 = load i32, i32* %pn_restart, align 4
  %tobool103 = icmp ne i32 %53, 0
  br i1 %tobool103, label %if.end.105, label %if.then.104

if.then.104:                                      ; preds = %if.else.102
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast (%struct.move_s* @pn_move to i8*), i8* bitcast (%struct.move_s* @dummy to i8*), i64 24, i32 4, i1 false)
  br label %if.end.105

if.end.105:                                       ; preds = %if.then.104, %if.else.102
  br label %if.end.106

if.end.106:                                       ; preds = %if.end.105, %if.then.96
  %54 = load i32, i32* @result, align 4
  %tobool107 = icmp ne i32 %54, 0
  br i1 %tobool107, label %land.lhs.true.108, label %if.end.112

land.lhs.true.108:                                ; preds = %if.end.106
  %55 = load i32, i32* getelementptr inbounds (%struct.move_s, %struct.move_s* @pn_move, i32 0, i32 1), align 4
  %56 = load i32, i32* getelementptr inbounds (%struct.move_s, %struct.move_s* @dummy, i32 0, i32 1), align 4
  %cmp109 = icmp eq i32 %55, %56
  br i1 %cmp109, label %if.then.111, label %if.end.112

if.then.111:                                      ; preds = %land.lhs.true.108
  %57 = bitcast %struct.move_s* %agg.result to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %57, i8* bitcast (%struct.move_s* @pn_move to i8*), i64 24, i32 4, i1 false)
  br label %return

if.end.112:                                       ; preds = %land.lhs.true.108, %if.end.106
  %58 = load i32, i32* @forcedwin, align 4
  %tobool113 = icmp ne i32 %58, 0
  br i1 %tobool113, label %land.lhs.true.116, label %lor.lhs.false.114

lor.lhs.false.114:                                ; preds = %if.end.112
  %59 = load i32, i32* @result, align 4
  %tobool115 = icmp ne i32 %59, 0
  br i1 %tobool115, label %land.lhs.true.116, label %if.else.122

land.lhs.true.116:                                ; preds = %lor.lhs.false.114, %if.end.112
  %60 = load i32, i32* getelementptr inbounds (%struct.move_s, %struct.move_s* @pn_move, i32 0, i32 1), align 4
  %61 = load i32, i32* getelementptr inbounds (%struct.move_s, %struct.move_s* @dummy, i32 0, i32 1), align 4
  %cmp117 = icmp ne i32 %60, %61
  br i1 %cmp117, label %land.lhs.true.119, label %if.else.122

land.lhs.true.119:                                ; preds = %land.lhs.true.116
  %62 = load i32, i32* @is_analyzing, align 4
  %tobool120 = icmp ne i32 %62, 0
  br i1 %tobool120, label %if.else.122, label %if.then.121

if.then.121:                                      ; preds = %land.lhs.true.119
  %63 = bitcast %struct.move_s* %comp_move to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %63, i8* bitcast (%struct.move_s* @pn_move to i8*), i64 24, i32 4, i1 false)
  br label %if.end.272

if.else.122:                                      ; preds = %land.lhs.true.119, %land.lhs.true.116, %lor.lhs.false.114
  store i32 0, i32* %i, align 4
  br label %for.cond.123

for.cond.123:                                     ; preds = %for.inc.138, %if.else.122
  %64 = load i32, i32* %i, align 4
  %cmp124 = icmp slt i32 %64, 300
  br i1 %cmp124, label %for.body.126, label %for.end.140

for.body.126:                                     ; preds = %for.cond.123
  store i32 0, i32* %j, align 4
  br label %for.cond.127

for.cond.127:                                     ; preds = %for.inc.135, %for.body.126
  %65 = load i32, i32* %j, align 4
  %cmp128 = icmp slt i32 %65, 300
  br i1 %cmp128, label %for.body.130, label %for.end.137

for.body.130:                                     ; preds = %for.cond.127
  %66 = load i32, i32* %j, align 4
  %idxprom131 = sext i32 %66 to i64
  %67 = load i32, i32* %i, align 4
  %idxprom132 = sext i32 %67 to i64
  %arrayidx133 = getelementptr inbounds [300 x [300 x %struct.move_s]], [300 x [300 x %struct.move_s]]* @pv, i32 0, i64 %idxprom132
  %arrayidx134 = getelementptr inbounds [300 x %struct.move_s], [300 x %struct.move_s]* %arrayidx133, i32 0, i64 %idxprom131
  %68 = bitcast %struct.move_s* %arrayidx134 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %68, i8* bitcast (%struct.move_s* @dummy to i8*), i64 24, i32 4, i1 false)
  br label %for.inc.135

for.inc.135:                                      ; preds = %for.body.130
  %69 = load i32, i32* %j, align 4
  %inc136 = add nsw i32 %69, 1
  store i32 %inc136, i32* %j, align 4
  br label %for.cond.127

for.end.137:                                      ; preds = %for.cond.127
  br label %for.inc.138

for.inc.138:                                      ; preds = %for.end.137
  %70 = load i32, i32* %i, align 4
  %inc139 = add nsw i32 %70, 1
  store i32 %inc139, i32* %i, align 4
  br label %for.cond.123

for.end.140:                                      ; preds = %for.cond.123
  call void @llvm.memset.p0i8.i64(i8* bitcast ([144 x [144 x i32]]* @history_h to i8*), i8 0, i64 82944, i32 16, i1 false)
  store i32 0, i32* %i, align 4
  br label %for.cond.141

for.cond.141:                                     ; preds = %for.inc.157, %for.end.140
  %71 = load i32, i32* %i, align 4
  %cmp142 = icmp slt i32 %71, 300
  br i1 %cmp142, label %for.body.144, label %for.end.159

for.body.144:                                     ; preds = %for.cond.141
  %72 = load i32, i32* %i, align 4
  %idxprom145 = sext i32 %72 to i64
  %arrayidx146 = getelementptr inbounds [300 x i32], [300 x i32]* @killer_scores, i32 0, i64 %idxprom145
  store i32 0, i32* %arrayidx146, align 4
  %73 = load i32, i32* %i, align 4
  %idxprom147 = sext i32 %73 to i64
  %arrayidx148 = getelementptr inbounds [300 x i32], [300 x i32]* @killer_scores2, i32 0, i64 %idxprom147
  store i32 0, i32* %arrayidx148, align 4
  %74 = load i32, i32* %i, align 4
  %idxprom149 = sext i32 %74 to i64
  %arrayidx150 = getelementptr inbounds [300 x i32], [300 x i32]* @killer_scores3, i32 0, i64 %idxprom149
  store i32 0, i32* %arrayidx150, align 4
  %75 = load i32, i32* %i, align 4
  %idxprom151 = sext i32 %75 to i64
  %arrayidx152 = getelementptr inbounds [300 x %struct.move_s], [300 x %struct.move_s]* @killer1, i32 0, i64 %idxprom151
  %76 = bitcast %struct.move_s* %arrayidx152 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %76, i8* bitcast (%struct.move_s* @dummy to i8*), i64 24, i32 4, i1 false)
  %77 = load i32, i32* %i, align 4
  %idxprom153 = sext i32 %77 to i64
  %arrayidx154 = getelementptr inbounds [300 x %struct.move_s], [300 x %struct.move_s]* @killer2, i32 0, i64 %idxprom153
  %78 = bitcast %struct.move_s* %arrayidx154 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %78, i8* bitcast (%struct.move_s* @dummy to i8*), i64 24, i32 4, i1 false)
  %79 = load i32, i32* %i, align 4
  %idxprom155 = sext i32 %79 to i64
  %arrayidx156 = getelementptr inbounds [300 x %struct.move_s], [300 x %struct.move_s]* @killer3, i32 0, i64 %idxprom155
  %80 = bitcast %struct.move_s* %arrayidx156 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %80, i8* bitcast (%struct.move_s* @dummy to i8*), i64 24, i32 4, i1 false)
  br label %for.inc.157

for.inc.157:                                      ; preds = %for.body.144
  %81 = load i32, i32* %i, align 4
  %inc158 = add nsw i32 %81, 1
  store i32 %inc158, i32* %i, align 4
  br label %for.cond.141

for.end.159:                                      ; preds = %for.cond.141
  call void @llvm.memset.p0i8.i64(i8* bitcast ([512 x i32]* @rootnodecount to i8*), i8 0, i64 2048, i32 16, i1 false)
  store i32 0, i32* %temp_score, align 4
  store i32 0, i32* @cur_score, align 4
  store i32 0, i32* %true_score, align 4
  store i32 1, i32* @i_depth, align 4
  br label %for.cond.160

for.cond.160:                                     ; preds = %for.inc.269, %for.end.159
  %82 = load i32, i32* @i_depth, align 4
  %83 = load i32, i32* @maxdepth, align 4
  %cmp161 = icmp sle i32 %82, %83
  br i1 %cmp161, label %for.body.163, label %for.end.271

for.body.163:                                     ; preds = %for.cond.160
  %call164 = call i64 @rtime()
  %84 = load i64, i64* @start_time, align 8
  %call165 = call i32 @rdifftime(i64 %call164, i64 %84)
  store i32 %call165, i32* %elapsed, align 4
  %85 = load i32, i32* %elapsed, align 4
  %conv166 = sitofp i32 %85 to double
  %86 = load i32, i32* @time_for_move, align 4
  %conv167 = sitofp i32 %86 to double
  %mul168 = fmul double %conv167, 2.100000e+00
  %div169 = fdiv double %mul168, 3.000000e+00
  %cmp170 = fcmp ogt double %conv166, %div169
  br i1 %cmp170, label %land.lhs.true.172, label %if.end.176

land.lhs.true.172:                                ; preds = %for.body.163
  %87 = load i32, i32* @i_depth, align 4
  %cmp173 = icmp sgt i32 %87, 2
  br i1 %cmp173, label %if.then.175, label %if.end.176

if.then.175:                                      ; preds = %land.lhs.true.172
  br label %for.end.271

if.end.176:                                       ; preds = %land.lhs.true.172, %for.body.163
  store i32 0, i32* @failed, align 4
  %88 = load i32, i32* %temp_score, align 4
  %89 = load i32, i32* @Variant, align 4
  %cmp177 = icmp eq i32 %89, 2
  %cond = select i1 %cmp177, i32 35, i32 100
  %sub = sub nsw i32 %88, %cond
  store i32 %sub, i32* %alpha, align 4
  %90 = load i32, i32* %temp_score, align 4
  %91 = load i32, i32* @Variant, align 4
  %cmp179 = icmp eq i32 %91, 2
  %cond181 = select i1 %cmp179, i32 35, i32 100
  %add182 = add nsw i32 %90, %cond181
  store i32 %add182, i32* %beta, align 4
  %92 = load i32, i32* %alpha, align 4
  %93 = load i32, i32* %beta, align 4
  %94 = load i32, i32* @i_depth, align 4
  call void @search_root(%struct.move_s* sret %tmp, i32 %92, i32 %93, i32 %94)
  %95 = bitcast %struct.move_s* %temp_move to i8*
  %96 = bitcast %struct.move_s* %tmp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %95, i8* %96, i64 24, i32 4, i1 false)
  %97 = load i32, i32* @result, align 4
  %tobool183 = icmp ne i32 %97, 0
  br i1 %tobool183, label %if.then.184, label %if.end.185

if.then.184:                                      ; preds = %if.end.176
  br label %for.end.271

if.end.185:                                       ; preds = %if.end.176
  %98 = load i32, i32* @cur_score, align 4
  %99 = load i32, i32* %alpha, align 4
  %cmp186 = icmp sle i32 %98, %99
  br i1 %cmp186, label %if.then.188, label %if.else.189

if.then.188:                                      ; preds = %if.end.185
  store i32 1, i32* @failed, align 4
  br label %if.end.190

if.else.189:                                      ; preds = %if.end.185
  store i32 0, i32* @failed, align 4
  br label %if.end.190

if.end.190:                                       ; preds = %if.else.189, %if.then.188
  %100 = load i32, i32* @cur_score, align 4
  %101 = load i32, i32* %alpha, align 4
  %cmp191 = icmp sle i32 %100, %101
  br i1 %cmp191, label %land.lhs.true.193, label %if.else.201

land.lhs.true.193:                                ; preds = %if.end.190
  %102 = load i32, i32* @time_exit, align 4
  %tobool194 = icmp ne i32 %102, 0
  br i1 %tobool194, label %if.else.201, label %if.then.195

if.then.195:                                      ; preds = %land.lhs.true.193
  %103 = load i32, i32* %rs, align 4
  %inc196 = add nsw i32 %103, 1
  store i32 %inc196, i32* %rs, align 4
  %104 = load i32, i32* @i_depth, align 4
  call void @search_root(%struct.move_s* sret %tmp197, i32 -1000000, i32 1000000, i32 %104)
  %105 = bitcast %struct.move_s* %temp_move to i8*
  %106 = bitcast %struct.move_s* %tmp197 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %105, i8* %106, i64 24, i32 4, i1 false)
  %107 = load i32, i32* @time_exit, align 4
  %tobool198 = icmp ne i32 %107, 0
  br i1 %tobool198, label %if.end.200, label %if.then.199

if.then.199:                                      ; preds = %if.then.195
  store i32 0, i32* @failed, align 4
  br label %if.end.200

if.end.200:                                       ; preds = %if.then.199, %if.then.195
  br label %if.end.213

if.else.201:                                      ; preds = %land.lhs.true.193, %if.end.190
  %108 = load i32, i32* @cur_score, align 4
  %109 = load i32, i32* %beta, align 4
  %cmp202 = icmp sge i32 %108, %109
  br i1 %cmp202, label %land.lhs.true.204, label %if.end.212

land.lhs.true.204:                                ; preds = %if.else.201
  %110 = load i32, i32* @time_exit, align 4
  %tobool205 = icmp ne i32 %110, 0
  br i1 %tobool205, label %if.end.212, label %if.then.206

if.then.206:                                      ; preds = %land.lhs.true.204
  %111 = bitcast %struct.move_s* %comp_move to i8*
  %112 = bitcast %struct.move_s* %temp_move to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %111, i8* %112, i64 24, i32 4, i1 false)
  %113 = load i32, i32* @cur_score, align 4
  store i32 %113, i32* %temp_score, align 4
  %114 = load i32, i32* %rs, align 4
  %inc207 = add nsw i32 %114, 1
  store i32 %inc207, i32* %rs, align 4
  %115 = load i32, i32* @i_depth, align 4
  call void @search_root(%struct.move_s* sret %tmp208, i32 -1000000, i32 1000000, i32 %115)
  %116 = bitcast %struct.move_s* %temp_move to i8*
  %117 = bitcast %struct.move_s* %tmp208 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %116, i8* %117, i64 24, i32 4, i1 false)
  %118 = load i32, i32* @time_exit, align 4
  %tobool209 = icmp ne i32 %118, 0
  br i1 %tobool209, label %if.end.211, label %if.then.210

if.then.210:                                      ; preds = %if.then.206
  store i32 0, i32* @failed, align 4
  br label %if.end.211

if.end.211:                                       ; preds = %if.then.210, %if.then.206
  br label %if.end.212

if.end.212:                                       ; preds = %if.end.211, %land.lhs.true.204, %if.else.201
  br label %if.end.213

if.end.213:                                       ; preds = %if.end.212, %if.end.200
  %call214 = call i32 @interrupt()
  %tobool215 = icmp ne i32 %call214, 0
  br i1 %tobool215, label %land.lhs.true.216, label %if.end.227

land.lhs.true.216:                                ; preds = %if.end.213
  %119 = load i32, i32* @i_depth, align 4
  %cmp217 = icmp sgt i32 %119, 1
  br i1 %cmp217, label %if.then.219, label %if.end.227

if.then.219:                                      ; preds = %land.lhs.true.216
  %120 = load i32, i32* @is_pondering, align 4
  %tobool220 = icmp ne i32 %120, 0
  br i1 %tobool220, label %if.then.221, label %if.else.222

if.then.221:                                      ; preds = %if.then.219
  %121 = bitcast %struct.move_s* %agg.result to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %121, i8* bitcast (%struct.move_s* @dummy to i8*), i64 24, i32 4, i1 false)
  br label %return

if.else.222:                                      ; preds = %if.then.219
  %122 = load i32, i32* @go_fast, align 4
  %tobool223 = icmp ne i32 %122, 0
  br i1 %tobool223, label %if.end.225, label %if.then.224

if.then.224:                                      ; preds = %if.else.222
  br label %for.end.271

if.end.225:                                       ; preds = %if.else.222
  br label %if.end.226

if.end.226:                                       ; preds = %if.end.225
  br label %if.end.227

if.end.227:                                       ; preds = %if.end.226, %land.lhs.true.216, %if.end.213
  %123 = load i32, i32* @time_failure, align 4
  %tobool228 = icmp ne i32 %123, 0
  br i1 %tobool228, label %if.end.252, label %land.lhs.true.229

land.lhs.true.229:                                ; preds = %if.end.227
  %124 = load i32, i32* @failed, align 4
  %tobool230 = icmp ne i32 %124, 0
  br i1 %tobool230, label %if.end.252, label %if.then.231

if.then.231:                                      ; preds = %land.lhs.true.229
  %125 = load i32, i32* @cur_score, align 4
  %cmp232 = icmp eq i32 %125, -1000000
  br i1 %cmp232, label %if.then.234, label %if.end.235

if.then.234:                                      ; preds = %if.then.231
  %126 = bitcast %struct.move_s* %agg.result to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %126, i8* bitcast (%struct.move_s* @dummy to i8*), i64 24, i32 4, i1 false)
  br label %return

if.end.235:                                       ; preds = %if.then.231
  %127 = bitcast %struct.move_s* %comp_move to i8*
  %128 = bitcast %struct.move_s* %temp_move to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %127, i8* %128, i64 24, i32 4, i1 false)
  %129 = load i32, i32* @cur_score, align 4
  store i32 %129, i32* %temp_score, align 4
  call void @stringize_pv(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @postpv, i32 0, i32 0))
  %130 = load i32, i32* @time_exit, align 4
  %tobool236 = icmp ne i32 %130, 0
  br i1 %tobool236, label %if.end.239, label %if.then.237

if.then.237:                                      ; preds = %if.end.235
  %131 = load i32, i32* @i_depth, align 4
  %conv238 = trunc i32 %131 to i8
  store i8 %conv238, i8* @true_i_depth, align 1
  br label %if.end.239

if.end.239:                                       ; preds = %if.then.237, %if.end.235
  %132 = load i32, i32* @i_depth, align 4
  %cmp240 = icmp sge i32 %132, 2
  br i1 %cmp240, label %if.then.242, label %if.end.243

if.then.242:                                      ; preds = %if.end.239
  %133 = load i32, i32* @cur_score, align 4
  call void @post_thinking(i32 %133)
  br label %if.end.243

if.end.243:                                       ; preds = %if.then.242, %if.end.239
  %134 = load i32, i32* %temp_score, align 4
  %cmp244 = icmp sgt i32 %134, 900000
  br i1 %cmp244, label %land.lhs.true.246, label %if.end.251

land.lhs.true.246:                                ; preds = %if.end.243
  %135 = load i32, i32* @cur_score, align 4
  %sub247 = sub nsw i32 1000000, %135
  %136 = load i32, i32* @i_depth, align 4
  %cmp248 = icmp slt i32 %sub247, %136
  br i1 %cmp248, label %if.then.250, label %if.end.251

if.then.250:                                      ; preds = %land.lhs.true.246
  br label %for.end.271

if.end.251:                                       ; preds = %land.lhs.true.246, %if.end.243
  br label %if.end.252

if.end.252:                                       ; preds = %if.end.251, %land.lhs.true.229, %if.end.227
  %137 = load i32, i32* @time_exit, align 4
  %tobool253 = icmp ne i32 %137, 0
  br i1 %tobool253, label %if.then.254, label %if.end.255

if.then.254:                                      ; preds = %if.end.252
  br label %for.end.271

if.end.255:                                       ; preds = %if.end.252
  store i32 0, i32* %j, align 4
  br label %for.cond.256

for.cond.256:                                     ; preds = %for.inc.266, %if.end.255
  %138 = load i32, i32* %j, align 4
  %cmp257 = icmp slt i32 %138, 300
  br i1 %cmp257, label %for.body.259, label %for.end.268

for.body.259:                                     ; preds = %for.cond.256
  %139 = load i32, i32* %j, align 4
  %idxprom260 = sext i32 %139 to i64
  %arrayidx261 = getelementptr inbounds [300 x i32], [300 x i32]* @killer_scores, i32 0, i64 %idxprom260
  store i32 0, i32* %arrayidx261, align 4
  %140 = load i32, i32* %j, align 4
  %idxprom262 = sext i32 %140 to i64
  %arrayidx263 = getelementptr inbounds [300 x i32], [300 x i32]* @killer_scores2, i32 0, i64 %idxprom262
  store i32 0, i32* %arrayidx263, align 4
  %141 = load i32, i32* %j, align 4
  %idxprom264 = sext i32 %141 to i64
  %arrayidx265 = getelementptr inbounds [300 x i32], [300 x i32]* @killer_scores3, i32 0, i64 %idxprom264
  store i32 0, i32* %arrayidx265, align 4
  br label %for.inc.266

for.inc.266:                                      ; preds = %for.body.259
  %142 = load i32, i32* %j, align 4
  %inc267 = add nsw i32 %142, 1
  store i32 %inc267, i32* %j, align 4
  br label %for.cond.256

for.end.268:                                      ; preds = %for.cond.256
  br label %for.inc.269

for.inc.269:                                      ; preds = %for.end.268
  %143 = load i32, i32* @i_depth, align 4
  %inc270 = add nsw i32 %143, 1
  store i32 %inc270, i32* @i_depth, align 4
  br label %for.cond.160

for.end.271:                                      ; preds = %if.then.254, %if.then.250, %if.then.224, %if.then.184, %if.then.175, %for.cond.160
  br label %if.end.272

if.end.272:                                       ; preds = %for.end.271, %if.then.121
  %144 = load i32, i32* @forcedwin, align 4
  %tobool273 = icmp ne i32 %144, 0
  br i1 %tobool273, label %if.end.341, label %if.then.274

if.then.274:                                      ; preds = %if.end.272
  %145 = bitcast %struct.move_s* %old_move to i8*
  %146 = bitcast %struct.move_s* %comp_move to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %145, i8* %146, i64 24, i32 4, i1 false)
  %147 = load i32, i32* @Variant, align 4
  %cmp275 = icmp eq i32 %147, 4
  br i1 %cmp275, label %land.lhs.true.280, label %lor.lhs.false.277

lor.lhs.false.277:                                ; preds = %if.then.274
  %148 = load i32, i32* @Variant, align 4
  %cmp278 = icmp eq i32 %148, 3
  br i1 %cmp278, label %land.lhs.true.280, label %if.end.340

land.lhs.true.280:                                ; preds = %lor.lhs.false.277, %if.then.274
  %149 = load i32, i32* @result, align 4
  %tobool281 = icmp ne i32 %149, 0
  br i1 %tobool281, label %if.end.340, label %land.lhs.true.282

land.lhs.true.282:                                ; preds = %land.lhs.true.280
  %150 = load i32, i32* @alllosers, align 4
  %tobool283 = icmp ne i32 %150, 0
  br i1 %tobool283, label %if.end.340, label %land.lhs.true.284

land.lhs.true.284:                                ; preds = %land.lhs.true.282
  %151 = load i32, i32* @is_pondering, align 4
  %tobool285 = icmp ne i32 %151, 0
  br i1 %tobool285, label %if.end.340, label %if.then.286

if.then.286:                                      ; preds = %land.lhs.true.284
  store i32 0, i32* @s_threat, align 4
  call void @proofnumbercheck(%struct.move_s* sret %tmp287, %struct.move_s* byval align 8 %comp_move)
  %152 = bitcast %struct.move_s* %comp_move to i8*
  %153 = bitcast %struct.move_s* %tmp287 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %152, i8* %153, i64 24, i32 4, i1 false)
  %154 = load i32, i32* %pn_restart, align 4
  %cmp288 = icmp slt i32 %154, 10
  br i1 %cmp288, label %land.lhs.true.290, label %if.end.339

land.lhs.true.290:                                ; preds = %if.then.286
  %155 = load i32, i32* @s_threat, align 4
  %tobool291 = icmp ne i32 %155, 0
  br i1 %tobool291, label %if.then.292, label %if.end.339

if.then.292:                                      ; preds = %land.lhs.true.290
  %156 = load i32, i32* %pn_restart, align 4
  %inc293 = add nsw i32 %156, 1
  store i32 %inc293, i32* %pn_restart, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.294

for.cond.294:                                     ; preds = %for.inc.319, %if.then.292
  %157 = load i32, i32* %i, align 4
  %158 = load i32, i32* %num_moves, align 4
  %cmp295 = icmp slt i32 %157, %158
  br i1 %cmp295, label %for.body.297, label %for.end.321

for.body.297:                                     ; preds = %for.cond.294
  %159 = load i32, i32* %i, align 4
  %idxprom298 = sext i32 %159 to i64
  %arrayidx299 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %moves, i32 0, i64 %idxprom298
  %from = getelementptr inbounds %struct.move_s, %struct.move_s* %arrayidx299, i32 0, i32 0
  %160 = load i32, i32* %from, align 4
  %from300 = getelementptr inbounds %struct.move_s, %struct.move_s* %old_move, i32 0, i32 0
  %161 = load i32, i32* %from300, align 4
  %cmp301 = icmp eq i32 %160, %161
  br i1 %cmp301, label %land.lhs.true.303, label %if.end.318

land.lhs.true.303:                                ; preds = %for.body.297
  %162 = load i32, i32* %i, align 4
  %idxprom304 = sext i32 %162 to i64
  %arrayidx305 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %moves, i32 0, i64 %idxprom304
  %target = getelementptr inbounds %struct.move_s, %struct.move_s* %arrayidx305, i32 0, i32 1
  %163 = load i32, i32* %target, align 4
  %target306 = getelementptr inbounds %struct.move_s, %struct.move_s* %old_move, i32 0, i32 1
  %164 = load i32, i32* %target306, align 4
  %cmp307 = icmp eq i32 %163, %164
  br i1 %cmp307, label %land.lhs.true.309, label %if.end.318

land.lhs.true.309:                                ; preds = %land.lhs.true.303
  %165 = load i32, i32* %i, align 4
  %idxprom310 = sext i32 %165 to i64
  %arrayidx311 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %moves, i32 0, i64 %idxprom310
  %promoted = getelementptr inbounds %struct.move_s, %struct.move_s* %arrayidx311, i32 0, i32 3
  %166 = load i32, i32* %promoted, align 4
  %promoted312 = getelementptr inbounds %struct.move_s, %struct.move_s* %old_move, i32 0, i32 3
  %167 = load i32, i32* %promoted312, align 4
  %cmp313 = icmp eq i32 %166, %167
  br i1 %cmp313, label %if.then.315, label %if.end.318

if.then.315:                                      ; preds = %land.lhs.true.309
  %168 = load i32, i32* %i, align 4
  %idxprom316 = sext i32 %168 to i64
  %arrayidx317 = getelementptr inbounds [300 x i32], [300 x i32]* @rootlosers, i32 0, i64 %idxprom316
  store i32 1, i32* %arrayidx317, align 4
  br label %for.end.321

if.end.318:                                       ; preds = %land.lhs.true.309, %land.lhs.true.303, %for.body.297
  br label %for.inc.319

for.inc.319:                                      ; preds = %if.end.318
  %169 = load i32, i32* %i, align 4
  %inc320 = add nsw i32 %169, 1
  store i32 %inc320, i32* %i, align 4
  br label %for.cond.294

for.end.321:                                      ; preds = %if.then.315, %for.cond.294
  store i32 0, i32* %j, align 4
  br label %for.cond.322

for.cond.322:                                     ; preds = %for.inc.332, %for.end.321
  %170 = load i32, i32* %j, align 4
  %171 = load i32, i32* %num_moves, align 4
  %cmp323 = icmp slt i32 %170, %171
  br i1 %cmp323, label %for.body.325, label %for.end.334

for.body.325:                                     ; preds = %for.cond.322
  %172 = load i32, i32* %j, align 4
  %idxprom326 = sext i32 %172 to i64
  %arrayidx327 = getelementptr inbounds [300 x i32], [300 x i32]* @rootlosers, i32 0, i64 %idxprom326
  %173 = load i32, i32* %arrayidx327, align 4
  %tobool328 = icmp ne i32 %173, 0
  br i1 %tobool328, label %if.then.329, label %if.end.331

if.then.329:                                      ; preds = %for.body.325
  %174 = load i32, i32* %k, align 4
  %inc330 = add nsw i32 %174, 1
  store i32 %inc330, i32* %k, align 4
  br label %if.end.331

if.end.331:                                       ; preds = %if.then.329, %for.body.325
  br label %for.inc.332

for.inc.332:                                      ; preds = %if.end.331
  %175 = load i32, i32* %j, align 4
  %inc333 = add nsw i32 %175, 1
  store i32 %inc333, i32* %j, align 4
  br label %for.cond.322

for.end.334:                                      ; preds = %for.cond.322
  %176 = load i32, i32* %k, align 4
  %177 = load i32, i32* @legals, align 4
  %cmp335 = icmp eq i32 %176, %177
  br i1 %cmp335, label %if.then.337, label %if.end.338

if.then.337:                                      ; preds = %for.end.334
  store i32 1, i32* @alllosers, align 4
  br label %if.end.338

if.end.338:                                       ; preds = %if.then.337, %for.end.334
  br label %restart

if.end.339:                                       ; preds = %land.lhs.true.290, %if.then.286
  br label %if.end.340

if.end.340:                                       ; preds = %if.end.339, %land.lhs.true.284, %land.lhs.true.282, %land.lhs.true.280, %lor.lhs.false.277
  br label %if.end.341

if.end.341:                                       ; preds = %if.end.340, %if.end.272
  %178 = load i32, i32* @alllosers, align 4
  %tobool342 = icmp ne i32 %178, 0
  br i1 %tobool342, label %if.then.343, label %if.end.344

if.then.343:                                      ; preds = %if.end.341
  %179 = bitcast %struct.move_s* %comp_move to i8*
  %180 = bitcast %struct.move_s* %old_move to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %179, i8* %180, i64 24, i32 4, i1 false)
  br label %if.end.344

if.end.344:                                       ; preds = %if.then.343, %if.end.341
  %181 = load i32, i32* %pn_restart, align 4
  %cmp345 = icmp ne i32 %181, 0
  br i1 %cmp345, label %land.lhs.true.347, label %if.end.352

land.lhs.true.347:                                ; preds = %if.end.344
  %182 = load i32, i32* @xb_mode, align 4
  %tobool348 = icmp ne i32 %182, 0
  br i1 %tobool348, label %if.then.349, label %if.end.352

if.then.349:                                      ; preds = %land.lhs.true.347
  %arraydecay = getelementptr inbounds [8 x i8], [8 x i8]* %output, i32 0, i32 0
  call void @comp_to_san(%struct.move_s* byval align 8 %comp_move, i8* %arraydecay)
  %183 = load i32, i32* %pn_restart, align 4
  %arraydecay350 = getelementptr inbounds [8 x i8], [8 x i8]* %output, i32 0, i32 0
  %call351 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.5, i32 0, i32 0), i32 %183, i8* %arraydecay350)
  store i32 0, i32* @result, align 4
  br label %if.end.352

if.end.352:                                       ; preds = %if.then.349, %land.lhs.true.347, %if.end.344
  %call353 = call i64 @rtime()
  %184 = load i64, i64* @start_time, align 8
  %call354 = call i32 @rdifftime(i64 %call353, i64 %184)
  store i32 %call354, i32* %elapsed, align 4
  %185 = load i32, i32* %elapsed, align 4
  %186 = load i32, i32* @time_left, align 4
  %sub355 = sub nsw i32 %186, %185
  store i32 %sub355, i32* @time_left, align 4
  %187 = load i32, i32* @moves_to_tc, align 4
  %tobool356 = icmp ne i32 %187, 0
  br i1 %tobool356, label %land.lhs.true.357, label %if.end.363

land.lhs.true.357:                                ; preds = %if.end.352
  %188 = load i32, i32* @is_pondering, align 4
  %tobool358 = icmp ne i32 %188, 0
  br i1 %tobool358, label %if.end.363, label %if.then.359

if.then.359:                                      ; preds = %land.lhs.true.357
  %189 = load i32, i32* @time_for_move, align 4
  %190 = load i32, i32* %elapsed, align 4
  %sub360 = sub nsw i32 %189, %190
  %191 = load i32, i32* @inc, align 4
  %add361 = add nsw i32 %sub360, %191
  %192 = load i32, i32* @time_cushion, align 4
  %add362 = add nsw i32 %192, %add361
  store i32 %add362, i32* @time_cushion, align 4
  br label %if.end.363

if.end.363:                                       ; preds = %if.then.359, %land.lhs.true.357, %if.end.352
  %193 = load i32, i32* %temp_score, align 4
  %cmp364 = icmp eq i32 %193, 999998
  br i1 %cmp364, label %land.lhs.true.366, label %if.else.374

land.lhs.true.366:                                ; preds = %if.end.363
  %194 = load i32, i32* @is_pondering, align 4
  %tobool367 = icmp ne i32 %194, 0
  br i1 %tobool367, label %if.else.374, label %if.then.368

if.then.368:                                      ; preds = %land.lhs.true.366
  %195 = load i32, i32* @white_to_move, align 4
  %cmp369 = icmp eq i32 %195, 1
  br i1 %cmp369, label %if.then.371, label %if.else.372

if.then.371:                                      ; preds = %if.then.368
  store i32 3, i32* @result, align 4
  br label %if.end.373

if.else.372:                                      ; preds = %if.then.368
  store i32 2, i32* @result, align 4
  br label %if.end.373

if.end.373:                                       ; preds = %if.else.372, %if.then.371
  br label %if.end.386

if.else.374:                                      ; preds = %land.lhs.true.366, %if.end.363
  %196 = load i32, i32* %temp_score, align 4
  %cmp375 = icmp eq i32 %196, -999998
  br i1 %cmp375, label %land.lhs.true.377, label %if.end.385

land.lhs.true.377:                                ; preds = %if.else.374
  %197 = load i32, i32* @is_pondering, align 4
  %tobool378 = icmp ne i32 %197, 0
  br i1 %tobool378, label %if.end.385, label %if.then.379

if.then.379:                                      ; preds = %land.lhs.true.377
  %198 = load i32, i32* @white_to_move, align 4
  %cmp380 = icmp eq i32 %198, 1
  br i1 %cmp380, label %if.then.382, label %if.else.383

if.then.382:                                      ; preds = %if.then.379
  store i32 2, i32* @result, align 4
  br label %if.end.384

if.else.383:                                      ; preds = %if.then.379
  store i32 3, i32* @result, align 4
  br label %if.end.384

if.end.384:                                       ; preds = %if.else.383, %if.then.382
  br label %if.end.385

if.end.385:                                       ; preds = %if.end.384, %land.lhs.true.377, %if.else.374
  br label %if.end.386

if.end.386:                                       ; preds = %if.end.385, %if.end.373
  %199 = load i32, i32* @post, align 4
  %tobool387 = icmp ne i32 %199, 0
  br i1 %tobool387, label %land.lhs.true.388, label %if.end.425

land.lhs.true.388:                                ; preds = %if.end.386
  %200 = load i32, i32* @xb_mode, align 4
  %tobool389 = icmp ne i32 %200, 0
  br i1 %tobool389, label %land.lhs.true.390, label %if.end.425

land.lhs.true.390:                                ; preds = %land.lhs.true.388
  %201 = load i32, i32* @is_pondering, align 4
  %tobool391 = icmp ne i32 %201, 0
  br i1 %tobool391, label %if.end.425, label %land.lhs.true.392

land.lhs.true.392:                                ; preds = %land.lhs.true.390
  %202 = load i32, i32* @result, align 4
  %cmp393 = icmp ne i32 %202, 3
  br i1 %cmp393, label %land.lhs.true.395, label %if.end.425

land.lhs.true.395:                                ; preds = %land.lhs.true.392
  %203 = load i32, i32* @result, align 4
  %cmp396 = icmp ne i32 %203, 2
  br i1 %cmp396, label %land.lhs.true.398, label %if.end.425

land.lhs.true.398:                                ; preds = %land.lhs.true.395
  %204 = load i32, i32* @result, align 4
  %cmp399 = icmp ne i32 %204, 4
  br i1 %cmp399, label %land.lhs.true.401, label %if.end.425

land.lhs.true.401:                                ; preds = %land.lhs.true.398
  %205 = load i32, i32* @result, align 4
  %cmp402 = icmp ne i32 %205, 5
  br i1 %cmp402, label %land.lhs.true.404, label %if.end.425

land.lhs.true.404:                                ; preds = %land.lhs.true.401
  %206 = load i32, i32* @result, align 4
  %cmp405 = icmp ne i32 %206, 1
  br i1 %cmp405, label %land.lhs.true.407, label %if.end.425

land.lhs.true.407:                                ; preds = %land.lhs.true.404
  %207 = load i32, i32* @forcedwin, align 4
  %tobool408 = icmp ne i32 %207, 0
  br i1 %tobool408, label %if.end.425, label %if.then.409

if.then.409:                                      ; preds = %land.lhs.true.407
  %208 = load i32, i32* %temp_score, align 4
  %cmp410 = icmp sgt i32 %208, 999600
  br i1 %cmp410, label %if.then.412, label %if.end.424

if.then.412:                                      ; preds = %if.then.409
  %209 = load i32, i32* @Variant, align 4
  %cmp413 = icmp ne i32 %209, 1
  br i1 %cmp413, label %if.then.415, label %if.else.419

if.then.415:                                      ; preds = %if.then.412
  %210 = load i32, i32* %temp_score, align 4
  %sub416 = sub nsw i32 1000000, %210
  %div417 = sdiv i32 %sub416, 2
  %call418 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i32 0, i32 0), i32 %div417)
  br label %if.end.423

if.else.419:                                      ; preds = %if.then.412
  %211 = load i32, i32* %temp_score, align 4
  %sub420 = sub nsw i32 1000000, %211
  %div421 = sdiv i32 %sub420, 2
  %call422 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.7, i32 0, i32 0), i32 %div421)
  br label %if.end.423

if.end.423:                                       ; preds = %if.else.419, %if.then.415
  br label %if.end.424

if.end.424:                                       ; preds = %if.end.423, %if.then.409
  br label %if.end.425

if.end.425:                                       ; preds = %if.end.424, %land.lhs.true.407, %land.lhs.true.404, %land.lhs.true.401, %land.lhs.true.398, %land.lhs.true.395, %land.lhs.true.392, %land.lhs.true.390, %land.lhs.true.388, %if.end.386
  %212 = load i32, i32* @result, align 4
  %cmp426 = icmp ne i32 %212, 2
  br i1 %cmp426, label %land.lhs.true.428, label %if.end.457

land.lhs.true.428:                                ; preds = %if.end.425
  %213 = load i32, i32* @result, align 4
  %cmp429 = icmp ne i32 %213, 3
  br i1 %cmp429, label %land.lhs.true.431, label %if.end.457

land.lhs.true.431:                                ; preds = %land.lhs.true.428
  %214 = load i32, i32* @result, align 4
  %cmp432 = icmp ne i32 %214, 1
  br i1 %cmp432, label %land.lhs.true.434, label %if.end.457

land.lhs.true.434:                                ; preds = %land.lhs.true.431
  %215 = load i32, i32* @result, align 4
  %cmp435 = icmp ne i32 %215, 4
  br i1 %cmp435, label %land.lhs.true.437, label %if.end.457

land.lhs.true.437:                                ; preds = %land.lhs.true.434
  %216 = load i32, i32* @result, align 4
  %cmp438 = icmp ne i32 %216, 5
  br i1 %cmp438, label %land.lhs.true.440, label %if.end.457

land.lhs.true.440:                                ; preds = %land.lhs.true.437
  %217 = load i8, i8* @true_i_depth, align 1
  %conv441 = sext i8 %217 to i32
  %cmp442 = icmp sge i32 %conv441, 3
  br i1 %cmp442, label %land.lhs.true.444, label %if.end.457

land.lhs.true.444:                                ; preds = %land.lhs.true.440
  %218 = load i32, i32* getelementptr inbounds (%struct.move_s, %struct.move_s* @pn_move, i32 0, i32 1), align 4
  %219 = load i32, i32* getelementptr inbounds (%struct.move_s, %struct.move_s* @dummy, i32 0, i32 1), align 4
  %cmp445 = icmp eq i32 %218, %219
  br i1 %cmp445, label %land.lhs.true.447, label %if.end.457

land.lhs.true.447:                                ; preds = %land.lhs.true.444
  %220 = load i32, i32* @is_pondering, align 4
  %tobool448 = icmp ne i32 %220, 0
  br i1 %tobool448, label %if.end.457, label %land.lhs.true.449

land.lhs.true.449:                                ; preds = %land.lhs.true.447
  %221 = load i32, i32* @Variant, align 4
  %cmp450 = icmp ne i32 %221, 1
  br i1 %cmp450, label %if.then.452, label %if.end.457

if.then.452:                                      ; preds = %land.lhs.true.449
  %222 = load i32, i32* @bestmovenum, align 4
  %cmp453 = icmp eq i32 %222, -1
  br i1 %cmp453, label %if.then.455, label %if.end.456

if.then.455:                                      ; preds = %if.then.452
  store i32 0, i32* null, align 4
  br label %if.end.456

if.end.456:                                       ; preds = %if.then.455, %if.then.452
  br label %if.end.457

if.end.457:                                       ; preds = %if.end.456, %land.lhs.true.449, %land.lhs.true.447, %land.lhs.true.444, %land.lhs.true.440, %land.lhs.true.437, %land.lhs.true.434, %land.lhs.true.431, %land.lhs.true.428, %if.end.425
  %223 = load i32, i32* @Variant, align 4
  %cmp458 = icmp eq i32 %223, 1
  br i1 %cmp458, label %land.lhs.true.460, label %if.else.471

land.lhs.true.460:                                ; preds = %if.end.457
  %224 = load i32, i32* %temp_score, align 4
  %cmp461 = icmp sgt i32 %224, -999900
  br i1 %cmp461, label %if.then.463, label %if.else.471

if.then.463:                                      ; preds = %land.lhs.true.460
  %225 = load i32, i32* @tradefreely, align 4
  %cmp464 = icmp eq i32 %225, 0
  br i1 %cmp464, label %land.lhs.true.466, label %if.end.470

land.lhs.true.466:                                ; preds = %if.then.463
  %226 = load i32, i32* @userealholdings, align 4
  %tobool467 = icmp ne i32 %226, 0
  br i1 %tobool467, label %if.end.470, label %if.then.468

if.then.468:                                      ; preds = %land.lhs.true.466
  store i32 1, i32* @tradefreely, align 4
  %call469 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.8, i32 0, i32 0))
  br label %if.end.470

if.end.470:                                       ; preds = %if.then.468, %land.lhs.true.466, %if.then.463
  br label %if.end.515

if.else.471:                                      ; preds = %land.lhs.true.460, %if.end.457
  %227 = load i32, i32* %temp_score, align 4
  %cmp472 = icmp slt i32 %227, -999900
  br i1 %cmp472, label %land.lhs.true.474, label %if.else.497

land.lhs.true.474:                                ; preds = %if.else.471
  %228 = load i32, i32* @Variant, align 4
  %cmp475 = icmp eq i32 %228, 1
  br i1 %cmp475, label %land.lhs.true.477, label %if.else.497

land.lhs.true.477:                                ; preds = %land.lhs.true.474
  %229 = load i32, i32* getelementptr inbounds (%struct.move_s, %struct.move_s* @pn_move, i32 0, i32 1), align 4
  %230 = load i32, i32* getelementptr inbounds (%struct.move_s, %struct.move_s* @dummy, i32 0, i32 1), align 4
  %cmp478 = icmp eq i32 %229, %230
  br i1 %cmp478, label %if.then.480, label %if.else.497

if.then.480:                                      ; preds = %land.lhs.true.477
  %231 = load i32, i32* @userealholdings, align 4
  %tobool481 = icmp ne i32 %231, 0
  br i1 %tobool481, label %if.then.482, label %if.else.483

if.then.482:                                      ; preds = %if.then.480
  store i32 1, i32* @must_sit, align 4
  br label %if.end.485

if.else.483:                                      ; preds = %if.then.480
  store i32 1, i32* @userealholdings, align 4
  call void @ProcessHoldings(i8* getelementptr inbounds ([255 x i8], [255 x i8]* @realholdings, i32 0, i32 0))
  store i32 0, i32* @tradefreely, align 4
  %call484 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.9, i32 0, i32 0))
  br label %restart

if.end.485:                                       ; preds = %if.then.482
  %232 = load i32, i32* %temp_score, align 4
  %cmp486 = icmp sgt i32 %232, -1000000
  br i1 %cmp486, label %if.then.488, label %if.end.496

if.then.488:                                      ; preds = %if.end.485
  %233 = load i32, i32* @partnerdead, align 4
  %tobool489 = icmp ne i32 %233, 0
  br i1 %tobool489, label %if.then.490, label %if.else.493

if.then.490:                                      ; preds = %if.then.488
  %call491 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.10, i32 0, i32 0))
  %call492 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i32 0, i32 0))
  br label %if.end.495

if.else.493:                                      ; preds = %if.then.488
  %call494 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.12, i32 0, i32 0))
  br label %if.end.495

if.end.495:                                       ; preds = %if.else.493, %if.then.490
  br label %if.end.496

if.end.496:                                       ; preds = %if.end.495, %if.end.485
  br label %if.end.514

if.else.497:                                      ; preds = %land.lhs.true.477, %land.lhs.true.474, %if.else.471
  %234 = load i32, i32* %temp_score, align 4
  %cmp498 = icmp sgt i32 %234, -60000
  br i1 %cmp498, label %land.lhs.true.500, label %if.end.513

land.lhs.true.500:                                ; preds = %if.else.497
  %235 = load i32, i32* %temp_score, align 4
  %cmp501 = icmp slt i32 %235, -40000
  br i1 %cmp501, label %land.lhs.true.503, label %if.end.513

land.lhs.true.503:                                ; preds = %land.lhs.true.500
  %236 = load i32, i32* @Variant, align 4
  %cmp504 = icmp eq i32 %236, 1
  br i1 %cmp504, label %land.lhs.true.506, label %if.end.513

land.lhs.true.506:                                ; preds = %land.lhs.true.503
  %237 = load i32, i32* @partnerdead, align 4
  %tobool507 = icmp ne i32 %237, 0
  br i1 %tobool507, label %if.end.513, label %land.lhs.true.508

land.lhs.true.508:                                ; preds = %land.lhs.true.506
  %238 = load i32, i32* getelementptr inbounds (%struct.move_s, %struct.move_s* @pn_move, i32 0, i32 1), align 4
  %239 = load i32, i32* getelementptr inbounds (%struct.move_s, %struct.move_s* @dummy, i32 0, i32 1), align 4
  %cmp509 = icmp eq i32 %238, %239
  br i1 %cmp509, label %if.then.511, label %if.end.513

if.then.511:                                      ; preds = %land.lhs.true.508
  store i32 1, i32* @must_sit, align 4
  %call512 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.13, i32 0, i32 0))
  br label %if.end.513

if.end.513:                                       ; preds = %if.then.511, %land.lhs.true.508, %land.lhs.true.506, %land.lhs.true.503, %land.lhs.true.500, %if.else.497
  br label %if.end.514

if.end.514:                                       ; preds = %if.end.513, %if.end.496
  br label %if.end.515

if.end.515:                                       ; preds = %if.end.514, %if.end.470
  %240 = bitcast %struct.move_s* %agg.result to i8*
  %241 = bitcast %struct.move_s* %comp_move to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %240, i8* %241, i64 24, i32 4, i1 false)
  br label %return

return:                                           ; preds = %if.end.515, %if.then.234, %if.then.221, %if.then.111, %if.then.41, %if.then
  ret void
}

declare void @check_phase() #2

declare void @clear_tt() #2

declare void @reset_ecache() #2

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #3

declare void @proofnumberscan() #2

declare void @stringize_pv(i8*) #2

declare void @proofnumbercheck(%struct.move_s* sret, %struct.move_s* byval align 8) #2

declare void @ProcessHoldings(i8*) #2

; Function Attrs: nounwind uwtable
define void @tree(i32 %depth, i32 %indent, %struct._IO_FILE* %output, i8* %disp_b) #0 {
entry:
  %depth.addr = alloca i32, align 4
  %indent.addr = alloca i32, align 4
  %output.addr = alloca %struct._IO_FILE*, align 8
  %disp_b.addr = alloca i8*, align 8
  %moves = alloca [512 x %struct.move_s], align 16
  %num_moves = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %ic = alloca i32, align 4
  store i32 %depth, i32* %depth.addr, align 4
  store i32 %indent, i32* %indent.addr, align 4
  store %struct._IO_FILE* %output, %struct._IO_FILE** %output.addr, align 8
  store i8* %disp_b, i8** %disp_b.addr, align 8
  store i32 0, i32* %num_moves, align 4
  %0 = load i32, i32* %depth.addr, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %for.end.21

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %moves, i32 0, i64 0
  call void @gen(%struct.move_s* %arrayidx)
  %1 = load i32, i32* @numb_moves, align 4
  store i32 %1, i32* %num_moves, align 4
  %call = call i32 @in_check()
  store i32 %call, i32* %ic, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.19, %if.end
  %2 = load i32, i32* %i, align 4
  %3 = load i32, i32* %num_moves, align 4
  %cmp = icmp slt i32 %2, %3
  br i1 %cmp, label %for.body, label %for.end.21

for.body:                                         ; preds = %for.cond
  %arrayidx1 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %moves, i32 0, i64 0
  %4 = load i32, i32* %i, align 4
  call void @make(%struct.move_s* %arrayidx1, i32 %4)
  %arrayidx2 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %moves, i32 0, i64 0
  %5 = load i32, i32* %i, align 4
  %6 = load i32, i32* %ic, align 4
  %call3 = call i32 @check_legal(%struct.move_s* %arrayidx2, i32 %5, i32 %6)
  %tobool4 = icmp ne i32 %call3, 0
  br i1 %tobool4, label %if.then.5, label %if.end.17

if.then.5:                                        ; preds = %for.body
  store i32 0, i32* %j, align 4
  br label %for.cond.6

for.cond.6:                                       ; preds = %for.inc, %if.then.5
  %7 = load i32, i32* %j, align 4
  %8 = load i32, i32* %indent.addr, align 4
  %cmp7 = icmp slt i32 %7, %8
  br i1 %cmp7, label %for.body.8, label %for.end

for.body.8:                                       ; preds = %for.cond.6
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %output.addr, align 8
  %call9 = call i32 @fputc(i32 32, %struct._IO_FILE* %9)
  br label %for.inc

for.inc:                                          ; preds = %for.body.8
  %10 = load i32, i32* %j, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.6

for.end:                                          ; preds = %for.cond.6
  %arrayidx10 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %moves, i32 0, i64 0
  %11 = load i32, i32* %i, align 4
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %output.addr, align 8
  call void @print_move(%struct.move_s* %arrayidx10, i32 %11, %struct._IO_FILE* %12)
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** %output.addr, align 8
  %call11 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %13, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i32 0, i32 0))
  %14 = load i8*, i8** %disp_b.addr, align 8
  %arrayidx12 = getelementptr inbounds i8, i8* %14, i64 0
  %15 = load i8, i8* %arrayidx12, align 1
  %conv = sext i8 %15 to i32
  %cmp13 = icmp eq i32 %conv, 121
  br i1 %cmp13, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %for.end
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** %output.addr, align 8
  call void @display_board(%struct._IO_FILE* %16, i32 1)
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.15, %for.end
  %17 = load i32, i32* %depth.addr, align 4
  %sub = sub nsw i32 %17, 1
  %18 = load i32, i32* %indent.addr, align 4
  %add = add nsw i32 %18, 2
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** %output.addr, align 8
  %20 = load i8*, i8** %disp_b.addr, align 8
  call void @tree(i32 %sub, i32 %add, %struct._IO_FILE* %19, i8* %20)
  br label %if.end.17

if.end.17:                                        ; preds = %if.end.16, %for.body
  %arrayidx18 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %moves, i32 0, i64 0
  %21 = load i32, i32* %i, align 4
  call void @unmake(%struct.move_s* %arrayidx18, i32 %21)
  br label %for.inc.19

for.inc.19:                                       ; preds = %if.end.17
  %22 = load i32, i32* %i, align 4
  %inc20 = add nsw i32 %22, 1
  store i32 %inc20, i32* %i, align 4
  br label %for.cond

for.end.21:                                       ; preds = %if.then, %for.cond
  ret void
}

declare i32 @fputc(i32, %struct._IO_FILE*) #2

declare void @print_move(%struct.move_s*, i32, %struct._IO_FILE*) #2

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #2

declare void @display_board(%struct._IO_FILE*, i32) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
